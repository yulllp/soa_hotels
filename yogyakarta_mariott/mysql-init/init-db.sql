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
(4, 'Yogyakarta Mariott', 'https://hotel-images-soa.s3.amazonaws.com/yogyakarta/Mariot+Jogja.jpg', 'Stay in the heart of Yogyakarta at the 5-star Yogyakarta Marriott Hotel, located adjacent to Pakuwon Mall Jogja and offers convenient access to popular tourist destinations such as Prambanan Temple, Borobudur Temple, Jalan Malioboro, Kraton Yogyakarta, and Gadjah Mada University. Relax in our iconic infinity pool or workout in the 24-hour fitness center.', 5, 'Jl. Kaliwaru, Kaliwaru, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '
M Club Lounge, Restaurant and Bar, Spa Services, 24-Hour Fitness Center, Business Service Center, M Kids Club, Spacious Swimming Pool, Free Wi-Fi, Free Parking', 'Indonesia', 'DI Yogyakarta', 'Yogyakarta', '55281', '2024-06-25 14:36:30', '2024-06-25 14:36:30');

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
  `check_in` int(11) NULL DEFAULT 0,
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
  `id` bigint(20) UNSIGNED NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type_id`, `number`, `created_at`, `updated_at`) VALUES
(1, 1, 501, '2024-06-25 15:09:42', '2024-06-25 15:10:42'),
(2, 1, 502, '2024-06-25 15:09:42', '2024-06-25 15:10:42'),
(3, 1, 503, '2024-06-25 15:09:42', '2024-06-25 15:10:42'),
(4, 1, 504, '2024-06-25 15:09:42', '2024-06-25 15:10:42'),
(5, 1, 505, '2024-06-25 15:09:42', '2024-06-25 15:10:42'),
(6, 1, 506, '2024-06-25 15:09:42', '2024-06-25 15:10:42'),
(7, 1, 507, '2024-06-25 15:09:42', '2024-06-25 15:10:42'),
(8, 1, 508, '2024-06-25 15:09:42', '2024-06-25 15:10:42'),
(9, 1, 509, '2024-06-25 15:09:42', '2024-06-25 15:10:42'),
(10, 1, 510, '2024-06-25 15:09:42', '2024-06-25 15:10:42'),
(11, 2, 701, '2024-06-25 15:09:03', '2024-06-25 15:10:03'),
(12, 2, 702, '2024-06-25 15:09:03', '2024-06-25 15:10:03'),
(13, 2, 703, '2024-06-25 15:09:03', '2024-06-25 15:10:03'),
(14, 2, 704, '2024-06-25 15:09:03', '2024-06-25 15:10:03'),
(15, 2, 705, '2024-06-25 15:09:03', '2024-06-25 15:10:03'),
(16, 3, 801, '2024-06-25 15:09:25', '2024-06-25 15:10:25'),
(17, 3, 802, '2024-06-25 15:09:25', '2024-06-25 15:10:25'),
(18, 3, 803, '2024-06-25 15:09:25', '2024-06-25 15:10:25'),
(19, 3, 804, '2024-06-25 15:09:25', '2024-06-25 15:10:25'),
(20, 3, 805, '2024-06-25 15:09:25', '2024-06-25 15:10:25');

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
(1, 4, 'Premier Twin', 'https://hotel-images-soa.s3.amazonaws.com/yogyakarta/premier-twin.jpg', 'The Premier Twin Room offers views overlooking the iconic pool, a bathtub-equipped bathroom, and exclusive access to the M Club Lounge facilities.', 'Iconic Bathroom, M CLub Lounge Access, 2 Twin Beds', 10, 3, 2399000.00, '2024-06-25 14:42:28', '2024-06-25 14:42:28'),
(2, 4, 'Executive Suites', 'https://hotel-images-soa.s3.amazonaws.com/yogyakarta/executive.jpg', 'The suite features a separate living room, pool view, bathtub-equipped bathroom, and exclusive access to the M Club Lounge facilities.', 'M Club Lounge Access, Bathtub, Living room, King sized bed', 5, 3, 3355900.00, '2024-06-25 14:57:28', '2024-06-25 14:57:28'),
(3, 4, 'Presidential Suites', 'https://hotel-images-soa.s3.amazonaws.com/yogyakarta/presidential-suite.jpg', 'The Presidential Suite includes a living room, separate dining area, bathtub-equipped bathroom, kitchen, billiards area, iconic pool views, and access to the M Club Lounge facilities.', 'M Club Lounge Access, Billiard Table, Iconic pool view', 5, 4, 11499000.00, '2024-06-25 15:04:28', '2024-06-25 15:04:28');

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
  ADD KEY `resv_room_resv_id_foreign` (`resv_id`),
  MODIFY `room_id` BIGINT(20) UNSIGNED NULL;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resv_room`
--
ALTER TABLE `resv_room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD COLUMN `type_id` BIGINT(20) UNSIGNED NOT NULL AFTER `booking_id`,
  ADD CONSTRAINT `reservation_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `room_type` (`id`) ON DELETE CASCADE;

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
