-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: db_blogphp
-- ------------------------------------------------------
-- Server version	5.7.9

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'nouveautes','2016-04-27 11:55:56','2016-04-27 11:56:22'),(2,'conferances','2016-04-27 11:57:17','2016-04-27 11:57:17');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_04_26_171847_create_posts_table',1),('2016_04_26_172113_create_categories_table',1),('2016_04_26_172131_create_tags_table',1),('2016_04_26_172143_create_pictures_table',1),('2016_04_26_173058_create_post_tag_table',1),('2016_04_30_133849_create_posts_table',2),('2016_05_1_140500_create_posts_table',3),('2016_05_02_141100_create_pictures_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `size` smallint(6) NOT NULL,
  `mime` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pictures_post_id_foreign` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES (1,1,'Wade Bahringer','xkLAj4JCNtfpkwxsG3fn1MgEAitlek0aPNpFH8qAzIb4BW7BG9_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:04','2016-05-03 10:12:04'),(2,2,'Ms. Lillian Hoppe Jr.','TUAgtM9qRbj893Ev69Itx96aOa9gsghLViF3NeePzjn0Azezma_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:05','2016-05-03 10:12:05'),(3,3,'Carol Bauch','G1rRx1O6RikVxL6jRPbLOJuRNgKXNKKdfOSCU2bVUIZWDrnLlE_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:05','2016-05-03 10:12:05'),(4,4,'Sean Zulauf Jr.','eOLLd73ANwYFgRfI0pbNfRaoktPqorV4RPuSHuP5eo2FPsfCLg_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:05','2016-05-03 10:12:05'),(5,5,'Romaine Schumm','1SV98hrEMam6EHNRtwgoXg2Hzx8fG7ThETUPblknV1nddDoyik_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:05','2016-05-03 10:12:05'),(6,6,'Dr. Maximilian Bruen PhD','on610jDqPLsWY5HIIhvyjdzwu7GnDzT8EVMBTVwFQOF0PrRU7z_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:06','2016-05-03 10:12:06'),(7,7,'Parker Gerlach II','grFtdL1P2W0AzBGi8O6ImWKcp1Yoa3qKQspQ8kbQvcTLg3A68a_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:06','2016-05-03 10:12:06'),(8,8,'Adele Christiansen MD','wRCoPBHh0cF6gV0Z4sKuiq7CMADFtiTUKpsyILEQHQHlGN8LPq_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:07','2016-05-03 10:12:07'),(9,9,'Mrs. Vickie Roob','hTpr5c2ju9Oe3E65hSDbZKd9jOyWmxrjf7aNyfYMYeES17IhBm_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:07','2016-05-03 10:12:07'),(10,10,'Miss Rosina Schaefer I','lfqZHJHeE2dWKRpsfuzIVWaRCE0496eDdm4yIwaccAti7yfffY_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:07','2016-05-03 10:12:07'),(11,11,'Therese Kautzer','rSaToF7axgIQxoSXSoPI7gmQYVYmhoxaW8z4M3yW3Tx6I1OitB_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:07','2016-05-03 10:12:07'),(12,12,'Jerel Yundt','eKGVwsBIoBfkkyfRANzPoziXzarhw7fQTNlt4vY7QGCUNNFcTW_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:08','2016-05-03 10:12:08'),(13,13,'Ivah Parisian','z1aPo2Jd0kEaCdHirR8m2ZoA60TABTGHfCGqg36CsOVNY8hcWB_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:08','2016-05-03 10:12:08'),(14,14,'Ms. Katlyn Kutch','rDn9iW8kKnXcGK7UByIhUOxdZGQU3cVSDTvYdMzYzYjM4i1eNb_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:08','2016-05-03 10:12:08'),(15,15,'Dr. Bernie Lebsack IV','F6WrOp3fLjfhpZoGS7bTMK6rZmsm11IVdg6T43zqPSPO7VASvu_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:09','2016-05-03 10:12:09'),(16,16,'Ms. Zena Koepp DDS','smVNC5DXpKmeraHZIRBdaWbjlw2UrWvaAoCJWnB9wteWPDpm0T_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:09','2016-05-03 10:12:09'),(17,17,'Ms. Lempi Cremin','FBOOanc97og7W46GVft3WgawTK6s18ijK3yQn2t3crUEE35rl4_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:09','2016-05-03 10:12:09'),(18,18,'Lizeth Bashirian','WtlwUszE1H1FX5mpvjxxZtjzkDIeA3s92eG50CQfg4HhlPa3Hc_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:09','2016-05-03 10:12:09'),(19,19,'Marjorie Lehner','lsUptl7iWZJ8X3MM7nkZP5bAXul0PQue8vIOhBxyipTzEa3kaW_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:10','2016-05-03 10:12:10'),(20,20,'Virginie Schmeler','HO54ECFQ5Y3MXJbUxLsrBzOr1GqS93j5Z6S9ycAGJCjL09OThN_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:10','2016-05-03 10:12:10'),(21,21,'Dario Rodriguez','rybJWKi3opaXAEcQpPyZWc98SMTY6AfV21w2gQe95ig9zDPoJy_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:10','2016-05-03 10:12:10'),(22,22,'Brionna Corkery','YfS76Qjsq9ASkwXYFgTK7fXhnjcYtNnekvq1y9AVyH05rMEbMF_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:10','2016-05-03 10:12:10'),(23,23,'Mr. Josiah Sauer','w7Qv8ZumC0q0aHCc5oUkVYjpUMK5iZPZfN4F2eWSSpKRxCqyDf_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:11','2016-05-03 10:12:11'),(24,24,'Stan King PhD','Vl3slhbOKjIT5GODofxBe8eOAOg3tOaKSTPqGLmTSY0ghECxUp_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:11','2016-05-03 10:12:11'),(25,25,'Brandon Schmitt','fdqAA0nGqlk3Y1fRsI0wzOG8jB63ZxAiFrHBBZMOVGRJ5rJ2cs_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:11','2016-05-03 10:12:11'),(26,26,'Florencio Kunde','arGADKi1uIgPA1Ifzea984vuuh3QNOuCHadRc21lK0tBMEcXVa_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:11','2016-05-03 10:12:11'),(27,27,'Yadira Cummings','Ovhrz6kqguRvHtMqX7M0OEnEylz7qM5MAxCeeT9HF5UOmeEHmO_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:11','2016-05-03 10:12:11'),(28,28,'Tristin Kris III','mwZWw0eb5DEyPzi34atVw9geZ0fBPFINZJpQ6NxuivyFontXwj_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:12','2016-05-03 10:12:12'),(29,29,'Emie Fisher','s6qrFwdi5ZIRoGs9iWSV9jG5FTdpImpyf2yOya4TT4QhDNmZQM_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:12','2016-05-03 10:12:12'),(30,30,'Terence Ward','vK3zmmdGrPYDr121fi6JbarKmVwYtKW04mPEX1ywhkJbMfX84b_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:12','2016-05-03 10:12:12'),(31,31,'Skylar Volkman','8UdGrxa1gTbk1R04YaI1AvFinvIT9DfeQHzcbXyiBQtaQctaSf_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:12','2016-05-03 10:12:12'),(32,32,'Baby Hayes I','itFfOBhEqDaDxTVbKInNIsnwcnQDPlhlVbNWIV4cZxXiFSoHPj_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:13','2016-05-03 10:12:13'),(33,33,'Dr. Blair Jacobi','CFQPp7d09TeltbYuobGmZHRKDnFem3TtBrI5mDXVtVUvcLgFko_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:13','2016-05-03 10:12:13'),(34,34,'Ara Cormier','OmHxYulNPaSQTJ7x8g3hsBm6XhGhj3WIXNtgIQmkGHIKhadZdw_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:13','2016-05-03 10:12:13'),(35,35,'Elena Zieme II','OGSHAZk5uMuzt7Frvz2xWCc6xVtzAK9LjXQLqqj9IOxXVnbUDr_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:13','2016-05-03 10:12:13'),(36,36,'Leonel Berge','lCHFFOOPDR4AgLjf32nDGu0WZOJ1HOwL80BL1DECJHs6Ys1pxR_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:14','2016-05-03 10:12:14'),(37,37,'Brooks Waelchi Sr.','SxyeJ9iYVjmk1ZAeqDSnYeLmPNPJDZfMnVEpISIDzTaPWVeso3_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:14','2016-05-03 10:12:14'),(38,38,'Delphine Barrows','tzIKFZziQDKZHszgZMdOfDcc3TKISkzen7193Ab7Bxv9NxTo9D_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:14','2016-05-03 10:12:14'),(39,39,'Samir Metz','NDaj9bj7V0gj0MDzNQoBIWJUjAFbCf4Gnu1lIcM5So5g8yyRiZ_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:14','2016-05-03 10:12:14'),(40,40,'Isidro Baumbach','VkLFQRpRXBnz553l1kUmvtTwNDHpwFqLg4rmjxpEBj6aMyuNOM_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:15','2016-05-03 10:12:15'),(41,41,'Tatum O\'Kon','oSF7HzVtFRTXJRBmNFVrVgHNfRDscprxKRdwMaIX37XCglzP0V_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:15','2016-05-03 10:12:15'),(42,42,'Mr. Jarvis O\'Reilly I','j08i68tNiKg4AQ5s9cch7V9G8QAs062G8QFj7NLaa3FMHhG5LG_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:15','2016-05-03 10:12:15'),(43,43,'Ressie Hammes','ENReD7iAt8XPeZ6QYdYN0cjIEPLt40Q9wsOOMuxTgsUnH7t1bm_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:15','2016-05-03 10:12:15'),(44,44,'Prof. Deja Hayes MD','XzjktcUtjgGbU8J1hKq7etGQg4Mb6xSEPhVxdY447JVowvJheR_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:16','2016-05-03 10:12:16'),(45,45,'Prof. Kaley Stroman MD','gDbBG8LdqhCca46p1poygq4q6vgW4gWZJhtJp3EdLNsTq6uALJ_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:16','2016-05-03 10:12:16'),(46,46,'Miss Maiya Prosacco','SqgtQnSlbzwmvRqCJJzNFccEkdItqZdxk3xzzBJH21wtMESNqr_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:16','2016-05-03 10:12:16'),(47,47,'Juvenal Runolfsson','mP6L4KQeyUORTnKzSA8L2rosC9Pb9UWBUExzSE7JPBX5O6ei3r_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:16','2016-05-03 10:12:16'),(48,48,'Emelie Schinner','yBs0k7ur9h7Ve4ASChvzkBWJ9v2PVG0qWpebv0KeNLpfSGAdEi_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:17','2016-05-03 10:12:17'),(49,49,'Prof. Greyson Morissette','q1tebireV5qc7oomHJXxYDxTdGYPfe5EUpaQYGb6PcNTdStcLo_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:17','2016-05-03 10:12:17'),(50,50,'Mr. Issac Rice Sr.','ItqWIDfzlMBH51TkS7pq4eDSU1mSBeL49bneimEKqshT4NFCCk_370x235.jpg',200,'image/jpeg','2016-05-03 10:12:17','2016-05-03 10:12:17'),(51,51,'3_1462639059','3_1462639059.jpg',12456,'image/jpeg','2016-05-07 14:37:39','2016-05-07 14:37:39'),(52,52,'3_1462650260','3_1462650260.jpg',13162,'image/jpeg','2016-05-07 17:44:20','2016-05-07 17:44:20'),(53,53,'3_1462650520','3_1462650520.jpg',32767,'image/jpeg','2016-05-07 17:48:40','2016-05-07 17:48:40'),(54,54,'3_1462650598','3_1462650598.jpg',12940,'image/jpeg','2016-05-07 17:49:58','2016-05-07 17:49:58'),(55,55,'3_1462650776','3_1462650776.jpg',32767,'image/jpeg','2016-05-07 17:52:56','2016-05-07 17:52:56'),(56,56,'3_1462711267','3_1462711267.jpg',32767,'image/jpeg','2016-05-08 10:41:07','2016-05-08 10:41:07'),(57,57,'3_1467740619','3_1467740619.jpg',32767,'image/jpeg','2016-07-05 15:43:39','2016-07-05 15:43:39'),(58,58,'3_1469738874','3_1469738874.jpg',32767,'image/jpeg','2016-07-28 18:47:54','2016-07-28 18:47:54'),(59,59,'3_1469738895','3_1469738895.jpg',32767,'image/jpeg','2016-07-28 18:48:15','2016-07-28 18:48:15'),(60,60,'3_1469739057','3_1469739057.jpg',32767,'image/jpeg','2016-07-28 18:50:57','2016-07-28 18:50:57');
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_post_id_foreign` (`post_id`),
  KEY `post_tag_tag_id_foreign` (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=701 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag`
--

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (101,201,8,NULL,NULL),(102,202,10,NULL,NULL),(103,203,9,NULL,NULL),(104,204,6,NULL,NULL),(105,205,9,NULL,NULL),(106,206,10,NULL,NULL),(107,207,10,NULL,NULL),(108,208,10,NULL,NULL),(109,209,8,NULL,NULL),(110,210,8,NULL,NULL),(111,211,9,NULL,NULL),(112,212,9,NULL,NULL),(113,213,10,NULL,NULL),(114,214,10,NULL,NULL),(115,215,8,NULL,NULL),(116,216,10,NULL,NULL),(117,217,8,NULL,NULL),(118,218,9,NULL,NULL),(119,219,6,NULL,NULL),(120,220,9,NULL,NULL),(121,221,8,NULL,NULL),(122,222,6,NULL,NULL),(123,223,10,NULL,NULL),(124,224,6,NULL,NULL),(125,225,7,NULL,NULL),(126,226,6,NULL,NULL),(127,227,9,NULL,NULL),(128,228,8,NULL,NULL),(129,229,7,NULL,NULL),(130,230,9,NULL,NULL),(131,231,10,NULL,NULL),(132,232,6,NULL,NULL),(133,233,9,NULL,NULL),(134,234,9,NULL,NULL),(135,235,6,NULL,NULL),(136,236,6,NULL,NULL),(137,237,10,NULL,NULL),(138,238,7,NULL,NULL),(139,239,7,NULL,NULL),(140,240,9,NULL,NULL),(141,241,7,NULL,NULL),(142,242,6,NULL,NULL),(143,243,8,NULL,NULL),(144,244,6,NULL,NULL),(145,245,6,NULL,NULL),(146,246,7,NULL,NULL),(147,247,9,NULL,NULL),(148,248,9,NULL,NULL),(149,249,10,NULL,NULL),(150,250,10,NULL,NULL),(151,257,6,NULL,NULL),(152,258,10,NULL,NULL),(153,259,9,NULL,NULL),(154,260,7,NULL,NULL),(155,261,9,NULL,NULL),(156,262,9,NULL,NULL),(157,263,9,NULL,NULL),(158,264,9,NULL,NULL),(159,265,8,NULL,NULL),(160,266,10,NULL,NULL),(161,267,6,NULL,NULL),(162,268,7,NULL,NULL),(163,269,8,NULL,NULL),(164,270,10,NULL,NULL),(165,271,6,NULL,NULL),(166,272,10,NULL,NULL),(167,273,9,NULL,NULL),(168,274,10,NULL,NULL),(169,275,9,NULL,NULL),(170,276,6,NULL,NULL),(171,277,10,NULL,NULL),(172,278,9,NULL,NULL),(173,279,8,NULL,NULL),(174,280,7,NULL,NULL),(175,281,7,NULL,NULL),(176,282,9,NULL,NULL),(177,283,8,NULL,NULL),(178,284,10,NULL,NULL),(179,285,8,NULL,NULL),(180,286,10,NULL,NULL),(181,287,6,NULL,NULL),(182,288,10,NULL,NULL),(183,289,10,NULL,NULL),(184,290,6,NULL,NULL),(185,291,7,NULL,NULL),(186,292,6,NULL,NULL),(187,293,7,NULL,NULL),(188,294,10,NULL,NULL),(189,295,8,NULL,NULL),(190,296,8,NULL,NULL),(191,297,9,NULL,NULL),(192,298,10,NULL,NULL),(193,299,8,NULL,NULL),(645,6,9,NULL,NULL),(195,301,10,NULL,NULL),(196,302,8,NULL,NULL),(197,303,6,NULL,NULL),(198,304,9,NULL,NULL),(199,305,6,NULL,NULL),(200,306,9,NULL,NULL),(201,307,8,NULL,NULL),(202,308,6,NULL,NULL),(203,309,9,NULL,NULL),(204,310,6,NULL,NULL),(205,311,10,NULL,NULL),(206,312,7,NULL,NULL),(207,313,6,NULL,NULL),(208,314,8,NULL,NULL),(209,315,8,NULL,NULL),(210,316,7,NULL,NULL),(211,317,9,NULL,NULL),(212,318,10,NULL,NULL),(213,319,6,NULL,NULL),(214,320,10,NULL,NULL),(215,321,6,NULL,NULL),(216,322,8,NULL,NULL),(217,323,8,NULL,NULL),(218,324,10,NULL,NULL),(219,325,9,NULL,NULL),(220,326,6,NULL,NULL),(221,327,7,NULL,NULL),(222,328,6,NULL,NULL),(223,329,7,NULL,NULL),(224,330,7,NULL,NULL),(225,331,6,NULL,NULL),(226,332,7,NULL,NULL),(227,333,9,NULL,NULL),(228,334,9,NULL,NULL),(229,335,10,NULL,NULL),(230,336,8,NULL,NULL),(231,337,6,NULL,NULL),(232,338,10,NULL,NULL),(233,339,7,NULL,NULL),(234,340,7,NULL,NULL),(235,341,8,NULL,NULL),(236,342,8,NULL,NULL),(237,343,10,NULL,NULL),(238,344,10,NULL,NULL),(239,345,9,NULL,NULL),(240,346,10,NULL,NULL),(241,347,9,NULL,NULL),(242,348,10,NULL,NULL),(243,349,9,NULL,NULL),(244,350,6,NULL,NULL),(245,351,6,NULL,NULL),(246,352,6,NULL,NULL),(247,353,8,NULL,NULL),(248,354,6,NULL,NULL),(249,355,10,NULL,NULL),(250,356,8,NULL,NULL),(251,358,10,NULL,NULL),(252,359,10,NULL,NULL),(253,360,9,NULL,NULL),(254,361,6,NULL,NULL),(255,362,6,NULL,NULL),(256,363,10,NULL,NULL),(257,364,9,NULL,NULL),(258,365,6,NULL,NULL),(259,366,9,NULL,NULL),(260,367,7,NULL,NULL),(261,368,10,NULL,NULL),(262,369,7,NULL,NULL),(263,370,6,NULL,NULL),(264,371,10,NULL,NULL),(265,372,10,NULL,NULL),(266,373,6,NULL,NULL),(267,374,8,NULL,NULL),(268,375,9,NULL,NULL),(269,376,10,NULL,NULL),(270,377,10,NULL,NULL),(271,378,9,NULL,NULL),(272,379,7,NULL,NULL),(273,380,9,NULL,NULL),(274,381,8,NULL,NULL),(275,382,8,NULL,NULL),(276,383,10,NULL,NULL),(277,384,9,NULL,NULL),(278,385,9,NULL,NULL),(279,386,10,NULL,NULL),(280,387,9,NULL,NULL),(281,388,7,NULL,NULL),(282,389,9,NULL,NULL),(283,390,10,NULL,NULL),(284,391,7,NULL,NULL),(285,392,9,NULL,NULL),(286,393,7,NULL,NULL),(287,394,10,NULL,NULL),(288,395,10,NULL,NULL),(289,396,6,NULL,NULL),(290,397,10,NULL,NULL),(291,398,7,NULL,NULL),(292,399,10,NULL,NULL),(293,400,6,NULL,NULL),(294,401,7,NULL,NULL),(295,402,6,NULL,NULL),(296,403,9,NULL,NULL),(297,404,10,NULL,NULL),(298,405,6,NULL,NULL),(299,406,8,NULL,NULL),(300,407,8,NULL,NULL),(301,408,7,NULL,NULL),(302,409,6,NULL,NULL),(303,410,9,NULL,NULL),(304,411,10,NULL,NULL),(305,412,10,NULL,NULL),(306,413,6,NULL,NULL),(307,414,10,NULL,NULL),(308,415,6,NULL,NULL),(309,416,10,NULL,NULL),(310,417,9,NULL,NULL),(311,418,10,NULL,NULL),(312,419,8,NULL,NULL),(313,420,8,NULL,NULL),(314,421,8,NULL,NULL),(315,422,6,NULL,NULL),(316,423,6,NULL,NULL),(317,424,7,NULL,NULL),(318,425,10,NULL,NULL),(319,426,7,NULL,NULL),(320,427,8,NULL,NULL),(321,428,6,NULL,NULL),(322,429,8,NULL,NULL),(323,430,10,NULL,NULL),(324,431,8,NULL,NULL),(325,432,10,NULL,NULL),(326,433,8,NULL,NULL),(327,434,8,NULL,NULL),(328,435,9,NULL,NULL),(329,436,8,NULL,NULL),(330,437,9,NULL,NULL),(331,438,10,NULL,NULL),(332,439,9,NULL,NULL),(333,440,9,NULL,NULL),(334,441,7,NULL,NULL),(335,442,8,NULL,NULL),(336,443,9,NULL,NULL),(337,444,7,NULL,NULL),(338,445,10,NULL,NULL),(339,446,9,NULL,NULL),(340,447,10,NULL,NULL),(341,448,7,NULL,NULL),(342,449,10,NULL,NULL),(343,450,8,NULL,NULL),(344,451,7,NULL,NULL),(345,452,8,NULL,NULL),(346,453,10,NULL,NULL),(347,454,7,NULL,NULL),(348,455,7,NULL,NULL),(349,456,9,NULL,NULL),(350,457,7,NULL,NULL),(691,51,6,NULL,NULL),(352,2,9,NULL,NULL),(353,3,8,NULL,NULL),(354,4,9,NULL,NULL),(355,5,6,NULL,NULL),(356,6,6,NULL,NULL),(357,7,9,NULL,NULL),(358,8,7,NULL,NULL),(359,9,10,NULL,NULL),(360,10,8,NULL,NULL),(361,11,7,NULL,NULL),(362,12,6,NULL,NULL),(363,13,10,NULL,NULL),(364,14,9,NULL,NULL),(365,15,6,NULL,NULL),(366,16,7,NULL,NULL),(367,17,7,NULL,NULL),(368,18,10,NULL,NULL),(369,19,7,NULL,NULL),(370,20,8,NULL,NULL),(371,21,9,NULL,NULL),(372,22,7,NULL,NULL),(373,23,10,NULL,NULL),(374,24,7,NULL,NULL),(375,25,7,NULL,NULL),(376,26,6,NULL,NULL),(377,27,6,NULL,NULL),(378,28,8,NULL,NULL),(379,29,7,NULL,NULL),(380,30,6,NULL,NULL),(381,31,6,NULL,NULL),(382,32,10,NULL,NULL),(383,33,8,NULL,NULL),(384,34,6,NULL,NULL),(385,35,9,NULL,NULL),(386,36,6,NULL,NULL),(387,37,9,NULL,NULL),(388,38,8,NULL,NULL),(389,39,7,NULL,NULL),(390,40,10,NULL,NULL),(391,41,9,NULL,NULL),(392,42,9,NULL,NULL),(393,43,10,NULL,NULL),(394,44,10,NULL,NULL),(395,45,8,NULL,NULL),(396,46,7,NULL,NULL),(397,47,7,NULL,NULL),(398,48,10,NULL,NULL),(399,49,9,NULL,NULL),(400,50,9,NULL,NULL),(401,51,10,NULL,NULL),(402,52,9,NULL,NULL),(403,53,9,NULL,NULL),(404,54,10,NULL,NULL),(405,55,9,NULL,NULL),(406,56,7,NULL,NULL),(407,57,7,NULL,NULL),(408,58,7,NULL,NULL),(409,59,10,NULL,NULL),(410,60,6,NULL,NULL),(411,61,7,NULL,NULL),(412,62,8,NULL,NULL),(413,63,10,NULL,NULL),(414,64,10,NULL,NULL),(415,65,10,NULL,NULL),(416,66,9,NULL,NULL),(417,67,9,NULL,NULL),(418,68,8,NULL,NULL),(419,69,9,NULL,NULL),(420,70,9,NULL,NULL),(421,71,8,NULL,NULL),(422,72,8,NULL,NULL),(423,73,10,NULL,NULL),(424,74,7,NULL,NULL),(425,75,6,NULL,NULL),(426,76,9,NULL,NULL),(427,77,9,NULL,NULL),(428,78,9,NULL,NULL),(429,79,10,NULL,NULL),(430,80,10,NULL,NULL),(431,81,8,NULL,NULL),(432,82,10,NULL,NULL),(433,83,10,NULL,NULL),(434,84,9,NULL,NULL),(435,85,10,NULL,NULL),(436,86,8,NULL,NULL),(437,87,6,NULL,NULL),(438,88,9,NULL,NULL),(439,89,10,NULL,NULL),(440,90,6,NULL,NULL),(441,91,9,NULL,NULL),(442,92,10,NULL,NULL),(443,93,7,NULL,NULL),(444,94,6,NULL,NULL),(445,95,9,NULL,NULL),(446,96,10,NULL,NULL),(447,97,9,NULL,NULL),(448,98,9,NULL,NULL),(449,99,7,NULL,NULL),(450,100,7,NULL,NULL),(451,110,8,NULL,NULL),(452,111,6,NULL,NULL),(453,111,7,NULL,NULL),(454,111,8,NULL,NULL),(455,111,9,NULL,NULL),(456,111,10,NULL,NULL),(457,112,8,NULL,NULL),(458,112,9,NULL,NULL),(459,113,8,NULL,NULL),(460,114,8,NULL,NULL),(461,114,9,NULL,NULL),(462,115,8,NULL,NULL),(463,116,7,NULL,NULL),(464,117,7,NULL,NULL),(465,118,7,NULL,NULL),(466,119,8,NULL,NULL),(467,120,8,NULL,NULL),(468,121,7,NULL,NULL),(469,122,6,NULL,NULL),(470,123,9,NULL,NULL),(471,124,7,NULL,NULL),(472,125,8,NULL,NULL),(473,126,9,NULL,NULL),(474,127,6,NULL,NULL),(475,128,8,NULL,NULL),(476,129,8,NULL,NULL),(477,130,8,NULL,NULL),(478,131,8,NULL,NULL),(479,132,8,NULL,NULL),(480,133,8,NULL,NULL),(481,134,8,NULL,NULL),(482,135,8,NULL,NULL),(483,136,8,NULL,NULL),(484,137,8,NULL,NULL),(485,138,9,NULL,NULL),(486,139,7,NULL,NULL),(487,140,7,NULL,NULL),(488,175,8,NULL,NULL),(489,176,8,NULL,NULL),(490,177,6,NULL,NULL),(491,177,7,NULL,NULL),(492,177,8,NULL,NULL),(493,177,9,NULL,NULL),(494,178,7,NULL,NULL),(495,179,9,NULL,NULL),(496,180,9,NULL,NULL),(497,181,9,NULL,NULL),(498,182,9,NULL,NULL),(499,183,9,NULL,NULL),(500,184,9,NULL,NULL),(501,185,9,NULL,NULL),(502,186,9,NULL,NULL),(503,187,9,NULL,NULL),(504,188,9,NULL,NULL),(505,189,9,NULL,NULL),(506,190,9,NULL,NULL),(507,191,9,NULL,NULL),(508,192,9,NULL,NULL),(509,193,9,NULL,NULL),(510,194,9,NULL,NULL),(511,195,9,NULL,NULL),(512,196,9,NULL,NULL),(513,197,6,NULL,NULL),(514,198,6,NULL,NULL),(515,199,6,NULL,NULL),(516,200,6,NULL,NULL),(517,201,6,NULL,NULL),(518,202,6,NULL,NULL),(519,203,6,NULL,NULL),(520,204,6,NULL,NULL),(521,205,6,NULL,NULL),(522,206,6,NULL,NULL),(523,207,6,NULL,NULL),(524,208,6,NULL,NULL),(525,209,6,NULL,NULL),(526,210,6,NULL,NULL),(527,211,6,NULL,NULL),(528,212,6,NULL,NULL),(529,213,7,NULL,NULL),(530,214,9,NULL,NULL),(531,215,9,NULL,NULL),(532,216,8,NULL,NULL),(533,217,9,NULL,NULL),(534,218,10,NULL,NULL),(535,219,7,NULL,NULL),(536,220,7,NULL,NULL),(537,221,10,NULL,NULL),(538,222,6,NULL,NULL),(539,223,6,NULL,NULL),(540,224,7,NULL,NULL),(541,225,9,NULL,NULL),(542,226,10,NULL,NULL),(543,227,8,NULL,NULL),(544,228,9,NULL,NULL),(545,229,8,NULL,NULL),(546,230,10,NULL,NULL),(547,231,7,NULL,NULL),(548,232,8,NULL,NULL),(549,233,9,NULL,NULL),(550,234,8,NULL,NULL),(551,235,6,NULL,NULL),(552,236,6,NULL,NULL),(553,237,8,NULL,NULL),(554,238,6,NULL,NULL),(555,239,8,NULL,NULL),(556,240,9,NULL,NULL),(557,241,8,NULL,NULL),(558,242,8,NULL,NULL),(559,243,6,NULL,NULL),(560,244,9,NULL,NULL),(561,245,10,NULL,NULL),(562,246,9,NULL,NULL),(563,247,7,NULL,NULL),(564,248,10,NULL,NULL),(565,249,10,NULL,NULL),(566,250,8,NULL,NULL),(567,251,10,NULL,NULL),(568,252,10,NULL,NULL),(569,253,10,NULL,NULL),(570,254,6,NULL,NULL),(571,255,8,NULL,NULL),(572,256,9,NULL,NULL),(573,257,8,NULL,NULL),(574,258,6,NULL,NULL),(575,259,8,NULL,NULL),(576,260,9,NULL,NULL),(577,261,9,NULL,NULL),(578,262,6,NULL,NULL),(579,263,9,NULL,NULL),(580,264,10,NULL,NULL),(581,265,10,NULL,NULL),(582,266,7,NULL,NULL),(583,267,10,NULL,NULL),(584,268,7,NULL,NULL),(585,269,10,NULL,NULL),(586,270,8,NULL,NULL),(587,271,9,NULL,NULL),(588,272,7,NULL,NULL),(589,273,10,NULL,NULL),(590,274,7,NULL,NULL),(591,275,6,NULL,NULL),(592,276,8,NULL,NULL),(593,277,9,NULL,NULL),(594,278,7,NULL,NULL),(595,279,6,NULL,NULL),(596,280,8,NULL,NULL),(597,281,10,NULL,NULL),(598,282,10,NULL,NULL),(599,283,10,NULL,NULL),(600,284,6,NULL,NULL),(601,285,9,NULL,NULL),(602,286,8,NULL,NULL),(603,287,7,NULL,NULL),(604,288,9,NULL,NULL),(605,289,9,NULL,NULL),(606,290,10,NULL,NULL),(607,291,9,NULL,NULL),(608,292,9,NULL,NULL),(609,293,6,NULL,NULL),(610,294,6,NULL,NULL),(611,295,6,NULL,NULL),(612,296,10,NULL,NULL),(613,297,6,NULL,NULL),(614,298,10,NULL,NULL),(615,299,8,NULL,NULL),(644,5,10,NULL,NULL),(617,301,6,NULL,NULL),(618,302,8,NULL,NULL),(619,303,6,NULL,NULL),(620,304,9,NULL,NULL),(621,305,9,NULL,NULL),(622,306,9,NULL,NULL),(623,307,6,NULL,NULL),(624,308,9,NULL,NULL),(625,309,10,NULL,NULL),(626,310,8,NULL,NULL),(627,311,7,NULL,NULL),(628,312,9,NULL,NULL),(629,313,7,NULL,NULL),(630,314,10,NULL,NULL),(631,315,7,NULL,NULL),(632,316,9,NULL,NULL),(641,2,8,NULL,NULL),(643,4,8,NULL,NULL),(690,1,6,NULL,NULL),(642,3,10,NULL,NULL),(639,300,10,NULL,NULL),(646,7,8,NULL,NULL),(647,8,7,NULL,NULL),(648,9,10,NULL,NULL),(649,10,10,NULL,NULL),(650,11,8,NULL,NULL),(651,12,9,NULL,NULL),(652,13,10,NULL,NULL),(653,14,6,NULL,NULL),(654,15,7,NULL,NULL),(655,16,10,NULL,NULL),(656,17,10,NULL,NULL),(657,18,10,NULL,NULL),(658,19,7,NULL,NULL),(659,20,10,NULL,NULL),(660,21,8,NULL,NULL),(661,22,7,NULL,NULL),(662,23,10,NULL,NULL),(663,24,9,NULL,NULL),(664,25,9,NULL,NULL),(665,26,6,NULL,NULL),(666,27,9,NULL,NULL),(667,28,10,NULL,NULL),(668,29,9,NULL,NULL),(669,30,7,NULL,NULL),(670,31,6,NULL,NULL),(671,32,10,NULL,NULL),(672,33,9,NULL,NULL),(673,34,7,NULL,NULL),(674,35,9,NULL,NULL),(675,36,6,NULL,NULL),(676,37,7,NULL,NULL),(677,38,8,NULL,NULL),(678,39,10,NULL,NULL),(679,40,9,NULL,NULL),(680,41,6,NULL,NULL),(681,42,7,NULL,NULL),(682,43,6,NULL,NULL),(683,44,9,NULL,NULL),(684,45,9,NULL,NULL),(685,46,10,NULL,NULL),(686,47,9,NULL,NULL),(687,48,6,NULL,NULL),(688,49,6,NULL,NULL),(689,50,10,NULL,NULL),(692,52,7,NULL,NULL),(693,53,8,NULL,NULL),(694,54,9,NULL,NULL),(695,55,8,NULL,NULL),(696,56,7,NULL,NULL),(697,57,8,NULL,NULL),(698,58,8,NULL,NULL),(699,59,7,NULL,NULL),(700,60,7,NULL,NULL);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('draft','offline','online') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  KEY `posts_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (53,3,2,'sqqqqqqq','sqqqqqqqqqqq','online','2016-05-07 17:48:40','2016-05-07 17:48:40'),(54,3,2,'tryertytrytry','tryetry','online','2016-05-07 17:49:58','2016-05-07 17:49:58'),(55,3,2,'Soukaina','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione quibusdam minima laborum placeat doloremque facilis impedit dolor molestiae nobis repudiandae.','offline','2016-05-07 17:52:56','2016-05-08 10:41:47'),(2,3,2,'Dr.','Repellendus repellendus delectus voluptates. Est et deserunt facilis ipsa. Quia voluptatibus incidunt iusto qui vitae. Placeat quas totam qui ipsa ut. Sed qui asperiores voluptate magni quia. Aliquid vero quae sunt fugiat.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(3,3,1,'Mrs.','Tempore recusandae et molestias voluptas error rerum ad. Alias aut qui consequatur cumque nisi earum cupiditate ipsam. Neque maxime est qui aut dignissimos ipsa. Aperiam non aut sit consectetur et corporis. Saepe aut et voluptatibus ratione consequatur quis. Praesentium voluptatem a magnam aliquid amet et. Saepe ratione autem tempore est.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(4,4,2,'Mr.','Laboriosam et quae necessitatibus ipsam numquam voluptatibus dignissimos. Blanditiis iure atque ut vero molestiae. Ut assumenda consectetur maiores natus sed reprehenderit. Omnis pariatur repudiandae sit voluptatem dolores.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(5,3,2,'Prof.','Nobis vel sunt sed deserunt. In enim quia omnis voluptate rerum labore. Rem voluptas et accusamus placeat. Et ut odit qui nihil quae. Architecto expedita odio dolorem eum consectetur sit. Voluptatibus repudiandae cumque veniam quibusdam aperiam.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(6,4,1,'Dr.','Autem dolor aut quia et. Et qui alias quae saepe. Consequatur labore non laborum. Voluptatum quo qui harum quo tempora iusto saepe ullam. Quia velit nisi tenetur aut. Et incidunt iure modi expedita voluptas beatae quis.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(7,3,1,'Prof.','Laboriosam qui assumenda repellendus neque nisi libero sit. Ea cumque libero quo nostrum numquam molestias possimus. Vel quaerat blanditiis et magni rerum. Omnis ut voluptates voluptate amet voluptatem laborum molestias nihil. Earum blanditiis ut accusantium vitae omnis odit maiores. Cumque unde sapiente consequatur saepe corrupti in quia. Harum sapiente quisquam maiores ut aut velit enim.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(8,3,2,'Miss','Voluptatem nemo quia nobis est voluptas. Placeat mollitia sunt exercitationem modi tenetur sed quis. Deserunt dignissimos et eius maiores. Nostrum eligendi quae consectetur ullam in sed. Quibusdam possimus magni sit eaque sit est dolor. Laboriosam et ut consequatur.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(9,4,2,'Dr.','Vero modi accusamus nisi et qui assumenda minima. Ullam aut voluptatem iusto est. Reiciendis qui doloremque quod ut corporis in quo. Ratione ipsum et quidem et repudiandae ut rerum nisi. Provident eius ea totam molestiae porro. Ducimus quia corrupti eos illo perspiciatis amet similique. Porro eaque itaque ea at libero natus tenetur.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(10,4,1,'Dr.','Voluptas corporis quibusdam corrupti rerum. Soluta porro rerum aut voluptatibus similique. Quam et expedita provident laboriosam minima est. Iure itaque consequuntur totam non.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(11,4,1,'Ms.','Recusandae asperiores nesciunt iure nisi. Neque id asperiores asperiores nobis. Aut aspernatur in earum itaque. Voluptatibus dolorem est inventore sed. Debitis aspernatur ipsam tempora dicta. Minima quia provident itaque vel. Aliquid quas temporibus sed magnam.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(12,4,1,'Prof.','Totam eos impedit voluptas accusamus in praesentium. Tempore ullam dolorem in odio. Voluptatem laborum mollitia pariatur. Est aliquid nihil cum eligendi. Qui et sit ut saepe ad doloremque. Voluptas voluptatem voluptas alias est nobis dignissimos quod.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(13,4,2,'Dr.','Accusamus eum facilis architecto dolores expedita vel a distinctio. Modi sint iusto provident atque. Facilis quia voluptatibus omnis dolorem et. Alias voluptatem dolores aut dolore aut.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(14,4,2,'Prof.','Debitis consequatur non est voluptatum quidem facilis. Recusandae corrupti recusandae eaque itaque veritatis accusamus. Quae animi vel quibusdam nihil quidem. Blanditiis non sit accusantium non atque.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(15,3,2,'Mr.','Magni eveniet accusamus est nihil et. Totam aut sunt culpa qui est eum aspernatur voluptas. Voluptatem quia commodi aspernatur ut. Eos modi et architecto similique et autem. Suscipit natus atque voluptas impedit facilis sit consectetur similique. Enim voluptatem rerum vel perspiciatis incidunt et reiciendis. Sed laudantium sit in sit aut id id.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(16,3,2,'Dr.','Quaerat at nisi blanditiis qui. Commodi tempora illo sunt perferendis cum. Enim et delectus aut unde officia natus occaecati facilis. Quasi error ipsam ut eum laboriosam eum. Voluptatem fuga velit sunt pariatur corporis. A sit fugit perferendis.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(17,4,1,'Miss','Quia officiis ea facilis esse quia. Non corporis ut omnis aut ut beatae omnis. Molestiae ea et perspiciatis non consequuntur occaecati. Officia et odio dicta quos aperiam accusantium.','draft','2016-05-03 10:12:00','2016-05-03 10:12:00'),(18,3,1,'Prof.','Accusamus iste quis alias. Ipsam repudiandae hic aut quod voluptates. Qui eveniet exercitationem nam culpa nostrum autem accusamus eveniet. Quia dolores quis totam accusamus sapiente sapiente dolor. Quaerat est aut voluptatem ipsa. Et aut quisquam saepe pariatur aperiam exercitationem error. Adipisci est nulla exercitationem voluptatem nihil cum libero.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(19,4,1,'Dr.','Nisi officiis sint qui ab quod. Eum occaecati hic et accusantium dolorem. Et est rem fugit consequatur. Hic culpa in ea rerum dignissimos. Sunt voluptatem corrupti sit dolore aut illo aliquid.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(20,4,1,'Dr.','Illum libero natus voluptatem aperiam non impedit ex. Ut voluptas rem qui sint. Fugit harum tempore recusandae tempora fugiat excepturi quia. Consectetur et id nihil sit. Repellat consequatur quis nobis architecto et tenetur praesentium.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(21,4,1,'Dr.','Perspiciatis exercitationem voluptatem distinctio omnis sunt similique libero. Dignissimos est tenetur eveniet atque adipisci dolores. Possimus reprehenderit itaque perspiciatis error cum incidunt. Quia corrupti cumque sequi fuga. Et hic non id nobis libero officia voluptas. Autem impedit consequuntur earum harum quia error corporis.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(22,4,1,'Dr.','Est inventore perferendis sequi eos rerum. Laudantium earum sit doloribus in. Provident qui rerum rem corrupti quod. Sequi alias temporibus est occaecati. Et eum adipisci qui reiciendis laudantium et deserunt. Nemo perferendis et id possimus consectetur soluta ipsa.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(23,3,1,'Dr.','Dolor hic voluptates quia eaque. Sunt illum ullam aut minus harum. Rerum amet pariatur dolorem velit illo enim. Facere hic animi voluptatem qui numquam delectus iste sit. Fugit sint sed voluptatem et et doloribus provident.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(24,3,2,'Prof.','Nihil sint dolores velit ut. Dolorum error voluptate modi placeat voluptas iure sequi. Molestiae dolores beatae consequatur et odio. Aliquam delectus et consequuntur tenetur dolorem tempore.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(25,4,2,'Dr.','Et doloremque velit laboriosam. Consequatur et laborum beatae et iure et maxime ut. Sed cupiditate voluptas et corporis. Explicabo ut ut expedita minus incidunt. Eum incidunt similique id omnis reiciendis velit magnam.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(26,4,1,'Dr.','Quae blanditiis soluta exercitationem culpa deleniti qui ad. Tenetur nihil aut magnam id officia. Repellendus maxime minima velit quod molestias. Tempore sit est incidunt cumque voluptates.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(27,3,1,'Prof.','Dolor sit qui voluptas quia. Et et voluptates molestiae dolor illo. Earum laudantium omnis aut consequatur fuga qui. Cum sit dolores et. Dolores nam fugiat nihil esse veritatis ab libero quo. Dolorum odio adipisci incidunt dolore natus. Quis quisquam ut cupiditate a saepe vel.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(28,3,1,'Dr.','Laboriosam deleniti ab atque aut laborum quo ad. Qui earum eum veritatis commodi placeat molestiae est. Commodi enim voluptatum eum omnis asperiores cum. Omnis molestiae rerum molestiae maxime vero. Alias occaecati eum ipsa autem neque et impedit id.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(29,4,2,'Dr.','Minus numquam delectus voluptatem deleniti. Sed ut quo omnis. Corrupti voluptatem odio blanditiis qui repellat labore. Ad dolores et id ut eaque non. Et amet id sed facilis incidunt adipisci corrupti.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(30,4,2,'Dr.','Maxime molestias laborum est pariatur culpa. Sint velit quis numquam. Laborum quasi facere eaque. Officia et est eius expedita ipsum. Amet labore nisi reiciendis ut eaque perspiciatis pariatur. Voluptas corporis explicabo delectus quae. Enim molestiae dolores hic est facilis facere molestiae.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(31,3,1,'Dr.','Quam aut accusantium exercitationem animi. Veniam et assumenda officiis quia ab reiciendis error ut. Ex id fugiat culpa voluptatem. Esse ut sunt ducimus iste.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(32,3,2,'Dr.','Qui soluta dolorem inventore animi error temporibus. Voluptates quam dignissimos sapiente ea. Natus voluptas nihil earum magni odio voluptas labore. Quos esse omnis deleniti. Magnam reiciendis officiis sunt a. Dolore excepturi dolor aliquid autem voluptates veniam laboriosam.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(33,4,1,'Prof.','At ut doloribus est mollitia harum. Nihil dolores sed sunt explicabo in voluptatum in. Praesentium ab voluptatem ad nam ea. A tempore porro doloremque mollitia earum facilis.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(34,4,2,'Dr.','Id sunt facere dignissimos eveniet. At consectetur nihil quas delectus id. Officia saepe praesentium incidunt fugiat autem qui quidem. Fugit autem molestiae ut blanditiis libero accusamus id. Corporis et consectetur dicta dignissimos soluta. Qui quia vitae reprehenderit vel. Omnis iusto qui ea culpa sunt quia totam ex. Enim perferendis recusandae amet enim rerum quaerat possimus.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(35,3,1,'Dr.','Voluptas sint voluptatibus quia iure ratione illum architecto deserunt. Totam aut provident alias. Eum omnis pariatur numquam labore quo. Similique voluptas aliquam aut beatae est earum culpa.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(36,3,1,'Dr.','Officiis corrupti voluptatum porro rerum. Distinctio repellat est inventore animi odit. Consequatur error nulla esse sunt perferendis dolores. Omnis similique asperiores vero adipisci.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(37,3,1,'Dr.','Nemo facere at et. Nemo totam officia dolor nam aut minus ipsum. Illo officiis ab natus architecto mollitia maxime. Nobis voluptate sunt asperiores rerum. Sunt quod distinctio ut optio. Sed aut consectetur ratione ut aut rerum dolorum et. Inventore aperiam sit ex voluptatem odio explicabo laborum.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(38,3,1,'Miss','Sit a debitis quae quibusdam molestiae. Totam consectetur necessitatibus nulla commodi. Soluta est recusandae dolores ut ut dignissimos. Non ut et ut omnis et voluptate necessitatibus. Ipsum ea et fugiat. Nostrum provident labore sit vel quis. Ducimus quia dicta et voluptas magni.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(39,3,2,'Prof.','Magnam velit tenetur harum. Facere enim rerum dolor corrupti dolorem tempore. Sit commodi cumque molestiae quasi voluptas. Qui animi illum nam omnis voluptates modi. Voluptates ipsum ut nobis nihil. Quos eum quos quo non est. Et autem assumenda quo sed est.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(40,4,1,'Dr.','Ab facere voluptas qui et praesentium aut aspernatur repellat. Non eligendi id porro ea fugiat. Natus qui et nulla voluptates eius. Eius exercitationem distinctio laborum voluptas dolor velit voluptatem maxime. Expedita doloremque totam eius doloremque dolor nam nostrum. Libero eaque commodi fuga. Porro at explicabo sed ipsam dolor dolores.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(41,4,2,'Dr.','Veritatis perspiciatis odio dolor molestias rerum sit. Et aut minus quas qui fugit qui aliquam. Corporis porro qui ut magnam ipsum et minima et. Recusandae qui nostrum eum dolore assumenda et et accusantium. Itaque assumenda dicta omnis. Voluptatem at non eum laborum.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(42,4,2,'Prof.','Et molestias mollitia dolor nesciunt nam deserunt. Esse incidunt aliquam voluptates sequi harum corrupti aut. Rerum aspernatur quaerat dolores atque. Repellendus sit quis aut voluptatem in sint expedita.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(43,4,1,'Prof.','Qui odio eos praesentium voluptatem nemo reiciendis ipsa. Fugiat nemo rerum rem ipsa quia aut. Velit consequuntur sunt esse inventore praesentium. Quia doloremque ullam sunt aut. Ea quidem laboriosam nisi magnam fugit.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(44,4,2,'Prof.','Quia labore possimus est sed animi modi. A perspiciatis quia non voluptate. Vero voluptatibus quia aut ipsum dolor. Rerum cumque recusandae voluptatem aut aut.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(45,3,2,'Prof.','Hic in labore voluptate sed dolores similique. Quo temporibus et sed laudantium sit corrupti. Quo in architecto fuga voluptatibus fugit aliquid ex. Placeat iusto mollitia placeat autem. Possimus cum facilis maxime consequuntur. Repudiandae suscipit incidunt voluptas mollitia laborum.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(46,4,1,'Mrs.','Impedit sunt occaecati harum similique. In ea et nisi ex non voluptate. Velit et est repellendus facilis adipisci. Qui corporis est aspernatur. Corrupti alias magnam enim quia non laborum. Saepe sequi iusto ratione enim consequatur. Quia quaerat omnis est quo.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(47,3,2,'Mr.','Error et ut porro optio non. Quod amet quaerat libero ad. Fugit harum aut enim laudantium quas maxime. Adipisci nobis rerum ipsum. Aut dolor inventore quisquam. Labore dolore consequatur quia quis quis quis non itaque.','draft','2016-05-03 10:12:01','2016-05-03 10:12:01'),(52,3,1,'Test de nvv','mqlskdjfmlkj','online','2016-05-07 17:44:20','2016-05-07 17:44:20'),(56,3,1,'nvll article','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione quibusdam minima laborum placeat doloremque facilis impedit dolor molestiae nobis repudiandae.','online','2016-05-08 10:41:06','2016-05-08 10:41:06'),(58,3,2,'sqdf','sdf','online','2016-07-28 18:47:54','2016-07-28 18:47:54'),(59,3,2,'hjkl','qsdfsdfsqdf','draft','2016-07-28 18:48:15','2016-07-28 18:48:15'),(60,3,1,'sdfqfsdfqsdf','sqdfsqdfsfd','online','2016-07-28 18:50:57','2016-07-28 18:50:57');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (6,'est','2016-04-27 11:29:46','2016-04-27 11:29:46'),(7,'odit','2016-04-27 11:29:46','2016-04-27 11:29:46'),(8,'unde','2016-04-27 11:29:46','2016-04-27 11:29:46'),(9,'consequatur','2016-04-27 11:29:46','2016-04-27 11:29:46'),(10,'corporis','2016-04-27 11:29:46','2016-04-27 11:29:46');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('admin','editor') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'editor',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Charles','charles@proxy.io','$2y$10$z0g85AFMqSolm0d6PnnEJOmEPtKSSpce0BZZRSFr2euKJcn063LEe','admin','8Y43o55CMneZ1vELlDv3mMWob1RyLYj3pvDrQTg5DuHCFzba0cWxNBUCMXef','2016-04-27 11:49:57','2016-07-29 11:10:07'),(4,'vectograph','vectograph@mail.com','$2y$10$HsaT4MNXWOc3I217u1.SDOHehZIPCOuaLkRFCvFXAta5s68gDB17q','editor','3srmYIm2HeUSDGbRv4WG8BRbt56SlOZsnBvQ6QaqePEnwG5imtkI6eoxvIjV','2016-04-27 11:53:10','2016-07-05 20:03:38'),(5,'Dr. Rowland Waters','cummerata.cleveland@example.org','$2y$10$2zA5qrcQX.tI2FxIFL9Hceul94EiSGEVSOmYaK77/jeGhPyKUBqHm','editor','j268gLD6ZO','2016-07-24 09:31:30','2016-07-24 09:31:30'),(6,'Dr. Ephraim Schiller','timmothy.pfannerstill@example.org','$2y$10$mZqxpItkEJA.468eBN.Pm.IAiCzkdMql0NyFxyTf6ajngEMDfLE0S','editor','KwxEf09k2X','2016-07-24 09:32:25','2016-07-24 09:32:25'),(7,'Concepcion D\'Amore','sauer.reina@example.net','$2y$10$7cpFQ8LjiNRXr9GPFa5//uVYdOi4jhCxLN6aLl7HwVDTJH1G5RpJm','editor','RfL7QgFnzH','2016-07-24 09:32:25','2016-07-24 09:32:25'),(8,'Jarod Willms','yadams@example.com','$2y$10$fcAiYsdhhNLxuf5OsbZEV.dQ0l5F1UlOfOT/fKnaP.JIGpSZOmPe6','editor','0iMorrie6X','2016-07-24 09:32:25','2016-07-24 09:32:25'),(9,'Judson Bins','ycarter@example.com','$2y$10$n0aRU5oY.8C8iobY.dt.N.nEZ2P3dsGYj8wigzYz/l4R4PNDafD2i','editor','Xo6xB1N1LL','2016-07-24 09:32:25','2016-07-24 09:32:25'),(10,'Elliot Douglas','padberg.agustin@example.com','$2y$10$gdiVqj7p0iMj7k6MzsyMAOB6BI4zNhOEQBDea0i2THnaiiHQhh4bu','editor','9T5VODfHSR','2016-07-24 09:33:49','2016-07-24 09:33:49'),(11,'Prof. Sunny Kuvalis','haag.raoul@example.org','$2y$10$5ibximkVp6dCPYFeH5aBU.um.Y9uZ0/fpDA0bgXPrAolJAxFl4n1K','editor','MZuL8rw1B2','2016-07-24 09:33:49','2016-07-24 09:33:49'),(12,'Corrine Reichel','gardner.ryan@example.net','$2y$10$OYlPBHGUpOvYmGh8mD2HAeUvS17gGdtmaDaBorkFqhaQBxQKEzR9G','editor','UHgUnpM6L0','2016-07-24 09:33:49','2016-07-24 09:33:49'),(13,'Wallace Smith','zhessel@example.com','$2y$10$hfkfttbE9cKZ3TNhhkCfSOMaQCYIweoP0ZlCpaz7T1MLlBY542Nta','editor','YMk7fvxTn3','2016-07-24 09:33:49','2016-07-24 09:33:49'),(14,'Franco Effertz','vborer@example.com','$2y$10$WCPUd//WLYInP1yC7QBB0eDMaEe39gj4GTvYkMljRDrjX8wlbFUkG','editor','Z8YzoKctsx','2016-07-24 09:38:15','2016-07-24 09:38:15'),(15,'Berta Ferry','ewiegand@example.net','$2y$10$JdAUVTFIg/9zcowQtvHM6OH9MazJ7c4Y2Ht.Y69Z6DPwaUjCTqj7e','editor','0yiTtlWCAT','2016-07-24 09:38:15','2016-07-24 09:38:15'),(16,'Marlin Huels','gorczany.lyda@example.org','$2y$10$DJGttoLa10jZgHUaaOsFXurKJY7.RJXqLXxfisDeUyXdnqxFnMC/K','editor','KOzozbbXT1','2016-07-24 09:38:15','2016-07-24 09:38:15'),(17,'Brigitte Kertzmann','cordia.nikolaus@example.net','$2y$10$c.PbdQrubS8Bk7gjMFNw4OBRvjKoRkA5VSDPkYi72ddukfHyzxodG','editor','TwQclPjlwu','2016-07-24 09:38:15','2016-07-24 09:38:15');
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

-- Dump completed on 2016-11-29 23:09:51
