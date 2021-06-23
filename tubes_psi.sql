-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 09:29 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_psi`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemiliks_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `nama`, `alamat`, `telephone`, `pemiliks_id`) VALUES
(1, 'ea', '847 Flossie Walk\nRoseshire, LA 72434-2338', '+1.214.590.9151', 5),
(2, 'voluptas', '343 Schulist Court Apt. 346\nPort Bonnieville, MT 98495', '(262) 252-8875', 4),
(3, 'ut', '7477 Rempel Way\nPort Rafaelton, MS 90144-7342', '+1.781.393.9261', 2),
(4, 'quo', '797 Dietrich Plaza\nWest Jovany, DE 87957', '+1-872-234-2149', 4),
(5, 'enim', '75323 Zieme Rapids Suite 193\nWest Mariano, PA 70972-0136', '(586) 791-2604', 4);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `destinations_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `nama`, `jumlah`, `destinations_id`) VALUES
(1, 'autem', 1, 4),
(2, 'alias', 1, 5),
(3, 'molestias', 3, 2),
(4, 'est', 3, 3),
(5, 'reprehenderit', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_06_21_130427_create_destinations_table', 1),
(4, '2021_06_21_130441_create_facilities_table', 1),
(5, '2021_06_21_130515_create_visitors_table', 1),
(6, '2021_06_21_130557_create_transactions_table', 1),
(7, '2021_06_21_135530_create_pemiliks', 1),
(8, '2021_06_23_043508_add_column_to_facilities_table', 1),
(9, '2021_06_23_043635_add_column_to_transactions_table', 1),
(10, '2021_06_23_044418_add_column_to_destinations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemiliks`
--

CREATE TABLE `pemiliks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemiliks`
--

INSERT INTO `pemiliks` (`id`, `nama`, `alamat`, `email`, `username`, `password`) VALUES
(1, 'Prof. Paris Connelly', '81472 Brionna Streets\nParisianfort, TN 94701', 'darion.barrows@ondricka.com', 'margarett91', '$2y$10$zrMnqbCIrMygrorDfFNJsOjUJZsKywOO26ZZ7nbKlp18157UbL5X.'),
(2, 'Isidro Kilback Sr.', '78556 Jaclyn Mountains Suite 814\nAltenwerthshire, NM 45007', 'godfrey.watsica@gmail.com', 'dpurdy', '$2y$10$mfkbMv17ZUCxWGrrfev/DeMUbeUSQPylc9b2X.7IAA/.iAJ4DC5Ui'),
(3, 'Nona Pollich', '2450 Renner Curve\nFeeneytown, MA 69552-8139', 'jedediah.jakubowski@yahoo.com', 'micah.mosciski', '$2y$10$Y8bGcmEBu9jqRUpsW5Fm5.bsMrHez7casaKdJyBYkRCzoL91GpcoO'),
(4, 'Kylie Vandervort III', '296 Jacobson Dam Suite 828\nSouth Kiarra, IN 67747-7578', 'dwight.stoltenberg@king.com', 'pbailey', '$2y$10$29AlZcNoQG81F0OcDLsBaOTf6eFZA5tDBrZKCOEnORJgqfasqbpy6'),
(5, 'Prof. Saul Schimmel MD', '512 Buckridge Ferry Suite 501\nBoscoborough, MN 58548', 'welch.leora@lindgren.org', 'collier.kiara', '$2y$10$.Zu3Mn6jggDRwX.zqtZoGuX75iCEJYs6.2j5MIi.cYZ/8eNTfnbO2');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profits` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `facilities_id` bigint(20) UNSIGNED NOT NULL,
  `visitors_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `profits`, `tanggal`, `facilities_id`, `visitors_id`) VALUES
(1, 91391, '1995-04-12', 4, 3),
(2, 88640, '2020-06-03', 1, 4),
(3, 70388, '2003-06-19', 3, 2),
(4, 73015, '2014-01-20', 1, 2),
(5, 98030, '2006-04-26', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `nama`, `alamat`, `usia`) VALUES
(1, 'Elenora Spinka III', '70275 Terry Ports Apt. 683\nNorth Coltstad, MA 67197-7012', 1),
(2, 'Tillman VonRueden', '61164 Gilda Corners\nWest Brionna, HI 34871-5077', 12),
(3, 'Adolf Larkin', '97636 Cassandre Club\nNew Enrico, FL 34135', 21),
(4, 'Mrs. Una Wiegand PhD', '519 Alexandria Walk Apt. 017\nEast Marlin, OR 09800-3726', 20),
(5, 'Etha Denesik', '3859 Lonny Spring\nEast Arely, DE 49942', 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destinations_pemiliks_id_foreign` (`pemiliks_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facilities_destinations_id_foreign` (`destinations_id`);

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
-- Indexes for table `pemiliks`
--
ALTER TABLE `pemiliks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_facilities_id_foreign` (`facilities_id`),
  ADD KEY `transactions_visitors_id_foreign` (`visitors_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pemiliks`
--
ALTER TABLE `pemiliks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `destinations_pemiliks_id_foreign` FOREIGN KEY (`pemiliks_id`) REFERENCES `pemiliks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `facilities`
--
ALTER TABLE `facilities`
  ADD CONSTRAINT `facilities_destinations_id_foreign` FOREIGN KEY (`destinations_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_facilities_id_foreign` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_visitors_id_foreign` FOREIGN KEY (`visitors_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
