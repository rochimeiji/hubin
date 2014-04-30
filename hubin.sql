-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 30, 2014 at 08:08 AM
-- Server version: 5.1.46
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hubin`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id_gallery` int(11) NOT NULL AUTO_INCREMENT,
  `title_gallery` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `img_gallery` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `ket_gallery` text COLLATE latin1_general_ci NOT NULL,
  `role_gallery` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `gallery`
--


-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
  `id_jurusan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `ket_jurusan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `ket_jurusan`) VALUES
(1, 'SURTA', 'Survey Dan Pemetaan'),
(2, 'RPL', 'Rekayasa Perangkat Lunak'),
(3, 'GEOTA', 'Geologi Pertambangan'),
(4, 'GARMEN', 'Tata Busana');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `value_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `value_kategori`) VALUES
(1, 'agama', 'Islam'),
(2, 'agama', 'Kristen Protestan'),
(3, 'agama', 'Kristen Katolik'),
(4, 'agama', 'Hindu'),
(5, 'agama', 'Budha'),
(6, 'agama', 'Konghuchu'),
(7, 'jk', 'Laki-laki'),
(8, 'jk', 'Perempuan'),
(9, 'status', 'Menikah'),
(10, 'status', 'Belum Menikah');

-- --------------------------------------------------------

--
-- Table structure for table `kel_prakerin`
--

CREATE TABLE IF NOT EXISTS `kel_prakerin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prakerin` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kel_prakerin`
--


-- --------------------------------------------------------

--
-- Table structure for table `pendidikan_formal`
--

CREATE TABLE IF NOT EXISTS `pendidikan_formal` (
  `id_pndk_formal` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `awal_pndk_formal` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `akhir_pndk_formal` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `nama_pndk_formal` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_pndk_formal`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `pendidikan_formal`
--

INSERT INTO `pendidikan_formal` (`id_pndk_formal`, `id_siswa`, `awal_pndk_formal`, `akhir_pndk_formal`, `nama_pndk_formal`) VALUES
(8, 1, '2002', '2008', 'SDN PAGELARAN 04 BOGOR'),
(9, 1, '2008', '2011', 'SMPN 1 CIOMAS BOGOR'),
(10, 1, '2011', '2014', 'SMK ADI SANGGORO BOGOR');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan_informal`
--

CREATE TABLE IF NOT EXISTS `pendidikan_informal` (
  `id_pndk_informal` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `awal_pndk_informal` int(6) NOT NULL,
  `akhir_pndk_informal` int(6) NOT NULL,
  `nama_pndk_informal` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_pndk_informal`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pendidikan_informal`
--

INSERT INTO `pendidikan_informal` (`id_pndk_informal`, `id_siswa`, `awal_pndk_informal`, `akhir_pndk_informal`, `nama_pndk_informal`) VALUES
(1, 1, 2008, 2008, 'Mengikuti Workshop Startup Asia 7 Cities Road, Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE IF NOT EXISTS `perusahaan` (
  `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `alamat_perusahaan` text COLLATE latin1_general_ci NOT NULL,
  `tlp_perusahaan` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `link_perusahaan` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `email_perusahaan` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `about_perusahaan` text COLLATE latin1_general_ci NOT NULL,
  `logo_perusahaan` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `user` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `status` enum('active','non') COLLATE latin1_general_ci NOT NULL DEFAULT 'non',
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `perusahaan`
--


-- --------------------------------------------------------

--
-- Table structure for table `prakerin`
--

CREATE TABLE IF NOT EXISTS `prakerin` (
  `id_prakerin` int(11) NOT NULL AUTO_INCREMENT,
  `id_perusahaan` int(11) NOT NULL DEFAULT '1',
  `id_jurusan` int(11) NOT NULL DEFAULT '1',
  `hasil_laporan` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `tgl_prakerin` date NOT NULL,
  `about_prakerin` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_prakerin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `prakerin`
--


-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `nama_siswa` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `id_jurusan` int(11) NOT NULL DEFAULT '1',
  `tmp_lhr_siswa` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `tgl_lhr_siswa` date NOT NULL,
  `jk_siswa` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `negara_siswa` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `agama_siswa` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `status_siswa` enum('Menikah','Belum Menikah') COLLATE latin1_general_ci NOT NULL DEFAULT 'Belum Menikah',
  `alamat_siswa` text COLLATE latin1_general_ci NOT NULL,
  `tlp_siswa` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `email_siswa` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `foto_siswa` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `ktp_siswa` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `id_ta` int(11) NOT NULL DEFAULT '1',
  `ket_siswa` enum('lulus','belum') COLLATE latin1_general_ci NOT NULL DEFAULT 'belum',
  `status` enum('active','non') COLLATE latin1_general_ci NOT NULL DEFAULT 'non',
  PRIMARY KEY (`id_siswa`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `user`, `pass`, `nama_siswa`, `id_jurusan`, `tmp_lhr_siswa`, `tgl_lhr_siswa`, `jk_siswa`, `negara_siswa`, `agama_siswa`, `status_siswa`, `alamat_siswa`, `tlp_siswa`, `email_siswa`, `foto_siswa`, `ktp_siswa`, `id_ta`, `ket_siswa`, `status`) VALUES
(1, '1101.eiji', '75f0c41e7cd6d02c6e9f18eba211f5e0fb55fb02', 'Rochim Eiji', 2, 'Tangerang', '1996-08-22', 'Laki-laki', 'Indonesia', 'Islam', 'Belum Menikah', 'Bukit Asri Block C 20 No 10 Kec. Ciomas Kab.Bogor', '085777909254', 'rochimeiji96@gmail.com', '1398838068kupu_kupu_by_poogi.jpg', '3201292308860004', 5, 'lulus', 'active'),
(2, '1101.fauzi', '31383f56e8ffca55b083f1b2bbf0444059a77949', 'Fauzi Fathurrahman', 2, 'Bogor', '1996-01-17', 'Laki-laki', '', '', 'Belum Menikah', '', '', 'fauzi@gmail.com', '', '', 4, 'lulus', 'active'),
(3, '1102.hizbi', 'a8a94c53122a3cb8f5b88fd1e6058a79e6cc9c2e', 'Nurul Hizbi Mubarok', 1, 'Bogor', '1996-12-14', 'Laki-laki', 'Indonesia', 'Islam', 'Belum Menikah', 'Desa Cinangneng Rt 08/01 Tenjolaya Bogor', '085779629404', 'mn.hizbi@gmail.com', '1398761534CAM00444.jpg', '', 5, 'lulus', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `ta`
--

CREATE TABLE IF NOT EXISTS `ta` (
  `id_ta` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ta` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `awal_ta` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_ta`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ta`
--

INSERT INTO `ta` (`id_ta`, `nama_ta`, `awal_ta`) VALUES
(1, '2009 / 2010', '2009'),
(2, '2010 / 2011', '2010'),
(3, '2011 / 2012', '2011'),
(4, '2012 / 2013', '2012'),
(5, '2013 / 2014', '2013'),
(6, '2014 / 2015', '2014'),
(7, '2015 / 2016', '2015');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `nama_user` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `foto_user` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `role` enum('admin','user') COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `status` enum('active','non') COLLATE latin1_general_ci NOT NULL DEFAULT 'non',
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `user`, `pass`, `nama_user`, `foto_user`, `role`, `status`) VALUES
(1, 'admin', 'b6dcbf6a0861c13b867609be0429f8ce72ea2927', 'Admin', '', 'admin', 'active');
