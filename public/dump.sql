-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: skelbimai
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
-- Table structure for table `adverts`
--

DROP TABLE IF EXISTS `adverts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adverts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `price` double(8,2) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `atribute_set_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adverts`
--

LOCK TABLES `adverts` WRITE;
/*!40000 ALTER TABLE `adverts` DISABLE KEYS */;
INSERT INTO `adverts` VALUES (37,'Parduodu masina','geta masina','https://www.bmw-m.com/content/dam/bmw/marketBMW_M/common/topics/magazine-article-pool/2018/bmw-m3-e36/bmw-e36-m3-social-image.jpg',1,1200.00,1,100,2,1,'parduodu-masina','2019-09-25 16:27:13','2019-09-25 16:27:13','2019-12-25',1),(38,'ford mustangas','Deutsche Papiere !\r\n\r\nVokiški dokumentai !\r\n\r\nAutomobilis kaip naujas !\r\n\r\nGalima patikra Ford servise !\r\n\r\nKeitimo kaina 28.000€','https://autoplius.b-cdn.net/ann_2_92667415/ford-mustang-3-7-l-hecbekas-2016-benzinas.jpg',1,22500.00,1,100,1,1,'ford-mustangas','2019-09-25 20:53:07','2019-09-25 20:53:07','2019-12-25',1),(39,'audziuxa','Nuo 2010m. automobilį vairavo moteris, nuolat jį prižiurėjo. Važiuoklė ideali, jokių pašalinių garsų ar barškesių. Neseniai lankytasi autoservise, kur pakeistos priekinės stabdžių kaladėlės. Kitų pastabų nerasta. Kilometražas didelis, tačiau daug pravažiuota Vilnius - Kaunas greitkeliu, taigi tikrai neatspindi realaus šio automobilio būklės lyginant su kitomis transporto priemonės pravažiavusiomis panašų kilometražą. Galimas apsižiūrėjimas ir testo pravažiavimas to isitikinimui.','https://autoplius.b-cdn.net/ann_2_92721947/audi-a4-2-0-l-sedan-2008-dizel.jpg',1,2650.00,1,100,2,1,'audziuxa','2019-09-25 20:55:25','2019-09-25 20:55:25','2019-12-25',1),(40,'jegas','Visus paskolos automobiliui reikalus galite operatyviai sutvarkyti čia! Teigiamo atsakymo atveju, pinigus pervesime į jūsų sąskaitą, o jūs per 60 dienų galėsite įsigyti automobilį pas bet kurį pardavėją. Nereikia pradinio įnašo, įkeitimo ar KASKO, o paskolos dydis gali siekti 25 000 €.','https://autoplius.b-cdn.net/ann_2_92708079/jaguar-xf-2-2-l-sedanas-2015-dyzelinas.jpg',1,13999.00,1,100,5,1,'jegas','2019-09-25 20:56:55','2019-09-25 20:56:55','2019-12-25',1),(41,'mb','Tvarkingas mersas.','https://autoplius.b-cdn.net/ann_2_92732511/mercedes-benz-c180-1-8-l-universalas-2008-benzinas.jpg',1,6500.00,1,100,4,1,'mb','2019-09-25 20:58:56','2019-09-25 20:58:56','2019-12-25',1),(42,'mazde','Tvarkingas madzas.','https://autoplius.b-cdn.net/ann_2_92660719/mazda-6-2-5-l-sedanas-2017-benzinas.jpg',1,13500.00,1,100,3,1,'mazde','2019-09-25 21:00:59','2019-09-25 21:00:59','2019-12-25',1),(43,'sdaf','fdas','asdf',1,231.00,1,100,2,1,'sdaf','2019-10-02 15:59:05','2019-10-02 15:59:05','2020-01-02',1);
/*!40000 ALTER TABLE `adverts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atribute_set_realations`
--

DROP TABLE IF EXISTS `atribute_set_realations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atribute_set_realations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) NOT NULL,
  `attribute_set_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atribute_set_realations`
--

LOCK TABLES `atribute_set_realations` WRITE;
/*!40000 ALTER TABLE `atribute_set_realations` DISABLE KEYS */;
INSERT INTO `atribute_set_realations` VALUES (36,33,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(37,34,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(38,35,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(39,36,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(40,37,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(41,38,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(42,39,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(43,40,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(44,41,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(45,42,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(46,43,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(47,44,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(48,45,10,'2019-09-23 16:57:32','2019-09-23 16:57:32');
/*!40000 ALTER TABLE `atribute_set_realations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atribute_sets`
--

DROP TABLE IF EXISTS `atribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atribute_sets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atribute_sets`
--

LOCK TABLES `atribute_sets` WRITE;
/*!40000 ALTER TABLE `atribute_sets` DISABLE KEYS */;
INSERT INTO `atribute_sets` VALUES (10,'auto','2019-09-23 16:57:00','2019-09-23 16:57:00');
/*!40000 ALTER TABLE `atribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atribute_types`
--

DROP TABLE IF EXISTS `atribute_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atribute_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atribute_types`
--

LOCK TABLES `atribute_types` WRITE;
/*!40000 ALTER TABLE `atribute_types` DISABLE KEYS */;
INSERT INTO `atribute_types` VALUES (3,'number','2019-09-10 16:48:19','2019-09-10 16:48:19'),(4,'text','2019-09-10 16:48:30','2019-09-10 16:48:30'),(5,'checkbox','2019-09-10 16:58:30','2019-09-10 16:58:30'),(6,'select','2019-09-23 16:45:38','2019-09-23 16:45:38');
/*!40000 ALTER TABLE `atribute_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atribute_values`
--

DROP TABLE IF EXISTS `atribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atribute_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) NOT NULL,
  `advert_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atribute_values`
--

LOCK TABLES `atribute_values` WRITE;
/*!40000 ALTER TABLE `atribute_values` DISABLE KEYS */;
INSERT INTO `atribute_values` VALUES (158,33,37,'BMW','2019-09-25 16:27:13','2019-09-25 16:27:13'),(159,34,37,' - 323i','2019-09-25 16:27:13','2019-09-25 16:27:13'),(160,35,37,'1999','2019-09-25 16:27:13','2019-09-25 16:27:13'),(161,36,37,'06','2019-09-25 16:27:14','2019-09-25 16:27:14'),(162,37,37,'Benzinas','2019-09-25 16:27:14','2019-09-25 16:27:14'),(163,38,37,'Hečbekas','2019-09-25 16:27:14','2019-09-25 16:27:14'),(164,39,37,'Mechaninė','2019-09-25 16:27:14','2019-09-25 16:27:14'),(165,40,37,'2/3','2019-09-25 16:27:14','2019-09-25 16:27:14'),(166,41,37,'2.3','2019-09-25 16:27:14','2019-09-25 16:27:14'),(167,42,37,'Kairėje','2019-09-25 16:27:14','2019-09-25 16:27:14'),(168,43,37,'Be defektų','2019-09-25 16:27:14','2019-09-25 16:27:14'),(169,44,37,'300000','2019-09-25 16:27:14','2019-09-25 16:27:14'),(170,45,37,'1','2019-09-25 16:27:14','2019-09-25 16:27:14'),(171,33,38,'Ford','2019-09-25 20:53:07','2019-09-25 20:53:07'),(172,34,38,'Mustang','2019-09-25 20:53:07','2019-09-25 20:53:07'),(173,35,38,'2016','2019-09-25 20:53:07','2019-09-25 20:53:07'),(174,36,38,'12','2019-09-25 20:53:07','2019-09-25 20:53:07'),(175,37,38,'Benzinas','2019-09-25 20:53:07','2019-09-25 20:53:07'),(176,38,38,'Sedanas','2019-09-25 20:53:07','2019-09-25 20:53:07'),(177,39,38,'Pavarų dėžė','2019-09-25 20:53:07','2019-09-25 20:53:07'),(178,40,38,'4/5','2019-09-25 20:53:07','2019-09-25 20:53:07'),(179,41,38,'3.7','2019-09-25 20:53:07','2019-09-25 20:53:07'),(180,42,38,'Kairėje','2019-09-25 20:53:07','2019-09-25 20:53:07'),(181,43,38,'Be defektų','2019-09-25 20:53:07','2019-09-25 20:53:07'),(182,44,38,'4600','2019-09-25 20:53:07','2019-09-25 20:53:07'),(183,33,39,'Audi','2019-09-25 20:55:25','2019-09-25 20:55:25'),(184,34,39,'A4','2019-09-25 20:55:25','2019-09-25 20:55:25'),(185,35,39,'2008','2019-09-25 20:55:25','2019-09-25 20:55:25'),(186,36,39,'05','2019-09-25 20:55:25','2019-09-25 20:55:25'),(187,37,39,'Dyzelinas','2019-09-25 20:55:25','2019-09-25 20:55:25'),(188,38,39,'Sedanas','2019-09-25 20:55:25','2019-09-25 20:55:25'),(189,39,39,'Automatinė','2019-09-25 20:55:25','2019-09-25 20:55:25'),(190,40,39,'4/5','2019-09-25 20:55:25','2019-09-25 20:55:25'),(191,41,39,'2.0','2019-09-25 20:55:25','2019-09-25 20:55:25'),(192,42,39,'Dešinėje','2019-09-25 20:55:25','2019-09-25 20:55:25'),(193,43,39,'Be defektų','2019-09-25 20:55:25','2019-09-25 20:55:25'),(194,44,39,'346700','2019-09-25 20:55:25','2019-09-25 20:55:25'),(195,45,39,'1','2019-09-25 20:55:25','2019-09-25 20:55:25'),(196,33,40,'Jaguar','2019-09-25 20:56:55','2019-09-25 20:56:55'),(197,34,40,'XF','2019-09-25 20:56:55','2019-09-25 20:56:55'),(198,35,40,'2015','2019-09-25 20:56:55','2019-09-25 20:56:55'),(199,36,40,'05','2019-09-25 20:56:55','2019-09-25 20:56:55'),(200,37,40,'Dyzelinas','2019-09-25 20:56:55','2019-09-25 20:56:55'),(201,38,40,'Sedanas','2019-09-25 20:56:55','2019-09-25 20:56:55'),(202,39,40,'Automatinė','2019-09-25 20:56:55','2019-09-25 20:56:55'),(203,40,40,'4/5','2019-09-25 20:56:55','2019-09-25 20:56:55'),(204,41,40,'2.2','2019-09-25 20:56:55','2019-09-25 20:56:55'),(205,42,40,'Kairėje','2019-09-25 20:56:55','2019-09-25 20:56:55'),(206,43,40,'Be defektų','2019-09-25 20:56:55','2019-09-25 20:56:55'),(207,44,40,'93000','2019-09-25 20:56:55','2019-09-25 20:56:55'),(208,45,40,'1','2019-09-25 20:56:55','2019-09-25 20:56:55'),(209,33,41,'Mercedes-Benz','2019-09-25 20:58:56','2019-09-25 20:58:56'),(210,34,41,' - C220','2019-09-25 20:58:56','2019-09-25 20:58:56'),(211,35,41,'2008','2019-09-25 20:58:56','2019-09-25 20:58:56'),(212,36,41,'06','2019-09-25 20:58:56','2019-09-25 20:58:56'),(213,37,41,'Benzinas','2019-09-25 20:58:56','2019-09-25 20:58:56'),(214,38,41,'Sedanas','2019-09-25 20:58:56','2019-09-25 20:58:56'),(215,39,41,'Automatinė','2019-09-25 20:58:56','2019-09-25 20:58:56'),(216,40,41,'4/5','2019-09-25 20:58:56','2019-09-25 20:58:56'),(217,41,41,'2.0','2019-09-25 20:58:56','2019-09-25 20:58:56'),(218,42,41,'Kairėje','2019-09-25 20:58:56','2019-09-25 20:58:56'),(219,43,41,'Be defektų','2019-09-25 20:58:56','2019-09-25 20:58:56'),(220,44,41,'193000','2019-09-25 20:58:56','2019-09-25 20:58:56'),(221,33,42,'Mazda','2019-09-25 21:00:59','2019-09-25 21:00:59'),(222,34,42,'MAZDA6','2019-09-25 21:00:59','2019-09-25 21:00:59'),(223,35,42,'2017','2019-09-25 21:00:59','2019-09-25 21:00:59'),(224,36,42,'05','2019-09-25 21:00:59','2019-09-25 21:00:59'),(225,37,42,'Benzinas','2019-09-25 21:00:59','2019-09-25 21:00:59'),(226,38,42,'Sedanas','2019-09-25 21:00:59','2019-09-25 21:00:59'),(227,39,42,'Automatinė','2019-09-25 21:00:59','2019-09-25 21:00:59'),(228,40,42,'4/5','2019-09-25 21:00:59','2019-09-25 21:00:59'),(229,41,42,'2.5','2019-09-25 21:00:59','2019-09-25 21:00:59'),(230,42,42,'Kairėje','2019-09-25 21:00:59','2019-09-25 21:00:59'),(231,43,42,'Be defektų','2019-09-25 21:00:59','2019-09-25 21:00:59'),(232,44,42,'52000','2019-09-25 21:00:59','2019-09-25 21:00:59'),(233,33,43,'BMW','2019-10-02 15:59:05','2019-10-02 15:59:05'),(234,34,43,' - 318iS','2019-10-02 15:59:05','2019-10-02 15:59:05'),(235,35,43,'1927','2019-10-02 15:59:05','2019-10-02 15:59:05'),(236,36,43,'05','2019-10-02 15:59:05','2019-10-02 15:59:05'),(237,37,43,'Benzinas/Elektra','2019-10-02 15:59:05','2019-10-02 15:59:05'),(238,38,43,'Kombi mikroautobusas','2019-10-02 15:59:05','2019-10-02 15:59:05'),(239,39,43,'Mechaninė','2019-10-02 15:59:05','2019-10-02 15:59:05'),(240,40,43,'4/5','2019-10-02 15:59:05','2019-10-02 15:59:05'),(241,41,43,'fasdf','2019-10-02 15:59:05','2019-10-02 15:59:05'),(242,42,43,'Kairėje','2019-10-02 15:59:05','2019-10-02 15:59:05'),(243,43,43,'Skendęs','2019-10-02 15:59:05','2019-10-02 15:59:05'),(244,44,43,'113312313','2019-10-02 15:59:05','2019-10-02 15:59:05'),(245,45,43,'1','2019-10-02 15:59:05','2019-10-02 15:59:05');
/*!40000 ALTER TABLE `atribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atributes`
--

DROP TABLE IF EXISTS `atributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atributes`
--

LOCK TABLES `atributes` WRITE;
/*!40000 ALTER TABLE `atributes` DISABLE KEYS */;
INSERT INTO `atributes` VALUES (33,'mark',6,'2019-09-23 16:47:13','2019-09-23 16:47:13','Markė'),(34,'model',6,'2019-09-23 16:47:51','2019-09-23 16:47:51','Modelis'),(35,'year',6,'2019-09-23 16:48:05','2019-09-23 16:48:05','Metai'),(36,'month',6,'2019-09-23 16:48:23','2019-09-23 16:48:23','Mėnesis'),(37,'petrol_type',6,'2019-09-23 16:48:55','2019-09-23 16:48:55','Kuro tipas'),(38,'body_type',6,'2019-09-23 16:49:39','2019-09-23 16:49:39','Kėbulo tipas'),(39,'transmision',6,'2019-09-23 16:50:09','2019-09-23 16:50:09','Pavarų dėžė'),(40,'door_number',6,'2019-09-23 16:50:23','2019-09-23 16:50:23','Durų skaičius'),(41,'engine_volume',4,'2019-09-23 16:51:40','2019-09-23 16:51:40','Darbinis tūris (litrai)'),(42,'steering_wheel_side',6,'2019-09-23 16:53:01','2019-09-23 16:53:01','Vairo padėtis'),(43,'defects',6,'2019-09-23 16:54:38','2019-09-23 16:54:38','Defektai'),(44,'odo',3,'2019-09-23 16:55:29','2019-09-23 16:55:29','Rida, km'),(45,'changing',5,'2019-09-23 16:56:18','2019-09-23 16:56:18','Domina keitimas');
/*!40000 ALTER TABLE `atributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_data`
--

DROP TABLE IF EXISTS `attribute_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_data`
--

LOCK TABLES `attribute_data` WRITE;
/*!40000 ALTER TABLE `attribute_data` DISABLE KEYS */;
INSERT INTO `attribute_data` VALUES (1,'1915',35,NULL,NULL),(2,'1916',35,NULL,NULL),(3,'1917',35,NULL,NULL),(4,'1918',35,NULL,NULL),(5,'1919',35,NULL,NULL),(6,'1920',35,NULL,NULL),(7,'1921',35,NULL,NULL),(8,'1922',35,NULL,NULL),(9,'1923',35,NULL,NULL),(10,'1924',35,NULL,NULL),(11,'1925',35,NULL,NULL),(12,'1926',35,NULL,NULL),(13,'1927',35,NULL,NULL),(14,'1928',35,NULL,NULL),(15,'1929',35,NULL,NULL),(16,'1930',35,NULL,NULL),(17,'1931',35,NULL,NULL),(18,'1932',35,NULL,NULL),(19,'1933',35,NULL,NULL),(20,'1934',35,NULL,NULL),(21,'1935',35,NULL,NULL),(22,'1936',35,NULL,NULL),(23,'1937',35,NULL,NULL),(24,'1938',35,NULL,NULL),(25,'1939',35,NULL,NULL),(26,'1940',35,NULL,NULL),(27,'1941',35,NULL,NULL),(28,'1942',35,NULL,NULL),(29,'1943',35,NULL,NULL),(30,'1944',35,NULL,NULL),(31,'1945',35,NULL,NULL),(32,'1946',35,NULL,NULL),(33,'1947',35,NULL,NULL),(34,'1948',35,NULL,NULL),(35,'1949',35,NULL,NULL),(36,'1950',35,NULL,NULL),(37,'1951',35,NULL,NULL),(38,'1952',35,NULL,NULL),(39,'1953',35,NULL,NULL),(40,'1954',35,NULL,NULL),(41,'1955',35,NULL,NULL),(42,'1956',35,NULL,NULL),(43,'1957',35,NULL,NULL),(44,'1958',35,NULL,NULL),(45,'1959',35,NULL,NULL),(46,'1960',35,NULL,NULL),(47,'1961',35,NULL,NULL),(48,'1962',35,NULL,NULL),(49,'1963',35,NULL,NULL),(50,'1964',35,NULL,NULL),(51,'1965',35,NULL,NULL),(52,'1966',35,NULL,NULL),(53,'1967',35,NULL,NULL),(54,'1968',35,NULL,NULL),(55,'1969',35,NULL,NULL),(56,'1970',35,NULL,NULL),(57,'1971',35,NULL,NULL),(58,'1972',35,NULL,NULL),(59,'1973',35,NULL,NULL),(60,'1974',35,NULL,NULL),(61,'1975',35,NULL,NULL),(62,'1976',35,NULL,NULL),(63,'1977',35,NULL,NULL),(64,'1978',35,NULL,NULL),(65,'1979',35,NULL,NULL),(66,'1980',35,NULL,NULL),(67,'1981',35,NULL,NULL),(68,'1982',35,NULL,NULL),(69,'1983',35,NULL,NULL),(70,'1984',35,NULL,NULL),(71,'1985',35,NULL,NULL),(72,'1986',35,NULL,NULL),(73,'1987',35,NULL,NULL),(74,'1988',35,NULL,NULL),(75,'1989',35,NULL,NULL),(76,'1990',35,NULL,NULL),(77,'1991',35,NULL,NULL),(78,'1992',35,NULL,NULL),(79,'1993',35,NULL,NULL),(80,'1994',35,NULL,NULL),(81,'1995',35,NULL,NULL),(82,'1996',35,NULL,NULL),(83,'1997',35,NULL,NULL),(84,'1998',35,NULL,NULL),(85,'1999',35,NULL,NULL),(86,'2000',35,NULL,NULL),(87,'2001',35,NULL,NULL),(88,'2002',35,NULL,NULL),(89,'2003',35,NULL,NULL),(90,'2004',35,NULL,NULL),(91,'2005',35,NULL,NULL),(92,'2006',35,NULL,NULL),(93,'2007',35,NULL,NULL),(94,'2008',35,NULL,NULL),(95,'2009',35,NULL,NULL),(96,'2010',35,NULL,NULL),(97,'2011',35,NULL,NULL),(98,'2012',35,NULL,NULL),(99,'2013',35,NULL,NULL),(100,'2014',35,NULL,NULL),(101,'2015',35,NULL,NULL),(102,'2016',35,NULL,NULL),(103,'2017',35,NULL,NULL),(104,'2018',35,NULL,NULL),(105,'2019',35,NULL,NULL),(106,'01',36,NULL,NULL),(107,'02',36,NULL,NULL),(108,'03',36,NULL,NULL),(109,'04',36,NULL,NULL),(110,'05',36,NULL,NULL),(111,'06',36,NULL,NULL),(112,'07',36,NULL,NULL),(113,'08',36,NULL,NULL),(114,'09',36,NULL,NULL),(115,'10',36,NULL,NULL),(116,'11',36,NULL,NULL),(117,'12',36,NULL,NULL),(118,'Dyzelinas',37,NULL,NULL),(119,'Benzinas',37,NULL,NULL),(120,'Benzinas/Dujos',37,NULL,NULL),(121,'Benzinas/Elektra',37,NULL,NULL),(122,'Elektra',37,NULL,NULL),(123,'Dyzelis/Elektra',37,NULL,NULL),(124,'Dujos',37,NULL,NULL),(125,'Etanolis',37,NULL,NULL),(126,'Kitas',37,NULL,NULL),(127,'Sedanas',38,NULL,NULL),(128,'Hečbekas',38,NULL,NULL),(129,'Universalas',38,NULL,NULL),(130,'Visurėgis',38,NULL,NULL),(131,'Vienatūris',38,NULL,NULL),(132,'Coupe',38,NULL,NULL),(133,'Kabrioletas',38,NULL,NULL),(134,'Keleivinis mikroautobusas',38,NULL,NULL),(135,'Kombi mikroautobusas',38,NULL,NULL),(136,'Krovininis mikroautobusas',38,NULL,NULL),(137,'Komercinis auto (su būda)',38,NULL,NULL),(138,'Pikapas',38,NULL,NULL),(139,'Limuzinas',38,NULL,NULL),(140,'Savadarbis auto',38,NULL,NULL),(141,'Mechaninė',39,NULL,NULL),(142,'Automatinė',39,NULL,NULL),(143,'2/3',40,NULL,NULL),(144,'4/5',40,NULL,NULL),(145,'6/7',40,NULL,NULL),(146,'Kairėje',42,NULL,NULL),(147,'Dešinėje',42,NULL,NULL),(148,'Be defektų',43,NULL,NULL),(149,'Daužtas',43,NULL,NULL),(150,'Degęs',43,NULL,NULL),(151,'Pavarų dėžės defektas',43,NULL,NULL),(152,'Pažeistas krušos',43,NULL,NULL),(153,'Skendęs',43,NULL,NULL),(154,'Variklio defektas',43,NULL,NULL),(155,'Kiti stambus defektai',43,NULL,NULL);
/*!40000 ALTER TABLE `attribute_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_makes`
--

DROP TABLE IF EXISTS `car_makes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_makes` (
  `id` int(11) NOT NULL,
  `make` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lable` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attribute_id` int(11) NOT NULL DEFAULT '33'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_makes`
--

LOCK TABLES `car_makes` WRITE;
/*!40000 ALTER TABLE `car_makes` DISABLE KEYS */;
INSERT INTO `car_makes` VALUES (1,'ACURA','Acura',NULL,NULL,33),(2,'ALFA','Alfa Romeo',NULL,NULL,33),(3,'AMC','AMC',NULL,NULL,33),(4,'ASTON','Aston Martin',NULL,NULL,33),(5,'AUDI','Audi',NULL,NULL,33),(6,'AVANTI','Avanti',NULL,NULL,33),(7,'BENTL','Bentley',NULL,NULL,33),(8,'BMW','BMW',NULL,NULL,33),(9,'BUICK','Buick',NULL,NULL,33),(10,'CAD','Cadillac',NULL,NULL,33),(11,'CHEV','Chevrolet',NULL,NULL,33),(12,'CHRY','Chrysler',NULL,NULL,33),(13,'DAEW','Daewoo',NULL,NULL,33),(14,'DAIHAT','Daihatsu',NULL,NULL,33),(15,'DATSUN','Datsun',NULL,NULL,33),(16,'DELOREAN','DeLorean',NULL,NULL,33),(17,'DODGE','Dodge',NULL,NULL,33),(18,'EAGLE','Eagle',NULL,NULL,33),(19,'FER','Ferrari',NULL,NULL,33),(20,'FIAT','FIAT',NULL,NULL,33),(21,'FISK','Fisker',NULL,NULL,33),(22,'FORD','Ford',NULL,NULL,33),(23,'FREIGHT','Freightliner',NULL,NULL,33),(24,'GEO','Geo',NULL,NULL,33),(25,'GMC','GMC',NULL,NULL,33),(26,'HONDA','Honda',NULL,NULL,33),(27,'AMGEN','HUMMER',NULL,NULL,33),(28,'HYUND','Hyundai',NULL,NULL,33),(29,'INFIN','Infiniti',NULL,NULL,33),(30,'ISU','Isuzu',NULL,NULL,33),(31,'JAG','Jaguar',NULL,NULL,33),(32,'JEEP','Jeep',NULL,NULL,33),(33,'KIA','Kia',NULL,NULL,33),(34,'LAM','Lamborghini',NULL,NULL,33),(35,'LAN','Lancia',NULL,NULL,33),(36,'ROV','Land Rover',NULL,NULL,33),(37,'LEXUS','Lexus',NULL,NULL,33),(38,'LINC','Lincoln',NULL,NULL,33),(39,'LOTUS','Lotus',NULL,NULL,33),(40,'MAS','Maserati',NULL,NULL,33),(41,'MAYBACH','Maybach',NULL,NULL,33),(42,'MAZDA','Mazda',NULL,NULL,33),(43,'MCLAREN','McLaren',NULL,NULL,33),(44,'MB','Mercedes-Benz',NULL,NULL,33),(45,'MERC','Mercury',NULL,NULL,33),(46,'MERKUR','Merkur',NULL,NULL,33),(47,'MINI','MINI',NULL,NULL,33),(48,'MIT','Mitsubishi',NULL,NULL,33),(49,'NISSAN','Nissan',NULL,NULL,33),(50,'OLDS','Oldsmobile',NULL,NULL,33),(51,'PEUG','Peugeot',NULL,NULL,33),(52,'PLYM','Plymouth',NULL,NULL,33),(53,'PONT','Pontiac',NULL,NULL,33),(54,'POR','Porsche',NULL,NULL,33),(55,'RAM','RAM',NULL,NULL,33),(56,'REN','Renault',NULL,NULL,33),(57,'RR','Rolls-Royce',NULL,NULL,33),(58,'SAAB','Saab',NULL,NULL,33),(59,'SATURN','Saturn',NULL,NULL,33),(60,'SCION','Scion',NULL,NULL,33),(61,'SMART','smart',NULL,NULL,33),(62,'SRT','SRT',NULL,NULL,33),(63,'STERL','Sterling',NULL,NULL,33),(64,'SUB','Subaru',NULL,NULL,33),(65,'SUZUKI','Suzuki',NULL,NULL,33),(66,'TESLA','Tesla',NULL,NULL,33),(67,'TOYOTA','Toyota',NULL,NULL,33),(68,'TRI','Triumph',NULL,NULL,33),(69,'VOLKS','Volkswagen',NULL,NULL,33),(70,'VOLVO','Volvo',NULL,NULL,33),(71,'YUGO','Yugo',NULL,NULL,33);
/*!40000 ALTER TABLE `car_makes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_models`
--

DROP TABLE IF EXISTS `car_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_models` (
  `id` int(11) NOT NULL,
  `make_id` int(11) NOT NULL,
  `model` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lable` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_models`
--

LOCK TABLES `car_models` WRITE;
/*!40000 ALTER TABLE `car_models` DISABLE KEYS */;
INSERT INTO `car_models` VALUES (1,1,'CL_MODELS','CL Models (4)',NULL,NULL),(2,1,'2.2CL',' - 2.2CL',NULL,NULL),(3,1,'2.3CL',' - 2.3CL',NULL,NULL),(4,1,'3.0CL',' - 3.0CL',NULL,NULL),(5,1,'3.2CL',' - 3.2CL',NULL,NULL),(6,1,'ILX','ILX',NULL,NULL),(7,1,'INTEG','Integra',NULL,NULL),(8,1,'LEGEND','Legend',NULL,NULL),(9,1,'MDX','MDX',NULL,NULL),(10,1,'NSX','NSX',NULL,NULL),(11,1,'RDX','RDX',NULL,NULL),(12,1,'RL_MODELS','RL Models (2)',NULL,NULL),(13,1,'3.5RL',' - 3.5 RL',NULL,NULL),(14,1,'RL',' - RL',NULL,NULL),(15,1,'RSX','RSX',NULL,NULL),(16,1,'SLX','SLX',NULL,NULL),(17,1,'TL_MODELS','TL Models (3)',NULL,NULL),(18,1,'2.5TL',' - 2.5TL',NULL,NULL),(19,1,'3.2TL',' - 3.2TL',NULL,NULL),(20,1,'TL',' - TL',NULL,NULL),(21,1,'TSX','TSX',NULL,NULL),(22,1,'VIGOR','Vigor',NULL,NULL),(23,1,'ZDX','ZDX',NULL,NULL),(24,1,'ACUOTH','Other Acura Models',NULL,NULL),(25,2,'ALFA164','164',NULL,NULL),(26,2,'ALFA8C','8C Competizione',NULL,NULL),(27,2,'ALFAGT','GTV-6',NULL,NULL),(28,2,'MIL','Milano',NULL,NULL),(29,2,'SPID','Spider',NULL,NULL),(30,2,'ALFAOTH','Other Alfa Romeo Models',NULL,NULL),(31,3,'AMCALLIAN','Alliance',NULL,NULL),(32,3,'CON','Concord',NULL,NULL),(33,3,'EAGLE','Eagle',NULL,NULL),(34,3,'AMCENC','Encore',NULL,NULL),(35,3,'AMCSPIRIT','Spirit',NULL,NULL),(36,3,'AMCOTH','Other AMC Models',NULL,NULL),(37,4,'DB7','DB7',NULL,NULL),(38,4,'DB9','DB9',NULL,NULL),(39,4,'DBS','DBS',NULL,NULL),(40,4,'LAGONDA','Lagonda',NULL,NULL),(41,4,'RAPIDE','Rapide',NULL,NULL),(42,4,'V12VANT','V12 Vantage',NULL,NULL),(43,4,'VANTAGE','V8 Vantage',NULL,NULL),(44,4,'VANQUISH','Vanquish',NULL,NULL),(45,4,'VIRAGE','Virage',NULL,NULL),(46,4,'UNAVAILAST','Other Aston Martin Models',NULL,NULL),(47,5,'AUDI100','100',NULL,NULL),(48,5,'AUDI200','200',NULL,NULL),(49,5,'4000','4000',NULL,NULL),(50,5,'5000','5000',NULL,NULL),(51,5,'80','80',NULL,NULL),(52,5,'90','90',NULL,NULL),(53,5,'A3','A3',NULL,NULL),(54,5,'A4','A4',NULL,NULL),(55,5,'A5','A5',NULL,NULL),(56,5,'A6','A6',NULL,NULL),(57,5,'A7','A7',NULL,NULL),(58,5,'A8','A8',NULL,NULL),(59,5,'ALLRDQUA','allroad',NULL,NULL),(60,5,'AUDICABRI','Cabriolet',NULL,NULL),(61,5,'AUDICOUPE','Coupe',NULL,NULL),(62,5,'Q3','Q3',NULL,NULL),(63,5,'Q5','Q5',NULL,NULL),(64,5,'Q7','Q7',NULL,NULL),(65,5,'QUATTR','Quattro',NULL,NULL),(66,5,'R8','R8',NULL,NULL),(67,5,'RS4','RS 4',NULL,NULL),(68,5,'RS5','RS 5',NULL,NULL),(69,5,'RS6','RS 6',NULL,NULL),(70,5,'S4','S4',NULL,NULL),(71,5,'S5','S5',NULL,NULL),(72,5,'S6','S6',NULL,NULL),(73,5,'S7','S7',NULL,NULL),(74,5,'S8','S8',NULL,NULL),(75,5,'TT','TT',NULL,NULL),(76,5,'TTRS','TT RS',NULL,NULL),(77,5,'TTS','TTS',NULL,NULL),(78,5,'V8','V8 Quattro',NULL,NULL),(79,5,'AUDOTH','Other Audi Models',NULL,NULL),(80,6,'CONVERT','Convertible',NULL,NULL),(81,6,'COUPEAVANT','Coupe',NULL,NULL),(82,6,'SEDAN','Sedan',NULL,NULL),(83,6,'UNAVAILAVA','Other Avanti Models',NULL,NULL),(84,7,'ARNAGE','Arnage',NULL,NULL),(85,7,'AZURE','Azure',NULL,NULL),(86,7,'BROOKLANDS','Brooklands',NULL,NULL),(87,7,'BENCONT','Continental',NULL,NULL),(88,7,'CORNICHE','Corniche',NULL,NULL),(89,7,'BENEIGHT','Eight',NULL,NULL),(90,7,'BENMUL','Mulsanne',NULL,NULL),(91,7,'BENTURBO','Turbo R',NULL,NULL),(92,7,'UNAVAILBEN','Other Bentley Models',NULL,NULL),(93,8,'1_SERIES','1 Series (3)',NULL,NULL),(94,8,'128I',' - 128i',NULL,NULL),(95,8,'135I',' - 135i',NULL,NULL),(96,8,'135IS',' - 135is',NULL,NULL),(97,8,'3_SERIES','3 Series (29)',NULL,NULL),(98,8,'318I',' - 318i',NULL,NULL),(99,8,'318IC',' - 318iC',NULL,NULL),(100,8,'318IS',' - 318iS',NULL,NULL),(101,8,'318TI',' - 318ti',NULL,NULL),(102,8,'320I',' - 320i',NULL,NULL),(103,8,'323CI',' - 323ci',NULL,NULL),(104,8,'323I',' - 323i',NULL,NULL),(105,8,'323IS',' - 323is',NULL,NULL),(106,8,'323IT',' - 323iT',NULL,NULL),(107,8,'325CI',' - 325Ci',NULL,NULL),(108,8,'325E',' - 325e',NULL,NULL),(109,8,'325ES',' - 325es',NULL,NULL),(110,8,'325I',' - 325i',NULL,NULL),(111,8,'325IS',' - 325is',NULL,NULL),(112,8,'325IX',' - 325iX',NULL,NULL),(113,8,'325XI',' - 325xi',NULL,NULL),(114,8,'328CI',' - 328Ci',NULL,NULL),(115,8,'328I',' - 328i',NULL,NULL),(116,8,'328IS',' - 328iS',NULL,NULL),(117,8,'328XI',' - 328xi',NULL,NULL),(118,8,'330CI',' - 330Ci',NULL,NULL),(119,8,'330I',' - 330i',NULL,NULL),(120,8,'330XI',' - 330xi',NULL,NULL),(121,8,'335D',' - 335d',NULL,NULL),(122,8,'335I',' - 335i',NULL,NULL),(123,8,'335IS',' - 335is',NULL,NULL),(124,8,'335XI',' - 335xi',NULL,NULL),(125,8,'ACTIVE3',' - ActiveHybrid 3',NULL,NULL),(126,8,'BMW325',' - 325',NULL,NULL),(127,8,'5_SERIES','5 Series (19)',NULL,NULL),(128,8,'524TD',' - 524td',NULL,NULL),(129,8,'525I',' - 525i',NULL,NULL),(130,8,'525XI',' - 525xi',NULL,NULL),(131,8,'528E',' - 528e',NULL,NULL),(132,8,'528I',' - 528i',NULL,NULL),(133,8,'528IT',' - 528iT',NULL,NULL),(134,8,'528XI',' - 528xi',NULL,NULL),(135,8,'530I',' - 530i',NULL,NULL),(136,8,'530IT',' - 530iT',NULL,NULL),(137,8,'530XI',' - 530xi',NULL,NULL),(138,8,'533I',' - 533i',NULL,NULL),(139,8,'535I',' - 535i',NULL,NULL),(140,8,'535IGT',' - 535i Gran Turismo',NULL,NULL),(141,8,'535XI',' - 535xi',NULL,NULL),(142,8,'540I',' - 540i',NULL,NULL),(143,8,'545I',' - 545i',NULL,NULL),(144,8,'550I',' - 550i',NULL,NULL),(145,8,'550IGT',' - 550i Gran Turismo',NULL,NULL),(146,8,'ACTIVE5',' - ActiveHybrid 5',NULL,NULL),(147,8,'6_SERIES','6 Series (8)',NULL,NULL),(148,8,'633CSI',' - 633CSi',NULL,NULL),(149,8,'635CSI',' - 635CSi',NULL,NULL),(150,8,'640I',' - 640i',NULL,NULL),(151,8,'640IGC',' - 640i Gran Coupe',NULL,NULL),(152,8,'645CI',' - 645Ci',NULL,NULL),(153,8,'650I',' - 650i',NULL,NULL),(154,8,'650IGC',' - 650i Gran Coupe',NULL,NULL),(155,8,'L6',' - L6',NULL,NULL),(156,8,'7_SERIES','7 Series (15)',NULL,NULL),(157,8,'733I',' - 733i',NULL,NULL),(158,8,'735I',' - 735i',NULL,NULL),(159,8,'735IL',' - 735iL',NULL,NULL),(160,8,'740I',' - 740i',NULL,NULL),(161,8,'740IL',' - 740iL',NULL,NULL),(162,8,'740LI',' - 740Li',NULL,NULL),(163,8,'745I',' - 745i',NULL,NULL),(164,8,'745LI',' - 745Li',NULL,NULL),(165,8,'750I',' - 750i',NULL,NULL),(166,8,'750IL',' - 750iL',NULL,NULL),(167,8,'750LI',' - 750Li',NULL,NULL),(168,8,'760I',' - 760i',NULL,NULL),(169,8,'760LI',' - 760Li',NULL,NULL),(170,8,'ACTIVE7',' - ActiveHybrid 7',NULL,NULL),(171,8,'ALPINAB7',' - Alpina B7',NULL,NULL),(172,8,'8_SERIES','8 Series (4)',NULL,NULL),(173,8,'840CI',' - 840Ci',NULL,NULL),(174,8,'850CI',' - 850Ci',NULL,NULL),(175,8,'850CSI',' - 850CSi',NULL,NULL),(176,8,'850I',' - 850i',NULL,NULL),(177,8,'L_SERIES','L Series (1)',NULL,NULL),(178,8,'L7',' - L7',NULL,NULL),(179,8,'M_SERIES','M Series (8)',NULL,NULL),(180,8,'1SERIESM',' - 1 Series M',NULL,NULL),(181,8,'BMWMCOUPE',' - M Coupe',NULL,NULL),(182,8,'BMWROAD',' - M Roadster',NULL,NULL),(183,8,'M3',' - M3',NULL,NULL),(184,8,'M5',' - M5',NULL,NULL),(185,8,'M6',' - M6',NULL,NULL),(186,8,'X5M',' - X5 M',NULL,NULL),(187,8,'X6M',' - X6 M',NULL,NULL),(188,8,'X_SERIES','X Series (5)',NULL,NULL),(189,8,'ACTIVEX6',' - ActiveHybrid X6',NULL,NULL),(190,8,'X1',' - X1',NULL,NULL),(191,8,'X3',' - X3',NULL,NULL),(192,8,'X5',' - X5',NULL,NULL),(193,8,'X6',' - X6',NULL,NULL),(194,8,'Z_SERIES','Z Series (3)',NULL,NULL),(195,8,'Z3',' - Z3',NULL,NULL),(196,8,'Z4',' - Z4',NULL,NULL),(197,8,'Z8',' - Z8',NULL,NULL),(198,8,'BMWOTH','Other BMW Models',NULL,NULL),(199,9,'CENT','Century',NULL,NULL),(200,9,'ELEC','Electra',NULL,NULL),(201,9,'ENCLAVE','Enclave',NULL,NULL),(202,9,'BUIENC','Encore',NULL,NULL),(203,9,'LACROSSE','LaCrosse',NULL,NULL),(204,9,'LESA','Le Sabre',NULL,NULL),(205,9,'LUCERNE','Lucerne',NULL,NULL),(206,9,'PARK','Park Avenue',NULL,NULL),(207,9,'RAINIER','Rainier',NULL,NULL),(208,9,'REATTA','Reatta',NULL,NULL),(209,9,'REG','Regal',NULL,NULL),(210,9,'RENDEZVOUS','Rendezvous',NULL,NULL),(211,9,'RIV','Riviera',NULL,NULL),(212,9,'BUICKROAD','Roadmaster',NULL,NULL),(213,9,'SKYH','Skyhawk',NULL,NULL),(214,9,'SKYL','Skylark',NULL,NULL),(215,9,'SOMER','Somerset',NULL,NULL),(216,9,'TERRAZA','Terraza',NULL,NULL),(217,9,'BUVERANO','Verano',NULL,NULL),(218,9,'BUOTH','Other Buick Models',NULL,NULL),(219,10,'ALLANT','Allante',NULL,NULL),(220,10,'ATS','ATS',NULL,NULL),(221,10,'BROUGH','Brougham',NULL,NULL),(222,10,'CATERA','Catera',NULL,NULL),(223,10,'CIMA','Cimarron',NULL,NULL),(224,10,'CTS','CTS',NULL,NULL),(225,10,'DEV','De Ville',NULL,NULL),(226,10,'DTS','DTS',NULL,NULL),(227,10,'ELDO','Eldorado',NULL,NULL),(228,10,'ESCALA','Escalade',NULL,NULL),(229,10,'ESCALAESV','Escalade ESV',NULL,NULL),(230,10,'EXT','Escalade EXT',NULL,NULL),(231,10,'FLEE','Fleetwood',NULL,NULL),(232,10,'SEV','Seville',NULL,NULL),(233,10,'SRX','SRX',NULL,NULL),(234,10,'STS','STS',NULL,NULL),(235,10,'XLR','XLR',NULL,NULL),(236,10,'XTS','XTS',NULL,NULL),(237,10,'CADOTH','Other Cadillac Models',NULL,NULL),(238,11,'ASTRO','Astro',NULL,NULL),(239,11,'AVALNCH','Avalanche',NULL,NULL),(240,11,'AVEO','Aveo',NULL,NULL),(241,11,'AVEO5','Aveo5',NULL,NULL),(242,11,'BERETT','Beretta',NULL,NULL),(243,11,'BLAZER','Blazer',NULL,NULL),(244,11,'CAM','Camaro',NULL,NULL),(245,11,'CAP','Caprice',NULL,NULL),(246,11,'CHECAPS','Captiva Sport',NULL,NULL),(247,11,'CAV','Cavalier',NULL,NULL),(248,11,'CELE','Celebrity',NULL,NULL),(249,11,'CHEVETTE','Chevette',NULL,NULL),(250,11,'CITATION','Citation',NULL,NULL),(251,11,'COBALT','Cobalt',NULL,NULL),(252,11,'COLORADO','Colorado',NULL,NULL),(253,11,'CORSI','Corsica',NULL,NULL),(254,11,'CORV','Corvette',NULL,NULL),(255,11,'CRUZE','Cruze',NULL,NULL),(256,11,'ELCAM','El Camino',NULL,NULL),(257,11,'EQUINOX','Equinox',NULL,NULL),(258,11,'G15EXP','Express Van',NULL,NULL),(259,11,'G10','G Van',NULL,NULL),(260,11,'HHR','HHR',NULL,NULL),(261,11,'CHEVIMP','Impala',NULL,NULL),(262,11,'KODC4500','Kodiak C4500',NULL,NULL),(263,11,'LUMINA','Lumina',NULL,NULL),(264,11,'LAPV','Lumina APV',NULL,NULL),(265,11,'LUV','LUV',NULL,NULL),(266,11,'MALI','Malibu',NULL,NULL),(267,11,'CHVMETR','Metro',NULL,NULL),(268,11,'CHEVMONT','Monte Carlo',NULL,NULL),(269,11,'NOVA','Nova',NULL,NULL),(270,11,'CHEVPRIZM','Prizm',NULL,NULL),(271,11,'CHVST','S10 Blazer',NULL,NULL),(272,11,'S10PICKUP','S10 Pickup',NULL,NULL),(273,11,'CHEV150','Silverado and other C/K1500',NULL,NULL),(274,11,'CHEVC25','Silverado and other C/K2500',NULL,NULL),(275,11,'CH3500PU','Silverado and other C/K3500',NULL,NULL),(276,11,'SONIC','Sonic',NULL,NULL),(277,11,'SPARK','Spark',NULL,NULL),(278,11,'CHEVSPEC','Spectrum',NULL,NULL),(279,11,'CHSPRINT','Sprint',NULL,NULL),(280,11,'SSR','SSR',NULL,NULL),(281,11,'CHEVSUB','Suburban',NULL,NULL),(282,11,'TAHOE','Tahoe',NULL,NULL),(283,11,'TRACKE','Tracker',NULL,NULL),(284,11,'TRAILBLZ','TrailBlazer',NULL,NULL),(285,11,'TRAILBZEXT','TrailBlazer EXT',NULL,NULL),(286,11,'TRAVERSE','Traverse',NULL,NULL),(287,11,'UPLANDER','Uplander',NULL,NULL),(288,11,'VENTUR','Venture',NULL,NULL),(289,11,'VOLT','Volt',NULL,NULL),(290,11,'CHEOTH','Other Chevrolet Models',NULL,NULL),(291,12,'CHRYS200','200',NULL,NULL),(292,12,'300','300',NULL,NULL),(293,12,'CHRY300','300M',NULL,NULL),(294,12,'ASPEN','Aspen',NULL,NULL),(295,12,'CARAVAN','Caravan',NULL,NULL),(296,12,'CIRRUS','Cirrus',NULL,NULL),(297,12,'CONC','Concorde',NULL,NULL),(298,12,'CHRYCONQ','Conquest',NULL,NULL),(299,12,'CORDOBA','Cordoba',NULL,NULL),(300,12,'CROSSFIRE','Crossfire',NULL,NULL),(301,12,'ECLASS','E Class',NULL,NULL),(302,12,'FIFTH','Fifth Avenue',NULL,NULL),(303,12,'CHRYGRANDV','Grand Voyager',NULL,NULL),(304,12,'IMPE','Imperial',NULL,NULL),(305,12,'INTREPID','Intrepid',NULL,NULL),(306,12,'CHRYLAS','Laser',NULL,NULL),(307,12,'LEBA','LeBaron',NULL,NULL),(308,12,'LHS','LHS',NULL,NULL),(309,12,'CHRYNEON','Neon',NULL,NULL),(310,12,'NY','New Yorker',NULL,NULL),(311,12,'NEWPORT','Newport',NULL,NULL),(312,12,'PACIFICA','Pacifica',NULL,NULL),(313,12,'CHPROWLE','Prowler',NULL,NULL),(314,12,'PTCRUIS','PT Cruiser',NULL,NULL),(315,12,'CHRYSEB','Sebring',NULL,NULL),(316,12,'CHRYTC','TC by Maserati',NULL,NULL),(317,12,'TANDC','Town & Country',NULL,NULL),(318,12,'VOYAGER','Voyager',NULL,NULL),(319,12,'CHOTH','Other Chrysler Models',NULL,NULL),(320,13,'LANOS','Lanos',NULL,NULL),(321,13,'LEGANZA','Leganza',NULL,NULL),(322,13,'NUBIRA','Nubira',NULL,NULL),(323,13,'DAEOTH','Other Daewoo Models',NULL,NULL),(324,14,'CHAR','Charade',NULL,NULL),(325,14,'ROCKY','Rocky',NULL,NULL),(326,14,'DAIHOTH','Other Daihatsu Models',NULL,NULL),(327,15,'DAT200SX','200SX',NULL,NULL),(328,15,'DAT210','210',NULL,NULL),(329,15,'280Z','280ZX',NULL,NULL),(330,15,'300ZX','300ZX',NULL,NULL),(331,15,'310','310',NULL,NULL),(332,15,'510','510',NULL,NULL),(333,15,'720','720',NULL,NULL),(334,15,'810','810',NULL,NULL),(335,15,'DATMAX','Maxima',NULL,NULL),(336,15,'DATPU','Pickup',NULL,NULL),(337,15,'PUL','Pulsar',NULL,NULL),(338,15,'DATSENT','Sentra',NULL,NULL),(339,15,'STAN','Stanza',NULL,NULL),(340,15,'DATOTH','Other Datsun Models',NULL,NULL),(341,16,'DMC12','DMC-12',NULL,NULL),(342,17,'400','400',NULL,NULL),(343,17,'DOD600','600',NULL,NULL),(344,17,'ARI','Aries',NULL,NULL),(345,17,'AVENGR','Avenger',NULL,NULL),(346,17,'CALIBER','Caliber',NULL,NULL),(347,17,'DODCARA','Caravan',NULL,NULL),(348,17,'CHALLENGER','Challenger',NULL,NULL),(349,17,'DODCHAR','Charger',NULL,NULL),(350,17,'DODCOLT','Colt',NULL,NULL),(351,17,'DODCONQ','Conquest',NULL,NULL),(352,17,'DODDW','D/W Truck',NULL,NULL),(353,17,'DAKOTA','Dakota',NULL,NULL),(354,17,'DODDART','Dart',NULL,NULL),(355,17,'DAY','Daytona',NULL,NULL),(356,17,'DIPLOMA','Diplomat',NULL,NULL),(357,17,'DURANG','Durango',NULL,NULL),(358,17,'DODDYNA','Dynasty',NULL,NULL),(359,17,'GRANDCARAV','Grand Caravan',NULL,NULL),(360,17,'INTRE','Intrepid',NULL,NULL),(361,17,'JOURNEY','Journey',NULL,NULL),(362,17,'LANCERDODG','Lancer',NULL,NULL),(363,17,'MAGNUM','Magnum',NULL,NULL),(364,17,'MIRADA','Mirada',NULL,NULL),(365,17,'MONACO','Monaco',NULL,NULL),(366,17,'DODNEON','Neon',NULL,NULL),(367,17,'NITRO','Nitro',NULL,NULL),(368,17,'OMNI','Omni',NULL,NULL),(369,17,'RAIDER','Raider',NULL,NULL),(370,17,'RAM1504WD','Ram 1500 Truck',NULL,NULL),(371,17,'RAM25002WD','Ram 2500 Truck',NULL,NULL),(372,17,'RAM3502WD','Ram 3500 Truck',NULL,NULL),(373,17,'RAM4500','Ram 4500 Truck',NULL,NULL),(374,17,'DODD50','Ram 50 Truck',NULL,NULL),(375,17,'CV','RAM C/V',NULL,NULL),(376,17,'RAMSRT10','Ram SRT-10',NULL,NULL),(377,17,'RAMVANV8','Ram Van',NULL,NULL),(378,17,'RAMWAGON','Ram Wagon',NULL,NULL),(379,17,'RAMCGR','Ramcharger',NULL,NULL),(380,17,'RAMPAGE','Rampage',NULL,NULL),(381,17,'DODSHAD','Shadow',NULL,NULL),(382,17,'DODSPIR','Spirit',NULL,NULL),(383,17,'SPRINTER','Sprinter',NULL,NULL),(384,17,'SRT4','SRT-4',NULL,NULL),(385,17,'STREGIS','St. Regis',NULL,NULL),(386,17,'STEAL','Stealth',NULL,NULL),(387,17,'STRATU','Stratus',NULL,NULL),(388,17,'VIPER','Viper',NULL,NULL),(389,17,'DOOTH','Other Dodge Models',NULL,NULL),(390,18,'EAGLEMED','Medallion',NULL,NULL),(391,18,'EAGLEPREM','Premier',NULL,NULL),(392,18,'SUMMIT','Summit',NULL,NULL),(393,18,'TALON','Talon',NULL,NULL),(394,18,'VISION','Vision',NULL,NULL),(395,18,'EAGOTH','Other Eagle Models',NULL,NULL),(396,19,'308GTB','308 GTB Quattrovalvole',NULL,NULL),(397,19,'308TBI','308 GTBI',NULL,NULL),(398,19,'308GTS','308 GTS Quattrovalvole',NULL,NULL),(399,19,'308TSI','308 GTSI',NULL,NULL),(400,19,'328GTB','328 GTB',NULL,NULL),(401,19,'328GTS','328 GTS',NULL,NULL),(402,19,'348GTB','348 GTB',NULL,NULL),(403,19,'348GTS','348 GTS',NULL,NULL),(404,19,'348SPI','348 Spider',NULL,NULL),(405,19,'348TB','348 TB',NULL,NULL),(406,19,'348TS','348 TS',NULL,NULL),(407,19,'360','360',NULL,NULL),(408,19,'456GT','456 GT',NULL,NULL),(409,19,'456MGT','456M GT',NULL,NULL),(410,19,'458ITALIA','458 Italia',NULL,NULL),(411,19,'512BBI','512 BBi',NULL,NULL),(412,19,'512M','512M',NULL,NULL),(413,19,'512TR','512TR',NULL,NULL),(414,19,'550M','550 Maranello',NULL,NULL),(415,19,'575M','575M Maranello',NULL,NULL),(416,19,'599GTB','599 GTB Fiorano',NULL,NULL),(417,19,'599GTO','599 GTO',NULL,NULL),(418,19,'612SCAGLIE','612 Scaglietti',NULL,NULL),(419,19,'FERCALIF','California',NULL,NULL),(420,19,'ENZO','Enzo',NULL,NULL),(421,19,'F355','F355',NULL,NULL),(422,19,'F40','F40',NULL,NULL),(423,19,'F430','F430',NULL,NULL),(424,19,'F50','F50',NULL,NULL),(425,19,'FERFF','FF',NULL,NULL),(426,19,'MOND','Mondial',NULL,NULL),(427,19,'TEST','Testarossa',NULL,NULL),(428,19,'UNAVAILFER','Other Ferrari Models',NULL,NULL),(429,20,'2000','2000 Spider',NULL,NULL),(430,20,'FIAT500','500',NULL,NULL),(431,20,'BERTON','Bertone X1/9',NULL,NULL),(432,20,'BRAVA','Brava',NULL,NULL),(433,20,'PININ','Pininfarina Spider',NULL,NULL),(434,20,'STRADA','Strada',NULL,NULL),(435,20,'FIATX19','X1/9',NULL,NULL),(436,20,'UNAVAILFIA','Other Fiat Models',NULL,NULL),(437,21,'KARMA','Karma',NULL,NULL),(438,22,'AERO','Aerostar',NULL,NULL),(439,22,'ASPIRE','Aspire',NULL,NULL),(440,22,'BRON','Bronco',NULL,NULL),(441,22,'B2','Bronco II',NULL,NULL),(442,22,'FOCMAX','C-MAX',NULL,NULL),(443,22,'FORDCLUB','Club Wagon',NULL,NULL),(444,22,'CONTOUR','Contour',NULL,NULL),(445,22,'COURIER','Courier',NULL,NULL),(446,22,'CROWNVIC','Crown Victoria',NULL,NULL),(447,22,'E150ECON','E-150 and Econoline 150',NULL,NULL),(448,22,'E250ECON','E-250 and Econoline 250',NULL,NULL),(449,22,'E350ECON','E-350 and Econoline 350',NULL,NULL),(450,22,'EDGE','Edge',NULL,NULL),(451,22,'ESCAPE','Escape',NULL,NULL),(452,22,'ESCO','Escort',NULL,NULL),(453,22,'EXCURSION','Excursion',NULL,NULL),(454,22,'EXP','EXP',NULL,NULL),(455,22,'EXPEDI','Expedition',NULL,NULL),(456,22,'EXPEDIEL','Expedition EL',NULL,NULL),(457,22,'EXPLOR','Explorer',NULL,NULL),(458,22,'SPORTTRAC','Explorer Sport Trac',NULL,NULL),(459,22,'F100','F100',NULL,NULL),(460,22,'F150PICKUP','F150',NULL,NULL),(461,22,'F250','F250',NULL,NULL),(462,22,'F350','F350',NULL,NULL),(463,22,'F450','F450',NULL,NULL),(464,22,'FAIRM','Fairmont',NULL,NULL),(465,22,'FESTIV','Festiva',NULL,NULL),(466,22,'FIESTA','Fiesta',NULL,NULL),(467,22,'FIVEHUNDRE','Five Hundred',NULL,NULL),(468,22,'FLEX','Flex',NULL,NULL),(469,22,'FOCUS','Focus',NULL,NULL),(470,22,'FREESTAR','Freestar',NULL,NULL),(471,22,'FREESTYLE','Freestyle',NULL,NULL),(472,22,'FUSION','Fusion',NULL,NULL),(473,22,'GRANADA','Granada',NULL,NULL),(474,22,'GT','GT',NULL,NULL),(475,22,'LTD','LTD',NULL,NULL),(476,22,'MUST','Mustang',NULL,NULL),(477,22,'PROBE','Probe',NULL,NULL),(478,22,'RANGER','Ranger',NULL,NULL),(479,22,'TAURUS','Taurus',NULL,NULL),(480,22,'TAURUSX','Taurus X',NULL,NULL),(481,22,'TEMPO','Tempo',NULL,NULL),(482,22,'TBIRD','Thunderbird',NULL,NULL),(483,22,'TRANSCONN','Transit Connect',NULL,NULL),(484,22,'WINDST','Windstar',NULL,NULL),(485,22,'FORDZX2','ZX2 Escort',NULL,NULL),(486,22,'FOOTH','Other Ford Models',NULL,NULL),(487,23,'FRESPRINT','Sprinter',NULL,NULL),(488,24,'GEOMETRO','Metro',NULL,NULL),(489,24,'GEOPRIZM','Prizm',NULL,NULL),(490,24,'SPECT','Spectrum',NULL,NULL),(491,24,'STORM','Storm',NULL,NULL),(492,24,'GEOTRACK','Tracker',NULL,NULL),(493,24,'GEOOTH','Other Geo Models',NULL,NULL),(494,25,'ACADIA','Acadia',NULL,NULL),(495,25,'CABALLERO','Caballero',NULL,NULL),(496,25,'CANYON','Canyon',NULL,NULL),(497,25,'ENVOY','Envoy',NULL,NULL),(498,25,'ENVOYXL','Envoy XL',NULL,NULL),(499,25,'ENVOYXUV','Envoy XUV',NULL,NULL),(500,25,'JIM','Jimmy',NULL,NULL),(501,25,'RALLYWAG','Rally Wagon',NULL,NULL),(502,25,'GMCS15','S15 Jimmy',NULL,NULL),(503,25,'S15','S15 Pickup',NULL,NULL),(504,25,'SAFARIGMC','Safari',NULL,NULL),(505,25,'GMCSAVANA','Savana',NULL,NULL),(506,25,'15SIPU4WD','Sierra C/K1500',NULL,NULL),(507,25,'GMCC25PU','Sierra C/K2500',NULL,NULL),(508,25,'GMC3500PU','Sierra C/K3500',NULL,NULL),(509,25,'SONOMA','Sonoma',NULL,NULL),(510,25,'SUB','Suburban',NULL,NULL),(511,25,'GMCSYCLON','Syclone',NULL,NULL),(512,25,'TERRAIN','Terrain',NULL,NULL),(513,25,'TOPC4500','TopKick C4500',NULL,NULL),(514,25,'TYPH','Typhoon',NULL,NULL),(515,25,'GMCVANDUR','Vandura',NULL,NULL),(516,25,'YUKON','Yukon',NULL,NULL),(517,25,'YUKONXL','Yukon XL',NULL,NULL),(518,25,'GMCOTH','Other GMC Models',NULL,NULL),(519,26,'ACCORD','Accord',NULL,NULL),(520,26,'CIVIC','Civic',NULL,NULL),(521,26,'CRV','CR-V',NULL,NULL),(522,26,'CRZ','CR-Z',NULL,NULL),(523,26,'CRX','CRX',NULL,NULL),(524,26,'CROSSTOUR_MODELS','Crosstour and Accord Crosstour Models (2)',NULL,NULL),(525,26,'CROSSTOUR',' - Accord Crosstour',NULL,NULL),(526,26,'HONCROSS',' - Crosstour',NULL,NULL),(527,26,'HONDELSOL','Del Sol',NULL,NULL),(528,26,'ELEMENT','Element',NULL,NULL),(529,26,'FIT','Fit',NULL,NULL),(530,26,'INSIGHT','Insight',NULL,NULL),(531,26,'ODYSSEY','Odyssey',NULL,NULL),(532,26,'PASSPO','Passport',NULL,NULL),(533,26,'PILOT','Pilot',NULL,NULL),(534,26,'PRE','Prelude',NULL,NULL),(535,26,'RIDGELINE','Ridgeline',NULL,NULL),(536,26,'S2000','S2000',NULL,NULL),(537,26,'HONOTH','Other Honda Models',NULL,NULL),(538,27,'HUMMER','H1',NULL,NULL),(539,27,'H2','H2',NULL,NULL),(540,27,'H3','H3',NULL,NULL),(541,27,'H3T','H3T',NULL,NULL),(542,27,'AMGOTH','Other Hummer Models',NULL,NULL),(543,28,'ACCENT','Accent',NULL,NULL),(544,28,'AZERA','Azera',NULL,NULL),(545,28,'ELANTR','Elantra',NULL,NULL),(546,28,'HYUELANCPE','Elantra Coupe',NULL,NULL),(547,28,'ELANTOUR','Elantra Touring',NULL,NULL),(548,28,'ENTOURAGE','Entourage',NULL,NULL),(549,28,'EQUUS','Equus',NULL,NULL),(550,28,'HYUEXCEL','Excel',NULL,NULL),(551,28,'GENESIS','Genesis',NULL,NULL),(552,28,'GENESISCPE','Genesis Coupe',NULL,NULL),(553,28,'SANTAFE','Santa Fe',NULL,NULL),(554,28,'SCOUPE','Scoupe',NULL,NULL),(555,28,'SONATA','Sonata',NULL,NULL),(556,28,'TIBURO','Tiburon',NULL,NULL),(557,28,'TUCSON','Tucson',NULL,NULL),(558,28,'VELOSTER','Veloster',NULL,NULL),(559,28,'VERACRUZ','Veracruz',NULL,NULL),(560,28,'XG300','XG300',NULL,NULL),(561,28,'XG350','XG350',NULL,NULL),(562,28,'HYUOTH','Other Hyundai Models',NULL,NULL),(563,29,'EX_MODELS','EX Models (2)',NULL,NULL),(564,29,'EX35',' - EX35',NULL,NULL),(565,29,'EX37',' - EX37',NULL,NULL),(566,29,'FX_MODELS','FX Models (4)',NULL,NULL),(567,29,'FX35',' - FX35',NULL,NULL),(568,29,'FX37',' - FX37',NULL,NULL),(569,29,'FX45',' - FX45',NULL,NULL),(570,29,'FX50',' - FX50',NULL,NULL),(571,29,'G_MODELS','G Models (4)',NULL,NULL),(572,29,'G20',' - G20',NULL,NULL),(573,29,'G25',' - G25',NULL,NULL),(574,29,'G35',' - G35',NULL,NULL),(575,29,'G37',' - G37',NULL,NULL),(576,29,'I_MODELS','I Models (2)',NULL,NULL),(577,29,'I30',' - I30',NULL,NULL),(578,29,'I35',' - I35',NULL,NULL),(579,29,'J_MODELS','J Models (1)',NULL,NULL),(580,29,'J30',' - J30',NULL,NULL),(581,29,'JX_MODELS','JX Models (1)',NULL,NULL),(582,29,'JX35',' - JX35',NULL,NULL),(583,29,'M_MODELS','M Models (6)',NULL,NULL),(584,29,'M30',' - M30',NULL,NULL),(585,29,'M35',' - M35',NULL,NULL),(586,29,'M35HYBRID',' - M35h',NULL,NULL),(587,29,'M37',' - M37',NULL,NULL),(588,29,'M45',' - M45',NULL,NULL),(589,29,'M56',' - M56',NULL,NULL),(590,29,'Q_MODELS','Q Models (1)',NULL,NULL),(591,29,'Q45',' - Q45',NULL,NULL),(592,29,'QX_MODELS','QX Models (2)',NULL,NULL),(593,29,'QX4',' - QX4',NULL,NULL),(594,29,'QX56',' - QX56',NULL,NULL),(595,29,'INFOTH','Other Infiniti Models',NULL,NULL),(596,30,'AMIGO','Amigo',NULL,NULL),(597,30,'ASCENDER','Ascender',NULL,NULL),(598,30,'AXIOM','Axiom',NULL,NULL),(599,30,'HOMBRE','Hombre',NULL,NULL),(600,30,'I280','i-280',NULL,NULL),(601,30,'I290','i-290',NULL,NULL),(602,30,'I350','i-350',NULL,NULL),(603,30,'I370','i-370',NULL,NULL),(604,30,'ISUMARK','I-Mark',NULL,NULL),(605,30,'ISUIMP','Impulse',NULL,NULL),(606,30,'OASIS','Oasis',NULL,NULL),(607,30,'ISUPU','Pickup',NULL,NULL),(608,30,'RODEO','Rodeo',NULL,NULL),(609,30,'STYLUS','Stylus',NULL,NULL),(610,30,'TROOP','Trooper',NULL,NULL),(611,30,'TRP2','Trooper II',NULL,NULL),(612,30,'VEHICROSS','VehiCROSS',NULL,NULL),(613,30,'ISUOTH','Other Isuzu Models',NULL,NULL),(614,31,'STYPE','S-Type',NULL,NULL),(615,31,'XTYPE','X-Type',NULL,NULL),(616,31,'XF','XF',NULL,NULL),(617,31,'XJ_SERIES','XJ Series (10)',NULL,NULL),(618,31,'JAGXJ12',' - XJ12',NULL,NULL),(619,31,'JAGXJ6',' - XJ6',NULL,NULL),(620,31,'JAGXJR',' - XJR',NULL,NULL),(621,31,'JAGXJRS',' - XJR-S',NULL,NULL),(622,31,'JAGXJS',' - XJS',NULL,NULL),(623,31,'VANDEN',' - XJ Vanden Plas',NULL,NULL),(624,31,'XJ',' - XJ',NULL,NULL),(625,31,'XJ8',' - XJ8',NULL,NULL),(626,31,'XJ8L',' - XJ8 L',NULL,NULL),(627,31,'XJSPORT',' - XJ Sport',NULL,NULL),(628,31,'XK_SERIES','XK Series (3)',NULL,NULL),(629,31,'JAGXK8',' - XK8',NULL,NULL),(630,31,'XK',' - XK',NULL,NULL),(631,31,'XKR',' - XKR',NULL,NULL),(632,31,'JAGOTH','Other Jaguar Models',NULL,NULL),(633,32,'CHER','Cherokee',NULL,NULL),(634,32,'JEEPCJ','CJ',NULL,NULL),(635,32,'COMANC','Comanche',NULL,NULL),(636,32,'COMMANDER','Commander',NULL,NULL),(637,32,'COMPASS','Compass',NULL,NULL),(638,32,'JEEPGRAND','Grand Cherokee',NULL,NULL),(639,32,'GRWAG','Grand Wagoneer',NULL,NULL),(640,32,'LIBERTY','Liberty',NULL,NULL),(641,32,'PATRIOT','Patriot',NULL,NULL),(642,32,'JEEPPU','Pickup',NULL,NULL),(643,32,'SCRAMBLE','Scrambler',NULL,NULL),(644,32,'WAGONE','Wagoneer',NULL,NULL),(645,32,'WRANGLER','Wrangler',NULL,NULL),(646,32,'JEOTH','Other Jeep Models',NULL,NULL),(647,33,'AMANTI','Amanti',NULL,NULL),(648,33,'BORREGO','Borrego',NULL,NULL),(649,33,'FORTE','Forte',NULL,NULL),(650,33,'FORTEKOUP','Forte Koup',NULL,NULL),(651,33,'OPTIMA','Optima',NULL,NULL),(652,33,'RIO','Rio',NULL,NULL),(653,33,'RIO5','Rio5',NULL,NULL),(654,33,'RONDO','Rondo',NULL,NULL),(655,33,'SEDONA','Sedona',NULL,NULL),(656,33,'SEPHIA','Sephia',NULL,NULL),(657,33,'SORENTO','Sorento',NULL,NULL),(658,33,'SOUL','Soul',NULL,NULL),(659,33,'SPECTRA','Spectra',NULL,NULL),(660,33,'SPECTRA5','Spectra5',NULL,NULL),(661,33,'SPORTA','Sportage',NULL,NULL),(662,33,'KIAOTH','Other Kia Models',NULL,NULL),(663,34,'AVENT','Aventador',NULL,NULL),(664,34,'COUNT','Countach',NULL,NULL),(665,34,'DIABLO','Diablo',NULL,NULL),(666,34,'GALLARDO','Gallardo',NULL,NULL),(667,34,'JALPA','Jalpa',NULL,NULL),(668,34,'LM002','LM002',NULL,NULL),(669,34,'MURCIELAGO','Murcielago',NULL,NULL),(670,34,'UNAVAILLAM','Other Lamborghini Models',NULL,NULL),(671,35,'BETA','Beta',NULL,NULL),(672,35,'ZAGATO','Zagato',NULL,NULL),(673,35,'UNAVAILLAN','Other Lancia Models',NULL,NULL),(674,36,'DEFEND','Defender',NULL,NULL),(675,36,'DISCOV','Discovery',NULL,NULL),(676,36,'FRELNDR','Freelander',NULL,NULL),(677,36,'LR2','LR2',NULL,NULL),(678,36,'LR3','LR3',NULL,NULL),(679,36,'LR4','LR4',NULL,NULL),(680,36,'RANGE','Range Rover',NULL,NULL),(681,36,'EVOQUE','Range Rover Evoque',NULL,NULL),(682,36,'RANGESPORT','Range Rover Sport',NULL,NULL),(683,36,'ROVOTH','Other Land Rover Models',NULL,NULL),(684,37,'CT_MODELS','CT Models (1)',NULL,NULL),(685,37,'CT200H',' - CT 200h',NULL,NULL),(686,37,'ES_MODELS','ES Models (5)',NULL,NULL),(687,37,'ES250',' - ES 250',NULL,NULL),(688,37,'ES300',' - ES 300',NULL,NULL),(689,37,'ES300H',' - ES 300h',NULL,NULL),(690,37,'ES330',' - ES 330',NULL,NULL),(691,37,'ES350',' - ES 350',NULL,NULL),(692,37,'GS_MODELS','GS Models (6)',NULL,NULL),(693,37,'GS300',' - GS 300',NULL,NULL),(694,37,'GS350',' - GS 350',NULL,NULL),(695,37,'GS400',' - GS 400',NULL,NULL),(696,37,'GS430',' - GS 430',NULL,NULL),(697,37,'GS450H',' - GS 450h',NULL,NULL),(698,37,'GS460',' - GS 460',NULL,NULL),(699,37,'GX_MODELS','GX Models (2)',NULL,NULL),(700,37,'GX460',' - GX 460',NULL,NULL),(701,37,'GX470',' - GX 470',NULL,NULL),(702,37,'HS_MODELS','HS Models (1)',NULL,NULL),(703,37,'HS250H',' - HS 250h',NULL,NULL),(704,37,'IS_MODELS','IS Models (6)',NULL,NULL),(705,37,'IS250',' - IS 250',NULL,NULL),(706,37,'IS250C',' - IS 250C',NULL,NULL),(707,37,'IS300',' - IS 300',NULL,NULL),(708,37,'IS350',' - IS 350',NULL,NULL),(709,37,'IS350C',' - IS 350C',NULL,NULL),(710,37,'ISF',' - IS F',NULL,NULL),(711,37,'LEXLFA','LFA',NULL,NULL),(712,37,'LS_MODELS','LS Models (4)',NULL,NULL),(713,37,'LS400',' - LS 400',NULL,NULL),(714,37,'LS430',' - LS 430',NULL,NULL),(715,37,'LS460',' - LS 460',NULL,NULL),(716,37,'LS600H',' - LS 600h',NULL,NULL),(717,37,'LX_MODELS','LX Models (3)',NULL,NULL),(718,37,'LX450',' - LX 450',NULL,NULL),(719,37,'LX470',' - LX 470',NULL,NULL),(720,37,'LX570',' - LX 570',NULL,NULL),(721,37,'RX_MODELS','RX Models (5)',NULL,NULL),(722,37,'RX300',' - RX 300',NULL,NULL),(723,37,'RX330',' - RX 330',NULL,NULL),(724,37,'RX350',' - RX 350',NULL,NULL),(725,37,'RX400H',' - RX 400h',NULL,NULL),(726,37,'RX450H',' - RX 450h',NULL,NULL),(727,37,'SC_MODELS','SC Models (3)',NULL,NULL),(728,37,'SC300',' - SC 300',NULL,NULL),(729,37,'SC400',' - SC 400',NULL,NULL),(730,37,'SC430',' - SC 430',NULL,NULL),(731,37,'LEXOTH','Other Lexus Models',NULL,NULL),(732,38,'AVIATOR','Aviator',NULL,NULL),(733,38,'BLKWOOD','Blackwood',NULL,NULL),(734,38,'CONT','Continental',NULL,NULL),(735,38,'LSLINCOLN','LS',NULL,NULL),(736,38,'MARKLT','Mark LT',NULL,NULL),(737,38,'MARK6','Mark VI',NULL,NULL),(738,38,'MARK7','Mark VII',NULL,NULL),(739,38,'MARK8','Mark VIII',NULL,NULL),(740,38,'MKS','MKS',NULL,NULL),(741,38,'MKT','MKT',NULL,NULL),(742,38,'MKX','MKX',NULL,NULL),(743,38,'MKZ','MKZ',NULL,NULL),(744,38,'NAVIGA','Navigator',NULL,NULL),(745,38,'NAVIGAL','Navigator L',NULL,NULL),(746,38,'LINCTC','Town Car',NULL,NULL),(747,38,'ZEPHYR','Zephyr',NULL,NULL),(748,38,'LINOTH','Other Lincoln Models',NULL,NULL),(749,39,'ELAN','Elan',NULL,NULL),(750,39,'LOTELISE','Elise',NULL,NULL),(751,39,'ESPRIT','Esprit',NULL,NULL),(752,39,'EVORA','Evora',NULL,NULL),(753,39,'EXIGE','Exige',NULL,NULL),(754,39,'UNAVAILLOT','Other Lotus Models',NULL,NULL),(755,40,'430','430',NULL,NULL),(756,40,'BITRBO','Biturbo',NULL,NULL),(757,40,'COUPEMAS','Coupe',NULL,NULL),(758,40,'GRANSPORT','GranSport',NULL,NULL),(759,40,'GRANTURISM','GranTurismo',NULL,NULL),(760,40,'QP','Quattroporte',NULL,NULL),(761,40,'SPYDER','Spyder',NULL,NULL),(762,40,'UNAVAILMAS','Other Maserati Models',NULL,NULL),(763,41,'57MAYBACH','57',NULL,NULL),(764,41,'62MAYBACH','62',NULL,NULL),(765,41,'UNAVAILMAY','Other Maybach Models',NULL,NULL),(766,42,'MAZDA323','323',NULL,NULL),(767,42,'MAZDA626','626',NULL,NULL),(768,42,'929','929',NULL,NULL),(769,42,'B-SERIES','B-Series Pickup',NULL,NULL),(770,42,'CX-5','CX-5',NULL,NULL),(771,42,'CX-7','CX-7',NULL,NULL),(772,42,'CX-9','CX-9',NULL,NULL),(773,42,'GLC','GLC',NULL,NULL),(774,42,'MAZDA2','MAZDA2',NULL,NULL),(775,42,'MAZDA3','MAZDA3',NULL,NULL),(776,42,'MAZDA5','MAZDA5',NULL,NULL),(777,42,'MAZDA6','MAZDA6',NULL,NULL),(778,42,'MAZDASPD3','MAZDASPEED3',NULL,NULL),(779,42,'MAZDASPD6','MAZDASPEED6',NULL,NULL),(780,42,'MIATA','Miata MX5',NULL,NULL),(781,42,'MILL','Millenia',NULL,NULL),(782,42,'MPV','MPV',NULL,NULL),(783,42,'MX3','MX3',NULL,NULL),(784,42,'MX6','MX6',NULL,NULL),(785,42,'NAVAJO','Navajo',NULL,NULL),(786,42,'PROTE','Protege',NULL,NULL),(787,42,'PROTE5','Protege5',NULL,NULL),(788,42,'RX7','RX-7',NULL,NULL),(789,42,'RX8','RX-8',NULL,NULL),(790,42,'TRIBUTE','Tribute',NULL,NULL),(791,42,'MAZOTH','Other Mazda Models',NULL,NULL),(792,43,'MP4','MP4-12C',NULL,NULL),(793,44,'190_CLASS','190 Class (2)',NULL,NULL),(794,44,'190D',' - 190D',NULL,NULL),(795,44,'190E',' - 190E',NULL,NULL),(796,44,'240_CLASS','240 Class (1)',NULL,NULL),(797,44,'240D',' - 240D',NULL,NULL),(798,44,'300_CLASS_E_CLASS','300 Class / E Class (6)',NULL,NULL),(799,44,'300CD',' - 300CD',NULL,NULL),(800,44,'300CE',' - 300CE',NULL,NULL),(801,44,'300D',' - 300D',NULL,NULL),(802,44,'300E',' - 300E',NULL,NULL),(803,44,'300TD',' - 300TD',NULL,NULL),(804,44,'300TE',' - 300TE',NULL,NULL),(805,44,'C_CLASS','C Class (13)',NULL,NULL),(806,44,'C220',' - C220',NULL,NULL),(807,44,'C230',' - C230',NULL,NULL),(808,44,'C240',' - C240',NULL,NULL),(809,44,'C250',' - C250',NULL,NULL),(810,44,'C280',' - C280',NULL,NULL),(811,44,'C300',' - C300',NULL,NULL),(812,44,'C320',' - C320',NULL,NULL),(813,44,'C32AMG',' - C32 AMG',NULL,NULL),(814,44,'C350',' - C350',NULL,NULL),(815,44,'C36AMG',' - C36 AMG',NULL,NULL),(816,44,'C43AMG',' - C43 AMG',NULL,NULL),(817,44,'C55AMG',' - C55 AMG',NULL,NULL),(818,44,'C63AMG',' - C63 AMG',NULL,NULL),(819,44,'CL_CLASS','CL Class (6)',NULL,NULL),(820,44,'CL500',' - CL500',NULL,NULL),(821,44,'CL550',' - CL550',NULL,NULL),(822,44,'CL55AMG',' - CL55 AMG',NULL,NULL),(823,44,'CL600',' - CL600',NULL,NULL),(824,44,'CL63AMG',' - CL63 AMG',NULL,NULL),(825,44,'CL65AMG',' - CL65 AMG',NULL,NULL),(826,44,'CLK_CLASS','CLK Class (7)',NULL,NULL),(827,44,'CLK320',' - CLK320',NULL,NULL),(828,44,'CLK350',' - CLK350',NULL,NULL),(829,44,'CLK430',' - CLK430',NULL,NULL),(830,44,'CLK500',' - CLK500',NULL,NULL),(831,44,'CLK550',' - CLK550',NULL,NULL),(832,44,'CLK55AMG',' - CLK55 AMG',NULL,NULL),(833,44,'CLK63AMG',' - CLK63 AMG',NULL,NULL),(834,44,'CLS_CLASS','CLS Class (4)',NULL,NULL),(835,44,'CLS500',' - CLS500',NULL,NULL),(836,44,'CLS550',' - CLS550',NULL,NULL),(837,44,'CLS55AMG',' - CLS55 AMG',NULL,NULL),(838,44,'CLS63AMG',' - CLS63 AMG',NULL,NULL),(839,44,'E_CLASS','E Class (18)',NULL,NULL),(840,44,'260E',' - 260E',NULL,NULL),(841,44,'280CE',' - 280CE',NULL,NULL),(842,44,'280E',' - 280E',NULL,NULL),(843,44,'400E',' - 400E',NULL,NULL),(844,44,'500E',' - 500E',NULL,NULL),(845,44,'E300',' - E300',NULL,NULL),(846,44,'E320',' - E320',NULL,NULL),(847,44,'E320BLUE',' - E320 Bluetec',NULL,NULL),(848,44,'E320CDI',' - E320 CDI',NULL,NULL),(849,44,'E350',' - E350',NULL,NULL),(850,44,'E350BLUE',' - E350 Bluetec',NULL,NULL),(851,44,'E400',' - E400 Hybrid',NULL,NULL),(852,44,'E420',' - E420',NULL,NULL),(853,44,'E430',' - E430',NULL,NULL),(854,44,'E500',' - E500',NULL,NULL),(855,44,'E550',' - E550',NULL,NULL),(856,44,'E55AMG',' - E55 AMG',NULL,NULL),(857,44,'E63AMG',' - E63 AMG',NULL,NULL),(858,44,'G_CLASS','G Class (4)',NULL,NULL),(859,44,'G500',' - G500',NULL,NULL),(860,44,'G550',' - G550',NULL,NULL),(861,44,'G55AMG',' - G55 AMG',NULL,NULL),(862,44,'G63AMG',' - G63 AMG',NULL,NULL),(863,44,'GL_CLASS','GL Class (5)',NULL,NULL),(864,44,'GL320BLUE',' - GL320 Bluetec',NULL,NULL),(865,44,'GL320CDI',' - GL320 CDI',NULL,NULL),(866,44,'GL350BLUE',' - GL350 Bluetec',NULL,NULL),(867,44,'GL450',' - GL450',NULL,NULL),(868,44,'GL550',' - GL550',NULL,NULL),(869,44,'GLK_CLASS','GLK Class (1)',NULL,NULL),(870,44,'GLK350',' - GLK350',NULL,NULL),(871,44,'M_CLASS','M Class (11)',NULL,NULL),(872,44,'ML320',' - ML320',NULL,NULL),(873,44,'ML320BLUE',' - ML320 Bluetec',NULL,NULL),(874,44,'ML320CDI',' - ML320 CDI',NULL,NULL),(875,44,'ML350',' - ML350',NULL,NULL),(876,44,'ML350BLUE',' - ML350 Bluetec',NULL,NULL),(877,44,'ML430',' - ML430',NULL,NULL),(878,44,'ML450HY',' - ML450 Hybrid',NULL,NULL),(879,44,'ML500',' - ML500',NULL,NULL),(880,44,'ML550',' - ML550',NULL,NULL),(881,44,'ML55AMG',' - ML55 AMG',NULL,NULL),(882,44,'ML63AMG',' - ML63 AMG',NULL,NULL),(883,44,'R_CLASS','R Class (6)',NULL,NULL),(884,44,'R320BLUE',' - R320 Bluetec',NULL,NULL),(885,44,'R320CDI',' - R320 CDI',NULL,NULL),(886,44,'R350',' - R350',NULL,NULL),(887,44,'R350BLUE',' - R350 Bluetec',NULL,NULL),(888,44,'R500',' - R500',NULL,NULL),(889,44,'R63AMG',' - R63 AMG',NULL,NULL),(890,44,'S_CLASS','S Class (30)',NULL,NULL),(891,44,'300SD',' - 300SD',NULL,NULL),(892,44,'300SDL',' - 300SDL',NULL,NULL),(893,44,'300SE',' - 300SE',NULL,NULL),(894,44,'300SEL',' - 300SEL',NULL,NULL),(895,44,'350SD',' - 350SD',NULL,NULL),(896,44,'350SDL',' - 350SDL',NULL,NULL),(897,44,'380SE',' - 380SE',NULL,NULL),(898,44,'380SEC',' - 380SEC',NULL,NULL),(899,44,'380SEL',' - 380SEL',NULL,NULL),(900,44,'400SE',' - 400SE',NULL,NULL),(901,44,'400SEL',' - 400SEL',NULL,NULL),(902,44,'420SEL',' - 420SEL',NULL,NULL),(903,44,'500SEC',' - 500SEC',NULL,NULL),(904,44,'500SEL',' - 500SEL',NULL,NULL),(905,44,'560SEC',' - 560SEC',NULL,NULL),(906,44,'560SEL',' - 560SEL',NULL,NULL),(907,44,'600SEC',' - 600SEC',NULL,NULL),(908,44,'600SEL',' - 600SEL',NULL,NULL),(909,44,'S320',' - S320',NULL,NULL),(910,44,'S350',' - S350',NULL,NULL),(911,44,'S350BLUE',' - S350 Bluetec',NULL,NULL),(912,44,'S400HY',' - S400 Hybrid',NULL,NULL),(913,44,'S420',' - S420',NULL,NULL),(914,44,'S430',' - S430',NULL,NULL),(915,44,'S500',' - S500',NULL,NULL),(916,44,'S550',' - S550',NULL,NULL),(917,44,'S55AMG',' - S55 AMG',NULL,NULL),(918,44,'S600',' - S600',NULL,NULL),(919,44,'S63AMG',' - S63 AMG',NULL,NULL),(920,44,'S65AMG',' - S65 AMG',NULL,NULL),(921,44,'SL_CLASS','SL Class (13)',NULL,NULL),(922,44,'300SL',' - 300SL',NULL,NULL),(923,44,'380SL',' - 380SL',NULL,NULL),(924,44,'380SLC',' - 380SLC',NULL,NULL),(925,44,'500SL',' - 500SL',NULL,NULL),(926,44,'560SL',' - 560SL',NULL,NULL),(927,44,'600SL',' - 600SL',NULL,NULL),(928,44,'SL320',' - SL320',NULL,NULL),(929,44,'SL500',' - SL500',NULL,NULL),(930,44,'SL550',' - SL550',NULL,NULL),(931,44,'SL55AMG',' - SL55 AMG',NULL,NULL),(932,44,'SL600',' - SL600',NULL,NULL),(933,44,'SL63AMG',' - SL63 AMG',NULL,NULL),(934,44,'SL65AMG',' - SL65 AMG',NULL,NULL),(935,44,'SLK_CLASS','SLK Class (8)',NULL,NULL),(936,44,'SLK230',' - SLK230',NULL,NULL),(937,44,'SLK250',' - SLK250',NULL,NULL),(938,44,'SLK280',' - SLK280',NULL,NULL),(939,44,'SLK300',' - SLK300',NULL,NULL),(940,44,'SLK320',' - SLK320',NULL,NULL),(941,44,'SLK32AMG',' - SLK32 AMG',NULL,NULL),(942,44,'SLK350',' - SLK350',NULL,NULL),(943,44,'SLK55AMG',' - SLK55 AMG',NULL,NULL),(944,44,'SLR_CLASS','SLR Class (1)',NULL,NULL),(945,44,'SLR',' - SLR',NULL,NULL),(946,44,'SLS_CLASS','SLS Class (1)',NULL,NULL),(947,44,'SLSAMG',' - SLS AMG',NULL,NULL),(948,44,'SPRINTER_CLASS','Sprinter Class (1)',NULL,NULL),(949,44,'MBSPRINTER',' - Sprinter',NULL,NULL),(950,44,'MBOTH','Other Mercedes-Benz Models',NULL,NULL),(951,45,'CAPRI','Capri',NULL,NULL),(952,45,'COUGAR','Cougar',NULL,NULL),(953,45,'MERCGRAND','Grand Marquis',NULL,NULL),(954,45,'LYNX','Lynx',NULL,NULL),(955,45,'MARAUDER','Marauder',NULL,NULL),(956,45,'MARINER','Mariner',NULL,NULL),(957,45,'MARQ','Marquis',NULL,NULL),(958,45,'MILAN','Milan',NULL,NULL),(959,45,'MONTEGO','Montego',NULL,NULL),(960,45,'MONTEREY','Monterey',NULL,NULL),(961,45,'MOUNTA','Mountaineer',NULL,NULL),(962,45,'MYSTIQ','Mystique',NULL,NULL),(963,45,'SABLE','Sable',NULL,NULL),(964,45,'TOPAZ','Topaz',NULL,NULL),(965,45,'TRACER','Tracer',NULL,NULL),(966,45,'VILLA','Villager',NULL,NULL),(967,45,'MERCZEP','Zephyr',NULL,NULL),(968,45,'MEOTH','Other Mercury Models',NULL,NULL),(969,46,'SCORP','Scorpio',NULL,NULL),(970,46,'XR4TI','XR4Ti',NULL,NULL),(971,46,'MEROTH','Other Merkur Models',NULL,NULL),(972,47,'COOPRCLUB_MODELS','Cooper Clubman Models (2)',NULL,NULL),(973,47,'COOPERCLUB',' - Cooper Clubman',NULL,NULL),(974,47,'COOPRCLUBS',' - Cooper S Clubman',NULL,NULL),(975,47,'COOPCOUNTRY_MODELS','Cooper Countryman Models (2)',NULL,NULL),(976,47,'COUNTRYMAN',' - Cooper Countryman',NULL,NULL),(977,47,'COUNTRYMNS',' - Cooper S Countryman',NULL,NULL),(978,47,'COOPCOUP_MODELS','Cooper Coupe Models (2)',NULL,NULL),(979,47,'MINICOUPE',' - Cooper Coupe',NULL,NULL),(980,47,'MINISCOUPE',' - Cooper S Coupe',NULL,NULL),(981,47,'COOPER_MODELS','Cooper Models (2)',NULL,NULL),(982,47,'COOPER',' - Cooper',NULL,NULL),(983,47,'COOPERS',' - Cooper S',NULL,NULL),(984,47,'COOPRROAD_MODELS','Cooper Roadster Models (2)',NULL,NULL),(985,47,'COOPERROAD',' - Cooper Roadster',NULL,NULL),(986,47,'COOPERSRD',' - Cooper S Roadster',NULL,NULL),(987,48,'3000GT','3000GT',NULL,NULL),(988,48,'CORD','Cordia',NULL,NULL),(989,48,'DIAMAN','Diamante',NULL,NULL),(990,48,'ECLIP','Eclipse',NULL,NULL),(991,48,'ENDEAVOR','Endeavor',NULL,NULL),(992,48,'MITEXP','Expo',NULL,NULL),(993,48,'GALANT','Galant',NULL,NULL),(994,48,'MITI','i',NULL,NULL),(995,48,'LANCERMITS','Lancer',NULL,NULL),(996,48,'LANCEREVO','Lancer Evolution',NULL,NULL),(997,48,'MITPU','Mighty Max',NULL,NULL),(998,48,'MIRAGE','Mirage',NULL,NULL),(999,48,'MONT','Montero',NULL,NULL),(1000,48,'MONTSPORT','Montero Sport',NULL,NULL),(1001,48,'OUTLANDER','Outlander',NULL,NULL),(1002,48,'OUTLANDSPT','Outlander Sport',NULL,NULL),(1003,48,'PRECIS','Precis',NULL,NULL),(1004,48,'RAIDERMITS','Raider',NULL,NULL),(1005,48,'SIGMA','Sigma',NULL,NULL),(1006,48,'MITSTAR','Starion',NULL,NULL),(1007,48,'TRED','Tredia',NULL,NULL),(1008,48,'MITVAN','Van',NULL,NULL),(1009,48,'MITOTH','Other Mitsubishi Models',NULL,NULL),(1010,49,'NIS200SX','200SX',NULL,NULL),(1011,49,'240SX','240SX',NULL,NULL),(1012,49,'300ZXTURBO','300ZX',NULL,NULL),(1013,49,'350Z','350Z',NULL,NULL),(1014,49,'370Z','370Z',NULL,NULL),(1015,49,'ALTIMA','Altima',NULL,NULL),(1016,49,'PATHARMADA','Armada',NULL,NULL),(1017,49,'AXXESS','Axxess',NULL,NULL),(1018,49,'CUBE','Cube',NULL,NULL),(1019,49,'FRONTI','Frontier',NULL,NULL),(1020,49,'GT-R','GT-R',NULL,NULL),(1021,49,'JUKE','Juke',NULL,NULL),(1022,49,'LEAF','Leaf',NULL,NULL),(1023,49,'MAX','Maxima',NULL,NULL),(1024,49,'MURANO','Murano',NULL,NULL),(1025,49,'MURANOCROS','Murano CrossCabriolet',NULL,NULL),(1026,49,'NV','NV',NULL,NULL),(1027,49,'NX','NX',NULL,NULL),(1028,49,'PATH','Pathfinder',NULL,NULL),(1029,49,'NISPU','Pickup',NULL,NULL),(1030,49,'PULSAR','Pulsar',NULL,NULL),(1031,49,'QUEST','Quest',NULL,NULL),(1032,49,'ROGUE','Rogue',NULL,NULL),(1033,49,'SENTRA','Sentra',NULL,NULL),(1034,49,'STANZA','Stanza',NULL,NULL),(1035,49,'TITAN','Titan',NULL,NULL),(1036,49,'NISVAN','Van',NULL,NULL),(1037,49,'VERSA','Versa',NULL,NULL),(1038,49,'XTERRA','Xterra',NULL,NULL),(1039,49,'NISSOTH','Other Nissan Models',NULL,NULL),(1040,50,'88','88',NULL,NULL),(1041,50,'ACHIEV','Achieva',NULL,NULL),(1042,50,'ALERO','Alero',NULL,NULL),(1043,50,'AURORA','Aurora',NULL,NULL),(1044,50,'BRAV','Bravada',NULL,NULL),(1045,50,'CUCR','Custom Cruiser',NULL,NULL),(1046,50,'OLDCUS','Cutlass',NULL,NULL),(1047,50,'OLDCALAIS','Cutlass Calais',NULL,NULL),(1048,50,'CIERA','Cutlass Ciera',NULL,NULL),(1049,50,'CSUPR','Cutlass Supreme',NULL,NULL),(1050,50,'OLDSFIR','Firenza',NULL,NULL),(1051,50,'INTRIG','Intrigue',NULL,NULL),(1052,50,'98','Ninety-Eight',NULL,NULL),(1053,50,'OMEG','Omega',NULL,NULL),(1054,50,'REGEN','Regency',NULL,NULL),(1055,50,'SILHO','Silhouette',NULL,NULL),(1056,50,'TORO','Toronado',NULL,NULL),(1057,50,'OLDOTH','Other Oldsmobile Models',NULL,NULL),(1058,51,'405','405',NULL,NULL),(1059,51,'504','504',NULL,NULL),(1060,51,'505','505',NULL,NULL),(1061,51,'604','604',NULL,NULL),(1062,51,'UNAVAILPEU','Other Peugeot Models',NULL,NULL),(1063,52,'ACC','Acclaim',NULL,NULL),(1064,52,'ARROW','Arrow',NULL,NULL),(1065,52,'BREEZE','Breeze',NULL,NULL),(1066,52,'CARAVE','Caravelle',NULL,NULL),(1067,52,'CHAMP','Champ',NULL,NULL),(1068,52,'COLT','Colt',NULL,NULL),(1069,52,'PLYMCONQ','Conquest',NULL,NULL),(1070,52,'GRANFURY','Gran Fury',NULL,NULL),(1071,52,'PLYMGRANV','Grand Voyager',NULL,NULL),(1072,52,'HORI','Horizon',NULL,NULL),(1073,52,'LASER','Laser',NULL,NULL),(1074,52,'NEON','Neon',NULL,NULL),(1075,52,'PROWLE','Prowler',NULL,NULL),(1076,52,'RELI','Reliant',NULL,NULL),(1077,52,'SAPPOROPLY','Sapporo',NULL,NULL),(1078,52,'SCAMP','Scamp',NULL,NULL),(1079,52,'SUNDAN','Sundance',NULL,NULL),(1080,52,'TRAILDUST','Trailduster',NULL,NULL),(1081,52,'VOYA','Voyager',NULL,NULL),(1082,52,'PLYOTH','Other Plymouth Models',NULL,NULL),(1083,53,'T-1000','1000',NULL,NULL),(1084,53,'6000','6000',NULL,NULL),(1085,53,'AZTEK','Aztek',NULL,NULL),(1086,53,'BON','Bonneville',NULL,NULL),(1087,53,'CATALINA','Catalina',NULL,NULL),(1088,53,'FIERO','Fiero',NULL,NULL),(1089,53,'FBIRD','Firebird',NULL,NULL),(1090,53,'G3','G3',NULL,NULL),(1091,53,'G5','G5',NULL,NULL),(1092,53,'G6','G6',NULL,NULL),(1093,53,'G8','G8',NULL,NULL),(1094,53,'GRNDAM','Grand Am',NULL,NULL),(1095,53,'GP','Grand Prix',NULL,NULL),(1096,53,'GTO','GTO',NULL,NULL),(1097,53,'J2000','J2000',NULL,NULL),(1098,53,'LEMANS','Le Mans',NULL,NULL),(1099,53,'MONTANA','Montana',NULL,NULL),(1100,53,'PARISI','Parisienne',NULL,NULL),(1101,53,'PHOENIX','Phoenix',NULL,NULL),(1102,53,'SAFARIPONT','Safari',NULL,NULL),(1103,53,'SOLSTICE','Solstice',NULL,NULL),(1104,53,'SUNBIR','Sunbird',NULL,NULL),(1105,53,'SUNFIR','Sunfire',NULL,NULL),(1106,53,'TORRENT','Torrent',NULL,NULL),(1107,53,'TS','Trans Sport',NULL,NULL),(1108,53,'VIBE','Vibe',NULL,NULL),(1109,53,'PONOTH','Other Pontiac Models',NULL,NULL),(1110,54,'911','911',NULL,NULL),(1111,54,'924','924',NULL,NULL),(1112,54,'928','928',NULL,NULL),(1113,54,'944','944',NULL,NULL),(1114,54,'968','968',NULL,NULL),(1115,54,'BOXSTE','Boxster',NULL,NULL),(1116,54,'CARRERAGT','Carrera GT',NULL,NULL),(1117,54,'CAYENNE','Cayenne',NULL,NULL),(1118,54,'CAYMAN','Cayman',NULL,NULL),(1119,54,'PANAMERA','Panamera',NULL,NULL),(1120,54,'POROTH','Other Porsche Models',NULL,NULL),(1121,55,'RAM1504WD','1500',NULL,NULL),(1122,55,'RAM25002WD','2500',NULL,NULL),(1123,55,'RAM3502WD','3500',NULL,NULL),(1124,55,'RAM4500','4500',NULL,NULL),(1125,56,'18I','18i',NULL,NULL),(1126,56,'FU','Fuego',NULL,NULL),(1127,56,'LECAR','Le Car',NULL,NULL),(1128,56,'R18','R18',NULL,NULL),(1129,56,'RENSPORT','Sportwagon',NULL,NULL),(1130,56,'UNAVAILREN','Other Renault Models',NULL,NULL),(1131,57,'CAMAR','Camargue',NULL,NULL),(1132,57,'CORN','Corniche',NULL,NULL),(1133,57,'GHOST','Ghost',NULL,NULL),(1134,57,'PARKWARD','Park Ward',NULL,NULL),(1135,57,'PHANT','Phantom',NULL,NULL),(1136,57,'DAWN','Silver Dawn',NULL,NULL),(1137,57,'SILSERAPH','Silver Seraph',NULL,NULL),(1138,57,'RRSPIR','Silver Spirit',NULL,NULL),(1139,57,'SPUR','Silver Spur',NULL,NULL),(1140,57,'UNAVAILRR','Other Rolls-Royce Models',NULL,NULL),(1141,58,'9-2X','9-2X',NULL,NULL),(1142,58,'9-3','9-3',NULL,NULL),(1143,58,'9-4X','9-4X',NULL,NULL),(1144,58,'9-5','9-5',NULL,NULL),(1145,58,'97X','9-7X',NULL,NULL),(1146,58,'900','900',NULL,NULL),(1147,58,'9000','9000',NULL,NULL),(1148,58,'SAOTH','Other Saab Models',NULL,NULL),(1149,59,'ASTRA','Astra',NULL,NULL),(1150,59,'AURA','Aura',NULL,NULL),(1151,59,'ION','ION',NULL,NULL),(1152,59,'L_SERIES','L Series (3)',NULL,NULL),(1153,59,'L100',' - L100',NULL,NULL),(1154,59,'L200',' - L200',NULL,NULL),(1155,59,'L300',' - L300',NULL,NULL),(1156,59,'LSSATURN','LS',NULL,NULL),(1157,59,'LW_SERIES','LW Series (4)',NULL,NULL),(1158,59,'LW',' - LW1',NULL,NULL),(1159,59,'LW2',' - LW2',NULL,NULL),(1160,59,'LW200',' - LW200',NULL,NULL),(1161,59,'LW300',' - LW300',NULL,NULL),(1162,59,'OUTLOOK','Outlook',NULL,NULL),(1163,59,'RELAY','Relay',NULL,NULL),(1164,59,'SC_SERIES','SC Series (2)',NULL,NULL),(1165,59,'SC1',' - SC1',NULL,NULL),(1166,59,'SC2',' - SC2',NULL,NULL),(1167,59,'SKY','Sky',NULL,NULL),(1168,59,'SL_SERIES','SL Series (3)',NULL,NULL),(1169,59,'SL',' - SL',NULL,NULL),(1170,59,'SL1',' - SL1',NULL,NULL),(1171,59,'SL2',' - SL2',NULL,NULL),(1172,59,'SW_SERIES','SW Series (2)',NULL,NULL),(1173,59,'SW1',' - SW1',NULL,NULL),(1174,59,'SW2',' - SW2',NULL,NULL),(1175,59,'VUE','Vue',NULL,NULL),(1176,59,'SATOTH','Other Saturn Models',NULL,NULL),(1177,60,'SCIFRS','FR-S',NULL,NULL),(1178,60,'IQ','iQ',NULL,NULL),(1179,60,'TC','tC',NULL,NULL),(1180,60,'XA','xA',NULL,NULL),(1181,60,'XB','xB',NULL,NULL),(1182,60,'XD','xD',NULL,NULL),(1183,61,'FORTWO','fortwo',NULL,NULL),(1184,61,'SMOTH','Other smart Models',NULL,NULL),(1185,62,'SRTVIPER','Viper',NULL,NULL),(1186,63,'825','825',NULL,NULL),(1187,63,'827','827',NULL,NULL),(1188,63,'UNAVAILSTE','Other Sterling Models',NULL,NULL),(1189,64,'BAJA','Baja',NULL,NULL),(1190,64,'BRAT','Brat',NULL,NULL),(1191,64,'SUBBRZ','BRZ',NULL,NULL),(1192,64,'FOREST','Forester',NULL,NULL),(1193,64,'IMPREZ','Impreza',NULL,NULL),(1194,64,'IMPWRX','Impreza WRX',NULL,NULL),(1195,64,'JUSTY','Justy',NULL,NULL),(1196,64,'SUBL','L Series',NULL,NULL),(1197,64,'LEGACY','Legacy',NULL,NULL),(1198,64,'LOYALE','Loyale',NULL,NULL),(1199,64,'SUBOUTBK','Outback',NULL,NULL),(1200,64,'SVX','SVX',NULL,NULL),(1201,64,'B9TRIBECA','Tribeca',NULL,NULL),(1202,64,'XT','XT',NULL,NULL),(1203,64,'XVCRSSTREK','XV Crosstrek',NULL,NULL),(1204,64,'SUBOTH','Other Subaru Models',NULL,NULL),(1205,65,'AERIO','Aerio',NULL,NULL),(1206,65,'EQUATOR','Equator',NULL,NULL),(1207,65,'ESTEEM','Esteem',NULL,NULL),(1208,65,'FORENZA','Forenza',NULL,NULL),(1209,65,'GRANDV','Grand Vitara',NULL,NULL),(1210,65,'KIZASHI','Kizashi',NULL,NULL),(1211,65,'RENO','Reno',NULL,NULL),(1212,65,'SAMUR','Samurai',NULL,NULL),(1213,65,'SIDE','Sidekick',NULL,NULL),(1214,65,'SWIFT','Swift',NULL,NULL),(1215,65,'SX4','SX4',NULL,NULL),(1216,65,'VERONA','Verona',NULL,NULL),(1217,65,'VITARA','Vitara',NULL,NULL),(1218,65,'X90','X-90',NULL,NULL),(1219,65,'XL7','XL7',NULL,NULL),(1220,65,'SUZOTH','Other Suzuki Models',NULL,NULL),(1221,66,'ROADSTER','Roadster',NULL,NULL),(1222,67,'4RUN','4Runner',NULL,NULL),(1223,67,'AVALON','Avalon',NULL,NULL),(1224,67,'CAMRY','Camry',NULL,NULL),(1225,67,'CELICA','Celica',NULL,NULL),(1226,67,'COROL','Corolla',NULL,NULL),(1227,67,'CORONA','Corona',NULL,NULL),(1228,67,'CRESS','Cressida',NULL,NULL),(1229,67,'ECHO','Echo',NULL,NULL),(1230,67,'FJCRUIS','FJ Cruiser',NULL,NULL),(1231,67,'HIGHLANDER','Highlander',NULL,NULL),(1232,67,'LC','Land Cruiser',NULL,NULL),(1233,67,'MATRIX','Matrix',NULL,NULL),(1234,67,'MR2','MR2',NULL,NULL),(1235,67,'MR2SPYDR','MR2 Spyder',NULL,NULL),(1236,67,'PASEO','Paseo',NULL,NULL),(1237,67,'PICKUP','Pickup',NULL,NULL),(1238,67,'PREVIA','Previa',NULL,NULL),(1239,67,'PRIUS','Prius',NULL,NULL),(1240,67,'PRIUSC','Prius C',NULL,NULL),(1241,67,'PRIUSV','Prius V',NULL,NULL),(1242,67,'RAV4','RAV4',NULL,NULL),(1243,67,'SEQUOIA','Sequoia',NULL,NULL),(1244,67,'SIENNA','Sienna',NULL,NULL),(1245,67,'SOLARA','Solara',NULL,NULL),(1246,67,'STARLET','Starlet',NULL,NULL),(1247,67,'SUPRA','Supra',NULL,NULL),(1248,67,'T100','T100',NULL,NULL),(1249,67,'TACOMA','Tacoma',NULL,NULL),(1250,67,'TERCEL','Tercel',NULL,NULL),(1251,67,'TUNDRA','Tundra',NULL,NULL),(1252,67,'TOYVAN','Van',NULL,NULL),(1253,67,'VENZA','Venza',NULL,NULL),(1254,67,'YARIS','Yaris',NULL,NULL),(1255,67,'TOYOTH','Other Toyota Models',NULL,NULL),(1256,68,'TR7','TR7',NULL,NULL),(1257,68,'TR8','TR8',NULL,NULL),(1258,68,'TRIOTH','Other Triumph Models',NULL,NULL),(1259,69,'BEETLE','Beetle',NULL,NULL),(1260,69,'VOLKSCAB','Cabrio',NULL,NULL),(1261,69,'CAB','Cabriolet',NULL,NULL),(1262,69,'CC','CC',NULL,NULL),(1263,69,'CORR','Corrado',NULL,NULL),(1264,69,'DASHER','Dasher',NULL,NULL),(1265,69,'EOS','Eos',NULL,NULL),(1266,69,'EUROVAN','Eurovan',NULL,NULL),(1267,69,'VOLKSFOX','Fox',NULL,NULL),(1268,69,'GLI','GLI',NULL,NULL),(1269,69,'GOLFR','Golf R',NULL,NULL),(1270,69,'GTI','GTI',NULL,NULL),(1271,69,'GOLFANDRABBITMODELS','Golf and Rabbit Models (2)',NULL,NULL),(1272,69,'GOLF',' - Golf',NULL,NULL),(1273,69,'RABBIT',' - Rabbit',NULL,NULL),(1274,69,'JET','Jetta',NULL,NULL),(1275,69,'PASS','Passat',NULL,NULL),(1276,69,'PHAETON','Phaeton',NULL,NULL),(1277,69,'RABBITPU','Pickup',NULL,NULL),(1278,69,'QUAN','Quantum',NULL,NULL),(1279,69,'R32','R32',NULL,NULL),(1280,69,'ROUTAN','Routan',NULL,NULL),(1281,69,'SCIR','Scirocco',NULL,NULL),(1282,69,'TIGUAN','Tiguan',NULL,NULL),(1283,69,'TOUAREG','Touareg',NULL,NULL),(1284,69,'VANAG','Vanagon',NULL,NULL),(1285,69,'VWOTH','Other Volkswagen Models',NULL,NULL),(1286,70,'240','240',NULL,NULL),(1287,70,'260','260',NULL,NULL),(1288,70,'740','740',NULL,NULL),(1289,70,'760','760',NULL,NULL),(1290,70,'780','780',NULL,NULL),(1291,70,'850','850',NULL,NULL),(1292,70,'940','940',NULL,NULL),(1293,70,'960','960',NULL,NULL),(1294,70,'C30','C30',NULL,NULL),(1295,70,'C70','C70',NULL,NULL),(1296,70,'S40','S40',NULL,NULL),(1297,70,'S60','S60',NULL,NULL),(1298,70,'S70','S70',NULL,NULL),(1299,70,'S80','S80',NULL,NULL),(1300,70,'S90','S90',NULL,NULL),(1301,70,'V40','V40',NULL,NULL),(1302,70,'V50','V50',NULL,NULL),(1303,70,'V70','V70',NULL,NULL),(1304,70,'V90','V90',NULL,NULL),(1305,70,'XC60','XC60',NULL,NULL),(1306,70,'XC','XC70',NULL,NULL),(1307,70,'XC90','XC90',NULL,NULL),(1308,70,'VOLOTH','Other Volvo Models',NULL,NULL),(1309,71,'GV','GV',NULL,NULL),(1310,71,'GVC','GVC',NULL,NULL),(1311,71,'GVL','GVL',NULL,NULL),(1312,71,'GVS','GVS',NULL,NULL),(1313,71,'GVX','GVX',NULL,NULL),(1314,71,'YUOTH','Other Yugo Models',NULL,NULL);
/*!40000 ALTER TABLE `car_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (98,'Automobiliai',0,'automobiliai',1,'2019-09-20 22:36:40','2019-09-20 22:36:40'),(100,'Naudoti automobiliai',98,'naudoti-automobiliai',1,'2019-09-20 22:37:32','2019-09-20 22:37:32'),(101,'Nauji automobiliai',98,'nauji-automobiliai',1,'2019-09-20 22:37:43','2019-09-20 22:37:43'),(105,'Motociklai, Apranga',0,'motociklai-apranga',1,'2019-09-20 22:41:00','2019-09-20 22:41:00'),(106,'Motociklai',105,'motociklai',1,'2019-09-20 22:41:08','2019-09-20 22:41:08'),(107,'Apranga',105,'apranga',1,'2019-09-20 22:41:25','2019-09-20 22:41:25'),(108,'Šalmai',105,'salmai',1,'2019-09-20 22:41:35','2019-09-20 22:41:35'),(109,'Aksesuarai',105,'aksesuarai',1,'2019-09-20 22:41:41','2019-09-20 22:41:41'),(110,'Ratlankiai, Padangos',0,'ratlankiai-padangos',1,'2019-09-20 22:42:23','2019-09-20 22:42:23'),(111,'Padangos',110,'padangos',1,'2019-09-20 22:42:32','2019-09-20 22:42:32'),(112,'Ratlankiai',110,'ratlankiai',1,'2019-09-20 22:42:42','2019-09-20 22:42:42'),(113,'Dalys',0,'dalys',1,'2019-09-20 22:42:59','2019-09-20 22:42:59'),(114,'Automobilių dalys',113,'automobiliu-dalys',1,'2019-09-20 22:44:46','2019-09-20 22:44:46'),(115,'Mikroautobusų dalys',113,'mikroautobusu-dalys',1,'2019-09-20 22:44:59','2019-09-20 22:44:59'),(116,'Motociklų dalys',113,'motociklu-dalys',1,'2019-09-20 22:45:19','2019-09-20 22:45:19'),(117,'Sunkiojo transporto dalys',113,'sunkiojo-transporto-dalys',1,'2019-09-20 22:45:30','2019-09-20 22:45:30'),(118,'Žemės ūkio, spec. dalys',113,'zemes-ukio-spec-dalys',1,'2019-09-20 22:45:43','2019-09-20 22:45:43'),(119,'Aksesuarai, akumuliatoriai, Tuning',113,'aksesuarai-akumuliatoriai-tuning',1,'2019-09-20 22:47:02','2019-09-20 22:47:02'),(120,'Sunkusis transportas',0,'sunkusis-transportas',1,'2019-09-20 22:48:00','2019-09-20 22:48:00'),(121,'Furgonai, sunkvežimiai iki 7,5t.',120,'furgonai-sunkvezimiai-iki-75t',1,'2019-09-20 22:48:05','2019-09-20 22:48:05'),(122,'Sunkvežimiai virš 7,5t.',120,'sunkvezimiai-virs-75t',1,'2019-09-20 22:48:14','2019-09-20 22:48:14'),(123,'Vilkikai',120,'vilkikai',1,'2019-09-20 22:48:23','2019-09-20 22:48:23'),(124,'Autotraukiniai, autovežiai',120,'autotraukiniai-autoveziai',1,'2019-09-20 22:48:32','2019-09-20 22:48:32'),(125,'Autobusai',120,'autobusai',1,'2019-09-20 22:48:40','2019-09-20 22:48:40'),(126,'Mikroautobusai',120,'mikroautobusai',1,'2019-09-20 22:49:06','2019-09-20 22:49:06'),(127,'Priekabos / Puspriekabės',120,'priekabos-puspriekabes',1,'2019-09-20 22:49:14','2019-09-20 22:49:14'),(128,'Transporto nuoma',0,'transporto-nuoma',1,'2019-09-20 22:49:36','2019-09-20 22:49:36'),(129,'Automobilių nuoma',128,'automobiliu-nuoma',1,'2019-09-20 22:49:47','2019-09-20 22:49:47'),(130,'Limuzinų, vestuvių transporto nuoma',128,'limuzinu-vestuviu-transporto-nuoma',1,'2019-09-20 22:50:00','2019-09-20 22:50:00'),(131,'Mikroautobusų, turistinio, vandens tr. nuoma',128,'mikroautobusu-turistinio-vandens-tr-nuoma',1,'2019-09-20 22:50:09','2019-09-20 22:50:09'),(132,'Sunkiojo transporto, priekabų nuoma',128,'sunkiojo-transporto-priekabu-nuoma',1,'2019-09-20 22:50:20','2019-09-20 22:50:20');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_attribute_set_realations`
--

DROP TABLE IF EXISTS `category_attribute_set_realations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_attribute_set_realations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `attribute_set_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_attribute_set_realations`
--

LOCK TABLES `category_attribute_set_realations` WRITE;
/*!40000 ALTER TABLE `category_attribute_set_realations` DISABLE KEYS */;
INSERT INTO `category_attribute_set_realations` VALUES (3,100,10,'2019-09-23 16:57:32','2019-09-23 16:57:32'),(4,101,10,'2019-09-23 16:57:40','2019-09-23 16:57:40');
/*!40000 ALTER TABLE `category_attribute_set_realations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Vilnius','2019-08-08 17:39:34','2019-08-08 17:39:34'),(2,'Kaunas','2019-08-08 17:39:40','2019-08-08 17:39:40'),(3,'Klaipėda','2019-08-08 17:39:47','2019-08-08 17:39:47'),(4,'Šiauliai','2019-08-08 17:39:56','2019-08-08 17:39:56'),(5,'Panevežys','2019-08-08 17:40:10','2019-08-08 17:40:10'),(8,'Alytus','2019-08-08 20:16:37','2019-08-08 20:16:37');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'tikrai pigus',1,'2019-08-08 18:56:03','2019-08-08 18:56:03'),(2,1,1,'Sudomino, pasuk',1,'2019-08-08 20:59:34','2019-08-08 20:59:34'),(3,2,1,'Grazus kompiuteris',1,'2019-08-08 23:50:18','2019-08-08 23:50:18'),(4,2,1,'pigus',1,'2019-08-08 23:52:08','2019-08-15 11:33:24'),(5,3,1,'man per brangu',1,'2019-08-15 11:51:27','2019-08-15 11:51:27'),(6,3,1,'Grazus',1,'2019-08-15 11:55:39','2019-08-15 11:55:39'),(7,3,1,'negrazus',1,'2019-08-15 11:56:58','2019-08-15 11:56:58'),(8,3,1,'negrazus',0,'2019-08-15 11:57:41','2019-08-15 12:00:06'),(9,3,1,'asddasd',0,'2019-08-15 11:57:46','2019-08-15 12:00:04'),(10,3,1,'sadad',0,'2019-08-15 11:58:22','2019-08-15 12:00:01'),(11,3,1,'dasda',0,'2019-08-15 11:58:35','2019-08-15 11:58:41'),(12,4,1,'kinietiskas',1,'2019-08-15 12:03:19','2019-08-15 12:03:19'),(13,3,1,'Tomo namas cia',1,'2019-08-20 19:14:17','2019-08-20 19:14:17'),(14,14,1,'slyva cia',1,'2019-09-12 15:58:42','2019-09-12 15:58:42');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advert_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_types`
--

DROP TABLE IF EXISTS `message_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_types`
--

LOCK TABLES `message_types` WRITE;
/*!40000 ALTER TABLE `message_types` DISABLE KEYS */;
INSERT INTO `message_types` VALUES (1,'Danger','2019-08-28 15:40:10','2019-08-28 16:01:26'),(2,'Info','2019-08-28 15:40:22','2019-08-28 15:40:22'),(3,'Notification','2019-08-28 15:40:48','2019-08-28 15:40:48'),(4,'Promo','2019-08-28 16:08:24','2019-08-28 16:08:24');
/*!40000 ALTER TABLE `message_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `r_id` int(11) DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL,
  `seen` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,'Merry Xmas!!','We Whish you a merry Xmas!',1,1,4,'2019-08-30 15:43:01',1,1,'2019-08-28 17:07:45','2019-08-30 15:43:01'),(2,1,'Happy new year!','WOOOOHOOOO! now discounts on everything!',1,1,4,NULL,0,1,'2019-08-28 17:08:41','2019-08-28 17:41:54'),(3,1,'Merry Xmas!!','We Whish you a merry Xmas!',1,1,4,NULL,0,0,'2019-08-28 17:35:07','2019-08-28 17:35:07'),(33,1,'Your Advert will expire soon!','Hello, Your Advert:\"Canon EOS 60d + 18-135 f 3,5-5,6\" will expire after a Day!',1,1,1,'2019-08-30 17:53:35',1,1,'2019-08-30 17:53:31','2019-08-30 17:53:35');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(5,'2019_08_07_152810_create_adverts_table',2),(6,'2019_08_07_154159_create_categories_table',2),(8,'2019_08_07_155239_create_cities_table',3),(9,'2019_08_07_155210_create_comments_table',4),(10,'2019_08_14_152950_create_permission_tables',5),(13,'2019_08_20_184313_create_profiles_table',6),(14,'2019_08_22_163612_create_images_table',7),(16,'2019_08_27_160901_add_expiration_date_to_adverts',8),(17,'2019_08_27_164817_create_messages_table',9),(18,'2019_08_28_151155_create_message_types_table',10),(25,'2019_09_09_164249_create_atribute_sets_table',11),(26,'2019_09_09_164255_create_atributes_table',11),(27,'2019_09_09_164309_create_atribute_types_table',11),(28,'2019_09_09_164334_create_atribute_set_realations_table',11),(29,'2019_09_09_164347_create_atribute_values_table',11),(30,'2019_09_09_164452_add_attribute_set_to_adverts',11),(31,'2019_09_11_154420_add_lable_to_atributes',12),(32,'2019_09_17_155508_create_subscribers_table',13),(35,'2019_09_23_153058_create_category_attribute_set_realations_table',14),(36,'2019_09_23_181236_create_car_makes_table',15),(37,'2019_09_23_181250_create_car_models_table',15),(38,'2019_09_24_154127_add_atribute_id_to_car_makes',16),(39,'2019_09_24_174926_create_attribute_data_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\User',1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'+37060785850',25,'I`m Cool','download.jpg',1,1,1,1,'robertas','2019-08-20 21:35:45','2019-09-12 18:39:00'),(2,'+3706078000',25,'I`m Cool',NULL,1,1,1,1,'robertas','2019-08-20 21:38:00','2019-08-20 21:38:00');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','web','2019-08-14 15:41:44','2019-08-14 15:41:44');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (3,'juozas','Juozas@gmail.com','2019-09-17 16:42:42','2019-09-17 16:42:42'),(4,'geiste','geiste@gmail.com','2019-09-17 16:44:07','2019-09-17 16:44:07');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Robertas','rgunia@gmail.com',NULL,'$2y$10$fTyDQj62Cz9AKV3VLMIKcePdF2i2/mBtvRaczFkwNzf78aEfupCjq',NULL,'2019-08-07 16:51:53','2019-08-07 16:51:53');
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

-- Dump completed on 2019-10-09 16:21:19
