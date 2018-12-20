-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2018 at 06:39 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mppl`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `gambar_event` varchar(100) DEFAULT NULL,
  `nama_event` varchar(100) NOT NULL,
  `waktu` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `id_user`, `gambar_event`, `nama_event`, `waktu`, `tempat`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 5, '', 'ini event', '2018-12-05', 'di sini', 'ini event seruuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu', NULL, NULL),
(2, 5, NULL, 'event keren', '2018-12-19', 'di sini', 'deskripsi', '2018-12-19 06:22:04', '2018-12-19 06:22:04'),
(3, 5, NULL, 'a', '2018-12-19', 'b', 'c', '2018-12-19 09:58:17', '2018-12-19 09:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_reviews` int(11) NOT NULL,
  `isi_komentar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_user`, `id_reviews`, `isi_komentar`) VALUES
(1, 5, 2, 'wowwwwwwwwwwwwwwwwwwwwww'),
(2, 4, 2, 'hohohohohohohohoh');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_review` varchar(50) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `gambar_buku` varchar(100) DEFAULT NULL,
  `detail_buku` text NOT NULL,
  `isi_review` text NOT NULL,
  `rating_buku` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id_review`, `id_user`, `judul_review`, `judul_buku`, `pengarang`, `gambar_buku`, `detail_buku`, `isi_review`, `rating_buku`, `created_at`, `updated_at`) VALUES
(1, 2, 'ini review', 'ini buku pertama', 'sayah', 'asdf', 'halaman 100, tebal 50', 'ini review blablablablablaablablablbalblablalablbalablbalabablablablablablabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbalbalblabalbalbalabl', 4, NULL, NULL),
(2, 3, 'review nih', 'ini buku kedua', 'hoho', 'hijk', 'halaman 20, tebal 30', 'sldkasldlaskmlksancklnckdncklasdklsajdklsjdlksajdsakljdsakjdklsjdklsajdlksdjkljsalkdjaslkdsad', 3, NULL, NULL),
(3, 5, 'review nih', 'buku nih', 'ini pengarang', NULL, 'ini detail', 'isi nih', NULL, '2018-12-19 04:09:35', '2018-12-19 04:09:35'),
(4, 5, 'a', 'b', 'c', NULL, 'e', 'd', NULL, '2018-12-19 09:31:06', '2018-12-19 09:31:06'),
(5, 5, 'review keren', 'buku a', 'saya', NULL, 'bagus bukunya', 'hmmmmmmmmmmmmmmmmmm', NULL, '2018-12-19 17:30:08', '2018-12-19 17:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `api_token` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text,
  `buku_favorit` text,
  `tentang_saya` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `api_token`, `created_at`, `updated_at`, `username`, `email`, `password`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `buku_favorit`, `tentang_saya`) VALUES
(1, '$2y$10$gL7Ivt479HjL2xid44pO3OLgbvQc1o6U4M9tHFfd3LEN9xKgKWNvq', NULL, '2018-11-15 08:24:27', 'rizki', 'rizkianandautama@yahoo.com', '$2y$10$zKdQY3swwr5QtsacW.jJweILl7D4fTCKPCCsM.LFkIT80YIKSzh9u', 'user', 'L', '2018-11-06', 'di sini aja', '', 'manusia biasa'),
(2, NULL, '2018-11-16 07:39:11', '2018-11-16 07:39:11', 'user', 'user@gmail.com', '$2y$10$GVxgZG0x4zFK78Fftd81n.AWmR10oTiJOL7UQ6gQe3Mbkt4zPnbIe', 'user', NULL, NULL, NULL, NULL, 'manusiah'),
(3, '$2y$10$Gx0CaX6NO7kaub/WWVAR.u7DQgHAq1cey9ORyy97KxxCAagSq446O', '2018-11-16 09:30:37', '2018-11-16 09:30:48', 'saya', 'saya@gmail.com', '$2y$10$7aFTE/7u9MU8VMafLXDvre//vVZND2CSP7GuUZhTvKzzV3UljjXHG', 'saya', NULL, NULL, NULL, NULL, 'ganteng'),
(4, '$2y$10$fC/VhMxjzEtjspXi1G93guVNf2I3oCDi34QzMFa8.QcNIW30qnV66', '2018-11-16 16:14:48', '2018-11-16 16:15:19', 'coba', 'coba@gmail.com', '$2y$10$B/G6N02BN05YiNPkaqyag.CE.vg.q.lzEwxXtDqe2unMfMUFc2U/G', 'coba', NULL, NULL, NULL, NULL, NULL),
(5, '$2y$10$QERhrt5H5splu2UWJOO96O1JHrWsmPRWGlYd4UpoLzLp14uXqOg.C', '2018-12-16 08:26:45', '2018-12-16 08:26:56', 'nama', 'nama@gmail.com', '$2y$10$Yk.DgPqSVBu9t12qctAhOeW3dugLsL1VZmL6K4P3aFXpzM4HbQ646', 'nama', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
