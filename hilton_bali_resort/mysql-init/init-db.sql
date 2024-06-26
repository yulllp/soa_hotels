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
(5, 'Hilton Bali Resort', 'https://hotel-images-soa.s3.amazonaws.com/hilton/Hilton+Bali.jpg', 'Our cliffside resort overlooks the Sawangan Beach and the Indian Ocean. We have four pools, a sand lagoon, a 30-meter waterslide, and several tennis courts. Enjoy a range of treatments at Mandara Spa. We have four restaurants and a deli to choose from.', 5, 'Jalan Raya Nusa Dua Selatan, Bali,80361,Indonesia', 'Wifi, Golf, Tennis, Swimming pool, Fitness center, Outdoor pool, Bar, ATM', 'Indonesia', 'Bali', 'Badung', '80361', '2024-06-25 15:17:30', '2024-06-25 15:17:30');

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
(1, 1, 501, '2024-06-25 15:25:42', '2024-06-25 15:25:42'),
(2, 1, 502, '2024-06-25 15:25:42', '2024-06-25 15:25:42'),
(3, 1, 503, '2024-06-25 15:25:42', '2024-06-25 15:25:42'),
(4, 1, 504, '2024-06-25 15:25:42', '2024-06-25 15:25:42'),
(5, 1, 505, '2024-06-25 15:25:42', '2024-06-25 15:25:42'),
(6, 1, 506, '2024-06-25 15:25:42', '2024-06-25 15:25:42'),
(7, 1, 507, '2024-06-25 15:25:42', '2024-06-25 15:25:42'),
(8, 1, 508, '2024-06-25 15:25:42', '2024-06-25 15:25:42'),
(9, 1, 509, '2024-06-25 15:25:42', '2024-06-25 15:25:42'),
(10, 1, 510, '2024-06-25 15:25:42', '2024-06-25 15:25:42'),
(11, 2, 701, '2024-06-25 15:25:03', '2024-06-25 15:25:03'),
(12, 2, 702, '2024-06-25 15:25:03', '2024-06-25 15:25:03'),
(13, 2, 703, '2024-06-25 15:25:03', '2024-06-25 15:25:03'),
(14, 2, 704, '2024-06-25 15:25:03', '2024-06-25 15:25:03'),
(15, 2, 705, '2024-06-25 15:25:03', '2024-06-25 15:25:03'),
(16, 2, 801, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(17, 2, 802, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(18, 2, 803, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(19, 2, 804, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(20, 2, 805, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(21, 3, 901, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(22, 3, 902, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(23, 3, 903, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(24, 3, 904, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(25, 3, 905, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(26, 3, 906, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(27, 3, 907, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(28, 3, 908, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(29, 3, 909, '2024-06-25 15:25:25', '2024-06-25 15:25:25'),
(30, 3, 910, '2024-06-25 15:25:25', '2024-06-25 15:25:25');

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
(1, 5, 'King Suite Terrace Ocean View', 'https://hotel-images-soa.s3.amazonaws.com/hilton/king-suite.jpg', '48 square meters wireless internet coffee tea minibar balcony in room safe separate bath shower iron board closet', 'Free Wifi, Room Service, Free Cribs', 10, 3, 3280640.00, '2024-06-25 15:19:28', '2024-06-25 15:19:28'),
(2, 5, 'Twin Deluxe Ocean View', 'https://hotel-images-soa.s3.amazonaws.com/hilton/twin-deluxe.jpg', '48 square meters wireless internet coffee tea minibar balcony in room safe separate bath shower iron board closet', 'Free Wifi, Room Service, Free Cribs', 10, 5, 3936768.00, '2024-06-25 15:21:28', '2024-06-25 15:21:28'),
(3, 5, 'King One Bedroom Executive Suite Ocean View', 'https://hotel-images-soa.s3.amazonaws.com/hilton/king-onebedroom.jpg', '100 square meters newly refurbished high floor balcony living dining area executive lounge benefits', 'Free Wifi, Room Service, Free Cribs, Balcony/Terrace', 10, 2, 8406640.00, '2024-06-25 15:23:28', '2024-06-25 15:23:28');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
