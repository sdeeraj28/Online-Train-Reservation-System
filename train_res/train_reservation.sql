-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 01, 2018 at 09:04 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `train_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookinfo`
--

CREATE TABLE IF NOT EXISTS `bookinfo` (
  `source` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `class` int(10) DEFAULT NULL,
  `senior` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `aadhaar` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `berth` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookinfo`
--

INSERT INTO `bookinfo` (`source`, `date`, `class`, `senior`, `name`, `destination`, `aadhaar`, `gender`, `berth`, `age`) VALUES
(NULL, NULL, NULL, 'null', 'Deeraj', NULL, 'sdfd', 'male', 'middle', '21');

-- --------------------------------------------------------

--
-- Table structure for table `traininfo`
--

CREATE TABLE IF NOT EXISTS `traininfo` (
  `source` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `doj` int(50) DEFAULT NULL,
  `class` int(10) DEFAULT NULL,
  `seats` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traininfo`
--

INSERT INTO `traininfo` (`source`, `destination`, `doj`, `class`, `seats`) VALUES
('Bhayander', 'Borivali', 6, 2, NULL),
('Bhayander', 'Dahisar', 7, 2, NULL),
('Bhayander', 'Borivali', 6, 2, 2),
('Bhayander', 'Dahisar', 10, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `uname` varchar(255) DEFAULT NULL,
  `pword` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`uname`, `pword`, `fname`, `lname`, `email`, `gender`, `status`, `phone`) VALUES
('Deeraj', 'pass', NULL, NULL, NULL, NULL, NULL, NULL),
('suraj', 'pass', 'Suraj', 'Shetty', 'surajshetty39@gmail.com', 'Male', 'Single', '8655703302');
