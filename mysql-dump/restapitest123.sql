-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 14, 2022 at 11:26 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restapitest123`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `code` varchar(4) DEFAULT NULL,
  `initDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `domain` varchar(30) DEFAULT NULL,
  `startDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programming_languages`
--

CREATE TABLE `programming_languages` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `released_year` int NOT NULL,
  `githut_rank` int DEFAULT NULL,
  `pypl_rank` int DEFAULT NULL,
  `tiobe_rank` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programming_languages`
--

INSERT INTO `programming_languages` (`id`, `name`, `released_year`, `githut_rank`, `pypl_rank`, `tiobe_rank`, `created_at`, `updated_at`) VALUES
(5, 'uabcsd', 1999, 6, 15, 15, '2022-01-26 16:42:13', '2022-10-20 11:13:21'),
(7, 'C++', 1985, 5, 5, 4, '2022-01-26 16:42:13', '2022-01-26 16:42:13'),
(8, 'C', 1972, 10, 5, 1, '2022-01-26 16:42:13', '2022-01-26 16:42:13'),
(9, 'Ruby', 1995, 6, 15, 15, '2022-01-26 16:42:13', '2022-01-26 16:42:13'),
(10, 'R', 1993, 33, 7, 9, '2022-01-26 16:42:13', '2022-01-26 16:42:13'),
(11, 'Objective-C', 1984, 18, 8, 18, '2022-01-26 16:42:13', '2022-01-26 16:42:13'),
(12, 'Swift', 2015, 16, 9, 13, '2022-01-26 16:42:13', '2022-01-26 16:42:13'),
(13, 'Kotlin', 2011, 15, 12, 40, '2022-01-26 16:42:13', '2022-01-26 16:42:13'),
(14, 'Go', 2009, 4, 13, 14, '2022-01-26 16:42:13', '2022-01-26 16:42:13'),
(15, 'Rust', 2010, 14, 16, 26, '2022-01-26 16:42:13', '2022-01-26 16:42:13'),
(18, 'dart', 2011, 13, 20, 25, '2022-02-13 22:26:56', '2022-02-13 22:26:56'),
(22, 'fart', 2011, 13, 20, 25, '2022-02-13 22:30:00', '2022-02-13 22:30:00'),
(27, 'dart2', 2011, 13, 20, 25, '2022-04-08 15:02:32', '2022-04-08 15:02:32'),
(29, 'hala', 2011, 13, 20, 25, '2022-04-08 19:12:20', '2022-04-08 19:12:20'),
(31, 'test', 2011, 13, 20, 25, '2022-04-21 18:36:58', '2022-04-21 18:36:58'),
(32, '', 2011, 13, 20, 25, '2022-05-06 09:35:18', '2022-05-06 09:35:18'),
(35, 'JomarLanguage', 2006, 1, 2, 3, '2022-05-14 07:41:34', '2022-05-14 07:41:34'),
(36, 'Jomar Language', 2006, 1, 2, 3, '2022-05-14 07:41:52', '2022-05-14 07:41:52'),
(37, 'Laravel', 2010, 1, 2, 3, '2022-05-14 07:42:25', '2022-05-14 07:42:25'),
(41, 'Nardo', 2101, 1, 2, 3, '2022-05-14 07:54:33', '2022-05-14 07:54:33'),
(42, 'GOLANG', 2011, 13, 20, 25, '2022-06-05 04:18:43', '2022-06-05 04:25:59'),
(43, 'KKK', 2011, 12, 20, 25, '2022-06-08 19:07:36', '2022-06-08 19:11:22'),
(47, 'javascript', 1995, 1, 3, 7, '2022-09-30 20:19:02', '2022-09-30 20:19:02'),
(48, 'parixit', 132, 111, 222, 333, '2022-10-18 12:32:45', '2022-10-18 12:32:45'),
(51, 'parixitsdvd', 132, 111, 222, 333, '2022-10-18 12:39:47', '2022-10-18 12:39:47'),
(54, 'parixit1', 132, 111, 222, 333, '2022-10-18 13:49:39', '2022-10-18 13:49:39'),
(57, 'parixit2', 132, 111, 222, 333, '2022-10-18 13:50:09', '2022-10-18 13:50:09'),
(58, 'TestCourse1', 2022, 1, 1, 1, '2022-10-22 17:46:11', '2022-10-22 17:46:11'),
(62, 'UpdateTestCourse2', 2090, 1111, 1111, 1, '2022-10-22 18:15:17', '2022-10-22 18:16:06'),
(101, 'COMELANG', 2011, 13, 20, 25, '2022-10-24 17:38:14', '2022-10-24 17:38:14'),
(102, '199', 1999, 6, 15, 15, '2022-10-31 08:07:24', '2022-10-31 08:07:24'),
(104, '1209', 1999, 6, 15, 15, '2022-10-31 08:09:10', '2022-10-31 08:09:10'),
(105, '200', 1999, 6, 15, 15, '2022-10-31 08:09:34', '2022-10-31 08:09:34'),
(107, '212', 1999, 6, 15, 15, '2022-10-31 08:10:25', '2022-10-31 08:10:25'),
(108, 'kkkk', 2010, 14, 16, 26, '2022-11-13 18:00:44', '2022-11-13 18:00:44'),
(110, 'kkjjhbhkk', 2010, 14, 16, 26, '2022-11-13 18:04:53', '2022-11-13 18:04:53'),
(112, 'kkd', 2010, 14, 16, 26, '2022-11-13 18:08:15', '2022-11-13 18:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int NOT NULL,
  `userId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programming_languages`
--
ALTER TABLE `programming_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name_unique` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programming_languages`
--
ALTER TABLE `programming_languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
