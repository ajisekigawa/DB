-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Okt 2023 pada 16.59
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mission_ts`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cost_bira`
--

CREATE TABLE `cost_bira` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `bira_kategori` varchar(20) DEFAULT NULL,
  `problem` varchar(100) DEFAULT NULL,
  `countermeasure` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cost_bira`
--

INSERT INTO `cost_bira` (`id`, `tanggal`, `bira_kategori`, `problem`, `countermeasure`, `status`, `due_date`, `pic`, `createdAt`, `updatedAt`) VALUES
(21, '2023-08-02', 'Material', 'Planytewuwe', 'wetrewytrewy', 'On Follow Up', '2023-08-02', 'tri', '2023-08-07 08:13:18', '2023-08-02 11:02:51'),
(22, '2023-08-02', 'Method', 'ewtrewy', 'yeryerwy', 'On Follow Up', '2023-08-02', 'tri', '2023-08-07 08:13:21', '2023-08-02 11:04:10'),
(23, '2023-08-03', 'Machine', 'weyrey', 'ewryutew', 'On Follow Up', '2023-08-04', 'Tri Setyanto', '2023-08-07 08:13:03', '2023-08-03 03:51:07'),
(24, '2023-08-04', 'Man', 'erwyreyreye', '0fdafdsafdsag', 'On Process', '2023-08-08', 'duan', '2023-08-07 08:13:25', '2023-08-03 03:52:20'),
(25, '2023-08-06', 'Man', 'fagfdag', 'gdsagsdgds', 'Proses Perbaikan', '2023-08-07', 'Duan Novanto', '2023-08-07 10:04:22', '2023-08-07 10:04:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cost_main`
--

CREATE TABLE `cost_main` (
  `id` int(10) NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `aktual` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cost_main`
--

INSERT INTO `cost_main` (`id`, `bulan`, `target`, `aktual`, `createdAt`, `updatedAt`) VALUES
(1, 'Januari', 9, 8, '2023-08-27 11:36:31', '2023-08-27 11:36:31'),
(2, 'Februari', 9, 7, '2023-08-27 11:36:40', '2023-08-27 11:36:40'),
(3, 'Maret', 9, 9, '2023-08-27 11:36:48', '2023-08-27 11:36:48'),
(4, 'April', 9, 10, '2023-08-27 11:36:55', '2023-08-27 11:36:55'),
(5, 'Mei', 5, 5, '2023-08-18 03:28:37', '2023-08-18 10:28:36'),
(6, 'Juni', 6, 6, '2023-08-18 03:28:50', '2023-08-18 10:28:51'),
(7, 'Juli', 7, 7, '2023-08-18 03:29:10', '2023-08-18 10:29:08'),
(8, 'Agustus', 8, 8, '2023-08-18 03:29:26', '2023-08-18 10:29:27'),
(9, 'September', 9, 9, '2023-08-18 03:29:44', '2023-08-18 10:29:44'),
(10, 'Oktober', 10, 10, '2023-08-18 03:29:57', '2023-08-18 10:29:57'),
(11, 'November', 11, 11, '2023-08-18 03:30:15', '2023-08-18 10:30:13'),
(12, 'Desember', 12, 12, '2023-08-18 03:30:26', '2023-08-18 10:30:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cost_proses`
--

CREATE TABLE `cost_proses` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `target_patroli` int(11) DEFAULT NULL,
  `aktual_patroli` int(11) DEFAULT NULL,
  `total_temuan` int(11) DEFAULT NULL,
  `verification` varchar(20) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cost_proses`
--

INSERT INTO `cost_proses` (`id`, `tanggal`, `target_patroli`, `aktual_patroli`, `total_temuan`, `verification`, `createdAt`, `updatedAt`) VALUES
(1, '2023-08-01', 1, 1, 2, 'Y', '2023-08-07 14:59:18', '2023-08-07 21:51:41'),
(2, '2023-08-02', 1, 1, 2, NULL, '2023-08-07 15:15:43', '2023-08-07 15:15:43'),
(3, '2023-08-03', 1, 1, 2, '1', '2023-08-07 15:22:42', '2023-08-07 15:22:42'),
(4, '2023-08-04', 1, 1, 2, NULL, '2023-08-07 15:22:59', '2023-08-07 15:22:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cost_sub`
--

CREATE TABLE `cost_sub` (
  `id` int(10) NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `total_temuan` int(11) DEFAULT NULL,
  `total_perbaikan` int(11) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `aktual` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cost_sub`
--

INSERT INTO `cost_sub` (`id`, `bulan`, `total_temuan`, `total_perbaikan`, `target`, `aktual`, `createdAt`, `updatedAt`) VALUES
(1, 'Jan', 2, 4, 2, 4, '2023-08-27 11:06:34', '2023-08-27 11:06:34'),
(2, 'Feb', 3, 3, 0, 0, '2023-08-18 03:42:12', '2023-08-07 14:49:27'),
(3, 'Mar', 2, 3, 2, 2, '2023-08-18 03:42:14', '2023-08-18 10:34:35'),
(4, 'Apr', 4, 4, 4, 4, '2023-08-18 03:42:17', '2023-08-18 10:41:40'),
(5, 'May', 5, 5, 5, 5, '2023-08-18 03:42:19', '2023-08-18 10:41:56'),
(6, 'Jun', 6, 6, 6, 6, '2023-08-18 03:42:28', '2023-08-18 10:42:36'),
(7, 'Jul', 7, 7, 7, 7, '2023-08-18 03:42:56', '2023-08-18 10:42:56'),
(8, 'Aug', 8, 8, 8, 8, '2023-08-18 03:43:08', '2023-08-18 10:43:08'),
(9, 'Sep', 9, 9, 9, 9, '2023-08-18 03:43:22', '2023-08-18 10:43:22'),
(10, 'Oct', 10, 10, 10, 10, '2023-08-18 03:43:39', '2023-08-18 10:43:37'),
(11, 'Nov', 11, 11, 11, 11, '2023-08-18 03:43:57', '2023-08-18 10:43:56'),
(12, 'Dec', 12, 12, 12, 12, '2023-08-18 03:44:11', '2023-08-18 10:44:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `productivity_bira`
--

CREATE TABLE `productivity_bira` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `bira_kategori` varchar(20) DEFAULT NULL,
  `problem` varchar(100) DEFAULT NULL,
  `countermeasure` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `productivity_bira`
--

INSERT INTO `productivity_bira` (`id`, `tanggal`, `bira_kategori`, `problem`, `countermeasure`, `status`, `due_date`, `pic`, `createdAt`, `updatedAt`) VALUES
(21, '2023-08-02', 'Material', 'Planytewuwe', 'wetrewytrewy', 'On Follow Up', '2023-08-02', 'tri', '2023-08-07 08:13:18', '2023-08-02 11:02:51'),
(22, '2023-08-02', 'Method', 'ewtrewy', 'yeryerwy', 'On Follow Up', '2023-08-02', 'tri', '2023-08-07 08:13:21', '2023-08-02 11:04:10'),
(23, '2023-08-03', 'Machine', 'weyrey', 'ewryutew', 'On Follow Up', '2023-08-04', 'Tri Setyanto', '2023-08-07 08:13:03', '2023-08-03 03:51:07'),
(24, '2023-08-04', 'Man', 'erwyreyreye', '0fdafdsafdsag', 'On Process', '2023-08-08', 'duan', '2023-08-07 08:13:25', '2023-08-03 03:52:20'),
(25, '2023-08-06', 'Man', 'fagfdag', 'gdsagsdgds', 'Proses Perbaikan', '2023-08-07', 'Duan Novanto', '2023-08-07 10:04:22', '2023-08-07 10:04:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `productivity_main`
--

CREATE TABLE `productivity_main` (
  `id` int(10) NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `aktual` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `productivity_main`
--

INSERT INTO `productivity_main` (`id`, `bulan`, `target`, `aktual`, `createdAt`, `updatedAt`) VALUES
(1, 'Jan', 6, 8, '2023-08-27 11:04:34', '2023-08-27 11:04:34'),
(2, 'Feb', 2, 2, '2023-08-18 04:17:31', '2023-08-07 14:22:09'),
(3, 'Mar', 3, 3, '2023-08-18 04:04:36', '2023-08-18 11:04:35'),
(4, 'Apr', 4, 4, '2023-08-18 04:04:38', '2023-08-18 11:04:37'),
(5, 'May', 5, 5, '2023-08-18 04:04:44', '2023-08-18 11:04:39'),
(6, 'Jun', 6, 6, '2023-08-18 04:04:45', '2023-08-18 11:04:44'),
(7, 'Jul', 7, 7, '2023-08-18 04:04:46', '2023-08-18 11:04:46'),
(8, 'Aug', 8, 8, '2023-08-18 04:04:48', '2023-08-18 11:04:48'),
(9, 'Sep', 9, 9, '2023-08-18 04:04:50', '2023-08-18 11:04:49'),
(10, 'Oct', 10, 10, '2023-08-18 04:04:51', '2023-08-18 11:04:51'),
(11, 'Nov', 11, 11, '2023-08-18 04:04:53', '2023-08-18 11:04:53'),
(12, 'Dec', 12, 12, '2023-08-18 04:04:55', '2023-08-18 11:04:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `productivity_proses`
--

CREATE TABLE `productivity_proses` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `aktual` int(11) DEFAULT NULL,
  `plan_1` varchar(50) DEFAULT NULL,
  `aktual_1` varchar(50) DEFAULT NULL,
  `plan_2` varchar(50) DEFAULT NULL,
  `aktual_2` varchar(50) DEFAULT NULL,
  `verification` varchar(20) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `productivity_proses`
--

INSERT INTO `productivity_proses` (`id`, `tanggal`, `target`, `aktual`, `plan_1`, `aktual_1`, `plan_2`, `aktual_2`, `verification`, `createdAt`, `updatedAt`) VALUES
(1, '2023-08-01', 2, 2, 'MC 1', 'MC 1', 'MC 40', 'MC 40', '1', '2023-08-18 08:02:10', '2023-08-07 21:51:41'),
(2, '2023-08-02', 2, 2, 'MC 2', 'MC 2', 'MC 41', 'MC 41', '1', '2023-08-18 08:02:12', '2023-08-07 15:15:43'),
(3, '2023-08-03', 2, 2, 'MC 4', 'MC 4', 'MC 42', 'MC 42', '1', '2023-08-18 08:02:13', '2023-08-07 15:22:42'),
(4, '2023-08-04', 2, 2, 'MC 5', 'MC 5', 'MC 43', 'MC 43', '1', '2023-08-18 08:02:21', '2023-08-07 15:22:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `productivity_sub`
--

CREATE TABLE `productivity_sub` (
  `id` int(10) NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `aktual` int(11) DEFAULT NULL,
  `target_gap` int(11) DEFAULT NULL,
  `aktual_gap` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `productivity_sub`
--

INSERT INTO `productivity_sub` (`id`, `bulan`, `target`, `aktual`, `target_gap`, `aktual_gap`, `createdAt`, `updatedAt`) VALUES
(1, 'Jan', 12, 6, 2, 2, '2023-09-06 06:37:57', '2023-09-06 06:37:57'),
(2, 'Feb', 2, 2, 2, 2, '2023-08-18 04:06:25', '2023-08-07 14:49:27'),
(3, 'Mar', 3, 3, 3, 3, '2023-08-18 04:07:34', '2023-08-18 11:07:34'),
(4, 'Apr', 4, 4, 4, 4, '2023-08-18 04:07:36', '2023-08-18 11:07:36'),
(5, 'May', 5, 5, 5, 5, '2023-08-18 04:07:37', '2023-08-18 11:07:37'),
(6, 'Jun', 6, 6, 6, 6, '2023-08-18 04:07:38', '2023-08-18 11:07:37'),
(7, 'Jul', 7, 7, 7, 7, '2023-08-18 04:07:38', '2023-08-18 11:07:38'),
(8, 'Aug', 8, 8, 8, 8, '2023-08-18 04:07:39', '2023-08-18 11:07:39'),
(9, 'Sep', 9, 9, 9, 9, '2023-08-18 04:07:40', '2023-08-18 11:07:39'),
(10, 'Oct', 10, 10, 10, 10, '2023-08-18 04:07:40', '2023-08-18 11:07:40'),
(11, 'Nov', 11, 11, 11, 11, '2023-08-18 04:07:41', '2023-08-18 11:07:41'),
(12, 'Dec', 12, 12, 12, 12, '2023-08-18 04:07:42', '2023-08-18 11:07:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quality_bira`
--

CREATE TABLE `quality_bira` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `bira_kategori` varchar(20) DEFAULT NULL,
  `problem` varchar(100) DEFAULT NULL,
  `countermeasure` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `quality_bira`
--

INSERT INTO `quality_bira` (`id`, `tanggal`, `bira_kategori`, `problem`, `countermeasure`, `status`, `due_date`, `pic`, `createdAt`, `updatedAt`) VALUES
(21, '2023-08-02', 'Material', 'Planytewuwe', 'wetrewytrewy', 'On Follow Up', '2023-08-02', 'tri', '2023-08-07 08:13:18', '2023-08-02 11:02:51'),
(22, '2023-08-02', 'Method', 'ewtrewy', 'yeryerwy', 'On Follow Up', '2023-08-02', 'tri', '2023-08-07 08:13:21', '2023-08-02 11:04:10'),
(23, '2023-08-03', 'Machine', 'weyrey', 'ewryutew', 'On Follow Up', '2023-08-04', 'Tri Setyanto', '2023-08-07 08:13:03', '2023-08-03 03:51:07'),
(24, '2023-08-04', 'Man', 'erwyreyreye', '0fdafdsafdsag', 'On Process', '2023-08-08', 'duan', '2023-08-07 08:13:25', '2023-08-03 03:52:20'),
(25, '2023-08-06', 'Man', 'fagfdag', 'gdsagsdgds', 'Proses Perbaikan', '2023-08-07', 'Duan Novanto', '2023-08-07 10:04:22', '2023-08-07 10:04:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quality_main`
--

CREATE TABLE `quality_main` (
  `id` int(10) NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `aktual` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `quality_main`
--

INSERT INTO `quality_main` (`id`, `bulan`, `target`, `aktual`, `createdAt`, `updatedAt`) VALUES
(1, 'Jan', 1, 1, '2023-08-21 11:50:07', '2023-08-07 20:17:46'),
(2, 'Feb', 2, 2, '2023-08-21 11:50:10', '2023-08-07 14:22:09'),
(3, 'Mar', 3, 3, '2023-08-21 11:50:13', '2023-08-21 18:49:57'),
(4, 'Apr', 4, 4, '2023-08-21 11:50:16', '2023-08-21 18:49:58'),
(5, 'May', 5, 5, '2023-08-21 11:50:19', '2023-08-21 18:49:59'),
(6, 'Jun', 6, 6, '2023-08-21 11:50:23', '2023-08-21 18:50:00'),
(7, 'Jul', 7, 7, '2023-08-21 11:50:58', '2023-08-21 18:50:03'),
(8, 'Aug', 8, 8, '2023-08-21 11:51:10', '2023-08-21 18:51:10'),
(9, 'Sep', 9, 9, '2023-08-21 11:51:26', '2023-08-21 18:51:26'),
(10, 'Oct', 10, 10, '2023-08-21 11:51:40', '2023-08-21 18:51:39'),
(11, 'Nov', 11, 11, '2023-08-21 11:51:50', '2023-08-21 18:51:51'),
(12, 'Dec', 12, 12, '2023-08-21 11:51:59', '2023-08-21 18:51:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quality_proses`
--

CREATE TABLE `quality_proses` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `aktual` int(11) DEFAULT NULL,
  `verification` varchar(20) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `quality_proses`
--

INSERT INTO `quality_proses` (`id`, `tanggal`, `target`, `aktual`, `verification`, `createdAt`, `updatedAt`) VALUES
(1, '2023-08-01', 1, 1, 'Y', '2023-08-07 14:59:18', '2023-08-07 21:51:41'),
(2, '2023-08-02', 1, 1, NULL, '2023-08-07 15:15:43', '2023-08-07 15:15:43'),
(3, '2023-08-03', 1, 1, '1', '2023-08-07 15:22:42', '2023-08-07 15:22:42'),
(4, '2023-08-04', 1, 1, NULL, '2023-08-07 15:22:59', '2023-08-07 15:22:59'),
(5, '2023-08-05', 46, 44, '1', '2023-08-23 10:46:27', '2023-08-23 10:46:27'),
(6, '2023-08-06', 46, 41, '1', '2023-08-23 10:46:41', '2023-08-23 10:46:41'),
(7, '2023-08-07', 46, 45, '1', '2023-08-23 10:47:01', '2023-08-23 10:47:01'),
(8, '2023-08-08', 46, 44, '1', '2023-08-23 10:47:11', '2023-08-23 10:47:11'),
(9, '2023-08-09', 46, 42, '1', '2023-08-23 10:47:21', '2023-08-23 10:47:21'),
(10, '2023-08-10', 46, 41, '1', '2023-08-23 10:47:35', '2023-08-23 10:47:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quality_sub`
--

CREATE TABLE `quality_sub` (
  `id` int(10) NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `aktual` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `quality_sub`
--

INSERT INTO `quality_sub` (`id`, `bulan`, `target`, `aktual`, `createdAt`, `updatedAt`) VALUES
(1, 'Jan', 3, 6, '2023-08-23 01:27:07', '2023-08-23 01:27:07'),
(2, 'Feb', 2, 2, '2023-08-21 11:52:24', '2023-08-07 14:49:27'),
(3, 'Mar', 3, 3, '2023-08-21 11:52:30', '2023-08-21 18:52:30'),
(4, 'Apr', 4, 4, '2023-08-21 11:52:42', '2023-08-21 18:52:41'),
(5, 'May', 5, 5, '2023-08-21 11:52:49', '2023-08-21 18:52:50'),
(6, 'Jun', 6, 6, '2023-08-21 11:52:56', '2023-08-21 18:52:56'),
(7, 'Jul', 7, 7, '2023-08-21 11:53:03', '2023-08-21 18:53:08'),
(8, 'Aug', 8, 8, '2023-08-21 11:53:17', '2023-08-21 18:53:18'),
(9, 'Sep', 9, 9, '2023-08-21 11:53:25', '2023-08-21 18:53:27'),
(10, 'Oct', 10, 10, '2023-08-21 11:53:35', '2023-08-21 18:53:36'),
(11, 'Nov', 11, 11, '2023-08-21 11:53:43', '2023-08-21 18:53:43'),
(12, 'Dec', 12, 12, '2023-08-21 11:53:51', '2023-08-21 18:53:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `safety_bira`
--

CREATE TABLE `safety_bira` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `bira_kategori` varchar(20) DEFAULT NULL,
  `problem` varchar(100) DEFAULT NULL,
  `countermeasure` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `safety_bira`
--

INSERT INTO `safety_bira` (`id`, `tanggal`, `bira_kategori`, `problem`, `countermeasure`, `status`, `due_date`, `pic`, `createdAt`, `updatedAt`) VALUES
(21, '2023-08-02', 'Material', 'Planytewuwe', 'wetrewytrewy', 'On Follow Up', '2023-08-02', 'tri', '2023-08-07 08:13:18', '2023-08-02 11:02:51'),
(22, '2023-08-02', 'Method', 'ewtrewy', 'yeryerwy', 'On Follow Up', '2023-08-02', 'tri', '2023-08-07 08:13:21', '2023-08-02 11:04:10'),
(23, '2023-08-03', 'Machine', 'weyrey', 'ewryutew', 'On Follow Up', '2023-08-04', 'Tri Setyanto', '2023-08-07 08:13:03', '2023-08-03 03:51:07'),
(24, '2023-08-04', 'Man', 'erwyreyreye', '0fdafdsafdsag', 'On Process', '2023-08-08', 'duan', '2023-08-07 08:13:25', '2023-08-03 03:52:20'),
(25, '2023-08-06', 'Man', 'fagfdag', 'gdsagsdgds', 'Proses Perbaikan', '2023-08-07', 'Duan Novanto', '2023-08-07 10:04:22', '2023-08-07 10:04:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `safety_main`
--

CREATE TABLE `safety_main` (
  `id` int(10) NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `kecelakaan_ringan` int(10) DEFAULT NULL,
  `kecelakaan_sedang` int(11) DEFAULT NULL,
  `kecelakaan_berat` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `safety_main`
--

INSERT INTO `safety_main` (`id`, `bulan`, `kecelakaan_ringan`, `kecelakaan_sedang`, `kecelakaan_berat`, `createdAt`, `updatedAt`) VALUES
(1, 'Jan', 1, 1, 1, '2023-08-27 11:08:58', '2023-08-27 11:08:58'),
(2, 'Feb', 4, 4, 3, '2023-08-11 13:03:14', '2023-08-11 13:03:14'),
(3, 'Mar', 1, 2, 3, '2023-08-23 01:41:08', '2023-08-23 01:41:08'),
(4, 'Apr', 1, 2, 3, '2023-08-23 01:41:20', '2023-08-23 01:41:20'),
(5, 'May', 4, 4, 3, '2023-08-11 13:02:33', '2023-08-11 13:02:33'),
(6, 'Jun', 3, 2, 1, '2023-08-23 01:52:52', '2023-08-23 01:52:52'),
(7, 'Jul', 3, 2, 1, '2023-08-23 01:53:22', '2023-08-23 01:53:22'),
(8, 'Aug', NULL, NULL, NULL, '2023-08-10 11:43:16', '2023-08-10 18:43:15'),
(9, 'Sep', NULL, NULL, NULL, '2023-08-10 11:43:16', '2023-08-10 18:43:16'),
(10, 'Oct', NULL, NULL, NULL, '2023-08-10 11:43:17', '2023-08-10 18:43:16'),
(11, 'Nov', NULL, NULL, NULL, '2023-08-10 11:43:17', '2023-08-10 18:43:17'),
(12, 'Dec', NULL, NULL, NULL, '2023-08-10 11:43:18', '2023-08-10 18:43:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `safety_proses`
--

CREATE TABLE `safety_proses` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `target_patroli` int(11) DEFAULT NULL,
  `aktual_patroli` int(10) DEFAULT NULL,
  `unsafe_action` int(11) DEFAULT NULL,
  `unsafe_condition` int(11) DEFAULT NULL,
  `verification` varchar(20) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `safety_proses`
--

INSERT INTO `safety_proses` (`id`, `tanggal`, `target_patroli`, `aktual_patroli`, `unsafe_action`, `unsafe_condition`, `verification`, `createdAt`, `updatedAt`) VALUES
(1, '2023-07-11', 1, 1, 2, 0, '1', '2023-08-11 09:06:32', '2023-08-07 21:51:41'),
(2, '2023-07-12', 1, 1, 2, 3, '1', '2023-08-11 09:06:37', '2023-08-07 15:15:43'),
(3, '2023-07-13', 1, 1, 2, 3, '1', '2023-08-11 09:06:46', '2023-08-07 15:22:42'),
(4, '2023-07-14', 1, 1, 2, 3, '1', '2023-08-11 09:06:55', '2023-08-07 15:22:59'),
(5, '2023-07-15', 1, 0, 2, 1, '1', '2023-08-11 09:06:57', '2023-08-11 15:11:54'),
(6, '2023-07-16', 1, 0, 0, 1, '1', '2023-08-11 09:07:04', '2023-08-11 15:11:55'),
(7, '2023-07-17', 1, 1, 1, 1, '1', '2023-08-11 09:07:09', '2023-08-11 15:11:56'),
(8, '2023-07-18', 1, 1, 0, 2, '1', '2023-08-11 09:07:30', '2023-08-11 15:11:56'),
(9, '2023-07-19', 1, 1, 1, 2, '1', '2023-08-11 09:07:33', '2023-08-11 15:11:57'),
(10, '2023-07-20', 1, 1, 1, 1, '1', '2023-08-11 09:07:36', '2023-08-11 15:11:58'),
(11, '2023-07-21', 1, 1, 1, 1, '1', '2023-08-11 09:07:39', '2023-08-11 15:11:59'),
(12, '2023-07-22', 1, 0, 1, 1, '1', '2023-08-11 09:07:42', '2023-08-11 15:12:00'),
(13, '2023-07-23', 1, 0, 1, 1, '1', '2023-08-11 09:07:44', '2023-08-11 15:12:01'),
(14, '2023-07-24', 1, 1, 1, 2, '1', '2023-08-11 09:07:47', '2023-08-11 15:12:01'),
(15, '2023-07-25', 1, 1, 1, 2, '1', '2023-08-11 09:07:51', '2023-08-11 15:12:03'),
(16, '2023-07-26', 1, 1, 1, 1, '1', '2023-08-11 09:07:55', '2023-08-11 15:12:03'),
(17, '2023-07-27', 1, 1, 0, 3, '1', '2023-08-11 09:07:59', '2023-08-11 15:12:04'),
(18, '2023-07-28', 1, 1, 1, 4, '1', '2023-08-11 09:08:02', '2023-08-11 15:12:05'),
(19, '2023-07-29', 1, 1, 1, 2, '1', '2023-08-11 09:08:07', '2023-08-11 15:12:06'),
(20, '2023-07-30', 1, 1, 0, 1, '1', '2023-08-11 09:08:15', '2023-08-11 15:12:06'),
(21, '2023-07-31', 1, 0, 0, 1, '1', '2023-08-11 09:08:20', '2023-08-11 15:12:07'),
(22, '2023-08-01', 1, 0, 1, 1, '1', '2023-08-11 09:08:29', '2023-08-11 15:12:08'),
(23, '2023-08-02', 1, 1, 1, 3, '1', '2023-08-11 09:08:36', '2023-08-11 15:12:08'),
(24, '2023-08-03', 1, 1, 0, 2, '1', '2023-08-11 09:08:39', '2023-08-11 15:12:09'),
(25, '2023-08-04', 1, 1, 1, 0, '1', '2023-08-11 09:08:41', '2023-08-11 15:12:10'),
(26, '2023-08-05', 1, 1, 1, 3, '1', '2023-08-11 09:08:45', '2023-08-11 15:12:11'),
(27, '2023-08-06', 1, 1, 1, 1, '1', '2023-08-11 09:08:47', '2023-08-11 15:12:12'),
(28, '2023-08-07', 1, 0, 0, 3, '1', '2023-08-11 09:08:50', '2023-08-11 15:12:13'),
(29, '2023-08-08', 1, 0, 0, 1, '1', '2023-08-11 09:08:53', '2023-08-11 15:12:13'),
(30, '2023-08-09', 1, 1, 1, 2, '1', '2023-08-11 09:08:57', '2023-08-11 15:12:14'),
(31, '2023-08-10', 1, 1, 1, 0, '1', '2023-08-11 09:09:02', '2023-08-11 15:39:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `safety_sub`
--

CREATE TABLE `safety_sub` (
  `id` int(10) NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `total_temuan` int(11) DEFAULT NULL,
  `total_perbaikan` int(11) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `aktual` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `safety_sub`
--

INSERT INTO `safety_sub` (`id`, `bulan`, `total_temuan`, `total_perbaikan`, `target`, `aktual`, `createdAt`, `updatedAt`) VALUES
(1, 'Jan', 4, 4, 0, 0, '2023-08-27 12:13:21', '2023-08-27 12:13:21'),
(2, 'Feb', 0, 0, 0, 0, '2023-08-27 12:13:46', '2023-08-27 12:13:46'),
(3, 'Mar', 3, 1, 1, 0, '2023-08-11 04:30:18', '2023-08-11 11:30:18'),
(4, 'Apr', 1, 2, 2, 2, '2023-08-11 04:30:19', '2023-08-11 11:30:19'),
(5, 'May', 2, 1, 1, 1, '2023-08-11 04:30:21', '2023-08-11 11:30:20'),
(6, 'Jun', 3, 3, 2, 2, '2023-08-11 04:30:22', '2023-08-11 11:30:21'),
(7, 'Jul', 1, 1, 3, 3, '2023-08-11 04:30:23', '2023-08-11 11:30:22'),
(8, 'Aug', 4, 1, 2, 2, '2023-08-11 04:30:24', '2023-08-11 11:30:23'),
(9, 'Sep', 3, 2, 1, 3, '2023-08-11 04:30:24', '2023-08-11 11:30:24'),
(10, 'Oct', 3, 2, 3, 1, '2023-08-11 04:30:25', '2023-08-11 11:30:25'),
(11, 'Nov', 2, 4, 2, 2, '2023-08-11 04:30:26', '2023-08-11 11:30:25'),
(12, 'Dec', 1, 3, 2, 1, '2023-08-11 04:30:27', '2023-08-11 11:30:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cost_bira`
--
ALTER TABLE `cost_bira`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `cost_main`
--
ALTER TABLE `cost_main`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `cost_proses`
--
ALTER TABLE `cost_proses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `cost_sub`
--
ALTER TABLE `cost_sub`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `productivity_bira`
--
ALTER TABLE `productivity_bira`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `productivity_main`
--
ALTER TABLE `productivity_main`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `productivity_proses`
--
ALTER TABLE `productivity_proses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `productivity_sub`
--
ALTER TABLE `productivity_sub`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `quality_bira`
--
ALTER TABLE `quality_bira`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `quality_main`
--
ALTER TABLE `quality_main`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `quality_proses`
--
ALTER TABLE `quality_proses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `quality_sub`
--
ALTER TABLE `quality_sub`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `safety_bira`
--
ALTER TABLE `safety_bira`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `safety_main`
--
ALTER TABLE `safety_main`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `safety_proses`
--
ALTER TABLE `safety_proses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `safety_sub`
--
ALTER TABLE `safety_sub`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cost_bira`
--
ALTER TABLE `cost_bira`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `cost_main`
--
ALTER TABLE `cost_main`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `cost_proses`
--
ALTER TABLE `cost_proses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `cost_sub`
--
ALTER TABLE `cost_sub`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `productivity_bira`
--
ALTER TABLE `productivity_bira`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `productivity_main`
--
ALTER TABLE `productivity_main`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `productivity_proses`
--
ALTER TABLE `productivity_proses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `productivity_sub`
--
ALTER TABLE `productivity_sub`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `quality_bira`
--
ALTER TABLE `quality_bira`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `quality_main`
--
ALTER TABLE `quality_main`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `quality_proses`
--
ALTER TABLE `quality_proses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `quality_sub`
--
ALTER TABLE `quality_sub`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `safety_bira`
--
ALTER TABLE `safety_bira`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `safety_main`
--
ALTER TABLE `safety_main`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `safety_proses`
--
ALTER TABLE `safety_proses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `safety_sub`
--
ALTER TABLE `safety_sub`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
