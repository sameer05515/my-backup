-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: jtrac-mysql
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB

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
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `previous_id` bigint(20) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_prefix` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD3F3CBB0B57E4540` (`item_id`),
  KEY `FKD3F3CBB0761CC46C` (`previous_id`),
  CONSTRAINT `FKD3F3CBB0761CC46C` FOREIGN KEY (`previous_id`) REFERENCES `attachments` (`id`),
  CONSTRAINT `FKD3F3CBB0B57E4540` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `param` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`param`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `item_id` bigint(20) NOT NULL,
  `actual_effort` double DEFAULT NULL,
  `attachment_id` bigint(20) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `logged_by` bigint(20) NOT NULL,
  `assigned_to` bigint(20) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `severity` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `cus_dbl_01` double DEFAULT NULL,
  `cus_dbl_02` double DEFAULT NULL,
  `cus_dbl_03` double DEFAULT NULL,
  `cus_int_01` int(11) DEFAULT NULL,
  `cus_int_02` int(11) DEFAULT NULL,
  `cus_int_03` int(11) DEFAULT NULL,
  `cus_int_04` int(11) DEFAULT NULL,
  `cus_int_05` int(11) DEFAULT NULL,
  `cus_int_06` int(11) DEFAULT NULL,
  `cus_int_07` int(11) DEFAULT NULL,
  `cus_int_08` int(11) DEFAULT NULL,
  `cus_int_09` int(11) DEFAULT NULL,
  `cus_int_10` int(11) DEFAULT NULL,
  `cus_str_01` varchar(255) DEFAULT NULL,
  `cus_str_02` varchar(255) DEFAULT NULL,
  `cus_str_03` varchar(255) DEFAULT NULL,
  `cus_str_04` varchar(255) DEFAULT NULL,
  `cus_str_05` varchar(255) DEFAULT NULL,
  `cus_tim_01` datetime DEFAULT NULL,
  `cus_tim_02` datetime DEFAULT NULL,
  `cus_tim_03` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK373FE494CD057065` (`logged_by`),
  KEY `FK373FE494B57E4540` (`item_id`),
  KEY `FK373FE494584066C0` (`attachment_id`),
  KEY `FK373FE4949F34E6BD` (`assigned_to`),
  CONSTRAINT `FK373FE494584066C0` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`),
  CONSTRAINT `FK373FE4949F34E6BD` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`),
  CONSTRAINT `FK373FE494B57E4540` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK373FE494CD057065` FOREIGN KEY (`logged_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_items`
--

DROP TABLE IF EXISTS `item_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL,
  `related_item_id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8B19EB94B57E4540` (`item_id`),
  KEY `FK8B19EB94AF302D2C` (`related_item_id`),
  CONSTRAINT `FK8B19EB94AF302D2C` FOREIGN KEY (`related_item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK8B19EB94B57E4540` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_items`
--

LOCK TABLES `item_items` WRITE;
/*!40000 ALTER TABLE `item_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_tags`
--

DROP TABLE IF EXISTS `item_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK806065C5B57E4540` (`item_id`),
  KEY `FK806065C5AC3A5E54` (`tag_id`),
  CONSTRAINT `FK806065C5AC3A5E54` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `FK806065C5B57E4540` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_tags`
--

LOCK TABLES `item_tags` WRITE;
/*!40000 ALTER TABLE `item_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_users`
--

DROP TABLE IF EXISTS `item_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8BC291DC2E9BEA40` (`user_id`),
  KEY `FK8BC291DCB57E4540` (`item_id`),
  CONSTRAINT `FK8BC291DC2E9BEA40` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK8BC291DCB57E4540` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_users`
--

LOCK TABLES `item_users` WRITE;
/*!40000 ALTER TABLE `item_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `space_id` bigint(20) NOT NULL,
  `sequence_num` bigint(20) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `planned_effort` double DEFAULT NULL,
  `logged_by` bigint(20) NOT NULL,
  `assigned_to` bigint(20) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `severity` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `cus_dbl_01` double DEFAULT NULL,
  `cus_dbl_02` double DEFAULT NULL,
  `cus_dbl_03` double DEFAULT NULL,
  `cus_int_01` int(11) DEFAULT NULL,
  `cus_int_02` int(11) DEFAULT NULL,
  `cus_int_03` int(11) DEFAULT NULL,
  `cus_int_04` int(11) DEFAULT NULL,
  `cus_int_05` int(11) DEFAULT NULL,
  `cus_int_06` int(11) DEFAULT NULL,
  `cus_int_07` int(11) DEFAULT NULL,
  `cus_int_08` int(11) DEFAULT NULL,
  `cus_int_09` int(11) DEFAULT NULL,
  `cus_int_10` int(11) DEFAULT NULL,
  `cus_str_01` varchar(255) DEFAULT NULL,
  `cus_str_02` varchar(255) DEFAULT NULL,
  `cus_str_03` varchar(255) DEFAULT NULL,
  `cus_str_04` varchar(255) DEFAULT NULL,
  `cus_str_05` varchar(255) DEFAULT NULL,
  `cus_tim_01` datetime DEFAULT NULL,
  `cus_tim_02` datetime DEFAULT NULL,
  `cus_tim_03` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5FDE7C0CD057065` (`logged_by`),
  KEY `FK5FDE7C0B2C23C49` (`parent_id`),
  KEY `FK5FDE7C02EAA8854` (`space_id`),
  KEY `FK5FDE7C09F34E6BD` (`assigned_to`),
  CONSTRAINT `FK5FDE7C02EAA8854` FOREIGN KEY (`space_id`) REFERENCES `spaces` (`id`),
  CONSTRAINT `FK5FDE7C09F34E6BD` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`),
  CONSTRAINT `FK5FDE7C0B2C23C49` FOREIGN KEY (`parent_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK5FDE7C0CD057065` FOREIGN KEY (`logged_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata`
--

DROP TABLE IF EXISTS `metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `xml_string` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE52D7B2FD9D39965` (`parent_id`),
  CONSTRAINT `FKE52D7B2FD9D39965` FOREIGN KEY (`parent_id`) REFERENCES `metadata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata`
--

LOCK TABLES `metadata` WRITE;
/*!40000 ALTER TABLE `metadata` DISABLE KEYS */;
INSERT INTO `metadata` VALUES (1,2,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<metadata><fields><field name=\"severity\" label=\"Status\"><option value=\"1\">In-Progress</option><option value=\"2\">Open</option><option value=\"3\">Work-In-Progress</option><option value=\"4\">On-Hold</option><option value=\"5\">Done</option><option value=\"6\">Reopen</option></field><field name=\"priority\" label=\"Priority\"><option value=\"1\">Highest-1</option><option value=\"2\">High-2</option><option value=\"3\">Medium-3</option><option value=\"4\">Low-4</option><option value=\"5\">Lowest-5</option></field><field name=\"cusInt01\" label=\"Assignee\"><option value=\"1\">Self</option><option value=\"2\">B.Vaishya</option></field><field name=\"cusInt02\" label=\"AssignedTo\"><option value=\"1\">Self</option></field><field name=\"cusInt03\" label=\"TaskGroup\"><option value=\"1\">Self-Assigned</option><option value=\"2\">Code-Review-Release-Mgmt</option><option value=\"3\">Shubh-Web-BOR-Jar</option><option value=\"4\">Notic-KRA-KUA</option><option value=\"5\">Shubh-Web-Login-TR</option><option value=\"6\">Mandatory-Training</option><option value=\"7\">INET-Request</option><option value=\"8\">API-Testing</option><option value=\"9\">Notic-New-Requirement</option><option value=\"10\">Notic-Bug-Fix</option><option value=\"11\">KRA-SFTP-CODE-Configuration</option></field><field name=\"cusStr01\" label=\"TaskDescription\"/><field name=\"cusStr02\" label=\"History\"/><field name=\"cusStr03\" label=\"StepsOrRequirement\"/><field name=\"cusStr04\" label=\"Remarks\"/><field name=\"cusTim01\" label=\"TaskAssignedDate\"/><field-order><field name=\"cusTim01\"/><field name=\"cusInt01\"/><field name=\"cusInt02\"/><field name=\"cusInt03\"/><field name=\"cusStr01\"/><field name=\"cusStr02\"/><field name=\"cusStr03\"/><field name=\"severity\"/><field name=\"cusStr04\"/><field name=\"priority\"/></field-order></fields><roles><role name=\"DEFAULT\"><state status=\"0\"><transition status=\"1\"/><field name=\"cusInt01\" mask=\"3\"/><field name=\"cusInt03\" mask=\"3\"/><field name=\"cusStr03\" mask=\"3\"/><field name=\"priority\" mask=\"3\"/><field name=\"severity\" mask=\"3\"/><field name=\"cusTim01\" mask=\"3\"/><field name=\"cusStr01\" mask=\"3\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"3\"/><field name=\"cusStr02\" mask=\"3\"/></state><state status=\"1\"><transition status=\"1\"/><transition status=\"99\"/><field name=\"cusInt01\" mask=\"2\"/><field name=\"cusInt03\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"severity\" mask=\"1\"/><field name=\"cusTim01\" mask=\"1\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr02\" mask=\"3\"/></state><state status=\"99\"><transition status=\"1\"/><field name=\"cusInt01\" mask=\"2\"/><field name=\"cusInt03\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"severity\" mask=\"1\"/><field name=\"cusTim01\" mask=\"1\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr02\" mask=\"3\"/></state></role></roles><states><state status=\"0\" label=\"New\"/><state status=\"1\" label=\"Open\"/><state status=\"99\" label=\"Closed\"/></states></metadata>');
INSERT INTO `metadata` VALUES (2,2,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<metadata><fields><field name=\"severity\" label=\"Status\"><option value=\"1\">In-Progress</option><option value=\"2\">Open</option><option value=\"3\">Work-In-Progress</option><option value=\"4\">On-Hold</option><option value=\"5\">Done</option><option value=\"6\">Reopen</option></field><field name=\"priority\" label=\"Priority\"><option value=\"1\">Highest-1</option><option value=\"2\">High-2</option><option value=\"3\">Medium-3</option><option value=\"4\">Low-4</option><option value=\"5\">Lowest-5</option></field><field name=\"cusInt01\" label=\"Assignee\"><option value=\"1\">Self</option><option value=\"2\">B. Prasad</option><option value=\"3\">V Gupta</option></field><field name=\"cusInt02\" label=\"AssignedTo\"><option value=\"1\">Self</option></field><field name=\"cusInt03\" label=\"TaskGroup\"><option value=\"1\">Self-Assigned</option><option value=\"2\">Code-Review-Release-Mgmt</option><option value=\"3\">Shubh-Web-BOR-Jar</option><option value=\"4\">Notic-KRA-KUA</option><option value=\"5\">Shubh-Web-Login-TR</option><option value=\"6\">Mandatory-Training</option><option value=\"7\">INET-Request</option><option value=\"8\">API-Testing</option><option value=\"9\">Notic-New-Requirement</option><option value=\"10\">Notic-Bug-Fix</option><option value=\"11\">KRA-SFTP-CODE-Configuration</option></field><field name=\"cusStr01\" label=\"TaskDescription\"/><field name=\"cusStr02\" label=\"History\"/><field name=\"cusStr03\" label=\"StepsOrRequirement\"/><field name=\"cusStr04\" label=\"Remarks\"/><field name=\"cusTim01\" label=\"TaskAssignedDate\"/><field-order><field name=\"cusTim01\"/><field name=\"cusInt01\"/><field name=\"cusInt02\"/><field name=\"cusInt03\"/><field name=\"cusStr01\"/><field name=\"cusStr02\"/><field name=\"cusStr03\"/><field name=\"severity\"/><field name=\"cusStr04\"/><field name=\"priority\"/></field-order></fields><roles><role name=\"DEFAULT\"><state status=\"0\"><transition status=\"1\"/><field name=\"cusInt01\" mask=\"3\"/><field name=\"cusInt03\" mask=\"3\"/><field name=\"cusStr03\" mask=\"3\"/><field name=\"priority\" mask=\"3\"/><field name=\"severity\" mask=\"3\"/><field name=\"cusTim01\" mask=\"3\"/><field name=\"cusStr01\" mask=\"3\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"3\"/><field name=\"cusStr02\" mask=\"3\"/></state><state status=\"1\"><transition status=\"1\"/><transition status=\"99\"/><field name=\"cusInt01\" mask=\"1\"/><field name=\"cusInt03\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"severity\" mask=\"1\"/><field name=\"cusTim01\" mask=\"1\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr02\" mask=\"3\"/></state><state status=\"99\"><transition status=\"1\"/><field name=\"cusInt01\" mask=\"1\"/><field name=\"cusInt03\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"severity\" mask=\"1\"/><field name=\"cusTim01\" mask=\"1\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr02\" mask=\"3\"/></state></role></roles><states><state status=\"0\" label=\"New\"/><state status=\"1\" label=\"Open\"/><state status=\"99\" label=\"Closed\"/></states></metadata>');
/*!40000 ALTER TABLE `metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `space_sequence`
--

DROP TABLE IF EXISTS `space_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `space_sequence` (
  `id` bigint(20) NOT NULL,
  `next_seq_num` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5847EDAB4A0FA7B` (`id`),
  CONSTRAINT `FK5847EDAB4A0FA7B` FOREIGN KEY (`id`) REFERENCES `spaces` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `space_sequence`
--

LOCK TABLES `space_sequence` WRITE;
/*!40000 ALTER TABLE `space_sequence` DISABLE KEYS */;
INSERT INTO `space_sequence` VALUES (1,1);
INSERT INTO `space_sequence` VALUES (2,1);
/*!40000 ALTER TABLE `space_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spaces`
--

DROP TABLE IF EXISTS `spaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spaces` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `prefix_code` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `guest_allowed` bit(1) DEFAULT NULL,
  `metadata_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prefix_code` (`prefix_code`),
  KEY `FKCA95302D6205CC0` (`metadata_id`),
  CONSTRAINT `FKCA95302D6205CC0` FOREIGN KEY (`metadata_id`) REFERENCES `metadata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spaces`
--

LOCK TABLES `spaces` WRITE;
/*!40000 ALTER TABLE `spaces` DISABLE KEYS */;
INSERT INTO `spaces` VALUES (1,1,NULL,'OTASK','OTASK','Ofc TASK','\0',1);
INSERT INTO `spaces` VALUES (2,0,NULL,'HTASK','HTASK','Hm Task','\0',2);
/*!40000 ALTER TABLE `spaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_space_roles`
--

DROP TABLE IF EXISTS `user_space_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_space_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `space_id` bigint(20) DEFAULT NULL,
  `role_key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK474D77D02E9BEA40` (`user_id`),
  KEY `FK474D77D02EAA8854` (`space_id`),
  CONSTRAINT `FK474D77D02E9BEA40` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK474D77D02EAA8854` FOREIGN KEY (`space_id`) REFERENCES `spaces` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_space_roles`
--

LOCK TABLES `user_space_roles` WRITE;
/*!40000 ALTER TABLE `user_space_roles` DISABLE KEYS */;
INSERT INTO `user_space_roles` VALUES (1,1,NULL,'ROLE_ADMIN');
INSERT INTO `user_space_roles` VALUES (2,1,1,'DEFAULT');
INSERT INTO `user_space_roles` VALUES (3,1,2,'DEFAULT');
/*!40000 ALTER TABLE `user_space_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `login_name` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `metadata_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name` (`login_name`),
  KEY `FK6A68E08FC0C04DB` (`parent`),
  KEY `FK6A68E086205CC0` (`metadata_id`),
  CONSTRAINT `FK6A68E086205CC0` FOREIGN KEY (`metadata_id`) REFERENCES `metadata` (`id`),
  CONSTRAINT `FK6A68E08FC0C04DB` FOREIGN KEY (`parent`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,'admin','Admin','21232f297a57a5a743894a0e4a801fc3','admin',NULL,'\0',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'jtrac-mysql'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 19:26:42
