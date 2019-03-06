-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2019 at 10:06 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baru`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_category`, `created_at`, `updated_at`) VALUES
(1, 'sint', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(2, 'et', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(3, 'voluptatum', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(4, 'ex', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(5, 'et', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(6, 'velit', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(7, 'nulla', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(8, 'repellendus', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(9, 'corrupti', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(10, 'commodi', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(11, 'corrupti', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(12, 'omnis', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(13, 'voluptatum', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(14, 'fuga', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(15, 'omnis', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(16, 'est', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(17, 'dignissimos', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(18, 'consequatur', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(19, 'et', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(20, 'est', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(21, 'omnis', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(22, 'et', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(23, 'corrupti', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(24, 'occaecati', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(25, 'et', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(26, 'ut', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(27, 'quia', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(28, 'ut', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(29, 'et', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(30, 'modi', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(31, 'voluptates', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(32, 'tenetur', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(33, 'omnis', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(34, 'vel', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(35, 'quos', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(37, 'eos', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(38, 'eius', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(39, 'officiis', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(40, 'perspiciatis', '2019-02-04 06:42:35', '2019-02-04 06:42:35'),
(41, 'nama', '2019-02-13 10:44:58', '2019-02-13 10:44:58'),
(42, 'edit', '2019-02-13 10:49:04', '2019-02-20 08:47:13'),
(44, 'oke testing', '2019-02-14 06:04:20', '2019-02-14 06:04:20'),
(47, 'unutk di edit ok ok nah ini saya edi lagi', '2019-02-14 08:39:51', '2019-02-14 08:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_04_130717_create_categories_table', 1),
(4, '2019_02_04_134336_tikets_table', 2),
(5, '2019_02_06_151014_create_transaksis_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tikets`
--

CREATE TABLE `tikets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_tiket` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_tiket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_tiket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tikets`
--

INSERT INTO `tikets` (`id`, `name_tiket`, `harga_tiket`, `jumlah_tiket`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Nesciunt vel fuga ut ea.', '57', '4', 27, '2019-02-04 06:52:06', '2019-02-04 06:52:06'),
(3, 'Occaecati delectus non odio debitis.', '26', '5', 1, '2019-02-04 06:52:06', '2019-02-04 06:52:06'),
(4, 'Minus occaecati ad magnam sed.', '70', '7', 7, '2019-02-04 06:52:06', '2019-02-04 06:52:06'),
(5, 'Quis qui quo ipsam nemo esse expedita quaerat sint.', '30', '7', 32, '2019-02-04 06:52:06', '2019-02-04 06:52:06'),
(6, 'Sint aliquam molestias rerum.', '30', '9', 34, '2019-02-04 06:52:06', '2019-02-04 06:52:06'),
(9, 'Sequi qui alias omnis minima eius cupiditate ducimus.', '88', '2', 37, '2019-02-04 06:52:06', '2019-02-04 06:52:06'),
(10, 'Minus beatae ut est repellendus beatae.', '45', '1', 2, '2019-02-04 06:52:06', '2019-02-04 06:52:06'),
(12, 'Nam quod tempore sit ut earum atque.', '39', '1', 30, '2019-02-04 06:52:06', '2019-02-04 06:52:06'),
(14, 'Est deserunt sint quia voluptatem voluptas illum repudiandae.', '14', '5', 6, '2019-02-04 06:52:06', '2019-02-04 06:52:06'),
(16, 'Maiores sit sed omnis deserunt culpa.', '11', '10', 39, '2019-02-04 06:52:06', '2019-02-04 06:52:06'),
(20, 'Ipsa neque perferendis quia inventore suscipit explicabo.', '70', '5', 24, '2019-02-04 06:52:07', '2019-02-04 06:52:07'),
(22, 'okebanget', '90', '20', 9, '2019-02-19 07:20:35', '2019-02-19 07:20:35'),
(23, 'namatiket', '300', '2', 42, '2019-02-19 07:28:37', '2019-02-19 07:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_tiket` int(10) UNSIGNED NOT NULL,
  `qty` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `id_tiket`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(3, 10, '2', 1, '2019-02-06 08:21:49', '2019-02-27 07:52:44'),
(4, 5, '9', 1, '2019-02-06 08:21:49', '2019-02-27 07:52:44'),
(5, 16, '3', 1, '2019-02-06 08:21:49', '2019-02-27 07:52:44'),
(8, 9, '10', 1, '2019-02-06 08:21:49', '2019-02-27 07:52:44'),
(10, 2, '2', 1, '2019-02-06 08:21:49', '2019-02-27 07:52:44'),
(12, 20, '3', 1, '2019-02-06 08:21:49', '2019-02-27 07:52:44'),
(14, 4, '5', 1, '2019-02-06 08:21:49', '2019-02-27 07:52:44'),
(17, 10, '3', 1, '2019-02-06 08:21:49', '2019-02-27 07:52:44'),
(19, 14, '10', 1, '2019-02-06 08:21:49', '2019-02-27 07:52:44'),
(25, 9, '1', 1, '2019-02-27 07:48:18', '2019-02-27 07:52:44'),
(26, 20, '2', 1, '2019-02-27 07:52:39', '2019-02-27 07:52:44'),
(39, 2, '4', 1, '2019-02-27 21:48:55', '2019-02-27 21:49:38'),
(40, 2, '4', 1, '2019-02-27 21:49:10', '2019-02-27 21:49:38'),
(41, 2, '4', 1, '2019-02-27 21:49:14', '2019-02-27 21:49:38'),
(44, 4, '9', 1, '2019-03-02 08:45:06', '2019-03-02 08:45:09'),
(46, 2, '2', 0, '2019-03-06 02:05:33', '2019-03-06 02:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alta Jaskolski', 'elmo.grimes@example.org', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7he1JbNQPo', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(2, 'Prof. Keeley Herman II', 'batz.logan@example.net', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'eXxY8OV5GK', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(3, 'Moshe Powlowski', 'edmond.goldner@example.net', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1KCByuN5aMSSVv7kNRkCT3saVR7CFwG4XLghsWHYd1c8Mn8qaBb6vWXUA84m', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(4, 'Everett McGlynn IV', 'kory.bartoletti@example.com', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JJkBDH6F8Q', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(5, 'Stella Gislason', 'sharon.emard@example.org', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ScJytShT29', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(6, 'Prof. Johnpaul Bartoletti', 'franco03@example.com', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HpWJIEJ6rhqulfbOXD8aJLoP6ohYfqojLjyaJgX7JGTyWxwe1AvJWbS0XgPc', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(7, 'Miss Megane Rempel I', 'russel.wyman@example.net', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wc9vJOpyDp', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(8, 'Mrs. Heloise Grady', 'ortiz.clovis@example.net', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'iYMnlt28Sh', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(9, 'Ollie Rosenbaum IV', 'riley.crona@example.net', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '00pnDIf0yv', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(10, 'Prof. Joel Mraz IV', 'leonardo.white@example.com', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1QRHOnCLks', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(11, 'Prof. Favian Anderson Sr.', 'xwaters@example.org', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ml67BqFb9i', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(12, 'Brad Jones', 'gmosciski@example.org', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '07d4sBMcwZ', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(13, 'Adela Denesik', 'anahi.ryan@example.com', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gMm1RU9W1y', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(14, 'Alfonzo Farrell', 'macey.botsford@example.com', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6ErxKAAoc8', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(15, 'Estelle Leannon', 'juliana.willms@example.org', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UHVKlb0xVo', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(16, 'Georgiana Marvin', 'cboehm@example.org', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fqnWhqJNaA', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(17, 'Dr. Sharon Wintheiser', 'christina72@example.com', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rCc6eY9Z4D', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(18, 'Jaleel Collins', 'buddy.green@example.com', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qxJL2EDrPB', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(19, 'Sophie Emmerich', 'hartmann.jayda@example.com', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LVn5dzk9bY', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(20, 'Marietta Mueller', 'idooley@example.org', '2019-02-04 06:42:34', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QmppU2qMst', '2019-02-04 06:42:34', '2019-02-04 06:42:34'),
(21, 'andihoerudin', 'andi@mail.com', NULL, '$2y$10$azWLpvNww0cZoUCXyEm2cO0p6ykmq7MgMH8YSdHWT.2k4TNcoclh2', 'QFdOCMkHZTsejuWXJ0vuKIo3jphfdunwzTMMWYHR6MIj1EKzdtgZnV5B7YHk', '2019-02-06 08:50:01', '2019-02-06 08:50:01'),
(22, 'andihoerudin', 'andihoerudin24@gmail.com', NULL, '$2y$10$Fo4dfQQlzaj2cebxE2Fl8.wEpmAqaIUz8QbU/bcD6Qa7wwge//Oxq', '7Pv38Jtjs7MmoKjWUXawLGJD0KixJbA67hKAs2ktNSywj80Pd60FolDrB7Va', '2019-02-13 09:09:50', '2019-02-13 09:09:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `tikets`
--
ALTER TABLE `tikets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tikets_category_id_foreign` (`category_id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksis_id_tiket_foreign` (`id_tiket`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tikets`
--
ALTER TABLE `tikets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tikets`
--
ALTER TABLE `tikets`
  ADD CONSTRAINT `tikets_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_id_tiket_foreign` FOREIGN KEY (`id_tiket`) REFERENCES `tikets` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
