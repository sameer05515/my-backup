-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: parent_child_relation_topics
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
-- Table structure for table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(1000) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_category`
--

LOCK TABLES `t_category` WRITE;
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
INSERT INTO `t_category` VALUES (1,'My First category','2021-08-01 09:57:28','2021-08-01 09:57:28');
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_views`
--

DROP TABLE IF EXISTS `t_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_title` (`title`),
  KEY `fk_self_parent_child` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_views`
--

LOCK TABLES `t_views` WRITE;
/*!40000 ALTER TABLE `t_views` DISABLE KEYS */;
INSERT INTO `t_views` VALUES (1,'Mostly Asked Technical Topics',114);
INSERT INTO `t_views` VALUES (2,'Backend',1);
INSERT INTO `t_views` VALUES (3,'Frontend',1);
INSERT INTO `t_views` VALUES (4,'Database',1);
INSERT INTO `t_views` VALUES (5,'DevOps/TeamLead',1);
INSERT INTO `t_views` VALUES (6,'Core Java',2);
INSERT INTO `t_views` VALUES (7,'J2EE',2);
INSERT INTO `t_views` VALUES (8,'Design Patterns',2);
INSERT INTO `t_views` VALUES (9,'API',2);
INSERT INTO `t_views` VALUES (10,'JDBC',7);
INSERT INTO `t_views` VALUES (11,'Servlets',7);
INSERT INTO `t_views` VALUES (12,'JSP',7);
INSERT INTO `t_views` VALUES (13,'JSTL',7);
INSERT INTO `t_views` VALUES (14,'Core Java Design Patterns',8);
INSERT INTO `t_views` VALUES (15,'J2EE Design Patterns',8);
INSERT INTO `t_views` VALUES (16,'Struts',9);
INSERT INTO `t_views` VALUES (17,'Hibernate',9);
INSERT INTO `t_views` VALUES (18,'Spring Boot',9);
INSERT INTO `t_views` VALUES (19,'Microservices',9);
INSERT INTO `t_views` VALUES (20,'Spring Batch',18);
INSERT INTO `t_views` VALUES (21,'AngularJS',3);
INSERT INTO `t_views` VALUES (22,'Angular',3);
INSERT INTO `t_views` VALUES (23,'ReactJS',3);
INSERT INTO `t_views` VALUES (24,'HTML',3);
INSERT INTO `t_views` VALUES (25,'CSS',3);
INSERT INTO `t_views` VALUES (26,'JavaScript',3);
INSERT INTO `t_views` VALUES (27,'NodeJS',3);
INSERT INTO `t_views` VALUES (28,'MySQL',4);
INSERT INTO `t_views` VALUES (29,'PostgreSQL',4);
INSERT INTO `t_views` VALUES (30,'Oracle',4);
INSERT INTO `t_views` VALUES (31,'SQLServer',4);
INSERT INTO `t_views` VALUES (32,'DB2',4);
INSERT INTO `t_views` VALUES (33,'AWS',5);
INSERT INTO `t_views` VALUES (34,'Jenkins',5);
INSERT INTO `t_views` VALUES (35,'Jira',5);
INSERT INTO `t_views` VALUES (36,'Version Control',5);
INSERT INTO `t_views` VALUES (37,'Deployment',5);
INSERT INTO `t_views` VALUES (38,'OS/File Transfer',5);
INSERT INTO `t_views` VALUES (39,'Other Programming Language',1);
INSERT INTO `t_views` VALUES (40,'Agile',5);
INSERT INTO `t_views` VALUES (41,'GIT',36);
INSERT INTO `t_views` VALUES (42,'SVN',36);
INSERT INTO `t_views` VALUES (43,'Tomcat',37);
INSERT INTO `t_views` VALUES (44,'Weblogic',37);
INSERT INTO `t_views` VALUES (45,'WebSphere',37);
INSERT INTO `t_views` VALUES (46,'Putty',38);
INSERT INTO `t_views` VALUES (47,'WinSCP',38);
INSERT INTO `t_views` VALUES (48,'Linux',38);
INSERT INTO `t_views` VALUES (49,'Windows',38);
INSERT INTO `t_views` VALUES (50,'Python',39);
INSERT INTO `t_views` VALUES (51,'Ruby',39);
INSERT INTO `t_views` VALUES (52,'Communication Skills',126);
INSERT INTO `t_views` VALUES (53,'Vocabulary Building',52);
INSERT INTO `t_views` VALUES (54,'OOPS Concept',6);
INSERT INTO `t_views` VALUES (55,'Enapsulation',54);
INSERT INTO `t_views` VALUES (56,'Abstraction',54);
INSERT INTO `t_views` VALUES (57,'Inheritance',54);
INSERT INTO `t_views` VALUES (58,'Polymorphism',54);
INSERT INTO `t_views` VALUES (59,'Multithreading',6);
INSERT INTO `t_views` VALUES (61,'Synchronization',6);
INSERT INTO `t_views` VALUES (62,'Collection',6);
INSERT INTO `t_views` VALUES (63,'English Grammar',52);
INSERT INTO `t_views` VALUES (68,'Spring Rest',18);
INSERT INTO `t_views` VALUES (69,'Spring Data',18);
INSERT INTO `t_views` VALUES (70,'Spring Jdbc',18);
INSERT INTO `t_views` VALUES (71,'Starting Threads',59);
INSERT INTO `t_views` VALUES (72,'Java 8 new features',6);
INSERT INTO `t_views` VALUES (73,'Lambda Expression',72);
INSERT INTO `t_views` VALUES (74,'Stream API',72);
INSERT INTO `t_views` VALUES (75,'DEFAULT methods IN the interface',72);
INSERT INTO `t_views` VALUES (76,'Functional Interface',72);
INSERT INTO `t_views` VALUES (77,'OPTIONAL',72);
INSERT INTO `t_views` VALUES (78,'Method REFERENCES',72);
INSERT INTO `t_views` VALUES (79,'DATE API',72);
INSERT INTO `t_views` VALUES (80,'Nashorn, JavaScript ENGINE',72);
INSERT INTO `t_views` VALUES (81,'Companies where I\'ve worked',95);
INSERT INTO `t_views` VALUES (82,'Greenapple webware',81);
INSERT INTO `t_views` VALUES (83,'HCL Infosystems',81);
INSERT INTO `t_views` VALUES (84,'Novelvox (Previously known as Integration Services & Technologies)',81);
INSERT INTO `t_views` VALUES (88,'Concentrix ( contractual, payroll-WDC )',81);
INSERT INTO `t_views` VALUES (89,'Concentrix ( permanent)',81);
INSERT INTO `t_views` VALUES (90,'Accenture ( permanent)',81);
INSERT INTO `t_views` VALUES (93,'Concentrix ( permanent, asst mgr)',81);
INSERT INTO `t_views` VALUES (94,'Indiabulls Securities Ltd ( previous, Indiabulls Ventures Ltd)',81);
INSERT INTO `t_views` VALUES (95,'Resume',114);
INSERT INTO `t_views` VALUES (96,'Projects I\'ve worked upon',95);
INSERT INTO `t_views` VALUES (97,'Student Information Management System ',96);
INSERT INTO `t_views` VALUES (98,'CIPRUS',96);
INSERT INTO `t_views` VALUES (99,'iAgent',96);
INSERT INTO `t_views` VALUES (100,'Survey',96);
INSERT INTO `t_views` VALUES (101,'KnowledgeBase',96);
INSERT INTO `t_views` VALUES (102,'webdots',96);
INSERT INTO `t_views` VALUES (103,'QAA',96);
INSERT INTO `t_views` VALUES (104,'eConvey',96);
INSERT INTO `t_views` VALUES (105,'ResolveJiffy',96);
INSERT INTO `t_views` VALUES (106,'ZVR4',96);
INSERT INTO `t_views` VALUES (107,'GainManager',96);
INSERT INTO `t_views` VALUES (108,'GIP (Global Interactive Program)',96);
INSERT INTO `t_views` VALUES (109,'ShubhWeb',96);
INSERT INTO `t_views` VALUES (110,'Notis',96);
INSERT INTO `t_views` VALUES (113,'Organize Life',NULL);
INSERT INTO `t_views` VALUES (114,'Interview Preparation',113);
INSERT INTO `t_views` VALUES (115,'Cleaning/Organizing Books, Pdf, Certificates, Code',113);
INSERT INTO `t_views` VALUES (116,'Jasper Reports',96);
INSERT INTO `t_views` VALUES (117,'Flex4',3);
INSERT INTO `t_views` VALUES (118,'HTML5',3);
INSERT INTO `t_views` VALUES (119,'CSS3',3);
INSERT INTO `t_views` VALUES (120,'MongoDB',4);
INSERT INTO `t_views` VALUES (121,'Neo4j',4);
INSERT INTO `t_views` VALUES (122,'Explore Alternative Opportunities for Earnng',113);
INSERT INTO `t_views` VALUES (123,'Share Market Trading',122);
INSERT INTO `t_views` VALUES (124,'Freelancing',122);
INSERT INTO `t_views` VALUES (125,'Online Teaching',122);
INSERT INTO `t_views` VALUES (126,'Self Development',113);
INSERT INTO `t_views` VALUES (127,'Exercise',126);
INSERT INTO `t_views` VALUES (128,'Push-ups',127);
INSERT INTO `t_views` VALUES (129,'Skipping',127);
INSERT INTO `t_views` VALUES (130,'Gym',127);
INSERT INTO `t_views` VALUES (131,'Back',130);
INSERT INTO `t_views` VALUES (132,'Shoulders',130);
INSERT INTO `t_views` VALUES (133,'Arms',130);
INSERT INTO `t_views` VALUES (134,'Legs',130);
INSERT INTO `t_views` VALUES (135,'Abdomen',130);
INSERT INTO `t_views` VALUES (136,'TypeScript',3);
/*!40000 ALTER TABLE `t_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'parent_child_relation_topics'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-01 21:17:19