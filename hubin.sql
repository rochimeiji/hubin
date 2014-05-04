-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2014 at 01:45 PM
-- Server version: 5.1.46
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `hubin`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id_gallery` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `title_gallery` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `img_gallery` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `ket_gallery` text COLLATE latin1_general_ci NOT NULL,
  `role_gallery` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_user`, `title_gallery`, `img_gallery`, `ket_gallery`, `role_gallery`) VALUES
(17, 1, 'Website Koperasi', '1398919373Web - Simpanan.png', '', 'portofolio'),
(18, 1, 'Website REPLIKA’S Sharing Creation', '1398919425Forum HTML - Home.png', '', 'portofolio'),
(16, 1, 'Website Koperasi', '1398919373Web - Home.png', '', 'portofolio'),
(15, 1, 'Website Future Jobs Lomba Kompetensi Siswa', '1398919272Future Jobs - jobs.png', '', 'portofolio'),
(14, 1, 'Website Future Jobs Lomba Kompetensi Siswa', '1398919264Untitled.png', '', 'portofolio'),
(9, 1, 'Website Wing Korps Karbol', '1398918592Wing Korps Karbol.png', '', 'portofolio'),
(19, 1, 'Website REPLIKA’S Sharing Creation', '1398919425Forum HTML - HTML.png', '', 'portofolio'),
(20, 1, 'Website ZONA REPLIKA’S', '1398919464S - 0.1949 (1).png', '', 'portofolio'),
(21, 1, 'Website ZONA REPLIKA’S', '1398919465S - 0.1949.png', '', 'portofolio');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
  `id_jurusan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `ket_jurusan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `warna_jurusan` varchar(11) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `ket_jurusan`, `warna_jurusan`) VALUES
(1, 'SURTA', 'Survey Dan Pemetaan', '#23A240'),
(2, 'RPL', 'Rekayasa Perangkat Lunak', '#3598db'),
(3, 'GEOTA', 'Geologi Pertambangan', '#E99D23'),
(4, 'GARMEN', 'Tata Busana', '#8c47a4');

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
-- Table structure for table `keahlian_siswa`
--

CREATE TABLE IF NOT EXISTS `keahlian_siswa` (
  `id_keahlian` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `ket_keahlian` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_keahlian`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `keahlian_siswa`
--

INSERT INTO `keahlian_siswa` (`id_keahlian`, `id_siswa`, `ket_keahlian`) VALUES
(1, 1, 'Mampu membuat sistem aplikasi berbasis web (WordPress, Joomla, HTML, PHP, CSS, AJAX, Javascript, jQuery, JSON, CI, Bootstrap)'),
(3, 1, 'Memahami konsep RDBMS dan mampu mengaplikasikannya dalam pembuatan sistem aplikasi berbasis database'),
(4, 1, 'Memahami cara instalasi software'),
(5, 1, 'Mampu mengoperasikan program komputer Microsoft Office (MS Word, MSExcel, MS Power Point, MS Access)'),
(6, 1, 'Mudah beradaptasi dan mempunyai kemampuan berkomunikasi'),
(7, 1, 'Mempunyai motivasi tinggi, amanah, jujur, ulet, dan energik');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=19 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `pendidikan_informal`
--

INSERT INTO `pendidikan_informal` (`id_pndk_informal`, `id_siswa`, `awal_pndk_informal`, `akhir_pndk_informal`, `nama_pndk_informal`) VALUES
(1, 1, 2008, 2008, 'Mengikuti Workshop Startup Asia 7 Cities Road, Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman_kerja`
--

CREATE TABLE IF NOT EXISTS `pengalaman_kerja` (
  `id_kerja` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `pengalaman_kerja` varchar(200) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kerja`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `pengalaman_kerja`
--

INSERT INTO `pengalaman_kerja` (`id_kerja`, `id_siswa`, `pengalaman_kerja`) VALUES
(3, 1, 'PRAKERIN di PT Dwi Barma Indo Mandiri AUU Yogyakarta'),
(4, 1, 'Pembuatan Website E-Commerce (http//djasmineshop.com)'),
(5, 1, 'Pembuatan Website REPLIKA’S Sharing Creation'),
(6, 1, 'Pembuatan Website Koperasi'),
(7, 1, 'Pembuatan Website ZONA REPLIKA’S (http://zonareplika.net)');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pengalaman_organisasi`
--

INSERT INTO `pengalaman_organisasi` (`id_org`, `id_siswa`, `awal_org`, `akhir_org`, `nama_org`, `posisi_org`) VALUES
(5, 1, 2012, 2013, 'ROHIS SMK Adi Sanggoro Bogor', 'Pengurus Devisi Dana Usaha'),
(3, 1, 2009, 2011, 'PASKIBRA SMPN 1 CIOMAS BOGOR', 'Anggota'),
(6, 1, 2013, 2014, 'ROHIS SMK Adi Sanggoro Bogor', 'Pembimbing Devisi Dana Usaha'),
(7, 1, 2013, 2014, 'REPLIKA''S SMK Adi Sanggoro Bogor', 'Ketua');

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
-- Table structure for table `prestasi_siswa`
--

CREATE TABLE IF NOT EXISTS `prestasi_siswa` (
  `id_prestasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `prestasi` varchar(200) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_prestasi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `prestasi_siswa`
--

INSERT INTO `prestasi_siswa` (`id_prestasi`, `id_siswa`, `prestasi`) VALUES
(1, 1, 'Rangking 5 & 2 kelas X semester I & II di SMK Adi Sanggoro'),
(2, 1, 'Rangking 2 & 1 kelas XI semester III & IV  di SMK Adi Sanggoro'),
(3, 1, 'Rangking 1 XII semester V di SMK Adi Sanggoro'),
(4, 1, 'Juara 7 LKS Web Design Kabupaten Bogor, tahun 2012'),
(5, 1, 'Juara 3 LKS Web Design Kabupaten Bogor, tahun 2013');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `user`, `pass`, `nama_siswa`, `id_jurusan`, `tmp_lhr_siswa`, `tgl_lhr_siswa`, `jk_siswa`, `negara_siswa`, `agama_siswa`, `status_siswa`, `alamat_siswa`, `tlp_siswa`, `email_siswa`, `foto_siswa`, `ktp_siswa`, `id_ta`, `ket_siswa`, `status`) VALUES
(1, '1101.eiji', '75f0c41e7cd6d02c6e9f18eba211f5e0fb55fb02', 'Zainu Rochim', 2, 'Tangerang', '1996-08-22', 'Laki-laki', 'Indonesia', 'Islam', 'Belum Menikah', 'Bukit Asri Block C 20 No 10 Kec. Ciomas Kab.Bogor', '085777909254', 'rochimeiji96@gmail.com', '1398920454400x522.jpg', '3201292308860004', 5, 'lulus', 'active'),
(2, '1101.fauzi', '8cb2237d0679ca88db6464eac60da96345513964', 'Fauzi Fathurrahman', 2, 'Bogor', '1996-01-17', 'Laki-laki', '', '', 'Belum Menikah', '', '', 'fauzi@gmail.com', '1399090289Logo J-Rocks Terbaru.jpg', '', 4, 'lulus', 'active'),
(3, '1102.hizbi', 'a8a94c53122a3cb8f5b88fd1e6058a79e6cc9c2e', 'Nurul Hizbi Mubarok', 1, 'Bogor', '1996-12-14', 'Laki-laki', 'Indonesia', 'Islam', 'Belum Menikah', 'Desa Cinangneng Rt 08/01 Tenjolaya Bogor', '085779629404', 'mn.hizbi@gmail.com', '1398761534CAM00444.jpg', '', 5, 'lulus', 'active'),
(4, '1101.tita', '8cb2237d0679ca88db6464eac60da96345513964', 'Tita Aprilianti', 2, 'Bogor', '0000-00-00', 'Perempuan', '', 'Islam', 'Belum Menikah', '', '', 'tita@gmail.com', '13990378492525_320243721448857_572526467_n.png', '', 5, 'lulus', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `ta`
--

CREATE TABLE IF NOT EXISTS `ta` (
  `id_ta` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ta` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `lulusan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_ta`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ta`
--

INSERT INTO `ta` (`id_ta`, `nama_ta`, `lulusan`) VALUES
(1, '2009 / 2010', '2010'),
(2, '2010 / 2011', '2011'),
(3, '2011 / 2012', '2012'),
(4, '2012 / 2013', '2013'),
(5, '2013 / 2014', '2014'),
(6, '2014 / 2015', '2015'),
(7, '2015 / 2016', '2016');

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
