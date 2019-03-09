-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 08, 2019 at 09:29 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothes`
--

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

DROP TABLE IF EXISTS `clothes`;
CREATE TABLE IF NOT EXISTS `clothes` (
  `ClothesID` int(10) NOT NULL,
  `ClassID` int(10) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Size` varchar(50) NOT NULL,
  PRIMARY KEY (`ClothesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`ClothesID`, `ClassID`, `Status`, `Size`) VALUES
(1, 1, 'Available', 'S'),
(2, 1, 'Available', 'L'),
(3, 2, 'Available', 'M');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
