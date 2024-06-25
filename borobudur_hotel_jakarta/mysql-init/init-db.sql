-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2024 at 04:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `merlynn_park_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `star` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `facilities` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `image`, `description`, `star`, `address`, `facilities`, `country`, `province`, `city`, `post_code`, `created_at`, `updated_at`) VALUES
(3, 'Borobudur Hotel Jakarta', 'https://hotel-images-soa.s3.amazonaws.com/borobudur/Borobudur+Hotel+.jpg', 'Legendary 5-star hotel with a green area of 9.5 hectares strategically located right in the heart of Jakarta, Indonesia. Just a 5-minute drive from the Presidential Palace, Hotel Borobudur Jakarta is also close to the Istiqlal Mosque, Cathedral Church, government offices, business and banking centers, as well as shopping and entertainment centers.', 5, 'Jl. Lap. Banteng Selatan No.1, Ps. Baru, Kecamatan Sawah Besar, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10710', 'Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, WiFi, Spa, Gym, Tennis Court', 'Indonesia', 'DKI Jakarta', 'Jakarta', '10710', '2024-06-25 12:42:30', '2024-06-25 12:42:30');

-- --------------------------------------------------------


--
-- Table structure for table `migrations`
--

-- CREATE TABLE `migrations` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `migration` varchar(255) NOT NULL,
--   `batch` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

-- INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
-- (10, '0001_01_01_000000_create_users_table', 1),
-- (11, '0001_01_01_000001_create_cache_table', 1),
-- (12, '0001_01_01_000002_create_jobs_table', 1),
-- (13, '2024_06_02_074456_create_hotel_table', 1),
-- (14, '2024_06_02_074514_create_room_type_table', 1),
-- (15, '2024_06_02_074520_create_room_table', 1),
-- (16, '2024_06_02_074535_create_reservation_table', 1),
-- (17, '2024_06_02_085714_create_resv_room_table', 1),
-- (18, '2024_06_02_091444_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------


--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation`
--

-- INSERT INTO `reservation` (`id`, `booking_id`, `check_in_date`, `check_out_date`, `created_at`, `updated_at`) VALUES
-- (1, 3, '2024-06-15', '2024-06-17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resv_room`
--

CREATE TABLE `resv_room` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resv_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resv_room`
--

-- INSERT INTO `resv_room` (`id`, `resv_id`, `room_id`, `created_at`, `updated_at`) VALUES
-- (1, 1, 1, NULL, NULL),
-- (2, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type_id`, `number`, `created_at`, `updated_at`) VALUES
(1, 1, 201, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(2, 1, 202, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(3, 1, 203, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(4, 1, 204, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(5, 1, 205, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(6, 1, 206, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(7, 1, 207, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(8, 1, 208, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(9, 1, 209, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(10, 1, 210, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(11, 1, 211, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(12, 1, 212, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(13, 1, 213, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(14, 1, 214, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(15, 1, 215, '2024-06-25 13:13:42', '2024-06-25 13:13:42'),
(16, 2, 601, '2024-06-25 13:13:03', '2024-06-25 13:13:03'),
(17, 2, 602, '2024-06-25 13:13:03', '2024-06-25 13:13:03'),
(18, 2, 603, '2024-06-25 13:13:03', '2024-06-25 13:13:03'),
(19, 2, 604, '2024-06-25 13:13:03', '2024-06-25 13:13:03'),
(20, 2, 605, '2024-0625 13:13:03', '2024-06-25 13:13:03'),
(21, 3, 701, '2024-06-25 13:13:25', '2024-06-25 13:13:25'),
(22, 3, 702, '2024-06-25 13:13:25', '2024-06-25 13:13:25'),
(23, 3, 703, '2024-06-25 13:13:25', '2024-06-25 13:13:25'),
(24, 3, 704, '2024-06-25 13:13:25', '2024-06-25 13:13:25'),
(25, 3, 705, '2024-06-25 13:13:25', '2024-06-25 13:13:25'),
(26, 4, 801, '2024-06-25 13:13:25', '2024-06-25 13:13:25'),
(27, 4, 802, '2024-06-25 13:13:25', '2024-06-25 13:13:25'),
(28, 4, 803, '2024-06-25 13:13:25', '2024-06-25 13:13:25'),
(29, 4, 804, '2024-06-25 13:13:25', '2024-06-25 13:13:25'),
(30, 4, 805, '2024-06-25 13:13:25', '2024-06-25 13:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `facilities` varchar(255) NOT NULL,
  `total_room` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id`, `hotel_id`, `type`, `image`, `detail`, `facilities`, `total_room`, `capacity`, `price`, `created_at`, `updated_at`) VALUES
(1, 3, 'Deluxe Suite', 'https://hotel-images-soa.s3.amazonaws.com/borobudur/Deluxe-Suite-Bedroom.jpg', 'This 83 m² suite is like an oasis in luxurious accommodation, featuring a living room and dining room separate from the main bedroom.', 'Living room, King sized bed, Bathroom, Free Wifi, in-room coffee and tea facilities.', 15, 2, 1355500.00, '2024-06-25 12:49:28', '2024-06-25 12:49:28'),
(2, 3, 'Borobudur Suites', 'https://hotel-images-soa.s3.amazonaws.com/borobudur/Borobudur-Suite-Bedroom.jpg', 'This 201 m² suite, designed with luxurious interior decor, features a living room and dining room furnished with elegant furniture, and offers beautiful views of the city skyline. Stay in the room favored by heads of state and world celebrities.', 'Access to Discovery CLub Lounge, Afternoon tea, Laundry, Living room, Access to meeting room', 5, 4, 3495300.00, '2024-06-25 12:49:28', '2024-06-25 12:49:28'),
(3, 3, 'Club Suites', 'https://hotel-images-soa.s3.amazonaws.com/borobudur/Club-Suite-Living-Room.jpg', 'The 64 m² Club Suite is equipped with luxurious amenities to enhance the comfort of guests on business trips or vacations. ', 'Access to Discovery CLub Lounge, Afternoon tea, Laundry, Living room, Turndown', 5, 2, 1015300.00, '2024-06-25 13:03:28', '2024-06-25 13:03:28'),
(4, 3, 'Garden Wing Suites', 'https://hotel-images-soa.s3.amazonaws.com/borobudur/GW-03-Bedroom1.jpg', 'Greet the morning from your room and enjoy the fresh air and refreshing green views that cannot be found elsewhere in Jakarta. This 183 m² Garden Wing Suite is designed with a luxurious traditional touch using select wood materials and bright-toned walls.', 'Access to Discovery CLub Lounge,One room with twin bed and two room with king sized bed, Afternoon tea, Laundry, Living room, Access to meeting room', 5, 6, 98957000.00, '2024-06-25 13:08:28', '2024-06-25 13:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hotel_name_unique` (`name`);


--
-- Indexes for table `migrations`
--
-- ALTER TABLE `migrations`
--   ADD PRIMARY KEY (`id`);


--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resv_room`
--
ALTER TABLE `resv_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resv_room_room_id_foreign` (`room_id`),
  ADD KEY `resv_room_resv_id_foreign` (`resv_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_type_id_foreign` (`type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_type_hotel_id_foreign` (`hotel_id`);


--
-- Indexes for table `users`
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--

--
-- AUTO_INCREMENT for table `migrations`
--
-- ALTER TABLE `migrations`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resv_room`
--
ALTER TABLE `resv_room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--

-- Constraints for dumped tables
--

--
-- Constraints for table `resv_room`
--
ALTER TABLE `resv_room`
  ADD CONSTRAINT `resv_room_resv_id_foreign` FOREIGN KEY (`resv_id`) REFERENCES `reservation` (`id`),
  ADD CONSTRAINT `resv_room_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `room_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `room_type`
--
ALTER TABLE `room_type`
  ADD CONSTRAINT `room_type_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
