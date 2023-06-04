-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 02, 2023 at 08:51 PM
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
(40, '2023-05-30 18:47:53', '2023-05-31', NULL, '2023-05-31', '414040', 'Diterima', 41, 40),
(41, '2023-05-31 01:37:21', '2023-05-31', NULL, '2023-05-31', '424140', 'Diterima', 42, 40),
(42, '2023-05-31 02:47:05', '2023-05-31', NULL, '2023-05-31', '4325', 'Diterima', 42, 40),
(43, '2023-05-31 08:20:45', NULL, NULL, '2023-05-31', '4325', 'Diterima', 43, NULL),
(44, '2023-05-31 10:30:07', NULL, '2023-05-31', NULL, NULL, 'Ditolak', 42, NULL),
(45, '2023-05-31 11:13:36', '2023-05-31', NULL, '2023-05-31', '444534', 'Diterima', 44, 34),
(46, '2023-05-31 11:21:28', NULL, '2023-05-31', NULL, NULL, 'Ditolak', 44, NULL),
(47, '2023-05-31 17:35:40', '2023-05-31', NULL, NULL, NULL, 'Diproses', 42, 34),
(48, '2023-06-02 20:06:16', NULL, '2023-06-02', NULL, NULL, 'Ditolak', 41, NULL),
(49, '2023-06-02 20:25:56', NULL, '2023-06-02', NULL, NULL, 'Ditolak', 41, NULL),
(50, '2023-06-02 20:41:55', NULL, NULL, NULL, NULL, 'Terdaftar', 45, NULL);

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
(40, '62130808373', 'Yos', 'Batuah, Barito timur', '1999-05-31', 'Jl. Merpati', 'WNI', 'Indonesia ', 'Progamer', 41),
(41, '6213039', 'Duminukus', 'Ampah, Kalteng', '1970-05-31', 'Jl. Merpati', 'WNI', 'Indonesia', 'Petani', 42),
(42, '676235', 'Robet', 'Kediri, jawa timur', '2000-05-31', 'jl. Diponegoro', 'WNI', 'Indonesia', 'Programer', 42),
(43, '64467', 'Halo', 'Jakarta', '1988-05-31', 'Jakarta', 'WNI', 'Indonesia', 'Prog', 43),
(44, '66633 ', 'Ata', '', '2023-05-31', '', 'WNA', 'Indonesia', 'Perk', 42),
(45, '', '', '', '2023-05-31', '', '', '', '', 44),
(46, '', '', '', '2023-05-31', '', '', '', '', 44),
(47, '', '', '', '2023-06-01', '', '', '', '', 42),
(48, '', '', '', '2023-06-03', '', '', '', '', 41),
(49, '6122351', 'Joe', 'Ampah, Kalimantan Tengah', '1998-06-03', 'Palangka Raya Km 5', 'WNI', 'Indonesai', 'Progamer', 41),
(50, '63467', 'n', 'n', '2023-06-03', 'n', 'WNA', 'Indonesia', 'prog', 45);

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
(40, 'Flapri', 'Laki-laki', 'RS', 'Seruyan', '2023-05-31', '01:33:00', 1, 'Dokter', '50', '50', '0', 41),
(41, 'Robet', 'Laki-laki', 'RS', 'Kediri, jawa timur', '2000-05-31', '08:25:00', 1, 'Bidan/Perawat', '60', '60', 'LAYANAN telah selesai', 42),
(42, 'Adam', 'Laki-laki', 'RS', 'any', '2023-05-31', '09:40:00', 1, 'Bidan/Perawat', '60', '60', 'tet', 42),
(43, 'Petrus', 'Laki-laki', 'RS', 'Palangka Raya', '2023-05-31', '15:16:00', 2, 'Dukun', '54', '45', '0', 43),
(44, 'Justin', 'Laki-laki', 'RS', 'Ll', '2023-05-31', '17:11:00', 2, 'Dokter', '60', '60', '0', 42),
(45, 'BayiX', 'Laki-laki', 'RS', 'Jkj', '2023-05-31', '18:06:00', 1, 'Bidan/Perawat', '60', '60', 'Sudah kok\n', 44),
(46, 'Iyas', 'Perempuan', 'Rumah', 'Pky', '2015-05-31', '17:20:00', 2, 'Bidan/Perawat', '60', '60', 'Antriannya Saya tolaj\n\n', 44),
(47, 'Add', '', '', '', '2023-06-01', '00:34:00', 0, '', '', '', '0', 42),
(48, '', '', '', '', '2023-06-03', '03:05:00', 0, '', '', '', '', 41),
(49, 'Gory', 'Laki-laki', 'RS', 'kediri, jawa timur', '2023-06-03', '03:11:00', 1, 'Dokter', '60', '60', 'tidak ad file\n', 41),
(50, 'I love u', 'Perempuan', 'RS', 's', '2023-06-03', '03:39:00', 1, 'Dokter', '50', '65', '0', 45);

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
(40, '62130847', 'Susanti', 'Pahandut', '1999-05-31', 'Jl. Temanggung tilung', 'WNI', 'Indonesia ', 'Progamer', 41),
(41, '62130848', 'Rumini', 'Kediri, jawa timur', '2002-05-31', 'Jl. Banyaan', 'WNI', 'Indonesia', 'IRT', 42),
(42, '621234532', 'Angel', 'Palangka Raya, kalimantantengah', '1999-05-31', 'jl. sempit', 'WNI', 'Indonesia.', 'Guru', 42),
(43, '62130698', 'Jes', 'PALANGKA RAYA', '2023-05-31', 'Jl. Garuda', '', 'Indonesia', 'Pro', 43),
(44, '66227', 'In', 'L', '2023-05-31', 'Mb', 'WNI', 'Indonesia', 'IRT', 42),
(45, '', '', '', '2023-05-31', '', '', '', '', 44),
(46, '', '', '', '2023-05-31', '', '', '', '', 44),
(47, '', '', '', '2023-06-01', '', '', '', '', 42),
(48, '', '', '', '2023-06-03', '', '', '', '', 41),
(49, '62124412', 'zia', 'kediri, jawa timur', '2003-06-03', 'Palangkaraya, km 5', 'WNI', 'Indonesia', 'belum ada', 41),
(50, '64377', 'n', 'n', '2023-06-03', 'n my', 'WNI', 'Indonesia', 'n', 45);

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
(40, '62133949', 'Dom', 'Jakarta', '1999-05-31', 'Jl. Tilung', 'WNI', 'Indonesia ', 41),
(41, '6213040', 'Saksi 1', 'Saksi 2', '2023-05-08', 'Jl. Yos sudarso', 'WNI', 'Indonesia', 42),
(42, '43266642', '2346', '2346', '2023-05-10', 'egaweg', 'WNI', 'ind', 42),
(43, '7445', 'Sam', '', '2023-05-31', '', 'WNA', '', 43),
(44, '737', 'Jaj', '', '2023-05-31', '', 'WNI', '', 42),
(45, '', '', '', '2023-05-31', '', '', '', 44),
(46, '', '', '', '2023-05-31', '', '', '', 44),
(47, '', '', '', '2023-06-01', '', '', '', 42),
(48, '', '', '', '2023-06-03', 'B', '', '', 41),
(49, '621425254', 'tandus', 'ampah, Kalimantan Tengah', '1991-06-03', 'Palangka Raya', 'WNI', 'Indonesia', 41),
(50, '547357', 'z', 'z', '2023-06-03', 'z', 'WNI', 'z', 45);

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
(40, '6122838', '', '', '2023-05-31', '', 'WNI', '', 41),
(41, '6213949', 'Sals2', 'Jakarta', '1993-05-31', 'Jl. Kenanga', 'WNI', 'Indonesia', 42),
(42, '63426', 'svdva', 'asdv', '2023-05-31', 'vd', 'WNI', 'Indonesai', 42),
(43, '68874', 'Pe', '', '2023-05-31', '', 'WNI', '', 43),
(44, '', '', '', '2023-05-31', '', '', '', 42),
(45, '', '', '', '2023-05-31', '', '', '', 44),
(46, '', '', '', '2023-05-31', '', '', '', 44),
(47, '', '', '', '2023-06-01', '', '', '', 42),
(48, '', '', '', '2023-06-03', '', '', '', 41),
(49, '62141455', 'Sudir', 'Batuah, Barito Timur, Kalimantan Tengah', '1998-06-03', 'Palangka Raya', 'WNI', 'Indonesia', 41),
(50, '66235', 'a', 'a', '2023-06-03', 'a', 'WNI', 'a', 45);

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
(40, '40.zip', '2023-05-30', 41),
(41, '41.zip', '2023-05-31', 42),
(43, '43.zip', '2023-05-31', 43),
(44, '44.zip', '2023-05-31', 42),
(45, '45.zip', '2023-05-31', 44),
(46, '46.zip', '2023-05-31', 44),
(47, '47.zip', '2023-05-31', 42),
(50, '50.zip', '2023-06-02', 45);

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
(34, 'admin', 'admin', 'admin@gmail.com', '0852356325', '621333', 'george-dagerotip-C_LtS_cNEU4-unsplash.jpg', '0000-00-00', 'Admin', '0'),
(40, 'a', 'a', 'a@gmail.com', '123445', '1344', '', '2023-05-30', 'Admin', '1'),
(41, 's', 's', 'b@b', '321', '123', 'Screenshot_2023-05-30-17-29-43-316_com.google.android.youtube.jpg', '2023-05-30', 'Umum', ''),
(42, 'u', 'u', 'U@gmail.com', '085752656311', '62130800', 'Snapinsta.app_1080_331666369_161976183297543_8208840073112480198_n.jpg', '2023-05-31', 'Umum', ''),
(43, 'c', 'c', '4@gmail.com', '08575657856', '631556678', 'IMG-20230420-WA0018.jpg', '2023-05-31', 'Umum', ''),
(44, 'X', 'X', 'X@gmail.com', '321', '7777', '20230531_113444.jpg', '2023-05-31', 'Umum', ''),
(45, 'n', 'niceguy', 'nice@gmail.com', '0857531535', '6230834', 'ahmed-vKj60Xz0cRA-unsplash.jpg', '2023-06-01', 'Umum', '');

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
  MODIFY `IdAntrian` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `databayi`
--
ALTER TABLE `databayi`
  MODIFY `IdAnak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
