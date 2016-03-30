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
-- Table structure for table `mobi_include_tab`
--

DROP TABLE IF EXISTS `mobi_include_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobi_include_tab` (
  `includ_tab_id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_adv_id` int(11) DEFAULT NULL,
  `includ_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`includ_tab_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobi_include_tab`
--

LOCK TABLES `mobi_include_tab` WRITE;
/*!40000 ALTER TABLE `mobi_include_tab` DISABLE KEYS */;
INSERT INTO `mobi_include_tab` VALUES (1,34,1),(2,34,2),(3,35,1),(4,35,2),(5,36,1),(6,36,2),(7,37,1),(8,37,2),(9,38,1),(10,38,2),(11,0,1),(12,0,2),(13,40,1),(14,40,2),(15,41,1),(16,41,2),(17,42,1),(18,42,2),(19,43,1),(20,43,2),(21,44,1),(22,44,2),(23,45,1),(24,45,2),(25,46,1),(26,46,2),(27,47,1),(28,47,2),(29,48,1),(30,48,2),(31,49,1),(32,49,2),(33,51,1),(34,52,2),(35,53,2),(36,54,2),(37,55,1),(38,55,2),(39,56,1),(40,56,2),(41,57,1),(42,57,2),(43,58,1),(44,58,2),(45,59,1),(46,59,2),(47,60,1),(48,60,2),(49,61,1),(50,61,2),(51,62,1),(52,62,2),(53,63,1),(54,63,2),(55,64,1),(56,64,2),(57,65,1),(58,65,2);
/*!40000 ALTER TABLE `mobi_include_tab` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-01  5:32:14
