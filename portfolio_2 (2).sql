-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2024 at 12:43 AM
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
-- Database: `portfolio_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_18_172745_create_skills_table', 1),
(6, '2022_10_18_173024_create_projects_table', 1),
(7, '2024_08_08_180656_create_project_skill_table', 2),
(8, '2024_08_08_185554_add_admin_to_users_table', 3),
(9, '2024_08_08_195108_add_images_to_projects_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `image_3` varchar(255) DEFAULT NULL,
  `image_4` varchar(255) DEFAULT NULL,
  `image_5` varchar(255) DEFAULT NULL,
  `image_6` varchar(255) DEFAULT NULL,
  `project_url` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `skill_id`, `name`, `image`, `image_2`, `image_3`, `image_4`, `image_5`, `image_6`, `project_url`, `created_at`, `updated_at`) VALUES
(8, NULL, 'E-commerce Website', 'projects/XPab1BpL1S4VJUy8IRwjhazCMuwyE6mioFxMHXSM.png', 'projects/LJs5qHbt62uGBvphHDF7ahXXweFE7dIc7Nj6xFb6.png', NULL, NULL, NULL, NULL, 'www.github.com', '2024-08-08 19:19:22', '2024-08-08 19:19:22'),
(9, NULL, 'Custom Website', 'projects/oll8LtmbMGjQqGY4XquZhc0UeErAsG9dMDOOfjJG.png', 'projects/hWlXF6hMC1BvjzyatFDp8JkLay8W2sZ382Suo9Ah.png', NULL, NULL, NULL, NULL, 'https://tarikcruddev.tech/', '2024-08-08 19:24:55', '2024-08-08 19:24:55'),
(10, NULL, 'E-commerce Website', 'projects/LFNoNX3HuQkmo3cZTlqk2rZIvXL92qKoNAVzXJf9.png', 'projects/z2qSchHgVC5pWIFz9zVmFreOo8Z4L1B3udOcEbQC.png', 'projects/2U9raisqbyxR1AmysAWRy2zoTtSk21eUbpeUvYrw.png', 'projects/LwFDUsbrp7Cwu5IPES1XoBWj6ZJeI9AeReeXd9FW.png', 'projects/9JM6sGG68Ob6KobyPFEzNKZRQ58v7YntNaI1XT8b.png', NULL, 'https://github.com/Tarik791/E-commerce-website', '2024-08-08 19:30:17', '2024-08-08 19:30:17'),
(11, NULL, 'Create, Read, Update, Delete', 'projects/tM1d5JvVqZehQClyN4XODwDVDuqt38LuYyouXFVw.png', NULL, NULL, NULL, NULL, NULL, 'https://github.com/Tarik791/LaravelReactJSCRUD', '2024-08-08 19:37:22', '2024-08-08 19:37:22'),
(12, NULL, 'E-commerce Website', 'projects/OtCXqPa7gzDaZ5EPc8DKyhGWN1gj40itd2Q1xO9m.png', 'projects/9X58tbUl7S5tBfHIXnhHlu3DWKvc8MJqwpqIrNtS.png', 'projects/pK02xOkiaS2qDuC7nfxxHTSkROAX4uzim84JoSOt.png', 'projects/7YL1eXbTVesOF2KKceKkMuJXAcGCvInSV5o5lBub.png', 'projects/p7U9LrR5PBlGPbg9MPMbWusU0NOMdmakOUiUD29G.png', 'projects/L8maBs4YrGLIav7gseBIKNkeUDKosT74lbk6GAdo.png', 'https://zia.ba', '2024-08-08 19:41:30', '2024-08-08 19:41:30'),
(13, NULL, 'Race Website', 'projects/Kr99U8sFbiXTG3kMrAkVfoAUEfZyKjenwQQ7pEmp.png', 'projects/Eq64Hibqzlo6T6F1k3D6wJ957XSux6y2GWAjjMBq.png', 'projects/KdgVwNCIuS7dipk0qvwkEBaLL2xRsrs3vBex0p7t.png', NULL, NULL, NULL, 'https://github.com/Tarik791/RaceApplication', '2024-08-08 19:49:47', '2024-08-08 19:49:47'),
(15, NULL, 'E-commerce Website', 'projects/gFJHdAvPPZf58hczc2emYmiMEvlW480igiV7ls2X.png', 'projects/Yd54HmivMDw30led7erQ9yEH5MuvdsbnxPZznn1n.png', 'projects/Fqjwzw8R25bXYa20ncnQFnANr2UzsbAMkB9Tsty3.png', 'projects/cO5J8RtjTXsxZGLLLC280aXdgst9PbW9blPq39k0.png', 'projects/61EoasellMl3SGXdWsJ8k9zQAodvvODlJVGvP7Gk.png', 'projects/wzpDnL09z9gafL7n449ZTKMywqG3Me5CwJ28m3Ho.png', 'https://github.com/Tarik791/LaravelAppCD', '2024-08-08 20:02:19', '2024-08-08 20:02:19'),
(16, NULL, 'Portfolio', 'projects/4YPv7DWZYYSQDWKZvFdtCLKu3omoZNb4cktdlJFr.png', 'projects/JB9nUYSxyI9b8LJnL0SmjoclI0Z6AVQPFV77RXaD.png', 'projects/kHSqZQTILUt2248sWmy4Le4W7en2g4WNH8QL5pIU.png', 'projects/c7UX4iCvx9nhmFTGPGPHzKHMEoEkoF2tykVgShPB.png', 'projects/IF76MBvoCNjzd4boUK2wuTP15MsLjTXCMBUVOtx3.png', NULL, 'https://github.com/Tarik791/TarikTerzoPortfolio', '2024-08-08 20:08:19', '2024-08-08 20:08:19'),
(17, NULL, 'QUIZ', 'projects/XSuCYkA7ITpxZQGxx7VDharrgldNgkpXHZEHJaID.jpg', 'projects/IQUN3TCatsUTYjOVcblOx82NKY9l8NYK7ghX45Ry.jpg', 'projects/mjbKbvSyvwegsypF4V8RVUhiLGWNIT6G4iPaW824.jpg', NULL, NULL, NULL, 'https://github.com/Tarik791/quiz', '2024-08-08 20:12:27', '2024-08-08 20:12:27'),
(18, NULL, 'Live Chat App', 'projects/ygdGlqNon44LaZhcMRqkS6yoBqSSOr1naGb1dsXz.jpg', 'projects/ticOzgj5u5eMR6i6veoesuOD7hayI3TFR1QgPYmY.jpg', 'projects/G7zoA12DdnmdNIXmnl2kUQW3901ci8L1g1PpgWjy.jpg', 'projects/QEf2FTurCC0chgyXiAr2D82dshWe8IIRB2LKcaC1.jpg', NULL, NULL, 'https://github.com/Tarik791/LiveChat', '2024-08-08 20:15:34', '2024-08-08 20:15:34'),
(19, NULL, 'Gallery Website', 'projects/RarkcCwJR8zdXDRKKKlx3gFhtPausTxszl9r6k8R.jpg', 'projects/NEH8HdB1J2GILVuDE3JY6OWd1iEI9aE3pTQEyq1g.jpg', 'projects/yTwJsfCwlP3gQWzgPCQggwGJJjTaGzOfNaO6iVBq.jpg', NULL, NULL, NULL, 'https://github.com/Tarik791/gallery12', '2024-08-08 20:18:02', '2024-08-08 20:18:02'),
(20, NULL, 'Movie App', 'projects/Xhr1cntEzNwV6CsAIxQvR2mVI8AJf5NhMbLv4CpG.jpg', NULL, NULL, NULL, NULL, NULL, 'https://github.com/Tarik791/Movies', '2024-08-08 20:24:21', '2024-08-08 20:24:21'),
(21, NULL, 'Password Generator', 'projects/1VGC91gWLf8bY7dCI3ZNtHgzQP5QblqT8VUBPLrj.jpg', NULL, NULL, NULL, NULL, NULL, 'https://github.com/Tarik791/Password-generator', '2024-08-08 20:25:44', '2024-08-08 20:25:44'),
(22, NULL, 'E-commerce Website', 'projects/WWqcEF5S7ZGhsP1mvMbrY6DfFTGvzzcr2ATIsUCv.jpg', NULL, NULL, NULL, NULL, NULL, 'https://github.com/Tarik791/ecommerce-aspnet-mvc-application', '2024-08-08 20:30:08', '2024-08-08 20:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `project_skill`
--

CREATE TABLE `project_skill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_skill`
--

INSERT INTO `project_skill` (`id`, `project_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(13, 8, 32, NULL, NULL),
(14, 8, 33, NULL, NULL),
(15, 8, 34, NULL, NULL),
(16, 8, 35, NULL, NULL),
(17, 9, 32, NULL, NULL),
(18, 9, 33, NULL, NULL),
(19, 9, 35, NULL, NULL),
(20, 9, 36, NULL, NULL),
(21, 10, 32, NULL, NULL),
(22, 10, 37, NULL, NULL),
(23, 10, 39, NULL, NULL),
(24, 10, 35, NULL, NULL),
(25, 10, 38, NULL, NULL),
(26, 11, 40, NULL, NULL),
(27, 11, 33, NULL, NULL),
(28, 11, 36, NULL, NULL),
(29, 11, 38, NULL, NULL),
(30, 11, 35, NULL, NULL),
(31, 12, 40, NULL, NULL),
(32, 12, 39, NULL, NULL),
(33, 12, 35, NULL, NULL),
(34, 12, 38, NULL, NULL),
(35, 13, 32, NULL, NULL),
(36, 13, 37, NULL, NULL),
(37, 13, 39, NULL, NULL),
(38, 13, 35, NULL, NULL),
(39, 13, 38, NULL, NULL),
(45, 15, 40, NULL, NULL),
(46, 15, 37, NULL, NULL),
(47, 15, 39, NULL, NULL),
(48, 15, 35, NULL, NULL),
(49, 15, 38, NULL, NULL),
(50, 16, 32, NULL, NULL),
(51, 16, 37, NULL, NULL),
(52, 16, 38, NULL, NULL),
(53, 16, 39, NULL, NULL),
(54, 16, 35, NULL, NULL),
(55, 17, 37, NULL, NULL),
(56, 17, 39, NULL, NULL),
(57, 17, 35, NULL, NULL),
(58, 18, 32, NULL, NULL),
(59, 18, 37, NULL, NULL),
(60, 18, 39, NULL, NULL),
(61, 18, 35, NULL, NULL),
(62, 18, 38, NULL, NULL),
(63, 19, 32, NULL, NULL),
(64, 19, 37, NULL, NULL),
(65, 19, 39, NULL, NULL),
(66, 19, 35, NULL, NULL),
(67, 19, 38, NULL, NULL),
(68, 20, 37, NULL, NULL),
(69, 20, 39, NULL, NULL),
(70, 20, 35, NULL, NULL),
(71, 21, 37, NULL, NULL),
(72, 21, 39, NULL, NULL),
(73, 21, 35, NULL, NULL),
(74, 22, 41, NULL, NULL),
(75, 22, 39, NULL, NULL),
(76, 22, 37, NULL, NULL),
(77, 22, 35, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(32, 'PHP OOP', 'skills/9fLvj5NS4liVJbgqxGPPrYMRBhVLa07OsXpi3R1V.png', '2024-08-08 19:14:27', '2024-08-08 19:14:27'),
(33, 'ReactJS', 'skills/rr6AxaFfcoYyhfFDhPt6hlRp9FMcwwaKBX2c1D94.png', '2024-08-08 19:14:56', '2024-08-08 19:14:56'),
(34, 'GraphQL', 'skills/KLhCsUqm1BS29q6Eay9No4lRzwEeUvYjNIzr1ix7.png', '2024-08-08 19:15:41', '2024-08-08 19:15:41'),
(35, 'Cascading Style Sheets', 'skills/YK4jTR0h8oGmkoysMySeMGjk1rDDhNXLfISyLD5N.png', '2024-08-08 19:16:43', '2024-08-08 19:16:43'),
(36, 'REST API', 'skills/TSmCqvElN5OywwpSEsQkfkAa09mpCzQyW8Phmkr8.png', '2024-08-08 19:23:48', '2024-08-08 19:23:48'),
(37, 'JavaScript', 'skills/SAeT7v7DGJGTDdYqBpXuQ61CcO1akqylz2gzM1oB.png', '2024-08-08 19:26:18', '2024-08-08 19:26:18'),
(38, 'MySQL', 'skills/CloGGRUiKWtaB9s0DhdS7tYeFiJW0s19HVVScyt7.png', '2024-08-08 19:28:38', '2024-08-08 19:28:38'),
(39, 'HTML5', 'skills/JDledyZ7kvRkJC7zvCnG8Wvn8X6L9Vs7Ieth03EY.png', '2024-08-08 19:29:21', '2024-08-08 19:29:21'),
(40, 'Laravel', 'skills/JqADz1dZZQpkLGnIRx1tRgixRZxYnTSHbgNyWG8U.png', '2024-08-08 19:31:50', '2024-08-08 19:31:50'),
(41, '.NET', 'skills/YwoyCtqwCnDfidb8vt1iHy88jTtkeIBIOicQJw5Y.png', '2024-08-08 20:29:30', '2024-08-08 20:29:30'),
(42, 'VueJS', 'skills/vhB0vi2sZsWdTthmpAa1Yq1MXko6ZXxTXiYZr9kP.png', '2024-08-08 20:32:02', '2024-08-08 20:32:02'),
(43, 'NestJS', 'skills/ppjW2cOfxdLzSrf8l1Iv1y5wcMfXnsPR2SgPbqKx.png', '2024-08-08 20:32:11', '2024-08-08 20:32:11'),
(44, 'Go Lang', 'skills/55ySenwrPOMXPeHCYwDE00bfqjeEA11LbDmJbeQ9.png', '2024-08-08 20:32:39', '2024-08-08 20:32:39'),
(45, 'Visual Basic .NET', 'skills/5pZHwTUhEchOyp4kAmEaflCW48njh1eNlgcDkGgw.png', '2024-08-08 20:32:59', '2024-08-08 20:32:59'),
(46, 'Docker', 'skills/F562Czx5gDE2IngMBFgEmrjl2c5M286Kr9mvNLtB.png', '2024-08-08 20:33:20', '2024-08-08 20:33:20'),
(47, 'Git', 'skills/ki9Oo9sPp2nddvGkUImMmXqGXWc52c83jbF3XSjs.png', '2024-08-08 20:33:48', '2024-08-08 20:33:48'),
(48, 'PostgresSQL', 'skills/N4dQCeaZRxtLhVvTmLczMTjfcXHHL8DsguCcfnIg.png', '2024-08-08 20:34:29', '2024-08-08 20:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'admin', 'terzotarik@gmail.com', NULL, 'admin', NULL, NULL, NULL, 0),
(2, 'admin', 'admin@admin.com', NULL, '$2y$10$Z2Uvav8OW/ogovvi0zsU1eWYhgdJCSFdM2cctsfxwdAC9nkWVcGHi', NULL, '2024-08-05 13:24:55', '2024-08-05 13:24:55', 1),
(3, 'adminnn', 'adminn@adminn.com', NULL, '$2y$10$pEsTWNFLI8qp5IYxS9E44uPOQMDX1HW6GFW0clrXNU581Hg9c6x5C', NULL, '2024-08-07 21:34:31', '2024-08-07 21:34:31', 0),
(4, 'adddda', 'add@gmail.com', NULL, '$2y$10$3oJvwTmrJq1YoTR/mGw0OujLyHCsINOdHgUqydugiZrGOMMxHrrru', NULL, '2024-08-07 21:35:19', '2024-08-07 21:35:19', 0),
(5, 'tarikterzoadmin', 'adadad@gmail.com', NULL, '$2y$10$a4U7N.zoMCyPNz6MO3c9x.iINQ.B1.WIo953zs.J7tuhZhkWYciCa', NULL, '2024-08-07 21:36:58', '2024-08-07 21:36:58', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_skill_id_foreign` (`skill_id`);

--
-- Indexes for table `project_skill`
--
ALTER TABLE `project_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_skill_project_id_foreign` (`project_id`),
  ADD KEY `project_skill_skill_id_foreign` (`skill_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `project_skill`
--
ALTER TABLE `project_skill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_skill`
--
ALTER TABLE `project_skill`
  ADD CONSTRAINT `project_skill_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_skill_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
