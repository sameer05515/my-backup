-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: tasksdb
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
-- Table structure for table `t_products`
--

DROP TABLE IF EXISTS `t_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_products` (
  `id` varchar(255) NOT NULL,
  `prod_desc` varchar(255) DEFAULT NULL,
  `prod_image` varchar(255) DEFAULT NULL,
  `prod_name` varchar(255) DEFAULT NULL,
  `prod_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_products`
--

LOCK TABLES `t_products` WRITE;
/*!40000 ALTER TABLE `t_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_task`
--

DROP TABLE IF EXISTS `t_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_task` (
  `id` varchar(255) NOT NULL,
  `activity_type` text,
  `box` text,
  `end_date` datetime DEFAULT NULL,
  `environment` text,
  `frequency` text,
  `highest_point` int(11) DEFAULT NULL,
  `next_occurance` datetime DEFAULT NULL,
  `performed_by` text,
  `points_earned_today` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `remarks` text,
  `routine_schedule_description` text,
  `schedule_date` datetime DEFAULT NULL,
  `sequence` text,
  `status` text,
  `task_description` text,
  `task_priority_group` text,
  `title` text,
  `what_if_not_doing` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_task`
--

LOCK TABLES `t_task` WRITE;
/*!40000 ALTER TABLE `t_task` DISABLE KEYS */;
INSERT INTO `t_task` VALUES ('TASK_1596195537010','study','morning','2024-05-31 00:00:00','office','monthly',1,'2020-08-01 00:00:00','premendra.kumar',1,1,'<div><!--block-->Reach at Wages 25 LPA</div>','<div><!--block-->Reach at Wages 25 LPA</div>','2020-07-31 00:00:00','1','open','<div><!--block-->Reach at Salary 25 LPA</div>','urgent','Reach at Wages 25 LPA','<div><!--block-->Reach at Wages 25 LPA</div>');
INSERT INTO `t_task` VALUES ('TASK_1596372691718','study','day','2020-10-31 00:00:00','self','daily',100,'2020-08-03 00:00:00','premendra.kumar',1,10,'<div><!--block-->Prepare interview questions</div>','<div><!--block-->Prepare interview questions</div>','2020-08-02 00:00:00','1','open','<div><!--block-->Prepare interview questions</div>','urgent','Prepare interview questions','<div><!--block-->Prepare interview questions</div>');
INSERT INTO `t_task` VALUES ('TASK_1596605605818','study','day','2020-08-31 00:00:00','self-study','daily',100,'2020-08-06 00:00:00','premendra.kumar',1,7,'','','2020-08-05 00:00:00','1','open','<div><!--block--><strong>Create Notes Project ( backend services and UI)</strong><br>==<br><strong>Why</strong></div><ul><li><!--block-->To store notes, its history</li><li><!--block-->To create&nbsp;<strong>Routine&nbsp;</strong>notes. This will be only&nbsp;<strong>Public&nbsp;</strong>entity, in notes Application.<ul><li><!--block-->Rest all entity will be&nbsp;<strong>private</strong></li><li><!--block-->Private entity must have&nbsp;<strong>password</strong></li><li><!--block-->In&nbsp;<strong>t_config&nbsp;</strong>table,if&nbsp;<strong>ask_password</strong>&nbsp;field have&nbsp;<strong>false&nbsp;</strong>value, show&nbsp;<strong>page-not-found(HTTP 404)</strong>, if a private entity is searched.</li><li><!--block-->notes will have&nbsp;<strong>parent-child relationship.</strong></li><li><!--block-->notes will have a&nbsp;<strong>unique-name</strong>.&nbsp;<ul><li><!--block--><strong>unique-name</strong>&nbsp;can be&nbsp;<strong>editable</strong>, but it must have&nbsp;<strong>unique across all notes-entity.</strong></li><li><!--block--><strong>default value</strong>&nbsp;for a notes-entity will be&nbsp;<strong>notes-DDMMYYYY-HHmmsss{PM/AM}, if not provided or empty.</strong></li></ul></li></ul></li></ul><div><!--block--><br>==<br><strong>What to achieve</strong></div><ul><li><!--block--><strong>Create tables, views, triggers, procedures</strong><ul><li><!--block-->Tables<ul><li><!--block-->t_notes</li><li><!--block-->t_notes_history</li><li><!--block--><br></li></ul></li></ul></li><li><!--block--><strong>Create front-end pages&nbsp;</strong></li></ul>','urgent','Create Notes Project','');
INSERT INTO `t_task` VALUES ('TASK_1596626668405','study-create-projects','day','2020-08-31 00:00:00','self-study','daily',100,'2020-08-06 00:00:00','premendra.kumar',1,8,'<div><!--block-->Project analysis</div>','','2020-08-05 00:00:00','1','development-analysis','<div><!--block-->Database</div><ul><li><!--block-->Tables<ul><li><!--block-->t_events_group</li><li><!--block-->t_events</li><li><!--block-->t_events_group_history</li><li><!--block-->t_events_history</li></ul></li><li><!--block-->Triggers<ul><li><!--block-->trigger_events_group (on update)</li><li><!--block-->trigger_events (on update)</li></ul></li></ul><div><!--block--><br>Data-Structures</div><ul><li><!--block-->Event-Group<ul><li><!--block-->contains multiple events</li></ul></li><li><!--block-->Events<ul><li><!--block-->Must have<ul><li><!--block-->created date</li><li><!--block-->modification date</li><li><!--block-->event_occurrence_date (default current date)</li></ul></li></ul></li></ul><div><!--block--><br>Views</div><ul><li><!--block-->All event groups</li><li><!--block-->All events under an event-group</li><li><!--block-->Add event-group</li><li><!--block-->Add event</li><li><!--block-->update event</li><li><!--block-->update event-group</li><li><!--block-->delete (hide) event,event-group</li><li><!--block--><br></li></ul>','normal','Create Project : Datewise-Events-Logging-Application','<div><!--block-->In case project not ready, manual effort to write and arrange event group.&nbsp;<br>This is tedious work. Maintenance of data is also tough.</div>');
INSERT INTO `t_task` VALUES ('TASK_1596642568921','study','day','2020-12-25 00:00:00','self-improvement','daily',1000,'2020-08-06 00:00:00','premendra.kumar',1,10,'<div><!--block-->Notes Project : Notes : Routine</div>','<div><!--block-->Achieve&nbsp;</div><ul><li><!--block-->a regular life</li><li><!--block-->a peaceful life</li><li><!--block-->self-control in life&nbsp;</li></ul>','2020-08-05 00:00:00','1','open','<div><!--block--><strong>Notes Project : Notes : Routine (Tapasya)<br><br>Prayer to God</strong></div><ul><li><!--block-->May God bless my mother,father,brother,sister happiness and let them safe. May God bless me fresh-mindedness, tolerance. May God bless peace of mind and home as well.</li><li><!--block-->May God help me to get abs and muscles</li><li><!--block-->May God help me to save 5000 Rs per month. May God help me to save 15-20 Rs each day.</li></ul><div><!--block--><strong><br>Daily Routine</strong></div><ul><li><!--block--><strong>wake-up by 5:30 AM.</strong></li><li><!--block-->5:30 AM-7:30 AM<ul><li><!--block-->gym ,exercise, chana, bathroom</li></ul></li><li><!--block-->7:30 AM - 9:30 AM<ul><li><!--block-->Meditation,Puja, Breakfast, Food</li><li><!--block-->Read Ramayana / Mahabharata 10 pages daily</li></ul></li><li><!--block-->9:30 AM - 5:30 PM<ul><li><!--block-->Office work, work of home, Preparation for interview as appropriate</li><li><!--block-->One alternative career opportunity analysis per week</li><li><!--block-->Read 10 words daily</li><li><!--block-->Read 10 interview questions daily</li></ul></li><li><!--block--><strong>sleep by 11:30 PM.</strong></li></ul><div><!--block--><strong><br>Other Routine</strong></div><ul><li><!--block-->Weekly</li><li><!--block--><strong>Monthly</strong><ul><li><!--block-->Update Resume (10th/20th/30th of month)</li></ul></li><li><!--block-->Yearly</li><li><!--block-->5-Yearly</li><li><!--block-->Routine of Premendra while Preparation for new job</li><li><!--block-->2020 Resolutions<ul><li><!--block-->Gutkha quit karna hai.</li><li><!--block-->Body building</li><li><!--block-->Find an alternative plan to job, so that I could move to Bihar.</li></ul></li></ul><div><!--block--><strong><br>Remembrable<br><br>Projects(Review Time - 3 PM-5 PM , 7 PM-9 PM)</strong></div><ul><li><!--block--><strong>Project Nalish</strong>&nbsp;(Target 31-May-2021,15 September 2021)<ul><li><!--block-->Resolve concerns from wife<ul><li><!--block-->Gutkha khate hain - [in-progress] - [solution is make teeth brighter]</li><li><!--block-->Har 10-15 din par inko pata nahi kya ho jata hai, bewajah gussa karte hain.</li><li><!--block-->Bathroom me game khelte hain - [in-progress] - [un-installed game app]</li></ul></li><li><!--block-->Be un-reacted till date (be defensive)</li><li><!--block-->collect to Report / circulate mistakes of wife</li><li><!--block-->Find a person, who can understand my issue. Also can support,if needed.</li></ul></li><li><!--block--><strong>Project Interview Preparation</strong></li><li><!--block--><strong>Project Application Development</strong></li><li><!--block--><strong>Project DB Backup</strong></li></ul><div><!--block--><strong><br>Duties &amp; Responsibilities</strong></div><ul><li><!--block-->May God bless me power to serve my family.</li><li><!--block-->May God bless me power to serve my Body as resting place for Him.</li><li><!--block-->May God bless me Wisdom to learn one new Skill every year</li></ul><div><!--block--><br></div>','normal','Notes Project : Notes : Routine (Tapasya)','<div><!--block-->If not doing,life will be goal-less, haphazard and irregular.</div>');
/*!40000 ALTER TABLE `t_task` ENABLE KEYS */;
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

-- Dump completed on 2021-08-01 21:17:08
