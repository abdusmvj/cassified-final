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
-- Table structure for table `tablet_brand_table`
--

DROP TABLE IF EXISTS `tablet_brand_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tablet_brand_table` (
  `tab_brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `tab_brand_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tab_brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablet_brand_table`
--

LOCK TABLES `tablet_brand_table` WRITE;
/*!40000 ALTER TABLE `tablet_brand_table` DISABLE KEYS */;
INSERT INTO `tablet_brand_table` VALUES (1,'Apple'),(2,'Google'),(3,'HCL'),(4,'HP (Hewlett-Packard)'),(5,'Micromax'),(6,'Samsung'),(7,'Acer'),(8,'Amazon'),(9,'Asus'),(10,'Benq'),(11,'Compaq'),(12,'Dell'),(13,'Fujitsu-Siemens'),(14,'Hitachi'),(15,'iBall'),(16,'IBM'),(17,'Intex'),(18,'Karbonn'),(19,'Lenovo'),(20,'LG'),(21,'MSI'),(22,'Panasonic'),(23,'Sharp'),(24,'Sony'),(25,'Toshiba'),(26,'Wipro'),(27,'Xolo'),(28,'Zenith'),(29,'Others');
/*!40000 ALTER TABLE `tablet_brand_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-01  5:32:13
