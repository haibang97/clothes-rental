-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 08, 2019 at 09:30 AM
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
-- Database: `clothesclass`
--

-- --------------------------------------------------------

--
-- Table structure for table `clothesclass`
--

DROP TABLE IF EXISTS `clothesclass`;
CREATE TABLE IF NOT EXISTS `clothesclass` (
  `ClassID` int(10) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Function` varchar(255) NOT NULL,
  `Image_link` varchar(255) NOT NULL,
  `Mood` varchar(255) NOT NULL,
  `Count` int(10) NOT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clothesclass`
--

INSERT INTO `clothesclass` (`ClassID`, `Gender`, `Type`, `Function`, `Image_link`, `Mood`, `Count`) VALUES
(1, 'F', 'Dress', 'weekend', 'https://d41eu4npam9w0.cloudfront.net/900x1350/cameo-light-up-long-sleeve-dress-1.jpg', 'cool', 5),
(2, 'F', 'Dress', 'weekend', 'https://d41eu4npam9w0.cloudfront.net/900x1350/yumi-kim-city-lights-midi-dress-1.jpg', 'happy', 2),
(3, 'F', 'Blazer', 'work', 'https://d41eu4npam9w0.cloudfront.net/900x1350/keepsake-darkest-light-blazer-1.jpg', 'gorgeous', 5),
(4, 'F', 'Playsuit', 'weekend', 'https://d41eu4npam9w0.cloudfront.net/900x1350/juillet-valencia-front-knot-playsuit-3.jpg', 'gorgeous', 5),
(5, 'F', 'Dress', 'party', 'https://d41eu4npam9w0.cloudfront.net/900x1350/ray-and-luna-mandarin-collar-button-down-dress-1.jpg', 'relaxed', 3),
(6, 'F', 'Midi Dress', 'party', 'https://d41eu4npam9w0.cloudfront.net/900x1350/keepsake-translate-midi-dress-1.jpg', 'gorgeous', 3),
(7, 'F', 'Stand Still Dress', 'party', 'https://d41eu4npam9w0.cloudfront.net/900x1350/keepsake-stand-still-dress-3.jpg', 'happy', 3),
(8, 'M', 'Jacket', 'travel', 'https://sc01.alicdn.com/kf/HTB1ezB0pQSWBuNjSszdq6zeSpXas/Custom-Mens-Denim-Jacket-Hoody-Mens-Jean.jpg', 'cool', 3),
(9, 'M', 'Tshirt', 'travel', 'https://sc01.alicdn.com/kf/HTB1mL.nAQKWBuNjy1zjq6AOypXa6/wholesale-no-moq-blank-bluk-180gsm-cheap.jpg', 'low-key', 3),

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
