-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 23, 2021 at 05:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tol_tim3`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telepon` int(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `id_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama`, `telepon`, `alamat`, `id_login`) VALUES
(1, 'admin', 123132, 'admin', 1),
(2, 'Agus Sugiono', 123321, 'Rumah Agus', 14),
(3, 'Budi Handuk', 12313211, 'Rumah Budi', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tb_logdata`
--

CREATE TABLE `tb_logdata` (
  `id_log` int(100) NOT NULL,
  `rfid` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `saldo_awal` int(100) NOT NULL,
  `harga` int(100) NOT NULL,
  `saldo_akhir` int(100) NOT NULL,
  `nama_tol` varchar(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_logdata`
--

INSERT INTO `tb_logdata` (`id_log`, `rfid`, `nama`, `saldo_awal`, `harga`, `saldo_akhir`, `nama_tol`, `tanggal`, `keterangan`) VALUES
(7, ' RFID ', ' Udin Ahmad Putra ', 10055000, 15000, 10040000, ' Jagorawi ', '2021-12-15 22:05:32', 'Transaksi Berhasil'),
(8, ' RFID ', ' Udin Ahmad Putra ', 10040000, 15000, 10025000, ' Jagorawi ', '2021-01-15 20:50:54', 'Transaksi Berhasil'),
(9, ' RFID ', ' Udin Ahmad Putra ', 10025000, 9000, 10016000, ' Padalarang ', '2021-01-21 20:51:03', 'Transaksi Berhasil'),
(10, ' RFID ', ' Udin Ahmad Putra ', 10016000, 9000, 10007000, ' Padalarang ', '2021-01-28 20:51:06', 'Transaksi Berhasil'),
(11, ' RFID ', ' Udin Ahmad Putra ', 10007000, 15000, 9992000, ' Jagorawi ', '2021-01-31 20:51:10', 'Transaksi Berhasil'),
(12, ' RFID ', ' Udin Ahmad Putra ', 9992000, 15000, 9977000, ' Jagorawi ', '2021-02-05 20:51:14', 'Transaksi Berhasil'),
(13, ' RFID ', ' Udin Ahmad Putra ', 9977000, 15000, 9962000, ' Jagorawi ', '2021-02-10 20:51:16', 'Transaksi Berhasil'),
(14, ' RFID ', ' Udin Ahmad Putra ', 9962000, 9000, 9953000, ' Padalarang ', '2021-02-19 20:51:20', 'Transaksi Berhasil'),
(15, ' RFID ', ' Udin Ahmad Putra ', 9953000, 15000, 9938000, ' Jagorawi ', '2021-02-21 20:51:26', 'Transaksi Berhasil'),
(16, ' RFID ', ' Udin Ahmad Putra ', 9938000, 9000, 9929000, ' Padalarang ', '2021-02-27 20:51:37', 'Transaksi Berhasil'),
(17, ' RFID ', ' Udin Ahmad Putra ', 9929000, 9000, 9920000, ' Padalarang ', '2021-03-01 20:51:39', 'Transaksi Berhasil'),
(18, ' RFID ', ' Udin Ahmad Putra ', 9920000, 15000, 9905000, ' Jagorawi ', '2021-03-06 20:51:44', 'Transaksi Berhasil'),
(19, ' RFID ', ' Udin Ahmad Putra ', 9905000, 9000, 9896000, ' Padalarang ', '2021-03-12 20:51:48', 'Transaksi Berhasil'),
(20, ' RFID ', ' Udin Ahmad Putra ', 9896000, 15000, 9881000, ' Jagorawi ', '2021-03-20 20:51:51', 'Transaksi Berhasil'),
(21, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1150000, 15000, 1135000, ' Jagorawi ', '2021-03-29 20:53:25', 'Transaksi Berhasil'),
(22, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1135000, 9000, 1126000, ' Padalarang ', '2021-04-03 20:53:32', 'Transaksi Berhasil'),
(23, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1126000, 9000, 1117000, ' Padalarang ', '2021-04-10 20:53:34', 'Transaksi Berhasil'),
(24, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1117000, 15000, 1102000, ' Jagorawi ', '2021-04-17 20:53:37', 'Transaksi Berhasil'),
(25, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1102000, 9000, 1093000, ' Padalarang ', '2021-04-24 20:53:41', 'Transaksi Berhasil'),
(26, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1093000, 15000, 1078000, ' Jagorawi ', '2021-05-01 20:53:45', 'Transaksi Berhasil'),
(27, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1078000, 15000, 1063000, ' Jagorawi ', '2021-05-08 20:53:48', 'Transaksi Berhasil'),
(28, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1063000, 9000, 1054000, ' Padalarang ', '2021-05-15 20:53:51', 'Transaksi Berhasil'),
(29, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1054000, 15000, 1039000, ' Jagorawi ', '2021-05-22 20:53:54', 'Transaksi Berhasil'),
(30, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1039000, 9000, 1030000, ' Padalarang ', '2021-05-29 20:53:57', 'Transaksi Berhasil'),
(31, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1030000, 15000, 1015000, ' Jagorawi ', '2021-06-07 20:54:01', 'Transaksi Berhasil'),
(32, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1015000, 15000, 1000000, ' Jagorawi ', '2021-06-14 20:54:03', 'Transaksi Berhasil'),
(33, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 1000000, 9000, 991000, ' Padalarang ', '2021-06-21 20:54:06', 'Transaksi Berhasil'),
(34, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 991000, 9000, 982000, ' Padalarang ', '2021-06-28 20:54:08', 'Transaksi Berhasil'),
(35, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 982000, 15000, 967000, ' Jagorawi ', '2021-07-02 20:54:11', 'Transaksi Berhasil'),
(36, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 967000, 9000, 958000, ' Padalarang ', '2021-07-06 20:54:14', 'Transaksi Berhasil'),
(37, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 958000, 9000, 949000, ' Padalarang ', '2021-07-11 20:55:25', 'Transaksi Berhasil'),
(38, ' RFIDBARU ', ' Mohamad Alif Dzikry ', 949000, 15000, 934000, ' Jagorawi ', '2021-07-16 20:55:29', 'Transaksi Berhasil'),
(39, ' RFID ', ' Udin Ahmad Putra ', 9881000, 15000, 9866000, ' Jagorawi ', '2021-07-18 20:55:38', 'Transaksi Berhasil'),
(40, ' RFID ', ' Udin Ahmad Putra ', 9866000, 15000, 9851000, ' Jagorawi ', '2021-07-24 20:55:40', 'Transaksi Berhasil'),
(41, ' RFID ', ' Udin Ahmad Putra ', 9851000, 15000, 9836000, ' Jagorawi ', '2021-07-29 20:55:42', 'Transaksi Berhasil'),
(42, ' RFID ', ' Udin Ahmad Putra ', 9836000, 9000, 9827000, ' Padalarang ', '2021-07-31 20:55:45', 'Transaksi Berhasil'),
(43, ' RFID ', ' Udin Ahmad Putra ', 9827000, 9000, 9818000, ' Padalarang ', '2021-08-07 20:55:47', 'Transaksi Berhasil'),
(44, ' RFID ', ' Udin Ahmad Putra ', 9818000, 9000, 9809000, ' Padalarang ', '2021-08-14 20:55:47', 'Transaksi Berhasil'),
(45, ' RFID ', ' Udin Ahmad Putra ', 9809000, 9000, 9800000, ' Padalarang ', '2021-08-21 20:55:48', 'Transaksi Berhasil'),
(46, ' RFID ', ' Udin Ahmad Putra ', 9800000, 9000, 9791000, ' Padalarang ', '2021-08-28 20:55:49', 'Transaksi Berhasil'),
(47, ' RFID ', ' Udin Ahmad Putra ', 9791000, 9000, 9782000, ' Padalarang ', '2021-08-31 20:55:49', 'Transaksi Berhasil'),
(48, ' RFID ', ' Udin Ahmad Putra ', 9782000, 15000, 9767000, ' Jagorawi ', '2021-09-07 20:55:51', 'Transaksi Berhasil'),
(49, ' RFID ', ' Udin Ahmad Putra ', 9767000, 15000, 9752000, ' Jagorawi ', '2021-09-14 20:55:53', 'Transaksi Berhasil'),
(50, ' RFID ', ' Udin Ahmad Putra ', 9752000, 15000, 9737000, ' Jagorawi ', '2021-09-21 20:55:54', 'Transaksi Berhasil'),
(51, ' RFID ', ' Udin Ahmad Putra ', 9737000, 15000, 9722000, ' Jagorawi ', '2021-09-28 20:55:54', 'Transaksi Berhasil'),
(52, ' RFID ', ' Udin Ahmad Putra ', 9722000, 15000, 9707000, ' Jagorawi ', '2021-10-06 20:55:55', 'Transaksi Berhasil'),
(53, ' RFID ', ' Udin Ahmad Putra ', 9707000, 15000, 9692000, ' Jagorawi ', '2021-10-13 20:55:55', 'Transaksi Berhasil'),
(54, ' RFID ', ' Udin Ahmad Putra ', 9692000, 15000, 9677000, ' Jagorawi ', '2021-10-20 20:55:56', 'Transaksi Berhasil'),
(55, ' RFID ', ' Udin Ahmad Putra ', 9677000, 15000, 9662000, ' Jagorawi ', '2021-10-27 20:55:56', 'Transaksi Berhasil'),
(56, ' RFID ', ' Udin Ahmad Putra ', 9662000, 15000, 9647000, ' Jagorawi ', '2021-11-01 20:55:56', 'Transaksi Berhasil'),
(57, ' RFID ', ' Udin Ahmad Putra ', 9647000, 15000, 9632000, ' Jagorawi ', '2021-11-08 20:55:57', 'Transaksi Berhasil'),
(58, ' RFID ', ' Udin Ahmad Putra ', 9632000, 15000, 9617000, ' Jagorawi ', '2021-11-15 20:55:57', 'Transaksi Berhasil'),
(59, ' RFID ', ' Udin Ahmad Putra ', 9617000, 15000, 9602000, ' Jagorawi ', '2021-11-22 20:55:58', 'Transaksi Berhasil'),
(60, ' RFID ', ' Udin Ahmad Putra ', 9602000, 15000, 9587000, ' Jagorawi ', '2021-11-29 20:55:58', 'Transaksi Berhasil'),
(61, ' RFID ', ' Udin Ahmad Putra ', 9587000, 15000, 9572000, ' Jagorawi ', '2021-12-15 20:55:58', 'Transaksi Berhasil'),
(62, ' RFID ', ' Udin Ahmad Putra ', 9572000, 15000, 9557000, ' Jagorawi ', '2021-12-15 20:55:59', 'Transaksi Berhasil'),
(63, ' RFID ', ' Udin Ahmad Putra ', 9557000, 15000, 9542000, ' Jagorawi ', '2021-12-15 20:56:18', 'Transaksi Berhasil'),
(64, ' RFID ', ' Udin Ahmad Putra ', 9542000, 15000, 9527000, ' Jagorawi ', '2021-12-15 22:04:34', 'Transaksi Berhasil'),
(65, 'RFID', ' Udin Ahmad Putra ', 9527000, 15000, 9512000, ' Jagorawi', '2021-12-15 22:51:24', 'Transaksi Berhasil'),
(68, 'RFID', ' Udin Ahmad Putra ', 9512000, 15000, 9497000, ' Jagorawi', '2021-12-18 12:07:42', 'Transaksi Berhasil'),
(69, 'RFID', ' Udin Ahmad Putra ', 9497000, 15000, 9482000, ' Jagorawi', '2021-12-18 12:09:30', 'Transaksi Berhasil'),
(70, 'RFID', ' Udin Ahmad Putra ', 9482000, 15000, 9467000, ' Jagorawi', '2021-12-18 12:10:47', 'Transaksi Berhasil'),
(71, 'RFID', ' Udin Ahmad Putra ', 9467000, 15000, 9452000, ' Jagorawi', '2021-12-18 12:12:13', 'Transaksi Berhasil'),
(72, 'RFID', ' Udin Ahmad Putra ', 9452000, 15000, 9437000, ' Jagorawi', '2021-12-18 12:13:47', 'Transaksi Berhasil'),
(73, 'RFID', ' Udin Ahmad Putra ', 9437000, 15000, 9422000, ' Jagorawi', '2021-12-20 07:49:21', 'Transaksi Berhasil'),
(74, 'RFID', ' Udin Ahmad Putra ', 9422000, 15000, 9407000, ' Jagorawi', '2021-12-20 07:59:41', 'Transaksi Berhasil'),
(75, 'RFID', ' Udin Ahmad Putra ', 9407000, 15000, 9392000, ' Jagorawi', '2021-12-20 08:00:26', 'Transaksi Berhasil'),
(76, 'RFID', ' Udin Ahmad Putra ', 9392000, 15000, 9377000, ' Jagorawi', '2021-12-20 08:00:52', 'Transaksi Berhasil'),
(77, 'RFID', ' Udin Ahmad Putra ', 9377000, 15000, 9362000, ' Jagorawi', '2021-12-20 08:07:35', 'Transaksi Berhasil'),
(78, 'RFID', ' Udin Ahmad Putra ', 9362000, 15000, 9347000, ' Jagorawi', '2021-12-20 08:08:44', 'Transaksi Berhasil'),
(79, 'RFID', ' Udin Ahmad Putra ', 9347000, 15000, 9332000, ' Jagorawi', '2021-12-20 08:19:09', 'Transaksi Berhasil'),
(80, 'RFID', ' Udin Ahmad Putra ', 9332000, 15000, 9317000, ' Jagorawi', '2021-12-20 08:35:32', 'Transaksi Berhasil'),
(81, 'RFID', ' Udin Ahmad Putra ', 9317000, 15000, 9302000, ' Jagorawi', '2021-12-20 10:35:40', 'Transaksi Berhasil'),
(82, 'RFID', ' Udin Ahmad Putra ', 9302000, 15000, 9287000, ' Jagorawi', '2021-12-20 10:42:00', 'Transaksi Berhasil'),
(83, 'RFID', ' Udin Ahmad Putra ', 9287000, 15000, 9272000, ' Jagorawi', '2021-12-20 10:42:02', 'Transaksi Berhasil'),
(84, 'RFID', ' Udin Ahmad Putra ', 9272000, 15000, 9257000, ' Jagorawi', '2021-12-20 10:42:34', 'Transaksi Berhasil'),
(85, 'RFID', ' Udin Ahmad Putra ', 9257000, 15000, 9242000, ' Jagorawi', '2021-12-20 10:43:03', 'Transaksi Berhasil'),
(86, 'RFID', ' Udin Ahmad Putra ', 9242000, 15000, 9227000, ' Jagorawi', '2021-12-20 10:44:17', 'Transaksi Berhasil'),
(87, 'RFID', ' Udin Ahmad Putra ', 9227000, 15000, 9212000, ' Jagorawi', '2021-12-20 10:45:11', 'Transaksi Berhasil'),
(88, 'RFID', ' Udin Ahmad Putra ', 9212000, 15000, 9197000, ' Jagorawi', '2021-12-20 10:49:26', 'Transaksi Berhasil'),
(89, 'RFID', 'Udin Ahmad Putra', 9197000, 15000, 9182000, 'Jagorawi', '2021-12-20 10:54:26', 'Transaksi Berhasil'),
(90, 'RFID', 'Udin Ahmad Putra', 9182000, 15000, 9167000, 'Jagorawi', '2021-12-20 10:56:47', 'Transaksi Berhasil'),
(91, 'RFID', 'Udin Ahmad Putra', 9167000, 15000, 9152000, 'Jagorawi', '2021-12-20 10:57:33', 'Transaksi Berhasil'),
(92, 'RFID', 'Udin Ahmad Putra', 9152000, 15000, 9137000, 'Jagorawi', '2021-12-20 11:03:01', 'Transaksi Berhasil'),
(93, 'RFID', 'Udin Ahmad Putra', 9137000, 15000, 9122000, 'Jagorawi', '2021-12-20 11:03:13', 'Transaksi Berhasil'),
(94, 'RFID', 'Udin Ahmad Putra', 9122000, 15000, 9107000, 'Jagorawi', '2021-12-20 11:03:15', 'Transaksi Berhasil'),
(95, 'RFID', 'Udin Ahmad Putra', 9107000, 15000, 9092000, 'Jagorawi', '2021-12-20 11:03:40', 'Transaksi Berhasil'),
(96, 'RFID', 'Udin Ahmad Putra', 9092000, 15000, 9077000, 'Jagorawi', '2021-12-20 11:12:10', 'Transaksi Berhasil'),
(97, 'RFID', 'Udin Ahmad Putra', 9077000, 15000, 9062000, 'Jagorawi', '2021-12-20 11:13:00', 'Transaksi Berhasil'),
(98, 'RFID', 'Udin Ahmad Putra', 9062000, 15000, 9047000, 'Jagorawi', '2021-12-20 12:08:09', 'Transaksi Berhasil'),
(99, 'RFID', 'Udin Ahmad Putra', 9047000, 15000, 9032000, 'Jagorawi', '2021-12-20 12:08:13', 'Transaksi Berhasil'),
(100, 'C79D884A', 'zani', 50000, 15000, 35000, 'Jagorawi', '2021-12-20 13:06:36', 'Transaksi Berhasil'),
(101, 'C79D884A', 'zani', 35000, 15000, 20000, 'Jagorawi', '2021-12-20 13:07:10', 'Transaksi Berhasil'),
(102, 'RFID', 'Udin Ahmad Putra', 9032000, 15000, 9017000, 'Jagorawi', '2021-12-20 13:22:55', 'Transaksi Berhasil'),
(103, 'RFID', 'Udin Ahmad Putra', 9017000, 15000, 9002000, 'Jagorawi', '2021-12-20 13:24:26', 'Transaksi Berhasil'),
(104, 'C79D884A', 'zani', 100020000, 15000, 100005000, 'Jagorawi', '2021-12-20 13:34:07', 'Transaksi Berhasil'),
(105, 'C79D884A', 'zani', 100005000, 15000, 99990000, 'Jagorawi', '2021-12-20 13:35:27', 'Transaksi Berhasil'),
(106, 'C79D884A', 'zani', 99990000, 15000, 99975000, 'Jagorawi', '2021-12-20 13:35:42', 'Transaksi Berhasil'),
(107, 'C79D884A', 'zani', 99975000, 15000, 99960000, 'Jagorawi', '2021-12-20 13:37:55', 'Transaksi Berhasil'),
(108, 'C79D884A', 'zani', 99960000, 15000, 99945000, 'Jagorawi', '2021-12-20 13:40:27', 'Transaksi Berhasil'),
(109, 'C79D884A', 'zani', 99945000, 15000, 99930000, 'Jagorawi', '2021-12-20 13:41:01', 'Transaksi Berhasil'),
(110, 'C79D884A', 'zani', 99930000, 15000, 99915000, 'Jagorawi', '2021-12-20 13:43:38', 'Transaksi Berhasil'),
(111, 'C79D884A', 'zani', 99915000, 15000, 99900000, 'Jagorawi', '2021-12-20 13:45:27', 'Transaksi Berhasil'),
(112, 'C79D884A', 'zani', 99900000, 15000, 99885000, 'Jagorawi', '2021-12-20 13:51:37', 'Transaksi Berhasil'),
(113, 'C79D884A', 'zani', 99885000, 15000, 99870000, 'Jagorawi', '2021-12-20 13:52:35', 'Transaksi Berhasil'),
(114, 'C79D884A', 'zani', 99870000, 15000, 99855000, 'Jagorawi', '2021-12-20 13:52:42', 'Transaksi Berhasil'),
(115, 'C79D884A', 'zani', 99855000, 15000, 99840000, 'Jagorawi', '2021-12-20 13:53:56', 'Transaksi Berhasil'),
(116, 'C79D884A', 'zani', 99840000, 15000, 99825000, 'Jagorawi', '2021-12-20 13:55:24', 'Transaksi Berhasil'),
(117, 'C79D884A', 'zani', 99825000, 15000, 99810000, 'Jagorawi', '2021-12-20 14:06:58', 'Transaksi Berhasil'),
(118, 'C79D884A', 'zani', 99810000, 15000, 99795000, 'Jagorawi', '2021-12-20 14:08:08', 'Transaksi Berhasil'),
(119, 'C79D884A', 'zani', 99795000, 15000, 99780000, 'Jagorawi', '2021-12-20 14:08:23', 'Transaksi Berhasil'),
(120, 'C79D884A', 'zani', 99780000, 15000, 99765000, 'Jagorawi', '2021-12-20 14:08:38', 'Transaksi Berhasil'),
(121, 'C79D884A', 'zani', 99765000, 15000, 99750000, 'Jagorawi', '2021-12-20 14:08:44', 'Transaksi Berhasil'),
(122, 'C79D884A', 'zani', 99750000, 15000, 99735000, 'Jagorawi', '2021-12-20 14:09:02', 'Transaksi Berhasil'),
(123, 'C79D884A', 'zani', 99735000, 15000, 99720000, 'Jagorawi', '2021-12-20 14:09:11', 'Transaksi Berhasil'),
(124, 'C79D884A', 'zani', 99720000, 15000, 99705000, 'Jagorawi', '2021-12-20 14:09:19', 'Transaksi Berhasil'),
(125, 'C79D884A', 'zani', 99705000, 15000, 99690000, 'Jagorawi', '2021-12-20 14:09:24', 'Transaksi Berhasil'),
(126, 'C79D884A', 'zani', 99690000, 15000, 99675000, 'Jagorawi', '2021-12-20 14:09:38', 'Transaksi Berhasil'),
(127, 'C79D884A', 'zani', 99675000, 15000, 99660000, 'Jagorawi', '2021-12-20 14:09:49', 'Transaksi Berhasil'),
(128, 'C79D884A', 'zani', 99660000, 15000, 99645000, 'Jagorawi', '2021-12-20 14:09:57', 'Transaksi Berhasil'),
(129, 'C79D884A', 'zani', 99645000, 15000, 99630000, 'Jagorawi', '2021-12-21 06:29:36', 'Transaksi Berhasil'),
(130, 'C79D884A', 'zani', 99630000, 15000, 99615000, 'Jagorawi', '2021-12-21 06:29:59', 'Transaksi Berhasil'),
(131, 'C79D884A', 'zani', 99615000, 15000, 99600000, 'Jagorawi', '2021-12-21 06:30:08', 'Transaksi Berhasil'),
(132, 'C79D884A', 'zani', 99600000, 15000, 99585000, 'Jagorawi', '2021-12-21 06:30:59', 'Transaksi Berhasil'),
(133, 'C79D884A', 'zani', 99585000, 15000, 99570000, 'Jagorawi', '2021-12-21 06:31:33', 'Transaksi Berhasil'),
(134, 'C79D884A', 'zani', 99570000, 15000, 99555000, 'Jagorawi', '2021-12-21 06:31:39', 'Transaksi Berhasil'),
(135, 'C79D884A', 'zani', 99555000, 15000, 99540000, 'Jagorawi', '2021-12-21 06:31:48', 'Transaksi Berhasil'),
(136, 'C79D884A', 'zani', 100000, 15000, 85000, 'Jagorawi', '2021-12-21 06:33:51', 'Transaksi Berhasil'),
(137, 'C79D884A', 'zani', 85000, 15000, 70000, 'Jagorawi', '2021-12-21 06:34:03', 'Transaksi Berhasil'),
(138, 'C79D884A', 'zani', 70000, 15000, 55000, 'Jagorawi', '2021-12-21 06:34:08', 'Transaksi Berhasil'),
(139, 'C79D884A', 'zani', 55000, 15000, 40000, 'Jagorawi', '2021-12-21 06:34:26', 'Transaksi Berhasil'),
(140, 'C79D884A', 'zani', 40000, 15000, 25000, 'Jagorawi', '2021-12-21 06:34:55', 'Transaksi Berhasil'),
(141, 'C79D884A', 'zani', 2500000, 15000, 2485000, 'Jagorawi', '2021-12-21 06:37:05', 'Transaksi Berhasil'),
(142, 'C79D884A', 'zani', 2485000, 15000, 2470000, 'Jagorawi', '2021-12-21 06:38:08', 'Transaksi Berhasil'),
(143, 'C79D884A', 'zani', 2470000, 15000, 2455000, 'Jagorawi', '2021-12-21 06:39:12', 'Transaksi Berhasil'),
(144, 'C79D884A', 'zani', 2455000, 15000, 2440000, 'Jagorawi', '2021-12-21 06:39:21', 'Transaksi Berhasil'),
(145, 'C79D884A', 'zani', 2440000, 15000, 2425000, 'Jagorawi', '2021-12-21 06:40:11', 'Transaksi Berhasil'),
(146, 'C79D884A', 'zani', 1000000, 15000, 985000, 'Jagorawi', '2021-12-21 06:42:50', 'Transaksi Berhasil'),
(147, 'C79D884A', 'zani', 985000, 15000, 970000, 'Jagorawi', '2021-12-21 06:43:12', 'Transaksi Berhasil'),
(148, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 07:26:20', 'Transaksi Berhasil'),
(149, 'C79D884A', 'zani', 1500000, 15000, 1485000, 'Jagorawi', '2021-12-21 07:36:24', 'Transaksi Berhasil'),
(150, 'C79D884A', 'zani', 1000000, 15000, 985000, 'Jagorawi', '2021-12-21 07:38:58', 'Transaksi Berhasil'),
(151, 'C79D884A', 'zani', 985000, 15000, 970000, 'Jagorawi', '2021-12-21 07:40:37', 'Transaksi Berhasil'),
(152, 'C79D884A', 'zani', 970000, 15000, 955000, 'Jagorawi', '2021-12-21 07:41:08', 'Transaksi Berhasil'),
(153, 'C79D884A', 'zani', 955000, 15000, 940000, 'Jagorawi', '2021-12-21 07:42:52', 'Transaksi Berhasil'),
(154, 'C79D884A', 'zani', 940000, 15000, 925000, 'Jagorawi', '2021-12-21 07:43:01', 'Transaksi Berhasil'),
(155, 'C79D884A', 'zani', 925000, 15000, 910000, 'Jagorawi', '2021-12-21 07:43:05', 'Transaksi Berhasil'),
(156, 'C79D884A', 'zani', 910000, 15000, 895000, 'Jagorawi', '2021-12-21 07:43:14', 'Transaksi Berhasil'),
(157, 'C79D884A', 'zani', 895000, 15000, 880000, 'Jagorawi', '2021-12-21 07:43:26', 'Transaksi Berhasil'),
(158, 'C79D884A', 'zani', 880000, 15000, 865000, 'Jagorawi', '2021-12-21 07:43:37', 'Transaksi Berhasil'),
(159, 'C79D884A', 'zani', 865000, 15000, 850000, 'Jagorawi', '2021-12-21 07:43:58', 'Transaksi Berhasil'),
(160, 'C79D884A', 'zani', 850000, 15000, 835000, 'Jagorawi', '2021-12-21 07:45:16', 'Transaksi Berhasil'),
(161, 'C79D884A', 'zani', 835000, 15000, 820000, 'Jagorawi', '2021-12-21 07:45:30', 'Transaksi Berhasil'),
(162, 'C79D884A', 'zani', 820000, 15000, 805000, 'Jagorawi', '2021-12-21 07:45:35', 'Transaksi Berhasil'),
(163, 'C79D884A', 'zani', 805000, 15000, 790000, 'Jagorawi', '2021-12-21 07:45:40', 'Transaksi Berhasil'),
(164, 'C79D884A', 'zani', 790000, 15000, 775000, 'Jagorawi', '2021-12-21 07:45:53', 'Transaksi Berhasil'),
(165, 'C79D884A', 'zani', 775000, 15000, 760000, 'Jagorawi', '2021-12-21 07:46:03', 'Transaksi Berhasil'),
(166, 'C79D884A', 'zani', 760000, 15000, 745000, 'Jagorawi', '2021-12-21 07:46:21', 'Transaksi Berhasil'),
(167, 'C79D884A', 'zani', 745000, 15000, 730000, 'Jagorawi', '2021-12-21 07:46:33', 'Transaksi Berhasil'),
(168, 'C79D884A', 'zani', 730000, 15000, 715000, 'Jagorawi', '2021-12-21 07:46:39', 'Transaksi Berhasil'),
(169, 'C79D884A', 'zani', 715000, 15000, 700000, 'Jagorawi', '2021-12-21 07:46:43', 'Transaksi Berhasil'),
(170, 'C79D884A', 'zani', 700000, 15000, 685000, 'Jagorawi', '2021-12-21 07:47:05', 'Transaksi Berhasil'),
(171, 'C79D884A', 'zani', 685000, 15000, 670000, 'Jagorawi', '2021-12-21 07:51:05', 'Transaksi Berhasil'),
(172, 'C79D884A', 'zani', 670000, 15000, 655000, 'Jagorawi', '2021-12-21 07:51:13', 'Transaksi Berhasil'),
(173, 'C79D884A', 'zani', 655000, 15000, 640000, 'Jagorawi', '2021-12-21 07:51:19', 'Transaksi Berhasil'),
(174, 'C79D884A', 'zani', 640000, 15000, 625000, 'Jagorawi', '2021-12-21 07:51:26', 'Transaksi Berhasil'),
(175, 'C79D884A', 'zani', 625000, 15000, 610000, 'Jagorawi', '2021-12-21 07:53:22', 'Transaksi Berhasil'),
(176, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 08:32:33', 'Transaksi Berhasil'),
(177, 'C79D884A', 'zani', 100000, 15000, 85000, 'Jagorawi', '2021-12-21 08:36:41', 'Transaksi Berhasil'),
(178, 'C79D884A', 'zani', 85000, 15000, 70000, 'Jagorawi', '2021-12-21 08:36:47', 'Transaksi Berhasil'),
(179, 'C79D884A', 'zani', 70000, 15000, 55000, 'Jagorawi', '2021-12-21 08:36:53', 'Transaksi Berhasil'),
(180, 'C79D884A', 'zani', 55000, 15000, 40000, 'Jagorawi', '2021-12-21 08:37:58', 'Transaksi Berhasil'),
(181, 'C79D884A', 'zani', 40000, 15000, 25000, 'Jagorawi', '2021-12-21 08:38:13', 'Transaksi Berhasil'),
(182, 'C79D884A', 'zani', 250000, 15000, 235000, 'Jagorawi', '2021-12-21 08:46:55', 'Transaksi Berhasil'),
(183, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 08:48:45', 'Transaksi Berhasil'),
(184, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 08:50:10', 'Transaksi Berhasil'),
(185, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 08:50:34', 'Transaksi Berhasil'),
(186, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 08:51:36', 'Transaksi Berhasil'),
(187, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 08:53:49', 'Transaksi Berhasil'),
(188, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 08:55:25', 'Transaksi Berhasil'),
(189, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 08:57:28', 'Transaksi Berhasil'),
(190, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 09:02:42', 'Transaksi Berhasil'),
(191, 'C79D884A', 'zani', 150000, 15000, 135000, 'Jagorawi', '2021-12-21 09:03:51', 'Transaksi Berhasil'),
(192, 'C79D884A', 'zani', 135000, 15000, 120000, 'Jagorawi', '2021-12-21 09:04:01', 'Transaksi Berhasil'),
(193, 'C79D884A', 'zani', 120000, 15000, 105000, 'Jagorawi', '2021-12-21 09:04:09', 'Transaksi Berhasil'),
(194, 'C79D884A', 'zani', 105000, 15000, 90000, 'Jagorawi', '2021-12-21 09:04:38', 'Transaksi Berhasil'),
(195, 'C79D884A', 'zani', 90000, 15000, 75000, 'Jagorawi', '2021-12-21 09:07:42', 'Transaksi Berhasil'),
(196, 'C79D884A', 'zani', 75000, 15000, 60000, 'Jagorawi', '2021-12-21 09:07:49', 'Transaksi Berhasil'),
(197, 'C79D884A', 'zani', 60000, 15000, 45000, 'Jagorawi', '2021-12-21 09:07:59', 'Transaksi Berhasil'),
(198, 'C79D884A', 'zani', 45000, 15000, 30000, 'Jagorawi', '2021-12-21 09:10:34', 'Transaksi Berhasil'),
(199, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 09:11:02', 'Transaksi Berhasil'),
(200, 'C79D884A', 'zani', 150000, 15000, 135000, 'Jagorawi', '2021-12-21 09:13:30', 'Transaksi Berhasil'),
(201, 'C79D884A', 'zani', 135000, 15000, 120000, 'Jagorawi', '2021-12-21 09:17:21', 'Transaksi Berhasil'),
(202, 'C79D884A', 'zani', 120000, 15000, 105000, 'Jagorawi', '2021-12-21 09:20:50', 'Transaksi Berhasil'),
(203, 'C79D884A', 'zani', 105000, 15000, 90000, 'Jagorawi', '2021-12-21 09:21:00', 'Transaksi Berhasil'),
(204, 'C79D884A', 'zani', 90000, 15000, 75000, 'Jagorawi', '2021-12-21 09:21:10', 'Transaksi Berhasil'),
(205, 'C79D884A', 'zani', 75000, 15000, 60000, 'Jagorawi', '2021-12-21 09:21:25', 'Transaksi Berhasil'),
(206, 'C79D884A', 'zani', 60000, 15000, 45000, 'Jagorawi', '2021-12-21 09:25:30', 'Transaksi Berhasil'),
(207, 'C79D884A', 'zani', 45000, 15000, 30000, 'Jagorawi', '2021-12-21 09:31:37', 'Transaksi Berhasil'),
(208, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 09:32:56', 'Transaksi Berhasil'),
(209, 'C79D884A', 'zani', 150000, 15000, 135000, 'Jagorawi', '2021-12-21 09:34:46', 'Transaksi Berhasil'),
(210, 'C79D884A', 'zani', 135000, 15000, 120000, 'Jagorawi', '2021-12-21 09:34:50', 'Transaksi Berhasil'),
(211, 'C79D884A', 'zani', 120000, 15000, 105000, 'Jagorawi', '2021-12-21 09:34:54', 'Transaksi Berhasil'),
(212, 'C79D884A', 'zani', 105000, 15000, 90000, 'Jagorawi', '2021-12-21 09:36:27', 'Transaksi Berhasil'),
(213, 'C79D884A', 'zani', 90000, 15000, 75000, 'Jagorawi', '2021-12-21 09:38:31', 'Transaksi Berhasil'),
(214, 'C79D884A', 'zani', 75000, 15000, 60000, 'Jagorawi', '2021-12-21 09:38:38', 'Transaksi Berhasil'),
(215, 'C79D884A', 'zani', 60000, 15000, 45000, 'Jagorawi', '2021-12-21 09:39:21', 'Transaksi Berhasil'),
(216, 'C79D884A', 'zani', 45000, 15000, 30000, 'Jagorawi', '2021-12-21 09:46:33', 'Transaksi Berhasil'),
(217, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 09:48:05', 'Transaksi Berhasil'),
(218, 'C79D884A', 'zani', 1500000, 15000, 1485000, 'Jagorawi', '2021-12-21 09:50:30', 'Transaksi Berhasil'),
(219, 'C79D884A', 'zani', 1485000, 15000, 1470000, 'Jagorawi', '2021-12-21 09:51:01', 'Transaksi Berhasil'),
(220, 'C79D884A', 'zani', 1470000, 15000, 1455000, 'Jagorawi', '2021-12-21 09:51:11', 'Transaksi Berhasil'),
(221, 'C79D884A', 'zani', 1455000, 15000, 1440000, 'Jagorawi', '2021-12-21 09:51:48', 'Transaksi Berhasil'),
(222, 'C79D884A', 'zani', 1440000, 15000, 1425000, 'Jagorawi', '2021-12-21 09:51:58', 'Transaksi Berhasil'),
(223, 'C79D884A', 'zani', 1425000, 15000, 1410000, 'Jagorawi', '2021-12-21 09:52:09', 'Transaksi Berhasil'),
(224, 'C79D884A', 'zani', 1410000, 15000, 1395000, 'Jagorawi', '2021-12-21 09:53:24', 'Transaksi Berhasil'),
(225, 'C79D884A', 'zani', 1395000, 15000, 1380000, 'Jagorawi', '2021-12-21 09:53:30', 'Transaksi Berhasil'),
(226, 'C79D884A', 'zani', 1380000, 15000, 1365000, 'Jagorawi', '2021-12-21 09:53:38', 'Transaksi Berhasil'),
(227, 'C79D884A', 'zani', 1365000, 15000, 1350000, 'Jagorawi', '2021-12-21 09:53:47', 'Transaksi Berhasil'),
(228, 'C79D884A', 'zani', 1350000, 15000, 1335000, 'Jagorawi', '2021-12-21 09:56:04', 'Transaksi Berhasil'),
(229, 'C79D884A', 'zani', 1335000, 15000, 1320000, 'Jagorawi', '2021-12-21 09:56:18', 'Transaksi Berhasil'),
(230, 'C79D884A', 'zani', 1320000, 15000, 1305000, 'Jagorawi', '2021-12-21 10:01:29', 'Transaksi Berhasil'),
(231, 'C79D884A', 'zani', 1305000, 15000, 1290000, 'Jagorawi', '2021-12-21 10:01:48', 'Transaksi Berhasil'),
(232, 'C79D884A', 'zani', 1290000, 15000, 1275000, 'Jagorawi', '2021-12-21 10:01:51', 'Transaksi Berhasil'),
(233, 'C79D884A', 'zani', 1275000, 15000, 1260000, 'Jagorawi', '2021-12-21 10:02:04', 'Transaksi Berhasil'),
(234, 'C79D884A', 'zani', 1260000, 15000, 1245000, 'Jagorawi', '2021-12-21 10:02:45', 'Transaksi Berhasil'),
(235, 'C79D884A', 'zani', 1245000, 15000, 1230000, 'Jagorawi', '2021-12-21 10:03:09', 'Transaksi Berhasil'),
(236, 'C79D884A', 'zani', 1230000, 15000, 1215000, 'Jagorawi', '2021-12-21 10:06:56', 'Transaksi Berhasil'),
(237, 'C79D884A', 'zani', 1215000, 15000, 1200000, 'Jagorawi', '2021-12-21 10:08:31', 'Transaksi Berhasil'),
(238, 'C79D884A', 'zani', 1200000, 15000, 1185000, 'Jagorawi', '2021-12-21 10:10:14', 'Transaksi Berhasil'),
(239, 'C79D884A', 'zani', 1185000, 15000, 1170000, 'Jagorawi', '2021-12-21 10:10:19', 'Transaksi Berhasil'),
(240, 'C79D884A', 'zani', 1170000, 15000, 1155000, 'Jagorawi', '2021-12-21 10:11:46', 'Transaksi Berhasil'),
(241, 'C79D884A', 'zani', 1155000, 15000, 1140000, 'Jagorawi', '2021-12-21 10:11:54', 'Transaksi Berhasil'),
(242, 'C79D884A', 'zani', 1140000, 15000, 1125000, 'Jagorawi', '2021-12-21 10:12:03', 'Transaksi Berhasil'),
(243, 'C79D884A', 'zani', 1125000, 15000, 1110000, 'Jagorawi', '2021-12-21 10:12:10', 'Transaksi Berhasil'),
(244, 'C79D884A', 'zani', 1110000, 15000, 1095000, 'Jagorawi', '2021-12-21 10:12:24', 'Transaksi Berhasil'),
(245, 'C79D884A', 'zani', 1095000, 15000, 1080000, 'Jagorawi', '2021-12-21 10:12:29', 'Transaksi Berhasil'),
(246, 'C79D884A', 'zani', 1080000, 15000, 1065000, 'Jagorawi', '2021-12-21 10:12:38', 'Transaksi Berhasil'),
(247, 'C79D884A', 'zani', 1065000, 15000, 1050000, 'Jagorawi', '2021-12-21 10:12:44', 'Transaksi Berhasil'),
(248, 'C79D884A', 'zani', 1050000, 15000, 1035000, 'Jagorawi', '2021-12-21 10:12:49', 'Transaksi Berhasil'),
(249, 'C79D884A', 'zani', 1035000, 15000, 1020000, 'Jagorawi', '2021-12-21 10:12:54', 'Transaksi Berhasil'),
(250, 'C79D884A', 'zani', 1020000, 15000, 1005000, 'Jagorawi', '2021-12-21 10:13:00', 'Transaksi Berhasil'),
(251, 'C79D884A', 'zani', 1005000, 15000, 990000, 'Jagorawi', '2021-12-21 10:13:08', 'Transaksi Berhasil'),
(252, 'C79D884A', 'zani', 990000, 15000, 975000, 'Jagorawi', '2021-12-21 10:13:20', 'Transaksi Berhasil'),
(253, 'C79D884A', 'zani', 975000, 15000, 960000, 'Jagorawi', '2021-12-21 10:13:28', 'Transaksi Berhasil'),
(254, 'C79D884A', 'zani', 960000, 15000, 945000, 'Jagorawi', '2021-12-21 10:13:38', 'Transaksi Berhasil'),
(255, 'C79D884A', 'zani', 945000, 15000, 930000, 'Jagorawi', '2021-12-21 10:13:44', 'Transaksi Berhasil'),
(256, 'C79D884A', 'zani', 930000, 15000, 915000, 'Jagorawi', '2021-12-21 10:13:48', 'Transaksi Berhasil'),
(257, 'C79D884A', 'zani', 915000, 15000, 900000, 'Jagorawi', '2021-12-21 10:14:53', 'Transaksi Berhasil'),
(258, 'C79D884A', 'zani', 900000, 15000, 885000, 'Jagorawi', '2021-12-21 10:15:01', 'Transaksi Berhasil'),
(259, 'C79D884A', 'zani', 885000, 15000, 870000, 'Jagorawi', '2021-12-21 10:15:08', 'Transaksi Berhasil'),
(260, 'C79D884A', 'zani', 870000, 15000, 855000, 'Jagorawi', '2021-12-21 10:15:22', 'Transaksi Berhasil'),
(261, 'C79D884A', 'zani', 855000, 15000, 840000, 'Jagorawi', '2021-12-21 10:16:16', 'Transaksi Berhasil'),
(262, 'C79D884A', 'zani', 840000, 15000, 825000, 'Jagorawi', '2021-12-21 10:16:21', 'Transaksi Berhasil'),
(263, 'C79D884A', 'zani', 825000, 15000, 810000, 'Jagorawi', '2021-12-21 10:17:37', 'Transaksi Berhasil'),
(264, 'C79D884A', 'zani', 810000, 15000, 795000, 'Jagorawi', '2021-12-21 10:17:45', 'Transaksi Berhasil'),
(265, 'C79D884A', 'zani', 795000, 15000, 780000, 'Jagorawi', '2021-12-21 10:17:50', 'Transaksi Berhasil'),
(266, 'C79D884A', 'zani', 780000, 15000, 765000, 'Jagorawi', '2021-12-21 10:17:54', 'Transaksi Berhasil'),
(267, 'C79D884A', 'zani', 765000, 15000, 750000, 'Jagorawi', '2021-12-21 10:18:01', 'Transaksi Berhasil'),
(268, 'C79D884A', 'zani', 750000, 15000, 735000, 'Jagorawi', '2021-12-21 10:18:08', 'Transaksi Berhasil'),
(269, 'C79D884A', 'zani', 735000, 15000, 720000, 'Jagorawi', '2021-12-21 10:18:13', 'Transaksi Berhasil'),
(270, 'C79D884A', 'zani', 720000, 15000, 705000, 'Jagorawi', '2021-12-21 10:18:18', 'Transaksi Berhasil'),
(271, 'C79D884A', 'zani', 705000, 15000, 690000, 'Jagorawi', '2021-12-21 10:18:55', 'Transaksi Berhasil'),
(272, 'C79D884A', 'zani', 690000, 15000, 675000, 'Jagorawi', '2021-12-21 10:18:59', 'Transaksi Berhasil'),
(273, 'C79D884A', 'zani', 675000, 15000, 660000, 'Jagorawi', '2021-12-21 10:19:03', 'Transaksi Berhasil'),
(274, 'C79D884A', 'zani', 660000, 15000, 645000, 'Jagorawi', '2021-12-21 10:19:07', 'Transaksi Berhasil'),
(275, 'C79D884A', 'zani', 645000, 15000, 630000, 'Jagorawi', '2021-12-21 10:19:12', 'Transaksi Berhasil'),
(276, 'C79D884A', 'zani', 630000, 15000, 615000, 'Jagorawi', '2021-12-21 10:19:18', 'Transaksi Berhasil'),
(277, 'C79D884A', 'zani', 615000, 15000, 600000, 'Jagorawi', '2021-12-21 10:19:23', 'Transaksi Berhasil'),
(278, 'C79D884A', 'zani', 600000, 15000, 585000, 'Jagorawi', '2021-12-21 10:19:55', 'Transaksi Berhasil'),
(279, 'C79D884A', 'zani', 585000, 15000, 570000, 'Jagorawi', '2021-12-21 10:20:20', 'Transaksi Berhasil'),
(280, 'C79D884A', 'zani', 570000, 15000, 555000, 'Jagorawi', '2021-12-21 10:20:50', 'Transaksi Berhasil'),
(281, 'C79D884A', 'zani', 555000, 15000, 540000, 'Jagorawi', '2021-12-21 10:21:00', 'Transaksi Berhasil'),
(282, 'C79D884A', 'zani', 540000, 15000, 525000, 'Jagorawi', '2021-12-21 10:21:07', 'Transaksi Berhasil'),
(283, 'C79D884A', 'zani', 525000, 15000, 510000, 'Jagorawi', '2021-12-21 10:21:12', 'Transaksi Berhasil'),
(284, 'C79D884A', 'zani', 510000, 15000, 495000, 'Jagorawi', '2021-12-21 10:21:41', 'Transaksi Berhasil'),
(285, 'C79D884A', 'zani', 495000, 15000, 480000, 'Jagorawi', '2021-12-21 10:21:49', 'Transaksi Berhasil'),
(286, 'C79D884A', 'zani', 480000, 15000, 465000, 'Jagorawi', '2021-12-21 10:21:54', 'Transaksi Berhasil'),
(287, 'C79D884A', 'zani', 465000, 15000, 450000, 'Jagorawi', '2021-12-21 10:22:05', 'Transaksi Berhasil'),
(288, 'C79D884A', 'zani', 450000, 15000, 435000, 'Jagorawi', '2021-12-21 10:22:13', 'Transaksi Berhasil'),
(289, 'C79D884A', 'zani', 435000, 15000, 420000, 'Jagorawi', '2021-12-21 10:22:24', 'Transaksi Berhasil'),
(290, 'C79D884A', 'zani', 420000, 15000, 405000, 'Jagorawi', '2021-12-21 10:22:53', 'Transaksi Berhasil'),
(291, 'C79D884A', 'zani', 405000, 15000, 390000, 'Jagorawi', '2021-12-21 10:28:31', 'Transaksi Berhasil'),
(292, 'C79D884A', 'zani', 390000, 15000, 375000, 'Jagorawi', '2021-12-21 10:28:40', 'Transaksi Berhasil'),
(293, 'C79D884A', 'zani', 375000, 15000, 360000, 'Jagorawi', '2021-12-21 10:33:16', 'Transaksi Berhasil'),
(294, 'C79D884A', 'zani', 360000, 15000, 345000, 'Jagorawi', '2021-12-21 10:33:27', 'Transaksi Berhasil'),
(295, 'C79D884A', 'zani', 345000, 15000, 330000, 'Jagorawi', '2021-12-21 10:33:39', 'Transaksi Berhasil'),
(296, 'C79D884A', 'zani', 330000, 15000, 315000, 'Jagorawi', '2021-12-21 10:34:57', 'Transaksi Berhasil'),
(297, 'C79D884A', 'zani', 315000, 15000, 300000, 'Jagorawi', '2021-12-21 10:35:06', 'Transaksi Berhasil'),
(298, 'C79D884A', 'zani', 300000, 15000, 285000, 'Jagorawi', '2021-12-21 10:35:14', 'Transaksi Berhasil'),
(299, 'C79D884A', 'zani', 285000, 15000, 270000, 'Jagorawi', '2021-12-21 10:37:06', 'Transaksi Berhasil'),
(300, 'C79D884A', 'zani', 270000, 15000, 255000, 'Jagorawi', '2021-12-21 10:37:32', 'Transaksi Berhasil'),
(301, 'C79D884A', 'zani', 255000, 15000, 240000, 'Jagorawi', '2021-12-21 10:37:38', 'Transaksi Berhasil'),
(302, 'C79D884A', 'zani', 240000, 15000, 225000, 'Jagorawi', '2021-12-21 10:37:48', 'Transaksi Berhasil'),
(303, 'C79D884A', 'zani', 225000, 15000, 210000, 'Jagorawi', '2021-12-21 10:38:25', 'Transaksi Berhasil'),
(304, 'C79D884A', 'zani', 210000, 15000, 195000, 'Jagorawi', '2021-12-21 10:38:32', 'Transaksi Berhasil'),
(305, 'C79D884A', 'zani', 195000, 15000, 180000, 'Jagorawi', '2021-12-21 10:39:58', 'Transaksi Berhasil'),
(306, 'C79D884A', 'zani', 180000, 15000, 165000, 'Jagorawi', '2021-12-21 10:40:24', 'Transaksi Berhasil'),
(307, 'C79D884A', 'zani', 165000, 15000, 150000, 'Jagorawi', '2021-12-21 10:42:03', 'Transaksi Berhasil'),
(308, 'C79D884A', 'zani', 150000, 15000, 135000, 'Jagorawi', '2021-12-21 10:42:07', 'Transaksi Berhasil'),
(309, 'C79D884A', 'zani', 135000, 15000, 120000, 'Jagorawi', '2021-12-21 10:42:11', 'Transaksi Berhasil'),
(310, 'C79D884A', 'zani', 120000, 15000, 105000, 'Jagorawi', '2021-12-21 10:42:28', 'Transaksi Berhasil'),
(311, 'C79D884A', 'zani', 105000, 15000, 90000, 'Jagorawi', '2021-12-21 10:42:31', 'Transaksi Berhasil'),
(312, 'C79D884A', 'zani', 90000, 15000, 75000, 'Jagorawi', '2021-12-21 10:42:35', 'Transaksi Berhasil'),
(313, 'C79D884A', 'zani', 75000, 15000, 60000, 'Jagorawi', '2021-12-21 10:46:13', 'Transaksi Berhasil'),
(314, 'C79D884A', 'zani', 60000, 15000, 45000, 'Jagorawi', '2021-12-21 10:48:09', 'Transaksi Berhasil'),
(315, 'C79D884A', 'zani', 45000, 15000, 30000, 'Jagorawi', '2021-12-21 10:49:15', 'Transaksi Berhasil'),
(316, 'C79D884A', 'zani', 30000, 15000, 15000, 'Jagorawi', '2021-12-21 10:49:25', 'Transaksi Berhasil'),
(317, 'C79D884A', 'zani', 1500000, 15000, 1485000, 'Jagorawi', '2021-12-21 10:59:06', 'Transaksi Berhasil'),
(318, 'C79D884A', 'zani', 1485000, 15000, 1470000, 'Jagorawi', '2021-12-21 11:08:52', 'Transaksi Berhasil'),
(319, 'C79D884A', 'zani', 1470000, 15000, 1455000, 'Jagorawi', '2021-12-21 11:09:16', 'Transaksi Berhasil'),
(320, 'C79D884A', 'zani', 1455000, 15000, 1440000, 'Jagorawi', '2021-12-21 11:11:33', 'Transaksi Berhasil'),
(321, 'C79D884A', 'zani', 1440000, 15000, 1425000, 'Jagorawi', '2021-12-21 11:11:44', 'Transaksi Berhasil'),
(322, 'C79D884A', 'zani', 1425000, 15000, 1410000, 'Jagorawi', '2021-12-21 11:12:11', 'Transaksi Berhasil'),
(323, 'C79D884A', 'zani', 1410000, 15000, 1395000, 'Jagorawi', '2021-12-21 11:12:18', 'Transaksi Berhasil'),
(324, 'C79D884A', 'zani', 1395000, 15000, 1380000, 'Jagorawi', '2021-12-21 11:12:27', 'Transaksi Berhasil'),
(325, 'C79D884A', 'zani', 1380000, 15000, 1365000, 'Jagorawi', '2021-12-21 11:14:58', 'Transaksi Berhasil'),
(326, 'C79D884A', 'zani', 1365000, 15000, 1350000, 'Jagorawi', '2021-12-21 11:15:57', 'Transaksi Berhasil'),
(327, 'C79D884A', 'zani', 1350000, 15000, 1335000, 'Jagorawi', '2021-12-21 11:16:05', 'Transaksi Berhasil'),
(328, 'C79D884A', 'zani', 1335000, 15000, 1320000, 'Jagorawi', '2021-12-21 11:17:04', 'Transaksi Berhasil'),
(329, 'C79D884A', 'zani', 1320000, 15000, 1305000, 'Jagorawi', '2021-12-21 11:17:13', 'Transaksi Berhasil'),
(330, 'C79D884A', 'zani', 1305000, 15000, 1290000, 'Jagorawi', '2021-12-21 11:17:38', 'Transaksi Berhasil'),
(331, 'C79D884A', 'zani', 1290000, 15000, 1275000, 'Jagorawi', '2021-12-21 11:17:57', 'Transaksi Berhasil'),
(332, 'C79D884A', 'zani', 1275000, 15000, 1260000, 'Jagorawi', '2021-12-21 11:18:06', 'Transaksi Berhasil'),
(333, 'C79D884A', 'zani', 1260000, 15000, 1245000, 'Jagorawi', '2021-12-21 11:18:13', 'Transaksi Berhasil'),
(334, 'C79D884A', 'zani', 1245000, 15000, 1230000, 'Jagorawi', '2021-12-21 11:19:59', 'Transaksi Berhasil'),
(335, 'C79D884A', 'zani', 1230000, 15000, 1215000, 'Jagorawi', '2021-12-21 11:20:06', 'Transaksi Berhasil'),
(336, 'C79D884A', 'zani', 1215000, 15000, 1200000, 'Jagorawi', '2021-12-21 11:21:07', 'Transaksi Berhasil'),
(337, 'C79D884A', 'zani', 1200000, 15000, 1185000, 'Jagorawi', '2021-12-21 11:21:17', 'Transaksi Berhasil'),
(338, 'C79D884A', 'zani', 1185000, 15000, 1170000, 'Jagorawi', '2021-12-21 11:21:31', 'Transaksi Berhasil'),
(339, 'C79D884A', 'zani', 1170000, 15000, 1155000, 'Jagorawi', '2021-12-21 11:22:02', 'Transaksi Berhasil'),
(340, 'C79D884A', 'zani', 1155000, 15000, 1140000, 'Jagorawi', '2021-12-21 11:22:55', 'Transaksi Berhasil'),
(341, 'C79D884A', 'zani', 1140000, 15000, 1125000, 'Jagorawi', '2021-12-21 11:23:03', 'Transaksi Berhasil'),
(342, 'C79D884A', 'zani', 1125000, 15000, 1110000, 'Jagorawi', '2021-12-21 11:25:28', 'Transaksi Berhasil'),
(343, 'C79D884A', 'zani', 1110000, 15000, 1095000, 'Jagorawi', '2021-12-21 11:28:18', 'Transaksi Berhasil'),
(344, 'C79D884A', 'zani', 1095000, 15000, 1080000, 'Jagorawi', '2021-12-21 11:28:32', 'Transaksi Berhasil'),
(345, 'C79D884A', 'zani', 1080000, 15000, 1065000, 'Jagorawi', '2021-12-21 11:30:59', 'Transaksi Berhasil'),
(346, 'C79D884A', 'zani', 1065000, 15000, 1050000, 'Jagorawi', '2021-12-21 11:34:36', 'Transaksi Berhasil'),
(347, 'C79D884A', 'zani', 1050000, 15000, 1035000, 'Jagorawi', '2021-12-21 11:34:47', 'Transaksi Berhasil'),
(348, 'C79D884A', 'zani', 1035000, 15000, 1020000, 'Jagorawi', '2021-12-21 11:35:08', 'Transaksi Berhasil'),
(349, 'C79D884A', 'zani', 1020000, 15000, 1005000, 'Jagorawi', '2021-12-21 11:37:13', 'Transaksi Berhasil'),
(350, 'C79D884A', 'zani', 1005000, 15000, 990000, 'Jagorawi', '2021-12-21 11:38:06', 'Transaksi Berhasil'),
(351, 'C79D884A', 'zani', 990000, 15000, 975000, 'Jagorawi', '2021-12-21 11:40:55', 'Transaksi Berhasil'),
(352, 'C79D884A', 'zani', 975000, 15000, 960000, 'Jagorawi', '2021-12-21 11:44:11', 'Transaksi Berhasil'),
(353, 'C79D884A', 'zani', 960000, 15000, 945000, 'Jagorawi', '2021-12-21 11:45:33', 'Transaksi Berhasil'),
(354, 'C79D884A', 'zani', 945000, 15000, 930000, 'Jagorawi', '2021-12-21 11:45:46', 'Transaksi Berhasil'),
(355, 'C79D884A', 'zani', 930000, 15000, 915000, 'Jagorawi', '2021-12-21 11:46:35', 'Transaksi Berhasil'),
(356, 'C79D884A', 'zani', 915000, 15000, 900000, 'Jagorawi', '2021-12-21 12:32:47', 'Transaksi Berhasil'),
(357, 'C79D884A', 'zani', 900000, 15000, 885000, 'Jagorawi', '2021-12-21 12:33:13', 'Transaksi Berhasil'),
(358, 'C79D884A', 'zani', 885000, 15000, 870000, 'Jagorawi', '2021-12-21 12:33:45', 'Transaksi Berhasil'),
(359, 'C79D884A', 'zani', 870000, 15000, 855000, 'Jagorawi', '2021-12-21 12:34:16', 'Transaksi Berhasil'),
(360, 'C79D884A', 'zani', 855000, 15000, 840000, 'Jagorawi', '2021-12-22 07:12:29', 'Transaksi Berhasil'),
(361, 'C79D884A', 'zani', 840000, 15000, 825000, 'Jagorawi', '2021-12-22 07:12:55', 'Transaksi Berhasil'),
(362, 'C79D884A', 'zani', 825000, 15000, 810000, 'Jagorawi', '2021-12-22 07:19:58', 'Transaksi Berhasil'),
(363, 'C79D884A', 'zani', 810000, 15000, 795000, 'Jagorawi', '2021-12-22 07:21:54', 'Transaksi Berhasil'),
(364, 'C79D884A', 'zani', 795000, 15000, 780000, 'Jagorawi', '2021-12-22 07:22:09', 'Transaksi Berhasil'),
(365, 'C79D884A', 'zani', 780000, 15000, 765000, 'Jagorawi', '2021-12-22 07:22:53', 'Transaksi Berhasil'),
(366, 'C79D884A', 'zani', 765000, 15000, 750000, 'Jagorawi', '2021-12-22 07:25:25', 'Transaksi Berhasil'),
(367, 'A3CEB618', 'putri', 50000, 15000, 35000, 'Jagorawi', '2021-12-23 03:20:22', 'Transaksi Berhasil'),
(368, '2C72244A', 'bagus', 70000, 15000, 55000, 'Jagorawi', '2021-12-23 03:35:45', 'Transaksi Berhasil'),
(369, '2C72244A', 'bagus', 55000, 15000, 40000, 'Jagorawi', '2021-12-23 03:36:16', 'Transaksi Berhasil'),
(370, '2C72244A', 'bagus', 40000, 15000, 25000, 'Jagorawi', '2021-12-23 03:36:29', 'Transaksi Berhasil'),
(371, 'A3CEB618', 'putri', 35000, 15000, 20000, 'Jagorawi', '2021-12-23 03:37:47', 'Transaksi Berhasil'),
(372, 'A3CEB618', 'putri', 1020000, 15000, 1005000, 'Jagorawi', '2021-12-23 03:40:55', 'Transaksi Berhasil'),
(373, 'A3CEB618', 'putri', 1005000, 15000, 990000, 'Jagorawi', '2021-12-23 03:42:45', 'Transaksi Berhasil'),
(374, 'A3CEB618', 'putri', 990000, 15000, 975000, 'Jagorawi', '2021-12-23 03:42:50', 'Transaksi Berhasil'),
(375, 'A3CEB618', 'putri', 975000, 15000, 960000, 'Jagorawi', '2021-12-23 03:43:02', 'Transaksi Berhasil'),
(376, 'A3CEB618', 'putri', 960000, 15000, 945000, 'Jagorawi', '2021-12-23 03:45:12', 'Transaksi Berhasil');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id_login`, `username`, `password`, `level`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin'),
(2, 'udin', '0ff6f2c78c3f785fd15525e78e1fe9a223479ed1', 'user'),
(14, 'Agus', '0525885565bb6a150db63f19bf42f11bd2db4702', 'admin'),
(15, 'Budi', '83161a62f22277c65a6cdb7ebc314f218c376c63', 'admin'),
(30, 'alif', '707fb7d2aac6a040c4e13ca3caff4a2ba9c0308d', 'user'),
(31, 'dezan', '16c23252fb6d220c97df0df1571fe8695d444972', 'user'),
(33, 'putri', 'e328dd94fe3c1a738abfc36279a21010b6bb2bf9', 'user'),
(34, 'bagus', 'f81c82b4dc3d90208a3d45363660b7012e35a045', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tb_monitoring`
--

CREATE TABLE `tb_monitoring` (
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rfid` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nama_tol` varchar(100) NOT NULL,
  `saldo` int(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `ceksaldo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_monitoring`
--

INSERT INTO `tb_monitoring` (`tanggal`, `rfid`, `nama`, `nama_tol`, `saldo`, `keterangan`, `ceksaldo`) VALUES
('2021-12-23 03:45:12', 'A3CEB618', 'putri', 'Jagorawi', 945000, 'Transaksi Berhasil', 'cukup');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tol`
--

CREATE TABLE `tb_tol` (
  `id_tol` int(11) NOT NULL,
  `nama_tol` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tol`
--

INSERT INTO `tb_tol` (`id_tol`, `nama_tol`, `harga`) VALUES
(1, 'Jagorawi', 15000),
(4, 'Padalarang', 9000),
(5, 'bandung', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_topup`
--

CREATE TABLE `tb_topup` (
  `id_topup` int(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rfid` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `saldo_awal` int(100) NOT NULL,
  `topup` int(100) NOT NULL,
  `saldo_akhir` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_topup`
--

INSERT INTO `tb_topup` (`id_topup`, `tanggal`, `rfid`, `nama`, `saldo_awal`, `topup`, `saldo_akhir`) VALUES
(6, '2021-12-15 02:50:34', 'RFID', 'Udin Ahmad Putra', 55000, 10000000, 10055000),
(7, '2021-12-15 02:52:53', 'RFIDBARU', 'Mohamad Alif Dzikry', 50000, 100000, 150000),
(8, '2021-12-15 02:53:10', 'RFIDBARU', 'Mohamad Alif Dzikry', 150000, 1000000, 1150000),
(9, '2021-12-19 19:34:02', 'C79D884A', 'zani', 20000, 100000000, 100020000),
(10, '2021-12-22 21:34:48', '2C72244A', 'bagus', 50000, 20000, 70000),
(11, '2021-12-22 21:40:51', 'A3CEB618', 'putri', 20000, 1000000, 1020000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telepon` int(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `saldo` int(100) NOT NULL,
  `rfid` varchar(100) NOT NULL,
  `id_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `telepon`, `alamat`, `saldo`, `rfid`, `id_login`) VALUES
(1, 'Udin Ahmad Putra', 1478147124, 'Komplek DOang', 9002000, 'RFID', 2),
(5, 'Mohamad Alif Dzikry', 2147483647, 'Komplek Padasuka Indah Blok A No 69', 934000, 'RFIDBARU', 30),
(6, 'zani', 280923, 'ksjdhask', 750000, 'C79D884A', 31),
(7, 'putri', 38293218, 'djhaskjd', 945000, 'A3CEB618', 33),
(8, 'bagus', 989382939, 'jakarta', 25000, '2C72244A', 34);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_login` (`id_login`);

--
-- Indexes for table `tb_logdata`
--
ALTER TABLE `tb_logdata`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tb_tol`
--
ALTER TABLE `tb_tol`
  ADD PRIMARY KEY (`id_tol`);

--
-- Indexes for table `tb_topup`
--
ALTER TABLE `tb_topup`
  ADD PRIMARY KEY (`id_topup`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_login` (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_logdata`
--
ALTER TABLE `tb_logdata`
  MODIFY `id_log` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_tol`
--
ALTER TABLE `tb_tol`
  MODIFY `id_tol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_topup`
--
ALTER TABLE `tb_topup`
  MODIFY `id_topup` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD CONSTRAINT `tb_admin_ibfk_1` FOREIGN KEY (`id_login`) REFERENCES `tb_login` (`id_login`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_login`) REFERENCES `tb_login` (`id_login`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
