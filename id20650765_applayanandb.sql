-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2023 at 10:19 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20650765_applayanandb`
--

-- --------------------------------------------------------

--
-- Table structure for table `antrianvalid`
--

CREATE TABLE `antrianvalid` (
  `IdAntrian` int(12) NOT NULL,
  `WaktuTerima` date NOT NULL,
  `WaktuSelesai` date NOT NULL,
  `IdPengambilan` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Terdaftar',
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `antrianvalid`
--

INSERT INTO `antrianvalid` (`IdAntrian`, `WaktuTerima`, `WaktuSelesai`, `IdPengambilan`, `Status`, `IdUser`) VALUES
(1, '2023-04-01', '2023-04-08', '', 'Terdaftar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dataayah`
--

CREATE TABLE `dataayah` (
  `Id` int(11) NOT NULL,
  `NIK` varchar(17) NOT NULL,
  `NamaLengkap` varchar(30) NOT NULL,
  `Tempat_Kelahiran` varchar(20) NOT NULL,
  `Waktu_Kelahiran` date NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Kewarganegaraan` varchar(20) NOT NULL,
  `Kebangsaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataayah`
--

INSERT INTO `dataayah` (`Id`, `NIK`, `NamaLengkap`, `Tempat_Kelahiran`, `Waktu_Kelahiran`, `Alamat`, `Kewarganegaraan`, `Kebangsaan`) VALUES
(1, '62113080', 'john', 'kediri, jawa timur', '1996-04-05', 'Jl. elang no. X', 'WNI', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `databayi`
--

CREATE TABLE `databayi` (
  `Id` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jenis_Kelamin` char(1) NOT NULL,
  `Tempat_Kelahiran` varchar(30) NOT NULL,
  `Waktu_Kelahiran` datetime NOT NULL,
  `Kelahiran` int(1) NOT NULL,
  `Penolong_Bayi` varchar(20) NOT NULL,
  `Berat_Bayi` int(2) NOT NULL,
  `Panjang_Bayi` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `databayi`
--

INSERT INTO `databayi` (`Id`, `Nama`, `Jenis_Kelamin`, `Tempat_Kelahiran`, `Waktu_Kelahiran`, `Kelahiran`, `Penolong_Bayi`, `Berat_Bayi`, `Panjang_Bayi`) VALUES
(1, 'B', 'L', 'kediri, jawa timur', '2023-04-24 05:04:22', 1, 'bidan', 2500, 50);

-- --------------------------------------------------------

--
-- Table structure for table `dataibu`
--

CREATE TABLE `dataibu` (
  `Id` int(11) NOT NULL,
  `NIK` varchar(17) NOT NULL,
  `NamaLengkap` varchar(30) NOT NULL,
  `Tempat_Kelahiran` varchar(20) NOT NULL,
  `Waktu_Kelahiran` date NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Kewarganegaraan` varchar(20) NOT NULL,
  `Kebangsaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataibu`
--

INSERT INTO `dataibu` (`Id`, `NIK`, `NamaLengkap`, `Tempat_Kelahiran`, `Waktu_Kelahiran`, `Alamat`, `Kewarganegaraan`, `Kebangsaan`) VALUES
(1, '62113080', 'Angel', 'kediri, jawa timur', '1996-04-01', 'Jl. gagak no. XX', 'WNI', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `datasaksi1`
--

CREATE TABLE `datasaksi1` (
  `Id` int(11) NOT NULL,
  `NIK` varchar(17) NOT NULL,
  `NamaLengkap` varchar(30) NOT NULL,
  `Tempat_Kelahiran` varchar(20) NOT NULL,
  `Waktu_Kelahiran` date NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Kewarganegaraan` varchar(20) NOT NULL,
  `Kebangsaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datasaksi1`
--

INSERT INTO `datasaksi1` (`Id`, `NIK`, `NamaLengkap`, `Tempat_Kelahiran`, `Waktu_Kelahiran`, `Alamat`, `Kewarganegaraan`, `Kebangsaan`) VALUES
(1, '62113081', 'lucy', 'kediri, jawa timur', '1996-04-05', 'Jl. elang no. X', 'WNI', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `datasaksi2`
--

CREATE TABLE `datasaksi2` (
  `Id` int(11) NOT NULL,
  `NIK` varchar(17) NOT NULL,
  `NamaLengkap` varchar(30) NOT NULL,
  `Tempat_Kelahiran` varchar(20) NOT NULL,
  `Waktu_Kelahiran` date NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Kewarganegaraan` varchar(20) NOT NULL,
  `Kebangsaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datasaksi2`
--

INSERT INTO `datasaksi2` (`Id`, `NIK`, `NamaLengkap`, `Tempat_Kelahiran`, `Waktu_Kelahiran`, `Alamat`, `Kewarganegaraan`, `Kebangsaan`) VALUES
(1, '62113082', 'balmon', 'palangka raya, kalim', '1995-04-02', 'Jl. elang no. X', 'WNI', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `filesupload`
--

CREATE TABLE `filesupload` (
  `Id` int(11) NOT NULL,
  `KK` varchar(20) NOT NULL,
  `KTP_Ibu` varchar(20) NOT NULL,
  `KTP_Ayah` varchar(20) NOT NULL,
  `Ket_Nikah` varchar(20) NOT NULL,
  `Ket_LahirAnak` varchar(20) NOT NULL,
  `KTP_Saksi` varchar(20) NOT NULL,
  `KTP_Saksi2` varchar(20) NOT NULL,
  `waktu_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filesupload`
--

INSERT INTO `filesupload` (`Id`, `KK`, `KTP_Ibu`, `KTP_Ayah`, `Ket_Nikah`, `Ket_LahirAnak`, `KTP_Saksi`, `KTP_Saksi2`, `waktu_upload`) VALUES
(1, 'fb', 'bvs', 'bds', 'sb', 'dsb', 'sdb', 'fd', '2023-04-01');

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
  `FotoProfile` varchar(2000) NOT NULL,
  `WaktuRegister` date NOT NULL,
  `Pemberitahuan` varchar(1000) NOT NULL DEFAULT 'Belum ada pemberitahuan',
  `Level` varchar(10) NOT NULL DEFAULT 'Umum',
  `StatusLayanan` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Password`, `Nama`, `Email`, `NomorTelp`, `NIK`, `FotoProfile`, `WaktuRegister`, `Pemberitahuan`, `Level`, `StatusLayanan`) VALUES
(1, 'u', 'u', 'u@gmail.com', '08684334634', '62100823', 'https://plus.unsplash.com/premium_photo-1673296129756-e45408e25250?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=813&q=80', '2023-04-02', '', 'Umum', 0),
(2, 'n', 'n', 'n@gmail.com', '08684334635', '6210082554', 'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80', '2023-04-02', '', 'Umum', 0),
(3, 'a', 'a', 'a@gmail.com', '08684334634', '621008232', 'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', '2023-04-02', '', 'Admin', 0),
(4, 'c', 'c', 'z@gmail.com', '6218563743', '621308082135', 'gambar.jpg', '2023-04-25', 'Belum ada pemberitahuan', 'Umum', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antrianvalid`
--
ALTER TABLE `antrianvalid`
  ADD PRIMARY KEY (`IdAntrian`),
  ADD KEY `IdUser` (`IdUser`);

--
-- Indexes for table `dataayah`
--
ALTER TABLE `dataayah`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `databayi`
--
ALTER TABLE `databayi`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `dataibu`
--
ALTER TABLE `dataibu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `datasaksi1`
--
ALTER TABLE `datasaksi1`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `datasaksi2`
--
ALTER TABLE `datasaksi2`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `filesupload`
--
ALTER TABLE `filesupload`
  ADD PRIMARY KEY (`Id`);

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
  MODIFY `IdAntrian` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `antrianvalid`
--
ALTER TABLE `antrianvalid`
  ADD CONSTRAINT `antrianvalid_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`Id`);

--
-- Constraints for table `dataayah`
--
ALTER TABLE `dataayah`
  ADD CONSTRAINT `dataayah_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `users` (`Id`);

--
-- Constraints for table `databayi`
--
ALTER TABLE `databayi`
  ADD CONSTRAINT `databayi_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `users` (`Id`);

--
-- Constraints for table `dataibu`
--
ALTER TABLE `dataibu`
  ADD CONSTRAINT `dataibu_ibfk_2` FOREIGN KEY (`Id`) REFERENCES `users` (`Id`);

--
-- Constraints for table `datasaksi1`
--
ALTER TABLE `datasaksi1`
  ADD CONSTRAINT `datasaksi1_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `users` (`Id`);

--
-- Constraints for table `datasaksi2`
--
ALTER TABLE `datasaksi2`
  ADD CONSTRAINT `datasaksi2_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `users` (`Id`);

--
-- Constraints for table `filesupload`
--
ALTER TABLE `filesupload`
  ADD CONSTRAINT `filesupload_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `users` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
