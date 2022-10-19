-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: interview_mgmt_testing
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
-- Table structure for table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` longtext DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `last_updation_date` datetime NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 1,
  `last_read_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table containing data for categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_catg_ques`
--

DROP TABLE IF EXISTS `t_catg_ques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_catg_ques` (
  `ques_id` int(11) NOT NULL,
  `linked_cat_id` int(11) NOT NULL,
  `ques` longtext DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `last_updation_date` datetime NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 1,
  `last_read_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table containing data for questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_catg_ques_ans`
--

DROP TABLE IF EXISTS `t_catg_ques_ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_catg_ques_ans` (
  `ans_id` int(11) NOT NULL,
  `linked_ques_id` int(11) NOT NULL,
  `linked_cat_id` int(11) NOT NULL,
  `answer` longtext DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `last_updation_date` datetime NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 1,
  `last_read_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table containing data for answers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_catg_ques_read_history`
--

DROP TABLE IF EXISTS `t_catg_ques_read_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_catg_ques_read_history` (
  `id` int(11) NOT NULL,
  `ques_id` int(11) NOT NULL,
  `linked_cat_id` int(11) NOT NULL,
  `last_read_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'interview_mgmt_testing'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 19:26:40
