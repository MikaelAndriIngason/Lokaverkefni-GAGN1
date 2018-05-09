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
-- Table structure for table `lag`
--

DROP TABLE IF EXISTS `lag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lag` (
  `lagID` int(11) NOT NULL AUTO_INCREMENT,
  `heiti` varchar(75) DEFAULT NULL,
  `lengd` decimal(5,2) DEFAULT NULL,
  `texti` text,
  `utgafudagur` date DEFAULT NULL,
  `tegundID` int(11) DEFAULT NULL,
  `utgefandiID` int(11) DEFAULT NULL,
  `flytjandiID` int(11) DEFAULT NULL,
  PRIMARY KEY (`lagID`),
  KEY `lag_tegund_fk` (`tegundID`),
  KEY `lag_utgefandi_fk` (`utgefandiID`),
  KEY `lag_flytjandi_fk` (`flytjandiID`),
  CONSTRAINT `lag_flytjandi_fk` FOREIGN KEY (`flytjandiID`) REFERENCES `flytjandi` (`flytjandiID`),
  CONSTRAINT `lag_tegund_fk` FOREIGN KEY (`tegundID`) REFERENCES `tegund` (`tegundID`),
  CONSTRAINT `lag_utgefandi_fk` FOREIGN KEY (`utgefandiID`) REFERENCES `utgefandi` (`utgefandiID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lag`
--

LOCK TABLES `lag` WRITE;
/*!40000 ALTER TABLE `lag` DISABLE KEYS */;
INSERT INTO `lag` VALUES (1,'Moves like Jagger',3.21,'I´ve got the moves like Jagger','2011-06-21',3,1,1),(2,'Sugar',3.55,'Sugar Yes, please','2015-01-13',3,1,1),(3,'Animals',3.51,'Just like animalsm animals, like animals','2014-08-25',3,1,1),(4,'Thunder',3.07,'Thunder, feel the thunder, lightning and the thunder','2017-04-27',3,2,2),(5,'Radioactive',3.05,'Whoa, oh, oh, oh, oh, whoa, oh, oh, oh, I´m radioactive, radioactive','2012-10-29',2,2,2),(6,'Demons',2.57,'It´s where my demons hide','2013-01-28',2,2,2),(7,'Viva la Vida',4.01,'and that was when I ruled the world','2008-05-25',3,4,3),(8,'Paradise',4.39,'Para-para-paradise','2011-09-12',2,4,3),(9,'A Sky Full of Stars',4.28,'Cause you´re a sky, you´re a sky full of stars','2014-05-02',1,4,3),(10,'Shine a Light',3.47,'shine a light on, shine a light on me','2015-10-07',2,5,4),(11,'Someone To You',3.42,'I wanna be somebody to someone','2017-11-03',2,5,4),(12,'Let Go',3.17,'Let go, let go into the unknown','2018-05-07',2,5,4),(13,'My House',3.12,'Welcome to my house','2015-10-13',3,1,5),(14,'Whistle',3.45,'Can you blow my whistle baby, whistle baby','2012-04-24',3,1,5),(15,'Right Round',3.27,'You spin my head right round, right round','2009-01-27',3,1,5),(16,'Love Me Again',4.00,'Can you love me again?','2013-05-17',3,3,6),(17,'Fire In Me',4.14,'Cause I still got a fire in me','2018-03-09',3,3,6),(18,'Blame',3.34,'Don´t blame it on me','2014-09-05',1,3,6),(19,'Youth',3.09,'Pain, but I won´t let it turn into hate','2018-05-03',5,1,7),(20,'Stitches',3.27,'Needle and a thread, gonna wind up dead','2015-05-05',3,1,7),(21,'Lost In Japan',3.20,'Let´s get lost tonight','2018-03-23',5,1,7),(22,'Wake Me Up',4.09,'So wake me up when it´s all over','2013-06-17',1,2,8),(23,'Hey Brother',4.14,'Hey brother! there´s an endless road to rediscover','2013-10-09',3,2,8),(24,'For A Better Day',3.26,'For a better day','2015-08-28',3,2,8),(25,'Pray',3.41,'Maybe I´ll pray, pray','2018-03-29',6,1,9),(26,'Stay With Me',2.52,'Oh won´t you stay with me?','2014-04-14',6,1,9),(27,'Money on My Mind',3.14,'I don´t have money on my mind','2014-02-12',3,1,9),(28,'Smooth Criminal',4.17,'You´ve been hit by, you´ve bin struck by a smooth criminal','1988-10-24',3,1,10),(29,'Beat It',4.18,'Just beat it, beat it','1983-02-14',3,1,10),(30,'Billie Jean',4.54,'Billie jean is not my lover','1983-01-02',3,1,10);
/*!40000 ALTER TABLE `lag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-09  9:55:10
