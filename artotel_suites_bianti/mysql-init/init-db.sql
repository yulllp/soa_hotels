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
(6, 'Artotel Suites Bianti', 'https://', 'The 5-star ARTOTEL Suites Bianti Yogyakarta, CHSE Certified offers luxurious air-conditioned rooms in the center of Yogyakarta, just a 2-minute walk from the main world street. The accommodation features an outdoor swimming pool, fitness center and pampering spa services', 5, 'Jl. Urip Sumoharjo No.37, Klitren, Kec. Gondokusuman, Kota Yogyakarta, Gondokusuman, Yogyakarta, Yogyakarta Province, Indonesia, 55222', 'AC, Restaurant, Swimming Pool', 'Indonesia', 'DI Yogyakarta', 'Yogyakarta', '55222', '2024-06-25 15:33:30', '2024-06-25 15:33:30');

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
(1, 1, 101, '2024-06-25 15:45:42', '2024-06-25 15:45:42'),
(2, 1, 102, '2024-06-25 15:45:42', '2024-06-25 15:45:42'),
(3, 1, 103, '2024-06-25 15:45:42', '2024-06-25 15:45:42'),
(4, 1, 104, '2024-06-25 15:45:42', '2024-06-25 15:45:42'),
(5, 1, 105, '2024-06-25 15:45:42', '2024-06-25 15:45:42'),
(6, 2, 206, '2024-06-25 15:45:42', '2024-06-25 15:45:42'),
(7, 2, 207, '2024-06-25 15:45:42', '2024-06-25 15:45:42'),
(8, 2, 208, '2024-06-25 15:45:42', '2024-06-25 15:45:42'),
(9, 2, 209, '2024-06-25 15:45:42', '2024-06-25 15:45:42'),
(10, 2, 210, '2024-06-25 15:45:42', '2024-06-25 15:45:42'),
(11, 2, 201, '2024-06-25 15:45:03', '2024-06-25 15:45:03'),
(12, 2, 202, '2024-06-25 15:45:03', '2024-06-25 15:45:03'),
(13, 2, 203, '2024-06-25 15:45:03', '2024-06-25 15:45:03'),
(14, 2, 204, '2024-06-25 15:45:03', '2024-06-25 15:45:03'),
(15, 2, 205, '2024-06-25 15:45:03', '2024-06-25 15:45:03'),
(16, 3, 301, '2024-06-25 15:45:25', '2024-06-25 15:45:25'),
(17, 3, 302, '2024-06-25 15:45:25', '2024-06-25 15:45:25'),
(18, 3, 303, '2024-06-25 15:45:25', '2024-06-25 15:45:25'),
(19, 3, 304, '2024-06-25 15:45:25', '2024-06-25 15:45:25'),
(20, 3, 305, '2024-06-25 15:45:25', '2024-06-25 15:45:25');
(21, 3, 306, '2024-06-25 15:45:03', '2024-06-25 15:45:03'),
(22, 3, 307, '2024-06-25 15:45:03', '2024-06-25 15:45:03'),
(23, 3, 308, '2024-06-25 15:45:03', '2024-06-25 15:45:03');

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
(1, 6, 'Presiden Suite', 'https://', 'The Luxurious hotel accomodation at ARTOTEL Suites Bianti, Yogyakarta is complete with city views, exquisite furnishings, and every five-star amenity required for a relaxing business or leisure stay. Featuring our only President Suite.', 'Bathub, Free Mini Bar, Free Fruit Basket, Spacious Living room', 5, 3, 8553719.00, '2024-06-25 15:36:28', '2024-06-25 15:36:28'),
(2, 4, 'Artsy Suite', 'https://', 'The Luxurious hotel accomodation at ARTOTEL Suites Bianti, Yogyakarta is complete with city views, exquisite furnishings, and every five-star amenity required for a relaxing business or leisure stay. Featuring our 3 Deluxe ARTSY Suites rooms.', 'King Bed, Coffee Machine', 10, 2, 3512397.00, '2024-06-25 15:39:28', '2024-06-25 15:39:28'),
(3, 4, 'Deluxe Artsy Suite', 'https://', 'The Luxurious hotel accomodation at ARTOTEL Suites Bianti, – Yogyakarta is complete with city views, exquisite furnishings, and every five-star amenity required for a relaxing business or leisure stay. Featuring our 3 Deluxe ARTSY Suites rooms.', 'King Bed, Bathup, Coffee Machine, Mini Bar', 8, 2, 4127343.00, '2024-06-25 15:41:28', '2024-06-25 15:41:28');

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
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);


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
