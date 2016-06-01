-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: facebook
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `messages_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_messages1_idx` (`messages_id`),
  KEY `fk_comments_users1_idx` (`users_id`),
  CONSTRAINT `fk_comments_messages1` FOREIGN KEY (`messages_id`) REFERENCES `messages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,22,6,'test','2016-05-15 11:35:49','2016-05-15 11:35:49',22,6),(2,22,6,'test','2016-05-15 11:56:52','2016-05-15 11:56:52',22,6),(3,22,6,'new comment','2016-05-15 12:17:11','2016-05-15 12:17:11',22,6),(4,22,6,'this is a comment','2016-05-15 12:18:28','2016-05-15 12:18:28',22,6),(5,22,23,'comment tester','2016-05-15 12:19:12','2016-05-15 12:19:12',22,23),(6,22,23,'testbdbsdbdbssdsdf','2016-05-15 12:26:31','2016-05-15 12:26:31',22,23),(7,22,23,'test','2016-05-15 12:32:55','2016-05-15 12:32:55',22,23),(8,22,23,'hello','2016-05-15 12:33:03','2016-05-15 12:33:03',22,23),(10,22,6,'please work','2016-05-15 12:41:53','2016-05-15 12:41:53',22,6),(11,22,6,'work work work work','2016-05-15 12:41:58','2016-05-15 12:41:58',22,6),(12,22,6,'new comment','2016-05-15 13:07:28','2016-05-15 13:07:28',22,6),(13,36,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',36,6),(14,35,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',35,6),(15,34,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',34,6),(16,33,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',33,6),(17,32,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',32,6),(18,31,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',31,6),(19,30,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',30,6),(20,29,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',29,6),(21,28,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',28,6),(22,27,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',27,6),(23,26,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',26,6),(24,25,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',25,6),(25,24,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',24,6),(26,22,6,'hello again','2016-05-15 13:11:31','2016-05-15 13:11:31',22,6),(27,36,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',36,6),(28,35,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',35,6),(29,34,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',34,6),(30,33,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',33,6),(31,32,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',32,6),(32,31,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',31,6),(33,30,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',30,6),(34,29,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',29,6),(35,28,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',28,6),(36,27,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',27,6),(37,26,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',26,6),(38,25,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',25,6),(39,24,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',24,6),(40,22,6,'this is a new comment','2016-05-15 13:11:49','2016-05-15 13:11:49',22,6),(41,22,23,'this is a new comment','2016-05-15 13:16:28','2016-05-15 13:16:28',22,23),(42,22,6,'test','2016-05-15 15:45:46','2016-05-15 15:45:46',22,6),(43,22,6,'this is a new comment','2016-05-15 15:45:55','2016-05-15 15:45:55',22,6),(44,22,6,'etst','2016-05-15 15:57:44','2016-05-15 15:57:44',22,6),(54,22,23,'new comment','2016-05-15 16:45:06','2016-05-15 16:45:06',22,23),(55,37,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',37,6),(56,36,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',36,6),(57,35,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',35,6),(58,34,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',34,6),(59,33,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',33,6),(60,32,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',32,6),(61,31,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',31,6),(62,30,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',30,6),(63,29,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',29,6),(64,28,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',28,6),(65,27,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',27,6),(66,26,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',26,6),(67,25,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',25,6),(68,24,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',24,6),(69,22,6,'i post a new comment','2016-05-15 17:02:29','2016-05-15 17:02:29',22,6),(70,37,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',37,6),(71,36,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',36,6),(72,35,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',35,6),(73,34,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',34,6),(74,33,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',33,6),(75,32,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',32,6),(76,31,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',31,6),(77,30,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',30,6),(78,29,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',29,6),(79,28,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',28,6),(80,27,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',27,6),(81,26,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',26,6),(82,25,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',25,6),(83,24,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',24,6),(84,22,6,'i quickly post a new comment','2016-05-15 17:03:07','2016-05-15 17:03:07',22,6),(85,37,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',37,23),(86,36,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',36,23),(87,35,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',35,23),(88,34,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',34,23),(89,33,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',33,23),(90,32,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',32,23),(91,31,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',31,23),(92,30,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',30,23),(93,29,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',29,23),(94,28,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',28,23),(95,27,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',27,23),(96,26,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',26,23),(97,25,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',25,23),(98,24,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',24,23),(99,22,23,'this is a new posted i just posted','2016-05-15 17:06:49','2016-05-15 17:06:49',22,23),(100,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(101,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(102,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(103,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(104,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(105,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(106,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(107,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(108,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(109,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(110,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(111,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(112,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(113,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(114,37,23,'this is my latest try','2016-05-15 17:22:03','2016-05-15 17:22:03',37,23),(115,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(116,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(117,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(118,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(119,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(120,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(121,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(122,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(123,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(124,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(125,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(126,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(127,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(128,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(129,24,23,'check out this comment, it is fucking ridiculous','2016-05-15 17:22:57','2016-05-15 17:22:57',24,23),(130,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(131,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(132,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(133,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(134,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(135,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(136,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(137,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(138,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(139,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(140,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(141,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(142,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(143,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(144,26,23,'bigswiningdick','2016-05-15 17:23:47','2016-05-15 17:23:47',26,23),(145,26,23,'jo gimme nuts','2016-05-15 18:51:32','2016-05-15 18:51:32',26,23),(146,37,23,'jo fuck you too you fucker','2016-05-15 18:52:07','2016-05-15 18:52:07',37,23),(147,38,23,'new comment','2016-05-15 21:50:04','2016-05-15 21:50:04',38,23),(148,34,23,'suck dick','2016-05-15 21:54:04','2016-05-15 21:54:04',34,23),(149,24,23,'fuck off','2016-05-15 21:54:19','2016-05-15 21:54:19',24,23),(150,38,23,'jo!','2016-05-15 21:54:46','2016-05-15 21:54:46',38,23),(151,38,23,'heyho','2016-05-15 22:28:33','2016-05-15 22:28:33',38,23),(152,39,23,'jojojojojo','2016-05-15 22:29:11','2016-05-15 22:29:11',39,23),(153,39,6,'boah nice','2016-05-15 22:52:48','2016-05-15 22:52:48',39,6),(154,39,23,'hey ho','2016-05-15 22:53:48','2016-05-15 22:53:48',39,23),(155,40,23,'new comment','2016-05-15 22:56:03','2016-05-15 22:56:03',40,23),(156,40,23,'new comment','2016-05-15 22:56:06','2016-05-15 22:56:06',40,23),(157,41,23,'what a post','2016-05-15 22:57:30','2016-05-15 22:57:30',41,23),(158,41,23,'what a post','2016-05-15 22:57:37','2016-05-15 22:57:37',41,23),(159,41,6,'new comment','2016-05-15 22:59:25','2016-05-15 22:59:25',41,6),(160,42,6,'new comment','2016-05-15 23:00:51','2016-05-15 23:00:51',42,6),(161,43,6,'new comment','2016-05-15 23:03:49','2016-05-15 23:03:49',43,6),(162,43,6,'new comment','2016-05-15 23:04:12','2016-05-15 23:04:12',43,6),(163,45,6,'unbelievable','2016-05-15 23:05:26','2016-05-15 23:05:26',45,6),(164,45,6,'comment','2016-05-15 23:08:02','2016-05-15 23:08:02',45,6),(165,45,6,'comment','2016-05-15 23:08:27','2016-05-15 23:08:27',45,6),(166,47,6,'post of a new comment','2016-05-15 23:16:02','2016-05-15 23:16:02',47,6),(167,54,6,'new comment','2016-05-16 06:32:43','2016-05-16 06:32:43',54,6),(168,54,6,'comment','2016-05-16 06:33:27','2016-05-16 06:33:27',54,6),(169,40,6,'give me that post','2016-05-16 06:33:39','2016-05-16 06:33:39',40,6),(170,44,6,'woah nice','2016-05-16 06:33:50','2016-05-16 06:33:50',44,6),(171,55,6,'new post','2016-05-16 06:35:01','2016-05-16 06:35:01',55,6),(172,55,6,'comment','2016-05-16 06:35:24','2016-05-16 06:35:24',55,6),(173,55,6,'comment','2016-05-16 06:37:46','2016-05-16 06:37:46',55,6),(174,55,6,'yeah','2016-05-16 06:37:57','2016-05-16 06:37:57',55,6),(175,55,6,'fuck that','2016-05-16 06:38:31','2016-05-16 06:38:31',55,6),(176,54,6,'yeeeeeeah','2016-05-16 06:38:51','2016-05-16 06:38:51',54,6),(177,56,23,'try and succeed','2016-05-16 06:46:33','2016-05-16 06:46:33',56,23),(178,56,23,'bam instagram','2016-05-16 06:46:43','2016-05-16 06:46:43',56,23),(179,56,23,'sextape, gina lisa von hinten','2016-05-16 06:46:56','2016-05-16 06:46:56',56,23),(180,57,6,'new comment','2016-05-16 07:46:31','2016-05-16 07:46:31',57,6),(181,58,24,'new comment','2016-05-16 07:46:55','2016-05-16 07:46:55',58,24),(182,57,24,'comment','2016-05-16 07:47:00','2016-05-16 07:47:00',57,24),(183,57,24,'yeah','2016-05-16 07:47:09','2016-05-16 07:47:09',57,24),(184,58,23,'let me comment this','2016-05-16 08:04:52','2016-05-16 08:04:52',58,23),(185,58,29,'beste','2016-05-16 08:08:48','2016-05-16 08:08:48',58,29),(186,58,30,'prinzpi','2016-05-16 08:34:54','2016-05-16 08:34:54',58,30);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_messages_users_idx` (`users_id`),
  CONSTRAINT `fk_messages_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (22,2,'test','2016-05-14 20:31:12','2016-05-14 20:31:12',2),(24,3,'test','2016-05-14 20:32:36','2016-05-14 20:32:36',3),(25,6,'test','2016-05-14 23:50:25','2016-05-14 23:50:25',6),(26,6,'test','2016-05-14 23:52:46','2016-05-14 23:52:46',6),(27,6,'hello again ','2016-05-15 08:16:25','2016-05-15 08:16:25',6),(28,6,'suck my duck sucker','2016-05-15 08:16:34','2016-05-15 08:16:34',6),(29,23,'ducktape tapes the duck','2016-05-15 08:19:27','2016-05-15 08:19:27',23),(30,23,'enter a new message','2016-05-15 08:30:37','2016-05-15 08:30:37',23),(31,6,'whoa nice','2016-05-15 09:12:01','2016-05-15 09:12:01',6),(32,23,'whoa nice','2016-05-15 09:13:19','2016-05-15 09:13:19',23),(33,6,'whoa nice','2016-05-15 10:04:50','2016-05-15 10:04:50',6),(34,6,'test','2016-05-15 10:10:09','2016-05-15 10:10:09',6),(35,6,'test','2016-05-15 10:16:40','2016-05-15 10:16:40',6),(36,6,'new post','2016-05-15 13:07:17','2016-05-15 13:07:17',6),(37,23,'new message','2016-05-15 16:42:14','2016-05-15 16:42:14',23),(38,23,'this is a new message','2016-05-15 21:49:58','2016-05-15 21:49:58',23),(39,23,'buum','2016-05-15 22:28:57','2016-05-15 22:28:57',23),(40,23,'new post','2016-05-15 22:53:54','2016-05-15 22:53:54',23),(41,23,'new message','2016-05-15 22:57:23','2016-05-15 22:57:23',23),(42,6,'new post','2016-05-15 23:00:45','2016-05-15 23:00:45',6),(43,6,'new message','2016-05-15 23:03:42','2016-05-15 23:03:42',6),(44,6,'','2016-05-15 23:05:12','2016-05-15 23:05:12',6),(45,6,'what a post','2016-05-15 23:05:19','2016-05-15 23:05:19',6),(46,6,'','2016-05-15 23:15:47','2016-05-15 23:15:47',6),(47,6,'post of a new message','2016-05-15 23:15:56','2016-05-15 23:15:56',6),(54,24,'new message','2016-05-16 06:31:02','2016-05-16 06:31:02',24),(55,6,'new comment','2016-05-16 06:34:50','2016-05-16 06:34:50',6),(56,23,'try and see','2016-05-16 06:46:28','2016-05-16 06:46:28',23),(57,6,'hello','2016-05-16 07:46:24','2016-05-16 07:46:24',6),(58,24,'new message','2016-05-16 07:46:52','2016-05-16 07:46:52',24);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alexander','Johann Eser','test@test','','2016-05-13 11:18:49','2016-05-13 11:18:49'),(2,'Alexander','Johann Eser','test@test','Dirkules41','2016-05-13 11:25:58','2016-05-13 11:25:58'),(3,'alexander ','ice','iceman@gmail.com','test41','2016-05-13 11:26:18','2016-05-13 11:26:18'),(4,'katja','kauf','katja.kauf@gmx.de','Dirkules41','2016-05-13 11:36:31','2016-05-13 11:36:31'),(5,'julia','kauf','julia.kauf@gmx.com','345','2016-05-13 11:37:38','2016-05-13 11:37:38'),(6,'julia','kauf','julia.kauf@gmail.com','Dirkules41','2016-05-13 11:41:10','2016-05-13 11:41:10'),(7,'','','','','2016-05-13 11:41:32','2016-05-13 11:41:32'),(8,'laura','matini','l.martini@gmail.com','Dirkules41','2016-05-13 18:49:18','2016-05-13 18:49:18'),(9,'laura','matini','l.martini@gmail.com','Dirkules41','2016-05-13 19:43:29','2016-05-13 19:43:29'),(10,'fatih','yilmaz','fy@gmail.com','lebron06','2016-05-13 20:04:35','2016-05-13 20:04:35'),(11,'fatih','yilmaz','fy@gmail.com','lebron06','2016-05-13 20:07:13','2016-05-13 20:07:13'),(12,'alex','eser','aeser@me.com','Dirkules41','2016-05-13 20:45:58','2016-05-13 20:45:58'),(13,'see','errr','a@me.com','Dirkules','2016-05-13 20:47:18','2016-05-13 20:47:18'),(14,'alex','ester','ame@cane.com','asdfgh','2016-05-13 20:48:24','2016-05-13 20:48:24'),(15,'alexander','eser','alexander.eser@googlemail.com','lebron06','2016-05-13 20:48:46','2016-05-13 20:48:46'),(16,'alex','eser','bimbo@blackdick.com','yilmaz','2016-05-13 21:04:51','2016-05-13 21:04:51'),(17,'fatih','yilmaz','fatih.yilmaz@dickhall.com','Dirkules41','2016-05-13 21:06:12','2016-05-13 21:06:12'),(18,'fatih','yilmaz','duckpic@rules.com','Herkules','2016-05-13 21:09:32','2016-05-13 21:09:32'),(19,'alex','eser','alexander.eser@googlemail.com','Dirkules41','2016-05-13 23:17:30','2016-05-13 23:17:30'),(20,'julia','SS','juliass@norge.com','guappa','2016-05-14 08:13:41','2016-05-14 08:13:41'),(21,'','','','','2016-05-14 08:16:15','2016-05-14 08:16:15'),(22,'test','testetestts','tests@nsnns.com','lebron06','2016-05-14 21:41:35','2016-05-14 21:41:35'),(23,'marc','schÃ¶nwasser','ms@gmx.de','Dirkules41','2016-05-15 08:18:57','2016-05-15 08:18:57'),(24,'alexander','eser','alexander.eser@me.com','lebron06','2016-05-16 06:21:50','2016-05-16 06:21:50'),(25,'m','esa','send.ccd','dse','2016-05-16 06:57:30','2016-05-16 06:57:30'),(26,'jo','dd','asks.sds','ssdd','2016-05-16 07:10:11','2016-05-16 07:10:11'),(27,'sabine','eser','se@gmail.com','Dirkules41','2016-05-16 07:21:08','2016-05-16 07:21:08'),(28,'gerald','eser','ge@gmx.de','Dirkules41','2016-05-16 07:24:39','2016-05-16 07:24:39'),(29,'gina lisa','lohfink','fume@fume.com','fume66','2016-05-16 08:08:31','2016-05-16 08:08:31'),(30,'prinz','pi','pp@pp.com','prinzpi','2016-05-16 08:34:35','2016-05-16 08:34:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-16  8:40:30
