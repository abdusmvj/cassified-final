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
-- Table structure for table `post_mobile_section`
--

DROP TABLE IF EXISTS `post_mobile_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_mobile_section` (
  `mobile_adv_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` double DEFAULT NULL,
  `mobile_title` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `mobile_condition` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `os` int(11) DEFAULT NULL,
  `no_of_sim` int(11) DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `type_of_add` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `posting_date` datetime DEFAULT NULL,
  `actual_price` double DEFAULT NULL,
  `exp_price` double DEFAULT NULL,
  `mobile_subcat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mobile_adv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_mobile_section`
--

LOCK TABLES `post_mobile_section` WRITE;
/*!40000 ALTER TABLE `post_mobile_section` DISABLE KEYS */;
INSERT INTO `post_mobile_section` VALUES (1,1,'t','u',1,2,3,4,'ty','h','2016-01-04 04:39:51',120,456,NULL),(2,1,'t','u',1,2,3,4,'ty','h','2016-01-04 04:40:56',120,456,NULL),(3,4,'j','k',9,8,7,6,'h','g','2016-01-05 11:19:41',5,6,NULL),(4,9.145878791809082,'bb','n',1,1,1,2,'hi yju','s','2016-01-05 11:31:01',567,543,NULL),(5,4.248231887817383,'kiuy','n',2,3,2,2,'bnbn fgfddfd bbnbnbn hjg','b','2016-01-05 12:37:54',6543,7654,NULL),(6,6.18223762512207,'fngfhergf','n',2,3,2,2,'bbvnbbndfbv bbgnhgjehhtgjehg ghgjetjtgjrgjrg ergjhegj',NULL,'2016-01-05 12:44:48',56765,46767,NULL),(7,2.4534730911254883,'dff','n',2,4,1,2,'tythtykjhkyhjkyh mgthgjthyytr thgtrhkr','s','2016-01-05 13:38:56',456,6666,NULL),(8,3.131730556488037,'ss','u',1,1,2,1,'bbb','s','2016-01-05 14:06:52',3,2,NULL),(9,3.501345157623291,'cvb','n',1,2,2,1,'gfcgdfgh jhfgrfg','s','2016-01-05 15:25:03',567,897,NULL),(10,3.501345157623291,'cvb','n',1,2,2,1,'gfcgdfgh jhfgrfg','s','2016-01-05 15:45:18',567,897,NULL),(11,5.167093276977539,'n','n',1,1,1,1,'hfghgf','s','2016-01-05 15:50:07',88,66,NULL),(12,4.238636493682861,'nnn','u',1,1,1,2,' nnnnn','b','2016-01-05 16:02:19',777,99,NULL),(13,2.3379464149475098,'nvbn','n',1,1,1,2,'sdfnmnfmbgmbv','b','2016-01-05 16:05:50',555,444,NULL),(14,5.108101844787598,'w','n',1,1,1,2,'g','b','2016-01-05 16:12:32',1,2,NULL),(15,4.993710041046143,'d','u',1,1,1,1,'fdbbf','s','2016-01-05 16:15:59',23,44,NULL),(16,7.330991744995117,'q','n',1,1,1,2,'dfgfgg','b','2016-01-05 19:05:51',3,4,NULL),(17,8.238025188446045,'q','n',1,1,1,1,'f','s','2016-01-05 19:09:30',6,7,NULL),(18,8.340293884277344,'d','u',1,1,1,1,'bbbbbbbb','s','2016-01-05 19:27:16',67,78,NULL),(19,2.1096363067626953,'hi ','u',1,1,1,1,'nbnbgmbnmdf','s','2016-01-05 19:34:53',777,888,NULL),(20,9.413130760192871,'nn','n',1,1,1,1,'mmnmnm','b','2016-01-06 14:04:17',88,99,NULL),(21,6.0902886390686035,'nvbn','n',1,1,1,1,'nnn',NULL,'2016-01-06 14:35:21',88,99,NULL),(22,2.119339942932129,'mm','n',1,2,2,1,'nnnn','b','2016-01-06 14:49:15',77,99,NULL),(23,9.131345748901367,'bbb','n',1,1,1,1,'nnnn','b','2016-01-06 14:59:34',77,88,NULL),(24,9.30349063873291,'kl','n',1,1,1,1,'bbb','s','2016-01-06 15:20:37',87,65,NULL),(25,9.566790580749512,'ee','u',1,2,1,1,'ddddddddddddddd','s','2016-01-06 15:31:29',2,3,NULL),(26,6.796804904937744,'cc','n',2,3,1,1,'dffdf','b','2016-01-06 15:38:31',44,33,NULL),(27,9.263613224029541,'sdsd','u',2,3,1,1,'nbnbnnbbbbnn','b','2016-01-06 15:47:04',7777,9999,NULL),(28,9.876401424407959,'ewr','n',1,1,1,1,'bbbbbbbbbbbbbbbbbbbbb','s','2016-01-06 15:51:10',666,888,NULL),(29,2.7463512420654297,'nnn','u',1,1,1,1,'bbnv','s','2016-01-06 15:53:45',88,88,NULL),(30,2.637967109680176,'bbbbbbbb','u',1,1,1,1,'bbbbb','b','2016-01-06 15:57:49',888,9999,NULL),(31,2.637967109680176,'bbbbbbbb','u',1,1,1,1,'bbbbb','b','2016-01-06 15:57:49',888,9999,NULL),(32,3.3193840980529785,'hhhh','u',1,2,2,1,'mmmmmmmm','s','2016-01-06 15:59:19',88,999,NULL),(33,4.4300360679626465,'tbbvdnf','u',1,1,1,1,'bvfdgtjgthgkjr','s','2016-01-06 16:01:25',8976,6868,NULL),(34,4.15950870513916,'hhhhhhh','u',1,1,1,2,'mmmmmmmmmmm','s','2016-01-06 16:26:56',66,77,NULL),(35,6.836234092712402,'df','n',2,3,1,2,'rtttttttttttttt','b','2016-01-06 17:24:12',56,567,NULL),(36,8.067500591278076,'fg','u',2,4,1,1,'rg','s','2016-01-13 17:10:08',4,6,NULL),(37,8.70715045928955,'rewq','u',1,1,1,1,'qwerty','s','2016-01-14 12:29:09',13,12,43),(38,8.15243148803711,'fdf','n',1,1,1,2,'rtfgffh','s','2016-01-14 12:36:49',55,56,43),(39,2.464820384979248,'qwerty','n',1,2,2,2,'qwerty','b','2016-01-14 13:16:17',67,57,43),(40,5.914769172668457,'zxcv','n',2,4,2,1,'zxcv','b','2016-01-14 13:49:33',23,45,43),(41,9.616055488586426,'lkjhg','u',2,3,1,2,'fffffffff','s','2016-01-14 13:57:19',986,876,43),(42,3.4426989555358887,'gggg','n',1,2,1,1,'mnbvc','s','2016-01-14 14:40:53',777,888,43),(43,5.753513336181641,'qwerty','u',1,1,2,2,'rtyyy','b','2016-01-14 14:56:23',4567,5678,43),(44,9.77083683013916,'poiyyy','n',2,3,2,2,'fdffd','b','2016-01-14 15:11:44',456,76676,43),(45,5.091766357421875,'uuuu','n',1,2,2,2,'gggfgfgfgf','b','2016-01-14 15:16:48',6666,5555,43),(46,6.377686977386475,'rttrre','n',2,4,3,2,'bryb hbyt','b','2016-01-14 15:19:34',6776,3443,43),(47,8.765113353729248,'tryyb','n',1,1,3,2,'jrthgjrgv','b','2016-01-14 15:21:23',76869,4667,43),(48,5.488234043121338,'e tue','n',2,3,2,2,'hgghhh','s','2016-01-14 15:27:20',43,67,43),(49,8.704295635223389,'trfye','n',1,1,1,2,'sdfs','b','2016-01-14 16:36:00',34,667,43),(50,6.9311203956604,'dgghth','n',2,4,1,2,'fd','b','2016-01-14 16:39:27',3,5,43),(51,3.9263291358947754,'tuutyt','n',2,3,2,2,'gggfgfgg','b','2016-01-14 16:59:23',444,555,43),(52,7.955008506774902,'erre','n',1,2,3,2,'dffgvhhgh','b','2016-01-14 17:13:30',4545433,556665,43),(53,8.254175186157227,'dfggb','n',1,2,3,1,'bhjyu rreh','b','2016-01-14 17:16:43',455,6776,43),(54,8.254175186157227,'dfggb','n',1,2,3,1,'bhjyu rreh','b','2016-01-14 17:16:49',455,6776,43),(55,3.4758028984069824,'fggd','n',1,1,1,1,'ythh','b','2016-01-18 14:03:59',5445,6767,43),(56,7.343795299530029,'hhg','n',1,1,1,1,'trtt','b','2016-01-18 14:11:47',5,6,43),(57,4.600209712982178,'ggfsdgf','n',1,1,2,1,'fgd fgf gerr geg','b','2016-01-18 14:19:30',757,646,43),(58,9.58406686782837,'hgh','n',1,1,2,2,'ghh vgfghf','b','2016-01-18 15:13:34',555,333,43),(59,4.501208305358887,'hello maam','n',1,1,2,1,'heelo, i want to sell a computer','b','2016-01-19 14:19:15',234,123,43),(60,8.13934326171875,'hii','u',2,3,2,2,'gfgfd gdfgdg','b','2016-01-19 17:01:29',654,675,43),(61,9.215571403503418,'ghgh','n',2,3,2,1,'ghgd gdh dgfh dsfhj','b','2016-01-25 06:36:48',876,987,43),(62,4.715766429901123,'gg','n',2,3,1,2,'hgfh hhfh ghfh','b','2016-01-28 00:01:48',345,321,43),(63,9.590152263641357,'gggfg hgj','n',1,1,2,2,'bf nedhw whgrj weherg','b','2016-01-28 00:16:15',3233,75557,43),(64,4.26444673538208,'I want to buy mobile','n',1,2,4,1,'herhj grghergr jjghrr jjrgjrgf jrg jjrfjegg','b','2016-01-28 00:21:19',456,664,43),(65,2.1785659790039062,'I want to sell Moto 3rd Gen mobile','u',2,3,3,2,'I have used it since 2 years. Every features of this phone is very good.','s','2016-02-01 01:54:39',6000,5000,43);
/*!40000 ALTER TABLE `post_mobile_section` ENABLE KEYS */;
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
