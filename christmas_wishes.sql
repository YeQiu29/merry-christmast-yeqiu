-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Des 2024 pada 05.46
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `christmas_wishes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishes`
--

CREATE TABLE `wishes` (
  `id` int(11) NOT NULL,
  `wish` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wishes`
--

INSERT INTO `wishes` (`id`, `wish`, `created_at`) VALUES
(1, 'special for suzan', '2024-12-21 04:36:13'),
(2, 'test', '2024-12-21 06:33:15'),
(3, 'testing', '2024-12-21 06:35:39'),
(4, 'test', '2024-12-21 06:43:51'),
(5, 'berharap yg terbaik untuk suzan', '2024-12-21 06:47:35'),
(6, 'tes\n', '2024-12-23 03:50:00'),
(7, 'merry', '2024-12-23 04:11:37'),
(8, 'dsds', '2024-12-23 04:13:22'),
(9, 'aku harap bisa kenal kamu.', '2024-12-23 04:16:35'),
(10, 'tes', '2024-12-23 04:17:15'),
(11, 'tester', '2024-12-23 04:18:58'),
(12, 'rere', '2024-12-23 04:20:52'),
(13, 'tesetet', '2024-12-23 04:38:00'),
(14, 'hai', '2024-12-23 07:05:55'),
(15, 'angger', '2024-12-23 07:06:49'),
(16, 'terimakasih', '2024-12-23 08:40:57'),
(17, 'test', '2024-12-23 08:42:55'),
(18, 'semoga', '2024-12-24 04:42:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `wishes`
--
ALTER TABLE `wishes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `wishes`
--
ALTER TABLE `wishes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
