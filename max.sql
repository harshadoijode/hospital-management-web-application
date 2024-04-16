-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.36-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema maax
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ maax;
USE maax;

--
-- Table structure for table `maax`.`admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maax`.`admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`admin`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Table structure for table `maax`.`appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phoneno` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `tokenno` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`tokenno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maax`.`appointment`
--

/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` (`name`,`email`,`phoneno`,`address`,`date`,`tokenno`) VALUES 
 ('harsha','harsha@gmail.com','7483379791','Harsha@123','11-02-2023',1),
 ('harsha','harsha@gmail.com','7483379791','Harsha@123','11-02-2023',2),
 ('santhosh','santhosh.sgrao@gmail.com','7899197522','shimoga@naule','06/09/2023',3);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;


--
-- Table structure for table `maax`.`doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `name` varchar(50) DEFAULT NULL,
  `phoneno` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maax`.`doctor`
--

/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` (`name`,`phoneno`,`email`,`password`) VALUES 
 ('harsha','7483379791','harsha@gmail.com','Harsha@123'),
 ('venkatsh k b','8088540700','amithsh2018@gmail.com','shimoga@naule');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;


--
-- Table structure for table `maax`.`patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `pname` varchar(50) DEFAULT NULL,
  `ppno` varchar(50) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `password1` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maax`.`patient`
--

/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`pname`,`ppno`,`emailid`,`password1`) VALUES 
 ('harsha','7483379791','harsha@gmail.com','Harsha@123'),
 ('venkatsh k b','8088540700','vv11venky@gmail.com','8088540700'),
 ('amith','6363829225','amithsh2018@gmail.com','Amiths2001');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
