-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: msg_NHL
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.10.2

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `first_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'turbojb@gmail.com','$2a$10$N4pLaFHQpz4cQrjzaaQFYOeQU3RUseyW/X722KIaj964hti3ZnxMK',NULL,NULL,NULL,20,'2013-01-22 03:08:25','2013-01-22 03:06:16','127.0.0.1','127.0.0.1','JB','Trebilcock'),(2,'email@dx.com','$2a$10$8NSNaSzCO03WjCzhMmzS9O656XY7HyVnq7/IafeVF1pfpB1d3btBm',NULL,NULL,NULL,1,'2013-01-22 03:10:36','2013-01-22 03:10:36','127.0.0.1','127.0.0.1',NULL,NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `cable_provider` varchar(255) DEFAULT NULL,
  `favorite_nhl` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `official_rules` int(11) DEFAULT NULL,
  `newsletter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (1,'James','Trebilcock','turbojb@gmail.com',11230,'optimum','New York Rangers','2013-01-21 04:59:47','2013-01-21 04:59:47',NULL,NULL),(2,'test','user','user@email.com',11231,'optimum','New Jersey Devils','2013-01-21 18:02:28','2013-01-21 18:02:28',NULL,NULL),(3,'Tom','Jones','TJ@hotmail.com',11212,'optimum','New Jersey Devils','2013-01-21 18:35:08','2013-01-21 18:35:08',NULL,NULL),(4,'tom','jones','turbojb@gmail.com',11230,'Berkshire Cable Corp.','Calgary Flames','2013-01-22 00:31:53','2013-01-22 00:31:53',NULL,NULL),(5,'tom','jones','turbojb@gmail.com',11230,'Berkshire Cable Corp.','Calgary Flames','2013-01-22 00:31:59','2013-01-22 00:31:59',NULL,NULL),(6,'Gabe ','Athhouse','jb@google.com',11212,'Charter Communications','New York Rangers','2013-01-22 00:34:03','2013-01-22 00:34:03',NULL,NULL),(7,'BIll','Billson','Bill@bill.com',11212,'Blue Ridge Communications','Dallas Starts','2013-01-22 00:50:42','2013-01-22 00:50:42',NULL,NULL),(8,'George','George','bob@tom.com',11212,'Cablevision','Carolina Hurricanes','2013-01-22 00:51:37','2013-01-22 00:51:37',NULL,NULL),(9,'John','Johnson','turbojb@gmail.com',11212,'AT&T U-Verse','Boston Bruins','2013-01-22 01:00:50','2013-01-22 01:00:50',NULL,NULL),(10,'James','trebil','turbojb@gmail.com',11212,'Berkshire Cable Corp.','Boston Bruins','2013-01-22 01:06:42','2013-01-22 01:06:42',NULL,NULL),(11,'fxdfds','asdfafds','jb@jb.com',11212,'Berkshire Cable Corp.','Boston Bruins','2013-01-22 01:08:24','2013-01-22 01:08:24',NULL,NULL),(12,'jb','treiblock','turbojb@gmail.com',11212,'DTC Cable','Carolina Hurricanes','2013-01-22 01:12:47','2013-01-22 01:12:47',NULL,NULL),(13,'jb','trebilcock','turbojb@gmail.com',11212,'Private Network Cable','New York Islanders','2013-01-22 01:22:50','2013-01-22 01:22:50',NULL,NULL),(14,'jb','treiblcock','turbojb@gmail.com',11213,'Blue Ridge Communications','Buffalo Sabres','2013-01-22 01:26:01','2013-01-22 01:26:01',NULL,NULL),(15,'jb','trebilcock','turbojb@gmail.com',11239,'Private Network Cable','New York Islanders','2013-01-22 01:26:45','2013-01-22 01:26:45',NULL,NULL),(16,'john','johnson','john@gmail.com',11212,'Berkshire Cable Corp.','Buffalo Sabres','2013-01-22 01:36:52','2013-01-22 01:36:52',NULL,NULL),(17,'bil','billson','bill@gil.com',11234,'Berkshire Cable Corp.','Nashville Preditors','2013-01-22 01:37:23','2013-01-22 01:37:23',NULL,NULL),(18,'john','jim','tur@gmail.com',11234,'Berkshire Cable Corp.','New Jersey Devils','2013-01-22 01:38:17','2013-01-22 01:38:17',NULL,NULL),(19,'jb','treeilbock','turbojb@gmail.com',11230,'Cablevision','Columbus Blue Jackets','2013-01-22 01:39:37','2013-01-22 01:39:37',NULL,NULL),(20,'jb','trebilcock','turbojb@gmail.com',11230,'AT&T U-Verse','Calgary Flames','2013-01-22 01:40:16','2013-01-22 01:40:16',NULL,NULL),(21,'fdas','asfd','afsd@jb.com',11212,'DirecTV','Buffalo Sabres','2013-01-22 01:41:52','2013-01-22 01:41:52',NULL,NULL),(22,'sad','asdf','jb@jb.com',11230,'Berkshire Cable Corp.','Carolina Hurricanes','2013-01-22 01:43:17','2013-01-22 01:43:17',NULL,NULL),(23,'sdafljk;','fas;ldjk','jb@google.com',11230,'AT&T U-Verse','Boston Bruins','2013-01-22 01:44:55','2013-01-22 01:44:55',NULL,NULL),(24,'asdffads','asfdafds','jb@gmail.com',11230,'AT&T U-Verse','Boston Bruins','2013-01-22 01:48:53','2013-01-22 01:48:53',NULL,NULL),(25,'jhb','trebilcock','turbojb@gmail.com',11230,'Berkshire Cable Corp.','Buffalo Sabres','2013-01-22 01:49:40','2013-01-22 01:49:40',NULL,NULL),(26,'jb','trebilcock','turbojb@gmail.com',11230,'Berkshire Cable Corp.','Boston Bruins','2013-01-22 01:53:44','2013-01-22 01:53:44',NULL,NULL),(27,'dsfa','asdf','turbojb@gmail.com',11230,'Princetown Cable','New York Rangers','2013-01-22 01:57:56','2013-01-22 01:57:56',NULL,NULL),(28,'james ','trebilcock','turbojb@gmail.com',11230,'AT&T U-Verse','Minnosota Wild','2013-01-22 02:06:52','2013-01-22 02:06:52',NULL,NULL),(29,'jb','trebilcock','turbojb@gmail.com',11230,'Javdeck Inc.','New Jersey Devils','2013-01-22 02:07:55','2013-01-22 02:07:55',NULL,NULL),(30,'jb','trebilcock','turbojb@gmail.com',11238,'Charter Communications','Carolina Hurricanes','2013-01-22 02:09:55','2013-01-22 02:09:55',NULL,NULL),(31,'jb','trebilcock','turbojb@gmail.com',11230,'MTC Cable','New Jersey Devils','2013-01-22 02:11:44','2013-01-22 02:11:44',NULL,NULL),(32,';lkj','l;k','turbojb@gmail.com',11230,'asdf','asd','2013-01-22 02:37:01','2013-01-22 02:37:01',NULL,1),(33,'bj','tebilc','jtrebilcock@dxagency.com',11212,'AT&T U-Verse','Anaheim Ducks','2013-01-22 02:39:16','2013-01-22 02:39:16',1,1),(34,'Bobby','Suzan','mtgreen@yahoo.com',12790,'Cablevision','Colorado Avalanche','2013-01-22 02:49:07','2013-01-22 02:49:07',1,1);
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130118211158'),('20130121001628'),('20130121002342'),('20130121045044'),('20130122021850'),('20130122021935');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-22  8:16:44
