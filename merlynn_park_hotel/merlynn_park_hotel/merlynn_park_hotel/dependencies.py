from datetime import date, datetime
from decimal import Decimal
from nameko.extensions import DependencyProvider
# import boto3
# from botocore.exceptions import NoCredentialsError
# from botocore.exceptions import PartialCredentialsError
# from botocore.exceptions import EndpointConnectionError
# from botocore.exceptions import ClientError

import mysql.connector
from mysql.connector import Error
from mysql.connector import pooling

class DatabaseWrapper:

    connection = None
    # BUCKET_NAME = "hotel-images-soa"
    # s3 = boto3.client("s3")

    def __init__(self, connection):
        self.connection = connection
    
    #access hotel data
    #get hotel images from s3
    # def get_hotel_images_s3(self):
    #     try:
    #         response = self.s3.list_objects_v2(Bucket=self.BUCKET_NAME)
    #         print(response)
    #         result = []
    #         for obj in response['Contents']:
    #             print(obj)
    #             key = obj['Key'].replace(" ", "+")
    #             url = "https://{0}.s3.amazonaws.com/{1}".format(self.BUCKET_NAME, key)
    #             result.append(url)
    #     except NoCredentialsError:
    #         result = {"error": "No AWS credentials were provided."}
    #     except PartialCredentialsError:
    #         result = {"error": "Incomplete AWS credentials provided."}
    #     except EndpointConnectionError:
    #         result = {"error": "Could not connect to the specified endpoint."}
    #     except ClientError as e:
    #         # Handle any client error thrown by boto3
    #         result = {"error": str(e)}
    #     except Exception as e:
    #         # Catch any other exceptions
    #         result = {"error": str(e)}
    #     return result
    #get hotel detail
    def get_hotel(self):
        try:
            result = {}
            cursor = self.connection.cursor(dictionary=True)
            sql = "SELECT * FROM hotel"
            cursor.execute(sql)
            row = cursor.fetchone()
            if row:
                result = {
                    'id': row['id'],
                    'name': row['name'],
                    'image': row['image'],
                    'description': row['description'],
                    'star': row['star'],
                    'address': row['address'],
                    'facilities': row['facilities'],
                    'country': row['country'],
                    'city': row['city'],
                    'post_code': row['post_code']
                }
            else:
                return {'message': 'empty data','status': 500}
            cursor.close()
            return result
        except Exception as e:
            error_message = str(e)
            return {'error': error_message, 'status': 500}
    
    #get all room type
    def get_room_types(self):
        try:
            cursor = self.connection.cursor(dictionary=True)
            result = []
            sql = "SELECT * FROM room_type rt"
            cursor.execute(sql)
            for row in cursor.fetchall():
            # Convert any Decimal objects to floats
                for key, value in row.items():
                    if isinstance(value, Decimal):
                        row[key] = float(value)
                result.append(row)
            self.connection.commit()
            cursor.close()
            return self.convert_dates_to_strings(result)
        except Exception as e:
            error_message = str(e)
            return {'error': error_message, 'status': 500}
    
    #get room type by id
    def get_room_type_by_id(self, id):
        try:
            cursor = self.connection.cursor(dictionary=True)
            sql = "SELECT * FROM room_type rt WHERE rt.id = %s"
            cursor.execute(sql, (id,))
            result = cursor.fetchone()
            for key, value in result.items():
                if isinstance(value, Decimal):
                    result[key] = float(value)
            self.connection.commit()
            cursor.close()
            return self.convert_dates_to_strings(result)
        except Exception as e:
            error_message = str(e)
            return {'error': error_message, 'status': 500}
    
    #get all room
    def get_rooms(self):
        try:
            cursor = self.connection.cursor(dictionary=True)
            sql = "SELECT * FROM room r"
            cursor.execute(sql)
            result = cursor.fetchall()
            self.connection.commit()
            cursor.close()
            return self.convert_dates_to_strings(result)
        except Exception as e:
            error_message = str(e)
            return {'error': error_message, 'status': 500}
    
    #get rooms by type id
    def get_rooms_by_type_id(self, id):
        try:
            cursor = self.connection.cursor(dictionary=True)
            sql = "SELECT r.id, r.type_id, r.number FROM room r LEFT JOIN room_type rt ON r.type_id = rt.id WHERE rt.id = %s"
            cursor.execute(sql, (id,))
            result = cursor.fetchall()
            self.connection.commit()
            cursor.close()
            return self.convert_dates_to_strings(result)
        except Exception as e:
            error_message = str(e)
            return {'error': error_message, 'status': 500}
    
    #get all reservation with its reservation rooms 
    def get_reservations(self):
        try:
            cursor = self.connection.cursor(dictionary=True)
            result = []
            reservations = {}
            sql = """
                SELECT r.id, r.booking_id, r.check_in_date, r.check_out_date, rr.room_id, ro.number 
                FROM reservation r 
                LEFT JOIN resv_room rr ON r.id = rr.resv_id 
                LEFT JOIN room ro ON rr.room_id = ro.id
            """
            cursor.execute(sql)
            for row in cursor.fetchall():
                reservation_id = row['id']
                if reservation_id not in reservations:
                    reservations[reservation_id] = {
                        'id': row['id'],
                        'booking_id': row['booking_id'],
                        'check_in_date': row['check_in_date'].strftime('%Y-%m-%d'),
                        'check_out_date': row['check_out_date'].strftime('%Y-%m-%d'),
                        'rooms': []
                    }
                room_details = {
                    'room_id': row['room_id'],
                    'number': row['number']
                }
                reservations[reservation_id]['rooms'].append(room_details)
            result = list(reservations.values())
            self.connection.commit()
            cursor.close()
            return result

        except Exception as e:
            error_message = str(e)
            return {'error': error_message, 'status': 500}
        
    #get reservation with its reservation rooms by id
    def get_reservation_by_id(self, id):
        try:
            cursor = self.connection.cursor(dictionary=True)
            reservation = None
            sql = """
                SELECT r.id, r.booking_id, r.check_in_date, r.check_out_date, rr.room_id, ro.number 
                FROM reservation r 
                LEFT JOIN resv_room rr ON r.id = rr.resv_id 
                LEFT JOIN room ro ON rr.room_id = ro.id 
                WHERE r.id = %s
            """
            cursor.execute(sql, (id,))
            for row in cursor.fetchall():
                if reservation is None:
                    reservation = {
                        'id': row['id'],
                        'booking_id': row['booking_id'],
                        'check_in_date': row['check_in_date'].strftime('%Y-%m-%d'),
                        'check_out_date': row['check_out_date'].strftime('%Y-%m-%d'),
                        'rooms': []
                    }
                room_details = {
                    'room_id': row['room_id'],
                    'number': row['number']
                }
                reservation['rooms'].append(room_details)
            self.connection.commit()
            cursor.close()
            return reservation

        except Exception as e:
            error_message = str(e)
            return {'error': error_message, 'status': 500}
    
    #for booking service
    #add new reservation
    def add_reservation(self, booking_id, type_room, check_in_date, check_out_date, total_room):
        try:
            cursor = self.connection.cursor(dictionary=True)

            # Insert new reservation data including type_id
            sql = "INSERT INTO reservation (booking_id, type_id, check_in_date, check_out_date) VALUES (%s, %s, %s, %s)"
            cursor.execute(sql, (booking_id, type_room, check_in_date, check_out_date))
            resv_id = cursor.lastrowid

            # Assign NULL room_id
            sql = "INSERT INTO resv_room (resv_id, room_id) VALUES (%s, NULL)"
            for _ in range(total_room):
                cursor.execute(sql, (resv_id,))

            self.connection.commit()
            cursor.close()
            return {'message': 'Reservation created successfully', 'status': 200}

        except Exception as e:
            error_message = str(e)
            return {'error': error_message, 'status': 500}

    def check_in(self, resv_id):
        try:
            cursor = self.connection.cursor(dictionary=True)
            sql_check_checkin = "SELECT check_in FROM reservation WHERE id = %s"
            cursor.execute(sql_check_checkin, (resv_id,))
            check_in_status = cursor.fetchone()

            if check_in_status and check_in_status['check_in'] == 1:
                return {'message': 'Reservation has already been checked in', 'status': 200}

            # Query to count resv_room records for a given resv_id
            sql_count = """
            SELECT COUNT(*) AS total_resv_rooms
            FROM resv_room
            WHERE resv_id = %s
            """
            cursor.execute(sql_count, (resv_id,))
            count = cursor.fetchone()

            # Get the room type from the reservation
            sql_type = """
            SELECT rt.id as type_room
            FROM reservation resv
            JOIN room_type rt ON resv.type_id = rt.id
            WHERE resv.id = %s
            LIMIT 1
            """
            cursor.execute(sql_type, (resv_id,))
            type_room_data = cursor.fetchone()

            if not type_room_data:
                return {'error': 'Reservation not found', 'status': 404}

            type_room = type_room_data['type_room']

            # Fetch reservation dates
            sql_reservation_dates = "SELECT check_in_date, check_out_date FROM reservation WHERE id = %s"
            cursor.execute(sql_reservation_dates, (resv_id,))
            reservation_dates = cursor.fetchone()

            # Find available rooms based on type_room and reservation dates
            sql_rooms = """
            SELECT r.* 
            FROM room r
            JOIN room_type rt ON rt.id = r.type_id
            WHERE rt.id = %s
            AND r.id NOT IN (
                SELECT rr.room_id
                FROM resv_room rr
                JOIN reservation resv ON rr.resv_id = resv.id
                WHERE rr.room_id IS NOT NULL
                AND resv.check_in_date < %s
                AND resv.check_out_date > %s
            )
            LIMIT %s
            """
            cursor.execute(sql_rooms, (type_room, reservation_dates['check_out_date'], reservation_dates['check_in_date'], count['total_resv_rooms']))
            available_room = cursor.fetchall()

            if not available_room:
                return {'error': 'No available rooms of specified type', 'status': 404}

            # Update resv_room with actual room_id
            update_sql = "UPDATE resv_room SET room_id = %s WHERE resv_id = %s AND room_id IS NULL LIMIT 1"
            for room in available_room:
                cursor.execute(update_sql, (room['id'], resv_id))

            update_check_in_sql = "UPDATE reservation SET check_in = 1 WHERE id = %s"
            cursor.execute(update_check_in_sql, (resv_id,))

            self.connection.commit()
            cursor.close()
            return {'message': 'Check-in successful', 'status': 200}

        except Exception as e:
            error_message = str(e)
            return {'error': error_message, 'status': 500}

        

    #get the quantity of available rooms for re-checking before booking
    def get_room_type_availability_count_by_id(self, check_in_date, check_out_date, type_room):
        try:
            check_in_date_str = datetime.strptime(check_in_date, '%Y-%m-%d').strftime('%Y-%m-%d')
            check_out_date_str = datetime.strptime(check_out_date, '%Y-%m-%d').strftime('%Y-%m-%d')
            cursor = self.connection.cursor(dictionary=True)
            # Find available rooms and consider dummy entries
            sql =  """
            SELECT COUNT(*) as available_count 
            FROM room r
            JOIN room_type rt ON rt.id = r.type_id
            WHERE rt.id = %s
            AND r.id NOT IN (
                SELECT rr.room_id
                FROM resv_room rr
                JOIN reservation resv ON rr.resv_id = resv.id
                WHERE rr.room_id IS NOT NULL
                AND resv.check_in_date < %s
                AND resv.check_out_date > %s
            )
            """
            cursor.execute(sql, (type_room, check_out_date_str, check_in_date_str), )
            available_count = cursor.fetchone()['available_count']
            print(available_count)

            # Subtract dummy entries
            sql_dummy ="""
            SELECT COUNT(*) as dummy_count 
            FROM resv_room rr
            JOIN reservation resv ON rr.resv_id = resv.id
            WHERE rr.room_id IS NULL
            AND resv.check_in_date < %s
            AND resv.check_out_date > %s
            AND resv.type_id = %s
            """
            cursor.execute(sql_dummy, (check_out_date_str, check_in_date_str, type_room))
            dummy_count = cursor.fetchone()['dummy_count']
            print(dummy_count)

            total_available = available_count - dummy_count

            cursor.close()
            return total_available
        except Exception as e:
            error_message = str(e)
            return {'error': error_message, 'status': 500}

    
    #for searching service
    #get all room type data with the total available rooms
    def get_room_type_availability(self, check_in_date, check_out_date):
        try:
            cursor = self.connection.cursor(dictionary=True)
            
            # Fetch room types data
            room_types = self.get_room_types()
            for room_type in room_types:
                # Calculate available count using existing method
                available_count = self.get_room_type_availability_count_by_id(check_in_date, check_out_date, room_type['id'])
                
                # Append availability count to each room type
                room_type['available_room'] = available_count
            
            self.connection.commit()
            cursor.close()
            return self.convert_dates_to_strings(room_types)
        
        except Exception as e:
            error_message = str(e)
            return {'error': error_message, 'status': 500}
    
    def convert_dates_to_strings(self, data):
        if isinstance(data, dict):
            for key, value in data.items():
                if isinstance(value, date):
                    data[key] = value.isoformat()
        elif isinstance(data, list):
            for item in data:
                self.convert_dates_to_strings(item)
        return data
    
    def __del__(self):
        self.connection.close()

class Database(DependencyProvider):

    connection_pool = None

    def __init__(self):
        try:
            self.connection_pool = mysql.connector.pooling.MySQLConnectionPool(
                pool_name="database_pool",
                pool_size=10,
                pool_reset_session=True,
                host='mysql',
                database='merlynn_park_hotel',
                user='root',
                password='password'
            )
        except Error as e :
            print ("Error while connecting to MySQL using Connection pool ", e)

    def get_dependency(self, worker_ctx):
        return DatabaseWrapper(self.connection_pool.get_connection())