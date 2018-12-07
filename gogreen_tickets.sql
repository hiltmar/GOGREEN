-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: gogreen_tickets
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `updatedby` varchar(50) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comments_id` (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (23,343,'Here is a comment added by admin user.','2018-12-07 12:12:31','admin'),(24,343,'A new comment added as a visitor via email link to ticket.','2018-12-07 12:13:47','Visitor'),(25,343,'A second comment from me.','2018-12-07 12:14:14','Visitor'),(26,344,'Comment from me as Dave jones','2018-12-07 13:12:31','Visitor'),(27,344,'Another comment from me.','2018-12-07 13:15:50','Visitor'),(28,344,'Ive looked at this and all seems to be working as expected','2018-12-07 13:16:42','admin');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(36) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `telno_1` varchar(20) NOT NULL,
  `contact_method` varchar(50) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `status` varchar(10) NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `login_name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_name` (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (343,'4d75e38f-fa17-11e8-82db-382c4ae82b83','General Enquiry','Mark Hilton','Senior PHP Developer','mh.email.home@gmail.com','07718 305 230','Email','Hi\nthis is a test ticket.\n\nMany Thanks','Closed','2018-12-07 11:57:50','admin'),(344,'8f6cb678-fa21-11e8-82db-382c4ae82b83','Support Question','Dave Jones','Worker','davej@here.co.uk','01724 563 772','Phone','Just a test ticket as another visitor.','Open','2018-12-07 13:11:16','');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `name` varchar(200) NOT NULL,
  `iterations` int(11) DEFAULT NULL,
  `salt` varchar(128) NOT NULL,
  `password` varchar(512) NOT NULL,
  `creation_date` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin',8192,'17405170655c0950db390664.59371018','9f3ce1006ae52429607265b75f3ab7ff0082f21cd20b6de8e678e26a09731091490515cc15dddcb3b8c8c0d13471b99d6668f584aebdf86596e161c28392ab2b7ca1c8b66eff17a0bf9e1f9e3b448d6a60ffbb27ed48d94bccb3bcff7dc2010712736d1c6857063d6c3c0751fbae2f5b3bc312bfdce01e05063b80c87cd2cd088d66f357d37dd24b0fc3e71da5e641d18ad0c2cf9dabd04dc1fcb0debb1a699e0d1b92e194aa03b3ad2f0d4bfe0f867d5b18b2eca5361a57c761f4bdce09daa54b4912af54602c3943abb47727bb9a305173edbe705965e42cffbef3dcdb614a8065b678e6a97202304fbb6c8c00add3fbc9c39b3c85f40ebbc91a03102eea45','2018-12-06 16:39:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-07 13:30:48
