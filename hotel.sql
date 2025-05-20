-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2023 at 03:55 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET
SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET
time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile`
(
    `id`     int                                     NOT NULL,
    `name`   varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `image`  varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `star`   tinyint UNSIGNED NOT NULL,
    `review` tinyint UNSIGNED NOT NULL,
    `price`  varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `city`   varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `image`, `star`, `review`, `price`, `city`)
VALUES (1, 'Hotel Namira Syariah Pekalongan', '1.jpeg', 2, 4, '389000', 'pekalongan'),
       (2, 'Howard Johnson by Wyndham Pekalonga', '2.jpeg', 2, 2, '432584', 'pekalongan'),
       (3, 'Khas pekalongan hotel', '3.jpeg', 2, 4, '433742', 'pekalongan'),
       (4, 'sahid mandarin', '4.jpeg', 4, 2, '349859', 'pekalongan'),
       (5, 'santika', '5.jpeg', 5, 5, '359921', 'pekalongan'),
       (6, 'dafam pekalongan', '6.jpeg', 4, 1, '157288', 'pekalongan'),
       (7, 'sidji', '7.jpeg', 2, 4, '306892', 'pekalongan'),
       (8, 'nirwana', '8.jpeg', 3, 4, '109740', 'pekalongan'),
       (9, 'grand dian', '9.jpeg', 1, 3, '475853', 'pekalongan'),
       (10, 'sedang sari', '10.jpeg', 3, 5, '274942', 'jakarta'),
       (11, 'reddoodz', '11.jpeg', 4, 5, '131749', 'jakarta'),
       (12, 'artotel', '12.jpeg', 2, 5, '173985', 'jakarta'),
       (13, 'hotel borabudur', '13.jpeg', 5, 3, '236200', 'jakarta'),
       (14, 'kempinski', '14.jpeg', 4, 3, '497115', 'jakarta'),
       (15, 'intercontinental', '15.jpeg', 4, 5, '112394', 'jakarta'),
       (16, 'davinci', '16.jpeg', 1, 4, '152480', 'jakarta'),
       (17, 'yuan garden', '17.jpeg', 3, 5, '312825', 'jakarta'),
       (18, 'mulia senayan', '18.jpeg', 4, 5, '129819', 'jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations`
(
    `id`                  varchar(36) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `checksum`            varchar(64) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `finished_at`         datetime(3) DEFAULT NULL,
    `migration_name`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `logs`                text COLLATE utf8mb4_unicode_ci,
    `rolled_back_at`      datetime(3) DEFAULT NULL,
    `started_at`          datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`,
                                  `started_at`, `applied_steps_count`)
VALUES ('6703f02d-c2df-445b-8776-ff2fa74a287b', 'b235514d014995a371f3284202c3dabc22d8aee5088f4fe385dbfd1d1a9ff6b2',
        '2023-08-01 13:43:16.510', '20230801134316_update_index', NULL, NULL, '2023-08-01 13:43:16.447', 1),
       ('fc0ddecc-f8cd-48b6-a655-0f8fa99cbeca', '189c6e48bdfb83582a80d09cf8a33ae72e9fe5abe114adf9468ff46e00a8a8f6',
        '2023-08-01 13:41:10.781', '20230801134110_profile', NULL, NULL, '2023-08-01 13:41:10.721', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_id_key` (`id`),
  ADD KEY `profile_id_city_name_idx` (`id`,`city`,`name`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
