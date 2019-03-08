SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `Customers`
--
CREATE DATABASE IF NOT EXISTS `Customers` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Customers`;

-- --------------------------------------------------------
--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
CREATE TABLE IF NOT EXISTS `Customers` (
  `CustomerID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Tier` int(1) NOT NULL,
  `Birthdate` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`Name`, `Tier`, `Birthdate`, `Gender`, `Address`) VALUES
('Timothy', 3 , '1995-11-14' , 'Male' , '75 Loyang Rise'),
('John', 3 , '1999-10-02' , 'Male' , '29 Amber Road'),
('Bobby', 3 , '2000-08-21' , 'Female' , 'Blk 45 Road');
COMMIT;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
