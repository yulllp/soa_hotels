TAG = latest

build-image:
	docker build -t nameko/borobudur_hotel_jakarta:$(TAG) ./borobudur_hotel_jakarta

docker-tag:
	docker tag nameko/borobudur_hotel_jakarta:$(TAG) \
	nameko/borobudur_hotel_jakarta:$(TAG)

push-image:
	docker push nameko/borobudur_hotel_jakarta:$(TAG)
