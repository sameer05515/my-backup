-- MySQL dump 10.17  Distrib 10.3.13-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tasksdb
-- ------------------------------------------------------
-- Server version	10.3.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_tasks`
--

DROP TABLE IF EXISTS `t_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tasks`
--

LOCK TABLES `t_tasks` WRITE;
/*!40000 ALTER TABLE `t_tasks` DISABLE KEYS */;
INSERT INTO `t_tasks` VALUES (1,'Organize life','<p>Exercise <strong><span style=\"color: #008000;\">for better life ahead</span></strong></p>\n<p>practice interview <strong>question <span style=\"color: #008000;\">for better opportunity</span></strong></p>\n<p><span style=\"color: #000000;\">Explore new earning opportunity <strong><span style=\"color: #008000;\">for job disaster management</span>.</strong></span></p>','2021-08-06 18:19:12');
INSERT INTO `t_tasks` VALUES (2,'Second Task','<p><strong>Task description</strong></p><ul><li><strong>First point</strong></li><li><strong>Second point</strong></li></ul>','2021-08-06 18:28:32');
INSERT INTO `t_tasks` VALUES (3,'Third Task','<font face=\"Arial\" color=\"#d30d0d\">My Actionables</font><p><font face=\"Arial\" color=\"#d30d0d\">I want to show this content in any component</font></p>','2021-08-06 21:29:45');
INSERT INTO `t_tasks` VALUES (4,'Fourth Task','<font face=\"Arial\" color=\"#d30d0d\">My Actionables</font><p><font face=\"Arial\" color=\"#d30d0d\">I want to show this content in any component</font></p>','2021-08-07 11:21:34');
INSERT INTO `t_tasks` VALUES (5,'Fifth Task','<p>Exercise <strong><span style=\"color: #008000;\">for better life ahead</span></strong></p>\n<p>practice interview <strong>question <span style=\"color: #008000;\">for better opportunity</span></strong></p>\n<p><span style=\"color: #000000;\">Explore new earning opportunity <strong><span style=\"color: #008000;\">for job disaster management</span>.</strong></span></p>','2021-08-07 13:03:22');
INSERT INTO `t_tasks` VALUES (6,'Clean up hard disk','<ul>\n<li>work to find duplicate files and remove them</li>\n  <li>Organise PDF,videos</li>\n</ul>','2021-08-29 21:01:50');
/*!40000 ALTER TABLE `t_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tasksdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-22 16:13:25
