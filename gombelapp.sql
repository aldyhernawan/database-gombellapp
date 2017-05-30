-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2017 at 12:46 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gombelapp`
--
CREATE DATABASE IF NOT EXISTS `gombelapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gombelapp`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE IF NOT EXISTS `tbl_event` (
  `id_event` varchar(5) NOT NULL,
  `judul` varchar(25) NOT NULL,
  `isi_event` text NOT NULL,
  `waktu_event` varchar(15) NOT NULL,
  `tanggal_event` date NOT NULL,
  `tempat_event` varchar(20) NOT NULL,
  PRIMARY KEY (`id_event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE IF NOT EXISTS `tbl_info` (
  `id_info` varchar(5) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `waktu` date NOT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar_info`
--

CREATE TABLE IF NOT EXISTS `tbl_komentar_info` (
  `id_info` varchar(5) DEFAULT NULL,
  `komentar` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` varchar(25) NOT NULL,
  KEY `id_info` (`id_info`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saran`
--

CREATE TABLE IF NOT EXISTS `tbl_saran` (
  `id_saran` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(25) NOT NULL,
  `isi_saran` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` varchar(25) NOT NULL,
  PRIMARY KEY (`id_saran`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `alamat_email` varchar(30) NOT NULL,
  `password_user` varchar(30) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
