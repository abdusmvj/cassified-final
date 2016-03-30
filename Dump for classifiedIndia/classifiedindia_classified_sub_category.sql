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
-- Table structure for table `classified_sub_category`
--

DROP TABLE IF EXISTS `classified_sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classified_sub_category` (
  `classified_sub_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classified_category_id` int(10) unsigned NOT NULL,
  `classified_sub_category_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`classified_sub_category_id`),
  KEY `classified_category_id` (`classified_category_id`),
  FULLTEXT KEY `classified_sub_category_name` (`classified_sub_category_name`),
  FULLTEXT KEY `classified_sub_category_name_2` (`classified_sub_category_name`),
  CONSTRAINT `classified_category_id` FOREIGN KEY (`classified_category_id`) REFERENCES `classified_category` (`classified_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classified_sub_category`
--

LOCK TABLES `classified_sub_category` WRITE;
/*!40000 ALTER TABLE `classified_sub_category` DISABLE KEYS */;
INSERT INTO `classified_sub_category` VALUES (1,1,'Home & Office Furniture'),(2,1,'Home Decoration & Furnishings'),(3,1,'Household'),(4,1,'Clothing & Garments'),(5,1,'Jewellery'),(6,1,'Watches'),(7,1,'Beauty Products'),(8,1,'Fashion Accessories'),(9,1,'Bags & Luggage'),(10,1,'Sports & Fitness Equipment'),(11,1,'Health Products'),(12,1,'Baby & Infant Products'),(13,1,'Toys & Games'),(14,1,'Gifts & Stationary'),(15,1,'Books & Magazines'),(16,1,'Antiques & Handicrafts'),(17,1,'Coin & Stamps'),(18,1,'Paintings'),(19,1,'Collectibles'),(20,1,'Music & Movies'),(21,1,'Musical Instruments'),(22,1,'Discounted Items for Sale'),(23,1,'Barter & Exchange'),(24,1,'Others else'),(25,2,'Laptop & Computers'),(26,2,'Computer Equipments'),(27,2,'UPS, Inverters & Generators'),(28,2,'TV, DVD Player Multimedia'),(29,2,'Home Theatre'),(30,2,'Music Systems'),(31,2,'iPods & MP3 Players'),(32,2,'Headphones'),(33,2,'Camera Accessories'),(34,2,'Cameras & Digicams'),(35,2,'Video Games - Consoles'),(36,2,'Security Equipments & Products'),(37,2,'Kitchen Appliances'),(38,2,'Office Supplies'),(39,2,'Office Equipments, Fax & EPABX'),(40,2,'Machinery & Tools'),(41,2,'Industrial Equipments'),(42,2,'Others Else'),(43,3,'Mobile Phones'),(44,3,'Accessories'),(45,3,'Tablets'),(46,4,'Modeling Agencies'),(47,4,'Acting & Modeling'),(48,4,'Photographers & Cameraman'),(49,4,'Musicians'),(50,4,'Actor - Model Portfolios'),(51,4,'Art Directors & Editors'),(52,4,'Script Writers'),(53,4,'Sound Engineers'),(54,4,'Set Designers'),(55,4,'Fashion Designers'),(56,4,'Make Up Stylists'),(57,4,'Studio Locations for hire'),(58,4,'Acting Schools'),(59,4,'Telesoap Advertising'),(60,4,'Others else'),(61,5,'Cars'),(62,5,'Bikes'),(63,5,'Scooters & Scooties'),(64,5,'Bicycles'),(65,5,'Spare Parts & Accessories'),(66,5,'Commercial Vehicles'),(67,5,'Others Vehicles'),(68,6,'Houses/Apartments for Rent'),(69,6,'Houses/Apartments for Sale'),(70,6,'Residential - Builder floors for Sale'),(71,6,'Land & Plot for Sale'),(72,6,'Commercial Property for Rent'),(73,6,'Hostels & Paying Guest'),(74,6,'Bungalows/Villas for Sale'),(75,6,'Flatmates'),(76,6,'Service Apartments'),(77,6,'Residential - Builder floors For Rent'),(78,6,'Vacation Rentals - Timeshare'),(79,6,'Others else'),(80,7,'Full Time Jobs'),(81,7,'Part Time Jobs'),(82,7,'Internship Jobs'),(83,7,'Work From Home'),(84,8,'Advertising - Design'),(85,8,'Architect'),(86,8,'Astrology - Numerology'),(87,8,'Baby Sitters - Nanny'),(88,8,'Bus, Train, Airline Tickets'),(89,8,'Business Offers'),(90,8,'Carpenters - Furniture Work'),(91,8,'Catering - Tiffin Services'),(92,8,'Computer Repair & Services'),(93,8,'Cooks'),(94,8,'Courier Services'),(95,8,'Detective Agency'),(96,8,'Doctors'),(97,8,'Drivers'),(98,8,'Driving Schools'),(99,8,'DTH & Set Top Boxes'),(100,8,'Electricians'),(101,8,'Electronics - Appliances Repair'),(102,8,'Event - Party Planners - DJ'),(103,8,'Health - Fitness'),(104,8,'Home Cleaning'),(105,8,'Hotels - Resorts'),(106,8,'Household Repair'),(107,8,'Interior Design'),(108,8,'Internet - Broadband'),(109,8,'Investment - Financial Planning'),(110,8,'Lawyers - Advocates'),(111,8,'Loans - Insurances'),(112,8,'Maids - Housekeeping'),(113,8,'Motor Service - Repair'),(114,8,'Packers & Movers'),(115,8,'Parlours & Salon'),(116,8,'Pest Control'),(117,8,'Plumbers'),(118,8,'Restaurants - Coffee Shops'),(119,8,'Retail'),(120,8,'Taxation - Audit'),(121,8,'Travel Agency'),(122,8,'Vaastu'),(123,8,'Vacation - Tour Packages'),(124,8,'Vehical Rentals'),(125,8,'Taxi Services'),(126,8,'Others Else'),(127,9,'Coaching & Tuitions'),(128,9,'Distance Learning Courses'),(129,9,'Career Counseling'),(130,9,'Study Material'),(131,9,'Text Books'),(132,9,'Professional & Short Term Courses'),(133,9,'Workshops'),(134,9,'Hobby Classes'),(135,9,'Dance & Music Classes'),(136,9,'Play Schools & Creche'),(137,9,'Universities'),(138,9,'Others else'),(139,10,'Announcements'),(140,10,'Events'),(141,10,'Car Pool'),(142,10,'Bike Ride'),(143,10,'Charity, Donate, NGO'),(144,10,'Tender Notices'),(145,10,'Lost - Found'),(146,11,'Grooms'),(147,11,'Wedding Planners'),(148,11,'Brides'),(149,11,'Caterer Service'),(150,11,'Beauty Parlour'),(151,11,'Make-up Designer'),(152,12,'Pets'),(153,12,'Pet Adoption'),(154,12,'Pet Care - Accessories'),(155,12,'Pet Training & Grooming'),(156,12,'Pet Foods'),(157,12,'Pet Clinics');
/*!40000 ALTER TABLE `classified_sub_category` ENABLE KEYS */;
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
