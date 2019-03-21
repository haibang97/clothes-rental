SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `Background`

CREATE DATABASE IF NOT EXISTS `Background` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Background`;

-- --------------------------------------------------------
-- Table structure for table `Background`

DROP TABLE IF EXISTS Background;
CREATE TABLE IF NOT EXISTS Background (
  location varchar(100) NOT NULL,
  image varchar(100) NOT NULL,
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Background`
--

INSERT INTO Background (location, image) VALUES
('Orchard Road', '123'),
('SMU', '234'),
('Zouk', '212');
COMMIT;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
