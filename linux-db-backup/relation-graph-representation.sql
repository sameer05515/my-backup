-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: relation-graph-representation
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
-- Table structure for table `t_person`
--

DROP TABLE IF EXISTS `t_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_person` (
  `id` varchar(300) NOT NULL,
  `name` text NOT NULL,
  `label` text NOT NULL,
  `date-of-birth` int(11) DEFAULT NULL,
  `date-of-expiry` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`(200))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person`
--

LOCK TABLES `t_person` WRITE;
/*!40000 ALTER TABLE `t_person` DISABLE KEYS */;
INSERT INTO `t_person` VALUES ('09OCT2020-00001-Shri-Vikram-sah','Shri Vikram sah','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00001-Shri-Sitaram-sah','Shri Sitaram sah','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00002-Shri-Chandu-sah','Shri Chandu sah','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00003-Shri-Nagina-sah','Shri Nagina sah','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00004-Shri-Mangal-sah','Shri Mangal sah','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00005-Shri-Rajendra-sah','Shri Rajendra sah','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00006-Shri-Shankar-sah','Shri Shankar sah','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00007-Shri-Mahender-sah','Shri Mahender sah','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00008-Shri-Bhola-Prasad','Shri Bhola Prasad','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00009-Shri-Sanjay-Prasad','Shri Sanjay Prasad','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00010-Shri-Sunil-Prasad','Shri Sunil Prasad','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00011-Shri-Kanhaiya-Prasad','Shri Kanhaiya Prasad','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00012-Shri-Anand-Prasad','Shri Anand Prasad','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00013-Shri-NandKishore-Prasad','Shri NandKishore Prasad','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00014-Shri-Munna-Prasad','Shri Munna Prasad','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00015-Shri-Lalan-Prasad','Shri Lalan Prasad','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00016-Shri-Suresh-Prasad','Shri Suresh Prasad','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00017-Shri-Dhruv-Prasad','Shri Dhruv Prasad','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00018-Shri-Bipin-Bihari','Shri Bipin Bihari','PERSON',NULL,NULL);
INSERT INTO `t_person` VALUES ('10OCT2020-00019-Shri-Nawal-Prasad','Shri Nawal Prasad','PERSON',NULL,NULL);
/*!40000 ALTER TABLE `t_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_person_relation`
--

DROP TABLE IF EXISTS `t_person_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_person_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(300) NOT NULL,
  `target` varchar(300) NOT NULL,
  `relation_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_person_relation` (`source`,`target`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person_relation`
--

LOCK TABLES `t_person_relation` WRITE;
/*!40000 ALTER TABLE `t_person_relation` DISABLE KEYS */;
INSERT INTO `t_person_relation` VALUES (1,'09OCT2020-00001-Shri-Vikram-sah','10OCT2020-00001-Shri-Sitaram-sah','FATHER');
INSERT INTO `t_person_relation` VALUES (2,'09OCT2020-00001-Shri-Vikram-sah','10OCT2020-00002-Shri-Chandu-sah','FATHER');
INSERT INTO `t_person_relation` VALUES (3,'09OCT2020-00001-Shri-Vikram-sah','10OCT2020-00003-Shri-Nagina-sah','FATHER');
INSERT INTO `t_person_relation` VALUES (4,'09OCT2020-00001-Shri-Vikram-sah','10OCT2020-00004-Shri-Mangal-sah','FATHER');
INSERT INTO `t_person_relation` VALUES (5,'10OCT2020-00001-Shri-Sitaram-sah','10OCT2020-00005-Shri-Rajendra-sah','FATHER');
INSERT INTO `t_person_relation` VALUES (6,'10OCT2020-00001-Shri-Sitaram-sah','10OCT2020-00006-Shri-Shankar-sah','FATHER');
INSERT INTO `t_person_relation` VALUES (7,'10OCT2020-00001-Shri-Sitaram-sah','10OCT2020-00007-Shri-Mahender-sah','FATHER');
INSERT INTO `t_person_relation` VALUES (8,'10OCT2020-00002-Shri-Chandu-sah','10OCT2020-00008-Shri-Bhola-Prasad','FATHER');
INSERT INTO `t_person_relation` VALUES (9,'10OCT2020-00002-Shri-Chandu-sah','10OCT2020-00009-Shri-Sanjay-Prasad','FATHER');
INSERT INTO `t_person_relation` VALUES (10,'10OCT2020-00002-Shri-Chandu-sah','10OCT2020-00010-Shri-Sunil-Prasad','FATHER');
INSERT INTO `t_person_relation` VALUES (11,'10OCT2020-00003-Shri-Nagina-sah','10OCT2020-00011-Shri-Kanhaiya-Prasad','FATHER');
INSERT INTO `t_person_relation` VALUES (12,'10OCT2020-00003-Shri-Nagina-sah','10OCT2020-00012-Shri-Anand-Prasad','FATHER');
INSERT INTO `t_person_relation` VALUES (13,'10OCT2020-00003-Shri-Nagina-sah','10OCT2020-00013-Shri-NandKishore-Prasad','FATHER');
INSERT INTO `t_person_relation` VALUES (14,'10OCT2020-00003-Shri-Nagina-sah','10OCT2020-00014-Shri-Munna-Prasad','FATHER');
INSERT INTO `t_person_relation` VALUES (15,'10OCT2020-00003-Shri-Nagina-sah','10OCT2020-00015-Shri-Lalan-Prasad','FATHER');
INSERT INTO `t_person_relation` VALUES (16,'10OCT2020-00004-Shri-Mangal-sah','10OCT2020-00016-Shri-Suresh-Prasad','FATHER');
INSERT INTO `t_person_relation` VALUES (17,'10OCT2020-00004-Shri-Mangal-sah','10OCT2020-00017-Shri-Dhruv-Prasad','FATHER');
INSERT INTO `t_person_relation` VALUES (18,'10OCT2020-00004-Shri-Mangal-sah','10OCT2020-00018-Shri-Bipin-Bihari','FATHER');
INSERT INTO `t_person_relation` VALUES (19,'10OCT2020-00004-Shri-Mangal-sah','10OCT2020-00019-Shri-Nawal-Prasad','FATHER');
/*!40000 ALTER TABLE `t_person_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_relations`
--

DROP TABLE IF EXISTS `t_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_relations` (
  `id` varchar(100) NOT NULL,
  `relation_type` text NOT NULL,
  `relation_explaination` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_relations`
--

LOCK TABLES `t_relations` WRITE;
/*!40000 ALTER TABLE `t_relations` DISABLE KEYS */;
INSERT INTO `t_relations` VALUES ('BROTHER','BROTHER','If A (Male) is brother of B(Male) , then B is also brother of A.\r\n\r\nIf A (Male) is brother of B(Female) , then B is sister of A.\r\n\r\nIf A has Father F1, and B is brother of A, then B has also Father as F1.\r\n\r\nIf A has Father F1, and B is sister of A, then B has also Father as F1.\r\n\r\nIf A(male) has father F1, B(male) has father F2 and F1 and F2 are brothers. A and B are \"paternal niece brother(chachera bhai)\".\r\n\r\nIf A(male) has father F1, B(female) has father F2 and F1 and F2 are brothers. Then A and B are \"paternal niece brother-sisters(chachera bhai-bahan)\".\r\n\r\nIf A(male) has father F1, B(male) has mother M1 and F1 and M1 are brother-sister. Then A is \"paternal niece brother(fufera bhai)\" of B. Also B is \"maternal niece brother(mamera bhai)\" of A.\r\n');
INSERT INTO `t_relations` VALUES ('DAUGHTER','DAUGHTER','');
INSERT INTO `t_relations` VALUES ('FATHER','FATHER','');
INSERT INTO `t_relations` VALUES ('MOTHER','MOTHER','');
INSERT INTO `t_relations` VALUES ('NIECE','NIECE','');
INSERT INTO `t_relations` VALUES ('SON','SON','');
/*!40000 ALTER TABLE `t_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'relation-graph-representation'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-01 21:17:05
