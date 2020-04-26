-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2020 at 12:25 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrestapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses_token`
--

CREATE TABLE `akses_token` (
  `id_akses_token` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `access_token` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_token`
--

INSERT INTO `akses_token` (`id_akses_token`, `id_user`, `access_token`, `ip_address`) VALUES
(1, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwidXNlcm5hbWUiOiJhbmRpa2EiLCJlbWFpbCI6ImFuZGlrYUBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIwLTA0LTA5VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTU4NjUzMzE1NCwiZXhwIjoxNTg2NTM0NTk0fQ.1sSS7l-wbQgiiq7TaXFjLjzJ6oJ18RySn0Gr5tp44DE', '127.0.0.1'),
(2, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MiwidXNlcm5hbWUiOiJheGVsIiwiZW1haWwiOiJheGVsQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjAtMDQtMDlUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNTg2NTM2MDAzLCJleHAiOjE1ODY1Mzc0NDN9.Eg617_nSNLbv1MS-NB1KPmJ8cCe5vfAqXEaSZigzkRg', '192.168.43.199'),
(3, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJkYW5pIiwiZW1haWwiOiJkYW5pQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjozLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjAtMDQtMDlUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNTg2NTM2MjgxLCJleHAiOjE1ODY1Mzc3MjF9.ZsjuCv44MkvjGk8yCNhXvYUUQFs3LrhUw9UGUMob2ew', '192.168.43.199'),
(4, 4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NCwidXNlcm5hbWUiOiJoYWRpIiwiZW1haWwiOiJoYWRpQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjAtMDQtMDlUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNTg2NTM3MTExLCJleHAiOjE1ODY1Mzg1NTF9.QKpfzAYyaKyPCVxVu_IcjlJVo_zCYK3As8W9kS2KptU', '192.168.43.199');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `tanggal_krs` date NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `tanggal_krs`, `id_matakuliah`, `id_mahasiswa`) VALUES
(1, '2020-04-10', 1, 2),
(2, '2020-04-10', 2, 2),
(3, '2020-04-10', 3, 2),
(4, '2020-04-10', 4, 2),
(5, '2020-04-10', 3, 3),
(6, '2020-04-10', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` int(20) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `jurusan` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `jurusan`) VALUES
(2, 201701006, 'Axel Haryanto', 'Sistem Informasi'),
(3, 201701007, 'Tansah Prayoga', 'Sistem Informasi'),
(4, 201701008, 'Hengky Wijaya', 'Sistem Informasi'),
(5, 201701009, 'Yehezkiel Nico', 'Sistem Informasi'),
(6, 201701010, 'Nikolas Setiawan', 'Sistem Informasi'),
(7, 201701011, 'Hilarius Bayu', 'Sistem Informasi'),
(8, 201701012, 'Michael Oki', 'Sistem Informasi'),
(9, 201701013, 'Alvin Sujono', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(11) NOT NULL,
  `matakuliah` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `matakuliah`, `sks`) VALUES
(1, 'Algoritma Dasar', 3),
(2, 'Proyek Perangkat Lunak', 3),
(3, 'Pemrograman Website', 3),
(4, 'Manajemen Proyek', 3),
(5, 'Basis Data', 3),
(6, 'Sistem Operasi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(11) NOT NULL,
  `tanggal_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `tanggal_daftar`) VALUES
(1, 'andika', 'andika@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2020-04-10'),
(2, 'axel', 'axel@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2020-04-10'),
(3, 'dani', 'dani@gmail.com', '202cb962ac59075b964b07152d234b70', 3, '2020-04-10'),
(4, 'hadi', 'hadi@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2020-04-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_token`
--
ALTER TABLE `akses_token`
  ADD PRIMARY KEY (`id_akses_token`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_matakuliah` (`id_matakuliah`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_token`
--
ALTER TABLE `akses_token`
  MODIFY `id_akses_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akses_token`
--
ALTER TABLE `akses_token`
  ADD CONSTRAINT `akses_token_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
