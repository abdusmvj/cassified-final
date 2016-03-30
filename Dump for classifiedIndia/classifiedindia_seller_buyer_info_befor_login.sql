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
-- Table structure for table `seller_buyer_info_befor_login`
--

DROP TABLE IF EXISTS `seller_buyer_info_befor_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_buyer_info_befor_login` (
  `seller_buyer_id` int(11) NOT NULL AUTO_INCREMENT,
  `your_type` varchar(45) DEFAULT NULL,
  `your_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `pincode` varchar(40) DEFAULT NULL,
  `buysel_uniq_id` int(11) DEFAULT NULL,
  `corespond_subcatid` int(11) DEFAULT NULL,
  PRIMARY KEY (`seller_buyer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_buyer_info_befor_login`
--

LOCK TABLES `seller_buyer_info_befor_login` WRITE;
/*!40000 ALTER TABLE `seller_buyer_info_befor_login` DISABLE KEYS */;
INSERT INTO `seller_buyer_info_befor_login` VALUES (1,'d','bb','d@','67','bn','mk',6,9,'65',NULL,NULL),(2,'d','bb','d@','7567665836','bn','mk',68,97,'6578907',NULL,NULL),(3,'d','bb','d@','6666666666','bn','mk',68,97,'657890778',NULL,NULL),(4,'d','hgfhrfvnr','fbh@jhhjfg','1234509876','fjgf, gjrhgj bgghr.','hfrfjg',1,2,'32425167',NULL,NULL),(5,'d','bb','uu','55','nnmn','bnbv',1,2,'66',NULL,NULL),(6,'d','bb','uu','55','nnmn','bnbv',1,2,'66',NULL,NULL),(7,'d','ytyttyytyt','hhghgh','87787','bbvcvcv','hjhj',1,2,'78654',NULL,NULL),(8,'d','a','s','3','b',' n',1,2,'7',NULL,NULL),(9,'i','d','df','5555','hyujy','hhny',1,2,'6656',NULL,NULL),(10,'d','nvn','ghg','87','nnbnb','bnbnb',1,2,'777',NULL,NULL),(11,'d','dfbfm','bdnbnb','6666','fbnfbnfb','nbm',2,3,'7777',NULL,NULL),(12,'d','vfb','fgrghe','444','dgg','fvghf',1,1,'666',NULL,NULL),(13,'i','u','i','8','b','o',1,1,'2',NULL,NULL),(14,'i','u','i','8','b','o',1,1,'2',NULL,NULL),(15,'d','sneha','sne','8906','bh','o',1,1,'2',NULL,NULL),(16,'d','sneha','sne','8906','bh','o',1,1,'2',NULL,NULL),(17,'d','sneha','sne','8906','bh','o',1,1,'2',NULL,NULL),(18,'i','rrrrr','ooo','666','bbbbbnnnn','mmmmmm',1,1,'888888',NULL,NULL),(19,'i','hhhh','ggg','912','hghgrjgjw','fghgfh',1,1,'765432',NULL,NULL),(20,'d','nn','nn','888','kjk','jhjj',1,1,'8787',NULL,NULL),(21,'i','gsdfeghew','sdggfh@nvnd.om','6789065432','bnnnnnbn','uiiiiiiiiiiiiiii',1,2,'678906',NULL,NULL),(22,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(23,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(24,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(25,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(26,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(27,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(28,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(29,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(30,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(31,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(32,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(33,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(34,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(35,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(36,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(37,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(38,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(39,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(40,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(41,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(42,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(43,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(44,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(45,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(46,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(47,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(48,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(49,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(50,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(51,'i','hh','ghhg','544445','rtgthght','hjryj',2,4,'4567777',NULL,NULL),(52,'i','gghfhweqrfh','hhdshw','6547','hghfrgrhj','fdnsgsgh',1,2,'854768',5,44),(53,'i','nv','gfgfg','65656565','ghghgh','hhghg',1,1,'767676',6,44),(54,'d','Sneha','seha@mail.in','7896543','wkergunj','jalpaiguri',1,1,'123456',7,44),(55,'d','gfh','fhg','6564646','gherwhrfefhfgh','rgehgfhe',1,2,'5674',8,44),(56,'d','Sneha','sneha2274@gmail.com','9126012331','hakimpara','Jalpaiguri',1,2,'897654',9,44),(57,'d','Puspa','vbhg@sdfg.in','214567889','gomosto pare','Jkhg',1,1,'34567',10,44),(58,'d','Pusa','gh','7654','hth','tyuiop',1,1,'543213',11,44),(59,'i','rtk','ggggg','56789','sd er cv','Jalpaiguri',1,1,'908765',12,44),(60,'d','Ritwik','sne3','765432345','hai jbi','jalpoi',1,2,'87654',14,44),(61,'d','sneha','sneha2274@gmail.com','870987654','hakimpare','jalpaiguri',1,2,'456453',15,44),(62,'i','sneha','gfd@lo.om','7865443','dfgfd','jaopiu',1,2,'453678',16,44),(63,'i','hrfgher','fdgsg','6577887','tghrtjgtjrh','gjfhjfhj',1,2,'74567',17,44),(64,'i','jgrtgr','mmdfgmd','87543868','hfgjhfeg','fhghjgh',1,2,'48578',18,44),(65,'i','hj','gghf','67888','bv gfgh','yttghg',1,1,'67655',19,44),(66,'i','hhgrh','fgherwg','6545544365','fherg','hgheg',1,1,'7465',20,44),(67,'i','hj','fgfdh','576537','hfgg','bfh',2,4,'764',21,44),(68,'i','hfg','fghj','46757435','gfjhghfj','dgfgher',2,4,'657456',22,44),(69,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(70,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(71,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(72,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(73,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(74,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(75,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(76,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(77,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(78,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(79,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(80,'i','gjr','hgrg','74657','gjhrte','mmgjhert',2,3,'76566658',23,44),(81,'d','hjgjgjgg','ghgh','86767','ghgh hghg','hgh',1,1,'6666777',24,44),(82,'i','hfbg','jfg@vd.in','7657655764','f r','rg',2,3,'432145',26,44),(83,'d','hgrfg ','twetr@','665464','hggh hfdhg','grg rgr',1,1,'776655',57,43),(84,'i','Sgerg','fbh@jhhjfg','6565365','jgfer','fher',2,3,'765498',0,43),(85,'d','gg vg','nhgh','65655434','gfghh','hghgh',1,1,'77776',58,43),(86,'d','gg vg','nhgh','65655434','gfghh','hghgh',1,1,'77776',58,43),(87,'d','gg vg','nhgh','65655434','gfghh','hghgh',1,1,'77776',58,43),(88,'d','gg vg','nhgh','65655434','gfghh','hghgh',1,1,'77776',58,43),(89,'d','sneha','sm@hh','98089765','walkergunj','Jalpaiguri',1,1,'654321',59,43),(90,'d','Sgdgh','ghdgh@','4321567','gfh','fdghg',2,3,'876543',60,43),(91,'d','ddtr','ch@gg','3565778','dgdr gfff','fdgdr',1,1,'34546',27,44),(92,'d','hhf','gg@yyu.ij','12345678','gfgd ghghh','hfh',1,1,'1234',61,43),(93,'i','hggf hgh','ghgh@gfg','344444','nnghg h','hghghg',1,1,'456788',62,43),(94,'d','fghfh','sd@fg','654211222','dghwg','hwhfgh',1,2,'545465',63,43),(95,'d','fghfh','sd@fg','654211222','dghwg','hwhfgh',1,2,'545465',63,43),(96,'d','sneha','dhggf@f','575575757','hhjejg','nkjegw',1,2,'575756',64,43),(97,'i','ewrhw','ecrw@eg','1233546','gdh krrk','tjhr krt',2,4,'656466',28,44),(98,'d','rugvry','girti@','234567','gjtrgtrjg','refjwrgjg',1,2,'234556',29,44),(99,'d','rugvry','girti@','234567','gjtrgtrjg','refjwrgjg',1,2,'234556',29,44),(100,'d','rugvry','girti@','234567','gjtrgtrjg','refjwrgjg',1,2,'234556',29,44),(101,'d','rugvry','girti@','234567','gjtrgtrjg','refjwrgjg',1,2,'234556',29,44),(102,'d','rugvry','girti@','234567','gjtrgtrjg','refjwrgjg',1,2,'234556',29,44),(103,'i','hjkhfe','gfd@fh','456764','hgjtgjtg','rtgrhghr',1,2,'676767',0,45),(104,'d','Sneha','dhsg@hf.ok','234567765','gfhgfgh','gerchcvtye',1,1,'555555',3,45),(105,'d','Sneha','dhsg@hf.ok','234567765','gfhgfgh','gerchcvtye',1,1,'555555',3,45),(106,'i','Sneha Chakraborty','sneha2274@gmail.com','2356787609','Hatibagan','Kolkata',2,3,'700087',0,43),(107,'i','Sneha Chakraborty','sneha2274@gmail.com','2356787609','Hatibagan','Kolkata',2,3,'700087',65,43);
/*!40000 ALTER TABLE `seller_buyer_info_befor_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-01  5:32:12
