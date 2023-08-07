-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 10:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surat-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bid. Aplikasi dan Informatika', '2023-05-09 00:11:55', '2023-05-09 00:11:55'),
(2, 'Bid. Informasi dan Komunikasi Publik', '2023-05-09 00:12:18', '2023-05-09 00:12:18'),
(3, 'Bid. Persandian', '2023-05-09 00:12:40', '2023-05-09 00:12:40'),
(4, 'Bid. Statistik', '2023-05-09 00:13:02', '2023-05-09 00:13:02'),
(5, 'Bid. Statistik', '2023-05-09 00:13:05', '2023-05-09 00:13:05'),
(9, 'Sekretariat', '2023-05-23 23:48:59', '2023-05-23 23:48:59');

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
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `letter_no` varchar(255) NOT NULL,
  `letter_date` date NOT NULL,
  `date_received` date NOT NULL,
  `regarding` varchar(255) NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(50) NOT NULL,
  `letter_file` varchar(255) NOT NULL,
  `letter_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `letter_no`, `letter_date`, `date_received`, `regarding`, `department_id`, `sender`, `letter_file`, `letter_type`, `created_at`, `updated_at`) VALUES
(3, '0122', '2023-05-02', '2023-05-03', 'Penting', 1, 'Ryan', 'assets/letter-file/BNBCmnGsrzDQ0VUvPgLdjEOZwsZYx9a86qTta0Nf.pdf', 'Surat Masuk', '2023-05-01 21:20:37', '2023-05-01 21:20:37'),
(4, '890', '2023-05-02', '2023-05-03', 'peminjaman ruang lab', 1, 'smkk', 'assets/letter-file/0lUfVysc7n19wKDyiG1diIsSfuVoLp9KtrNHAdQk.pdf', 'Surat Masuk', '2023-05-01 21:22:19', '2023-05-01 21:22:19'),
(6, '555', '2023-05-05', '2023-05-06', 'Penting', 2, '2', 'assets/letter-file/wWZoyUYpWkZzuFOSaefFAwK1EVsqjELc4Z9Hu0Mg.pdf', 'Surat Keluar', '2023-05-04 19:22:51', '2023-05-04 19:22:51'),
(7, '666', '2023-05-08', '2023-05-09', 'Penting', 1, '2', 'assets/letter-file/pDOcnDwkwYqK7rJzymtT8G7gmP3bxh6qF8SfthAe.pdf', 'Surat Keluar', '2023-05-09 00:09:18', '2023-05-09 00:09:18'),
(8, '999', '2023-05-08', '2023-05-09', 'peminjaman ruang lab', 3, '4', 'assets/letter-file/84bSKMeEGoMXhVIDIBGlIMOOTA086EwQi3bWDfWN.pdf', 'Surat Keluar', '2023-05-09 00:36:31', '2023-05-09 00:36:31'),
(9, '213', '2023-05-09', '2023-05-10', 'Pengarahan System', 3, 'Komunitas Cyber Indonesia', 'assets/letter-file/2mswYZdzNgvaQv6xrUtw2NbD8aR4Nt5KJ5EpFmT4.pdf', 'Surat Masuk', '2023-05-09 14:45:13', '2023-05-09 14:45:13'),
(10, '214', '2023-05-09', '2023-05-10', 'Pemberitahuan', 1, '5', 'assets/letter-file/PYrIVJ6mPutiYjhxsRQVRp6yRR9D3VDe0948cdXf.pdf', 'Surat Keluar', '2023-05-09 14:48:40', '2023-05-09 14:48:40'),
(11, '215', '2023-05-01', '2023-05-09', 'Pemberitahuan', 2, 'Komunitas Cyber Indonesia', 'assets/letter-file/XFVUDveHL4AScZgzx9q3sb5NIukZzZ25qtSt5uoG.pdf', 'Surat Keluar', '2023-05-09 14:50:34', '2023-05-09 14:50:34'),
(12, '234', '2023-05-29', '2023-05-30', 'Rapat Bulanan', 1, 'UPT', 'assets/letter-file/0Nhmgm39l6rOjxtv4tJXfHR2HNHSsErCHHSbyzBc.pdf', 'Surat Masuk', '2023-05-29 00:09:20', '2023-05-29 00:09:20'),
(13, '678', '2023-05-29', '2023-05-30', 'Penting', 1, '1', 'assets/letter-file/yLmFbZNYtNRfyb9wVsnOp1yQ3A750lipT6mf5Add.pdf', 'Surat Keluar', '2023-05-29 00:11:49', '2023-05-29 00:11:49'),
(14, '900/008/404.314/2023', '2023-05-29', '2023-05-30', 'Pemberitahuan', 1, 'Komunitas Cyber Indonesia', 'assets/letter-file/6GSNrhVZl17TmA9FWY633yDbzKcRarwDPnDWcMlC.pdf', 'Surat Masuk', '2023-05-29 00:20:11', '2023-05-29 00:20:11'),
(15, '237', '2023-06-24', '2023-06-25', 'Pengarahan System', 3, 'Komunitas Cyber Indonesia', 'assets/letter-file/4fjFuW6SBtGVQl5RPe32aA9YivB9ub9POccS4pXu.pdf', 'Surat Masuk', '2023-06-25 09:50:16', '2023-06-25 09:50:16');

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
(5, '2022_08_12_043513_create_departments_table', 1),
(6, '2022_08_12_065240_create_senders_table', 1),
(7, '2022_08_12_075748_create_letters_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `senders`
--

CREATE TABLE `senders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `senders`
--

INSERT INTO `senders` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'BIDANG APLIKASI DAN INFORMATIKA', 'Jl. Teuku Umar No.43, Kabupaten Ngawi, Jawa Timur', '0351749050', 'kominfo@ngawikab.go.id', '2023-05-09 00:17:34', '2023-05-09 00:25:00'),
(2, 'BIDANG INFORMATIKA DAN KOMUNIKASI PUBLIK', 'Jl. Teuku Umar No.43, Kabupaten Ngawi, Jawa Timur', '0351749050', 'kominfo@ngawikab.go.id', '2023-05-09 00:18:35', '2023-05-09 00:24:35'),
(3, 'BIDANG PERSANDIAN', 'Jl. Teuku Umar No.43, Kabupaten Ngawi, Jawa Timur', '0351749050', 'kominfo@ngawikab.go.id', '2023-05-09 00:19:12', '2023-05-09 00:24:14'),
(4, 'BIDANG STATISTIK', 'Jl. Teuku Umar No.43, Kabupaten Ngawi, Jawa Timurr', '0351749050', 'kominfo@ngawikab.go.id', '2023-05-09 00:19:43', '2023-05-09 00:23:57'),
(5, 'SEKRETARIAT', 'Jl. Teuku Umar No.43, Kabupaten Ngawi, Jawa Timur', '0351749050', 'kominfo@ngawikab.go.id', '2023-05-09 00:20:06', '2023-05-09 00:23:36');

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
  `profile` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$3jTnIOUA6apTGFMLNonOvOrAETDJZL/SnrrB1YZ/XEq9XN3tMfXj.', 'assets/profile-images/74poU9JOqdiZbzycIJ2xgXV6L4rSssysrbknfjeB.png', NULL, '2023-04-29 01:29:11', '2023-06-14 21:46:32'),
(2, 'Riyan', 'ryan140@gmail.com', NULL, '$2y$10$WmZwpLpMqnhgga8rfmg20ubFhP87hKggKlj8b6Lr1VwTDi8l6E6Fi', NULL, NULL, '2023-04-29 01:36:28', '2023-04-29 01:36:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `senders`
--
ALTER TABLE `senders`
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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `senders`
--
ALTER TABLE `senders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
