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
-- Table structure for table `post_accessory_section`
--

DROP TABLE IF EXISTS `post_accessory_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_accessory_section` (
  `accessory_adv_id` int(11) NOT NULL AUTO_INCREMENT,
  `access_img_id` double DEFAULT NULL,
  `access_title` varchar(45) DEFAULT NULL,
  `access_condition` varchar(45) DEFAULT NULL,
  `accessry_brand_id` int(11) DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `access_descript` varchar(45) DEFAULT NULL,
  `access_typof_ad` varchar(45) DEFAULT NULL,
  `access_price` double DEFAULT NULL,
  `access_xpect_price` double DEFAULT NULL,
  `access_posting_date` datetime DEFAULT NULL,
  `access_subcat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`accessory_adv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_accessory_section`
--

LOCK TABLES `post_accessory_section` WRITE;
/*!40000 ALTER TABLE `post_accessory_section` DISABLE KEYS */;
INSERT INTO `post_accessory_section` VALUES (1,2.676847457885742,'ghdg','u',3,2,'reghtgh jhr trjj','b',666,999,'2016-01-08 14:50:36',NULL),(2,2.970059394836426,'gfh','u',19,3,'gftftr','s',789,876,'2016-01-08 15:26:06',44),(3,3.715939521789551,'nbn','u',20,1,'gghfhfhfgg','s',6554,322,'2016-01-08 15:35:21',44),(4,7.555247783660889,'sds','u',20,1,'gfgf','s',4256,4333,'2016-01-08 15:39:06',44),(5,6.651076316833496,'hgdfh','u',1,1,'dghfhwefrhg','s',666,555,'2016-01-08 16:49:31',44),(6,4.69243049621582,'nvn','u',18,2,'nvnvn','s',8776,8898,'2016-01-11 14:39:08',44),(7,9.019040584564209,'hello','u',20,2,'hello, i want to sell a phone.','s',665,443,'2016-01-11 17:25:04',44),(8,3.659665107727051,'dhdhf','u',35,3,'dfghsfhcx chhehewf hgfh','b',46,23,'2016-01-11 19:02:24',44),(9,2.279723644256592,'hi i am sneha','u',39,3,'i want a screen guard','b',987,675,'2016-01-11 19:45:19',44),(10,4.137096405029297,'may br ty','u',18,3,'ghrhee mdy brhh hg','b',987,543,'2016-01-12 12:51:09',44),(11,8.120483875274658,'dfd','u',20,2,'hgggg bbbbbbbb bbbbbbbb','s',66,65,'2016-01-12 12:59:20',44),(12,3.6252503395080566,'oooooooo','n',18,2,'nnn mmmmmmmm kkkkk lllllll','b',77777,666666,'2016-01-12 13:01:29',44),(13,8.342931747436523,'hg','u',12,2,'kio mlkmnh bvf','b',55,7,'2016-01-12 13:06:40',44),(14,7.532700538635254,'hello maam','u',10,3,'nmjh neo kurie','b',987,876,'2016-01-12 14:31:00',44),(15,9.329746723175049,'haan jii','u',18,3,'ghytr bnhju','b',98765,876,'2016-01-12 14:43:56',44),(16,6.658444404602051,'qwerty','n',17,3,'nnbvv','b',9990,8880,'2016-01-12 16:35:40',44),(17,9.450770378112793,'gf','u',19,3,'fhghsghs','s',666,888,'2016-01-13 13:16:13',44),(18,8.041852951049805,'fdgg','u',19,1,'fhg jeh','s',76,86,'2016-01-13 13:19:57',44),(19,9.211445808410645,'ghg','u',15,2,'fgfgg g','s',55,6654,'2016-01-13 14:01:34',44),(20,8.628751754760742,'hyhfh','u',14,2,'hgf whrgw rgewh','b',4356344,34434545,'2016-01-13 14:12:26',44),(21,8.400462627410889,'fhhgg','u',16,2,'gjhg rg','s',76,87,'2016-01-13 14:27:55',44),(22,7.939409255981445,'hjs dfjhg','u',20,4,'mfdvhj fdhdg','b',756556,8848,'2016-01-13 14:36:27',44),(23,2.156771183013916,'rhg','u',18,2,'fhnghghjg','s',6788,56454,'2016-01-13 14:46:26',44),(24,2.9183197021484375,'hjg','u',17,3,'hghggh','b',787,98,'2016-01-13 15:40:16',44),(25,3.3409924507141113,'dsdd','u',20,2,'vgg rthh hhrthythy','b',55665,343,'2016-01-14 17:09:37',44),(26,4.826794147491455,'ghdfgg','u',16,13,'hgf erhg rheg hg rtegtjh','s',6465436,65786,'2016-01-18 11:58:56',44),(27,7.676000118255615,'oko','n',11,5,'ddsf tr ht','b',7657,4433,'2016-01-21 14:03:41',44),(28,6.502769470214844,'gvytvuty hgytue ejrtes eeete','u',3,1,'gwr3gr etgu erhg erhtu3','b',566545,4764765,'2016-01-28 00:30:30',44),(29,7.870142459869385,'gghf jg hgh h hfhryry','u',18,5,'njhh hg grrcrrrrr uo4ta  rvterthh','s',2346,3456,'2016-01-28 00:33:14',44);
/*!40000 ALTER TABLE `post_accessory_section` ENABLE KEYS */;
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
