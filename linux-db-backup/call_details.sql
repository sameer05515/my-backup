-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: call_details
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

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
-- Table structure for table `t_call_details`
--

DROP TABLE IF EXISTS `t_call_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_call_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person` text NOT NULL,
  `call_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `number` text NOT NULL,
  `pulses` int(11) NOT NULL,
  `month` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_call_details`
--

LOCK TABLES `t_call_details` WRITE;
/*!40000 ALTER TABLE `t_call_details` DISABLE KEYS */;
INSERT INTO `t_call_details` VALUES (1,'Vandana Kumari','2021-06-19 08:12:50','9643951505',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (2,'Vandana Kumari','2021-06-19 08:12:50','9643951505',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (3,'Vandana Kumari','2021-06-19 08:12:50','9871079134',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (4,'Vandana Kumari','2021-06-19 08:12:50','9643951505',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (5,'Vandana Kumari','2021-06-19 08:12:50','9643951505',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (6,'Vandana Kumari','2021-06-19 08:12:50','9643951505',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (7,'Vandana Kumari','2021-06-19 08:12:50','9643951505',4,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (8,'Vandana Kumari','2021-06-19 08:12:50','9643951505',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (9,'Vandana Kumari','2021-06-19 08:12:50','9643951505',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (10,'Vandana Kumari','2021-06-19 08:12:50','9871079134',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (11,'Vandana Kumari','2021-06-19 08:12:50','9871079134',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (12,'Vandana Kumari','2021-06-19 08:12:50','8178026512',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (13,'Vandana Kumari','2021-06-19 08:12:50','01292466116',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (14,'Vandana Kumari','2021-06-19 08:12:50','01130403210',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (15,'Vandana Kumari','2021-06-19 08:12:50','01130403210',5,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (16,'Vandana Kumari','2021-06-19 08:12:50','01130403210',4,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (17,'Vandana Kumari','2021-06-19 08:12:50','9873652612',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (18,'Vandana Kumari','2021-06-19 08:12:50','8010645624',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (19,'Vandana Kumari','2021-06-19 08:12:50','8010645624',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (20,'Vandana Kumari','2021-06-19 08:12:50','8010645624',32,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (21,'Vandana Kumari','2021-06-19 08:12:50','8010645624',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (22,'Vandana Kumari','2021-06-19 08:12:50','8010645624',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (23,'Vandana Kumari','2021-06-19 08:12:50','8010645624',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (24,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (25,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (26,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (27,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (28,'Vandana Kumari','2021-06-19 08:12:50','8969808735',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (29,'Vandana Kumari','2021-06-19 08:12:50','9119629668',14,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (30,'Vandana Kumari','2021-06-19 08:12:50','8969808735',4,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (31,'Vandana Kumari','2021-06-19 08:12:50','8969808735',6,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (32,'Vandana Kumari','2021-06-19 08:12:50','8969808735',15,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (33,'Vandana Kumari','2021-06-19 08:12:50','9119629668',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (34,'Vandana Kumari','2021-06-19 08:12:50','8969808735',17,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (35,'Vandana Kumari','2021-06-19 08:12:50','8969808735',17,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (36,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (37,'Vandana Kumari','2021-06-19 08:12:50','8969808735',5,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (38,'Vandana Kumari','2021-06-19 08:12:50','8969808735',21,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (39,'Vandana Kumari','2021-06-19 08:12:50','8969808735',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (40,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (41,'Vandana Kumari','2021-06-19 08:12:50','8969808735',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (42,'Vandana Kumari','2021-06-19 08:12:50','8969808735',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (43,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (44,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (45,'Vandana Kumari','2021-06-19 08:12:50','9119629668',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (46,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (47,'Vandana Kumari','2021-06-19 08:12:50','9119629668',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (48,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (49,'Vandana Kumari','2021-06-19 08:12:50','8969808735',10,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (50,'Vandana Kumari','2021-06-19 08:12:50','8969808735',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (51,'Vandana Kumari','2021-06-19 08:12:50','8969808735',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (52,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (53,'Vandana Kumari','2021-06-19 08:12:50','7050952487',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (54,'Vandana Kumari','2021-06-19 08:12:50','8969808735',22,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (55,'Vandana Kumari','2021-06-19 08:12:50','8969808735',6,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (56,'Vandana Kumari','2021-06-19 08:12:50','8969808735',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (57,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (58,'Vandana Kumari','2021-06-19 08:12:50','8969808735',5,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (59,'Vandana Kumari','2021-06-19 08:12:50','8969808735',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (60,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (61,'Vandana Kumari','2021-06-19 08:12:50','9801516140',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (62,'Vandana Kumari','2021-06-19 08:12:50','8969808735',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (63,'Vandana Kumari','2021-06-19 08:12:50','8969808735',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (64,'Vandana Kumari','2021-06-19 08:12:50','9956837901',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (65,'Vandana Kumari','2021-06-19 08:12:50','8969808735',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (66,'Vandana Kumari','2021-06-19 08:12:50','9065084955',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (67,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (68,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (69,'Vandana Kumari','2021-06-19 08:12:50','8969808735',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (70,'Vandana Kumari','2021-06-19 08:12:50','8969808735',11,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (71,'Vandana Kumari','2021-06-19 08:12:50','8969808735',5,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (72,'Vandana Kumari','2021-06-19 08:12:50','8969808735',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (73,'Vandana Kumari','2021-06-19 08:12:50','8969808735',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (74,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (75,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (76,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (77,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (78,'Vandana Kumari','2021-06-19 08:12:50','7050952487',6,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (79,'Vandana Kumari','2021-06-19 08:12:50','7050952487',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (80,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (81,'Vandana Kumari','2021-06-19 08:12:50','7050952487',5,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (82,'Vandana Kumari','2021-06-19 08:12:50','7050952487',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (83,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (84,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (85,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (86,'Vandana Kumari','2021-06-19 08:12:50','8969808735',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (87,'Vandana Kumari','2021-06-19 08:12:50','7050952487',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (88,'Vandana Kumari','2021-06-19 08:12:50','7050952487',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (89,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (90,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (91,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (92,'Vandana Kumari','2021-06-19 08:12:50','8969808735',4,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (93,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (94,'Vandana Kumari','2021-06-19 08:12:50','9119629668',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (95,'Vandana Kumari','2021-06-19 08:12:50','8969808735',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (96,'Vandana Kumari','2021-06-19 08:12:50','8969808735',7,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (97,'Vandana Kumari','2021-06-19 08:12:50','7254014799',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (98,'Vandana Kumari','2021-06-19 08:12:50','7254014799',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (99,'Vandana Kumari','2021-06-19 08:12:50','7254014799',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (100,'Vandana Kumari','2021-06-19 08:12:50','7254014799',34,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (101,'Vandana Kumari','2021-06-19 08:12:50','7254014799',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (102,'Vandana Kumari','2021-06-19 08:12:50','7254014799',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (103,'Vandana Kumari','2021-06-19 08:12:50','7254014799',5,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (104,'Vandana Kumari','2021-06-19 08:12:50','7254014799',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (105,'Vandana Kumari','2021-06-19 08:12:50','9304371011',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (106,'Vandana Kumari','2021-06-19 08:12:50','7254014799',18,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (107,'Vandana Kumari','2021-06-19 08:12:50','7254014799',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (108,'Vandana Kumari','2021-06-19 08:12:50','7254014799',7,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (109,'Vandana Kumari','2021-06-19 08:12:50','7254014799',1,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (110,'Vandana Kumari','2021-06-19 08:12:50','7254014799',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (111,'Vandana Kumari','2021-06-19 08:12:50','7254014799',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (112,'Vandana Kumari','2021-06-19 08:12:50','7254014799',15,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (113,'Vandana Kumari','2021-06-19 08:12:50','7254014799',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (114,'Vandana Kumari','2021-06-19 08:12:50','7254014799',16,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (115,'Vandana Kumari','2021-06-19 08:12:50','7254014799',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (116,'Vandana Kumari','2021-06-19 08:12:50','9304371011',3,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (117,'Vandana Kumari','2021-06-19 08:12:50','7254014799',2,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (118,'Vandana Kumari','2021-06-19 08:12:50','7254014799',4,'2021/06 bill');
INSERT INTO `t_call_details` VALUES (119,'Vandana Kumari','2021-06-19 08:12:50','7254014799',4,'2021/06 bill');
/*!40000 ALTER TABLE `t_call_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'call_details'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-01 21:17:18
