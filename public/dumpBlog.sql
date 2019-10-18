-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: Blog
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(225) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(225) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (4,'Sport','niceee sport',NULL,0,'sport',1),(5,'Tech','--',NULL,0,'tech',1),(6,'Gamta','--',NULL,0,'gamta',1),(7,'krepsinis','--',NULL,4,'krepsinis',1),(8,'futbolas','--',NULL,4,'futbolas',1),(9,'IT','--',NULL,5,'it',1),(10,'Robotai','--',NULL,5,'Robotai',1),(11,'Pauksciai','--',NULL,6,'Pauksciai',1),(12,'Ezerai','--',NULL,6,'Ezerai',0),(14,'NEWS','--',NULL,0,'news',1),(15,'WORLD-News','--',NULL,14,'world-news',1),(21,'sSport','nice sport',NULL,0,'ssport',0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_posts`
--

DROP TABLE IF EXISTS `category_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '11',
  `category_id` int(11) NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_posts`
--

LOCK TABLES `category_posts` WRITE;
/*!40000 ALTER TABLE `category_posts` DISABLE KEYS */;
INSERT INTO `category_posts` VALUES (453,20,4),(455,19,4),(458,12,4),(459,12,5),(465,11,4),(469,21,6),(604,9,4),(605,9,14);
/*!40000 ALTER TABLE `category_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `comment` varchar(225) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (38,32,'nice pic',1,NULL,11),(39,32,'oo, dnr, wow',1,NULL,9),(40,32,';DDD',1,NULL,19),(41,32,'ka cia rodai',1,NULL,21),(42,32,'office?',1,NULL,11),(43,32,'fsafsasd',1,NULL,11);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (9,'New Post 6','                                        Post Contentaceeawccfasc\r\n    safdfasdfsgasgasgaewwca                ','2019-08-02 17:39:08',-4,'1i0NH.gif',1),(11,'New Post 630','                Post Content\r\n    fadsgbhgksdghfjahglashgjlashdgl;adwgjkafdhaf    ','2019-08-02 17:31:20',1,'download.jpg',1),(12,'New Post 3','        fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs    ','2019-08-02 17:31:20',3,'download.jpg',0),(13,'New Post 3','        fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs    ','2019-08-02 17:31:20',3,'download.jpg',0),(14,'New Post 3','        fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs    ','2019-08-02 17:31:20',3,'download.jpg',0),(15,'New Post 3','        fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs    ','2019-08-02 17:31:20',3,'download.jpg',0),(16,'New Post 3','        fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs    ','2019-08-02 17:31:20',3,'download.jpg',0),(17,'New Post 3','        fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs    ','2019-08-02 17:31:20',3,'download.jpg',0),(18,'New Post 3','        fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs    ','2019-08-02 17:31:20',3,'download.jpg',0),(19,'New Post 33','                fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs        ','2019-08-02 17:31:20',3,'download.jpg',1),(20,'New Post 3','        fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs    ','2019-08-02 17:31:20',3,'download.jpg',1),(21,'New Post 03','        fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs    ','2019-08-02 17:31:20',3,'download.jpg',1),(22,'New Post 3','        fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs    ','2019-08-02 17:31:20',3,'download.jpg',0),(23,'New Post 3','        fcjlasjkdgfadfhldksfafdljkgjagfdgsdgsfgsdgsdgs    ','2019-08-02 17:31:20',3,'download.jpg',0);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `role_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(60) DEFAULT NULL,
  `tries_to_login` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (32,'Admin','543db676c925a163e6acab48328a5f04','rgunia@gmail.com',1,1,'4xwinhz1vkso2bqy',0),(53,'Unnamed','','',0,0,'r53dig14h4evsgrq',5),(54,'VansenRZ','7ebbaad24b3ef16ade8801a95ce59ab3','valerasomov80@mail.ru',1,1,'bisgk5tx7k0x4cgr',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-09 16:24:46
