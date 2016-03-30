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
-- Table structure for table `post_tablet_section`
--

DROP TABLE IF EXISTS `post_tablet_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tablet_section` (
  `tab_adv_id` int(11) NOT NULL AUTO_INCREMENT,
  `tab_img_id` double DEFAULT NULL,
  `tab_title` varchar(45) DEFAULT NULL,
  `tab_ad_type` varchar(45) DEFAULT NULL,
  `tab_cond` varchar(45) DEFAULT NULL,
  `tab_price` double DEFAULT NULL,
  `tab_minexp_price` double DEFAULT NULL,
  `tab_brand_id` int(11) DEFAULT NULL,
  `tab_description` varchar(45) DEFAULT NULL,
  `posting_date` datetime DEFAULT NULL,
  `subcat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tab_adv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tablet_section`
--

LOCK TABLES `post_tablet_section` WRITE;
/*!40000 ALTER TABLE `post_tablet_section` DISABLE KEYS */;
INSERT INTO `post_tablet_section` VALUES (1,2,'k','b','u',23,22,6,'gdh erggh','2016-01-28 02:41:16',45),(2,6,'ffff','s','n',345,567,9,'mnbvcf','2016-01-28 04:15:47',45),(3,8.88438081741333,'ghggg','b','n',4343,2333,20,'vbb hgfg ggg','2016-01-28 04:17:08',45);
/*!40000 ALTER TABLE `post_tablet_section` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-01  5:32:10
