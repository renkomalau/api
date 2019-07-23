-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2019 at 08:29 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dts_webdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `nik` int(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`nik`, `password`) VALUES
(1, '1234567'),
(12, '12'),
(15, '15'),
(44, '44'),
(111, '11'),
(1507, '1507'),
(2222, '2222'),
(2704, '2704'),
(3001, '3001'),
(4321, '4321'),
(5555, '5555'),
(8888, '8888'),
(9898, '9898'),
(9999, '9999');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_pengguna`
--

CREATE TABLE `mapping_pengguna` (
  `nik` int(10) NOT NULL,
  `id_posisi` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapping_pengguna`
--

INSERT INTO `mapping_pengguna` (`nik`, `id_posisi`) VALUES
(1, 1),
(11, 2),
(12, 4),
(15, 4),
(44, 4),
(111, 4),
(1507, 2),
(2222, 4),
(2704, 3),
(3001, 3),
(4321, 4),
(5555, 4),
(8888, 4),
(9898, 4),
(9999, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `nik` int(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `ttl` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `bln_join` varchar(20) NOT NULL,
  `thn_join` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`nik`, `nama`, `ttl`, `alamat`, `provinsi`, `email`, `bln_join`, `thn_join`) VALUES
(1, 'Sultan arizal', '1998-05-20', 'Batu Aji', 'Kepulauan Riau', 'admin@api.ac.id', 'Mar', 2017),
(11, '11', '1111-11-11', '1111', 'Kalimantan Selatan', '11@gmail.com', 'Jul', 2019),
(12, 'coba spasi', '0012-12-12', 'coba spasi', 'Kalimantan Tengah', '12@gmail.com', 'Jul', 2019),
(15, '15', '1111-11-11', '15', 'Kalimantan Selatan', '15@gmail.com', 'Jul', 2019),
(44, '44', '4444-04-04', '444', 'Bengkulu', '44@gmail.com', 'Jul', 2019),
(111, 'ED', '1111-11-11', '1111', 'Aceh', '11@gmail.com', 'Jul', 2019),
(1507, 'Rengko Panusunan Malau', '1996-07-15', 'Perum Pesona Bukit Laguna BLK A1 no 12A', 'kepulauan Riau', 'renkomalau@gmail.com', 'Jul', 2019),
(2222, 'Klkasd', '0000-00-00', 'hkjahskhd', 'Aceh', 'dasd@gmail.com', 'Mar', 2017),
(2704, 'Deva', '1990-08-25', 'Batu Aji', 'Jawa Timur', 'deva@mail.com', 'Mar', 2017),
(3001, 'Melina', '2000-01-30', 'Tiban', 'Sumatera Selatan', 'melina@gmail.com', 'Feb', 2017),
(4321, 'Dian', '0000-00-00', 'Baloi Persero', 'Aceh', 'dian@mail.uk', 'Feb', 2017),
(5555, 'Fio', '1999-07-11', 'Batam Centre', 'Bangka Belitung', 'fio@gm.com', 'Feb', 2017),
(8888, 'gagagag', '2011-07-06', 'asdads', 'Aceh', 'dfdf@gmail.com', 'Feb', 2018),
(9898, 'asdasd', '4444-02-03', 'asad', 'Aceh', 'fsss@gmail.com', 'Feb', 2018),
(9999, 'asdad', '0000-00-00', 'gggg', 'Aceh', 'fsss@gmail.com', 'Feb', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `persetujuan`
--

CREATE TABLE `persetujuan` (
  `nik` int(10) NOT NULL,
  `status` enum('disetujui','belum disetujui') NOT NULL DEFAULT 'belum disetujui'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persetujuan`
--

INSERT INTO `persetujuan` (`nik`, `status`) VALUES
(11, 'disetujui'),
(12, 'disetujui'),
(15, 'disetujui'),
(44, 'disetujui'),
(111, 'disetujui'),
(2222, 'disetujui'),
(2704, 'disetujui'),
(4321, 'disetujui'),
(5555, 'disetujui'),
(8888, 'disetujui'),
(9898, 'disetujui'),
(9999, 'disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `nik` int(10) NOT NULL,
  `bidang_keahlian` varchar(100) NOT NULL,
  `riwayat_pelatihan` text NOT NULL,
  `sertifikat_dimiliki` text NOT NULL,
  `riwayat_project` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`nik`, `bidang_keahlian`, `riwayat_pelatihan`, `sertifikat_dimiliki`, `riwayat_project`) VALUES
(44, '444', '44', '44', '44'),
(9999, 'ASDAS', 'DASDAS', 'DSADSA', 'DSADA');

-- --------------------------------------------------------

--
-- Table structure for table `posisi`
--

CREATE TABLE `posisi` (
  `id_posisi` int(2) NOT NULL,
  `nama_posisi` enum('Admin','Ketua','Sekretariat','Anggota') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posisi`
--

INSERT INTO `posisi` (`id_posisi`, `nama_posisi`) VALUES
(1, 'Admin'),
(2, 'Ketua'),
(3, 'Sekretariat'),
(4, 'Anggota');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `mapping_pengguna`
--
ALTER TABLE `mapping_pengguna`
  ADD PRIMARY KEY (`nik`,`id_posisi`),
  ADD KEY `id_posisi` (`id_posisi`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `persetujuan`
--
ALTER TABLE `persetujuan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `posisi`
--
ALTER TABLE `posisi`
  ADD PRIMARY KEY (`id_posisi`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`),
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`) ON DELETE CASCADE,
  ADD CONSTRAINT `login_ibfk_3` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`) ON DELETE CASCADE;

--
-- Constraints for table `mapping_pengguna`
--
ALTER TABLE `mapping_pengguna`
  ADD CONSTRAINT `mapping_pengguna_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`),
  ADD CONSTRAINT `mapping_pengguna_ibfk_2` FOREIGN KEY (`id_posisi`) REFERENCES `posisi` (`id_posisi`),
  ADD CONSTRAINT `mapping_pengguna_ibfk_3` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`) ON DELETE CASCADE;

--
-- Constraints for table `persetujuan`
--
ALTER TABLE `persetujuan`
  ADD CONSTRAINT `persetujuan_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`),
  ADD CONSTRAINT `persetujuan_ibfk_2` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`) ON DELETE CASCADE;

--
-- Constraints for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD CONSTRAINT `portofolio_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
