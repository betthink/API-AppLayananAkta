-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 06:52 AM
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
-- Database: `aplikasi_layanan_akta`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `antrianvalid`
--

INSERT INTO `antrianvalid` (`IdAntrian`, `WaktuTerima`, `WaktuSelesai`, `IdPengambilan`, `Status`, `IdUser`) VALUES
(1, '2023-04-01', '2023-04-08', '', 'Terdaftar', 0),
(2, '2023-04-01', '2023-04-08', '', 'Terdaftar', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `Panjang_Bayi` int(2) NOT NULL,
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `databayi`
--

INSERT INTO `databayi` (`Id`, `Nama`, `Jenis_Kelamin`, `Tempat_Kelahiran`, `Waktu_Kelahiran`, `Kelahiran`, `Penolong_Bayi`, `Berat_Bayi`, `Panjang_Bayi`, `IdUser`) VALUES
(1, 'B', 'L', 'kediri, jawa timur', '2023-04-24 05:04:22', 1, 'bidan', 2500, 50, 1),
(2, 'B', 'L', 'kediri, jawa timur', '2023-04-24 05:04:22', 1, 'bidan', 2500, 50, 1);

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
  `Kebangsaan` varchar(20) NOT NULL,
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataibu`
--

INSERT INTO `dataibu` (`Id`, `NIK`, `NamaLengkap`, `Tempat_Kelahiran`, `Waktu_Kelahiran`, `Alamat`, `Kewarganegaraan`, `Kebangsaan`, `IdUser`) VALUES
(1, '62113080', 'Angel', 'kediri, jawa timur', '1996-04-01', 'Jl. gagak no. XX', 'WNI', 'Indonesia', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `KTPIbu` varchar(20) NOT NULL,
  `KTPBapak` varchar(20) NOT NULL,
  `BukuNikah` varchar(20) NOT NULL,
  `KeteranganLahir` varchar(20) NOT NULL,
  `KTPSaksi` varchar(20) NOT NULL,
  `KTPSaksi2` varchar(20) NOT NULL,
  `Status` varchar(10) NOT NULL DEFAULT 'Terdaftar',
  `Pesan` varchar(100) NOT NULL,
  `WaktuPendaftaran` date NOT NULL,
  `IdUsers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filesupload`
--

INSERT INTO `filesupload` (`Id`, `KK`, `KTPIbu`, `KTPBapak`, `BukuNikah`, `KeteranganLahir`, `KTPSaksi`, `KTPSaksi2`, `Status`, `Pesan`, `WaktuPendaftaran`, `IdUsers`) VALUES
(1, 'fb', 'bvs', 'bds', 'sb', 'dsb', 'sdb', '', 'Selesai', 'vae', '2023-03-16', 1),
(2, 'dfh', 'dfh', 'drh', 'dhdh', 'dfh', 'dfhd', '', 'Diproses', '', '2023-03-02', 2),
(3, 'one', 'one', 'one', 'one', 'one', 'one', '', 'Terdaftar', '', '2023-03-25', 3),
(4, 'dataA', 'dataA', 'dataA', 'dataA', 'dataA', 'dataA', '', 'Terdaftar', '', '2023-03-01', 4),
(5, 'dataB', 'dataB', 'dataB', 'dataB', 'dataB', 'dataB', '', 'Ditolak', 'Berkas Persyaratan Kurang Lengkap karena ada data yang double', '2023-03-01', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `JenisKelamin` char(1) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `TglLahir` date NOT NULL,
  `Email` varchar(30) NOT NULL,
  `NomorTelp` varchar(20) NOT NULL,
  `NIK` varchar(20) NOT NULL,
  `FotoProfile` varchar(2000) NOT NULL,
  `WaktuRegister` date NOT NULL,
  `Level` varchar(10) NOT NULL DEFAULT 'Umum',
  `StatusLayanan` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Password`, `JenisKelamin`, `Nama`, `TglLahir`, `Email`, `NomorTelp`, `NIK`, `FotoProfile`, `WaktuRegister`, `Level`, `StatusLayanan`) VALUES
(1, 'u', 'L', 'u', '1999-05-18', 'u@gmail.com', '08684334634', '62100823', 'https://plus.unsplash.com/premium_photo-1673296129756-e45408e25250?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=813&q=80', '2023-04-02', 'Umum', 0),
(2, 'n', 'L', 'n', '1999-05-19', 'n@gmail.com', '08684334635', '6210082554', 'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80', '2023-04-02', 'Umum', 0),
(3, 'a', 'L', 'a', '1999-05-18', 'a@gmail.com', '08684334634', '621008232', 'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', '2023-04-02', 'Admin', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antrianvalid`
--
ALTER TABLE `antrianvalid`
  ADD PRIMARY KEY (`IdAntrian`);

--
-- Indexes for table `dataayah`
--
ALTER TABLE `dataayah`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `databayi`
--
ALTER TABLE `databayi`
  ADD PRIMARY KEY (`Id`),
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
-- AUTO_INCREMENT for table `databayi`
--
ALTER TABLE `databayi`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `filesupload`
--
ALTER TABLE `filesupload`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dataayah`
--
ALTER TABLE `dataayah`
  ADD CONSTRAINT `dataayah_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `users` (`Id`);

--
-- Constraints for table `databayi`
--
ALTER TABLE `databayi`
  ADD CONSTRAINT `databayi_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`Id`);

--
-- Constraints for table `dataibu`
--
ALTER TABLE `dataibu`
  ADD CONSTRAINT `dataibu_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`Id`),
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
  ADD CONSTRAINT `filesupload_ibfk_1` FOREIGN KEY (`IdUsers`) REFERENCES `users` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
