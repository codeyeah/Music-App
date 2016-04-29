-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2016 at 10:25 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `musicapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_albums`
--

CREATE TABLE IF NOT EXISTS `tbl_albums` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `artists` varchar(200) NOT NULL,
  `music` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `company` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_songs`
--

CREATE TABLE IF NOT EXISTS `tbl_songs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lyrics` varchar(200) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `aid` int(10) NOT NULL,
  `singer` varchar(100) NOT NULL,
  `length` varchar(20) NOT NULL,
  `down_count` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_song_request`
--

CREATE TABLE IF NOT EXISTS `tbl_song_request` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `lyrics` varchar(200) NOT NULL,
  `album` varchar(200) NOT NULL,
  `description` varchar(250) NOT NULL,
  `req_date_time` varchar(100) NOT NULL,
  `is_avbl` varchar(20) NOT NULL,
  `avbl_date_time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `pwd`, `email`, `address`, `phone_no`, `type`) VALUES
(1, 'admin', '*0C32EEEAD952C40AF9275312DF48AD2F2F705B3A', 'admin@admin.com', 'test Address', '9999999999', 'ADMIN'),
(2, 'user', '*3A2EB9C80F7239A4DE3933AE266DB76A7846BCB8', 'user@user.com', 'test Address', '9999999999', 'USER');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
