-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 30, 2014 at 10:06 AM
-- Server version: 5.1.46
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `hubin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman_organisasi`
--

CREATE TABLE IF NOT EXISTS `pengalaman_organisasi` (
  `id_org` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `awal_org` int(6) NOT NULL,
  `akhir_org` int(6) NOT NULL,
  `nama_org` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `posisi_org` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_org`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pengalaman_organisasi`
--

INSERT INTO `pengalaman_organisasi` (`id_org`, `id_siswa`, `awal_org`, `akhir_org`, `nama_org`, `posisi_org`) VALUES
(1, 4, 2012, 2013, 'PASKIBRA SMPN 1 CIOMAS', 'Anggota'),
(2, 4, 1231, 12313, 'dsadafs', 'Ketua'),
(3, 1, 2011, 2012, 'PASKIBRA SMPN 1 CIOMAS BOGOR', 'Anggota');
