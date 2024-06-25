-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 09:17 AM
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
(1, 'Merlynn Park Hotel', 'https://hotel-images-soa.s3.amazonaws.com/merlynn_park_hotel.jpg', 'Not only located within easy reach of various places of interests for your adventure, but staying at Merlynn Park Hotel will also give you a pleasant stay.', 5, 'Jl. K.H.Hasyim Ashari 29-31, Gambir, Petojo Utara, Jakarta, Indonesia, 10130', 'AC, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, WiFi', 'Indonesia', 'DKI Jakarta', 'Jakarta', '10130', '2024-06-12 02:14:30', '2024-06-12 02:14:30');

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
(1, 1, 301, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(2, 1, 302, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(3, 1, 303, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(4, 1, 304, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(5, 1, 305, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(6, 1, 306, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(7, 1, 307, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(8, 1, 308, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(9, 1, 309, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(10, 1, 310, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(11, 1, 311, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(12, 1, 312, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(13, 1, 313, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(14, 1, 314, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(15, 1, 315, '2024-06-12 11:05:42', '2024-06-12 11:05:42'),
(16, 2, 501, '2024-06-12 11:09:03', '2024-06-12 11:09:03'),
(17, 2, 502, '2024-06-12 11:09:03', '2024-06-12 11:09:03'),
(18, 2, 503, '2024-06-12 11:09:03', '2024-06-12 11:09:03'),
(19, 2, 504, '2024-06-12 11:09:03', '2024-06-12 11:09:03'),
(20, 2, 505, '2024-06-12 11:09:03', '2024-06-12 11:09:03'),
(21, 2, 506, '2024-06-12 11:09:03', '2024-06-12 11:09:03'),
(22, 2, 507, '2024-06-12 11:09:03', '2024-06-12 11:09:03'),
(23, 2, 508, '2024-06-12 11:09:03', '2024-06-12 11:09:03'),
(24, 2, 509, '2024-06-12 11:09:03', '2024-06-12 11:09:03'),
(25, 2, 510, '2024-06-12 11:09:03', '2024-06-12 11:09:03'),
(26, 3, 601, '2024-06-12 11:11:25', '2024-06-12 11:11:25'),
(27, 3, 602, '2024-06-12 11:11:25', '2024-06-12 11:11:25'),
(28, 3, 603, '2024-06-12 11:11:25', '2024-06-12 11:11:25'),
(29, 3, 604, '2024-06-12 11:11:25', '2024-06-12 11:11:25'),
(30, 3, 605, '2024-06-12 11:11:25', '2024-06-12 11:11:25');

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
(1, 1, 'Executive King', 'https://hotel-images-soa.s3.amazonaws.com/exec_king.jpeg', 'King Size, (40.5 sq-meter)room with city views', 'AC, Non Smoking Rooms, Free WiFi, TV, Bathroom', 15, 2, 1145094.00, '2024-06-12 11:02:28', '2024-06-12 11:02:28'),
(2, 1, 'Merlynn Suite', 'https://hotel-images-soa.s3.amazonaws.com/merlyn_suite.jpeg', 'King Size, (60.75 sq-meter)room with city views  ', 'AC, Non Smoking Rooms, Free WiFi, TV, Bathroom', 10, 2, 1691983.00, '2024-06-12 11:02:28', '2024-06-12 11:02:28'),
(3, 1, 'Empire Mansion', 'https://hotel-images-soa.s3.amazonaws.com/empire_mansion.jpeg', '(194.302 sq-meter)room with city views ', 'AC, Complimentary bottled water, Minibar, Refrigerator, Television, Desk, Bathroom', 5, 2, 12199515.00, '2024-06-12 11:02:28', '2024-06-12 11:02:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hotel_name_unique` (`name`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
