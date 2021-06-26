-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2021 at 12:30 PM
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
(1, 'sit', '6250 Margarita Overpass Apt. 116\nToyport, NH 40161', '+1-912-965-2624', 3),
(2, 'nostrum', '145 Shaun Hollow Apt. 837\nSouth Nasir, KY 08837', '+1-689-431-7706', 6),
(3, 'qui', '5355 Strosin Wall Apt. 889\nMurazikton, FL 61100-0064', '1-636-626-2800', 4),
(4, 'excepturi', '61407 Brakus Haven\nSouth Garret, NE 82156-3813', '952-666-4078', 5),
(5, 'qui', '5357 Herman Ports\nWest Hettie, MT 93260', '1-458-887-9341', 4),
(6, 'ullam', '11957 Legros River\nLake Vinceborough, AZ 37298-7214', '1-640-358-4343', 2),
(7, 'ipsum', '243 Kamron Forge\nNew Kayley, NM 54158-2877', '(847) 369-5214', 2),
(8, 'vel', '72396 Dietrich Lakes Apt. 868\nWeimannmouth, KY 02000', '+1 (936) 460-0742', 7),
(9, 'et', '4933 Bashirian Common Apt. 822\nPort Romaineville, OH 58613-8986', '1-909-697-1446', 1),
(10, 'ea', '71621 Moore Plaza\nQuigleyfurt, MN 92620-8041', '1-904-488-6890', 9);

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
(1, 'omnis', 7, 1),
(2, 'dolorem', 2, 2),
(3, 'non', 8, 9),
(4, 'sed', 9, 8),
(5, 'vero', 2, 8),
(6, 'id', 7, 2),
(7, 'aut', 2, 6),
(8, 'explicabo', 1, 10),
(9, 'ut', 8, 7),
(10, 'ex', 9, 2),
(11, 'asperiores', 3, 4),
(12, 'iste', 5, 1),
(13, 'incidunt', 1, 2),
(14, 'quia', 2, 9),
(15, 'consequatur', 1, 5),
(16, 'et', 3, 4),
(17, 'fuga', 5, 9),
(18, 'recusandae', 6, 7),
(19, 'excepturi', 5, 9),
(20, 'sapiente', 9, 4),
(21, 'asperiores', 3, 5),
(22, 'omnis', 9, 3),
(23, 'quas', 9, 10),
(24, 'vel', 1, 8),
(25, 'sequi', 9, 3),
(26, 'quam', 8, 10),
(27, 'animi', 7, 10),
(28, 'suscipit', 4, 1),
(29, 'sed', 1, 8),
(30, 'omnis', 7, 1),
(31, 'rerum', 4, 1),
(32, 'nesciunt', 9, 4),
(33, 'accusantium', 8, 3),
(34, 'quia', 9, 7),
(35, 'dolore', 4, 3),
(36, 'assumenda', 3, 2),
(37, 'vel', 4, 3),
(38, 'facilis', 7, 6),
(39, 'dolorum', 1, 6),
(40, 'doloribus', 4, 10),
(41, 'cupiditate', 4, 8),
(42, 'ipsam', 4, 8),
(43, 'inventore', 3, 1),
(44, 'fugit', 6, 6),
(45, 'repudiandae', 5, 7),
(46, 'id', 4, 4),
(47, 'est', 6, 2),
(48, 'laudantium', 10, 8),
(49, 'itaque', 6, 6),
(50, 'nihil', 8, 4);

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
(1, 'Miss Rosanna White DDS', '590 Howe Cove\nWest Earnestine, OK 41659', 'tomas88@gmail.com', 'anastacio.mcdermott', '$2y$10$cGa.wH/26MJk8ksinxf75Oa5maWoUp5hQ.fvPPbZM6YCJDe0WT0hS'),
(2, 'Crystal Fay', '30840 Conroy Spurs Suite 096\nBelleville, MT 01157-9374', 'leta.little@yahoo.com', 'queen.goyette', '$2y$10$32GhPEi8/qQS0QhhQjDR3OhCWhUSmQZoC/FvkzEP9kRVShmFbCtde'),
(3, 'Rosella Stokes', '81790 Hartmann Prairie\nKayceebury, WY 68993-3738', 'sebastian91@gmail.com', 'khilpert', '$2y$10$HMN1DBzqDHXWDEPwbrHs/.UVN9K9uTsq8YkLE1J3q4uslBSeIYS8.'),
(4, 'Alexandrea Frami', '37029 Kaelyn Mountains Apt. 720\nNorth Annabel, WI 27021-2443', 'ypfeffer@hotmail.com', 'adams.merlin', '$2y$10$wANaQhYsQdePVkFlpW/s0OPmTj4MhlB3//NnEicSVJa5L26zQxoSm'),
(5, 'Markus Keeling', '855 Cortney Oval\nWizafurt, DC 80215-5405', 'shaniya05@gmail.com', 'ewintheiser', '$2y$10$hVjYP47xAcjeW.lgfV2bL.364275LBlwD9fL4ZAZpS.7ypLiunF/a'),
(6, 'Ms. Addie Osinski Sr.', '811 Wintheiser Lane\nEast Sabrinaland, SD 20269-1743', 'reichel.royal@erdman.com', 'akutch', '$2y$10$Op3.6GhDmQ0.qA0hDWkJLu0qWuFOXEkRZO1dE2jurtSFT/uejnqES'),
(7, 'Braulio Ernser', '8987 Cronin Bypass\nEast Arielleberg, MI 44098-2716', 'schmidt.rex@yahoo.com', 'hollis.muller', '$2y$10$JqLXKbz3XJTgy2.uhdc0eOno3wlaE9cAwCQ/oGGHO26a1Tl4kEvGa'),
(8, 'Mrs. Claudie Spinka II', '8395 Welch Port\nRolfsonland, NE 81836', 'gregg68@russel.com', 'jessie.cassin', '$2y$10$t0zy05DKZjx4sTMVMydkX.YStKz/AMLWVF4S6kyCwhyjCnLghdX4e'),
(9, 'Steve Bradtke', '385 Maddison Causeway\nNew Tierrashire, NE 59056', 'bogisich.cooper@gmail.com', 'fcormier', '$2y$10$jP5xJHpQSbJ4l2S5J9x8rOflE6Pu2g64zwUxol7nzvh5vEngWd5QS'),
(10, 'Valentine Lemke', '90310 Roob Ridges Apt. 218\nPort Devyn, IN 13649-5668', 'kertzmann.verona@yahoo.com', 'rene.kulas', '$2y$10$kf1LxIbRMbBtsF8K53jEjuqQ0EAoZ5RyO7lrYec/cJ4.qf.nclvDC');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profits` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `facilities_id` bigint(20) UNSIGNED NOT NULL,
  `visitors_id` bigint(20) UNSIGNED NOT NULL,
  `bulan` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `profits`, `tanggal`, `facilities_id`, `visitors_id`, `bulan`) VALUES
(2, 57429, '2021-03-23', 9, 7, 'March'),
(3, 55829, '2021-02-20', 1, 37, 'February'),
(4, 46935, '2021-02-28', 10, 43, 'February'),
(5, 40697, '2021-05-19', 22, 13, 'May'),
(6, 17976, '2021-01-06', 17, 23, 'January'),
(7, 48108, '2021-06-21', 40, 37, 'June'),
(8, 70214, '2021-04-04', 38, 33, 'April'),
(9, 67444, '2021-04-03', 50, 18, 'April'),
(10, 72460, '2021-04-12', 31, 30, 'April'),
(11, 98908, '2021-01-31', 21, 25, 'January'),
(12, 71528, '2021-04-11', 13, 33, 'April'),
(13, 45191, '2021-05-27', 34, 43, 'May'),
(14, 96067, '2021-05-01', 10, 20, 'May'),
(15, 74512, '2021-02-26', 24, 8, 'February'),
(16, 97512, '2021-05-15', 9, 8, 'May'),
(17, 23899, '2021-01-22', 24, 46, 'January'),
(18, 11362, '2021-03-22', 38, 27, 'March'),
(19, 49534, '2021-03-05', 45, 38, 'March'),
(20, 92434, '2021-04-28', 28, 5, 'April'),
(21, 79359, '2021-04-01', 18, 39, 'April'),
(22, 52808, '2021-01-04', 33, 31, 'January'),
(23, 31786, '2021-03-04', 19, 12, 'March'),
(24, 50038, '2021-02-03', 42, 19, 'February'),
(25, 29104, '2021-03-25', 25, 5, 'March'),
(26, 52291, '2021-01-17', 28, 32, 'January'),
(27, 55272, '2021-01-14', 23, 45, 'January'),
(28, 18281, '2021-06-19', 41, 20, 'June'),
(29, 62692, '2021-04-14', 21, 6, 'April'),
(30, 91231, '2021-03-26', 29, 2, 'March'),
(31, 23788, '2021-05-28', 16, 15, 'May'),
(32, 25812, '2021-04-19', 24, 34, 'April'),
(33, 66186, '2021-02-19', 50, 21, 'February'),
(34, 42164, '2021-02-10', 39, 18, 'February'),
(35, 83240, '2021-02-10', 3, 50, 'February'),
(36, 34997, '2021-04-12', 32, 22, 'April'),
(37, 75472, '2021-02-26', 23, 2, 'February'),
(38, 95109, '2021-03-21', 20, 36, 'March'),
(39, 88281, '2021-02-21', 47, 8, 'February'),
(40, 93308, '2021-01-01', 26, 30, 'January'),
(41, 68126, '2021-04-24', 28, 5, 'April'),
(42, 88247, '2021-03-21', 33, 1, 'March'),
(43, 85331, '2021-04-09', 40, 32, 'April'),
(44, 34773, '2021-06-07', 19, 1, 'June'),
(45, 81769, '2021-02-15', 31, 9, 'February'),
(46, 80855, '2021-04-25', 30, 33, 'April'),
(47, 22493, '2021-01-21', 4, 36, 'January'),
(48, 25366, '2021-04-09', 30, 18, 'April'),
(49, 36178, '2021-03-10', 42, 15, 'March'),
(50, 26136, '2021-01-02', 31, 12, 'January'),
(51, 45036, '2021-04-13', 45, 26, 'April'),
(52, 91127, '2021-03-08', 28, 8, 'March'),
(53, 56530, '2021-03-21', 37, 42, 'March'),
(54, 22575, '2021-01-09', 17, 22, 'January'),
(55, 68342, '2021-02-02', 47, 10, 'February'),
(56, 13848, '2021-05-03', 19, 24, 'May'),
(57, 61397, '2021-02-20', 36, 21, 'February'),
(58, 69385, '2021-03-03', 39, 49, 'March'),
(59, 55520, '2021-01-06', 2, 27, 'January'),
(60, 34690, '2021-04-29', 46, 46, 'April'),
(61, 54454, '2021-04-13', 39, 31, 'April'),
(62, 80453, '2021-06-21', 14, 14, 'June'),
(63, 28895, '2021-05-01', 21, 36, 'May'),
(64, 63245, '2021-04-03', 37, 8, 'April'),
(65, 44089, '2021-02-02', 8, 30, 'February'),
(66, 67949, '2021-04-28', 37, 4, 'April'),
(67, 47398, '2021-03-15', 14, 11, 'March'),
(68, 83975, '2021-01-29', 39, 24, 'January'),
(69, 45014, '2021-04-28', 15, 42, 'April'),
(70, 34369, '2021-05-25', 14, 6, 'May'),
(71, 40305, '2021-02-10', 20, 9, 'February'),
(72, 60912, '2021-05-16', 42, 16, 'May'),
(73, 39004, '2021-05-15', 9, 19, 'May'),
(74, 35522, '2021-05-25', 28, 25, 'May'),
(75, 27720, '2021-05-19', 23, 35, 'May'),
(76, 37822, '2021-03-21', 15, 8, 'March'),
(77, 79896, '2021-03-30', 18, 44, 'March'),
(78, 92605, '2021-05-07', 35, 30, 'May'),
(79, 38792, '2021-01-22', 18, 27, 'January'),
(80, 71941, '2021-01-01', 40, 5, 'January'),
(81, 11729, '2021-04-19', 9, 28, 'April'),
(82, 91577, '2021-04-08', 34, 7, 'April'),
(83, 42775, '2021-06-09', 19, 37, 'June'),
(84, 91303, '2021-04-04', 16, 33, 'April'),
(85, 35677, '2021-03-24', 7, 34, 'March'),
(86, 45184, '2021-03-21', 9, 2, 'March'),
(87, 65493, '2021-02-07', 26, 43, 'February'),
(88, 94181, '2021-04-26', 4, 7, 'April'),
(89, 75316, '2021-01-17', 14, 45, 'January'),
(90, 31102, '2021-05-04', 17, 6, 'May'),
(91, 44858, '2021-06-05', 42, 10, 'June'),
(92, 84257, '2021-04-01', 46, 35, 'April'),
(93, 89342, '2021-01-31', 24, 48, 'January'),
(94, 84499, '2021-01-25', 45, 17, 'January'),
(95, 83571, '2021-02-20', 28, 22, 'February'),
(96, 11677, '2021-01-17', 47, 46, 'January'),
(97, 62882, '2021-06-24', 20, 10, 'June'),
(98, 60898, '2021-06-22', 3, 26, 'June'),
(99, 57286, '2021-05-26', 24, 33, 'May'),
(100, 34017, '2021-03-14', 32, 8, 'March'),
(101, 90213, '2021-05-01', 9, 49, 'May'),
(102, 49086, '2021-06-04', 29, 49, NULL),
(103, 16332, '2021-03-03', 34, 35, NULL),
(104, 26330, '2021-05-20', 38, 10, NULL),
(105, 67744, '2021-01-04', 13, 47, NULL),
(106, 88910, '2021-05-30', 21, 9, NULL),
(107, 12653, '2021-06-11', 39, 9, NULL),
(108, 73692, '2021-01-22', 24, 29, NULL),
(109, 66975, '2021-03-18', 15, 34, NULL),
(110, 37826, '2021-01-01', 24, 36, NULL),
(111, 41543, '2021-03-17', 46, 28, NULL),
(112, 34557, '2021-03-24', 44, 20, NULL),
(113, 18560, '2021-01-07', 19, 23, NULL),
(114, 46482, '2021-02-25', 13, 26, NULL),
(115, 99375, '2021-01-26', 50, 45, NULL),
(116, 64417, '2021-05-13', 49, 30, NULL),
(117, 84950, '2021-03-24', 10, 25, NULL),
(118, 56452, '2021-05-29', 42, 31, NULL),
(119, 32641, '2021-01-18', 5, 44, NULL),
(120, 95655, '2021-03-08', 40, 42, NULL),
(121, 38720, '2021-06-11', 2, 45, NULL),
(122, 77933, '2021-02-08', 49, 9, NULL),
(123, 69358, '2021-01-11', 49, 36, NULL),
(124, 16908, '2021-02-04', 22, 22, NULL),
(125, 32074, '2021-01-09', 46, 8, NULL),
(126, 74617, '2021-03-30', 49, 19, NULL),
(127, 10457, '2021-03-07', 18, 44, NULL),
(128, 99513, '2021-06-05', 30, 47, NULL),
(129, 82786, '2021-04-15', 23, 7, NULL),
(130, 43995, '2021-04-08', 6, 41, NULL),
(131, 56940, '2021-03-29', 47, 41, NULL),
(132, 33621, '2021-01-31', 10, 43, NULL),
(133, 56579, '2021-05-14', 19, 15, NULL),
(134, 10399, '2021-05-11', 13, 45, NULL),
(135, 32255, '2021-01-14', 2, 24, NULL),
(136, 41535, '2021-05-02', 44, 12, NULL),
(137, 54254, '2021-05-18', 47, 7, NULL),
(138, 52562, '2021-01-04', 44, 12, NULL),
(139, 91239, '2021-06-07', 20, 40, NULL),
(140, 33634, '2021-06-04', 25, 27, NULL),
(141, 99308, '2021-02-25', 20, 36, NULL),
(142, 34470, '2021-05-08', 27, 46, NULL),
(143, 26115, '2021-04-14', 19, 49, NULL),
(144, 65085, '2021-04-08', 16, 36, NULL),
(145, 22705, '2021-02-09', 47, 27, NULL),
(146, 29037, '2021-01-23', 20, 44, NULL),
(147, 15356, '2021-02-28', 27, 40, NULL),
(148, 58840, '2021-02-19', 45, 35, NULL),
(149, 88106, '2021-04-19', 40, 41, NULL),
(150, 12805, '2021-06-02', 38, 27, NULL),
(151, 43050, '2021-01-24', 24, 50, NULL),
(152, 38669, '2021-02-15', 15, 5, NULL),
(153, 60929, '2021-04-07', 50, 5, NULL),
(154, 82489, '2021-05-07', 36, 8, NULL),
(155, 75855, '2021-04-14', 16, 50, NULL),
(156, 86435, '2021-06-22', 28, 40, NULL),
(157, 45019, '2021-04-21', 21, 49, NULL),
(158, 24698, '2021-03-14', 21, 26, NULL),
(159, 11695, '2021-06-04', 28, 22, NULL),
(160, 73382, '2021-03-20', 28, 43, NULL),
(161, 88057, '2021-04-10', 47, 38, NULL),
(162, 18921, '2021-05-03', 12, 43, NULL),
(163, 21966, '2021-03-06', 35, 45, NULL),
(164, 20958, '2021-02-08', 25, 12, NULL),
(165, 93548, '2021-01-16', 45, 4, NULL),
(166, 94859, '2021-01-14', 46, 32, NULL),
(167, 16875, '2021-02-02', 40, 32, NULL),
(168, 83709, '2021-04-14', 16, 26, NULL),
(169, 16140, '2021-02-08', 34, 39, NULL),
(170, 25459, '2021-05-29', 31, 25, NULL),
(171, 96018, '2021-02-04', 47, 31, NULL),
(172, 99665, '2021-01-14', 11, 45, NULL),
(173, 20437, '2021-03-03', 3, 33, NULL),
(174, 20322, '2021-06-16', 3, 10, NULL),
(175, 72522, '2021-02-11', 29, 41, NULL),
(176, 14991, '2021-03-11', 30, 6, NULL),
(177, 97135, '2021-02-10', 28, 36, NULL),
(178, 74415, '2021-05-07', 48, 48, NULL),
(179, 24092, '2021-02-16', 6, 22, NULL),
(180, 91676, '2021-01-09', 45, 20, NULL),
(181, 76425, '2021-05-27', 25, 17, NULL),
(182, 33616, '2021-02-19', 33, 10, NULL),
(183, 80238, '2021-03-13', 36, 3, NULL),
(184, 15602, '2021-03-21', 46, 37, NULL),
(185, 10930, '2021-02-19', 18, 18, NULL),
(186, 12659, '2021-03-08', 32, 2, NULL),
(187, 11606, '2021-04-23', 25, 11, NULL),
(188, 87663, '2021-01-12', 11, 40, NULL),
(189, 54483, '2021-06-03', 13, 23, NULL),
(190, 88463, '2021-05-09', 21, 39, NULL),
(191, 75941, '2021-03-11', 21, 3, NULL),
(192, 47515, '2021-02-13', 33, 30, NULL),
(193, 43293, '2021-05-07', 16, 6, NULL),
(194, 97313, '2021-03-04', 37, 34, NULL),
(195, 32182, '2021-02-09', 10, 34, NULL),
(196, 14672, '2021-03-18', 23, 15, NULL),
(197, 53465, '2021-01-06', 21, 8, NULL),
(198, 67265, '2021-05-19', 5, 25, NULL),
(199, 27356, '2021-05-10', 30, 44, NULL),
(200, 31297, '2021-05-14', 15, 9, NULL),
(201, 60978, '2021-01-25', 29, 8, NULL);

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
(1, 'Brigitte Gleichner', '23816 Laron Ports Apt. 829\nJannieburgh, AK 15834-3510', 46),
(2, 'Cecelia Jaskolski', '48036 Hailee Ranch\nGleichnerhaven, GA 86275', 47),
(3, 'Dr. Valerie Sanford IV', '7575 Waelchi Turnpike Apt. 657\nZiemannside, MA 63837', 38),
(4, 'Dr. Stefan Wiegand DDS', '66736 David Crossroad Suite 570\nUptonburgh, WI 04665-4935', 22),
(5, 'Prof. Buster Hauck', '2855 Connelly Overpass Apt. 919\nEast Betsychester, MT 74899', 50),
(6, 'Eve Smitham', '5152 Jameson Shoals Suite 182\nRempelton, PA 14644-0871', 17),
(7, 'Enoch Bins', '851 Stiedemann Spurs\nEdenstad, PA 66288', 25),
(8, 'Prof. Norene Medhurst', '7208 Wisoky Way\nWizahaven, MO 26526', 12),
(9, 'Abby Leffler', '4111 Whitney Garden Suite 794\nWest Camrynside, TN 68964-8165', 3),
(10, 'Brandyn Padberg', '5837 Herman Walk\nEmerymouth, NH 32783-7481', 38),
(11, 'Moriah Bayer', '3650 Runolfsson Drives Suite 522\nWalshhaven, OH 31897-0990', 20),
(12, 'Chasity Leffler', '130 Olson Forest\nLake Cooper, NC 73506-2720', 2),
(13, 'Georgiana Schiller', '1577 Alfredo Pass Apt. 285\nUbaldoside, LA 77166', 21),
(14, 'Jairo Hauck', '6222 Kunze Corners Suite 860\nWest Chanelview, NV 54499', 20),
(15, 'Ms. Virginie McGlynn', '98016 Funk Mission\nPort Randy, MN 87411', 16),
(16, 'Prof. Marcos Kuhn', '97741 Flatley Ways\nRobertsside, AL 63601-8829', 45),
(17, 'Kadin Kirlin', '7461 Cortez Drive Suite 819\nBridgettebury, NY 17228', 43),
(18, 'Myles Runolfsdottir', '28927 Jacynthe Skyway Suite 222\nFritzland, VA 63293-8621', 39),
(19, 'Sarina Legros', '821 Prosacco Dam Suite 263\nPort Owen, MS 47912', 18),
(20, 'Jovanny Goodwin', '96349 Hessel Shoals\nSouth Jermey, IN 73001-5052', 5),
(21, 'Arlene Metz', '890 Nikki Rapid\nMayertbury, PA 33051-1658', 36),
(22, 'Dorris Reichel', '111 Spencer Drive\nHanefurt, OK 42932', 25),
(23, 'Missouri Russel', '8514 Murphy Via Suite 621\nNorth Casimerfurt, UT 51701', 6),
(24, 'Aurelia Dietrich', '731 Runte Springs\nPort Zanderview, CO 43960', 13),
(25, 'Mrs. Amiya Schinner', '6691 Rutherford Glen\nLake Alessia, VA 92960', 31),
(26, 'Dr. Geovanny Rath II', '3204 Glover Stream\nTravisland, NY 81286-6028', 2),
(27, 'Nora Klein II', '2758 Herzog Place Suite 399\nPort Timothybury, SC 02277-4531', 43),
(28, 'Mrs. Elyse Lueilwitz DVM', '527 Huels Brook\nEast Stephenstad, AR 95396-3378', 6),
(29, 'Dr. Audrey Eichmann Jr.', '71981 Ena Turnpike\nReganton, UT 41560', 40),
(30, 'Prof. Willis Weimann I', '785 Broderick Isle\nBodeside, KS 40413', 25),
(31, 'Rickie Keebler DDS', '9393 Nicolas Mall\nOdellstad, WV 77073', 4),
(32, 'Prof. Coby Lemke IV', '835 Batz Curve\nEast Tevinside, ID 95076-7642', 39),
(33, 'Vivian Fahey', '310 Hoeger Canyon Apt. 228\nJudsonchester, OR 62344-1132', 46),
(34, 'Prof. Estelle Kiehn V', '85946 Idell Trace Suite 297\nEmardside, IA 25534', 16),
(35, 'Violette Shields', '246 Giovanny Grove\nLake Gregorio, TX 68329-9161', 49),
(36, 'Aracely Okuneva', '56770 Esteban Plains\nDellhaven, AR 89113-7934', 15),
(37, 'Abdiel Mertz', '2619 Isabell Stravenue\nNew Rooseveltside, GA 88717', 23),
(38, 'Dena Klocko', '8693 Jovan Camp Suite 292\nNew Napoleonland, MN 42544-1809', 42),
(39, 'Carlee Moen', '51068 Hamill Island\nLavonneborough, SD 96557-8437', 29),
(40, 'Timothy Glover DVM', '826 Efrain Estates\nRoweshire, MT 56428-3012', 1),
(41, 'Harvey Wintheiser', '9891 Kirlin Meadow Apt. 714\nAdamsmouth, AZ 56103-4388', 31),
(42, 'Miss Janis Lebsack', '472 Jones Harbors Suite 777\nIdabury, CO 81700-9493', 33),
(43, 'Ansley Howell', '725 Cathy Overpass Apt. 929\nLuraburgh, IA 14885', 15),
(44, 'Petra Schamberger', '734 Kuhic Spur Suite 605\nSouth Oletaville, MI 74891', 12),
(45, 'Moshe Kirlin', '82026 Farrell Ferry Suite 302\nLesleyton, RI 21872', 15),
(46, 'Oscar McClure', '7203 Raynor Mountains\nSouth Luciestad, GA 76370', 11),
(47, 'Dr. Stephanie Luettgen', '4621 Abdul Shore Apt. 090\nHymanside, WV 88637-6041', 35),
(48, 'Werner Larson', '8447 Brandon Isle\nVelmaburgh, NH 35423', 25),
(49, 'Samara Graham', '1683 Gust Plaza Apt. 209\nMichaelfurt, MD 09573', 4),
(50, 'Zachariah Bosco DDS', '5271 Greenholt Shores Suite 500\nNorth Danniebury, MD 57316-6873', 34);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
