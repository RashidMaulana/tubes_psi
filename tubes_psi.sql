-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 05:33 AM
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
  `facilities` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `nama`, `alamat`, `telephone`, `facilities`) VALUES
(1, 'brand', '89794 Metz Crest\nSouth Alexchester, MD 92607', '1-620-682-3739', 11),
(2, 'brand', '3000 Grant Summit\nSouth Vita, NM 22639-2012', '+1-810-428-4578', 12),
(3, 'brand', '2927 Nya Track\nNorth Maybellbury, VT 51675', '+1.515.583.0030', 13),
(4, 'brand', '2980 Ollie Crossing\nNew Garretland, OR 07983-5945', '715.386.4944', 14),
(5, 'brand', '6406 Torrance Flats Apt. 209\nEast Leta, WI 86681', '1-540-817-6451', 15),
(6, 'brand', '418 Lesch Fields Suite 068\nGildamouth, CA 46873-2472', '+18056802934', 16),
(7, 'brand', '69290 Hyatt Ridges\nUllrichbury, KS 12095-7889', '+1-478-764-6099', 17),
(8, 'brand', '9974 Muller Cove\nPort Curtis, NJ 81122', '+1 (901) 298-4657', 18),
(9, 'brand', '1667 Reyes Mill\nWalshburgh, MI 39495-8308', '360.354.7281', 19),
(10, 'brand', '75336 Tiffany Pines\nWehnerview, NJ 22201', '+12702968375', 20),
(11, 'brand', '949 Andreane Road\nNorth Nikko, WY 31763-5243', '+1-517-281-1263', 21),
(12, 'brand', '894 Lonie Track Apt. 406\nNew Oceane, CO 27717', '+1.727.346.3821', 22),
(13, 'brand', '3586 Strosin Prairie\nWest Aiden, MN 88844', '+1.561.469.9769', 23),
(14, 'brand', '997 Douglas Tunnel Suite 418\nOsborneland, IA 86236-5859', '+13094563682', 24),
(15, 'brand', '76036 Corkery Views\nNew Mattieberg, OR 85030', '+1-341-242-4437', 25),
(16, 'brand', '84662 Lyda Estates Apt. 175\nWest Alana, PA 52719', '+1.951.468.5017', 26),
(17, 'brand', '35774 Marcelo Burg\nSchimmelland, ME 21752', '+1.631.382.3654', 27),
(18, 'brand', '481 Botsford Expressway Suite 667\nNew Jevonton, AL 80337', '(919) 648-0129', 28),
(19, 'brand', '4066 Hayes Roads Apt. 981\nEastonville, TN 17396-5349', '+1-539-572-2293', 29),
(20, 'brand', '33180 Flatley Branch\nWest Robinville, DC 43268', '754-762-7269', 30),
(21, 'brand', '465 Jonatan Alley Apt. 533\nEast Tad, CO 50043-7841', '1-857-665-2297', 41),
(22, 'brand', '23788 Vivien Corner\nSouth Robb, WV 43350', '+1-925-226-9608', 42),
(23, 'brand', '843 Heathcote Village\nWest Jackiestad, NC 77110-3764', '973.880.7958', 43),
(24, 'brand', '14195 Kub Wall\nGracieshire, NM 68653-5232', '423-307-3256', 44),
(25, 'brand', '664 Sonia Valleys Apt. 239\nTreutelborough, ND 39753-0602', '+1-585-510-7138', 45),
(26, 'brand', '337 Lebsack Flat Suite 728\nNorth Dorthy, SC 78189', '+1 (520) 584-7626', 46),
(27, 'brand', '70252 Hamill Groves Suite 582\nLake Violachester, NM 78959', '256-970-5932', 47),
(28, 'brand', '1850 Kuphal Mountains Apt. 543\nHeathcoteborough, VA 05739-5308', '480.320.1878', 48),
(29, 'brand', '89921 Stanley Viaduct\nSouth Nigelland, AK 96581-2971', '+1 (737) 744-6861', 49),
(30, 'brand', '7030 Felton Rue Apt. 165\nLake Jonathonside, MD 77417', '+12078285285', 50),
(31, 'brand', '2469 Kub Stravenue\nNorth Nakia, GA 33974', '+1-941-320-9814', 51),
(32, 'brand', '136 Madie Ridges\nBransonview, MN 83085-6465', '425.457.3655', 52),
(33, 'brand', '107 Auer Field\nSouth Kian, ME 82262', '+1-707-641-8248', 53),
(34, 'brand', '890 Weimann Fall Suite 653\nSouth Vladimirmouth, DE 27478', '(325) 290-7327', 54),
(35, 'brand', '377 Sonny Mall Suite 805\nSouth Destineyfurt, IL 69837', '520.710.2264', 55),
(36, 'brand', '9759 Jed Ridge Apt. 121\nLoweland, MN 93041', '689.779.5499', 56),
(37, 'brand', '9055 Marlen Courts Apt. 024\nLake Samantha, IN 89490', '1-321-279-6974', 57),
(38, 'brand', '15691 Golda Estate\nHirthebury, IN 86745-0811', '+1 (423) 617-7316', 58),
(39, 'brand', '94582 Schamberger Trail Apt. 983\nCorwintown, WY 55826', '850.435.0953', 59),
(40, 'brand', '3191 Clarissa Rue Apt. 812\nNorth Lew, CO 13835', '1-480-993-7775', 60),
(41, 'brand', '66835 Krajcik Orchard\nCloydshire, NV 95079-4257', '+1.574.408.8470', 61),
(42, 'brand', '673 Marks Way\nNormamouth, OK 59056-6044', '1-607-919-8105', 62),
(43, 'brand', '671 Mckayla Forest Suite 885\nNorth Berneice, MI 83364-1477', '(734) 273-0911', 63),
(44, 'brand', '737 Stephon Bridge\nSouth Neilstad, KS 53334-2689', '+1-240-898-7335', 64),
(45, 'brand', '584 Stark Grove Apt. 067\nPort Landenfort, WY 29975', '1-747-470-6751', 65),
(46, 'brand', '257 Ramiro Ways\nEast Keely, SD 64695', '1-475-991-2270', 66),
(47, 'brand', '902 Janet Estate Suite 648\nHayesshire, AK 71696', '1-678-708-9537', 67),
(48, 'brand', '49954 Travon Junctions\nNew Tamara, HI 11463', '928.995.7082', 68),
(49, 'brand', '1298 Cartwright Loop\nMcLaughlinbury, DE 91863-6764', '281.333.8311', 69),
(50, 'brand', '49007 Brooks Cliff Apt. 804\nSamirland, IL 84692', '908.752.3038', 70);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `nama`, `jumlah`) VALUES
(1, 'Wahana 1', 4),
(2, 'Wahana 1', 8),
(3, 'Wahana 1', 8),
(4, 'Wahana 1', 2),
(5, 'Wahana 1', 6),
(6, 'Wahana 1', 9),
(7, 'Wahana 1', 7),
(8, 'Wahana 1', 8),
(9, 'Wahana 1', 7),
(10, 'Wahana 1', 8),
(11, 'Wahana 1', 4),
(12, 'Wahana 1', 9),
(13, 'Wahana 1', 1),
(14, 'Wahana 1', 5),
(15, 'Wahana 1', 10),
(16, 'Wahana 1', 8),
(17, 'Wahana 1', 6),
(18, 'Wahana 1', 7),
(19, 'Wahana 1', 4),
(20, 'Wahana 1', 1),
(21, 'Wahana 1', 5),
(22, 'Wahana 1', 6),
(23, 'Wahana 1', 4),
(24, 'Wahana 1', 5),
(25, 'Wahana 1', 5),
(26, 'Wahana 1', 4),
(27, 'Wahana 1', 10),
(28, 'Wahana 1', 3),
(29, 'Wahana 1', 7),
(30, 'Wahana 1', 10),
(31, 'Wahana 1', 8),
(32, 'Wahana 1', 9),
(33, 'Wahana 1', 3),
(34, 'Wahana 1', 6),
(35, 'Wahana 1', 5),
(36, 'Wahana 1', 7),
(37, 'Wahana 1', 6),
(38, 'Wahana 1', 2),
(39, 'Wahana 1', 2),
(40, 'Wahana 1', 7),
(41, 'Wahana 1', 6),
(42, 'Wahana 1', 5),
(43, 'Wahana 1', 1),
(44, 'Wahana 1', 4),
(45, 'Wahana 1', 9),
(46, 'Wahana 1', 8),
(47, 'Wahana 1', 1),
(48, 'Wahana 1', 6),
(49, 'Wahana 1', 7),
(50, 'Wahana 1', 4),
(51, 'Wahana 1', 2),
(52, 'Wahana 1', 5),
(53, 'Wahana 1', 7),
(54, 'Wahana 1', 7),
(55, 'Wahana 1', 10),
(56, 'Wahana 1', 1),
(57, 'Wahana 1', 3),
(58, 'Wahana 1', 4),
(59, 'Wahana 1', 4),
(60, 'Wahana 1', 10),
(61, 'Wahana 1', 10),
(62, 'Wahana 1', 1),
(63, 'Wahana 1', 10),
(64, 'Wahana 1', 2),
(65, 'Wahana 1', 1),
(66, 'Wahana 1', 7),
(67, 'Wahana 1', 6),
(68, 'Wahana 1', 3),
(69, 'Wahana 1', 4),
(70, 'Wahana 1', 4);

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
(7, '2021_06_21_131828_add_column_to_destinations_table', 1),
(8, '2021_06_21_131915_add_column_to_transactions_table', 1),
(9, '2021_06_21_135530_create_pemiliks', 1),
(10, '2021_06_22_000545_add_column_to_pemiliks_table', 1);

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
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destinations` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemiliks`
--

INSERT INTO `pemiliks` (`id`, `nama`, `alamat`, `email`, `username`, `password`, `destinations`) VALUES
(1, 'Dr. Nola Ziemann II', '793 Kutch Pass Apt. 292\nWest Nick, PA 68161', 'raynor.taryn@gmail.com', 'karine.cassin', '$2y$10$fanOjxxDweYvRxhn/k54EutD8N/GqijmPkjmfXIJwnVGL0VRiv7y2', 31),
(2, 'Elta Dicki', '261 Sawayn Shore Suite 261\nWest Maxinehaven, AR 84261-6294', 'zora76@thiel.biz', 'erik49', '$2y$10$/7SdAk/eGik6F0MvQsHxquKU6Jr0AhkYLoXzUDU5Xz/bta0p9OLdu', 32),
(3, 'Sterling Marks', '631 Rey Gardens Apt. 333\nEast Amirashire, NJ 55166', 'adella.bergstrom@yahoo.com', 'meda.oberbrunner', '$2y$10$cehX16NS0KJ4QnunOAQ9yuzaCA0S9miImMq6zVhG9xAzG3ZIJS8yO', 33),
(4, 'Mariela Pouros', '20225 Leonor Corners Suite 260\nNorth Federicochester, VT 97596', 'timmy.schneider@friesen.net', 'jessyca11', '$2y$10$HmDYCZspyJNxiFUOPT8uPOroDqtvqCSPvFNb/kvInmwo.LOdox1f6', 34),
(5, 'Terrence Bauch', '53595 Spinka Land\nHyattview, RI 23917', 'irma.crist@hotmail.com', 'claudia.quitzon', '$2y$10$pn/Y3M3ENUTpGoJDjISLneGFiww1rwx04zPDyKblqqm8RJRBy/pMi', 35),
(6, 'Vena Buckridge', '81173 Grimes Club Suite 054\nSanfordview, OK 82908-9993', 'monahan.barney@pfeffer.com', 'tyson.keeling', '$2y$10$VD11ra.WfmhCXMzYH2gZxOJldHTqXr4zsQcjFP05egK9E3MW0e4OS', 36),
(7, 'Hazel Schowalter', '77634 Adrien Court\nSouth Juliana, GA 44841-3699', 'wwehner@hegmann.com', 'douglas.isai', '$2y$10$M.RqOUO0naE11hDJthMtG.Wwf7PZurZaFpf95Sm3vzhxnoAOFhuqu', 37),
(8, 'Griffin Turner', '49016 Elisabeth Springs\nWest Cecilside, WY 00397-4425', 'smuller@lebsack.org', 'skohler', '$2y$10$kBwdek.QflP7o79dtF3TCuPJtmgmEdrxE96HO2lZ/z2CwVMcAxL8C', 38),
(9, 'Dr. Trenton Schowalter', '49563 Hegmann Prairie\nWest Kane, CO 08600', 'xavier.beatty@gmail.com', 'mathew.deckow', '$2y$10$um/.6slsYJkVzFhOH0FYUuKZMmOfidL2IWt2MIicmVvOUwnlUupXO', 39),
(10, 'Dr. Jessyca Hudson DVM', '272 Luettgen Stream\nGleichnerstad, OR 44003-6409', 'twillms@reinger.com', 'ward78', '$2y$10$fDLzzSjDypzwgQotmrCOo.rWTbZCJ5urQL3y7vQv5q8RM/AGwNMPu', 40);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profits` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `visitors` bigint(20) UNSIGNED NOT NULL,
  `destinations` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `profits`, `tanggal`, `visitors`, `destinations`) VALUES
(1, 37073, '1999-11-17', 11, 41),
(2, 27120, '1994-09-08', 12, 42),
(3, 42931, '1971-02-05', 13, 43),
(4, 75589, '2009-01-29', 14, 44),
(5, 35733, '1994-11-24', 15, 45),
(6, 66900, '1999-12-19', 16, 46),
(7, 61379, '2002-12-11', 17, 47),
(8, 59909, '1978-10-14', 18, 48),
(9, 18437, '2005-12-24', 19, 49),
(10, 39901, '2008-08-15', 20, 50);

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
(1, 'Barton Rosenbaum', '126 Stephan Drive Apt. 136\nSouth Ervinhaven, MN 38759', 8),
(2, 'Virgie Osinski', '7072 Franecki Pike Apt. 767\nSouth Cayla, NJ 39409-1585', 48),
(3, 'Prof. Jabari Zemlak', '6670 Altenwerth Villages Apt. 541\nSerenatown, MA 68998', 41),
(4, 'Dr. Kenny Hagenes MD', '26731 Filomena Island Apt. 063\nWizaburgh, NC 95177-7471', 13),
(5, 'Gail Morissette', '27774 Wiegand Unions\nWolfland, CT 20625', 31),
(6, 'Daryl Dare', '3199 Enrique Hollow Apt. 686\nKovacekbury, CT 98170-6024', 9),
(7, 'Prof. Leonard Nader', '9078 Sporer Road\nGutkowskihaven, WY 66192', 21),
(8, 'Prince Bernhard MD', '4697 Kuvalis Hollow\nHenryfurt, MS 35847-9319', 22),
(9, 'Mrs. Aryanna Quitzon DVM', '6790 Kautzer Hollow\nLemuelville, CA 14046', 1),
(10, 'Nicola Muller MD', '6185 Murray Canyon\nSouth Wendellview, LA 43540', 33),
(11, 'Shayne Turcotte DVM', '8718 Demarcus Shore\nLake Zoila, VA 61112', 30),
(12, 'Verla Stamm Jr.', '87157 Henry Walks\nNew Mateomouth, VA 49134-2545', 46),
(13, 'Corene Feil PhD', '594 Lehner Port Apt. 451\nCharlesmouth, AR 96840-9985', 42),
(14, 'Shaina Botsford', '124 Hilpert Union Suite 846\nOsbornefurt, VA 82828', 10),
(15, 'Prof. Delphine Rau', '2050 Reinger Fork\nDalebury, IN 09367-1289', 2),
(16, 'Dr. Leatha Botsford Sr.', '520 Libbie Hills Suite 244\nPort Harrymouth, CA 15087-1905', 36),
(17, 'Austin Hammes', '499 Mabel Club\nNew Godfrey, IL 81189-2456', 38),
(18, 'Myrtie Pagac', '8738 Jerrell Cliffs Suite 480\nNew Jevonfort, WY 21922', 3),
(19, 'Mylene Spinka DVM', '306 Ryan Mews\nReichelmouth, WI 38615', 44),
(20, 'Prof. Cara Swaniawski V', '45864 Icie Square\nCummingsstad, WI 86266-6935', 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destinations_facilities_foreign` (`facilities`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `transactions_visitors_foreign` (`visitors`),
  ADD KEY `transactions_destinations_foreign` (`destinations`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `destinations_facilities_foreign` FOREIGN KEY (`facilities`) REFERENCES `facilities` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_destinations_foreign` FOREIGN KEY (`destinations`) REFERENCES `destinations` (`id`),
  ADD CONSTRAINT `transactions_visitors_foreign` FOREIGN KEY (`visitors`) REFERENCES `visitors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
