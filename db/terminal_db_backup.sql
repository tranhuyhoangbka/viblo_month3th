-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: terminal_staging
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_username` (`username`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'管理者','admin','2017-07-22 03:43:15','2017-07-24 07:44:55','$2a$11$VnbRXbnvYqb2l5KnK65iqezkUM.vLdEW2T7IcafMNuLoo1ToUwM3y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','staging','2017-07-22 03:29:34','2017-07-22 03:29:34');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_values`
--

DROP TABLE IF EXISTS `attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_values` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint(20) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attribute_values_on_attribute_id` (`attribute_id`),
  KEY `index_attribute_values_on_product_id` (`product_id`),
  CONSTRAINT `fk_rails_74f16abc60` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  CONSTRAINT `fk_rails_db2cd3b272` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_values`
--

LOCK TABLES `attribute_values` WRITE;
/*!40000 ALTER TABLE `attribute_values` DISABLE KEYS */;
INSERT INTO `attribute_values` VALUES (1,2,'S','2017-07-22 04:02:56','2017-07-22 04:02:56',1,NULL),(2,2,'M','2017-07-22 04:02:56','2017-07-22 04:02:56',1,NULL),(3,2,'L','2017-07-22 04:02:56','2017-07-22 04:02:56',1,NULL),(4,1,'Blue','2017-07-22 04:02:56','2017-07-22 04:02:56',1,NULL),(5,1,'Red','2017-07-22 18:22:35','2017-07-22 18:22:35',1,NULL),(6,1,'Blue','2017-07-24 02:14:53','2017-07-24 02:14:53',2,NULL),(10,1,'Blue','2017-07-24 02:16:17','2017-07-24 02:16:17',3,NULL),(11,2,'S','2017-07-24 02:16:17','2017-07-24 02:16:17',3,NULL),(12,2,'M','2017-07-24 02:16:17','2017-07-24 02:16:17',3,NULL),(13,1,'Pink','2017-07-24 02:17:15','2017-07-24 02:17:15',4,NULL),(14,2,'S','2017-07-24 02:17:15','2017-07-24 02:17:15',4,NULL),(15,2,'M','2017-07-24 02:17:15','2017-07-24 02:17:15',4,NULL),(16,2,'P','2017-07-24 02:17:15','2017-07-24 02:17:15',4,NULL),(22,1,'dfff','2017-07-25 01:57:54','2017-07-25 01:57:54',7,NULL),(23,1,'bhgh','2017-07-25 01:57:54','2017-07-25 01:57:54',7,NULL),(25,1,'brown','2017-07-25 02:59:14','2017-07-25 02:59:14',9,NULL),(28,2,'m','2017-07-25 03:27:08','2017-07-25 03:27:08',10,NULL),(29,2,'l','2017-07-25 03:27:08','2017-07-25 03:27:08',10,NULL),(30,2,'i','2017-07-25 03:27:08','2017-07-25 03:27:08',10,NULL),(36,1,'bbbbb','2017-07-25 07:24:58','2017-07-25 07:24:58',13,NULL),(38,1,'red','2017-07-26 01:46:02','2017-07-26 01:46:02',18,NULL),(39,2,'S','2017-07-26 01:46:02','2017-07-26 01:46:02',18,NULL),(40,2,'M','2017-07-26 01:46:02','2017-07-26 01:46:02',18,NULL),(41,2,'L','2017-07-26 01:46:02','2017-07-26 01:46:02',18,NULL),(42,2,'XS','2017-07-26 01:46:02','2017-07-26 01:46:02',18,NULL),(43,2,'XL','2017-07-26 01:46:02','2017-07-26 01:46:02',18,NULL),(44,2,'Q','2017-07-26 06:46:20','2017-07-26 06:46:20',11,NULL),(45,2,'D','2017-07-26 06:46:20','2017-07-26 06:46:20',11,NULL),(46,2,'F','2017-07-26 06:46:20','2017-07-26 06:46:20',11,NULL),(47,2,NULL,'2017-07-26 06:46:20','2017-07-26 06:46:20',NULL,NULL),(50,2,NULL,'2017-07-26 06:47:28','2017-07-26 06:47:28',NULL,NULL),(51,2,NULL,'2017-07-26 06:59:46','2017-07-26 06:59:46',NULL,NULL),(53,2,NULL,'2017-07-26 07:04:36','2017-07-26 07:04:36',NULL,NULL),(55,2,'S','2017-07-27 08:09:11','2017-07-27 08:09:11',23,NULL),(56,2,'M','2017-07-27 08:09:11','2017-07-27 08:09:11',23,NULL),(57,2,'L','2017-07-27 08:09:11','2017-07-27 08:09:11',23,NULL),(58,2,'XS','2017-07-27 08:09:11','2017-07-27 08:09:11',23,NULL),(59,2,'XL','2017-07-27 08:09:11','2017-07-27 08:09:11',23,NULL),(60,1,'Navy','2017-07-27 08:15:42','2017-07-27 08:15:42',23,NULL),(61,1,'White','2017-07-27 08:15:42','2017-07-27 08:15:42',23,NULL),(62,1,'Light Grey Marl','2017-07-27 08:15:42','2017-07-27 08:15:42',23,NULL),(63,1,'Colbat','2017-07-27 08:15:42','2017-07-27 08:15:42',23,NULL),(64,1,'Pavilion Red','2017-07-27 08:15:42','2017-07-27 08:15:42',23,NULL),(65,1,'True Black','2017-07-27 08:15:42','2017-07-27 08:15:42',23,NULL),(66,1,'Pink','2017-07-27 08:15:42','2017-07-27 08:15:42',23,NULL),(69,2,'商品名を入力してください商品名を入力してください商品名を入力してください商品名を入力してくださいさい','2017-07-27 08:49:15','2017-07-27 08:49:15',2,NULL),(70,1,'abv','2017-07-28 07:46:26','2017-07-28 07:46:26',26,NULL),(72,1,'グレン','2017-07-29 03:27:22','2017-07-29 03:27:22',27,NULL),(73,2,'M','2017-07-29 03:27:22','2017-07-29 03:27:22',27,NULL),(74,2,'L','2017-07-29 03:27:22','2017-07-29 03:27:22',27,NULL),(77,1,'red','2017-07-29 07:16:59','2017-07-29 07:16:59',17,NULL),(78,1,'pink','2017-07-31 08:52:16','2017-07-31 08:52:16',36,NULL),(79,2,'商品名を入力してください商品名を入力してください商品名を入力してください商品名を入力してくださいさい','2017-07-31 10:01:09','2017-07-31 10:01:09',34,NULL),(80,1,'SM','2017-07-31 10:01:38','2017-07-31 10:01:38',34,NULL),(81,1,'MC','2017-07-31 10:01:38','2017-07-31 10:01:38',34,NULL),(82,1,'Navy','2017-07-31 10:11:25','2017-07-31 10:11:25',22,NULL),(83,1,'White','2017-07-31 10:11:25','2017-07-31 10:11:25',22,NULL),(84,1,'Light Grey Marl','2017-07-31 10:11:25','2017-07-31 10:11:25',22,NULL),(85,1,'Colbat','2017-07-31 10:11:25','2017-07-31 10:11:25',22,NULL),(86,1,'Pavilion Red','2017-07-31 10:11:25','2017-07-31 10:11:25',22,NULL),(87,1,'True Black','2017-07-31 10:11:25','2017-07-31 10:11:25',22,NULL),(88,1,'Pink','2017-07-31 10:11:25','2017-07-31 10:11:25',22,NULL),(89,2,'S','2017-07-31 10:11:25','2017-07-31 10:11:25',22,NULL),(90,2,'M','2017-07-31 10:11:25','2017-07-31 10:11:25',22,NULL),(91,2,'L','2017-07-31 10:11:25','2017-07-31 10:11:25',22,NULL),(92,2,'XXS','2017-07-31 10:11:25','2017-07-31 10:11:25',22,NULL),(93,1,'Navy','2017-08-11 04:27:13','2017-08-11 04:27:13',38,NULL),(94,1,'Red','2017-08-11 04:27:13','2017-08-11 04:27:13',38,NULL),(95,1,'gray','2017-08-11 04:27:13','2017-08-11 04:27:13',39,NULL),(96,1,'white','2017-08-11 04:27:14','2017-08-11 04:27:14',39,NULL),(97,1,'black','2017-08-11 04:38:34','2017-08-11 04:38:34',40,NULL),(99,1,'bbb','2017-08-11 07:01:37','2017-08-11 07:01:56',12,2),(100,1,'hhh','2017-08-11 07:01:56','2017-08-11 07:01:56',12,1),(101,1,'gray','2017-08-11 04:27:13','2017-08-11 04:27:13',47,NULL),(102,1,'white','2017-08-11 04:27:14','2017-08-11 04:27:14',47,NULL),(103,1,'Navy','2017-08-11 04:27:13','2017-08-11 04:27:13',48,NULL),(104,1,'Red','2017-08-11 04:27:13','2017-08-11 04:27:13',48,NULL),(105,1,'black','2017-08-11 04:38:34','2017-08-11 04:38:34',50,NULL),(106,1,'gray','2017-08-11 04:27:13','2017-08-11 04:27:13',54,NULL),(107,1,'white','2017-08-11 04:27:14','2017-08-11 04:27:14',54,NULL),(108,1,'Navy','2017-08-11 04:27:13','2017-08-11 04:27:13',55,NULL),(109,1,'Red','2017-08-11 04:27:13','2017-08-11 04:27:13',55,NULL),(110,1,'black','2017-08-11 04:38:34','2017-08-11 04:38:34',57,NULL),(111,1,'black','2017-08-11 12:13:47','2017-08-11 12:13:47',30,NULL),(112,1,'black','2017-08-17 10:15:23','2017-08-17 10:15:23',32,NULL),(113,1,'登録したタグで絞り込みができま登録したタグで絞り込みができま登録したタグで絞り込みができま','2017-08-18 11:46:14','2017-08-18 11:46:14',27,1),(114,2,'X','2017-08-21 01:36:30','2017-08-21 01:36:30',19,NULL),(115,2,'S','2017-08-21 01:36:30','2017-08-21 01:36:30',19,NULL),(116,1,'black','2017-08-21 01:47:22','2017-08-21 01:47:22',45,NULL),(117,1,'colbat','2017-08-21 01:47:22','2017-08-21 01:47:22',45,NULL),(118,1,'gray','2017-08-21 01:47:22','2017-08-21 01:47:22',45,NULL),(119,1,'navy','2017-08-21 01:47:22','2017-08-21 01:47:22',45,NULL),(120,1,'red','2017-08-21 01:47:22','2017-08-21 01:47:22',45,NULL),(121,1,'white','2017-08-21 01:47:23','2017-08-21 01:47:23',45,NULL),(122,2,'X','2017-08-21 01:47:58','2017-08-21 01:47:58',45,NULL),(123,2,'S','2017-08-21 01:47:58','2017-08-21 01:47:58',45,NULL),(136,1,'black','2017-08-21 10:59:13','2017-08-21 10:59:13',19,NULL),(137,1,'colbat','2017-08-21 10:59:13','2017-08-21 10:59:13',19,NULL),(138,1,'gray','2017-08-21 10:59:14','2017-08-21 10:59:14',19,NULL),(139,1,'navy','2017-08-21 10:59:14','2017-08-21 10:59:14',19,NULL),(140,1,'red','2017-08-21 10:59:14','2017-08-21 10:59:14',19,NULL),(141,1,'white','2017-08-21 10:59:14','2017-08-21 10:59:14',19,NULL);
/*!40000 ALTER TABLE `attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attr_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'color','2017-07-22 03:45:35','2017-07-22 03:45:35'),(2,'size','2017-07-22 03:45:37','2017-07-22 03:45:37');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_buyers`
--

DROP TABLE IF EXISTS `brand_buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand_buyers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_user_id` bigint(20) DEFAULT NULL,
  `buyer_user_id` bigint(20) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_brand_buyers_on_brand_user_id` (`brand_user_id`),
  KEY `index_brand_buyers_on_buyer_user_id` (`buyer_user_id`),
  CONSTRAINT `fk_rails_33e4646e67` FOREIGN KEY (`brand_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_d9352be427` FOREIGN KEY (`buyer_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_buyers`
--

LOCK TABLES `brand_buyers` WRITE;
/*!40000 ALTER TABLE `brand_buyers` DISABLE KEYS */;
INSERT INTO `brand_buyers` VALUES (1,1,4,90,1,'2017-08-22 02:02:15','2017-08-22 02:02:15');
/*!40000 ALTER TABLE `brand_buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_images`
--

DROP TABLE IF EXISTS `company_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `image_type` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_company_images_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_bc3b7ffe94` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_images`
--

LOCK TABLES `company_images` WRITE;
/*!40000 ALTER TABLE `company_images` DISABLE KEYS */;
INSERT INTO `company_images` VALUES (1,1,'Screen_Shot_2017-08-11_at_11.23.15.png',1,0,'2017-08-11 05:58:25','2017-08-11 05:58:25'),(2,1,'Screen_Shot_2017-08-11_at_11.25.32.png',2,0,'2017-08-11 05:58:25','2017-08-11 05:58:25'),(3,1,'Screen_Shot_2017-08-11_at_11.21.17.png',1,1,'2017-08-11 05:58:25','2017-08-11 05:58:25'),(4,1,'colbat4.jpg',2,1,'2017-08-17 04:40:43','2017-08-17 04:40:43'),(5,1,'red4.jpg',3,1,'2017-08-17 04:40:43','2017-08-17 04:40:43'),(6,1,'navy4.jpg',4,1,'2017-08-17 07:34:56','2017-08-17 07:34:56'),(7,1,'navy5.jpg',8,1,'2017-08-17 07:34:56','2017-08-21 09:09:09'),(8,1,'red1.jpg',5,1,'2017-08-17 07:34:56','2017-08-21 09:09:09'),(9,1,'white1.jpg',6,1,'2017-08-17 07:34:56','2017-08-21 09:09:09'),(10,1,'white4.jpg',7,1,'2017-08-17 07:34:56','2017-08-21 09:09:09'),(11,1,'white5.jpg',9,1,'2017-08-17 07:34:56','2017-08-17 07:34:56');
/*!40000 ALTER TABLE `company_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibitions`
--

DROP TABLE IF EXISTS `exhibitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exhibitions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `memo` text COLLATE utf8_unicode_ci,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_retail_sales` int(11) DEFAULT NULL,
  `total_wholesale_sales` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `brand_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_exhibitions_on_brand_user_id` (`brand_user_id`),
  CONSTRAINT `fk_rails_20327a188d` FOREIGN KEY (`brand_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibitions`
--

LOCK TABLES `exhibitions` WRITE;
/*!40000 ALTER TABLE `exhibitions` DISABLE KEYS */;
INSERT INTO `exhibitions` VALUES (1,'TOKYO SUMMER 2017 (only for test, do not change)','desc','good','2.png',20,30,0,'2017-07-22 03:52:07','2017-08-11 07:00:48',1),(2,'This is the second exhibition','Just for testing',NULL,NULL,NULL,NULL,1,'2017-07-25 08:18:26','2017-07-29 04:52:26',1),(3,'The first collection','This is the test exhibition',NULL,'1.png',NULL,NULL,1,'2017-07-25 09:07:35','2017-07-31 02:32:09',1),(4,'This is the tenth exhibition',NULL,NULL,'image1.png',NULL,NULL,1,'2017-07-25 09:08:05','2017-07-29 05:03:26',1),(6,'This is the eighth exhibition','cvbncvbndfgh',NULL,'giphy1.gif',NULL,NULL,1,'2017-07-25 09:10:26','2017-07-29 04:57:33',1),(7,'This is the seventh exhibition',NULL,NULL,'The-Walking-Dead-Wallpaper-HD-1920x1080-8.jpg',NULL,NULL,1,'2017-07-25 09:19:17','2017-07-29 04:57:21',1),(8,'This is the sixth exhibition','Brand Concept\r\n展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会1',NULL,'3.png',NULL,NULL,1,'2017-07-25 09:24:49','2017-07-29 04:56:48',1),(9,'This is the fifth exhibition',NULL,NULL,'2.png',NULL,NULL,1,'2017-07-25 09:25:07','2017-07-29 04:56:33',1),(10,'This is the fourth exhibition','BRAND CONCEPT\r\nかつてグレッグノーマン、ジャックニクラウスが愛し、サポートし続けたLYLE＆SCOTT。そして、今もセ      ントアンドリュース等の格式高い名門ゴルフコースがセーターの製作依頼をしています。それは、ライル＆スコットがいつの時代も正統派ゴルファーに信頼される、ステータスの高い商品を...','展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名展示会名','4.png',NULL,NULL,1,'2017-07-25 09:25:40','2017-07-29 04:56:17',1),(11,'A group of best collection for this summer 2017 for all of our customers','BRAND CONCEPT\r\nかつてグレッグノーマン、ジャックニクラウスが愛し、サポートし続けたLYLE＆SCOTT。そして、今もセ      ントアンドリュース等の格式高い名門ゴルフコースがセーターの製作依頼をしています。それは、ライル＆スコットがいつの時代も正統派ゴルファーに信頼される、ステータスの高い商品を...',NULL,'em-be-gai-19.jpg',NULL,NULL,1,'2017-07-25 11:10:01','2017-07-29 04:55:32',1),(12,'This is the third exhibition','Just for testing',NULL,'2.png',NULL,NULL,1,'2017-07-26 04:00:11','2017-07-29 04:54:55',1),(13,'Best collection','exhibition',NULL,'1.png',NULL,NULL,1,'2017-07-26 04:01:28','2017-08-11 15:01:05',1),(14,'このコレクションは若者のための春/秋用です。 それは最高','このコレクションは若者のための春/秋用です。 それは最高',NULL,'4.png',NULL,NULL,1,'2017-07-26 07:42:01','2017-07-29 04:47:04',1),(15,'このコレクションは若者のための春/秋用です','このコレクションは若者のための春/秋用です',NULL,NULL,NULL,NULL,1,'2017-07-26 08:14:10','2017-07-29 04:46:01',1),(16,'【BLACKBOX】 MARK&LONA 2017 Spring/Fall stay','MARK&LONA BLACKBOX',NULL,'4.png',NULL,NULL,1,'2017-07-26 08:14:57','2017-07-29 04:44:57',1),(17,'【for AIOLI 】 MARK&LONA 2017 Spring/Sumer Collection',NULL,NULL,'3.png',NULL,NULL,1,'2017-07-26 08:18:53','2017-07-29 04:44:29',1),(18,'HORN G.M.T 2017 Spring,Summer Exhibi...','・HORN G.M.T\r\n2006年のブランド設立から、余裕ある大人のラグジャリーライフスタイルを提案してきた「HORN GARMENT /ホーンガーメント」\r\n米サンディエゴのレジェンドサーフボードビルダーであるSTU KENSON、マークジェイコブス...',NULL,'2.png',NULL,NULL,1,'2017-07-26 08:20:15','2017-07-29 04:43:29',1),(19,'LYLE&SCOTT 2017 Autumn/Winter Exhibi...','〜BRAND CONCEPT〜\r\nかつてグレッグノーマン、ジャックニクラウスが愛し、サポートし続けたLYLE＆SCOTT。そして、今もセントアンドリュース等の格式高い名門ゴルフコースがセーターの製作依頼をしています。それは、ライル＆スコットがいつの時代も正統派ゴルファーに信頼される、ステータスの高い商品を...',NULL,'1.png',NULL,NULL,1,'2017-07-26 08:23:53','2017-07-29 04:42:50',1),(20,'【BLACKBOX】 MARK&LONA 2017 Spring/Autumn/Winter','MARK&LONA BLACKBOX',NULL,'4.png',NULL,NULL,1,'2017-07-26 08:48:12','2017-07-29 05:30:00',1),(21,'【for AIOLI 】 MARK&LONA 2017 Spring/Sumer Collection',NULL,NULL,'3.png',NULL,NULL,1,'2017-07-26 08:48:57','2017-07-29 05:29:57',1),(23,'LYLE&SCOTT 2017 Autumn/Winter Exhibition','新しものn',NULL,'images.jpeg',NULL,NULL,1,'2017-07-29 03:24:30','2017-08-18 10:16:04',1);
/*!40000 ALTER TABLE `exhibitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product_attributes`
--

DROP TABLE IF EXISTS `order_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product_attributes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_product_id` bigint(20) DEFAULT NULL,
  `attribute_value_id` bigint(20) DEFAULT NULL,
  `attribute_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_product_attributes_on_order_product_id` (`order_product_id`),
  KEY `index_order_product_attributes_on_attribute_value_id` (`attribute_value_id`),
  KEY `index_order_product_attributes_on_attribute_id` (`attribute_id`),
  CONSTRAINT `fk_rails_142cb624e8` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`),
  CONSTRAINT `fk_rails_68f5b1b04d` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  CONSTRAINT `fk_rails_c1382d9b96` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product_attributes`
--

LOCK TABLES `order_product_attributes` WRITE;
/*!40000 ALTER TABLE `order_product_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantities` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `total_original_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_products_on_order_id` (`order_id`),
  KEY `index_order_products_on_product_id` (`product_id`),
  CONSTRAINT `fk_rails_96c0709f78` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `fk_rails_f40b8ccee4` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `exhibition_id` bigint(20) DEFAULT NULL,
  `total_retail_sales` int(11) DEFAULT NULL,
  `total_wholesale_sales` int(11) DEFAULT NULL,
  `total_quantities` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `memo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `censor` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `buyer_user_id` bigint(20) DEFAULT NULL,
  `billing_user_address_id` bigint(20) DEFAULT NULL,
  `shipping_user_address_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_orders_on_exhibition_id` (`exhibition_id`),
  KEY `index_orders_on_buyer_user_id` (`buyer_user_id`),
  KEY `index_orders_on_billing_user_address_id` (`billing_user_address_id`),
  KEY `index_orders_on_shipping_user_address_id` (`shipping_user_address_id`),
  CONSTRAINT `fk_rails_06278eb1b6` FOREIGN KEY (`exhibition_id`) REFERENCES `exhibitions` (`id`),
  CONSTRAINT `fk_rails_2599bc5c4e` FOREIGN KEY (`billing_user_address_id`) REFERENCES `user_addresses` (`id`),
  CONSTRAINT `fk_rails_a9477a1462` FOREIGN KEY (`buyer_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_ebdcc1b76b` FOREIGN KEY (`shipping_user_address_id`) REFERENCES `user_addresses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attribute_images`
--

DROP TABLE IF EXISTS `product_attribute_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_attribute_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_cover_image` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `attribute_value_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_attribute_images_on_attribute_value_id` (`attribute_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attribute_images`
--

LOCK TABLES `product_attribute_images` WRITE;
/*!40000 ALTER TABLE `product_attribute_images` DISABLE KEYS */;
INSERT INTO `product_attribute_images` VALUES (1,'red1.jpg',0,'2017-07-22 04:02:56','2017-08-11 06:58:00',4),(2,'red1.jpg',0,'2017-07-22 18:22:35','2017-08-11 06:57:43',5),(3,'colbat5.jpg',0,'2017-07-24 02:14:53','2017-08-11 06:57:07',6),(4,'colbat4.jpg',0,'2017-07-24 02:16:17','2017-08-11 06:58:21',10),(5,'pink1.jpg',0,'2017-07-24 02:17:15','2017-08-11 06:57:27',13),(8,'ao2.jpg',0,'2017-07-25 01:57:54','2017-08-11 06:41:56',22),(9,'white4.jpg',0,'2017-07-25 02:59:14','2017-08-11 06:56:23',25),(15,'red1.jpg',0,'2017-07-25 07:24:58','2017-08-11 06:56:03',36),(21,'navy5.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',60),(22,'navy4.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',60),(23,'navy3.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',60),(24,'navy2.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',60),(25,'navy1.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',60),(26,'white4.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',61),(27,'white5.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',61),(28,'white3.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',61),(29,'white2.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',61),(30,'white1.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',61),(31,'gray1.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',62),(32,'gray2.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',62),(33,'colbat4.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',63),(34,'colbat3.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',63),(35,'colbat2.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',63),(36,'colbat1.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',63),(37,'colbat5.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',63),(38,'red1.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',64),(39,'red2.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',64),(40,'red3.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',64),(41,'red4.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',64),(42,'black2.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',65),(43,'black1.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',65),(44,'pink1.jpg',0,'2017-07-27 08:15:42','2017-08-11 06:55:33',66),(45,'red4.jpg',0,'2017-07-28 07:46:26','2017-08-11 06:56:40',70),(47,'colbat3.jpg',0,'2017-07-29 09:03:21','2017-08-11 06:55:33',60),(48,'colbat1.jpg',0,'2017-07-29 09:04:22','2017-08-11 06:55:33',60),(49,'navy5.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',82),(50,'navy2.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',82),(51,'navy4.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',82),(52,'navy1.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',82),(53,'navy3.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',82),(54,'white1.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',83),(55,'white2.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',83),(56,'white3.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',83),(57,'white4.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',83),(58,'white5.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',83),(59,'gray1.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',84),(60,'gray2.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',84),(61,'colbat1.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',85),(62,'colbat2.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',85),(63,'colbat3.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',85),(64,'colbat4.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',85),(65,'colbat5.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',85),(66,'red1.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',86),(67,'red2.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',86),(68,'red3.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',86),(69,'red4.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',86),(70,'black1.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',87),(71,'black2.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',87),(72,'pink1.jpg',0,'2017-07-31 10:11:25','2017-08-11 06:46:36',88),(79,'navy2.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',93),(80,'navy3.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',93),(81,'navy4.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',93),(82,'navy5.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',93),(83,'red1.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',94),(84,'red2.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',94),(85,'red3.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',94),(86,'red4.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',94),(87,'gray1.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',95),(88,'gray2.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',95),(89,'white1.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',96),(90,'white2.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',96),(91,'white3.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',96),(92,'white4.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',96),(93,'white5.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',96),(94,'Pizigani_1367_Chart_10MB.jpg',0,'2017-08-11 05:23:35','2017-08-11 05:23:35',97),(95,'ao3.jpg',0,'2017-08-11 06:40:04','2017-08-11 06:40:04',72),(97,'p2.png',0,'2017-08-11 07:01:56','2017-08-11 07:01:56',100),(98,'gray1.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',101),(99,'gray2.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',101),(100,'white1.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',102),(101,'white2.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',102),(102,'white3.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',102),(103,'white4.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',102),(104,'white5.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',102),(105,'navy2.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',103),(106,'navy3.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',103),(107,'navy4.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',103),(108,'navy5.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',103),(109,'red1.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',104),(110,'red2.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',104),(111,'red3.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',104),(112,'red4.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',104),(113,'Pizigani_1367_Chart_10MB.jpg',0,'2017-08-11 05:23:35','2017-08-11 05:23:35',105),(114,'gray1.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',106),(115,'gray2.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',106),(116,'white1.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',107),(117,'white2.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',107),(118,'white3.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',107),(119,'white4.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',107),(120,'white5.jpg',0,'2017-08-11 04:27:14','2017-08-11 04:27:14',107),(121,'navy2.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',108),(122,'navy3.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',108),(123,'navy4.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',108),(124,'navy5.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',108),(125,'red1.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',109),(126,'red2.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',109),(127,'red3.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',109),(128,'red4.jpg',0,'2017-08-11 04:27:13','2017-08-11 04:27:13',109),(129,'Pizigani_1367_Chart_10MB.jpg',0,'2017-08-11 05:23:35','2017-08-11 05:23:35',110),(130,'bag-931937_1280.jpg',0,'2017-08-18 11:46:14','2017-08-18 11:46:14',113),(154,'black1.jpg',0,'2017-08-21 02:35:24','2017-08-21 02:35:24',116),(155,'black2.jpg',0,'2017-08-21 02:35:24','2017-08-21 02:35:24',116),(156,'colbat1.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',117),(157,'colbat2.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',117),(158,'colbat3.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',117),(159,'colbat4.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',117),(160,'colbat5.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',117),(161,'gray1.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',118),(162,'gray2.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',118),(163,'navy1.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',119),(164,'navy2.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',119),(165,'navy3.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',119),(166,'navy4.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',119),(167,'navy5.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',119),(168,'red1.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',120),(169,'red2.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',120),(170,'red3.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',120),(171,'red4.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',120),(172,'white5.jpg',0,'2017-08-21 02:35:25','2017-08-21 02:35:25',121),(219,'black1.jpg',0,'2017-08-21 10:59:13','2017-08-21 10:59:13',136),(220,'black2.jpg',0,'2017-08-21 10:59:13','2017-08-21 10:59:13',136),(221,'colbat1.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',137),(222,'colbat2.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',137),(223,'colbat3.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',137),(224,'colbat4.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',137),(225,'colbat5.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',137),(226,'gray1.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',138),(227,'gray2.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',138),(228,'navy1.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',139),(229,'navy2.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',139),(230,'navy3.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',139),(231,'navy4.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',139),(232,'navy5.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',139),(233,'red1.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',140),(234,'red2.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',140),(235,'red3.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',140),(236,'red4.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',140),(237,'white5.jpg',0,'2017-08-21 10:59:14','2017-08-21 10:59:14',141);
/*!40000 ALTER TABLE `product_attribute_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_attributes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `attribute_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_attributes_on_product_id` (`product_id`),
  KEY `index_product_attributes_on_attribute_id` (`attribute_id`),
  CONSTRAINT `fk_rails_6bf1db0b84` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  CONSTRAINT `fk_rails_b40a1c5acb` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attributes`
--

LOCK TABLES `product_attributes` WRITE;
/*!40000 ALTER TABLE `product_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_cover_image` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_images_on_product_id` (`product_id`),
  CONSTRAINT `fk_rails_1c991d3be6` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_tags_on_product_id` (`product_id`),
  KEY `index_product_tags_on_tag_id` (`tag_id`),
  CONSTRAINT `fk_rails_a402a4c881` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `fk_rails_ecabaad74a` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
INSERT INTO `product_tags` VALUES (1,1,1,'2017-07-22 04:02:56','2017-07-22 04:02:56'),(2,1,2,'2017-07-22 04:02:56','2017-07-22 04:02:56'),(5,3,1,'2017-07-24 02:16:17','2017-07-24 02:16:17'),(6,3,2,'2017-07-24 02:16:17','2017-07-24 02:16:17'),(7,4,1,'2017-07-24 02:17:15','2017-07-24 02:17:15'),(8,4,2,'2017-07-24 02:17:15','2017-07-24 02:17:15'),(49,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(50,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(51,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(52,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(53,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(54,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(55,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(56,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(57,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(58,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(59,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(60,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(62,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(63,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(64,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(65,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(66,10,5,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(67,10,6,'2017-07-25 03:24:59','2017-07-25 03:24:59'),(68,15,9,'2017-07-25 11:09:00','2017-07-25 11:09:00'),(69,18,10,'2017-07-26 01:48:19','2017-07-26 01:48:19'),(70,18,11,'2017-07-26 01:48:19','2017-07-26 01:48:19'),(71,19,12,'2017-07-27 03:29:28','2017-07-27 03:29:28'),(72,19,13,'2017-07-27 03:29:28','2017-07-27 03:29:28'),(73,19,14,'2017-07-27 03:29:28','2017-07-27 03:29:28'),(74,23,15,'2017-07-27 08:09:11','2017-07-27 08:09:11'),(75,23,16,'2017-07-27 08:09:11','2017-07-27 08:09:11'),(76,23,17,'2017-07-27 08:09:11','2017-07-27 08:09:11'),(77,23,18,'2017-07-27 08:09:11','2017-07-27 08:09:11'),(78,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(79,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(80,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(81,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(82,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(83,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(84,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(85,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(86,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(87,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(88,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(89,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(90,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(91,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(92,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(93,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(94,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(95,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(96,2,5,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(97,2,6,'2017-07-27 08:49:15','2017-07-27 08:49:15'),(98,27,19,'2017-07-29 03:27:22','2017-07-29 03:27:22'),(99,2,20,'2017-08-11 06:57:07','2017-08-11 06:57:07'),(100,77,21,'2017-08-22 02:20:43','2017-08-22 02:20:43');
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `exhibition_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `order_date` datetime DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `brand_user_id` bigint(20) DEFAULT NULL,
  `origin_price` int(11) DEFAULT NULL,
  `product_order` int(11) DEFAULT NULL,
  `order_end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_on_exhibition_id` (`exhibition_id`),
  KEY `index_products_on_brand_user_id` (`brand_user_id`),
  CONSTRAINT `fk_rails_2832dc5a46` FOREIGN KEY (`brand_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_b484f5094e` FOREIGN KEY (`exhibition_id`) REFERENCES `exhibitions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'SS Polo Shirts','b232323b',23,'Desc','2017-07-27 15:00:00','2017-09-28 15:00:00',1,'2017-07-22 03:58:09','2017-08-21 01:12:59',1,10,0,'2017-08-10 15:00:00'),(2,1,'If you like this character counter then please feel free to share it with your friends.If you likegg','商品名を入力してください商品名を入力してください商品名を入力してください商品名を入力してくださいさい',20,'イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像ジ画','2017-07-26 15:00:00','2017-09-26 15:00:00',1,'2017-07-24 02:14:53','2017-08-21 01:12:59',1,10,2,'2017-08-10 15:00:00'),(3,1,'Strong Weight','SW1213',18,'Good ','2017-07-24 15:00:00','2017-09-24 15:00:00',1,'2017-07-24 02:16:17','2017-08-21 01:12:59',1,10,0,'2017-08-10 15:00:00'),(4,1,'Beauty Hair','BH1214',22,'good','2017-07-24 15:00:00','2017-09-24 15:00:00',0,'2017-07-24 02:17:15','2017-08-21 01:12:59',1,10,1,'2017-08-10 15:00:00'),(7,1,'Pink','fggf',6,NULL,'2017-07-24 15:00:00','2017-08-17 15:00:00',1,'2017-07-25 01:57:54','2017-08-21 01:12:59',1,10,4,'2017-08-11 15:00:00'),(8,1,'ff','ff',44,NULL,'2017-07-24 15:00:00','2017-07-24 15:00:00',1,'2017-07-25 02:18:53','2017-08-21 01:12:59',1,10,6,'2017-07-24 15:00:00'),(9,1,'ffg','ffg',44,NULL,'2017-07-24 15:00:00','2017-09-24 15:00:00',1,'2017-07-25 02:59:14','2017-08-21 01:12:59',1,10,5,'2017-08-10 15:00:00'),(10,1,'abcd','If you like this character counter then please feel free to share it with your friends.If you likegg',4766,'商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名名名名名名名名名名名名名名名名名名名名名名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名名名名名名名名名名名名名名名名名名名名名名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名名名名名名名名名名名名名名名名名名名名名名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名名名名名名名名名名名名名名名名名名名名名名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名名名名名名名名名名名名名名名名名名名名名名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名商品名名名名名名名名名名名名名名名名名名名名名名商品名商品名商品名商品名商品','2017-07-24 15:00:00','2017-07-24 15:00:00',0,'2017-07-25 03:16:44','2017-08-21 01:12:59',1,10,7,'2017-07-24 15:00:00'),(11,1,'If you like this character counter then please feel free to share it with your friends.If you likegg',NULL,44565,NULL,'2017-07-27 15:00:00','2017-08-27 15:00:00',0,'2017-07-25 07:21:24','2017-08-21 01:12:59',1,164564564,10,'2017-07-27 15:00:00'),(12,1,'4565.0',NULL,5656,NULL,'2017-07-27 15:00:00','2017-08-25 15:00:00',1,'2017-07-25 07:22:39','2017-08-21 01:12:59',1,10,9,'2017-08-10 15:00:00'),(13,1,'fdsfsdf','fsdfds',32,NULL,'2017-07-24 15:00:00','2017-09-24 15:00:00',1,'2017-07-25 07:24:58','2017-08-21 01:12:59',1,10,8,'2017-08-10 15:00:00'),(14,3,'fashion for baby',NULL,150000,NULL,'2017-07-28 15:00:00','2017-08-24 15:00:00',1,'2017-07-25 10:45:48','2017-08-11 07:45:40',1,NULL,11,'2017-07-28 15:00:00'),(15,3,'for baby',NULL,130000,NULL,'2017-07-28 15:00:00','2017-08-24 15:00:00',1,'2017-07-25 11:09:00','2017-08-11 07:45:40',1,NULL,12,'2017-07-28 15:00:00'),(16,3,'for boys',NULL,100000,NULL,'2017-08-24 15:00:00','2017-09-24 15:00:00',1,'2017-07-25 11:09:09','2017-08-11 07:45:40',1,NULL,13,'2017-08-24 15:00:00'),(17,3,'for girls',NULL,10000,NULL,'2017-08-24 15:00:00','2017-09-24 15:00:00',1,'2017-07-25 11:09:28','2017-08-11 07:45:40',1,NULL,14,'2017-08-24 15:00:00'),(18,10,'For your kid','商品名を入力してください商品名を入力してください商品名を入力してください商品名を入力してくださいさい',5554232,NULL,'2017-10-25 15:00:00','2017-09-25 15:00:00',1,'2017-07-26 01:46:02','2017-08-11 07:45:40',1,79845435,15,'2017-10-25 15:00:00'),(19,1,'HM Shirt','SP001',30000,'イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像イメージ画像ジ画','2017-07-26 15:00:00','2017-09-29 15:00:00',1,'2017-07-26 07:04:07','2017-08-21 01:36:30',1,25000,20,'2017-08-22 15:00:00'),(22,1,'HR shirt',NULL,656,NULL,'2017-07-31 15:00:00','2017-08-19 15:00:00',1,'2017-07-26 10:46:19','2017-08-21 01:12:59',1,0,19,'2017-08-10 15:00:00'),(23,1,'Summer collection polo 3','SH002',44000,NULL,'2017-07-26 15:00:00','2017-09-26 15:00:00',1,'2017-07-27 08:09:11','2017-08-21 01:12:59',1,47500,16,'2017-08-10 15:00:00'),(26,1,'colle',NULL,2222,NULL,'2017-07-27 15:00:00','2017-09-27 15:00:00',1,'2017-07-28 07:46:26','2017-08-21 01:12:59',1,0,3,'2017-08-10 15:00:00'),(27,23,'シューズ','2017-001',5000,'新着物','2017-07-24 15:00:00','2017-08-24 15:00:00',1,'2017-07-29 03:27:22','2017-08-18 10:17:00',1,6000,NULL,'2017-08-17 15:00:00'),(30,23,'list of summer',NULL,5656,NULL,'2017-07-29 15:00:00','2017-08-28 15:00:00',1,'2017-07-29 10:12:13','2017-08-21 10:05:50',1,0,0,'2017-08-28 15:00:00'),(32,1,'hot summer',NULL,32432432,NULL,'2017-07-30 15:00:00','2017-08-30 15:00:00',1,'2017-07-31 07:59:54','2017-08-21 01:12:59',1,32423423,0,'2017-07-30 15:00:00'),(33,1,'hot summer',NULL,4345435,NULL,'2017-07-30 15:00:00','2017-08-30 15:00:00',1,'2017-07-31 08:01:56','2017-08-21 01:12:59',1,0,0,'2017-07-30 15:00:00'),(34,1,'If you like this character counter then please feel free to share it with your friends.If you likegg','If you like this character counter then please feel free to share it with your friends.If you likegg',45345,'If you like this character counter then please feel free to share it with your friends.If you likegg\nIf you like this character counter then please feel free to share it with your friends.If you likeggIf you like this character counter then please feel free to share it with your friends.If you likeggIf you like this character counter then please feel free to share it with your friends.If you likeggIf you like this character counter then please feel free to share it with your friends.If you likeggIf you like this character counter then please feel free to share it with your friends.If you likeggIf you like this character counter then please feel free to share it with your friends.If you likeggIf you like this character counter then please feel free to share it with your friends.If you likeggIf you like this character counter then please feel free to share it with your friends.If you likeggIf you like this character counter then please feel free to share it with ','2017-07-30 15:00:00','2017-08-30 15:00:00',1,'2017-07-31 08:02:09','2017-08-21 01:12:59',1,0,0,'2017-07-30 15:00:00'),(35,1,'hot winter',NULL,345434,NULL,'2017-07-30 15:00:00','2017-08-30 15:00:00',1,'2017-07-31 08:02:18','2017-08-21 01:12:59',1,0,0,'2017-07-30 15:00:00'),(36,1,'クィ','2017-0003',5000,NULL,'2017-07-30 15:00:00','2017-07-31 15:00:00',1,'2017-07-31 08:52:16','2017-08-21 01:12:59',1,10000,0,'2017-07-30 15:00:00'),(38,16,'test1',NULL,22222,NULL,'2017-08-10 15:00:00','2017-10-10 15:00:00',1,'2017-08-11 03:21:52','2017-08-11 03:24:38',1,0,2,'2017-09-10 15:00:00'),(39,16,'test2333',NULL,232334,NULL,'2017-08-10 15:00:00','2017-10-10 15:00:00',0,'2017-08-11 03:22:05','2017-08-11 04:04:49',1,0,0,'2017-09-10 15:00:00'),(40,16,'p_test3','test3',15000,'des1','2017-08-10 15:00:00','2017-10-10 15:00:00',1,'2017-08-11 03:29:39','2017-08-11 07:45:41',1,13333,4,'2017-08-10 15:00:00'),(41,16,'p_test4','test4',14000,'dees2','2017-08-10 15:00:00','2017-10-10 15:00:00',0,'2017-08-11 03:29:39','2017-08-11 07:45:41',1,14444,3,'2017-08-10 15:00:00'),(42,16,'p_test3','test3',15000,'des1','2017-08-10 15:00:00','2017-08-07 15:00:00',1,'2017-08-11 03:36:22','2017-08-18 10:56:31',1,13333,6,'2017-08-10 15:00:00'),(43,16,'p_test5','test5',15000,'des1','2017-08-10 15:00:00','2017-08-11 15:00:00',1,'2017-08-11 03:38:21','2017-08-18 10:56:31',1,13333,5,'2017-08-10 15:00:00'),(44,16,'bc',NULL,-20000,NULL,'2017-08-10 15:00:00','2017-10-10 15:00:00',1,'2017-08-11 04:42:46','2017-08-11 04:42:46',1,18000,7,'2017-09-10 15:00:00'),(45,18,'Perfect Tow','PT2200',20,NULL,'2017-08-10 15:00:00','2017-10-12 15:00:00',1,'2017-08-11 08:03:15','2017-08-21 01:47:58',1,NULL,1,'2017-08-29 15:00:00'),(46,12,'For girl',NULL,45645654,NULL,'2017-08-25 15:00:00','2017-08-28 15:00:00',1,'2017-08-11 08:21:32','2017-08-11 08:21:32',1,NULL,19,'2017-08-25 15:00:00'),(47,16,'test2333',NULL,232334,NULL,'2017-08-10 15:00:00','2017-10-10 15:00:00',0,'2017-08-11 08:44:07','2017-08-11 08:44:07',1,0,8,'2017-09-10 15:00:00'),(48,16,'test1',NULL,22222,NULL,'2017-08-10 15:00:00','2017-10-10 15:00:00',1,'2017-08-11 08:44:07','2017-08-17 01:49:06',1,0,10,'2017-09-10 15:00:00'),(49,16,'p_test4','test4',14000,'dees2','2017-08-10 15:00:00','2017-10-10 15:00:00',0,'2017-08-11 08:44:07','2017-08-17 01:49:06',1,14444,11,'2017-08-10 15:00:00'),(50,16,'p_test3','test3',15000,'des1','2017-08-10 15:00:00','2017-10-10 15:00:00',1,'2017-08-11 08:44:07','2017-08-17 01:48:59',1,13333,13,'2017-08-10 15:00:00'),(51,16,'p_test3','test3',15000,'des1','2017-08-10 15:00:00','2017-08-07 15:00:00',1,'2017-08-11 08:44:07','2017-08-17 01:48:55',1,13333,15,'2017-08-10 15:00:00'),(52,16,'p_test5','test5',15000,'des1','2017-08-10 15:00:00','2017-08-11 15:00:00',1,'2017-08-11 08:44:07','2017-08-17 01:48:59',1,13333,14,'2017-08-10 15:00:00'),(53,16,'bc',NULL,-20000,NULL,'2017-08-10 15:00:00','2017-10-10 15:00:00',1,'2017-08-11 08:44:07','2017-08-17 01:49:06',1,18000,9,'2017-09-10 15:00:00'),(54,16,'test2333',NULL,232334,NULL,'2017-08-10 15:00:00','2017-10-10 15:00:00',0,'2017-08-11 08:44:28','2017-08-17 01:49:06',1,0,12,'2017-09-10 15:00:00'),(55,16,'test1',NULL,22222,NULL,'2017-08-10 15:00:00','2017-10-10 15:00:00',1,'2017-08-11 08:44:28','2017-08-11 08:44:28',1,0,16,'2017-09-10 15:00:00'),(56,16,'p_test4','test4',14000,'dees2','2017-08-10 15:00:00','2017-10-10 15:00:00',0,'2017-08-11 08:44:28','2017-08-11 08:44:28',1,14444,17,'2017-08-10 15:00:00'),(57,16,'p_test3','test3',15000,'des1','2017-08-10 15:00:00','2017-10-10 15:00:00',1,'2017-08-11 08:44:28','2017-08-11 08:44:28',1,13333,18,'2017-08-10 15:00:00'),(58,16,'p_test3','test3',15000,'des1','2017-08-10 15:00:00','2017-08-07 15:00:00',1,'2017-08-11 08:44:28','2017-08-11 08:44:28',1,13333,19,'2017-08-10 15:00:00'),(59,16,'p_test5','test5',15000,'des1','2017-08-10 15:00:00','2017-08-11 15:00:00',1,'2017-08-11 08:44:28','2017-08-11 08:44:28',1,13333,20,'2017-08-10 15:00:00'),(60,16,'bc',NULL,-20000,NULL,'2017-08-10 15:00:00','2017-10-10 15:00:00',1,'2017-08-11 08:44:28','2017-08-11 08:44:28',1,18000,21,'2017-09-10 15:00:00'),(62,21,'zara',NULL,2000,NULL,'2017-08-22 15:00:00','2017-09-23 15:00:00',1,'2017-08-21 10:26:42','2017-08-21 10:33:55',1,0,1,'2017-08-25 15:00:00'),(74,21,'zara man',NULL,3500,NULL,'2017-08-21 15:00:00','2017-09-23 15:00:00',1,'2017-08-21 10:39:50','2017-08-21 10:41:25',1,0,1,'2017-08-21 15:00:00'),(75,21,'tomboy',NULL,2000,NULL,'2017-08-22 15:00:00','2017-09-23 15:00:00',1,'2017-08-21 10:42:38','2017-08-21 10:42:38',1,0,1,'2017-08-25 15:00:00'),(76,23,'zara woman','zara01',2000,NULL,'2017-08-22 15:00:00','2017-09-23 15:00:00',1,'2017-08-22 01:58:42','2017-08-22 01:58:42',1,0,1,'2017-08-23 15:00:00'),(77,23,'zara kid','zara01',1000,NULL,'2017-08-21 15:00:00','2017-09-21 15:00:00',1,'2017-08-22 02:05:54','2017-08-22 02:05:54',1,0,17,'2017-08-25 15:00:00');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'brand',NULL,'2017-07-22 03:45:35','2017-07-22 03:45:35'),(2,'buyer',NULL,'2017-07-22 03:45:35','2017-07-22 03:45:35');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170607082439'),('20170607082632'),('20170607090352'),('20170608065043'),('20170608065440'),('20170608065441'),('20170608065442'),('20170608065559'),('20170608070023'),('20170608070148'),('20170608101728'),('20170615070659'),('20170615070913'),('20170615071153'),('20170615071526'),('20170615071614'),('20170615071739'),('20170615071850'),('20170616101750'),('20170616103056'),('20170616103944'),('20170616104837'),('20170616111059'),('20170619064555'),('20170619064645'),('20170620044140'),('20170620091833'),('20170620092124'),('20170622064258'),('20170622081551'),('20170622082542'),('20170627020652'),('20170705045444'),('20170711025924'),('20170711034852'),('20170711081613'),('20170713023707'),('20170727043219'),('20170801085923'),('20170809090216'),('20170811074819'),('20170811074833'),('20170817044946');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'man','2017-07-22 03:54:38','2017-07-22 03:54:38'),(2,'men','2017-07-22 03:54:38','2017-07-22 03:54:38'),(3,'short','2017-07-22 18:21:41','2017-07-22 18:21:41'),(4,'boy','2017-07-23 23:10:02','2017-07-23 23:10:02'),(5,'商品名','2017-07-24 10:46:24','2017-07-24 10:46:24'),(6,'商品名名名名名名名名名名','2017-07-24 10:46:24','2017-07-24 10:46:24'),(7,'商品名名名名名名名名名名hhh','2017-07-25 01:47:37','2017-07-25 01:47:37'),(8,'商品名商品商品名','2017-07-25 03:24:59','2017-07-25 03:24:59'),(9,'red','2017-07-25 11:09:00','2017-07-25 11:09:00'),(10,'girl','2017-07-26 01:48:19','2017-07-26 01:48:19'),(11,'woman','2017-07-26 01:48:19','2017-07-26 01:48:19'),(12,'タグ','2017-07-27 03:29:28','2017-07-27 03:29:28'),(13,'バリ','2017-07-27 03:29:28','2017-07-27 03:29:28'),(14,'ーシ','2017-07-27 03:29:28','2017-07-27 03:29:28'),(15,'メンズ','2017-07-27 08:09:11','2017-07-27 08:09:11'),(16,'トップス','2017-07-27 08:09:11','2017-07-27 08:09:11'),(17,'ポロシャツ','2017-07-27 08:09:11','2017-07-27 08:09:11'),(18,'SS','2017-07-27 08:09:11','2017-07-27 08:09:11'),(19,'shoes','2017-07-29 03:27:22','2017-07-29 03:27:22'),(20,'商品名名','2017-08-11 06:57:07','2017-08-11 06:57:07'),(21,'HM','2017-08-22 02:20:43','2017-08-22 02:20:43');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_addresses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname_kana` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname_kana` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default_addr` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_addresses_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_2718c5b54a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_addresses`
--

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;
INSERT INTO `user_addresses` VALUES (1,1,'久美','谷口','タニグ','チクミ','〒150-0033 東京都渋谷区猿楽町18-8ヒルサイドテラスF304',NULL,'7364270798',0,'2017-07-22 03:46:08','2017-08-17 04:40:43','1500033'),(2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2017-07-31 12:30:54','2017-07-31 12:30:54',NULL),(3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2017-08-11 12:19:24','2017-08-11 12:19:24',NULL),(4,4,'谷口','久美','チクミ','タニグ','36 Hoang Cau',NULL,'82220156723',0,'2017-08-21 02:57:24','2017-08-22 02:20:31','1500033');
/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_role_id` (`role_id`),
  CONSTRAINT `fk_rails_642f17018b` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'brand1',1,'BRAND\r\n ・MARK&LONA \r\nURL：  www.markandlona.com\r\nLuxuary Golf”をコンセプトに、”T-LINE”として2007年にアメリカでデビュー。\r\nその斬新なデザインから、フレッドシーガル等の著名ブティックで展開されるとともに、ファッション誌並びに多くのゴルフ媒体に取り上げられました。\r\nそして、2008年、コレクションの拡大に伴い “MARK&LONA/マーク＆ロナ” として生まれ変わりました。\r\n伝統的なスポーツである”ゴルフ”をテーマとし、プレッピー、パンク、マリン等の異なるコンセプトを取り入れ、世界に類のない次世代のスポーツウェアを提案。\r\nその、セレブでキッチュなデザインは、ゴルフウェアとは思えないほどの斬新なデザインでありながら、自社開発した機能素材や、立体裁断を使用し高い機能性も持ち合わせています。\r\n2008年のブランド上陸とともに、LUIS VUITTON 青山店に存在した会員制サロンが展開する等”Luxuary Golf”の到来として一躍話題となりました。\r\nその後、  INTERNATIONAL GALLERY BEAMS、 EDIFICE、ESTNATION、伊勢丹といった世界に知られるセレクトショップがこぞって買い付けるとともに、ブランドスタートから6年を経過した今も幅広く展開されています。\r\nまた、スイスの高級時計で知られるHUBLOTとコラボレーションしたランウェイショーや、オーガニックコスメで知られるジョンマスターズオーガニック社とのコラボレーションコスメティックを展開する等、継続した話題性を常に提供しています。\r\nブランド名の由来は、実在するハリウッドセレブのカップルから名付けられました。\r\nMARKは貿易会社を営み世界中を旅するジェットセッター、 LONAはハリウッド女優からのご指名のメイクアップアーティスト。シ\r\nャトーマーモントの丘の上に住む、自由でオシャレな彼らのゴルフライフをテーマしたコレクションを提案しています。\r\n\r\n ・  HORN G.M.T\r\nURL：  www.horngarment.com\r\nかつて様々なサーフレジェンド達が集い、知る人ぞ知るサーフブランドとして、カリフォルニアのニューポート ビーチを拠点とし立ち上がった「HORN GARMENT」。\r\n2006年のブランド設立から、”SURF&VINTAGE”をコンセプトに余裕ある大人のライフスタイルカジュアルを提案します。\r\n再スタートとなった2010年春では、MARC JACOBSのグラフィックを手がけた\r\nArnoud Verhaeghe 、米サンディエゴのレジェンドサーフボードビルダーであるSTU KENSONが参加。  アパレル、ハードグッズ共に完成度の高いコレクションとなっています。\r\n“SURF&VINTAGE”をコンセプトにエストネーション エクスクルーシブブランドとしてデビュー。\r\n\r\n ・LYLE&SCOTT\r\nURL：  www.lyleandscott.jp\r\nかつてグレッグノーマン、ジャックニクラウスが愛し、サポートし続けたLYLE＆SCOTT。\r\nそして、今もセントアンドリュース等の格式高い名門ゴルフコースがセーターの製作依頼をしています。\r\nそれは、ライル＆スコットがいつの時代も正統派ゴルファーに信頼される、ステータスの高い商品を創り続けて来たからに他ありません。\r\nその輝かしい歴史を掲げ、次世代のゴルファーに向け発信されるグリーンイーグル”CLUB”ラインが登場します。\r\nDo＆Dressをキーワードに提案されるコンテンポラリーゴルフウエァーは幅広いゴルファーを魅了するでしょう。\r\nライル＆スコットはロイヤルワランティー(英国王室御用達)の証である”王冠の紋章”を使用することが認められているブランドで\r\nす。\r\n  「英国王室が認めたブランド」それはライル＆スコットのクオリティの高さを証明するものであり、  England Traditional’s の中でも最も格式の高いブランドである証です。','株式会社キューブ','http://www.cube-co.com/','2.png','2017-07-22 03:46:08','2017-08-22 06:38:34','hoangth92.nd@gmail.com','$2a$11$qFhssTm3bG5wId7cqDd6KuTo9nOzHv3twAM4phRztglChv6x0Uah2','7ab11901cdf252a62d734678696a4bf55b584db33446828606bf7b21f3c92fd4','2017-07-22 03:46:08',NULL,414,'2017-08-22 06:38:34','2017-08-22 06:32:29','118.71.224.247','118.71.224.247','CUBE',NULL),(2,'quynt',1,NULL,NULL,NULL,NULL,'2017-07-31 12:30:54','2017-07-31 12:31:19','yeucon12359@gmail.com','$2a$11$8fmXCzfot5mQUdQ6PHQF0eM9.EF9kZPFl.gs7uPRVow4rA/rNRqP.','603f96d07b9f8090b75c6712a3d37c890311952b59fd01197ba6848f3fcfd83b','2017-07-31 12:30:54',NULL,1,'2017-07-31 12:31:19','2017-07-31 12:31:19','113.161.194.216','113.161.194.216',NULL,NULL),(3,'acvtest1',1,NULL,NULL,NULL,NULL,'2017-08-11 12:19:24','2017-08-11 12:45:04','acv123@gmail.com','$2a$11$uEIBs0/FV.oHghd3LVWANeZOukFKGwKa9tQ7hYKpRMfqdPSnM7R7O','27fbd39d3cb1400d05d71cc215db726c0bc8a52e331c18d80dea16fff4956243','2017-08-11 12:19:25',NULL,1,'2017-08-11 12:19:55','2017-08-11 12:19:55','118.71.224.247','118.71.224.247',NULL,NULL),(4,'buyer1',2,NULL,'AIOLI CO.,LTD',NULL,NULL,'2017-08-21 02:57:24','2017-08-22 02:20:31','buyer@gmail.com','$2a$11$JfJyKIBbVxxWmUOcjNvvQOF.QIlt2yFpV/JeMU3pZAgGRnfKADNeu','e815b15085d86dbcca026357c0b9eb5b05f0a9a1a2aaf6e0755657cc44c59597','2017-08-21 02:57:24',NULL,1,'2017-08-21 02:57:39','2017-08-21 02:57:39','113.190.246.114','113.190.246.114','Hoang nguyen',NULL);
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

-- Dump completed on 2017-08-22  6:39:22
