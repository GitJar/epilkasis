-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2019 at 02:25 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `id_admin` tinyint(1) NOT NULL,
  `username` varchar(35) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`id_admin`, `username`, `fullname`, `password`) VALUES
(1, 'admin', 'administrator', '$2y$10$5ok3rcIOv/yNIlPIGo49a.cXRAiA5ZsnxbpijFoyy5EuuYyVrZetu'),
(2, 'kamad', 'Kepala Madrasah', '$2y$10$kEyCunmqPa9Ot1YYlZgzauMrTW4DHAIX95Xn3t/T/xlMcjRu9RJ0m'),
(3, 'waka', 'Wakil Kepala Madrasah', '$2y$10$BqoO7w3H54yfSlYAP8ogFO.W5Of5RJvvWuUQp4SWSFLlCXZG4UgTK'),
(4, 'guru', 'Guru', '$2y$10$v4EY1Wl2.SHKacAI3jhO4.yiJ5KNErmLH.V2IpEDG6UizTXAEpj1.');

-- --------------------------------------------------------

--
-- Table structure for table `t_kandidat`
--

CREATE TABLE `t_kandidat` (
  `id_kandidat` smallint(4) NOT NULL,
  `nama_calon` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `suara` smallint(4) NOT NULL DEFAULT 0,
  `periode` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kandidat`
--

INSERT INTO `t_kandidat` (`id_kandidat`, `nama_calon`, `foto`, `visi`, `misi`, `suara`, `periode`) VALUES
(1, 'Wildan dan Ani', 'wildan-ani.jpeg', 'Menciptakan lingkungan SMA x (nama sekolah) yang nyaman, harmonis, bersih, dan berprestasi dengan berlandasakan iman kepada Tuhan.', '1. Meningkatkan kesadaran siswa mengenai kebersihan sekolah.\r\n2. Membentuk program-program belajar untuk meningkatkan prestasi siswa.\r\n3. Memfasilitasi bakat dan minat siswa agar menghasilkan prestasi.\r\n4. Mengembangkan kegiatan ekstrakurikuler yang menambah erat hubungan antar siswa.\r\n5. Memunculkan kegiatan-kegiatan agama untuk memperkokoh iman kepada Tuhan.', 0, '2019/2020'),
(2, 'Kevin dan Elvan', 'kevin-elvan.jpeg', 'smart', 'choise', 0, '2019/2020'),
(3, 'Arip dan Cindy', 'arip-cindy.jpeg', 'Menjadikan SMA x (nama sekolah) berkualitas, aktif, berprestasi, dengan berlandaskan iman dan takwa.', '1. Menumbuhkan keimanan dan ketaqwaan pada Tuhan.\r\n2. Memperkuat rasa kekeluargaan antar siswa.\r\n3. Menanamkan sikap disiplin pada semua siswa.\r\n4. Meningkatkan kesadaran siswa tentang kebersihan sekolah.\r\n5. Mengembangkan bakat dan potensi yang dimiliki siswa.\r\n6. Melanjutkan program OSIS yang belum selesai di periode sebelumnya.\r\n7. Memajukan prestasi sekolah dalam segala bidang.', 0, '2019/2020');

-- --------------------------------------------------------

--
-- Table structure for table `t_kelas`
--

CREATE TABLE `t_kelas` (
  `id_kelas` varchar(3) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kelas`
--

INSERT INTO `t_kelas` (`id_kelas`, `nama_kelas`) VALUES
('K01', '8A');

-- --------------------------------------------------------

--
-- Table structure for table `t_pemilih`
--

CREATE TABLE `t_pemilih` (
  `nis` varchar(10) NOT NULL,
  `periode` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id_user` varchar(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `id_kelas` varchar(3) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `pemilih` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `fullname`, `id_kelas`, `jk`, `pemilih`) VALUES
('10984', 'AISYA LAIFITRI NUR FATIMA', 'K01', 'P', 'N'),
('10985', 'AISYAH NUR HASANAH', 'K01', 'P', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `t_kandidat`
--
ALTER TABLE `t_kandidat`
  ADD PRIMARY KEY (`id_kandidat`);

--
-- Indexes for table `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `id_admin` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_kandidat`
--
ALTER TABLE `t_kandidat`
  MODIFY `id_kandidat` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
