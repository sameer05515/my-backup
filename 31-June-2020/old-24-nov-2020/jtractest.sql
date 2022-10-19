-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: jtractest
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('session.timeout','6000');
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
  `comment` text,
  `time_stamp` datetime DEFAULT NULL,
  `logged_by` bigint(20) NOT NULL,
  `assigned_to` bigint(20) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `detail` text,
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
  `cus_text_01` varchar(255) DEFAULT NULL,
  `cus_text_02` varchar(255) DEFAULT NULL,
  `cus_text_03` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK373FE494CD057065` (`logged_by`),
  KEY `FK373FE494B57E4540` (`item_id`),
  KEY `FK373FE494584066C0` (`attachment_id`),
  KEY `FK373FE4949F34E6BD` (`assigned_to`),
  CONSTRAINT `FK373FE494584066C0` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`),
  CONSTRAINT `FK373FE4949F34E6BD` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`),
  CONSTRAINT `FK373FE494B57E4540` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK373FE494CD057065` FOREIGN KEY (`logged_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,0,NULL,1,NULL,NULL,NULL,'2018-08-08 14:46:13',1,1,'Read \"DA Vinci Code\" novel and collect words, phrases','Read \"DA Vinci Code\" novel and collect words, phrases',1,3,3,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (2,0,NULL,1,NULL,NULL,'Plan to do this task.\r\nSchedule daily 20 minutes to read book, collect tough words, tough phrases and my doubts.','2018-08-08 14:53:41',1,1,NULL,NULL,2,2,2,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not learn new words.','Schedule daily 20 minutes to read book, collect tough words, tough phrases and my doubts.','I will learn new words, phrases. I will gain confidence and self satisfaction.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (3,0,NULL,2,NULL,NULL,NULL,'2018-08-08 15:03:50',1,1,'Listen and Learn \"Working with EJB3 (EJB Tutorial Part 1).mp4\"','Listen and Learn \"Working with EJB3 (EJB Tutorial Part 1).mp4\"',1,2,3,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to answer in interview.','Listen video and then make notes. Do some test program exercise','I will know about EJB and be able to answer EJB Interview questions.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (4,0,NULL,2,NULL,NULL,'Plan to do this task\r\nListen video and then make notes.\r\nDo some test program exercise','2018-08-08 15:04:27',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (5,0,NULL,3,NULL,NULL,NULL,'2018-08-09 14:24:20',1,1,'How to edit values of one item in a list/array, in javascript.','Scenario :- I have list of all categories and in that category, there are several questions. If I am reading one question, using given \"Read\" button, the \"last read on\" date should be updated post successful read response from database.\r\n\r\nHence post read button click the last read on date should be updated.',1,5,4,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'The list will not show actual last read on date.','1) check on google \"How to edit a particular value in a given javascript array/list?\"','1) New learning in javascript. 2) Same concept can be used in other project, to show updated values in single page without refresh.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (6,0,NULL,3,NULL,NULL,'Changing category and sub-category.','2018-08-09 14:54:00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (7,0,NULL,4,NULL,NULL,NULL,'2018-08-09 14:59:17',1,1,'Add Read button and its functionality in Questions, in category list page.','1. Add \"Read\" button in front end\r\n2. Add read_on column and add read_history table.\r\n3. Add service to update read_on for given column and add its reading history',1,2,3,NULL,NULL,NULL,4,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to track how many question I have read a particular day.','Add column, read history table and service code','Question learning and reading history will be traceable',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (8,0,NULL,5,NULL,NULL,NULL,'2018-08-10 21:17:38',1,1,'Create one page for :- Show Plan for given id','Create one page for :- Show Plan for given id\r\n1. Create view page for show plan, its steps and sub-steps\r\n2. create controller for above view',1,3,4,NULL,NULL,NULL,4,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to execute and track big projects.','Create view and controller for the requirement using angularjs and REST','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (9,0,NULL,6,NULL,NULL,NULL,'2018-08-10 22:15:18',1,1,'Change Test Tomcat port from 8888 to 9999','Change Test Tomcat port from 8888 to 9999\r\n1. Change port to 9999 in server.xml\r\n2. Change other ports accordingly, change 10th place number to \'9\' , for uniformity.\r\n3. Take sanity check , by running both test and pro servers.',1,2,1,NULL,NULL,NULL,4,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not able to do prod and development works simultaneously','Change Test Tomcat port from 8888 to 9999 - detail plan description','I will able to do prod and development works simultaneously',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (10,0,NULL,6,NULL,NULL,'port is changed in server.xml. Sanity check is yet to be done.','2018-08-10 22:16:18',1,1,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (11,0,NULL,7,NULL,NULL,NULL,'2018-08-10 22:47:35',1,1,'Topic to be searched with its unique string name','Topic to be searched with its unique string name\r\n1) Associate one unique name with each topic.\r\n2) Search unique string and then find id in table for that topic.\r\n3) return found searched topic, else send error response',1,3,4,NULL,NULL,NULL,4,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1) id not reliable, if data copied to some other db. 2) db migration will not reliable without unique string','Plan shared in description','1) New learning in javascript. 2) Same concept can be used in other project, to show updated values in single page without refresh.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (12,0,NULL,8,NULL,NULL,NULL,'2018-08-10 23:09:00',1,1,'Read \"Spring Data - Modern Data Access for Enterprise Java .pdf\"','Read \"Spring Data - Modern Data Access for Enterprise Java .pdf\"\r\n\r\nPlan - Daily 30 minutes',1,2,4,NULL,NULL,NULL,5,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to answer in interview.','Plan - Daily 30 minutes','I will know about Spring Data and be able to answer Spring Data Interview questions.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (13,0,NULL,9,NULL,NULL,NULL,'2018-08-10 23:23:08',1,1,'Study video and pdf for project planning','Study video and pdf for project planning',1,2,4,NULL,NULL,NULL,5,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'It is now requirement for my TL position','steps to be identified','would be able to answer TL level questions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (14,0,NULL,10,NULL,NULL,NULL,'2018-08-10 23:26:36',1,1,'read all steps in \"https://github.com/in28minutes/SpringBootForBeginners\"','read all steps in \"https://github.com/in28minutes/SpringBootForBeginners\"\r\n\r\nPlan : \r\n1) 60 minutes in a week, 3 splits; 20 mins each',1,3,4,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'to be decided','steps to be identified','will learn spring boot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (15,0,NULL,11,NULL,NULL,NULL,'2018-08-10 23:39:24',1,1,'Take daily backup of Jtrac Database in evening','1. Take daily backup of Jtrac Database in evening @11 PM\r\n2. Push it to google drive',1,2,2,NULL,NULL,NULL,6,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I might loose data','steps to be identified','I will be in safer side in case of any data-system falure',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (16,0,NULL,3,NULL,NULL,'Searched on google. It seems very good question. Till the time I found below results\r\n1 \"How to change value of object which is inside an array using JavaScript or jQuery?\"\r\n2. \"https://stackoverflow.com/questions/4689856/how-to-change-value-of-object-which-is-inside-an-array-using-javascript-or-jquer\"','2018-08-10 23:48:56',1,1,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (17,0,NULL,12,NULL,NULL,NULL,'2018-08-11 09:20:31',1,1,'Add unique string id for topic/view/group same for Category /Questions','Add unique string id for topic/view/group\r\nsame for Category /Questions',1,2,2,NULL,NULL,NULL,4,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'i will not able to port data from one db to another','steps to be identified','i will able to port data from one db to another',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (18,0,NULL,12,NULL,NULL,'Important so that data can be exported and imported with minimal change\r\n\r\nIt is important as my tagging to different topics groups relation and export/import is being delayed and impacted due to this.\r\n\r\nIt is also important so that I could divide and manage my long term tasks into small 20 minutes each day goals. Also I could export, import, port and save my data from one system to another system.\r\n\r\nThis is required\r\n1. when moving an update in a topic\r\n2. check for updated date, and show difference between existing value and newly coming value same as windows copy file','2018-08-11 09:21:04',1,1,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (19,0,NULL,13,NULL,NULL,NULL,'2018-08-12 10:34:07',1,1,'MongoDB - Project Fields to Return from Query','return only selected fields',1,3,4,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not learn how to send particular fields','steps to be identified','I will learn how to send particular fields',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (20,0,NULL,13,NULL,NULL,'<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<em><strong>My tasks</strong></em></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<em><strong>target date</strong></em></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<em><strong>Identify current routine</strong></em></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<em><strong>18-Aug-2018</strong></em></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<em><strong>Identify unuseful tasks</strong></em></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<em><strong>22-aug-2018</strong></em></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<em><strong>Replace unuseful steps with new fruitful steps</strong></em></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<em><strong>28-Aug-2018</strong></em></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<em><strong>Follow new routine</strong></em></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<em><strong>31-Aug-2018</strong></em></pre>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>','2018-08-12 11:07:37',1,NULL,NULL,NULL,NULL,3,4,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not learn how to send particular fields','steps to be identified','I will learn how to send particular fields',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (21,0,NULL,14,NULL,NULL,NULL,'2018-08-12 14:31:45',1,1,'Topic Management :- Logging message to make proper','<p>Topic Management :- Logging message to make proper</p>\r\n\r\n<ol>\r\n	<li>Currently all messages are only related with Zetta coching , it should be make accordingly.</li>\r\n</ol>',1,3,4,NULL,NULL,NULL,4,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'It would be difficult to analyse the logs and provide resolution in case of any issue','steps to be identified','Log analysis and resolution provide would be easy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (22,0,NULL,15,NULL,NULL,NULL,'2018-08-12 14:36:23',1,1,'Collate all view pages of Topic Management, Interview Management, Word meaning UI to one view application','<p>Collate all view pages of Topic Management, Interview Management, Word meaning UI to one view application</p>\r\n\r\n<ol>\r\n	<li>Collate all application pages in one application and make it one application.</li>\r\n</ol>',1,3,3,NULL,NULL,NULL,4,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Without this application collate would be difficult','steps to be identified','It would be easy to manage development of all application in one-go',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (23,0,NULL,16,NULL,NULL,NULL,'2018-08-12 15:01:55',1,1,'Identify new projects created in office laptop and commit them on GitHub','<p>Identify new projects created in office laptop and commit them on GitHub</p>\r\n\r\n<ol>\r\n	<li>Identify new projects created in office laptop</li>\r\n	<li>Identify any update done in existing projects.</li>\r\n	<li>commit them on GitHub</li>\r\n</ol>',1,2,1,NULL,NULL,NULL,6,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I may loose any update done in case of job change or system crash','steps to be identified','I would be in safe position',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (24,0,NULL,17,NULL,NULL,NULL,'2018-08-12 15:10:00',1,1,'Create one page, where all scheduled tasks can be entered.','<p>Create one page, where all scheduled tasks can be entered.</p>',1,2,2,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to execute and track big projects.','steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (25,0,NULL,17,NULL,NULL,'<ol>\r\n	<li>Take backup of mysql dbs, postgresql dbs, mongodbs and push them on google drive.</li>\r\n</ol>','2018-08-12 15:12:45',1,NULL,NULL,NULL,NULL,2,2,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to execute and track big projects.','steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (26,0,NULL,6,NULL,NULL,'<p>POC for&nbsp;<strong>topic-management</strong> and&nbsp;<strong>word-meaning-gui&nbsp;</strong>is done and positive.</p>\r\n\r\n<p>POC for some other application is pending</p>','2018-08-12 15:15:41',1,1,NULL,NULL,3,2,1,NULL,NULL,NULL,4,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not able to do prod and development works simultaneously','Change Test Tomcat port from 8888 to 9999 - detail plan description','I will able to do prod and development works simultaneously',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (27,0,NULL,16,NULL,NULL,'<p>2 projects identified and commited</p>\r\n\r\n<ul>\r\n	<li><strong>spring-boot-jdbc-example</strong> -&nbsp;https://github.com/premendrakumar/spring-boot-jdbc-example</li>\r\n	<li><strong>word-meaning-mongodb-services</strong>&nbsp;-&nbsp;https://github.com/premendrakumar/word-meaning-mongodb-services</li>\r\n</ul>','2018-08-12 17:41:24',1,1,NULL,NULL,2,2,1,NULL,NULL,NULL,6,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I may loose any update done in case of job change or system crash','steps to be identified','I would be in safe position',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (28,0,NULL,11,NULL,NULL,'Take daily backup of Interview Mgmt, Topic Mgmt, Word Meaning, Jtrac Database in evening','2018-08-12 17:50:03',1,NULL,'Take daily backup of Interview Mgmt, Topic Mgmt, Word Meaning, Jtrac Database in evening','<p>1. Take daily backup of Jtrac Database in evening @11 PM 2. Push it to google drive</p>',NULL,2,2,NULL,NULL,NULL,6,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I might loose data','steps to be identified','I will be in safer side in case of any data-system falure',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (29,0,NULL,11,NULL,NULL,NULL,'2018-08-12 17:52:03',1,1,NULL,NULL,2,2,2,NULL,NULL,NULL,6,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I might loose data','steps to be identified','I will be in safer side in case of any data-system falure',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (30,0,NULL,11,NULL,NULL,NULL,'2018-08-12 17:54:07',1,1,NULL,NULL,2,2,2,NULL,NULL,NULL,6,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I might loose data','steps to be identified','I will be in safer side in case of any data-system falure',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (31,0,NULL,18,NULL,NULL,NULL,'2018-08-12 19:52:44',1,1,'MP3Player2.5 :- Developments and Enhancements',NULL,1,2,2,NULL,NULL,NULL,4,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'This project pending from last 7 years','steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (32,0,NULL,18,NULL,NULL,'1. Separate the view code to the player running code. --- seems ok ,\r\n	 * checking for any discrepency and suitable action will take place if found\r\n	 * something wrong\r\n	 * \r\n	 * 2. Save the playlist in xml format and try to encrypt it and run with the\r\n	 * given saved file.\r\n	 * \r\n	 * 3. make some attractive GUI\r\n	 * \r\n	 * 4. highlight the currently playing song\r\n	 * \r\n	 * 5. some keyEventListeners to display the songs of currently playing songs\r\n	 * {similar functionality as that exists in notepad++}','2018-08-12 19:58:43',1,1,NULL,NULL,2,2,2,NULL,NULL,NULL,4,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'This project pending from last 7 years','steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (33,0,NULL,18,NULL,NULL,'One alternative way found for making one music player .\r\n\r\nThis is to use javafx MediaPlayer class.','2018-08-12 22:18:28',1,1,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (34,0,NULL,19,NULL,NULL,NULL,'2018-08-15 14:22:40',1,1,'Neo4j - Learning','Neo4j - Learning',1,3,2,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to answer in interview.','steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (35,0,NULL,19,NULL,NULL,'Downloaded server. Studying...','2018-08-15 14:25:27',1,1,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (36,0,NULL,19,NULL,NULL,'Learnt basic CQL syntax to create node and create relationship.\r\n\r\nCreated basic \"Person\" node and establised \"FATHER_OF\" AND \"WIFE_OF\" AND \"HUSBAND_OF\" relationship.\r\n\r\nPlanning to create one application where new node and few relations created. And basis of one relationship established, other relations get auto-calculated.','2018-08-15 22:46:01',1,1,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (37,0,NULL,11,NULL,NULL,'DB Backup to be taken as earliest. Also make some process/program to automate db backup process.','2018-08-15 23:37:50',1,1,NULL,NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (38,0,NULL,20,NULL,NULL,NULL,'2018-08-15 23:40:44',1,1,'Neo4j - Learning - Read \"https://neo4j.com/docs/pdf/neo4j-developer-manual-3.4-java.pdf\"','Neo4j - Learning - Read \"https://neo4j.com/docs/pdf/neo4j-developer-manual-3.4-java.pdf\"',1,2,4,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to answer in interview.','steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (39,0,NULL,21,NULL,NULL,NULL,'2018-08-16 06:23:41',1,1,'My Oaths - I will do gym','My Oaths - I will do gym',1,1,1,NULL,NULL,NULL,7,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to get peace in life','steps to be identified','I will feel peace',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (40,0,NULL,22,NULL,NULL,NULL,'2018-08-16 06:27:07',1,1,'My Oaths - I will prepare for Interview','My Oaths - I will prepare for Interview\r\n1. I will remember 10 interview questions daily.\r\n2. I will learn 10 english words daily.\r\n3. I will practice programming skills 3 times in week.\r\n4. I will learn management books 2 times in week.',1,1,1,NULL,NULL,NULL,7,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to get peace in life','steps to be identified','I will feel peace',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (41,0,NULL,23,NULL,NULL,NULL,'2018-08-16 10:00:19',1,1,'Study \"Java Exception Discussion Questions and Answers\" \"http://127.0.0.1:8888/interview-mgmt-gui/#/categories/19\"','Study \"Java Exception Discussion Questions and Answers\" \r\n\r\n\"http://127.0.0.1:8888/interview-mgmt-gui/#/categories/19\"',1,2,2,NULL,NULL,NULL,7,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to answer in interview.','steps to be identified','I will feel peace',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (42,0,NULL,24,NULL,NULL,NULL,'2018-08-19 15:05:00',1,1,'Topic Management :- Make single page, to create all categories, and questions and their answers.','Topic Management :- Make single page, to create all categories, and questions and their answers.\r\n1. Show all categories in left side.\r\n2. on selection, show the selected question and all its answers. \r\n3. Every category, question and answer must have to be created, updated, deleted from same page.\r\n4. one up and down button to alter sequence of question within category.\r\n5. Drag and drop feature to change category for a question.\r\n6. In future, drag and drop feature for category to make it sub-category of another one , w.r.to a given view.',1,2,3,NULL,NULL,NULL,4,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'This project pending from last 5 years','few steps given in description. rest of steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (43,0,NULL,25,NULL,NULL,NULL,'2020-08-08 23:42:41',1,1,'Design Home page of BCE-GUI','1. Refer http://www.javavillage.in/index.php site home page.\r\n2. This site also uses Bootstrap.\r\n3. Create similar home page of http://127.0.0.1:8080/bce-gui/#/\r\n4. Commit code on GIT\r\n5. Remove/Reduce drop-down menu',1,3,3,NULL,NULL,NULL,4,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site will look ugly','Plan described in detail','Site will be more interactive',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (44,0,NULL,25,NULL,NULL,'Site beautification in progress','2020-08-08 23:43:47',1,1,NULL,NULL,2,3,3,NULL,NULL,NULL,4,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (45,0,NULL,26,NULL,NULL,NULL,'2020-08-09 18:39:54',1,1,'All AngularJS Projects - Put all http methods in services','All AngularJS Projects - Put all http methods in services\r\n1. Identify all http services in bce-gui project\r\n2. Put them in respective Service.js \r\n3. Update code accordingly to newly created Service.js',1,3,3,NULL,NULL,NULL,4,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site will hard to resused','Plan described in detail','Site will be more developer-friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (46,0,NULL,25,NULL,NULL,'Updated code and committed it in GIT.','2020-08-09 18:48:24',1,1,NULL,NULL,99,3,3,NULL,NULL,NULL,4,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (47,0,NULL,27,NULL,NULL,NULL,'2020-08-09 18:55:54',1,1,'All AngularJS Projects - Login Screen and Session implementation in BCE GUI','All AngularJS Projects - Login Screen and Session implementation in BCE GUI\r\n1. Explore Angularjs way\r\n2. Explore Spring Boot Security way',1,3,3,NULL,NULL,NULL,5,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site will hard to resused','Plan described in detail','Site will be more user and developer-friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (48,0,NULL,27,NULL,NULL,'Working for exploration','2020-08-09 18:56:24',1,1,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (49,0,NULL,26,NULL,NULL,'Working as per Detail','2020-08-09 18:57:39',1,1,NULL,NULL,2,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (50,0,NULL,28,NULL,NULL,NULL,'2020-08-11 12:02:05',1,1,'MASTER-TICKET-All AngularJS Projects - Optimize Frontend AngularJS code.','MASTER-TICKET-All AngularJS Projects - Optimize Frontend AngularJS code.\r\n1. Put all http methods in Services\r\n2. Put global values in central Constants\r\n3. View, Add, Edit, Delete , Relate-To-Other-Components in same page\r\n3.1 Make custom directives/ templates',1,3,3,NULL,NULL,NULL,5,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site will look ugly','Plan described in detail','Site will be more user and developer-friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (51,0,NULL,28,NULL,NULL,'Added new point\r\n3.2 Edit In Place Content Editing','2020-08-11 12:06:50',1,NULL,'MASTER-TICKET-All AngularJS Projects - Optimize Frontend AngularJS code.','MASTER-TICKET-All AngularJS Projects - Optimize Frontend AngularJS code.\r\n1. Put all http methods in Services\r\n2. Put global values in central Constants\r\n3. View, Add, Edit, Delete , Relate-To-Other-Components in same page\r\n3.1 Make custom directives/ templates\r\n3.2 Edit In Place Content Editing',NULL,3,3,NULL,NULL,NULL,5,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site will look ugly','Plan described in detail','Site will be more user and developer-friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (52,0,NULL,28,NULL,NULL,'TASKS-26 is part of TASKS-28','2020-08-11 12:15:53',1,NULL,'MASTER-TICKET-All AngularJS Projects - Optimize Frontend AngularJS code.','MASTER-TICKET-All AngularJS Projects - Optimize Frontend AngularJS code.\r\n1. Put all http methods in Services\r\n2. Put global values in central Constants\r\n3. View, Add, Edit, Delete , Relate-To-Other-Components in same page\r\n3.1 Make custom directives/ templates\r\n3.2 Edit In Place Content Editing',NULL,3,3,NULL,NULL,NULL,5,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site will look ugly','Plan described in detail','Site will be more user and developer-friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (53,0,NULL,15,NULL,NULL,'Mentioned view-pages collated','2020-08-11 12:20:08',1,1,NULL,NULL,99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (54,0,NULL,22,NULL,NULL,'Making ticket as Master-Ticket\r\n\r\nAdded Objective','2020-08-11 12:25:08',1,NULL,'MASTER-TICKET-My Oaths - I will prepare for Interview','My Oaths - I will prepare for Interview\r\n1. I will remember 10 interview questions daily.\r\n2. I will learn 10 english words daily.\r\n3. I will practice programming skills 3 times in week.\r\n4. I will learn management books 2 times in week.\r\n\r\nObjective\r\n1. Prioritize, Prepare topics as mentioned in Resume\r\n2. Preparation for Communication Skills',NULL,1,1,NULL,NULL,NULL,7,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to get peace in life','steps to be identified','I will feel peace',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history` VALUES (55,0,NULL,6,NULL,NULL,'Activity completed','2020-08-11 12:28:05',1,1,NULL,NULL,99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_items`
--

LOCK TABLES `item_items` WRITE;
/*!40000 ALTER TABLE `item_items` DISABLE KEYS */;
INSERT INTO `item_items` VALUES (1,28,26,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `detail` text,
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
  `cus_text_01` varchar(255) DEFAULT NULL,
  `cus_text_02` varchar(255) DEFAULT NULL,
  `cus_text_03` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5FDE7C0CD057065` (`logged_by`),
  KEY `FK5FDE7C0B2C23C49` (`parent_id`),
  KEY `FK5FDE7C02EAA8854` (`space_id`),
  KEY `FK5FDE7C09F34E6BD` (`assigned_to`),
  CONSTRAINT `FK5FDE7C02EAA8854` FOREIGN KEY (`space_id`) REFERENCES `spaces` (`id`),
  CONSTRAINT `FK5FDE7C09F34E6BD` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`),
  CONSTRAINT `FK5FDE7C0B2C23C49` FOREIGN KEY (`parent_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK5FDE7C0CD057065` FOREIGN KEY (`logged_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,2,NULL,NULL,1,1,'2018-08-08 14:46:13',NULL,1,1,'Read \"DA Vinci Code\" novel and collect words, phrases','Read \"DA Vinci Code\" novel and collect words, phrases',2,2,2,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not learn new words.','Schedule daily 20 minutes to read book, collect tough words, tough phrases and my doubts.','I will learn new words, phrases. I will gain confidence and self satisfaction.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (2,2,NULL,NULL,1,2,'2018-08-08 15:03:50',NULL,1,1,'Listen and Learn \"Working with EJB3 (EJB Tutorial Part 1).mp4\"','Listen and Learn \"Working with EJB3 (EJB Tutorial Part 1).mp4\"',1,2,3,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to answer in interview.','Listen video and then make notes. Do some test program exercise','I will know about EJB and be able to answer EJB Interview questions.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (3,3,NULL,NULL,1,3,'2018-08-09 14:24:20',NULL,1,1,'How to edit values of one item in a list/array, in javascript.','Scenario :- I have list of all categories and in that category, there are several questions. If I am reading one question, using given \"Read\" button, the \"last read on\" date should be updated post successful read response from database.\r\n\r\nHence post read button click the last read on date should be updated.',2,5,4,NULL,NULL,NULL,5,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'The list will not show actual last read on date.','1) check on google \"How to edit a particular value in a given javascript array/list?\"','1) New learning in javascript. 2) Same concept can be used in other project, to show updated values in single page without refresh.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (4,1,NULL,NULL,1,4,'2018-08-09 14:59:17',NULL,1,1,'Add Read button and its functionality in Questions, in category list page.','1. Add \"Read\" button in front end\r\n2. Add read_on column and add read_history table.\r\n3. Add service to update read_on for given column and add its reading history',1,2,3,NULL,NULL,NULL,4,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to track how many question I have read a particular day.','Add column, read history table and service code','Question learning and reading history will be traceable',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (5,1,NULL,NULL,1,5,'2018-08-10 21:17:38',NULL,1,1,'Create one page for :- Show Plan for given id','Create one page for :- Show Plan for given id\r\n1. Create view page for show plan, its steps and sub-steps\r\n2. create controller for above view',1,3,4,NULL,NULL,NULL,4,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to execute and track big projects.','Create view and controller for the requirement using angularjs and REST','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (6,4,NULL,NULL,1,6,'2018-08-10 22:15:18',NULL,1,1,'Change Test Tomcat port from 8888 to 9999','Change Test Tomcat port from 8888 to 9999\r\n1. Change port to 9999 in server.xml\r\n2. Change other ports accordingly, change 10th place number to \'9\' , for uniformity.\r\n3. Take sanity check , by running both test and pro servers.',99,2,1,NULL,NULL,NULL,4,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not able to do prod and development works simultaneously','Change Test Tomcat port from 8888 to 9999 - detail plan description','I will able to do prod and development works simultaneously',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (7,1,NULL,NULL,1,7,'2018-08-10 22:47:35',NULL,1,1,'Topic to be searched with its unique string name','Topic to be searched with its unique string name\r\n1) Associate one unique name with each topic.\r\n2) Search unique string and then find id in table for that topic.\r\n3) return found searched topic, else send error response',1,3,4,NULL,NULL,NULL,4,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1) id not reliable, if data copied to some other db. 2) db migration will not reliable without unique string','Plan shared in description','1) New learning in javascript. 2) Same concept can be used in other project, to show updated values in single page without refresh.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (8,1,NULL,NULL,1,8,'2018-08-10 23:09:00',NULL,1,1,'Read \"Spring Data - Modern Data Access for Enterprise Java .pdf\"','Read \"Spring Data - Modern Data Access for Enterprise Java .pdf\"\r\n\r\nPlan - Daily 30 minutes',1,2,4,NULL,NULL,NULL,5,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to answer in interview.','Plan - Daily 30 minutes','I will know about Spring Data and be able to answer Spring Data Interview questions.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (9,1,NULL,NULL,1,9,'2018-08-10 23:23:08',NULL,1,1,'Study video and pdf for project planning','Study video and pdf for project planning',1,2,4,NULL,NULL,NULL,5,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'It is now requirement for my TL position','steps to be identified','would be able to answer TL level questions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (10,1,NULL,NULL,1,10,'2018-08-10 23:26:36',NULL,1,1,'read all steps in \"https://github.com/in28minutes/SpringBootForBeginners\"','read all steps in \"https://github.com/in28minutes/SpringBootForBeginners\"\r\n\r\nPlan : \r\n1) 60 minutes in a week, 3 splits; 20 mins each',1,3,4,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'to be decided','steps to be identified','will learn spring boot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (11,5,NULL,NULL,1,11,'2018-08-10 23:39:24',NULL,1,1,'Take daily backup of Interview Mgmt, Topic Mgmt, Word Meaning, Jtrac Database in evening','<p>1. Take daily backup of Jtrac Database in evening @11 PM 2. Push it to google drive</p>',2,1,1,NULL,NULL,NULL,6,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I might loose data','steps to be identified','I will be in safer side in case of any data-system falure',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (12,2,NULL,NULL,1,12,'2018-08-11 09:20:31',NULL,1,1,'Add unique string id for topic/view/group same for Category /Questions','Add unique string id for topic/view/group\r\nsame for Category /Questions',2,2,2,NULL,NULL,NULL,4,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'i will not able to port data from one db to another','steps to be identified','i will able to port data from one db to another',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (13,2,NULL,NULL,1,13,'2018-08-12 10:34:07',NULL,1,1,'MongoDB - Project Fields to Return from Query','return only selected fields',1,3,4,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not learn how to send particular fields','steps to be identified','I will learn how to send particular fields',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (14,1,NULL,NULL,1,14,'2018-08-12 14:31:45',NULL,1,1,'Topic Management :- Logging message to make proper','<p>Topic Management :- Logging message to make proper</p>\r\n\r\n<ol>\r\n	<li>Currently all messages are only related with Zetta coching , it should be make accordingly.</li>\r\n</ol>',1,3,4,NULL,NULL,NULL,4,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'It would be difficult to analyse the logs and provide resolution in case of any issue','steps to be identified','Log analysis and resolution provide would be easy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (15,2,NULL,NULL,1,15,'2018-08-12 14:36:23',NULL,1,1,'Collate all view pages of Topic Management, Interview Management, Word meaning UI to one view application','<p>Collate all view pages of Topic Management, Interview Management, Word meaning UI to one view application</p>\r\n\r\n<ol>\r\n	<li>Collate all application pages in one application and make it one application.</li>\r\n</ol>',99,3,3,NULL,NULL,NULL,4,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Without this application collate would be difficult','steps to be identified','It would be easy to manage development of all application in one-go',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (16,2,NULL,NULL,1,16,'2018-08-12 15:01:55',NULL,1,1,'Identify new projects created in office laptop and commit them on GitHub','<p>Identify new projects created in office laptop and commit them on GitHub</p>\r\n\r\n<ol>\r\n	<li>Identify new projects created in office laptop</li>\r\n	<li>Identify any update done in existing projects.</li>\r\n	<li>commit them on GitHub</li>\r\n</ol>',2,2,1,NULL,NULL,NULL,6,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I may loose any update done in case of job change or system crash','steps to be identified','I would be in safe position',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (17,2,NULL,NULL,1,17,'2018-08-12 15:10:00',NULL,1,1,'Create one page, where all scheduled tasks can be entered.','<p>Create one page, where all scheduled tasks can be entered.</p>',1,2,2,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to execute and track big projects.','steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (18,3,NULL,NULL,1,18,'2018-08-12 19:52:44',NULL,1,1,'MP3Player2.5 :- Developments and Enhancements',NULL,2,2,2,NULL,NULL,NULL,4,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'This project pending from last 7 years','steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (19,3,NULL,NULL,1,19,'2018-08-15 14:22:40',NULL,1,1,'Neo4j - Learning','Neo4j - Learning',3,3,2,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to answer in interview.','steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (20,1,NULL,NULL,1,20,'2018-08-15 23:40:44',NULL,1,1,'Neo4j - Learning - Read \"https://neo4j.com/docs/pdf/neo4j-developer-manual-3.4-java.pdf\"','Neo4j - Learning - Read \"https://neo4j.com/docs/pdf/neo4j-developer-manual-3.4-java.pdf\"',1,2,4,NULL,NULL,NULL,5,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to answer in interview.','steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (21,1,NULL,NULL,1,21,'2018-08-16 06:23:41',NULL,1,1,'My Oaths - I will do gym','My Oaths - I will do gym',1,1,1,NULL,NULL,NULL,7,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to get peace in life','steps to be identified','I will feel peace',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (22,2,NULL,NULL,1,22,'2018-08-16 06:27:07',NULL,1,1,'MASTER-TICKET-My Oaths - I will prepare for Interview','My Oaths - I will prepare for Interview\r\n1. I will remember 10 interview questions daily.\r\n2. I will learn 10 english words daily.\r\n3. I will practice programming skills 3 times in week.\r\n4. I will learn management books 2 times in week.\r\n\r\nObjective\r\n1. Prioritize, Prepare topics as mentioned in Resume\r\n2. Preparation for Communication Skills',1,1,1,NULL,NULL,NULL,7,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to get peace in life','steps to be identified','I will feel peace',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (23,1,NULL,NULL,1,23,'2018-08-16 10:00:19',NULL,1,1,'Study \"Java Exception Discussion Questions and Answers\" \"http://127.0.0.1:8888/interview-mgmt-gui/#/categories/19\"','Study \"Java Exception Discussion Questions and Answers\" \r\n\r\n\"http://127.0.0.1:8888/interview-mgmt-gui/#/categories/19\"',1,2,2,NULL,NULL,NULL,7,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I will not be able to answer in interview.','steps to be identified','I will feel peace',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (24,1,NULL,NULL,1,24,'2018-08-19 15:05:00',NULL,1,1,'Topic Management :- Make single page, to create all categories, and questions and their answers.','Topic Management :- Make single page, to create all categories, and questions and their answers.\r\n1. Show all categories in left side.\r\n2. on selection, show the selected question and all its answers. \r\n3. Every category, question and answer must have to be created, updated, deleted from same page.\r\n4. one up and down button to alter sequence of question within category.\r\n5. Drag and drop feature to change category for a question.\r\n6. In future, drag and drop feature for category to make it sub-category of another one , w.r.to a given view.',1,2,3,NULL,NULL,NULL,4,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'This project pending from last 5 years','few steps given in description. rest of steps to be identified','I can perform big projects and track its progress',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (25,3,NULL,NULL,1,25,'2020-08-08 23:42:41',NULL,1,1,'Design Home page of BCE-GUI','1. Refer http://www.javavillage.in/index.php site home page.\r\n2. This site also uses Bootstrap.\r\n3. Create similar home page of http://127.0.0.1:8080/bce-gui/#/\r\n4. Commit code on GIT\r\n5. Remove/Reduce drop-down menu',99,3,3,NULL,NULL,NULL,4,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site will look ugly','Plan described in detail','Site will be more interactive',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (26,2,NULL,NULL,1,26,'2020-08-09 18:39:54',NULL,1,1,'All AngularJS Projects - Put all http methods in services','All AngularJS Projects - Put all http methods in services\r\n1. Identify all http services in bce-gui project\r\n2. Put them in respective Service.js \r\n3. Update code accordingly to newly created Service.js',2,3,3,NULL,NULL,NULL,4,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site will hard to resused','Plan described in detail','Site will be more developer-friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (27,2,NULL,NULL,1,27,'2020-08-09 18:55:54',NULL,1,1,'All AngularJS Projects - Login Screen and Session implementation in BCE GUI','All AngularJS Projects - Login Screen and Session implementation in BCE GUI\r\n1. Explore Angularjs way\r\n2. Explore Spring Boot Security way',2,3,3,NULL,NULL,NULL,5,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site will hard to resused','Plan described in detail','Site will be more user and developer-friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `items` VALUES (28,3,NULL,NULL,1,28,'2020-08-11 12:02:05',NULL,1,1,'MASTER-TICKET-All AngularJS Projects - Optimize Frontend AngularJS code.','MASTER-TICKET-All AngularJS Projects - Optimize Frontend AngularJS code.\r\n1. Put all http methods in Services\r\n2. Put global values in central Constants\r\n3. View, Add, Edit, Delete , Relate-To-Other-Components in same page\r\n3.1 Make custom directives/ templates\r\n3.2 Edit In Place Content Editing',1,3,3,NULL,NULL,NULL,5,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site will look ugly','Plan described in detail','Site will be more user and developer-friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `description` text,
  `parent_id` bigint(20) DEFAULT NULL,
  `xml_string` text,
  PRIMARY KEY (`id`),
  KEY `FKE52D7B2FD9D39965` (`parent_id`),
  CONSTRAINT `FKE52D7B2FD9D39965` FOREIGN KEY (`parent_id`) REFERENCES `metadata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata`
--

LOCK TABLES `metadata` WRITE;
/*!40000 ALTER TABLE `metadata` DISABLE KEYS */;
INSERT INTO `metadata` VALUES (1,28,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<metadata><fields><field name=\"severity\" label=\"Severity\" optional=\"true\"><option value=\"1\">Fatal</option><option value=\"2\">Major</option><option value=\"3\">Minor</option><option value=\"4\">Trivial</option><option value=\"5\">Suggestion</option></field><field name=\"priority\" label=\"Priority\" optional=\"true\"><option value=\"1\">Highest</option><option value=\"2\">High</option><option value=\"3\">Medium</option><option value=\"4\">Low</option><option value=\"5\">Lowest</option></field><field name=\"cusInt01\" label=\"Category\" optional=\"true\"><option value=\"1\">My Wishes</option><option value=\"2\">My Duties</option><option value=\"7\">My Oaths</option><option value=\"4\">Application Enhancements/Bug Fixes</option><option value=\"5\">Research and Development</option><option value=\"6\">Scheduling Jobs/Tasks</option><option value=\"3\">Uncategorised</option></field><field name=\"cusInt02\" label=\"Sub Category\" optional=\"true\"><option value=\"1\">Learning &lt;- My Wishes</option><option value=\"2\">Body Building &lt;- My Wishes</option><option value=\"3\">Interview Preparation &lt;- My Wishes</option><option value=\"4\">Home &lt;- My Duties</option><option value=\"5\">Office &lt;- My Duties</option><option value=\"6\">Self &lt;- My Duties</option><option value=\"15\">Daily Routine &lt;- My Oaths</option><option value=\"16\">Monthly Routine &lt;- My Oaths</option><option value=\"17\">Long Term Routine &lt;- My Oaths</option><option value=\"8\">Interview Management &lt;- Application Enhancements/Bug Fixes</option><option value=\"9\">Topic Management &lt;- Application Enhancements/Bug Fixes</option><option value=\"12\">Plan Track Management &lt;- Application Enhancements/Bug Fixes</option><option value=\"13\">Word Meaning Management &lt;- Application Enhancements/Bug Fixes</option><option value=\"14\">MP3Player2.5 &lt;- Application Enhancements/Bug Fixes</option><option value=\"10\">Java &lt;- Research and Development</option><option value=\"11\">JavaScript &lt;- Research and Development</option><option value=\"7\">Uncategorised</option></field><field name=\"cusStr01\" label=\"What If I do not do this?\" optional=\"true\"/><field name=\"cusStr02\" label=\"What will be plan to do this?\" optional=\"true\"/><field name=\"cusStr03\" label=\"What is benefit for doing this task?\" optional=\"true\"/><field-order><field name=\"severity\"/><field name=\"priority\"/><field name=\"cusInt01\"/><field name=\"cusInt02\"/><field name=\"cusStr01\"/><field name=\"cusStr02\"/><field name=\"cusStr03\"/></field-order></fields><roles><role name=\"DEFAULT\"><state status=\"0\"><transition status=\"1\"/><field name=\"cusInt02\" mask=\"3\"/><field name=\"cusStr01\" mask=\"3\"/><field name=\"cusStr03\" mask=\"3\"/><field name=\"cusStr02\" mask=\"3\"/><field name=\"severity\" mask=\"3\"/><field name=\"priority\" mask=\"3\"/><field name=\"cusInt01\" mask=\"3\"/></state><state status=\"1\"><transition status=\"1\"/><transition status=\"2\"/><transition status=\"99\"/><transition status=\"3\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"cusStr02\" mask=\"2\"/><field name=\"severity\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"cusInt01\" mask=\"2\"/></state><state status=\"2\"><transition status=\"1\"/><transition status=\"2\"/><transition status=\"99\"/><transition status=\"3\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"cusStr02\" mask=\"2\"/><field name=\"severity\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"cusInt01\" mask=\"2\"/></state><state status=\"99\"><transition status=\"1\"/><transition status=\"2\"/><transition status=\"99\"/><transition status=\"3\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"cusStr02\" mask=\"2\"/><field name=\"severity\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"cusInt01\" mask=\"2\"/></state><state status=\"3\"><transition status=\"1\"/><transition status=\"2\"/><transition status=\"3\"/><transition status=\"99\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"cusStr02\" mask=\"2\"/><field name=\"severity\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"cusInt01\" mask=\"2\"/></state></role></roles><states><state status=\"0\" label=\"New\"/><state status=\"1\" label=\"Open\"/><state status=\"2\" label=\"Work-In-Progress\"/><state status=\"3\" label=\"On-Hold\"/><state status=\"99\" label=\"Closed\"/></states></metadata>');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `space_sequence`
--

LOCK TABLES `space_sequence` WRITE;
/*!40000 ALTER TABLE `space_sequence` DISABLE KEYS */;
INSERT INTO `space_sequence` VALUES (1,29);
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
  `description` text,
  `guest_allowed` bit(1) DEFAULT NULL,
  `metadata_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prefix_code` (`prefix_code`),
  KEY `FKCA95302D6205CC0` (`metadata_id`),
  CONSTRAINT `FKCA95302D6205CC0` FOREIGN KEY (`metadata_id`) REFERENCES `metadata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spaces`
--

LOCK TABLES `spaces` WRITE;
/*!40000 ALTER TABLE `spaces` DISABLE KEYS */;
INSERT INTO `spaces` VALUES (1,0,NULL,'TASKS','TASKS','TASKS','',1);
/*!40000 ALTER TABLE `spaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storedsearch`
--

DROP TABLE IF EXISTS `storedsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storedsearch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storedsearch`
--

LOCK TABLES `storedsearch` WRITE;
/*!40000 ALTER TABLE `storedsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `storedsearch` ENABLE KEYS */;
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
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_space_roles`
--

LOCK TABLES `user_space_roles` WRITE;
/*!40000 ALTER TABLE `user_space_roles` DISABLE KEYS */;
INSERT INTO `user_space_roles` VALUES (1,1,NULL,'ROLE_ADMIN');
INSERT INTO `user_space_roles` VALUES (2,1,1,'DEFAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
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
-- Dumping routines for database 'jtractest'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-21  9:52:51
