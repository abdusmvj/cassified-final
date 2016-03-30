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
-- Table structure for table `mobi_brand_table`
--

DROP TABLE IF EXISTS `mobi_brand_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobi_brand_table` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(45) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobi_brand_table`
--

LOCK TABLES `mobi_brand_table` WRITE;
/*!40000 ALTER TABLE `mobi_brand_table` DISABLE KEYS */;
INSERT INTO `mobi_brand_table` VALUES (1,'Acer'),(2,'Apple'),(3,'Blackberry'),(4,'Bose'),(5,'Ericson'),(6,'Fly'),(7,'g-Fone'),(8,'Haier'),(9,'HP'),(10,'Huawei'),(11,'HTC'),(12,'INQ'),(13,'iMate'),(14,'Intex'),(15,'IPAQ'),(16,'Karbone'),(17,'Lemon'),(18,'Lava'),(19,'Lephone'),(20,'LG'),(21,'Micromax'),(22,'Maxx'),(23,'Mitsubishi'),(24,'MTS'),(25,'Nokia'),(26,'Onida'),(27,'O2'),(28,'Panasonic'),(29,'Palm one'),(30,'Reliance'),(31,'Sagem'),(32,'Samsung'),(33,'Sennheiser'),(34,'Siemens'),(35,'Sony'),(36,'Spice'),(37,'Tata'),(38,'T-series'),(39,'TCL'),(40,'Videocon'),(41,'Vox'),(42,'Wespro'),(43,'Others');
/*!40000 ALTER TABLE `mobi_brand_table` ENABLE KEYS */;
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
