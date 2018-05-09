-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: tsuts.tskoli.is    Database: 0106012580_hopverk_gagn1
-- ------------------------------------------------------
-- Server version	5.7.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `flytjandi`
--

DROP TABLE IF EXISTS `flytjandi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flytjandi` (
  `flytjandiID` int(11) NOT NULL AUTO_INCREMENT,
  `nafn` varchar(75) NOT NULL,
  `stofndagur` varchar(10) DEFAULT NULL,
  `lokadagur` varchar(10) DEFAULT NULL,
  `lysing` text,
  PRIMARY KEY (`flytjandiID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flytjandi`
--

LOCK TABLES `flytjandi` WRITE;
/*!40000 ALTER TABLE `flytjandi` DISABLE KEYS */;
INSERT INTO `flytjandi` VALUES (1,'Maroon 5','1994','-','Aðalsöngvarinn er Adam Levine og þeir eru frá Los Angeles, Ameríku'),(2,'Imagine Dragons','2008','-','Aðalsöngvarinn er Dan Reynolds og þeir eru frá Las Vegas, Ameríku'),(3,'Coldplay','1996','-','Aðalsöngvarinn er Chris Martin og þeir eru frá London, England'),(4,'BANNERS','2015','-','Hann heitir Michael Joseph Nelson og er frá Liverpool, England'),(5,'Flo Rida','2000','-','Hann heitir Tramar Lacel Dillard og er frá Florida, Ameríku'),(6,'John Newman','2012','-','Hann heitir John William Peter Newman og er frá Seattle, England'),(7,'Shawn Mendes','2013','-','Hann heitir Shawn Peter Raul Mendes og er frá Toronto, Kanada'),(8,'Avicii','2006','2018-04-20','Hann heitir Tim Bergling og er frá Stockholm, Svíþjóð'),(9,'Sam Smith','2007','-','Hann heitir Samuel Fredrick Smith og er frá London, England'),(10,'Michael Jackson','1964','2009-06-25','Hann heitir Michael Joseph Jackson og er frá Indiana, England og er konungur poppsins');
/*!40000 ALTER TABLE `flytjandi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-09  9:55:02
