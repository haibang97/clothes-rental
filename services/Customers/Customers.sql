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

DROP TABLE IF EXISTS Customers;
CREATE TABLE IF NOT EXISTS Customers (
  customerid int(10) NOT NULL AUTO_INCREMENT,
  firstname varchar(50) NOT NULL,
  lastname varchar(50) NOT NULL,
  tier int(1) NOT NULL,
  phonenumber int(10) NOT NULL,
  birthdate date NOT NULL,
  gender varchar(10) NOT NULL,
  address varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Customers`
--

INSERT INTO Customers (firstname, lastname, tier, phonenumber, birthdate, gender, address, email) VALUES
("Carrot", "Tan", 3, 93456384, "2000-09-08", "Female", "10 Amber Road", "carrot@yahoo.com"),
("Timothy", "Soh", 3, 93456543,"1995-11-14", "Male", "75 Loyand Rise", "timothy@gmail.com"),
("Bobby", "Lim", 3, 92227384,"1997-10-21", "Make", "19 Bedok View", "bobby@gmail.com");
COMMIT;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
