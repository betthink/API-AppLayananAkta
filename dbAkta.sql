-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 24, 2023 at 09:30 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u953310580_dbAppAkta`
--

-- --------------------------------------------------------

--
-- Table structure for table `antrianvalid`
--

CREATE TABLE `antrianvalid` (
  `IdAntrian` int(12) NOT NULL,
  `WaktuPendaftaran` datetime DEFAULT NULL,
  `WaktuTerima` date DEFAULT NULL,
  `WaktuDitolak` date DEFAULT NULL,
  `WaktuSelesai` date DEFAULT NULL,
  `IdPengambilan` varchar(20) DEFAULT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Terdaftar',
  `IdUser` int(11) NOT NULL,
  `IdAdmin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `antrianvalid`
--

INSERT INTO `antrianvalid` (`IdAntrian`, `WaktuPendaftaran`, `WaktuTerima`, `WaktuDitolak`, `WaktuSelesai`, `IdPengambilan`, `Status`, `IdUser`, `IdAdmin`) VALUES
(71, '2023-06-23 08:21:14', '2023-06-23', NULL, NULL, NULL, 'Valid', 60, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dataayah`
--

CREATE TABLE `dataayah` (
  `Id` int(11) NOT NULL,
  `NIK` varchar(17) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `TempatKelahiran` varchar(200) NOT NULL,
  `DateKelahiran` date NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Kewarganegaraan` varchar(20) NOT NULL,
  `Kebangsaan` varchar(20) NOT NULL,
  `Pekerjaan` varchar(20) NOT NULL,
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataayah`
--

INSERT INTO `dataayah` (`Id`, `NIK`, `Nama`, `TempatKelahiran`, `DateKelahiran`, `Alamat`, `Kewarganegaraan`, `Kebangsaan`, `Pekerjaan`, `IdUser`) VALUES
(71, '6312415', 'User01', 'palngka raya', '2023-06-23', 'Indonesia', 'WNI', 'Indonesia', 'ckdsb', 60);

-- --------------------------------------------------------

--
-- Table structure for table `databayi`
--

CREATE TABLE `databayi` (
  `IdAnak` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `JenisKelamin` varchar(10) NOT NULL,
  `TempatPersalinan` varchar(20) NOT NULL,
  `TempatKelahiran` varchar(200) NOT NULL,
  `DateKelahiran` date NOT NULL,
  `TimeKelahiran` time NOT NULL,
  `UrutanKelahiran` int(1) NOT NULL,
  `PenolongBayi` varchar(20) NOT NULL,
  `BeratBayi` varchar(5) NOT NULL,
  `PanjangBayi` varchar(5) NOT NULL,
  `Pemberitahuan` varchar(1000) NOT NULL DEFAULT 'Belum ada pemberitahuan',
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `databayi`
--

INSERT INTO `databayi` (`IdAnak`, `Nama`, `JenisKelamin`, `TempatPersalinan`, `TempatKelahiran`, `DateKelahiran`, `TimeKelahiran`, `UrutanKelahiran`, `PenolongBayi`, `BeratBayi`, `PanjangBayi`, `Pemberitahuan`, `IdUser`) VALUES
(71, 'anakuser01', 'Laki-laki', 'RS', 'palangka raya', '2023-06-23', '13:59:00', 1, 'Dokter', '5000', '40', '0', 60);

-- --------------------------------------------------------

--
-- Table structure for table `dataibu`
--

CREATE TABLE `dataibu` (
  `Id` int(11) NOT NULL,
  `NIK` varchar(17) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `TempatKelahiran` varchar(200) NOT NULL,
  `DateKelahiran` date NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Kewarganegaraan` varchar(20) NOT NULL,
  `Kebangsaan` varchar(20) NOT NULL,
  `Pekerjaan` varchar(20) NOT NULL,
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataibu`
--

INSERT INTO `dataibu` (`Id`, `NIK`, `Nama`, `TempatKelahiran`, `DateKelahiran`, `Alamat`, `Kewarganegaraan`, `Kebangsaan`, `Pekerjaan`, `IdUser`) VALUES
(71, '6214315', 'istriUser01', 'palangka raya', '2023-06-23', 'Jl. jalan', 'WNI', 'Indonesia', 'Belum punya', 60);

-- --------------------------------------------------------

--
-- Table structure for table `datasaksi1`
--

CREATE TABLE `datasaksi1` (
  `Id` int(11) NOT NULL,
  `NIK` varchar(17) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `TempatKelahiran` varchar(200) NOT NULL,
  `DateKelahiran` date NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Kewarganegaraan` varchar(20) NOT NULL,
  `Kebangsaan` varchar(20) NOT NULL,
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datasaksi1`
--

INSERT INTO `datasaksi1` (`Id`, `NIK`, `Nama`, `TempatKelahiran`, `DateKelahiran`, `Alamat`, `Kewarganegaraan`, `Kebangsaan`, `IdUser`) VALUES
(71, '5635635', 'sdfg', 'sdfg', '2023-06-23', 'sdfg', 'WNI', 'dfg', 60);

-- --------------------------------------------------------

--
-- Table structure for table `datasaksi2`
--

CREATE TABLE `datasaksi2` (
  `Id` int(11) NOT NULL,
  `NIK` varchar(17) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `TempatKelahiran` varchar(200) NOT NULL,
  `DateKelahiran` date NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Kewarganegaraan` varchar(20) NOT NULL,
  `Kebangsaan` varchar(20) NOT NULL,
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datasaksi2`
--

INSERT INTO `datasaksi2` (`Id`, `NIK`, `Nama`, `TempatKelahiran`, `DateKelahiran`, `Alamat`, `Kewarganegaraan`, `Kebangsaan`, `IdUser`) VALUES
(71, '547546', 'sdagfs', 'dg', '2023-06-23', 'sdg', 'WNI', 'sgd', 60);

-- --------------------------------------------------------

--
-- Table structure for table `filespersyaratan`
--

CREATE TABLE `filespersyaratan` (
  `IdAnak` int(11) NOT NULL,
  `fileCompresed` varchar(100) NOT NULL,
  `dateUpload` date NOT NULL,
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filespersyaratan`
--

INSERT INTO `filespersyaratan` (`IdAnak`, `fileCompresed`, `dateUpload`, `IdUser`) VALUES
(71, '71.zip', '2023-06-23', 60);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `NomorTelp` varchar(20) NOT NULL,
  `NIK` varchar(20) NOT NULL,
  `FotoProfile` varchar(1000) NOT NULL,
  `WaktuRegister` date NOT NULL,
  `Level` varchar(5) NOT NULL DEFAULT 'Umum',
  `StatusLayanan` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Password`, `Nama`, `Email`, `NomorTelp`, `NIK`, `FotoProfile`, `WaktuRegister`, `Level`, `StatusLayanan`) VALUES
(34, 'admin', 'admin', 'admin@gmail.com', '0852356325', '621333', 'george-dagerotip-C_LtS_cNEU4-unsplash.jpg', '0000-00-00', 'Admin', '1'),
(40, 'a', 'a', 'a@gmail.com', '123445', '1344', '', '2023-05-30', 'Admin', '0'),
(60, 'user1', 'user01', 'user01@gmail.com', '085772463624', '621314325', 'masahiro-miyagi-eCRv5zjIZfE-unsplash.jpg', '2023-06-23', 'Umum', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antrianvalid`
--
ALTER TABLE `antrianvalid`
  ADD PRIMARY KEY (`IdAntrian`),
  ADD KEY `IdUser` (`IdUser`),
  ADD KEY `IdAdmin` (`IdAdmin`);

--
-- Indexes for table `dataayah`
--
ALTER TABLE `dataayah`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdUser` (`IdUser`);

--
-- Indexes for table `databayi`
--
ALTER TABLE `databayi`
  ADD PRIMARY KEY (`IdAnak`),
  ADD KEY `IdUser` (`IdUser`);

--
-- Indexes for table `dataibu`
--
ALTER TABLE `dataibu`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdUser` (`IdUser`);

--
-- Indexes for table `datasaksi1`
--
ALTER TABLE `datasaksi1`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdUser` (`IdUser`);

--
-- Indexes for table `datasaksi2`
--
ALTER TABLE `datasaksi2`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdUser` (`IdUser`);

--
-- Indexes for table `filespersyaratan`
--
ALTER TABLE `filespersyaratan`
  ADD PRIMARY KEY (`IdAnak`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `antrianvalid`
--
ALTER TABLE `antrianvalid`
  MODIFY `IdAntrian` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `databayi`
--
ALTER TABLE `databayi`
  MODIFY `IdAnak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `antrianvalid`
--
ALTER TABLE `antrianvalid`
  ADD CONSTRAINT `antrianvalid_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`Id`),
  ADD CONSTRAINT `antrianvalid_ibfk_2` FOREIGN KEY (`IdAntrian`) REFERENCES `databayi` (`IdAnak`),
  ADD CONSTRAINT `antrianvalid_ibfk_3` FOREIGN KEY (`IdAdmin`) REFERENCES `users` (`Id`);

--
-- Constraints for table `dataayah`
--
ALTER TABLE `dataayah`
  ADD CONSTRAINT `dataayah_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `databayi` (`IdAnak`),
  ADD CONSTRAINT `dataayah_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `users` (`Id`);

--
-- Constraints for table `databayi`
--
ALTER TABLE `databayi`
  ADD CONSTRAINT `databayi_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`Id`);

--
-- Constraints for table `dataibu`
--
ALTER TABLE `dataibu`
  ADD CONSTRAINT `dataibu_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `databayi` (`IdAnak`),
  ADD CONSTRAINT `dataibu_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `users` (`Id`);

--
-- Constraints for table `datasaksi1`
--
ALTER TABLE `datasaksi1`
  ADD CONSTRAINT `datasaksi1_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `databayi` (`IdAnak`),
  ADD CONSTRAINT `datasaksi1_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `users` (`Id`);

--
-- Constraints for table `datasaksi2`
--
ALTER TABLE `datasaksi2`
  ADD CONSTRAINT `datasaksi2_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `databayi` (`IdAnak`),
  ADD CONSTRAINT `datasaksi2_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `users` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
