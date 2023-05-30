-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 30, 2023 at 10:25 AM
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
(29, '2023-05-27 15:34:37', '2023-05-27', NULL, '2023-05-27', '35293', 'Selesai', 35, 3),
(31, '2023-05-28 15:31:49', '2023-05-29', NULL, NULL, NULL, 'Valid', 35, NULL),
(33, '2023-05-28 18:28:47', '2023-05-29', NULL, '2023-05-30', '35333', 'Selesai', 35, 3),
(34, '2023-05-29 15:06:31', NULL, '2023-05-29', NULL, NULL, 'Ditolak', 35, NULL),
(35, '2023-05-29 15:23:05', NULL, NULL, NULL, NULL, 'Terdaftar', 35, NULL),
(37, '2023-05-29 18:17:06', NULL, NULL, NULL, NULL, 'Terdaftar', 35, NULL);

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
(29, '6325q253', 'ayah1', 'Palngka Raya', '1999-05-27', 'jl. dekeat', 'WNI', 'Indonesia', 'progamer', 35),
(30, '6213047474', 'Steve', 'Jakarta', '2001-05-01', 'Jl. Merpati', 'WNI', 'Indonesia', 'Progamer', 35),
(31, '6325124', 'sudirman', 'palngka raya', '1999-05-28', 'jalan tilung', 'WNI', 'Indonesia', 'progamer', 35),
(32, '5766775', 'Ayah4', 'Ampah, Barito timur', '1980-05-29', 'Jl. Ta', 'WNI', 'Indonesia', 'Petani', 35),
(33, '', '', '', '2023-05-29', '', '', '', '', 35),
(34, '62347', 'Duminikus', 'Ampah', '2012-05-29', 'Pky', 'WNA', 'Indonesia', '', 35),
(35, '', '', '', '2023-05-29', '', '', '', '', 35),
(37, '', '', '', '2023-05-30', '', '', '', '', 35);

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
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `databayi`
--

INSERT INTO `databayi` (`IdAnak`, `Nama`, `JenisKelamin`, `TempatPersalinan`, `TempatKelahiran`, `DateKelahiran`, `TimeKelahiran`, `UrutanKelahiran`, `PenolongBayi`, `BeratBayi`, `PanjangBayi`, `IdUser`) VALUES
(29, 'Bayi1', 'Laki-laki', 'RS', 'Palangka Raya', '2023-05-27', '22:29:00', 1, 'Dokter', '50 g', '50 cm', 35),
(30, 'Josh', 'Laki-laki', 'Rumah', 'Jakarta', '2023-05-28', '10:20:00', 3, 'Dukun', '50 g', '50cm', 35),
(31, 'Petrus', 'Laki-laki', 'RS', 'pky', '2023-05-28', '22:00:00', 1, 'Dokter', '50g', '50cm', 35),
(32, 'Goerge', 'Laki-laki', 'RS', 'PALANGKA RAYA', '2005-05-29', '00:26:00', 1, 'Bidan/Perawat', '50g', '60cm', 35),
(33, 'Jamdz', 'Laki-laki', 'RS', 'Ssc', '2023-05-29', '01:26:00', 1, 'Dokter', '50g', '60cm', 35),
(34, 'Mussa', 'Laki-laki', 'Puskesmas', 'Tamiang layang', '2023-05-29', '22:02:00', 2, 'Bidan/Perawat', '60g', '70cm', 35),
(35, 'Yudas', 'Laki-laki', 'Lainnya', 'Nazareth', '2023-05-29', '22:17:00', 1, 'Dukun', '54 cm', '50Cm', 35),
(36, 'Any', 'Laki-laki', 'RS', 'Pky', '2023-05-30', '00:31:00', 2, 'Bidan/Perawat', '60g', '70cm', 35),
(37, 'Pk', '', '', '', '2023-05-30', '01:11:00', 0, '', '', '', 35);

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
(29, '62112423152', 'Ibu1', 'Palangka Raya', '2023-05-27', 'jl. dekeat', 'WNI', 'Indonesia', 'Petani', 35),
(30, '621484774', 'Selena', 'Jakarta', '2002-05-28', 'Jl. Merpati', 'WNI', 'Indonesia', 'Designer', 35),
(31, '621242353', 'Bella', 'palangka raya', '2023-05-28', 'Jl. jauh kok', 'WNI', 'Indonesia', 'programer', 35),
(32, '64677754', 'Rum', 'Kediri, jawa timur', '1987-05-29', 'Jl. Bangau', 'WNI', 'Indonesia', 'Wirausaha', 35),
(33, '', '', '', '2023-05-29', '', '', '', '', 35),
(34, '62173736', 'Rumini', 'Kediri jawa timur', '2023-05-29', 'Jl. Garuda', 'WNI', 'Indonesia', 'Ibu rumah tangga', 35),
(35, '', '', '', '2023-05-29', '', '', '', '', 35),
(37, '', '', '', '2023-05-30', '', '', '', '', 35);

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
(29, '62142253', 'Saksi 1', 'Palngka Raya', '2001-05-27', '', 'WNI', 'Indonesai', 35),
(30, '621678765', 'Agus', 'Palangka Raya', '1999-05-28', 'Jl. Sana', 'WNI', 'Indonesia', 35),
(31, '6211411', 'john', 'Palangka raya', '2023-05-28', 'Jl. tak tak bungu', 'WNI', 'Indonesia', 35),
(32, '657866', 'Fnnc', 'Guh', '2008-05-29', 'Jl. Ygjfh', 'WNI', 'Indonesia', 35),
(33, '', '', '', '2023-05-29', '', '', '', 35),
(34, 'Saksi 1', '', '', '2023-05-29', '', '', '', 35),
(35, '', '', '', '2023-05-29', '', '', '', 35),
(37, '', '', '', '2023-05-30', '', '', '', 35);

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
(29, '347346w4', 'Saksi 2', 'Palngka Raya', '2001-05-27', 'jl. sana', 'WNI', 'Indonesai', 35),
(30, '621394884', 'Salsi', 'Palangka Raya', '2000-05-28', 'Jl. Raha', 'WNI', 'Indonesia', 35),
(31, '621234523q', 'ren', 'Tamiang Layang', '2023-05-28', 'Jl.sudirman', 'WNI', 'Indonesia', 35),
(32, '67657888', 'Vgxv', 'Hannah', '1999-05-16', 'Gxj', 'WNI', 'Indonesia', 35),
(33, '', '', '', '2023-05-29', '', '', '', 35),
(34, 'Saksi 2', '', '', '2023-05-29', '', '', '', 35),
(35, '', '', '', '2023-05-29', '', '', '', 35),
(37, '', '', '', '2023-05-30', '', '', '', 35);

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
(19, '19.zip', '2023-05-28', 1),
(20, '20.zip', '2023-05-28', 1),
(21, '21.zip', '2023-05-28', 2),
(31, '31.zip', '2023-05-28', 35),
(33, '33.zip', '2023-05-28', 35),
(34, '34.zip', '2023-05-29', 35),
(35, '35.zip', '2023-05-29', 35);

-- --------------------------------------------------------

--
-- Table structure for table `filesupload`
--

CREATE TABLE `filesupload` (
  `IdAnak` int(11) NOT NULL,
  `KK` varchar(30) NOT NULL,
  `KTP_Ibu` varchar(30) NOT NULL,
  `KTP_Ayah` varchar(30) NOT NULL,
  `Ket_Nikah` varchar(30) NOT NULL,
  `Ket_LahirAnak` varchar(30) NOT NULL,
  `KTP_Saksi` varchar(30) NOT NULL,
  `KTP_Saksi2` varchar(30) NOT NULL,
  `waktu_upload` date NOT NULL,
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filesupload`
--

INSERT INTO `filesupload` (`IdAnak`, `KK`, `KTP_Ibu`, `KTP_Ayah`, `Ket_Nikah`, `Ket_LahirAnak`, `KTP_Saksi`, `KTP_Saksi2`, `waktu_upload`, `IdUser`) VALUES
(29, 'george-dagerotip-C_L', 'pete-walls-FGG3s99wQ', 'george-dagerotip-C_L', 'pete-walls-FGG3s99wQ', 'george-dagerotip-C_L', 'pete-walls-FGG3s99wQ', 'george-dagerotip-C_L', '2023-05-27', 35),
(30, 'Screenshot_20230526-102154.png', 'Screenshot_20230526-102154.png', 'IMG-20230526-WA0001.jpg', 'IMG-20230522-WA0003.jpg', 'IMG-20230522-WA0000.jpg', 'IMG-20230526-WA0000.jpg', 'IMG-20230526-WA0001.jpg', '2023-05-28', 35);

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
  `Pemberitahuan` varchar(200) NOT NULL DEFAULT 'Belum ada pemberitahuan',
  `Level` varchar(5) NOT NULL DEFAULT 'Umum',
  `StatusLayanan` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Password`, `Nama`, `Email`, `NomorTelp`, `NIK`, `FotoProfile`, `WaktuRegister`, `Pemberitahuan`, `Level`, `StatusLayanan`) VALUES
(3, 'a', 'a', 'a@gmail.com', '08684334634', '621008232', 'https://images.unsplash.com/photo-1503899036084-c55cdd92da26?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', '2023-04-02', '', 'Admin', '1'),
(34, 'admin', 'admin', 'admin@gmail.com', '0852356325', '621333', 'george-dagerotip-C_LtS_cNEU4-unsplash.jpg', '0000-00-00', 'layanan anda sudah selesai, sihlakan membawa berkas fisik  asli yang anda upload', 'Admin', '1'),
(35, 'u', 'u', 'nama@gmail.com', '0857231532', '621308935', 'george-dagerotip-C_LtS_cNEU4-unsplash.jpg', '2023-05-27', 'khvhjcmhgxgnfzhhchmmgmxmhxfgg', 'Umum', '0'),
(36, 'r', 'r', 'robetszone@gmail.com', '085752656311', '6213080813384', 'IMG-20230420-WA0018.jpg', '2023-05-28', 'Belum ada pemberitahuan', 'Umum', '0'),
(37, 'm', 'm', 'Google@gmail.com', '0876363', '763638', 'codingvision-28052023-0001.jpg', '2023-05-29', 'Belum ada pemberitahuan', 'Umum', '0'),
(38, 'res', 'rens', 'rens@gmail.com', '086426626', '621314325', '1.png', '2023-05-29', 'Belum ada pemberitahuan', 'Umum', '0'),
(39, 'J', 'Jsjsj', 'Jjn', 'Nnj', 'Nn', 'IMG-20230529-WA0008.jpg', '2023-05-29', 'Belum ada pemberitahuan', 'Umum', '0');

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
-- Indexes for table `filesupload`
--
ALTER TABLE `filesupload`
  ADD PRIMARY KEY (`IdAnak`),
  ADD KEY `IdUser` (`IdUser`);

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
  MODIFY `IdAntrian` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `databayi`
--
ALTER TABLE `databayi`
  MODIFY `IdAnak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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

--
-- Constraints for table `filesupload`
--
ALTER TABLE `filesupload`
  ADD CONSTRAINT `filesupload_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`Id`),
  ADD CONSTRAINT `filesupload_ibfk_2` FOREIGN KEY (`IdAnak`) REFERENCES `databayi` (`IdAnak`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
