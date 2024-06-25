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
(2, 'The Jayakarta SP Jakarta Hotel & Spa', 'https://hotel-images-soa.s3.amazonaws.com/jayakarta/Jayakarta+SP.jpg', 'Designed as a business hotel, The Jayakarta SP Jakarta Hotel & Spa provides rooms and facilities to fulfill your MICE needs, it is also completed with entertainment and leisure facilities to accommodate your needs for refreshing and relaxing. The Jayakarta SP Jakarta Hotel & Spa offer a fully facilitated hotel for you who travel for both business and leisure.', 4, 'Jalan Hayam Wuruk No.126 Glodok, RT.2/RW.6, Mangga Besar, Kec. Taman Sari, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11180', 'AC, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, WiFi, Spa, Gym', 'Indonesia', 'DKI Jakarta', 'Jakarta', '11180', '2024-06-25 11:53:30', '2024-06-25 11:53:30');

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
(1, 1, 501, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(2, 1, 502, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(3, 1, 503, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(4, 1, 504, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(5, 1, 505, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(6, 1, 506, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(7, 1, 507, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(8, 1, 508, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(9, 1, 509, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(10, 1, 510, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(11, 1, 511, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(12, 1, 512, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(13, 1, 513, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(14, 1, 514, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(15, 1, 515, '2024-06-25 12:10:42', '2024-06-25 12:10:42'),
(16, 2, 601, '2024-06-25 12:10:03', '2024-06-25 12:10:03'),
(17, 2, 602, '2024-06-25 12:10:03', '2024-06-25 12:10:03'),
(18, 2, 603, '2024-06-25 12:10:03', '2024-06-25 12:10:03'),
(19, 2, 604, '2024-06-25 12:10:03', '2024-06-25 12:10:03'),
(20, 2, 605, '2024-0625 12:10:03', '2024-06-25 12:10:03'),
(21, 2, 606, '2024-06-25 12:10:03', '2024-06-25 12:10:03'),
(22, 2, 607, '2024-06-12 11:09:03', '2024-06-25 12:10:03'),
(23, 2, 608, '2024-06-25 12:10:03', '2024-06-25 12:10:03'),
(24, 2, 609, '2024-06-12 12:10:03', '2024-06-25 12:10:03'),
(25, 2, 610, '2024-06-25 12:10:03', '2024-06-25 12:10:03'),
(26, 3, 701, '2024-06-25 12:10:25', '2024-06-25 12:10:25'),
(27, 3, 702, '2024-06-25 12:10:25', '2024-06-25 12:10:25'),
(28, 3, 703, '2024-06-25 12:10:25', '2024-06-25 12:10:25'),
(29, 3, 804, '2024-06-25 12:10:25', '2024-06-25 12:10:25'),
(30, 3, 805, '2024-06-25 12:10:25', '2024-06-25 12:10:25');

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
(1, 2, 'Deluxe Room', 'https://hotel-images-soa.s3.amazonaws.com/jayakarta/deluxe-room.jpg', 'King Size or Twin Beds, (24 sq-meter)room with city views', 'Flat-screen TV, Air conditioning, Satellite Channels.', 15, 2, 1557000.00, '2024-06-25 12:01:28', '2024-06-25 12:01:28'),
(2, 2, 'Jayakarta Suites', 'https://hotel-images-soa.s3.amazonaws.com/jayakarta/jayakarta-suites.jpg', 'King Size or Twin Beds, (34 sq-meter)room with city views', 'Flat-screen TV, Air conditioning, Satellite Channels, Sofa bed, Living room.', 10, 2, 1821533.00, '2024-06-25 12:02:28', '2024-06-25 12:02:28'),
(3, 2, 'President Suites', 'https://hotel-images-soa.s3.amazonaws.com/jayakarta/president-suites.jpg', '(155 sq-meter)room with city views ', '1 Room with double bed. 3 rooms with twin bed, Living room, Dining room, Kitchen, Flat-screen TV, Air conditioning, Satellite Channels, Sofa bed.', 5, 2, 15140998.00, '2024-06-25 12:02:28', '2024-06-25 12:02:28');

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
