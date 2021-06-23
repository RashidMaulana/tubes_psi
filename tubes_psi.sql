-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 09:44 AM
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
(5, 'enim', '75323 Zieme Rapids Suite 193\nWest Mariano, PA 70972-0136', '(586) 791-2604', 4),
(6, 'vel', '863 Jazmyn View\nDeannaton, VT 85235-3625', '1-857-200-6153', 9),
(7, 'nesciunt', '9248 Vandervort Mill\nKrisfort, TN 74194', '+1 (706) 386-6282', 8),
(8, 'rerum', '79684 Darryl Garden\nWolfhaven, IA 38165', '+1-385-722-6201', 5),
(9, 'at', '67441 Terry Track Suite 580\nElmerbury, ID 99376', '765-795-1434', 8),
(10, 'eveniet', '2151 Lillian Trail\nKylastad, IA 50311', '1-248-846-6432', 1),
(11, 'et', '6709 Darian Parkway Apt. 640\nJayceeport, AL 37697', '+1.680.832.4706', 15),
(12, 'autem', '73457 Hamill Prairie Suite 473\nSouth Tellyville, MT 74989-1781', '+1-208-544-6229', 13),
(13, 'id', '680 D\'angelo Overpass Apt. 363\nJakubowskiside, UT 15647-7511', '+1 (253) 369-5760', 11),
(14, 'dolore', '589 Cale Throughway\nNorth Jarod, IN 85358-6736', '+1-502-305-8237', 4),
(15, 'est', '145 Towne Course\nHertaburgh, MI 34540-2846', '1-754-780-1253', 11),
(16, 'aut', '56842 Greenholt Plains Apt. 123\nBrakusland, MN 55114', '954.603.4655', 10),
(17, 'rem', '315 Oran Shoal\nBodeport, NH 48921', '+1.352.423.7119', 11),
(18, 'accusantium', '5105 Stokes Cove\nWest Waylonshire, MI 32181', '(916) 647-8087', 11),
(19, 'eaque', '6612 Schinner Mews Apt. 182\nMacieview, DC 29957', '+1 (251) 967-5288', 6),
(20, 'ut', '8857 Hahn View\nSouth Stevieborough, MI 87246-2546', '979-513-2412', 8);

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
(5, 'reprehenderit', 5, 3),
(6, 'nemo', 3, 8),
(7, 'labore', 7, 2),
(8, 'excepturi', 4, 5),
(9, 'natus', 4, 7),
(10, 'sunt', 5, 2),
(11, 'error', 9, 6),
(12, 'ducimus', 7, 12),
(13, 'quia', 5, 17),
(14, 'dolore', 6, 18),
(15, 'debitis', 9, 8),
(16, 'dolorem', 7, 5),
(17, 'rerum', 10, 16),
(18, 'illum', 10, 6),
(19, 'ratione', 2, 6),
(20, 'quo', 2, 14),
(21, 'optio', 3, 15),
(22, 'aut', 3, 12),
(23, 'vel', 1, 19),
(24, 'quas', 9, 12),
(25, 'eveniet', 4, 20),
(26, 'vitae', 5, 18),
(27, 'dolorum', 10, 2),
(28, 'iste', 10, 4),
(29, 'sed', 8, 1),
(30, 'maiores', 8, 11),
(31, 'quae', 1, 4),
(32, 'et', 4, 11),
(33, 'eveniet', 8, 7),
(34, 'accusamus', 6, 5),
(35, 'dicta', 5, 10),
(36, 'esse', 3, 12),
(37, 'eius', 5, 9),
(38, 'quod', 4, 12),
(39, 'veniam', 6, 15),
(40, 'qui', 6, 17),
(41, 'ex', 1, 4),
(42, 'deleniti', 3, 1),
(43, 'dolorem', 2, 1),
(44, 'ut', 5, 7),
(45, 'aut', 8, 16),
(46, 'eos', 2, 8),
(47, 'vel', 3, 7),
(48, 'voluptas', 1, 8),
(49, 'quo', 4, 7),
(50, 'nisi', 2, 16),
(51, 'velit', 1, 20),
(52, 'sit', 6, 8),
(53, 'inventore', 10, 3),
(54, 'asperiores', 9, 19),
(55, 'hic', 10, 14),
(56, 'necessitatibus', 5, 15),
(57, 'officiis', 5, 15),
(58, 'aperiam', 3, 15),
(59, 'eveniet', 9, 14),
(60, 'placeat', 5, 1);

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
(5, 'Prof. Saul Schimmel MD', '512 Buckridge Ferry Suite 501\nBoscoborough, MN 58548', 'welch.leora@lindgren.org', 'collier.kiara', '$2y$10$.Zu3Mn6jggDRwX.zqtZoGuX75iCEJYs6.2j5MIi.cYZ/8eNTfnbO2'),
(6, 'Ross Cronin Sr.', '16933 Champlin Plains\nDanteton, NV 33817', 'price.jovani@romaguera.com', 'lang.asa', '$2y$10$TLpROXnA.1thqnNNuszU4eqgQ1KBaBAZjydU1IGnAqBpsXoM2zE.2'),
(7, 'Mr. Adan Haag DVM', '39198 Angus Lake Apt. 181\nLake Ryderberg, MD 49092', 'trinity25@leuschke.com', 'beth.steuber', '$2y$10$ZmE2RskaxLyC67x7KKXJf.fenuUWzdbdhYEbzQtfcEteQmkLdl8rK'),
(8, 'Efrain Klocko', '62278 Christa Mountain\nNew Jane, MI 13011', 'volkman.kaylin@hotmail.com', 'coleman.hackett', '$2y$10$YAbAc3rdtgpoAtvXiuqp5.W9Yij/YW/HpmWck8xYlPpaHSycakeCK'),
(9, 'Kale Jast I', '35520 Alford Ports\nNew Santahaven, DC 49670-5292', 'lauren.beier@hotmail.com', 'wilton73', '$2y$10$O.UCeds7deYWr0fL..ZtQOhA6PqPpRGAfb4xhij9lYJyaaezpzwRq'),
(10, 'Dessie Glover MD', '62600 Ankunding Viaduct Apt. 304\nAdellton, TN 39158-1228', 'yadira.altenwerth@dooley.org', 'cturner', '$2y$10$RCO8LqrnjpqiuiM4ZNhDjOq5ApHypA9.9ZxOoFyXtDKYShtFV2geq'),
(11, 'Dr. Cody Crona DDS', '49921 Jace Run Apt. 458\nKattieton, KS 83711-3959', 'gillian80@rosenbaum.biz', 'wiza.idell', '$2y$10$0S.zESczbt9XDURDXgIiAeHbHu5mGNKQAy9ro7k9bz.VFq/XI12MS'),
(12, 'Vaughn Schultz', '145 Silas Via Apt. 405\nSouth Genevieve, FL 47934-0793', 'rolando.prosacco@kiehn.com', 'elbert06', '$2y$10$LTE7UPn.5UEj8TwFPRrqN.z2nZIRIs/YbmN.1fhVdMPrv2BzJWkeS'),
(13, 'Kendra Grimes', '74561 Maggio Cliffs\nPort Molly, NC 87977', 'adele49@barrows.info', 'gerlach.ima', '$2y$10$eCWRjbIipmPdjZkW8pDi1uqRf0yPm2jK8afVxAWUtedOc8iyGTlsO'),
(14, 'Annamae Thompson PhD', '549 Kevin Valleys\nCraigburgh, NH 63026-3311', 'fcollier@ratke.com', 'hwiegand', '$2y$10$uEP7wJzPhGqP2z0jpsU.DuNSgTDzga.pVv6hKaxEDfubay7oY8DaG'),
(15, 'Eveline Bergstrom Sr.', '26841 Weissnat Viaduct Apt. 224\nSebastianview, IN 79668-5508', 'ellsworth.kuvalis@medhurst.com', 'cronin.georgianna', '$2y$10$BWQCB63l7QZiW1eUYfTJMOCz420j02qY0m3wxu.X7j5xetvClGYAi');

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
(5, 98030, '2006-04-26', 4, 2),
(6, 63047, '1981-06-27', 4, 6),
(7, 31125, '2002-05-25', 7, 2),
(8, 59959, '2019-03-11', 6, 4),
(9, 56426, '2017-08-05', 5, 7),
(10, 99549, '2003-10-24', 5, 7),
(11, 83286, '1976-12-16', 37, 4),
(12, 40053, '2015-09-23', 10, 6),
(13, 38847, '1999-08-16', 30, 12),
(14, 62492, '1994-08-03', 59, 3),
(15, 31250, '1975-03-08', 16, 6),
(16, 32253, '2011-06-07', 11, 6),
(17, 94049, '2020-07-22', 27, 6),
(18, 56908, '1994-11-15', 38, 7),
(19, 93710, '1990-04-27', 54, 14),
(20, 89114, '1984-04-28', 13, 4),
(21, 11953, '1990-11-13', 48, 13),
(22, 47127, '1975-03-21', 43, 7),
(23, 75226, '2016-06-18', 13, 15),
(24, 40618, '1976-12-03', 28, 6),
(25, 70648, '2010-04-04', 35, 7),
(26, 37679, '2008-12-08', 50, 15),
(27, 47929, '2017-05-12', 5, 1),
(28, 72844, '1990-11-09', 29, 15),
(29, 33009, '1983-10-08', 55, 2),
(30, 55796, '1971-10-21', 30, 11),
(31, 99820, '1981-07-21', 47, 15),
(32, 46520, '1997-01-17', 23, 1),
(33, 39714, '1994-07-04', 6, 1),
(34, 45945, '2004-09-01', 31, 13),
(35, 70293, '1975-08-22', 24, 15),
(36, 16751, '2020-10-09', 38, 4),
(37, 29545, '2019-05-23', 3, 13),
(38, 21287, '2012-11-03', 18, 13),
(39, 75761, '1981-10-25', 32, 6),
(40, 62126, '1992-11-28', 41, 1),
(41, 25416, '1997-05-28', 39, 15),
(42, 67062, '2003-05-08', 44, 15),
(43, 46636, '2020-01-10', 41, 7),
(44, 28105, '2006-09-23', 17, 13),
(45, 11492, '1984-11-13', 33, 15),
(46, 23769, '1999-12-29', 25, 2),
(47, 17978, '1985-05-08', 32, 7),
(48, 45095, '1977-06-04', 41, 13),
(49, 97081, '1971-11-22', 14, 13),
(50, 76843, '1999-03-27', 39, 2),
(51, 72873, '1971-08-11', 13, 1),
(52, 89201, '1985-07-18', 51, 4),
(53, 62406, '1975-02-13', 19, 15),
(54, 54705, '1995-03-01', 4, 2),
(55, 91543, '1980-01-06', 30, 15),
(56, 77717, '2008-05-14', 26, 7),
(57, 67437, '1990-10-06', 2, 10),
(58, 44516, '1981-07-30', 31, 6),
(59, 91882, '1988-11-30', 40, 3),
(60, 93567, '2002-04-05', 51, 1),
(61, 46423, '1973-11-06', 26, 13),
(62, 33101, '1986-04-09', 58, 7),
(63, 16770, '1981-08-05', 54, 4),
(64, 18276, '1975-08-06', 23, 9),
(65, 51142, '2005-10-28', 36, 11),
(66, 66161, '2019-08-28', 50, 8),
(67, 71925, '1990-01-25', 49, 15),
(68, 37318, '1988-04-13', 59, 8),
(69, 69371, '2005-02-25', 43, 14),
(70, 62637, '2004-03-16', 19, 7),
(71, 27028, '2015-12-06', 3, 11),
(72, 76827, '2009-10-07', 47, 12),
(73, 77725, '1988-12-17', 12, 6),
(74, 54932, '1972-09-19', 50, 5),
(75, 22414, '2008-04-24', 17, 15),
(76, 93897, '1981-09-15', 5, 2),
(77, 54178, '2018-09-15', 22, 15),
(78, 49888, '1972-07-28', 47, 2),
(79, 38456, '1999-04-06', 27, 1),
(80, 88476, '1995-05-05', 36, 9),
(81, 22890, '2004-12-24', 24, 2),
(82, 17229, '1975-01-11', 12, 9),
(83, 26504, '2008-03-12', 31, 14),
(84, 14470, '1979-02-04', 13, 4),
(85, 74429, '2017-07-31', 53, 7),
(86, 87172, '2001-09-08', 18, 14),
(87, 16968, '1971-12-21', 55, 13),
(88, 32792, '1972-05-21', 51, 1),
(89, 85676, '2013-10-01', 50, 10),
(90, 42143, '1996-10-21', 54, 10),
(91, 99024, '1991-02-18', 13, 4),
(92, 42989, '1977-12-25', 55, 14),
(93, 88772, '2000-03-18', 35, 8),
(94, 65335, '1995-05-30', 53, 7),
(95, 89791, '1974-08-23', 47, 9),
(96, 97594, '1983-01-05', 23, 13),
(97, 23038, '2015-01-28', 17, 13),
(98, 35426, '1973-07-07', 1, 1),
(99, 29421, '1996-08-15', 29, 6),
(100, 10242, '1993-11-06', 33, 10),
(101, 66678, '1972-09-14', 14, 9),
(102, 16025, '2001-05-06', 55, 1),
(103, 40014, '2017-11-26', 46, 2),
(104, 83191, '1986-02-14', 45, 13),
(105, 62908, '1985-04-19', 20, 9),
(106, 64133, '1971-02-10', 50, 2),
(107, 26540, '2016-11-27', 33, 2),
(108, 16140, '1977-08-23', 2, 9),
(109, 38952, '2010-11-19', 4, 11),
(110, 84017, '1998-07-08', 25, 4);

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
(5, 'Etha Denesik', '3859 Lonny Spring\nEast Arely, DE 49942', 19),
(6, 'Fleta Schaefer', '22624 Alexandria Tunnel Suite 937\nJeremieport, NE 87125-3443', 28),
(7, 'Meggie Bogan III', '87040 Boehm Court Apt. 853\nWest Mckayla, WY 49336', 3),
(8, 'Melba Lindgren', '443 Ambrose Mountains\nAufderharmouth, MI 71498-8703', 44),
(9, 'Jaden Jerde', '7816 Terrill Fall\nLangton, MT 23689-4836', 13),
(10, 'Herta Thiel', '5999 Eldred Row\nMaggioland, WY 43338', 17),
(11, 'Dr. Gayle Ryan Sr.', '99604 Brenden Pike\nNorth Francescohaven, MS 99557', 13),
(12, 'Ms. Kimberly Ullrich', '173 Garth Ramp\nNew Layla, CO 64030-6081', 12),
(13, 'Dr. Miller Sanford MD', '6411 Evangeline Inlet\nNew Cordiamouth, LA 57661', 22),
(14, 'Evelyn Sporer', '363 Branson Haven\nColleenmouth, OH 28162-6535', 30),
(15, 'Kameron Welch', '7980 Olson Lakes Suite 284\nArdithstad, MA 56406', 5);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
