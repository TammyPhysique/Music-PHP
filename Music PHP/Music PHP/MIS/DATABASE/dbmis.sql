-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2019 at 05:15 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbmis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblalbum`
--

CREATE TABLE IF NOT EXISTS `tblalbum` (
`id` int(100) NOT NULL,
  `albumcat` int(100) DEFAULT NULL,
  `albumname` varchar(60) DEFAULT NULL,
  `albumsinger` varchar(100) DEFAULT NULL,
  `albumwriter` varchar(100) DEFAULT NULL,
  `albumdesc` varchar(250) DEFAULT NULL,
  `albumimage` varchar(30) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblalbum`
--

INSERT INTO `tblalbum` (`id`, `albumcat`, `albumname`, `albumsinger`, `albumwriter`, `albumdesc`, `albumimage`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE IF NOT EXISTS `tblcategory` (
`id` int(10) NOT NULL,
  `catname` varchar(50) DEFAULT NULL,
  `catdesc` varchar(250) DEFAULT NULL,
  `catimage` varchar(30) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `catname`, `catdesc`, `catimage`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE IF NOT EXISTS `tblfeedback` (
`f_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `message` varchar(250) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblip`
--

CREATE TABLE IF NOT EXISTS `tblip` (
`ip_id` int(100) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `time` varchar(60) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblip`
--

INSERT INTO `tblip` (`ip_id`, `ip`, `time`) VALUES
(56, '127.0.0.1', '1330586719'),
(57, '127.0.0.1', '1331066469'),
(58, '127.0.0.1', '1331170565'),
(59, '127.0.0.1', '1355904608'),
(60, '127.0.0.1', '1356076870'),
(61, '127.0.0.1', '1356489054');

-- --------------------------------------------------------

--
-- Table structure for table `tblsongs`
--

CREATE TABLE IF NOT EXISTS `tblsongs` (
`id` int(100) NOT NULL,
  `songcat` varchar(10) DEFAULT NULL,
  `songalbum` varchar(50) DEFAULT NULL,
  `songsinger` varchar(100) DEFAULT NULL,
  `songdesc` varchar(250) DEFAULT NULL,
  `songfile` varchar(50) DEFAULT NULL,
  `songwriter` varchar(100) NOT NULL,
  `songpoints` int(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsongs`
--

INSERT INTO `tblsongs` (`id`, `songcat`, `songalbum`, `songsinger`, `songdesc`, `songfile`, `songwriter`, `songpoints`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE IF NOT EXISTS `tblusers` (
`user_id` int(100) NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`user_id`, `name`, `username`, `password`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `tblvotes`
--

CREATE TABLE IF NOT EXISTS `tblvotes` (
`vid` int(10) NOT NULL,
  `vname` varchar(50) NOT NULL,
  `vpoints` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvotes`
--

INSERT INTO `tblvotes` (`vid`, `vname`, `vpoints`) VALUES

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblalbum`
--
ALTER TABLE `tblalbum`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
 ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tblip`
--
ALTER TABLE `tblip`
 ADD PRIMARY KEY (`ip_id`);

--
-- Indexes for table `tblsongs`
--
ALTER TABLE `tblsongs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tblvotes`
--
ALTER TABLE `tblvotes`
 ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblalbum`
--
ALTER TABLE `tblalbum`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
MODIFY `f_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tblip`
--
ALTER TABLE `tblip`
MODIFY `ip_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `tblsongs`
--
ALTER TABLE `tblsongs`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tblvotes`
--
ALTER TABLE `tblvotes`
MODIFY `vid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
