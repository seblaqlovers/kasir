-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 03:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `detail_id` int(11) NOT NULL,
  `kode_produk` varchar(15) DEFAULT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `penjualan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`detail_id`, `kode_produk`, `nama_produk`, `harga`, `jumlah`, `penjualan_id`) VALUES
(1, 'M.001', 'Nasi Uduk', 20000, 2, 1),
(2, 'M.002', 'Nasi Goreng Spesial', 25000, 3, 1),
(3, 'M.003', 'Ayam Geprek', 15000, 1, 1),
(4, 'M.001', 'Nasi Uduk', 20000, 2, 2),
(5, 'M.003', 'Ayam Geprek', 15000, 2, 2),
(6, 'M.001', 'Nasi Uduk', 20000, 3, 3),
(7, 'M.002', 'Nasi Goreng Spesial', 25000, 3, 3),
(8, 'M.004', 'Ayam Bakar', 10000, 3, 3),
(9, 'M.001', 'Nasi Uduk', 20000, 2, 4),
(10, 'M.003', 'Ayam Geprek', 15000, 3, 4),
(11, 'M.004', 'Ayam Bakar', 10000, 2, 5),
(12, 'M.003', 'Ayam Geprek', 15000, 1, 5),
(13, 'M.001', 'Nasi Uduk', 20000, 2, 6),
(14, 'M.003', 'Ayam Geprek', 15000, 2, 6),
(15, 'M.001', 'Nasi Uduk', 20000, 2, 7),
(16, 'M.001', 'Nasi Uduk', 20000, 2, 8),
(17, 'M.003', 'Ayam Geprek', 15000, 3, 8),
(18, 'M.005', 'Nila Bakar', 25000, 2, 8),
(19, 'M.001', 'Nasi Uduk', 20000, 2, 9),
(20, 'M.002', 'Nasi Goreng Spesial', 25000, 2, 9),
(21, 'M.003', 'Ayam Geprek', 15000, 4, 9),
(22, 'M.001', 'Nasi Uduk', 20000, 1, 10),
(23, 'M.005', 'Nila Bakar', 25000, 5, 10),
(24, 'M.003', 'Ayam Geprek', 15000, 2, 10),
(25, 'M.003', 'Ayam Geprek', 15000, 5, 11),
(26, 'M.001', 'Nasi Uduk', 20000, 5, 11),
(27, 'M.002', 'Nasi Goreng Spesial', 25000, 5, 12),
(28, 'M.003', 'Ayam Geprek', 15000, 2, 12),
(29, 'M.004', 'Ayam Bakar', 10000, 3, 12),
(30, 'M.001', 'Nasi Uduk', 20000, 2, 13),
(31, 'M.002', 'Nasi Goreng Spesial', 25000, 3, 14),
(32, 'M.004', 'Ayam Bakar', 10000, 3, 14),
(33, 'M.005', 'Nila Bakar', 25000, 3, 14),
(34, 'D.002', 'Jus Sirsak', 10000, 3, 14),
(35, 'M.001', 'Nasi Uduk', 20000, 3, 15),
(36, 'M.003', 'Ayam Geprek', 15000, 1, 15),
(37, 'D.002', 'Jus Sirsak', 10000, 1, 15),
(38, 'D.002', 'Jus Sirsak', 10000, 3, 16),
(39, 'M.001', 'Nasi Uduk', 20000, 3, 16),
(40, 'D.002', 'Jus Sirsak', 10000, 3, 17),
(41, 'M.002', 'Nasi Goreng Spesial', 25000, 2, 17),
(44, 'M.003', 'Ayam Geprek', 15000, 1, 17),
(46, 'M.001', 'Nasi Uduk', 20000, 2, 18),
(47, 'D.001', 'Jus Alpukat', 10000, 2, 18),
(48, 'M.002', 'Nasi Goreng Spesial', 25000, 3, 19),
(49, 'M.004', 'Ayam Bakar', 10000, 2, 19),
(50, 'D.001', 'Jus Alpukat', 10000, 5, 19),
(51, 'M.001', 'Nasi Uduk', 20000, 1, 20),
(52, 'M.003', 'Ayam Geprek', 15000, 3, 20),
(53, 'M.001', 'Nasi Uduk', 20000, 2, 21),
(54, 'M.003', 'Ayam Geprek', 15000, 1, 21),
(55, 'D.001', 'Jus Alpukat', 10000, 3, 21),
(56, 'M.001', 'Nasi Uduk', 20000, 5, 22),
(57, 'M.005', 'Nila Bakar', 25000, 5, 22),
(58, 'M.001', 'Nasi Uduk', 20000, 2, 23),
(59, 'M.002', 'Nasi Goreng Spesial', 25000, 2, 23),
(60, 'M.003', 'Ayam Geprek', 15000, 1, 23),
(61, 'M.002', 'Nasi Goreng Spesial', 25000, 3, 24),
(62, 'D.002', 'Jus Sirsak', 10000, 2, 24),
(63, 'M.002', 'Nasi Goreng Spesial', 25000, 2, 25),
(64, 'M.003', 'Ayam Geprek', 15000, 1, 25),
(65, 'M.001', 'Nasi Uduk', 20000, 1, 27),
(66, 'M.004', 'Ayam Bakar', 10000, 5, 28),
(67, 'D.003', 'Ice DJ', 13000, 5, 28),
(68, '004', 'Mie Gacoan Lv 0-4', 9500, 2, 29),
(69, '004', 'Mie Gacoan Lv 0-4', 9500, 2, 30),
(70, '022', 'Thai Tea', 7700, 2, 30),
(71, '008', 'Udang Keju', 8600, 1, 30),
(72, '004', 'Mie Gacoan Lv 0-4', 9500, 1, 31),
(73, '017', 'Milo', 7700, 1, 31),
(74, '010', 'Pangsit Goreng', 9500, 1, 31),
(78, '004', 'Mie Gacoan Lv 0-4', 9500, 10, 32),
(79, '007', 'Udang Rambutan', 8600, 10, 32),
(80, '009', 'Lumpia Udang', 8600, 5, 32),
(81, '023', 'Thai Green Tea', 7700, 10, 32),
(82, '004', 'Mie Gacoan Lv 0-4', 9500, 3, 33),
(83, '001', 'Mie Suit', 9500, 2, 34),
(84, '005', 'Mie Gacoan Lv 6-8', 10500, 2, 35),
(85, '005', 'Mie Gacoan Lv 6-8', 10500, 2, 36),
(86, '008', 'Udang Keju', 8600, 2, 37),
(87, '006', 'Siomay', 8600, 1, 37),
(88, '004', 'Mie Gacoan Lv 0-4', 9500, 3, 39),
(89, '003', 'Mie Hompimpa Lv 6-8', 10500, 1, 40),
(90, '004', 'Mie Gacoan Lv 0-4', 9500, 2, 41),
(91, '004', 'Mie Gacoan Lv 0-4', 9500, 1, 42),
(92, '004', 'Mie Gacoan Lv 0-4', 9500, 4, 43),
(94, '005', 'Mie Gacoan Lv 6-8', 10500, 20, 45),
(95, '008', 'Udang Keju', 8600, 20, 45),
(96, '020', 'Tea Tarik', 6400, 20, 45),
(97, '010', 'Pangsit Goreng', 9500, 10, 47),
(98, '004', 'Mie Gacoan Lv 0-4', 9500, 11, 48),
(99, '006', 'Siomay', 8600, 1, 49),
(100, '006', 'Siomay', 8600, 1, 50),
(101, '007', 'Udang Rambutan', 8600, 1, 52),
(102, '005', 'Mie Gacoan Lv 6-8', 10500, 3, 52),
(103, '004', 'Mie Gacoan Lv 0-4', 9500, 2, 53),
(104, '005', 'Mie Gacoan Lv 6-8', 10500, 3, 54),
(105, '008', 'Udang Keju', 8600, 3, 55),
(106, '004', 'Mie Gacoan Lv 0-4', 9500, 1, 56),
(107, '004', 'Mie Gacoan Lv 0-4', 9500, 3, 58),
(108, '004', 'Mie Gacoan Lv 0-4', 9500, 10, 60),
(109, '003', 'Mie Hompimpa Lv 6-8', 10500, 1, 61),
(110, '005', 'Mie Gacoan Lv 6-8', 10500, 1, 62),
(111, '004', 'Mie Gacoan Lv 0-4', 9500, 1, 66),
(112, '007', 'Udang Rambutan', 8600, 1, 66),
(113, '016', 'Lemon Tea', 5900, 1, 66),
(114, '005', 'Mie Gacoan Lv 6-8', 10500, 1, 70),
(116, '004', 'Mie Gacoan Lv 0-4', 9500, 1, 72),
(117, '004', 'Mie Gacoan Lv 0-4', 9500, 1, 73),
(118, '007', 'Udang Rambutan', 8600, 1, 75),
(119, '005', 'Mie Gacoan Lv 6-8', 10500, 1, 76),
(120, '008', 'Udang Keju', 8600, 1, 77),
(121, '006', 'Siomay', 8600, 1, 78),
(122, '003', 'Mie Hompimpa Lv 6-8', 10500, 3, 79),
(123, '005', 'Mie Gacoan Lv 6-8', 10500, 1, 79),
(124, '005', 'Mie Gacoan Lv 6-8', 10500, 1, 79),
(125, '001', 'Mie Suit', 9500, 1, 79),
(126, '004', 'Mie Gacoan Lv 0-4', 9500, 1, 80),
(127, '003', 'Mie Hompimpa Lv 6-8', 10500, 3, 81),
(128, '005', 'Mie Gacoan Lv 6-8', 10500, 2, 82),
(129, '003', 'Mie Hompimpa Lv 6-8', 10500, 3, 84),
(130, '005', 'Mie Gacoan Lv 6-8', 10500, 1, 84),
(131, '004', 'Mie Gacoan Lv 0-4', 9500, 3, 85),
(132, '005', 'Mie Gacoan Lv 6-8', 10500, 1, 85),
(133, '007', 'Udang Rambutan', 8600, 1, 85),
(135, '003', 'Mie Hompimpa Lv 6-8', 10500, 5, 87),
(136, '004', 'Mie Gacoan Lv 0-4', 9500, 2, 88),
(137, '004', 'Mie Gacoan Lv 0-4', 9500, 3, 89),
(138, '003', 'Mie Hompimpa Lv 6-8', 10500, 1, 90),
(139, '004', 'Mie Gacoan Lv 0-4', 9500, 1, 91),
(140, '004', 'Mie Gacoan Lv 0-4', 9500, 1, 92),
(141, '001', 'Mie Suit', 9500, 5, 94),
(142, '002', 'Mie Hompimpa Lv 1-4', 9500, 1, 94),
(143, '002', 'Mie Hompimpa Lv 1-4', 9500, 1, 95),
(144, '003', 'Mie Hompimpa Lv 6-8', 10500, 1, 95),
(145, '005', 'Mie Gacoan Lv 6-8', 10500, 20, 96),
(146, '001', 'Mie Suit', 9500, 1001, 97),
(147, '002', 'Mie Hompimpa Lv 1-4', 9500, 1, 98),
(148, '004', 'Mie Gacoan Lv 0-4', 9500, 5, 99),
(149, '017', 'Milo', 7700, 5, 99),
(150, '003', 'Mie Hompimpa Lv 6-8', 10500, 1, 100),
(151, '005', 'Mie Gacoan Lv 6-8', 10500, 1, 101),
(152, '005', 'Mie Gacoan Lv 6-8', 10500, 1, 102),
(153, '001', 'Mie Suit', 9500, 1, 104),
(154, '003', 'Mie Hompimpa Lv 6-8', 10500, 1, 103),
(155, '004', 'Mie Gacoan Lv 0-4', 9500, 1, 105),
(156, '003', 'Mie Hompimpa Lv 6-8', 10500, 1, 106),
(157, '003', 'Mie Hompimpa Lv 6-8', 10500, 1, 107),
(158, '004', 'Mie Gacoan Lv 0-4', 9500, 1, 108),
(159, '003', 'Mie Hompimpa Lv 6-8', 10500, 1, 109);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `kode_pelanggan` varchar(15) DEFAULT NULL,
  `nama_pelanggan` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `kode_pelanggan`, `nama_pelanggan`, `alamat`, `no_hp`) VALUES
(1, '001', 'Louis Partridge', 'Jl. Braga. Bandung', '0882673899'),
(2, '002', 'William Franklin Miller', 'Jl. Dago. Bandung', '0852223334'),
(3, '003', 'Leonardo DiCaprio', 'Jl. Asia Afrika. Bandung', '0865356354'),
(4, '004', 'Dyah Cantik', 'Kamun', '08823452312'),
(6, '006', 'nci', 'dukupari', '087637636'),
(7, '007', 'Andhara', 'Sukamenak Indah', '08565363667'),
(9, '008', 'nasrul', 'majalengka', '086783747');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `tanggal`, `total_harga`, `bayar`, `id_pelanggan`, `id_petugas`, `nama_petugas`) VALUES
(39, '2024-09-19 16:39:57', 28500, 30000, 1, 6, 'kasir'),
(42, '2024-09-19 16:51:42', 9500, 10000, 2, 6, 'kasir'),
(43, '2024-09-19 16:52:29', 38000, 40000, 4, 6, 'kasir'),
(50, '2024-10-07 13:49:34', 8600, 10000, 1, 1, 'Chelsy Hana Algiffari'),
(52, '2024-10-07 13:51:42', 40100, 50000, 6, 1, 'Chelsy Hana Algiffari'),
(53, '2024-10-08 15:41:38', 19000, 20000, 2, 1, 'Chelsy Hana Algiffari'),
(61, '2024-10-15 14:37:08', 10500, 20000, 1, 1, 'Chelsy Hana Algiffari'),
(62, '2024-10-15 14:47:16', 10500, 15000, 2, 1, 'Chelsy Hana Algiffari'),
(72, '2024-10-17 08:15:29', 9500, 10000, 3, 1, 'Chelsy '),
(73, '2024-10-17 08:33:55', 9500, 10000, 1, 1, 'Chelsy '),
(74, '2024-10-17 09:31:28', NULL, NULL, 0, 0, NULL),
(79, '2024-10-17 16:28:27', 62000, 70000, 1, 1, 'Chelsy '),
(80, '2024-10-18 08:58:28', 9500, 10000, 1, 1, 'Chelsy '),
(81, '2024-10-18 08:58:53', 31500, 40000, 1, 1, 'Chelsy '),
(82, '2024-10-18 08:59:21', 21000, 25000, 1, 1, 'Chelsy '),
(83, '2024-10-21 07:33:49', NULL, NULL, NULL, 0, NULL),
(84, '2024-10-21 08:27:08', 42000, 50000, 1, 1, 'Chelsy '),
(85, '2024-10-21 08:33:15', 47600, 50000, 2, 1, 'Chelsy '),
(86, '2024-10-22 07:46:26', NULL, NULL, 6, 0, NULL),
(87, '2024-10-22 08:11:40', 52500, 55000, 1, 2, 'Maulana'),
(88, '2024-10-22 08:24:06', 19000, 20000, 2, 1, 'Chelsy '),
(89, '2024-10-22 08:34:37', 28500, 30000, 1, 1, 'Chelsy '),
(90, '2024-10-22 08:55:32', 10500, 11000, 1, 1, 'Chelsy '),
(91, '2024-10-22 09:01:04', NULL, NULL, NULL, 0, NULL),
(92, '2024-10-22 14:19:24', NULL, NULL, 1, 0, NULL),
(93, '2024-10-23 06:14:46', NULL, NULL, NULL, 0, NULL),
(94, '2024-10-23 09:06:12', 57000, 60000, 1, 1, 'Chelsy '),
(95, '2024-10-23 09:16:25', 20000, 20000, 1, 2, 'Maulana'),
(96, '2024-10-30 18:03:31', 210000, 310000, 9, 1, 'Chelsy '),
(97, '2024-11-06 14:16:07', 9509500, 10000000, 1, 1, 'Chelsy '),
(98, '2024-11-06 14:18:23', 9500, 10000, 1, 1, 'Chelsy '),
(99, '2024-11-06 14:31:34', 86000, 87000, 1, 1, 'Chelsy '),
(100, '2024-11-07 07:14:57', 10500, 20000, 2, 2, 'Maulana'),
(101, '2024-11-07 07:43:29', 10500, 20000, 2, 1, 'Chelsy '),
(103, '2024-11-07 07:45:21', 10500, 15000, 1, 1, 'Chelsy '),
(104, '2024-11-07 07:51:25', 9500, 10000, 1, 1, 'Chelsy '),
(105, '2024-11-07 08:03:07', 9500, 20000, NULL, 1, 'Chelsy '),
(106, '2024-11-07 08:27:33', 10500, 10500, NULL, 1, 'Chelsy '),
(107, '2024-11-07 08:31:25', 10500, 20000, NULL, 1, 'Chelsy '),
(108, '2024-11-07 08:44:00', 9500, 10000, 1, 1, 'Chelsy '),
(109, '2024-11-07 08:45:06', 10500, 10500, 1, 1, 'Chelsy ');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_petugas` varchar(35) DEFAULT NULL,
  `level` enum('admin','petugas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(1, 'admin', '$2y$10$xxiqpM4c/bEOduOLjvar7.S3KHc4oGuzndqxofFE0ccpiGVANbfvW', 'Chelsy ', 'admin'),
(2, 'petugas', '$2y$10$iuId.YLyXgVDn8U0zWBDfOKAw4mV4LOcHhdhJjGcFqx2naSMDqhXW', 'Maulana', 'petugas'),
(4, 'admin2', '$2y$10$FPZJMxvqcADW8lNjXhsogub4Lrl/LAQT2xIwxgSwEnTfnvtF9HmUG', 'Yohan', 'admin'),
(5, 'petugas2', '$2y$10$8uZU5iogp04z2SuCrz08RunDbCTT/gspJbePqw3eY7wrYfRr5nOS6', 'Rizky', 'petugas'),
(6, 'admin3', '$2y$10$8JYxc2w6GEuSf9AsrvUNFObB8TLvswkJY5v1xYmGPxqBkbA5Sg4Q.', 'Andri', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `kode_produk` varchar(15) DEFAULT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `kode_produk`, `nama_produk`, `harga`, `stok`) VALUES
(1, '001', 'Mie Suit', 9500, 10000),
(2, '002', 'Mie Hompimpa Lv 1-4', 9500, 10000),
(3, '003', 'Mie Hompimpa Lv 6-8', 10500, 10000),
(4, '004', 'Mie Gacoan Lv 0-4', 9500, 10000),
(5, '005', 'Mie Gacoan Lv 6-8', 10500, 10000),
(6, '006', 'Siomay', 8600, 10000),
(7, '007', 'Udang Rambutan', 8600, 10000),
(8, '008', 'Udang Keju', 8600, 10000),
(9, '009', 'Lumpia Udang', 8600, 10000),
(10, '010', 'Pangsit Goreng', 9500, 10000),
(11, '011', 'Es Gobak Sodor', 8600, 10000),
(12, '012', 'Es Tektek', 5900, 10000),
(13, '013', 'Es Sluku Bathok ', 5900, 10000),
(14, '014', 'Es Petak Umpet', 8600, 10000),
(15, '015', 'Mineral', 4100, 10000),
(16, '016', 'Lemon Tea', 5900, 10000),
(17, '017', 'Milo', 7700, 10000),
(18, '018', 'Orange', 5000, 10000),
(19, '019', 'Es Tea', 4100, 10000),
(20, '020', 'Tea Tarik', 6400, 10000),
(21, '021', 'Vanilla Latte', 7700, 10000),
(22, '022', 'Thai Tea', 7700, 10000),
(23, '023', 'Thai Green Tea', 7700, 10000),
(24, '024', 'Es Coklat', 7700, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `tambah_stok`
--

CREATE TABLE `tambah_stok` (
  `tambah_id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `kode_produk` varchar(15) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tambah_stok`
--

INSERT INTO `tambah_stok` (`tambah_id`, `tanggal`, `kode_produk`, `jumlah`) VALUES
(1, '2024-01-31 08:39:02', 'M.001', 20),
(2, '2024-01-31 08:39:48', 'M.002', 10),
(3, '2024-01-31 08:41:23', 'M.003', 20),
(4, '2024-01-31 08:43:53', 'M.005', 10),
(5, '0000-00-00 00:00:00', 'M.001', 10),
(6, '0000-00-00 00:00:00', 'M.001', 50),
(7, '0000-00-00 00:00:00', 'D.002', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tambah_stok`
--
ALTER TABLE `tambah_stok`
  ADD PRIMARY KEY (`tambah_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tambah_stok`
--
ALTER TABLE `tambah_stok`
  MODIFY `tambah_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
