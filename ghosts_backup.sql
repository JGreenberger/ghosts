-- MySQL dump 10.13  Distrib 5.6.16, for osx10.9 (x86_64)
--
-- Host: localhost    Database: jeremy
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add year',7,'add_year'),(20,'Can change year',7,'change_year'),(21,'Can delete year',7,'delete_year'),(22,'Can add data type',8,'add_datatype'),(23,'Can change data type',8,'change_datatype'),(24,'Can delete data type',8,'delete_datatype'),(25,'Can add site details',9,'add_sitedetails'),(26,'Can change site details',9,'change_sitedetails'),(27,'Can delete site details',9,'delete_sitedetails'),(28,'Can add source',10,'add_source'),(29,'Can change source',10,'change_source'),(30,'Can delete source',10,'delete_source'),(31,'Can add sites',11,'add_sites'),(32,'Can change sites',11,'change_sites'),(33,'Can delete sites',11,'delete_sites'),(34,'Can add content point',12,'add_contentpoint'),(35,'Can change content point',12,'change_contentpoint'),(36,'Can delete content point',12,'delete_contentpoint'),(37,'Can add data',13,'add_data'),(38,'Can change data',13,'change_data'),(39,'Can delete data',13,'delete_data'),(40,'Can add data transition details',14,'add_datatransitiondetails'),(41,'Can change data transition details',14,'change_datatransitiondetails'),(42,'Can delete data transition details',14,'delete_datatransitiondetails'),(43,'Can add picture translate details',15,'add_picturetranslatedetails'),(44,'Can change picture translate details',15,'change_picturetranslatedetails'),(45,'Can delete picture translate details',15,'delete_picturetranslatedetails'),(46,'Can add site sub site type',16,'add_sitesubsitetype'),(47,'Can change site sub site type',16,'change_sitesubsitetype'),(48,'Can delete site sub site type',16,'delete_sitesubsitetype');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'year','ghosts_app','year'),(8,'data type','ghosts_app','datatype'),(9,'site details','ghosts_app','sitedetails'),(10,'source','ghosts_app','source'),(11,'sites','ghosts_app','sites'),(12,'content point','ghosts_app','contentpoint'),(13,'data','ghosts_app','data'),(14,'data transition details','ghosts_app','datatransitiondetails'),(15,'picture translate details','ghosts_app','picturetranslatedetails'),(16,'site sub site type','ghosts_app','sitesubsitetype');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghosts_app_contentpoint`
--

DROP TABLE IF EXISTS `ghosts_app_contentpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ghosts_app_contentpoint` (
  `contentPointID` int(11) NOT NULL AUTO_INCREMENT,
  `contentPointTitle` varchar(100) NOT NULL,
  `contentPointYearID` varchar(100) NOT NULL,
  `siteID` varchar(100) NOT NULL,
  PRIMARY KEY (`contentPointID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghosts_app_contentpoint`
--

LOCK TABLES `ghosts_app_contentpoint` WRITE;
/*!40000 ALTER TABLE `ghosts_app_contentpoint` DISABLE KEYS */;
INSERT INTO `ghosts_app_contentpoint` VALUES (1,'Gressette Room','0','1'),(2,'Euphradian Society Debates','1','2'),(3,'Euphradian Society Debates','1','2'),(4,'Euphradian Society Debates','1','2');
/*!40000 ALTER TABLE `ghosts_app_contentpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghosts_app_data`
--

DROP TABLE IF EXISTS `ghosts_app_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ghosts_app_data` (
  `dataID` int(11) NOT NULL AUTO_INCREMENT,
  `dataXCoord` varchar(100) NOT NULL,
  `dataYCoord` varchar(100) NOT NULL,
  `dataWidth` varchar(100) NOT NULL,
  `dataHeight` varchar(100) NOT NULL,
  `dataTypeID` varchar(100) NOT NULL,
  `dataInfo` varchar(100) NOT NULL,
  `dataInfoFileType` varchar(100) NOT NULL,
  `contentPointID` varchar(100) NOT NULL,
  PRIMARY KEY (`dataID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghosts_app_data`
--

LOCK TABLES `ghosts_app_data` WRITE;
/*!40000 ALTER TABLE `ghosts_app_data` DISABLE KEYS */;
INSERT INTO `ghosts_app_data` VALUES (1,'0','0','50','50','7','CPD_8134','jpg','1'),(2,'0','0','50','50','1','Student_1826','m4a','2'),(3,'50','50','100','100','3','In 1826...','','2');
/*!40000 ALTER TABLE `ghosts_app_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghosts_app_datatransitiondetails`
--

DROP TABLE IF EXISTS `ghosts_app_datatransitiondetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ghosts_app_datatransitiondetails` (
  `dataTransitionDetailsID` int(11) NOT NULL AUTO_INCREMENT,
  `dataID` varchar(100) NOT NULL,
  `dataTransitionDetailsPicture` varchar(100) NOT NULL,
  `dataTransitionDetailsPictureFileType` varchar(100) NOT NULL,
  `dataTransitionDetailsAudio` varchar(100) NOT NULL,
  `dataTransitionDetailsAudioFileType` varchar(100) NOT NULL,
  `dataTransitionDetailsVideo` varchar(100) NOT NULL,
  `dataTransitionDetailsVideoType` varchar(100) NOT NULL,
  `dataTransitionDetails3D` varchar(100) NOT NULL,
  `dataTransitionDetails3DType` varchar(100) NOT NULL,
  PRIMARY KEY (`dataTransitionDetailsID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghosts_app_datatransitiondetails`
--

LOCK TABLES `ghosts_app_datatransitiondetails` WRITE;
/*!40000 ALTER TABLE `ghosts_app_datatransitiondetails` DISABLE KEYS */;
INSERT INTO `ghosts_app_datatransitiondetails` VALUES (1,'1','GressetteRoom','png','','','','','','');
/*!40000 ALTER TABLE `ghosts_app_datatransitiondetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghosts_app_datatype`
--

DROP TABLE IF EXISTS `ghosts_app_datatype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ghosts_app_datatype` (
  `dataTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `dataTypeName` varchar(100) NOT NULL,
  PRIMARY KEY (`dataTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghosts_app_datatype`
--

LOCK TABLES `ghosts_app_datatype` WRITE;
/*!40000 ALTER TABLE `ghosts_app_datatype` DISABLE KEYS */;
INSERT INTO `ghosts_app_datatype` VALUES (1,'Audio'),(2,'Video'),(3,'Text'),(4,'Picture'),(6,'Augmented Reality'),(7,'Panoramic View'),(8,'Camera'),(9,'3D Model Viewer'),(10,'Text Translation');
/*!40000 ALTER TABLE `ghosts_app_datatype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghosts_app_picturetranslatedetails`
--

DROP TABLE IF EXISTS `ghosts_app_picturetranslatedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ghosts_app_picturetranslatedetails` (
  `pictureTranslateDetailsID` int(11) NOT NULL AUTO_INCREMENT,
  `dataID` varchar(100) NOT NULL,
  `xCoord` varchar(100) NOT NULL,
  `yCoord` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `width` varchar(100) NOT NULL,
  `word` varchar(100) NOT NULL,
  PRIMARY KEY (`pictureTranslateDetailsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghosts_app_picturetranslatedetails`
--

LOCK TABLES `ghosts_app_picturetranslatedetails` WRITE;
/*!40000 ALTER TABLE `ghosts_app_picturetranslatedetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ghosts_app_picturetranslatedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghosts_app_sitedetails`
--

DROP TABLE IF EXISTS `ghosts_app_sitedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ghosts_app_sitedetails` (
  `siteID` varchar(100) NOT NULL,
  `siteDetailsID` int(11) NOT NULL AUTO_INCREMENT,
  `siteDetailsPicture` varchar(100) NOT NULL,
  `siteDetailsPictureType` varchar(100) NOT NULL,
  `siteDetailsAudio` varchar(100) NOT NULL,
  `siteDetailsAudioType` varchar(100) NOT NULL,
  `siteDetailsVideo` varchar(100) NOT NULL,
  `siteDetailsVideoType` varchar(100) NOT NULL,
  PRIMARY KEY (`siteDetailsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghosts_app_sitedetails`
--

LOCK TABLES `ghosts_app_sitedetails` WRITE;
/*!40000 ALTER TABLE `ghosts_app_sitedetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ghosts_app_sitedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghosts_app_sites`
--

DROP TABLE IF EXISTS `ghosts_app_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ghosts_app_sites` (
  `siteID` int(11) NOT NULL AUTO_INCREMENT,
  `xCoord` varchar(100) NOT NULL,
  `yCoord` varchar(100) NOT NULL,
  `siteTitle` varchar(500) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `dataID` varchar(100) NOT NULL,
  `siteSubSiteTypeID` varchar(100) NOT NULL,
  PRIMARY KEY (`siteID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghosts_app_sites`
--

LOCK TABLES `ghosts_app_sites` WRITE;
/*!40000 ALTER TABLE `ghosts_app_sites` DISABLE KEYS */;
INSERT INTO `ghosts_app_sites` VALUES (1,'0','0','Gressette Room','33.9984471666','-81.029100500','','0'),(2,'100','100','gres01','','','1','1');
/*!40000 ALTER TABLE `ghosts_app_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghosts_app_sitesubsitetype`
--

DROP TABLE IF EXISTS `ghosts_app_sitesubsitetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ghosts_app_sitesubsitetype` (
  `siteSubSiteTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `siteSubSiteType` varchar(100) NOT NULL,
  PRIMARY KEY (`siteSubSiteTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghosts_app_sitesubsitetype`
--

LOCK TABLES `ghosts_app_sitesubsitetype` WRITE;
/*!40000 ALTER TABLE `ghosts_app_sitesubsitetype` DISABLE KEYS */;
INSERT INTO `ghosts_app_sitesubsitetype` VALUES (1,'Site'),(2,'Subsite');
/*!40000 ALTER TABLE `ghosts_app_sitesubsitetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghosts_app_source`
--

DROP TABLE IF EXISTS `ghosts_app_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ghosts_app_source` (
  `sourceID` int(11) NOT NULL AUTO_INCREMENT,
  `dataID` varchar(100) NOT NULL,
  `sourceTitle` varchar(100) NOT NULL,
  `sourceWeb` varchar(100) NOT NULL,
  `sourceAuthor` varchar(100) NOT NULL,
  `sourceYear` varchar(100) NOT NULL,
  `sourcePublisher` varchar(100) NOT NULL,
  `sourceOther` varchar(100) NOT NULL,
  PRIMARY KEY (`sourceID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghosts_app_source`
--

LOCK TABLES `ghosts_app_source` WRITE;
/*!40000 ALTER TABLE `ghosts_app_source` DISABLE KEYS */;
INSERT INTO `ghosts_app_source` VALUES (1,'2','John Doe','alpha.com','beta','lambda','gamma','delta');
/*!40000 ALTER TABLE `ghosts_app_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghosts_app_year`
--

DROP TABLE IF EXISTS `ghosts_app_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ghosts_app_year` (
  `yearID` int(11) NOT NULL AUTO_INCREMENT,
  `yearName` varchar(100) NOT NULL,
  PRIMARY KEY (`yearID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghosts_app_year`
--

LOCK TABLES `ghosts_app_year` WRITE;
/*!40000 ALTER TABLE `ghosts_app_year` DISABLE KEYS */;
INSERT INTO `ghosts_app_year` VALUES (1,'1800 - 1819'),(2,'1820 - 1839'),(3,'1840 - 1859'),(4,'1860 - 1879');
/*!40000 ALTER TABLE `ghosts_app_year` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-27 18:42:37
