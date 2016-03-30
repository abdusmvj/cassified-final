-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: classifiedindia
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `accessoty_brand_table`
--

DROP TABLE IF EXISTS `accessoty_brand_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessoty_brand_table` (
  `accessry_brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `accessoty_brand_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`accessry_brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessoty_brand_table`
--

LOCK TABLES `accessoty_brand_table` WRITE;
/*!40000 ALTER TABLE `accessoty_brand_table` DISABLE KEYS */;
INSERT INTO `accessoty_brand_table` VALUES (1,'Acer'),(2,'Apple'),(3,'Blackberry'),(4,'Bose'),(5,'Ericson'),(6,'Fly'),(7,'g-Fone'),(8,'Haier'),(9,'HP'),(10,'Huawei'),(11,'HTC'),(12,'INQ'),(13,'iMate'),(14,'Intex'),(15,'IPAQ'),(16,'Karbone'),(17,'Lemon'),(18,'Lava'),(19,'Lephone'),(20,'LG'),(21,'Micromax'),(22,'Maxx'),(23,'Motorola'),(24,'Mitsubishi'),(25,'MTS'),(26,'Nokia'),(27,'Onida'),(28,'O2'),(29,'Panasonic'),(30,'Palm one'),(31,'Reliance'),(32,'Sagem'),(33,'Samsung'),(34,'Sennheiser'),(35,'Siemens'),(36,'Sony'),(37,'Spice'),(38,'Tata'),(39,'T-series'),(40,'TCL'),(41,'Videocon'),(42,'Vox'),(43,'Wespro'),(44,'Others');
/*!40000 ALTER TABLE `accessoty_brand_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-01  5:32:11
