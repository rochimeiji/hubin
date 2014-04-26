-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2014 at 04:54 AM
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
(4, 'Garmen', 'Tata Busana');

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
  `user` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `status` enum('active','non') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `perusahaan`
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
  `id_jurusan` int(11) NOT NULL,
  `ta_siswa` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tmp_lhr_siswa` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `tgl_lhr_siswa` date NOT NULL,
  `jk_siswa` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `negara_siswa` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `agama_siswa` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `status_siswa` enum('Sudah Menikah','Belum Menikah') COLLATE latin1_general_ci NOT NULL DEFAULT 'Belum Menikah',
  `alamat_siswa` text COLLATE latin1_general_ci NOT NULL,
  `tlp_siswa` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `email_siswa` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `ktp_siswa` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `ket_siswa` enum('lulus','belum') COLLATE latin1_general_ci NOT NULL,
  `status` enum('active','non') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `siswa`
--


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
  `role` enum('admin','user') COLLATE latin1_general_ci NOT NULL,
  `status` enum('active','non') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `user`, `pass`, `nama_user`, `foto_user`, `role`, `status`) VALUES
(1, 'admin', 'b6dcbf6a0861c13b867609be0429f8ce72ea2927', 'Admin', '', 'admin', 'active');
