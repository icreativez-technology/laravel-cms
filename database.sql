-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'5tR5J4K4xmrxRcWOK6N31PdhXbZsyMgp',1,'2023-02-12 00:48:32','2023-02-12 00:48:32','2023-02-12 00:48:32');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2028-02-12 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(2,'Make your Breakfast','2028-02-12 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(3,'The best Organic','2028-02-12 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(4,'Bring nature into your home','2028-02-12 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(5,'Delivered to your home','2028-02-12 00:00:00','banner-big','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(6,'Save 17% on Oganic Juice','2028-02-12 00:00:00','no_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(7,'Everyday Fresh & Clean with Our Products','2028-02-12 00:00:00','item-style-4','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(8,'The best Organic Products Online','2028-02-12 00:00:00','item-style-5','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(9,'Everyday Fresh with Our Products','2028-02-12 00:00:00','item-style-2','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(10,'100% guaranteed all Fresh items','2028-02-12 00:00:00','item-style-2','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(11,'Special grocery sale off this month','2028-02-12 00:00:00','item-style-2','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(12,'Enjoy 15% OFF for all vegetable and fruit','2028-02-12 00:00:00','item-style-2','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2023-02-12 00:48:33','2023-02-12 00:48:33');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Tươi mỗi ngày','promotion/1.png','/vi/products'),('vi',2,'Nấu bữa sáng của bạn','promotion/2.png','/vi/products'),('vi',3,'Hữu cơ tốt nhất','promotion/3.png','/vi/products'),('vi',4,'Mang thiên nhiên vào ngôi nhà của bạn','promotion/4.png','/vi/products'),('vi',5,'Giao tận nhà','promotion/5.png','/vi/products'),('vi',6,'Tiết kiệm 17% khi mua nước ép hữu cơ','promotion/6.png','/vi/products'),('vi',7,'Tươi và Sạch hàng ngày với các sản phẩm của chúng tôi','promotion/7.png','/vi/products'),('vi',8,'Các sản phẩm hữu cơ tốt nhất trực tuyến','promotion/8.png','/vi/products'),('vi',9,'Tươi mới mỗi ngày với các sản phẩm của chúng tôi','promotion/9.png','/vi/products'),('vi',10,'100% đảm bảo tất cả các mặt hàng tươi','promotion/10.png','/vi/products'),('vi',11,'Giảm giá hàng tạp hóa đặc biệt trong tháng này','promotion/11.png','/vi/products'),('vi',12,'GIẢM GIÁ 15% cho tất cả rau và trái cây','promotion/12.png','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Consequatur dignissimos aliquam nisi rerum et voluptas sunt. Suscipit dolor id et in et ipsa maiores. Tempora non ut id nihil maiores quia ea qui.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(2,'Fashion',0,'Error natus quia a optio cum ad eaque placeat. Sed quos aut quod quo minus. Inventore vitae corporis vel repellendus. Id neque ducimus ducimus optio blanditiis perspiciatis quidem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(3,'Electronic',0,'Dignissimos et non in adipisci. Dolore tempora quia et aut. Rerum unde culpa qui error quisquam totam et. Eaque et voluptatibus aut laudantium laborum et iste nam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(4,'Commercial',0,'Qui aut doloremque consectetur ipsa ipsa at. Aliquam ut quis incidunt voluptatem ut. Iusto natus rem non voluptatibus pariatur debitis. Quibusdam nemo esse distinctio natus illum veniam quisquam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-02-12 00:48:31','2023-02-12 00:48:31');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2023-02-12 00:48:15','2023-02-12 00:48:15'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2023-02-12 00:48:15','2023-02-12 00:48:15'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2023-02-12 00:48:15','2023-02-12 00:48:15'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2023-02-12 00:48:15','2023-02-12 00:48:15'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2023-02-12 00:48:15','2023-02-12 00:48:15'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2023-02-12 00:48:15','2023-02-12 00:48:15'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2023-02-12 00:48:15','2023-02-12 00:48:15');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Perxsion',NULL),('vi',2,'Hiching',NULL),('vi',3,'Kepslo',NULL),('vi',4,'Groneba',NULL),('vi',5,'Babian',NULL),('vi',6,'Valorant',NULL),('vi',7,'Pure',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-02-12 00:48:15','2023-02-12 00:48:15'),(2,'EUR','€',0,2,1,0,0.84,'2023-02-12 00:48:15','2023-02-12 00:48:15'),(3,'VND','₫',0,0,2,0,23203,'2023-02-12 00:48:15','2023-02-12 00:48:15');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Prof. Patience Ritchie IV','customer@botble.com','+16413425562','TF','Wyoming','West Conner','76281 Auer Underpass',1,1,'2023-02-12 00:48:25','2023-02-12 00:48:25','87312'),(2,'Prof. Patience Ritchie IV','customer@botble.com','+13144614245','DO','Tennessee','Heidenreichtown','9405 Grady Glen Suite 761',1,0,'2023-02-12 00:48:25','2023-02-12 00:48:25','24352-0092'),(3,'Ruben Bosco DDS','vendor@botble.com','+14638030114','CZ','Arizona','North Janickmouth','1751 Annie Mount Apt. 803',2,1,'2023-02-12 00:48:26','2023-02-12 00:48:26','14035-5262'),(4,'Ruben Bosco DDS','vendor@botble.com','+15395005753','CX','Pennsylvania','Alessandraport','5128 Estrella Fields',2,0,'2023-02-12 00:48:26','2023-02-12 00:48:26','98038-0951'),(5,'Maxie Ankunding IV','smarquardt@example.com','+16574074385','AS','Minnesota','Lake Danahaven','388 Bernier Place',3,1,'2023-02-12 00:48:26','2023-02-12 00:48:26','49978-8648'),(6,'Davion Beatty','reese08@example.net','+17375560143','IO','Iowa','West Keyon','7332 Hauck Junctions',4,1,'2023-02-12 00:48:26','2023-02-12 00:48:26','57145-0163'),(7,'Lawrence Murphy','mohr.kevin@example.com','+12295323332','EC','New Hampshire','Theodorehaven','172 Dee Junctions',5,1,'2023-02-12 00:48:26','2023-02-12 00:48:26','48330-2936'),(8,'Mikayla Steuber I','cdooley@example.net','+12393824673','NC','Maryland','Lake Sylvan','90009 Thompson Cove',6,1,'2023-02-12 00:48:26','2023-02-12 00:48:26','75793'),(9,'Caden Mitchell','emmerich.queen@example.net','+19203658656','NP','Iowa','North Darrionbury','364 Metz Villages Apt. 871',7,1,'2023-02-12 00:48:26','2023-02-12 00:48:26','64094'),(10,'Riley Koss','hromaguera@example.com','+14255887918','UY','District of Columbia','North Bianka','2945 Kunze Plains Suite 764',8,1,'2023-02-12 00:48:26','2023-02-12 00:48:26','50057-6818'),(11,'Prof. Nestor Marquardt I','pagac.noelia@example.net','+14064643916','BQ','Arkansas','Lake Libbieview','692 Kiehn Square Apt. 331',9,1,'2023-02-12 00:48:26','2023-02-12 00:48:26','42254-5431'),(12,'Makenzie Hill','tillman.dylan@example.net','+19126375446','NR','Vermont','Willmstown','8664 Shanahan Causeway',10,1,'2023-02-12 00:48:26','2023-02-12 00:48:26','04794');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Prof. Patience Ritchie IV','customer@botble.com','$2y$10$L9W/8Dbvf7o2b.IMiYVQNeVSj8Qq36u.vgo96OZPMJsT6XLmUGBVW','customers/8.jpg','1982-01-17','+13237231007',NULL,'2023-02-12 00:48:25','2023-02-12 00:48:25','2023-02-12 07:48:25',NULL,'activated',0,NULL),(2,'Ruben Bosco DDS','vendor@botble.com','$2y$10$zoGVyKlsGdNpFJbqReDOU.H2318uEqGZ6FhSW1iK17kHVCUgO07Qu','customers/7.jpg','1993-01-16','+13233759021',NULL,'2023-02-12 00:48:26','2023-02-12 00:48:36','2023-02-12 07:48:26',NULL,'activated',1,'2023-02-12 07:48:36'),(3,'Maxie Ankunding IV','smarquardt@example.com','$2y$10$RkBtQP8Zu1FYQndlBqN2qeRARYQhLYjHb3cQ3pSK3OaWxoPEi1tMO','customers/1.jpg','1993-02-09','+14842016260',NULL,'2023-02-12 00:48:26','2023-02-12 00:48:26','2023-02-12 07:48:26',NULL,'activated',0,NULL),(4,'Davion Beatty','reese08@example.net','$2y$10$7lHY9XLrlmA.6vdTwzdLjebc9FcvMQjqRaEAbMDVmOxgod2btMK3.','customers/2.jpg','2001-01-16','+15317345512',NULL,'2023-02-12 00:48:26','2023-02-12 00:48:36','2023-02-12 07:48:26',NULL,'activated',1,'2023-02-12 07:48:36'),(5,'Lawrence Murphy','mohr.kevin@example.com','$2y$10$RM4hKezzXL1/pYJ5ddOEleJRftgy31yv4at.dr43EaouCDVnssERu','customers/3.jpg','1994-02-03','+19106986830',NULL,'2023-02-12 00:48:26','2023-02-12 00:48:37','2023-02-12 07:48:26',NULL,'activated',1,'2023-02-12 07:48:37'),(6,'Mikayla Steuber I','cdooley@example.net','$2y$10$Oh7RyPjAZbGOYDkSL8zY4.5GHwDifDPlqtNlIJ3xFOHBwwZ2z7jbe','customers/4.jpg','2001-01-18','+17324135907',NULL,'2023-02-12 00:48:26','2023-02-12 00:48:26','2023-02-12 07:48:26',NULL,'activated',0,NULL),(7,'Caden Mitchell','emmerich.queen@example.net','$2y$10$bHxuYb5mjqUAuKch7xSCZ.mm98vnjlyUuhHLsFfcx984Mfaid0oSe','customers/5.jpg','2002-02-06','+13648866867',NULL,'2023-02-12 00:48:26','2023-02-12 00:48:37','2023-02-12 07:48:26',NULL,'activated',1,'2023-02-12 07:48:37'),(8,'Riley Koss','hromaguera@example.com','$2y$10$tTJbvdYiEx4kTlBuNRBdHuAOjmItW3aoTw0Uujy82TppX8n8EQ6L6','customers/6.jpg','1981-01-20','+16032647850',NULL,'2023-02-12 00:48:26','2023-02-12 00:48:26','2023-02-12 07:48:26',NULL,'activated',0,NULL),(9,'Prof. Nestor Marquardt I','pagac.noelia@example.net','$2y$10$TOT6mfBmIOkc9RQp5cTPyOjVSpXkkQqpZPaNxe9lrlIkLKiC4qcsi','customers/7.jpg','2003-01-26','+16302047883',NULL,'2023-02-12 00:48:26','2023-02-12 00:48:26','2023-02-12 07:48:26',NULL,'activated',0,NULL),(10,'Makenzie Hill','tillman.dylan@example.net','$2y$10$80Xthy.WBOME3JM8IQ2/M.h2x.u0hxvJR/iQajvDrKMJfZFxvjsW2','customers/8.jpg','1973-02-02','+15202339317',NULL,'2023-02-12 00:48:26','2023-02-12 00:48:26','2023-02-12 07:48:26',NULL,'activated',0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,12,64.3808,14,5),(2,24,31.7504,11,2),(3,10,204.18,14,3),(4,7,68.88,20,1),(5,23,98.9,19,1),(6,1,359.16,6,2),(6,2,219.52,17,2),(6,3,182.4,11,3),(6,4,24.4842,12,5),(6,5,18.24,13,1),(6,6,26.4,12,2),(6,7,38.13,19,1),(6,8,44.1294,13,4),(6,9,89.46,18,2),(6,10,239.04,16,3),(6,11,101.4,7,3),(6,12,92.4176,14,1),(6,13,87.12,20,3),(6,14,85.88,15,3),(6,15,61.5,13,3),(6,16,36.938,11,1),(6,17,47.88,17,4),(6,18,99,10,3),(6,19,49.53,19,3),(6,20,67.8447,17,3);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2023-02-28 00:00:00','published','2023-02-12 00:48:27','2023-02-12 00:48:27'),(2,'Flash sale 2','2023-03-12 00:00:00','published','2023-02-12 00:48:27','2023-02-12 00:48:27'),(3,'Flash sale 3','2023-03-09 00:00:00','published','2023-02-12 00:48:27','2023-02-12 00:48:27'),(4,'Flash sale 4','2023-03-25 00:00:00','published','2023-02-12 00:48:27','2023-02-12 00:48:27'),(5,'Flash sale 5','2023-03-08 00:00:00','published','2023-02-12 00:48:27','2023-02-12 00:48:27'),(6,'Daily Best Sales','2023-03-14 00:00:00','published','2023-02-12 00:48:27','2023-02-12 00:48:27');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Ưu đãi trong ngày'),('vi',2,'Khuyến mãi 2'),('vi',3,'Khuyến mãi 3'),('vi',4,'Khuyến mãi 4'),('vi',5,'Khuyến mãi 5'),('vi',6,'Bán tốt nhất hàng ngày');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(1,2,'2 Year',10,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(1,3,'3 Year',20,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(2,4,'4GB',0,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(2,5,'8GB',10,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(2,6,'16GB',20,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(3,7,'Core i5',0,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(3,8,'Core i7',10,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(3,9,'Core i9',20,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(4,10,'128GB',0,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(4,11,'256GB',10,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(4,12,'512GB',20,9999,0,'2023-02-12 00:48:35','2023-02-12 00:48:35');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` int NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-02-12 00:48:35','2023-02-12 00:48:35'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-02-12 00:48:35','2023-02-12 00:48:35');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` int unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` int NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Riley Koss','+14255887918','hromaguera@example.com','UY','District of Columbia','North Bianka','2945 Kunze Plains Suite 764',1,'50057-6818','shipping_address'),(2,'Riley Koss','+14255887918','hromaguera@example.com','UY','District of Columbia','North Bianka','2945 Kunze Plains Suite 764',2,'50057-6818','shipping_address'),(3,'Riley Koss','+14255887918','hromaguera@example.com','UY','District of Columbia','North Bianka','2945 Kunze Plains Suite 764',3,'50057-6818','shipping_address'),(4,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',4,'49978-8648','shipping_address'),(5,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',5,'49978-8648','shipping_address'),(6,'Mikayla Steuber I','+12393824673','cdooley@example.net','NC','Maryland','Lake Sylvan','90009 Thompson Cove',6,'75793','shipping_address'),(7,'Mikayla Steuber I','+12393824673','cdooley@example.net','NC','Maryland','Lake Sylvan','90009 Thompson Cove',7,'75793','shipping_address'),(8,'Prof. Patience Ritchie IV','+16413425562','customer@botble.com','TF','Wyoming','West Conner','76281 Auer Underpass',8,'87312','shipping_address'),(9,'Prof. Patience Ritchie IV','+16413425562','customer@botble.com','TF','Wyoming','West Conner','76281 Auer Underpass',9,'87312','shipping_address'),(10,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',10,'49978-8648','shipping_address'),(11,'Riley Koss','+14255887918','hromaguera@example.com','UY','District of Columbia','North Bianka','2945 Kunze Plains Suite 764',11,'50057-6818','shipping_address'),(12,'Riley Koss','+14255887918','hromaguera@example.com','UY','District of Columbia','North Bianka','2945 Kunze Plains Suite 764',12,'50057-6818','shipping_address'),(13,'Mikayla Steuber I','+12393824673','cdooley@example.net','NC','Maryland','Lake Sylvan','90009 Thompson Cove',13,'75793','shipping_address'),(14,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',14,'49978-8648','shipping_address'),(15,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',15,'49978-8648','shipping_address'),(16,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',16,'49978-8648','shipping_address'),(17,'Mikayla Steuber I','+12393824673','cdooley@example.net','NC','Maryland','Lake Sylvan','90009 Thompson Cove',17,'75793','shipping_address'),(18,'Mikayla Steuber I','+12393824673','cdooley@example.net','NC','Maryland','Lake Sylvan','90009 Thompson Cove',18,'75793','shipping_address'),(19,'Mikayla Steuber I','+12393824673','cdooley@example.net','NC','Maryland','Lake Sylvan','90009 Thompson Cove',19,'75793','shipping_address'),(20,'Mikayla Steuber I','+12393824673','cdooley@example.net','NC','Maryland','Lake Sylvan','90009 Thompson Cove',20,'75793','shipping_address'),(21,'Prof. Nestor Marquardt I','+14064643916','pagac.noelia@example.net','BQ','Arkansas','Lake Libbieview','692 Kiehn Square Apt. 331',21,'42254-5431','shipping_address'),(22,'Prof. Nestor Marquardt I','+14064643916','pagac.noelia@example.net','BQ','Arkansas','Lake Libbieview','692 Kiehn Square Apt. 331',22,'42254-5431','shipping_address'),(23,'Prof. Nestor Marquardt I','+14064643916','pagac.noelia@example.net','BQ','Arkansas','Lake Libbieview','692 Kiehn Square Apt. 331',23,'42254-5431','shipping_address'),(24,'Riley Koss','+14255887918','hromaguera@example.com','UY','District of Columbia','North Bianka','2945 Kunze Plains Suite 764',24,'50057-6818','shipping_address'),(25,'Riley Koss','+14255887918','hromaguera@example.com','UY','District of Columbia','North Bianka','2945 Kunze Plains Suite 764',25,'50057-6818','shipping_address'),(26,'Riley Koss','+14255887918','hromaguera@example.com','UY','District of Columbia','North Bianka','2945 Kunze Plains Suite 764',26,'50057-6818','shipping_address'),(27,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',27,'49978-8648','shipping_address'),(28,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',28,'49978-8648','shipping_address'),(29,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',29,'49978-8648','shipping_address'),(30,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',30,'49978-8648','shipping_address'),(31,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',31,'49978-8648','shipping_address'),(32,'Prof. Nestor Marquardt I','+14064643916','pagac.noelia@example.net','BQ','Arkansas','Lake Libbieview','692 Kiehn Square Apt. 331',32,'42254-5431','shipping_address'),(33,'Prof. Nestor Marquardt I','+14064643916','pagac.noelia@example.net','BQ','Arkansas','Lake Libbieview','692 Kiehn Square Apt. 331',33,'42254-5431','shipping_address'),(34,'Prof. Nestor Marquardt I','+14064643916','pagac.noelia@example.net','BQ','Arkansas','Lake Libbieview','692 Kiehn Square Apt. 331',34,'42254-5431','shipping_address'),(35,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',35,'49978-8648','shipping_address'),(36,'Maxie Ankunding IV','+16574074385','smarquardt@example.com','AS','Minnesota','Lake Danahaven','388 Bernier Place',36,'49978-8648','shipping_address'),(37,'Makenzie Hill','+19126375446','tillman.dylan@example.net','NR','Vermont','Willmstown','8664 Shanahan Causeway',37,'04794','shipping_address'),(38,'Makenzie Hill','+19126375446','tillman.dylan@example.net','NR','Vermont','Willmstown','8664 Shanahan Causeway',38,'04794','shipping_address'),(39,'Makenzie Hill','+19126375446','tillman.dylan@example.net','NR','Vermont','Willmstown','8664 Shanahan Causeway',39,'04794','shipping_address'),(40,'Mikayla Steuber I','+12393824673','cdooley@example.net','NC','Maryland','Lake Sylvan','90009 Thompson Cove',40,'75793','shipping_address'),(41,'Mikayla Steuber I','+12393824673','cdooley@example.net','NC','Maryland','Lake Sylvan','90009 Thompson Cove',41,'75793','shipping_address'),(42,'Mikayla Steuber I','+12393824673','cdooley@example.net','NC','Maryland','Lake Sylvan','90009 Thompson Cove',42,'75793','shipping_address'),(43,'Makenzie Hill','+19126375446','tillman.dylan@example.net','NR','Vermont','Willmstown','8664 Shanahan Causeway',43,'04794','shipping_address'),(44,'Makenzie Hill','+19126375446','tillman.dylan@example.net','NR','Vermont','Willmstown','8664 Shanahan Causeway',44,'04794','shipping_address'),(45,'Makenzie Hill','+19126375446','tillman.dylan@example.net','NR','Vermont','Willmstown','8664 Shanahan Causeway',45,'04794','shipping_address'),(46,'Prof. Patience Ritchie IV','+16413425562','customer@botble.com','TF','Wyoming','West Conner','76281 Auer Underpass',46,'87312','shipping_address'),(47,'Prof. Patience Ritchie IV','+16413425562','customer@botble.com','TF','Wyoming','West Conner','76281 Auer Underpass',47,'87312','shipping_address'),(48,'Riley Koss','+14255887918','hromaguera@example.com','UY','District of Columbia','North Bianka','2945 Kunze Plains Suite 764',48,'50057-6818','shipping_address'),(49,'Riley Koss','+14255887918','hromaguera@example.com','UY','District of Columbia','North Bianka','2945 Kunze Plains Suite 764',49,'50057-6818','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-02-05 08:48:41','2023-02-05 08:48:41'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-02-05 08:48:41','2023-02-05 08:48:41'),(3,'confirm_payment','Payment was confirmed (amount $690.00) by %user_name%',0,1,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-02-07 00:48:41','2023-02-07 00:48:41'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-02-07 00:48:41','2023-02-07 00:48:41'),(8,'confirm_payment','Payment was confirmed (amount $378.00) by %user_name%',0,2,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(9,'create_shipment','Created shipment for order',0,2,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(10,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(11,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-02-07 00:48:41','2023-02-07 00:48:41'),(12,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-02-07 00:48:41','2023-02-07 00:48:41'),(13,'confirm_payment','Payment was confirmed (amount $242.00) by %user_name%',0,3,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(14,'create_shipment','Created shipment for order',0,3,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(15,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(16,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-02-02 12:48:41','2023-02-02 12:48:41'),(17,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-02-02 12:48:41','2023-02-02 12:48:41'),(18,'create_shipment','Created shipment for order',0,4,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(19,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(20,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-02-10 10:48:41','2023-02-10 10:48:41'),(21,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-02-10 10:48:41','2023-02-10 10:48:41'),(22,'confirm_payment','Payment was confirmed (amount $115.00) by %user_name%',0,5,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(23,'create_shipment','Created shipment for order',0,5,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(24,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(25,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-02-06 00:48:41','2023-02-06 00:48:41'),(26,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-02-06 00:48:41','2023-02-06 00:48:41'),(27,'create_shipment','Created shipment for order',0,6,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(28,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(29,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-02-10 12:48:41','2023-02-10 12:48:41'),(30,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-02-10 12:48:41','2023-02-10 12:48:41'),(31,'confirm_payment','Payment was confirmed (amount $121.00) by %user_name%',0,7,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(32,'create_shipment','Created shipment for order',0,7,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(33,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-02-03 12:48:41','2023-02-03 12:48:41'),(34,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-02-03 12:48:41','2023-02-03 12:48:41'),(35,'confirm_payment','Payment was confirmed (amount $2,240.00) by %user_name%',0,8,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(36,'create_shipment','Created shipment for order',0,8,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(37,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-02-07 18:48:41','2023-02-07 18:48:41'),(39,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-02-07 18:48:41','2023-02-07 18:48:41'),(40,'confirm_payment','Payment was confirmed (amount $219.00) by %user_name%',0,9,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(41,'create_shipment','Created shipment for order',0,9,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(42,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2023-02-02 16:48:41','2023-02-02 16:48:41'),(43,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2023-02-02 16:48:41','2023-02-02 16:48:41'),(44,'confirm_payment','Payment was confirmed (amount $615.00) by %user_name%',0,10,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(45,'create_shipment','Created shipment for order',0,10,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(46,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2023-02-05 18:48:41','2023-02-05 18:48:41'),(47,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2023-02-05 18:48:41','2023-02-05 18:48:41'),(48,'confirm_payment','Payment was confirmed (amount $73.00) by %user_name%',0,11,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(49,'create_shipment','Created shipment for order',0,11,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(50,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-02-05 18:48:41','2023-02-05 18:48:41'),(52,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-02-05 18:48:41','2023-02-05 18:48:41'),(53,'confirm_payment','Payment was confirmed (amount $472.00) by %user_name%',0,12,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(54,'create_shipment','Created shipment for order',0,12,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-02-09 16:48:41','2023-02-09 16:48:41'),(56,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-02-09 16:48:41','2023-02-09 16:48:41'),(57,'create_shipment','Created shipment for order',0,13,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-02-02 06:48:41','2023-02-02 06:48:41'),(60,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-02-02 06:48:41','2023-02-02 06:48:41'),(61,'confirm_payment','Payment was confirmed (amount $1,440.00) by %user_name%',0,14,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(62,'create_shipment','Created shipment for order',0,14,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-02-05 12:48:41','2023-02-05 12:48:41'),(65,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-02-05 12:48:41','2023-02-05 12:48:41'),(66,'confirm_payment','Payment was confirmed (amount $130.00) by %user_name%',0,15,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(67,'create_shipment','Created shipment for order',0,15,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(68,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(69,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-02-01 04:48:41','2023-02-01 04:48:41'),(70,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-02-01 04:48:41','2023-02-01 04:48:41'),(71,'confirm_payment','Payment was confirmed (amount $114.00) by %user_name%',0,16,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(72,'create_shipment','Created shipment for order',0,16,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(73,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-02-07 00:48:41','2023-02-07 00:48:41'),(74,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-02-07 00:48:41','2023-02-07 00:48:41'),(75,'confirm_payment','Payment was confirmed (amount $448.00) by %user_name%',0,17,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(76,'create_shipment','Created shipment for order',0,17,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(77,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-02-09 00:48:41','2023-02-09 00:48:41'),(78,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-02-09 00:48:41','2023-02-09 00:48:41'),(79,'confirm_payment','Payment was confirmed (amount $260.00) by %user_name%',0,18,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(80,'create_shipment','Created shipment for order',0,18,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(81,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(82,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-02-08 00:48:41','2023-02-08 00:48:41'),(83,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-02-08 00:48:41','2023-02-08 00:48:41'),(84,'confirm_payment','Payment was confirmed (amount $118.00) by %user_name%',0,19,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(85,'create_shipment','Created shipment for order',0,19,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(86,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-02-09 00:48:41','2023-02-09 00:48:41'),(87,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-02-09 00:48:41','2023-02-09 00:48:41'),(88,'confirm_payment','Payment was confirmed (amount $220.00) by %user_name%',0,20,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(89,'create_shipment','Created shipment for order',0,20,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(90,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2023-02-11 02:48:41','2023-02-11 02:48:41'),(91,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2023-02-11 02:48:41','2023-02-11 02:48:41'),(92,'confirm_payment','Payment was confirmed (amount $448.00) by %user_name%',0,21,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(93,'create_shipment','Created shipment for order',0,21,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(94,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2023-02-02 20:48:41','2023-02-02 20:48:41'),(95,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2023-02-02 20:48:41','2023-02-02 20:48:41'),(96,'create_shipment','Created shipment for order',0,22,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(97,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(98,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2023-02-02 20:48:41','2023-02-02 20:48:41'),(99,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2023-02-02 20:48:41','2023-02-02 20:48:41'),(100,'confirm_payment','Payment was confirmed (amount $129.00) by %user_name%',0,23,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(101,'create_shipment','Created shipment for order',0,23,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(102,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(103,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2023-02-07 20:48:41','2023-02-07 20:48:41'),(104,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2023-02-07 20:48:41','2023-02-07 20:48:41'),(105,'create_shipment','Created shipment for order',0,24,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(106,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(107,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2023-02-09 12:48:41','2023-02-09 12:48:41'),(108,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2023-02-09 12:48:41','2023-02-09 12:48:41'),(109,'create_shipment','Created shipment for order',0,25,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(110,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2023-02-11 04:48:41','2023-02-11 04:48:41'),(111,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2023-02-11 04:48:41','2023-02-11 04:48:41'),(112,'confirm_payment','Payment was confirmed (amount $254.00) by %user_name%',0,26,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(113,'create_shipment','Created shipment for order',0,26,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(114,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(115,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2023-02-07 12:48:41','2023-02-07 12:48:41'),(116,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2023-02-07 12:48:41','2023-02-07 12:48:41'),(117,'create_shipment','Created shipment for order',0,27,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(118,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2023-02-05 06:48:41','2023-02-05 06:48:41'),(119,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2023-02-05 06:48:41','2023-02-05 06:48:41'),(120,'confirm_payment','Payment was confirmed (amount $115.00) by %user_name%',0,28,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(121,'create_shipment','Created shipment for order',0,28,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(122,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2023-02-06 00:48:41','2023-02-06 00:48:41'),(123,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2023-02-06 00:48:41','2023-02-06 00:48:41'),(124,'confirm_payment','Payment was confirmed (amount $369.00) by %user_name%',0,29,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(125,'create_shipment','Created shipment for order',0,29,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(126,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2023-02-11 08:48:41','2023-02-11 08:48:41'),(127,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2023-02-11 08:48:41','2023-02-11 08:48:41'),(128,'confirm_payment','Payment was confirmed (amount $237.00) by %user_name%',0,30,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(129,'create_shipment','Created shipment for order',0,30,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(130,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2023-02-06 00:48:41','2023-02-06 00:48:41'),(131,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2023-02-06 00:48:41','2023-02-06 00:48:41'),(132,'confirm_payment','Payment was confirmed (amount $121.00) by %user_name%',0,31,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(133,'create_shipment','Created shipment for order',0,31,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(134,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(135,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2023-02-11 10:48:41','2023-02-11 10:48:41'),(136,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2023-02-11 10:48:41','2023-02-11 10:48:41'),(137,'confirm_payment','Payment was confirmed (amount $219.00) by %user_name%',0,32,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(138,'create_shipment','Created shipment for order',0,32,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(139,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2023-02-07 08:48:41','2023-02-07 08:48:41'),(140,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2023-02-07 08:48:41','2023-02-07 08:48:41'),(141,'create_shipment','Created shipment for order',0,33,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(142,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2023-02-06 18:48:41','2023-02-06 18:48:41'),(143,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2023-02-06 18:48:41','2023-02-06 18:48:41'),(144,'confirm_payment','Payment was confirmed (amount $123.00) by %user_name%',0,34,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(145,'create_shipment','Created shipment for order',0,34,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(146,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(147,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2023-02-07 12:48:41','2023-02-07 12:48:41'),(148,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2023-02-07 12:48:41','2023-02-07 12:48:41'),(149,'create_shipment','Created shipment for order',0,35,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(150,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(151,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2023-02-11 12:48:41','2023-02-11 12:48:41'),(152,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2023-02-11 12:48:41','2023-02-11 12:48:41'),(153,'create_shipment','Created shipment for order',0,36,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(154,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(155,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2023-02-09 02:48:41','2023-02-09 02:48:41'),(156,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2023-02-09 02:48:41','2023-02-09 02:48:41'),(157,'confirm_payment','Payment was confirmed (amount $96.00) by %user_name%',0,37,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(158,'create_shipment','Created shipment for order',0,37,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2023-02-08 06:48:41','2023-02-08 06:48:41'),(160,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2023-02-08 06:48:41','2023-02-08 06:48:41'),(161,'confirm_payment','Payment was confirmed (amount $342.00) by %user_name%',0,38,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(162,'create_shipment','Created shipment for order',0,38,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(163,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(164,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2023-02-10 08:48:41','2023-02-10 08:48:41'),(165,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2023-02-10 08:48:41','2023-02-10 08:48:41'),(166,'confirm_payment','Payment was confirmed (amount $357.00) by %user_name%',0,39,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(167,'create_shipment','Created shipment for order',0,39,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(168,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2023-02-11 08:48:41','2023-02-11 08:48:41'),(169,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2023-02-11 08:48:41','2023-02-11 08:48:41'),(170,'confirm_payment','Payment was confirmed (amount $110.00) by %user_name%',0,40,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(171,'create_shipment','Created shipment for order',0,40,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(172,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(173,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2023-02-09 08:48:41','2023-02-09 08:48:41'),(174,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2023-02-09 08:48:41','2023-02-09 08:48:41'),(175,'confirm_payment','Payment was confirmed (amount $336.00) by %user_name%',0,41,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(176,'create_shipment','Created shipment for order',0,41,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(177,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2023-02-11 00:48:41','2023-02-11 00:48:41'),(178,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2023-02-11 00:48:41','2023-02-11 00:48:41'),(179,'confirm_payment','Payment was confirmed (amount $363.00) by %user_name%',0,42,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(180,'create_shipment','Created shipment for order',0,42,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(181,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(182,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2023-02-11 06:48:41','2023-02-11 06:48:41'),(183,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2023-02-11 06:48:41','2023-02-11 06:48:41'),(184,'confirm_payment','Payment was confirmed (amount $480.00) by %user_name%',0,43,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(185,'create_shipment','Created shipment for order',0,43,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(186,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2023-02-10 18:48:41','2023-02-10 18:48:41'),(187,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2023-02-10 18:48:41','2023-02-10 18:48:41'),(188,'confirm_payment','Payment was confirmed (amount $388.00) by %user_name%',0,44,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(189,'create_shipment','Created shipment for order',0,44,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(190,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2023-02-09 18:48:41','2023-02-09 18:48:41'),(191,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2023-02-09 18:48:41','2023-02-09 18:48:41'),(192,'confirm_payment','Payment was confirmed (amount $123.00) by %user_name%',0,45,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(193,'create_shipment','Created shipment for order',0,45,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(194,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2023-02-11 00:48:41','2023-02-11 00:48:41'),(195,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2023-02-11 00:48:41','2023-02-11 00:48:41'),(196,'create_shipment','Created shipment for order',0,46,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(197,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2023-02-11 00:48:42','2023-02-11 00:48:42'),(198,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2023-02-11 00:48:42','2023-02-11 00:48:42'),(199,'confirm_payment','Payment was confirmed (amount $342.00) by %user_name%',0,47,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(200,'create_shipment','Created shipment for order',0,47,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(201,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,47,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(202,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2023-02-11 04:48:42','2023-02-11 04:48:42'),(203,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2023-02-11 04:48:42','2023-02-11 04:48:42'),(204,'confirm_payment','Payment was confirmed (amount $113.00) by %user_name%',0,48,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(205,'create_shipment','Created shipment for order',0,48,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(206,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(207,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2023-02-11 16:48:42','2023-02-11 16:48:42'),(208,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2023-02-11 16:48:42','2023-02-11 16:48:42'),(209,'create_shipment','Created shipment for order',0,49,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(210,'update_status','Order confirmed by %user_name%',0,1,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(211,'update_status','Order confirmed by %user_name%',0,2,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(212,'update_status','Order confirmed by %user_name%',0,3,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(213,'update_status','Order confirmed by %user_name%',0,5,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(214,'update_status','Order confirmed by %user_name%',0,8,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(215,'update_status','Order confirmed by %user_name%',0,11,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(216,'update_status','Order confirmed by %user_name%',0,14,NULL,'2023-02-12 00:48:43','2023-02-12 00:48:43'),(217,'update_status','Order confirmed by %user_name%',0,15,NULL,'2023-02-12 00:48:43','2023-02-12 00:48:43'),(218,'update_status','Order confirmed by %user_name%',0,18,NULL,'2023-02-12 00:48:43','2023-02-12 00:48:43'),(219,'update_status','Order confirmed by %user_name%',0,23,NULL,'2023-02-12 00:48:43','2023-02-12 00:48:43'),(220,'update_status','Order confirmed by %user_name%',0,26,NULL,'2023-02-12 00:48:43','2023-02-12 00:48:43'),(221,'update_status','Order confirmed by %user_name%',0,31,NULL,'2023-02-12 00:48:43','2023-02-12 00:48:43'),(222,'update_status','Order confirmed by %user_name%',0,34,NULL,'2023-02-12 00:48:44','2023-02-12 00:48:44'),(223,'update_status','Order confirmed by %user_name%',0,38,NULL,'2023-02-12 00:48:44','2023-02-12 00:48:44'),(224,'update_status','Order confirmed by %user_name%',0,40,NULL,'2023-02-12 00:48:44','2023-02-12 00:48:44'),(225,'update_status','Order confirmed by %user_name%',0,42,NULL,'2023-02-12 00:48:44','2023-02-12 00:48:44'),(226,'update_status','Order confirmed by %user_name%',0,47,NULL,'2023-02-12 00:48:45','2023-02-12 00:48:45'),(227,'update_status','Order confirmed by %user_name%',0,48,NULL,'2023-02-12 00:48:45','2023-02-12 00:48:45');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,448.00,0.00,'[]',NULL,26,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',873.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(2,1,2,121.00,0.00,'[]',NULL,64,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',1394.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(3,2,3,126.00,0.00,'[]',NULL,44,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',1629.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(4,3,2,121.00,0.00,'[]',NULL,78,'Signature Wood-Fired Mushroom and Caramelized','products/24.jpg',1578.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(5,4,1,126.00,0.00,'[]',NULL,41,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',543.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(6,5,1,115.00,0.00,'[]',NULL,75,'Colorful Banana','products/23.jpg',730.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(7,6,3,110.00,0.00,'[]',NULL,59,'All Natural Italian-Style Chicken Meatballs','products/18-1.jpg',2532.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(8,7,1,121.00,0.00,'[]',NULL,76,'Signature Wood-Fired Mushroom and Caramelized','products/24.jpg',789.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(9,8,3,448.00,0.00,'[]',NULL,27,'All Natural Italian-Style Chicken Meatballs','products/2-1.jpg',2619.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(10,8,2,448.00,0.00,'[]',NULL,29,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',1746.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(11,9,3,73.00,0.00,'[]',NULL,33,'Foster Farms Takeout Crispy Classic','products/4.jpg',2157.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(12,10,3,123.00,0.00,'[]',NULL,53,'Oroweat Country Buttermilk Bread','products/15.jpg',1917.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(13,10,2,123.00,0.00,'[]',NULL,54,'Oroweat Country Buttermilk Bread','products/15-1.jpg',1278.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(14,11,1,73.00,0.00,'[]',NULL,31,'Foster Farms Takeout Crispy Classic','products/4.jpg',719.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(15,12,2,121.00,0.00,'[]',NULL,64,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',1394.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(16,12,2,115.00,0.00,'[]',NULL,74,'Colorful Banana','products/23.jpg',1460.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(17,13,2,448.00,0.00,'[]',NULL,29,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',1746.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(18,13,3,498.00,0.00,'[]',NULL,46,'Haagen-Dazs Caramel Cone Ice Cream','products/10-1.jpg',2106.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(19,14,3,480.00,0.00,'[]',NULL,30,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','products/3.jpg',1890.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(20,15,1,130.00,0.00,'[]',NULL,48,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',529.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(21,16,1,114.00,0.00,'[]',NULL,56,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)','products/17.jpg',572.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(22,17,1,448.00,0.00,'[]',NULL,27,'All Natural Italian-Style Chicken Meatballs','products/2-1.jpg',873.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(23,18,2,130.00,0.00,'[]',NULL,48,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',1058.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(24,19,1,118.00,0.00,'[]',NULL,49,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',683.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(25,20,2,110.00,0.00,'[]',NULL,58,'All Natural Italian-Style Chicken Meatballs','products/18.jpg',1688.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(26,21,1,448.00,0.00,'[]',NULL,28,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',873.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(27,22,3,48.00,0.00,'[]',NULL,35,'Blue Diamond Almonds Lightly (Digital)','products/5-1.jpg',1797.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(28,23,1,129.00,0.00,'[]',NULL,70,'Organic Cage-Free Grade A Large Brown Eggs','products/22-1.jpg',674.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(29,24,3,448.00,0.00,'[]',NULL,27,'All Natural Italian-Style Chicken Meatballs','products/2-1.jpg',2619.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(30,24,2,448.00,0.00,'[]',NULL,28,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',1746.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(31,25,2,73.00,0.00,'[]',NULL,31,'Foster Farms Takeout Crispy Classic','products/4.jpg',1438.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(32,26,2,127.00,0.00,'[]',NULL,62,'Simply Lemonade with Raspberry Juice','products/19-1.jpg',1350.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(33,27,3,48.00,0.00,'[]',NULL,34,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',1797.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(34,27,1,48.00,0.00,'[]',NULL,36,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',599.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(35,28,1,115.00,0.00,'[]',NULL,73,'Colorful Banana','products/23.jpg',730.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(36,29,3,123.00,0.00,'[]',NULL,54,'Oroweat Country Buttermilk Bread','products/15-1.jpg',1917.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(37,30,1,110.00,0.00,'[]',NULL,55,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16.jpg',733.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(38,30,1,127.00,0.00,'[]',NULL,61,'Simply Lemonade with Raspberry Juice','products/19.jpg',675.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(39,31,1,121.00,0.00,'[]',NULL,77,'Signature Wood-Fired Mushroom and Caramelized','products/24-1.jpg',789.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(40,32,3,73.00,0.00,'[]',NULL,32,'Foster Farms Takeout Crispy Classic','products/4-1.jpg',2157.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(41,33,3,123.00,0.00,'[]',NULL,38,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',1842.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(42,33,3,121.00,0.00,'[]',NULL,64,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',2091.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(43,34,1,123.00,0.00,'[]',NULL,53,'Oroweat Country Buttermilk Bread','products/15.jpg',639.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(44,35,1,438.00,0.00,'[]',NULL,25,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',868.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(45,35,1,126.00,0.00,'[]',NULL,44,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',543.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(46,35,3,112.00,0.00,'[]',NULL,67,'Chen Watermelon (Digital)','products/21.jpg',2121.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(47,36,3,127.00,0.00,'[]',NULL,62,'Simply Lemonade with Raspberry Juice','products/19-1.jpg',2025.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(48,37,2,48.00,0.00,'[]',NULL,36,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',1198.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(49,38,3,114.00,0.00,'[]',NULL,40,'Encore Seafoods Stuffed Alaskan','products/8.jpg',2376.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(50,39,2,121.00,0.00,'[]',NULL,63,'Perdue Simply Smart Organics Gluten Free','products/20.jpg',1394.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(51,39,1,115.00,0.00,'[]',NULL,71,'Colorful Banana','products/23.jpg',730.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(52,40,1,110.00,0.00,'[]',NULL,58,'All Natural Italian-Style Chicken Meatballs','products/18.jpg',844.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(53,41,3,112.00,0.00,'[]',NULL,67,'Chen Watermelon (Digital)','products/21.jpg',2121.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(54,42,3,121.00,0.00,'[]',NULL,77,'Signature Wood-Fired Mushroom and Caramelized','products/24-1.jpg',2367.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(55,43,1,480.00,0.00,'[]',NULL,30,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','products/3.jpg',630.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(56,44,2,73.00,0.00,'[]',NULL,31,'Foster Farms Takeout Crispy Classic','products/4.jpg',1438.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(57,44,2,121.00,0.00,'[]',NULL,78,'Signature Wood-Fired Mushroom and Caramelized','products/24.jpg',1578.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(58,45,1,123.00,0.00,'[]',NULL,39,'Canada Dry Ginger Ale – 2 L Bottle','products/7-1.jpg',614.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(59,46,3,126.00,0.00,'[]',NULL,41,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',1629.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','physical',0),(60,47,3,114.00,0.00,'[]',NULL,57,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)','products/17-1.jpg',1716.00,0,'2023-02-12 00:48:42','2023-02-12 00:48:42','physical',0),(61,48,1,113.00,0.00,'[]',NULL,52,'Organic Frozen Triple Berry Blend','products/14.jpg',541.00,0,'2023-02-12 00:48:42','2023-02-12 00:48:42','physical',0),(62,49,1,127.00,0.00,'[]',NULL,61,'Simply Lemonade with Raspberry Juice','products/19.jpg',675.00,0,'2023-02-12 00:48:42','2023-02-12 00:48:42','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` int unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` int unsigned NOT NULL COMMENT 'Order product id',
  `product_id` int unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `store_id` int unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` int unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',8,'1','default','completed',690.00,0.00,0.00,NULL,NULL,0.00,690.00,1,NULL,1,'2023-02-12 00:48:42','wzFYFPwjPiwNsPPAVAryh4Wl8QSjU',1,'2023-02-05 08:48:41','2023-02-12 00:48:42',4),(2,'#10000002',8,'1','default','completed',378.00,0.00,0.00,NULL,NULL,0.00,378.00,1,NULL,1,'2023-02-12 00:48:42','zTQksXh44IlYvGCeqMjJec77JQYRf',2,'2023-02-07 00:48:41','2023-02-12 00:48:42',2),(3,'#10000003',8,'1','default','completed',242.00,0.00,0.00,NULL,NULL,0.00,242.00,1,NULL,1,'2023-02-12 00:48:42','0H24gaBHbeq2BVrVQNj9nOAgJ0F4h',3,'2023-02-07 00:48:41','2023-02-12 00:48:42',3),(4,'#10000004',3,'1','default','completed',126.00,0.00,0.00,NULL,NULL,0.00,126.00,1,NULL,1,'2023-02-12 00:48:41','dm5giUZTYz5aBq6MaLJKIOJsArpDl',4,'2023-02-02 12:48:41','2023-02-12 00:48:41',2),(5,'#10000005',3,'1','default','completed',115.00,0.00,0.00,NULL,NULL,0.00,115.00,1,NULL,1,'2023-02-12 00:48:42','oZPoFK82DU8rbc6qnCoFEiWbhJDT4',5,'2023-02-10 10:48:41','2023-02-12 00:48:42',4),(6,'#10000006',6,'1','default','completed',330.00,0.00,0.00,NULL,NULL,0.00,330.00,1,NULL,1,'2023-02-12 00:48:41','K8rETobnTGnAHlJ3O0vaITjfpcpRV',6,'2023-02-06 00:48:41','2023-02-12 00:48:41',1),(7,'#10000007',6,'1','default','pending',121.00,0.00,0.00,NULL,NULL,0.00,121.00,1,NULL,1,NULL,'rmXsqPlL2A62vt6EGWiSguQwpdtsw',7,'2023-02-10 12:48:41','2023-02-12 00:48:41',3),(8,'#10000008',1,'1','default','completed',2240.00,0.00,0.00,NULL,NULL,0.00,2240.00,1,NULL,1,'2023-02-12 00:48:42','DvOAjwp2PwrszZUpKi8gqPEJB15LN',8,'2023-02-03 12:48:41','2023-02-12 00:48:42',4),(9,'#10000009',1,'1','default','pending',219.00,0.00,0.00,NULL,NULL,0.00,219.00,1,NULL,1,NULL,'P8kNskJSmwEuRv1wV6ixwrNK6ArkQ',9,'2023-02-07 18:48:41','2023-02-12 00:48:41',3),(10,'#10000010',3,'1','default','pending',615.00,0.00,0.00,NULL,NULL,0.00,615.00,1,NULL,1,NULL,'8xmIbvka2xMRpmhN9UYv7dT7Rh53z',10,'2023-02-02 16:48:41','2023-02-12 00:48:41',2),(11,'#10000011',8,'1','default','completed',73.00,0.00,0.00,NULL,NULL,0.00,73.00,1,NULL,1,'2023-02-12 00:48:42','9DtF0OtssYjtxoRJfCzNRBG9JoHBr',11,'2023-02-05 18:48:41','2023-02-12 00:48:42',3),(12,'#10000012',8,'1','default','pending',472.00,0.00,0.00,NULL,NULL,0.00,472.00,1,NULL,1,NULL,'v2kksRQcOgx0dkUZD83TI8CmaQMse',12,'2023-02-05 18:48:41','2023-02-12 00:48:41',4),(13,'#10000013',6,'1','default','completed',2390.00,0.00,0.00,NULL,NULL,0.00,2390.00,1,NULL,1,'2023-02-12 00:48:41','1biN6RjI5MmBeGQ3b3Z9nGL88Sa59',13,'2023-02-09 16:48:41','2023-02-12 00:48:41',4),(14,'#10000014',3,'1','default','completed',1440.00,0.00,0.00,NULL,NULL,0.00,1440.00,1,NULL,1,'2023-02-12 00:48:43','FjGNZON48qSED5hNceYSGzDX89Tzl',14,'2023-02-02 06:48:41','2023-02-12 00:48:43',1),(15,'#10000015',3,'1','default','completed',130.00,0.00,0.00,NULL,NULL,0.00,130.00,1,NULL,1,'2023-02-12 00:48:43','0teypMEPs5ZjqLNnKhSXEdPu00ysj',15,'2023-02-05 12:48:41','2023-02-12 00:48:43',3),(16,'#10000016',3,'1','default','pending',114.00,0.00,0.00,NULL,NULL,0.00,114.00,1,NULL,1,NULL,'6hcl1R64IUT5zuxhbFutYFGF1oBIs',16,'2023-02-01 04:48:41','2023-02-12 00:48:41',4),(17,'#10000017',6,'1','default','pending',448.00,0.00,0.00,NULL,NULL,0.00,448.00,1,NULL,1,NULL,'H9pQjbLWBQccVWhuzLhlYv28fsyGx',17,'2023-02-07 00:48:41','2023-02-12 00:48:41',4),(18,'#10000018',6,'1','default','completed',260.00,0.00,0.00,NULL,NULL,0.00,260.00,1,NULL,1,'2023-02-12 00:48:43','EFfplYOxbbNLPAEw2fqhQYCfvWWtm',18,'2023-02-09 00:48:41','2023-02-12 00:48:43',3),(19,'#10000019',6,'1','default','pending',118.00,0.00,0.00,NULL,NULL,0.00,118.00,1,NULL,1,NULL,'FRcfSGUlyV0cr3i87o5uZCvvbHB8z',19,'2023-02-08 00:48:41','2023-02-12 00:48:41',2),(20,'#10000020',6,'1','default','pending',220.00,0.00,0.00,NULL,NULL,0.00,220.00,1,NULL,1,NULL,'vPpcM49wZQ6vHXnAa5O2vKriC04pN',20,'2023-02-09 00:48:41','2023-02-12 00:48:41',1),(21,'#10000021',9,'1','default','pending',448.00,0.00,0.00,NULL,NULL,0.00,448.00,1,NULL,1,NULL,'84QWcktxrSTbmQ8vzfB7DuJuTd7YF',21,'2023-02-11 02:48:41','2023-02-12 00:48:41',4),(22,'#10000022',9,'1','default','completed',144.00,0.00,0.00,NULL,NULL,0.00,144.00,1,NULL,1,'2023-02-12 00:48:41','vWwW5UhlnFzrzxehwiC8cKxM3NpTO',22,'2023-02-02 20:48:41','2023-02-12 00:48:41',3),(23,'#10000023',9,'1','default','completed',129.00,0.00,0.00,NULL,NULL,0.00,129.00,1,NULL,1,'2023-02-12 00:48:43','NepU0isHMDCbc4KLE5St5nz2SSVBY',23,'2023-02-02 20:48:41','2023-02-12 00:48:43',1),(24,'#10000024',8,'1','default','completed',2240.00,0.00,0.00,NULL,NULL,0.00,2240.00,1,NULL,1,'2023-02-12 00:48:41','8GSmQOACGPeQ5G9oZaSTeTewgVAlL',24,'2023-02-07 20:48:41','2023-02-12 00:48:41',4),(25,'#10000025',8,'1','default','pending',146.00,0.00,0.00,NULL,NULL,0.00,146.00,1,NULL,1,NULL,'YRAz3VHs6EQjc5RQ4u6AhRi2qgM3C',25,'2023-02-09 12:48:41','2023-02-12 00:48:41',3),(26,'#10000026',8,'1','default','completed',254.00,0.00,0.00,NULL,NULL,0.00,254.00,1,NULL,1,'2023-02-12 00:48:43','Ge633R0amSYHBL6tPwLcU1xqQY9fM',26,'2023-02-11 04:48:41','2023-02-12 00:48:43',1),(27,'#10000027',3,'1','default','pending',192.00,0.00,0.00,NULL,NULL,0.00,192.00,1,NULL,1,NULL,'RV3Yd1hR16QnCimDsQbrffobSWwJ3',27,'2023-02-07 12:48:41','2023-02-12 00:48:41',3),(28,'#10000028',3,'1','default','pending',115.00,0.00,0.00,NULL,NULL,0.00,115.00,1,NULL,1,NULL,'tw7oxNyvjAasXTDVVMK9MUxIX72Ep',28,'2023-02-05 06:48:41','2023-02-12 00:48:41',4),(29,'#10000029',3,'1','default','pending',369.00,0.00,0.00,NULL,NULL,0.00,369.00,1,NULL,1,NULL,'eK9XzPfVh5SmjIrqJ7qpan7ytKNYd',29,'2023-02-06 00:48:41','2023-02-12 00:48:41',2),(30,'#10000030',3,'1','default','pending',237.00,0.00,0.00,NULL,NULL,0.00,237.00,1,NULL,1,NULL,'hRVizhhFyYnQ9tYMETfCJyv0P1par',30,'2023-02-11 08:48:41','2023-02-12 00:48:41',1),(31,'#10000031',3,'1','default','completed',121.00,0.00,0.00,NULL,NULL,0.00,121.00,1,NULL,1,'2023-02-12 00:48:43','RU6JadkH1liP3U6yejQrw6oUsoiE2',31,'2023-02-06 00:48:41','2023-02-12 00:48:43',3),(32,'#10000032',9,'1','default','pending',219.00,0.00,0.00,NULL,NULL,0.00,219.00,1,NULL,1,NULL,'oPgZJJRuFfdRMcoxYa73IuLs3yYwV',32,'2023-02-11 10:48:41','2023-02-12 00:48:41',3),(33,'#10000033',9,'1','default','pending',732.00,0.00,0.00,NULL,NULL,0.00,732.00,1,NULL,1,NULL,'ZMAnHb2cxmihF4989pPBCVXLSQ7Y4',33,'2023-02-07 08:48:41','2023-02-12 00:48:41',4),(34,'#10000034',9,'1','default','completed',123.00,0.00,0.00,NULL,NULL,0.00,123.00,1,NULL,1,'2023-02-12 00:48:44','IJK8pggQyWztYGZySAHbUPlZuNN45',34,'2023-02-06 18:48:41','2023-02-12 00:48:44',2),(35,'#10000035',3,'1','default','completed',900.00,0.00,0.00,NULL,NULL,0.00,900.00,1,NULL,1,'2023-02-12 00:48:41','ENkjpSMjXl8ezMXt99ilNdYAZb7gi',35,'2023-02-07 12:48:41','2023-02-12 00:48:41',2),(36,'#10000036',3,'1','default','completed',381.00,0.00,0.00,NULL,NULL,0.00,381.00,1,NULL,1,'2023-02-12 00:48:41','vY4b2EdLkCa4EUT0bqmFu90Qkpdrm',36,'2023-02-11 12:48:41','2023-02-12 00:48:41',1),(37,'#10000037',10,'1','default','pending',96.00,0.00,0.00,NULL,NULL,0.00,96.00,1,NULL,1,NULL,'woPL36H3QP6GDC7Dr6tpoyGCT9Ija',37,'2023-02-09 02:48:41','2023-02-12 00:48:41',3),(38,'#10000038',10,'1','default','completed',342.00,0.00,0.00,NULL,NULL,0.00,342.00,1,NULL,1,'2023-02-12 00:48:44','rM3CJdMOoBabU3GpTdKuRyGHGsVwt',38,'2023-02-08 06:48:41','2023-02-12 00:48:44',2),(39,'#10000039',10,'1','default','pending',357.00,0.00,0.00,NULL,NULL,0.00,357.00,1,NULL,1,NULL,'Q4bL73tp53Hu4Mzqqk95RDK7vi9EZ',39,'2023-02-10 08:48:41','2023-02-12 00:48:41',4),(40,'#10000040',6,'1','default','completed',110.00,0.00,0.00,NULL,NULL,0.00,110.00,1,NULL,1,'2023-02-12 00:48:44','G2vYtIXMYJ2c0pzYyABU6c4Bc3ZGk',40,'2023-02-11 08:48:41','2023-02-12 00:48:44',1),(41,'#10000041',6,'1','default','pending',336.00,0.00,0.00,NULL,NULL,0.00,336.00,1,NULL,1,NULL,'qTyQ6ORhHT2hOk0u6q5aICRn5GUFO',41,'2023-02-09 08:48:41','2023-02-12 00:48:41',2),(42,'#10000042',6,'1','default','completed',363.00,0.00,0.00,NULL,NULL,0.00,363.00,1,NULL,1,'2023-02-12 00:48:44','3fRCZW5gj6otHo2DmDXqAwIqUakGp',42,'2023-02-11 00:48:41','2023-02-12 00:48:44',3),(43,'#10000043',10,'1','default','pending',480.00,0.00,0.00,NULL,NULL,0.00,480.00,1,NULL,1,NULL,'3I5iTA2oEy51vtW0E88eIhttldaaI',43,'2023-02-11 06:48:41','2023-02-12 00:48:41',1),(44,'#10000044',10,'1','default','pending',388.00,0.00,0.00,NULL,NULL,0.00,388.00,1,NULL,1,NULL,'F6wNvzUmEBXFpOgj1uU6KAFoXdFl3',44,'2023-02-10 18:48:41','2023-02-12 00:48:41',3),(45,'#10000045',10,'1','default','pending',123.00,0.00,0.00,NULL,NULL,0.00,123.00,1,NULL,1,NULL,'XBBkw4WchTKeyH7ujRiLYMd4OoxC8',45,'2023-02-09 18:48:41','2023-02-12 00:48:41',4),(46,'#10000046',1,'1','default','pending',378.00,0.00,0.00,NULL,NULL,0.00,378.00,1,NULL,1,NULL,'Xc4ni9KnMEgYJhoWwshYzaYaz6f6k',46,'2023-02-11 00:48:41','2023-02-12 00:48:41',2),(47,'#10000047',1,'1','default','completed',342.00,0.00,0.00,NULL,NULL,0.00,342.00,1,NULL,1,'2023-02-12 00:48:44','Kj9mDaVXiOKGf7At0imEJ5NjYaNu9',47,'2023-02-11 00:48:42','2023-02-12 00:48:44',4),(48,'#10000048',8,'1','default','completed',113.00,0.00,0.00,NULL,NULL,0.00,113.00,1,NULL,1,'2023-02-12 00:48:45','Gw7GWxocxHiFjYdXfaD8Wxq5oXr06',48,'2023-02-11 04:48:42','2023-02-12 00:48:45',2),(49,'#10000049',8,'1','default','pending',127.00,0.00,0.00,NULL,NULL,0.00,127.00,1,NULL,1,NULL,'0s3nfS9pc4QQ9YOMBUcsG6tAumeNb',49,'2023-02-11 16:48:42','2023-02-12 00:48:42',1);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2023-02-12 00:48:17','2023-02-12 00:48:17',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2023-02-12 00:48:17','2023-02-12 00:48:17',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Cân nặng'),('vi',2,'Số hộp');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(2,1,'2KG','2kg',NULL,NULL,0,2,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(3,1,'3KG','3kg',NULL,NULL,0,3,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(4,1,'4KG','4kg',NULL,NULL,0,4,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(5,1,'5KG','5kg',NULL,NULL,0,5,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(6,2,'1 Box','1box',NULL,NULL,1,1,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(7,2,'2 Boxes','2boxes',NULL,NULL,0,2,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(8,2,'3 Boxes','3boxes',NULL,NULL,0,3,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(9,2,'4 Boxes','4boxes',NULL,NULL,0,4,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(10,2,'5 Boxes','5boxes',NULL,NULL,0,5,'published','2023-02-12 00:48:17','2023-02-12 00:48:17');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'1KG'),('vi',2,'2KG'),('vi',3,'3KG'),('vi',4,'4KG'),('vi',5,'5KG'),('vi',6,'1 Hộp'),('vi',7,'2 Hộp'),('vi',8,'3 Hộp'),('vi',9,'4 Hộp'),('vi',10,'5 Hộp');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2023-02-12 00:48:17','2023-02-12 00:48:17'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2023-02-12 00:48:17','2023-02-12 00:48:17');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Sữa',NULL),('vi',2,'Quần áo và làm đẹp',NULL),('vi',3,'Đồ chơi thú cưng',NULL),('vi',4,'Nguyên liệu làm bánh',NULL),('vi',5,'Trái cây tươi',NULL),('vi',6,'Rượu & Đồ uống',NULL),('vi',7,'Hải sản tươi sống',NULL),('vi',8,'Đồ ăn nhanh',NULL),('vi',9,'Rau',NULL),('vi',10,'Bánh và đồ uống',NULL),('vi',11,'Bánh và sữa',NULL),('vi',12,'Cà phê và trà',NULL),('vi',13,'Đồ ăn thú nuôi',NULL),('vi',14,'Đồ ăn kiêng',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,7,1),(2,14,2),(3,1,3),(4,6,4),(5,3,5),(6,2,6),(7,8,7),(8,8,8),(9,11,9),(10,2,10),(11,6,11),(12,2,12),(13,14,13),(14,2,14),(15,13,15),(16,13,16),(17,11,17),(18,6,18),(19,7,19),(20,13,20),(21,11,21),(22,12,22),(23,6,23),(24,6,24);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,3,2),(3,1,3),(4,3,4),(5,1,5),(6,3,6),(7,3,7),(8,2,8),(9,1,9),(10,2,10),(11,2,11),(12,1,12),(13,1,13),(14,1,14),(15,2,15),(16,3,16),(17,1,17),(18,1,18),(19,3,19),(20,1,20),(21,1,21),(22,3,22),(23,2,23),(24,3,24);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-02-12 00:48:17','2023-02-12 00:48:17',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-02-12 00:48:17','2023-02-12 00:48:17',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-02-12 00:48:17','2023-02-12 00:48:17',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,23),(2,1,14),(3,1,19),(4,1,12),(5,2,20),(6,2,6),(7,2,18),(8,2,21),(9,3,8),(10,3,11),(11,3,2),(12,3,10),(13,4,10),(14,4,7),(15,4,2),(16,4,11),(17,5,1),(18,5,15),(19,5,4),(20,5,3),(21,6,18),(22,6,8),(23,6,14),(24,7,9),(25,7,13),(26,7,4),(27,8,22),(28,8,7),(29,8,23),(30,9,22),(31,9,23),(32,9,14),(33,9,5),(34,10,20),(35,10,1),(36,10,17),(37,11,22),(38,11,6),(39,11,8),(40,11,15),(41,12,4),(42,12,9),(43,12,6),(44,12,18),(45,13,17),(46,13,3),(47,13,16),(48,14,10),(49,14,22),(50,14,1),(51,14,15),(52,15,17),(53,15,8),(54,15,4),(55,16,14),(56,16,24),(57,17,21),(58,17,1),(59,17,3),(60,17,4),(61,18,24),(62,18,5),(63,18,1),(64,18,12),(65,19,10),(66,19,18),(67,19,24),(68,19,3),(69,20,15),(70,20,7),(71,20,2),(72,20,21),(73,21,20),(74,21,17),(75,21,6),(76,21,22),(77,22,11),(78,22,4),(79,22,23),(80,23,22),(81,23,13),(82,23,4),(83,23,14),(84,24,3),(85,24,2),(86,24,6),(87,24,12);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(2,25,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(3,34,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(4,34,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(5,35,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(6,35,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(7,36,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(8,36,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(9,41,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(10,41,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(11,42,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(12,42,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(13,43,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(14,43,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(15,44,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(16,44,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(17,51,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(18,51,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(19,56,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(20,56,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(21,57,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(22,57,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(23,65,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(24,65,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(25,66,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(26,66,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(27,67,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(28,67,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(29,68,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24'),(30,68,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-02-12 07:48:24\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-02-12 00:48:24','2023-02-12 00:48:24');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,7),(2,21),(3,14);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(2,'New','#00c9a7','published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(3,'Sale','#fe9931','published','2023-02-12 00:48:17','2023-02-12 00:48:17');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,5),(1,6),(2,1),(2,3),(2,5),(3,1),(3,4),(3,6),(4,3),(4,4),(4,5),(5,3),(5,5),(6,1),(6,2),(7,4),(7,6),(8,1),(8,2),(8,3),(9,1),(9,3),(9,4),(10,2),(10,3),(10,5),(11,2),(11,3),(11,6),(12,3),(12,4),(12,5),(13,1),(13,4),(14,1),(14,3),(14,6),(15,5),(15,6),(16,1),(16,4),(17,1),(17,2),(17,6),(18,4),(18,5),(18,6),(19,3),(19,4),(19,6),(20,2),(20,3),(20,6),(21,2),(21,3),(21,5),(22,4),(22,6),(23,3),(23,5),(24,3),(24,4),(24,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(2,'Bags',NULL,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(3,'Shoes',NULL,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(4,'Clothes',NULL,'published','2023-02-12 00:48:17','2023-02-12 00:48:17'),(5,'Hand bag',NULL,'published','2023-02-12 00:48:17','2023-02-12 00:48:17');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (7,1,4),(31,1,16),(41,1,21),(43,1,22),(55,1,28),(75,1,38),(81,1,41),(99,1,50),(107,1,54),(15,2,8),(27,2,14),(29,2,15),(33,2,17),(57,2,29),(65,2,33),(71,2,36),(77,2,39),(79,2,40),(85,2,43),(91,2,46),(95,2,48),(97,2,49),(101,2,51),(103,2,52),(105,2,53),(3,3,2),(39,3,20),(63,3,32),(69,3,35),(73,3,37),(83,3,42),(87,3,44),(89,3,45),(1,4,1),(9,4,5),(13,4,7),(21,4,11),(23,4,12),(35,4,18),(53,4,27),(59,4,30),(67,4,34),(93,4,47),(5,5,3),(11,5,6),(17,5,9),(19,5,10),(25,5,13),(37,5,19),(45,5,23),(47,5,24),(49,5,25),(51,5,26),(61,5,31),(12,6,6),(16,6,8),(18,6,9),(26,6,13),(44,6,22),(46,6,23),(50,6,25),(64,6,32),(66,6,33),(78,6,39),(82,6,41),(84,6,42),(86,6,43),(98,6,49),(14,7,7),(20,7,10),(22,7,11),(54,7,27),(58,7,29),(76,7,38),(80,7,40),(24,8,12),(40,8,20),(70,8,35),(74,8,37),(90,8,45),(96,8,48),(102,8,51),(2,9,1),(4,9,2),(6,9,3),(8,9,4),(28,9,14),(30,9,15),(34,9,17),(42,9,21),(56,9,28),(60,9,30),(62,9,31),(72,9,36),(94,9,47),(100,9,50),(108,9,54),(10,10,5),(32,10,16),(36,10,18),(38,10,19),(48,10,24),(52,10,26),(68,10,34),(88,10,44),(92,10,46),(104,10,52),(106,10,53);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,2,1),(3,27,2,0),(4,28,2,0),(5,29,2,0),(6,30,3,1),(7,31,4,1),(8,32,4,0),(9,33,4,0),(10,34,5,1),(11,35,5,0),(12,36,5,0),(13,37,6,1),(14,38,7,1),(15,39,7,0),(16,40,8,1),(17,41,9,1),(18,42,9,0),(19,43,9,0),(20,44,9,0),(21,45,10,1),(22,46,10,0),(23,47,10,0),(24,48,11,1),(25,49,12,1),(26,50,12,0),(27,51,13,1),(28,52,14,1),(29,53,15,1),(30,54,15,0),(31,55,16,1),(32,56,17,1),(33,57,17,0),(34,58,18,1),(35,59,18,0),(36,60,18,0),(37,61,19,1),(38,62,19,0),(39,63,20,1),(40,64,20,0),(41,65,21,1),(42,66,21,0),(43,67,21,0),(44,68,21,0),(45,69,22,1),(46,70,22,0),(47,71,23,1),(48,72,23,0),(49,73,23,0),(50,74,23,0),(51,75,23,0),(52,76,24,1),(53,77,24,0),(54,78,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-02-12',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0),(47,1,24,0),(48,2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  `approved_by` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_products_barcode_unique` (`barcode`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-156-A0',0,10,0,1,1,1,0,0,438,NULL,NULL,NULL,16.00,16.00,14.00,868.00,NULL,78942,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-173-A0',0,16,0,1,1,3,0,0,448,NULL,NULL,NULL,18.00,16.00,17.00,873.00,NULL,12194,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(3,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-128-A0',0,13,0,1,1,2,0,0,480,NULL,NULL,NULL,16.00,10.00,20.00,630.00,NULL,87487,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-130-A0',0,16,0,1,1,6,0,0,73,56.94,NULL,NULL,19.00,10.00,16.00,719.00,NULL,145973,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(5,'Blue Diamond Almonds Lightly (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-136-A0',0,12,0,1,1,4,0,0,48,NULL,NULL,NULL,15.00,10.00,20.00,599.00,NULL,76808,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,3,0),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-147-A0',0,19,0,1,1,7,0,0,60,NULL,NULL,NULL,14.00,13.00,13.00,859.00,NULL,73214,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-181-A0',0,18,0,1,1,3,0,0,123,NULL,NULL,NULL,19.00,13.00,15.00,614.00,NULL,192925,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-176-A0',0,10,0,1,1,5,0,0,114,90.06,NULL,NULL,19.00,15.00,19.00,792.00,NULL,16005,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(9,'Gorton’s Beer Battered Fish Fillets (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-152-A0',0,11,0,1,1,2,0,0,126,NULL,NULL,NULL,18.00,10.00,19.00,543.00,NULL,192856,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-179-A0',0,18,0,1,1,3,0,0,498,NULL,NULL,NULL,20.00,17.00,12.00,702.00,NULL,17693,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-199-A0',0,18,0,1,1,1,0,0,130,NULL,NULL,NULL,18.00,18.00,14.00,529.00,NULL,157072,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-116-A0',0,12,0,1,1,7,0,0,118,103.84,NULL,NULL,13.00,18.00,18.00,683.00,NULL,128098,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(13,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-140-A0',0,19,0,1,1,1,0,0,121,NULL,NULL,NULL,11.00,19.00,18.00,513.00,NULL,2418,'2023-02-12 00:48:23','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,3,0),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-191-A0',0,16,0,1,1,2,0,0,113,NULL,NULL,NULL,17.00,17.00,12.00,541.00,NULL,12298,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-183-A0',0,18,0,1,1,6,0,0,123,NULL,NULL,NULL,12.00,17.00,11.00,639.00,NULL,29911,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-119-A0',0,11,0,1,1,4,0,0,110,80.3,NULL,NULL,19.00,19.00,18.00,733.00,NULL,138641,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(17,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-137-A0',0,17,0,1,1,7,0,0,114,NULL,NULL,NULL,12.00,13.00,18.00,572.00,NULL,193103,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,4,0),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-178-A0',0,19,0,1,1,2,0,0,110,NULL,NULL,NULL,17.00,15.00,14.00,844.00,NULL,72879,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-162-A0',0,12,0,1,1,3,0,0,127,NULL,NULL,NULL,13.00,16.00,20.00,675.00,NULL,100000,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-110-A0',0,11,0,1,1,2,0,0,121,107.69,NULL,NULL,13.00,12.00,11.00,697.00,NULL,168644,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(21,'Chen Watermelon (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-141-A0',0,10,0,1,1,2,0,0,112,NULL,NULL,NULL,16.00,14.00,15.00,707.00,NULL,143877,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-169-A0',0,13,0,1,1,4,0,0,129,NULL,NULL,NULL,14.00,16.00,16.00,674.00,NULL,60394,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-153-A0',0,19,0,1,1,2,0,0,115,NULL,NULL,NULL,17.00,11.00,11.00,730.00,NULL,82721,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-141-A0',0,11,0,1,1,4,0,0,121,99.22,NULL,NULL,16.00,11.00,13.00,789.00,NULL,147412,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(25,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-156-A0',0,10,0,1,0,1,1,0,438,NULL,NULL,NULL,16.00,16.00,14.00,868.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(26,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-173-A0',0,16,0,1,0,3,1,0,448,NULL,NULL,NULL,18.00,16.00,17.00,873.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(27,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-173-A0-A1',0,16,0,1,0,3,1,0,448,NULL,NULL,NULL,18.00,16.00,17.00,873.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(28,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-173-A0-A2',0,16,0,1,0,3,1,0,448,NULL,NULL,NULL,18.00,16.00,17.00,873.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(29,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-173-A0-A3',0,16,0,1,0,3,1,0,448,NULL,NULL,NULL,18.00,16.00,17.00,873.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(30,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-128-A0',0,13,0,1,0,2,1,0,480,NULL,NULL,NULL,16.00,10.00,20.00,630.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(31,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-130-A0',0,16,0,1,0,6,1,0,73,56.94,NULL,NULL,19.00,10.00,16.00,719.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(32,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-130-A0-A1',0,16,0,1,0,6,1,0,73,64.24,NULL,NULL,19.00,10.00,16.00,719.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(33,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-130-A0-A2',0,16,0,1,0,6,1,0,73,51.83,NULL,NULL,19.00,10.00,16.00,719.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(34,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-136-A0',0,12,0,1,0,4,1,0,48,NULL,NULL,NULL,15.00,10.00,20.00,599.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(35,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-136-A0-A1',0,12,0,1,0,4,1,0,48,NULL,NULL,NULL,15.00,10.00,20.00,599.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(36,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-136-A0-A2',0,12,0,1,0,4,1,0,48,NULL,NULL,NULL,15.00,10.00,20.00,599.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(37,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-147-A0',0,19,0,1,0,7,1,0,60,NULL,NULL,NULL,14.00,13.00,13.00,859.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(38,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-181-A0',0,18,0,1,0,3,1,0,123,NULL,NULL,NULL,19.00,13.00,15.00,614.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(39,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-181-A0-A1',0,18,0,1,0,3,1,0,123,NULL,NULL,NULL,19.00,13.00,15.00,614.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(40,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-176-A0',0,10,0,1,0,5,1,0,114,90.06,NULL,NULL,19.00,15.00,19.00,792.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(41,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-152-A0',0,11,0,1,0,2,1,0,126,NULL,NULL,NULL,18.00,10.00,19.00,543.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(42,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-152-A0-A1',0,11,0,1,0,2,1,0,126,NULL,NULL,NULL,18.00,10.00,19.00,543.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(43,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-152-A0-A2',0,11,0,1,0,2,1,0,126,NULL,NULL,NULL,18.00,10.00,19.00,543.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(44,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-152-A0-A3',0,11,0,1,0,2,1,0,126,NULL,NULL,NULL,18.00,10.00,19.00,543.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(45,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-179-A0',0,18,0,1,0,3,1,0,498,NULL,NULL,NULL,20.00,17.00,12.00,702.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(46,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-179-A0-A1',0,18,0,1,0,3,1,0,498,NULL,NULL,NULL,20.00,17.00,12.00,702.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(47,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-179-A0-A2',0,18,0,1,0,3,1,0,498,NULL,NULL,NULL,20.00,17.00,12.00,702.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(48,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-199-A0',0,18,0,1,0,1,1,0,130,NULL,NULL,NULL,18.00,18.00,14.00,529.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(49,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-116-A0',0,12,0,1,0,7,1,0,118,103.84,NULL,NULL,13.00,18.00,18.00,683.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(50,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-116-A0-A1',0,12,0,1,0,7,1,0,118,97.94,NULL,NULL,13.00,18.00,18.00,683.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(51,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-140-A0',0,19,0,1,0,1,1,0,121,NULL,NULL,NULL,11.00,19.00,18.00,513.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(52,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-191-A0',0,16,0,1,0,2,1,0,113,NULL,NULL,NULL,17.00,17.00,12.00,541.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(53,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-183-A0',0,18,0,1,0,6,1,0,123,NULL,NULL,NULL,12.00,17.00,11.00,639.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(54,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-183-A0-A1',0,18,0,1,0,6,1,0,123,NULL,NULL,NULL,12.00,17.00,11.00,639.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(55,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-119-A0',0,11,0,1,0,4,1,0,110,80.3,NULL,NULL,19.00,19.00,18.00,733.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(56,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-137-A0',0,17,0,1,0,7,1,0,114,NULL,NULL,NULL,12.00,13.00,18.00,572.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(57,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-137-A0-A1',0,17,0,1,0,7,1,0,114,NULL,NULL,NULL,12.00,13.00,18.00,572.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(58,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-178-A0',0,19,0,1,0,2,1,0,110,NULL,NULL,NULL,17.00,15.00,14.00,844.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(59,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-178-A0-A1',0,19,0,1,0,2,1,0,110,NULL,NULL,NULL,17.00,15.00,14.00,844.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(60,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-178-A0-A2',0,19,0,1,0,2,1,0,110,NULL,NULL,NULL,17.00,15.00,14.00,844.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(61,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-162-A0',0,12,0,1,0,3,1,0,127,NULL,NULL,NULL,13.00,16.00,20.00,675.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(62,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-162-A0-A1',0,12,0,1,0,3,1,0,127,NULL,NULL,NULL,13.00,16.00,20.00,675.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(63,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-110-A0',0,11,0,1,0,2,1,0,121,107.69,NULL,NULL,13.00,12.00,11.00,697.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(64,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-110-A0-A1',0,11,0,1,0,2,1,0,121,91.96,NULL,NULL,13.00,12.00,11.00,697.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(65,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-141-A0',0,10,0,1,0,2,1,0,112,NULL,NULL,NULL,16.00,14.00,15.00,707.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(66,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-141-A0-A1',0,10,0,1,0,2,1,0,112,NULL,NULL,NULL,16.00,14.00,15.00,707.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(67,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-141-A0-A2',0,10,0,1,0,2,1,0,112,NULL,NULL,NULL,16.00,14.00,15.00,707.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(68,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-141-A0-A3',0,10,0,1,0,2,1,0,112,NULL,NULL,NULL,16.00,14.00,15.00,707.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(69,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-169-A0',0,13,0,1,0,4,1,0,129,NULL,NULL,NULL,14.00,16.00,16.00,674.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(70,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-169-A0-A1',0,13,0,1,0,4,1,0,129,NULL,NULL,NULL,14.00,16.00,16.00,674.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(71,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-153-A0',0,19,0,1,0,2,1,0,115,NULL,NULL,NULL,17.00,11.00,11.00,730.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(72,'Colorful Banana',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-153-A0-A1',0,19,0,1,0,2,1,0,115,NULL,NULL,NULL,17.00,11.00,11.00,730.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(73,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-153-A0-A2',0,19,0,1,0,2,1,0,115,NULL,NULL,NULL,17.00,11.00,11.00,730.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(74,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-153-A0-A3',0,19,0,1,0,2,1,0,115,NULL,NULL,NULL,17.00,11.00,11.00,730.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(75,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-153-A0-A4',0,19,0,1,0,2,1,0,115,NULL,NULL,NULL,17.00,11.00,11.00,730.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(76,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-141-A0',0,11,0,1,0,4,1,0,121,99.22,NULL,NULL,16.00,11.00,13.00,789.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(77,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-141-A0-A1',0,11,0,1,0,4,1,0,121,100.43,NULL,NULL,16.00,11.00,13.00,789.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(78,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-141-A0-A2',0,11,0,1,0,4,1,0,121,94.38,NULL,NULL,16.00,11.00,13.00,789.00,NULL,0,'2023-02-12 00:48:24','2023-02-12 00:48:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',2,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',3,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',4,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',5,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',6,'Chobani vani Hy Lạp',NULL,NULL),('vi',7,'Gừng khô Canada',NULL,NULL),('vi',8,'Hải sản Alaska',NULL,NULL),('vi',9,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',10,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',11,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',12,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',13,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',14,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',15,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',16,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',17,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',18,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',19,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',20,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',21,'Dưa hấu chen',NULL,NULL),('vi',22,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',23,'Chuối đầy màu sắc',NULL,NULL),('vi',24,'Nấm đặc trưng và caramel',NULL,NULL),('vi',25,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',26,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',27,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',28,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',29,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',30,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',31,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',32,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',33,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',34,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',35,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',36,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',37,'Chobani vani Hy Lạp',NULL,NULL),('vi',38,'Gừng khô Canada',NULL,NULL),('vi',39,'Gừng khô Canada',NULL,NULL),('vi',40,'Hải sản Alaska',NULL,NULL),('vi',41,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',42,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',43,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',44,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',45,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',46,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',47,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',48,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',49,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',50,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',51,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',52,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',53,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',54,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',55,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',56,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',57,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',58,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',59,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',60,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',61,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',62,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',63,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',64,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',65,'Dưa hấu chen',NULL,NULL),('vi',66,'Dưa hấu chen',NULL,NULL),('vi',67,'Dưa hấu chen',NULL,NULL),('vi',68,'Dưa hấu chen',NULL,NULL),('vi',69,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',70,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',71,'Chuối đầy màu sắc',NULL,NULL),('vi',72,'Chuối đầy màu sắc',NULL,NULL),('vi',73,'Chuối đầy màu sắc',NULL,NULL),('vi',74,'Chuối đầy màu sắc',NULL,NULL),('vi',75,'Chuối đầy màu sắc',NULL,NULL),('vi',76,'Nấm đặc trưng và caramel',NULL,NULL),('vi',77,'Nấm đặc trưng và caramel',NULL,NULL),('vi',78,'Nấm đặc trưng và caramel',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,5,15,1.00,'Clean & perfect source code','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/8.jpg\"}'),(2,4,24,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(3,7,12,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/17.jpg\"}'),(4,5,8,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\"]'),(5,10,14,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(6,1,20,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(7,6,15,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/23.jpg\"]'),(8,4,6,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\"]'),(9,7,22,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(10,6,24,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\"]'),(11,7,13,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(12,8,12,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\"]'),(13,10,2,3.00,'Clean & perfect source code','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(14,7,17,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/12.jpg\"]'),(15,2,16,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/24.jpg\"}'),(16,4,5,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(17,1,4,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(18,6,16,5.00,'Good app, good backup service and support. Good documentation.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(19,2,16,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(20,2,6,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(21,5,9,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(22,10,12,1.00,'Clean & perfect source code','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\"]'),(23,5,17,4.00,'Clean & perfect source code','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(24,7,11,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/20.jpg\"]'),(25,6,9,1.00,'Best ecommerce CMS online store!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(26,6,22,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(27,3,12,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(28,4,9,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\"]'),(29,3,8,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\"]'),(30,10,17,4.00,'Good app, good backup service and support. Good documentation.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(31,2,23,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/15.jpg\"}'),(32,2,22,5.00,'Clean & perfect source code','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/10.jpg\"]'),(33,9,17,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(34,3,22,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/19.jpg\"}'),(35,7,11,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(36,3,2,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/15.jpg\"}'),(37,3,21,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(38,6,7,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\"]'),(39,2,9,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(40,2,10,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\"]'),(41,1,12,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(42,4,20,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/10.jpg\"]'),(43,9,11,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\"]'),(44,8,17,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\"]'),(45,7,4,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(46,9,6,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\"]'),(47,6,6,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),(48,4,18,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/24.jpg\"]'),(49,8,8,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(50,10,21,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\"]'),(51,7,13,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(52,3,19,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(53,6,1,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(54,9,12,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/10.jpg\"}'),(55,8,14,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/19.jpg\"}'),(56,6,4,1.00,'Clean & perfect source code','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/15.jpg\"}'),(57,9,18,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(58,3,1,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/24.jpg\"]'),(59,6,20,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\"]'),(60,4,5,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\"]'),(61,9,4,1.00,'Clean & perfect source code','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(62,1,6,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(63,1,1,3.00,'Clean & perfect source code','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(64,8,9,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(65,6,19,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\"]'),(66,2,1,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/24.jpg\"]'),(67,5,8,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/21.jpg\"}'),(68,1,15,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(69,8,24,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(70,5,17,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(71,10,18,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(72,8,14,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),(73,4,13,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(74,1,10,2.00,'Best ecommerce CMS online store!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(75,9,23,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(76,2,6,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(77,3,10,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(78,6,1,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\"]'),(79,8,7,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(80,6,11,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\"]'),(81,9,16,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/12.jpg\"]'),(82,8,20,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\"]'),(83,3,7,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(84,5,23,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(85,7,12,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\"]'),(86,5,12,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/11.jpg\"]'),(87,1,18,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(88,7,5,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/23.jpg\"]'),(89,2,4,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(90,1,14,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/17.jpg\"}'),(91,9,10,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(92,5,17,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/19.jpg\"}'),(93,3,13,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(94,2,9,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(95,4,24,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(96,9,1,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(97,3,21,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(98,3,3,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/2.jpg\"]'),(99,7,19,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(100,2,20,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-02-12 00:48:26','2023-02-12 00:48:26','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/11.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2023-02-05 08:48:41','2023-02-05 08:48:41'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-02-10 08:48:41','2023-02-12 00:48:41'),(3,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2023-02-07 00:48:41','2023-02-07 00:48:41'),(5,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-02-10 08:48:41','2023-02-12 00:48:41'),(6,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(7,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2023-02-07 00:48:41','2023-02-07 00:48:41'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-02-10 08:48:41','2023-02-12 00:48:41'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(10,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2023-02-02 12:48:41','2023-02-02 12:48:41'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-02-10 10:48:41','2023-02-12 00:48:41'),(12,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(13,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2023-02-10 10:48:41','2023-02-10 10:48:41'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-02-10 10:48:41','2023-02-12 00:48:41'),(15,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(16,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2023-02-06 00:48:41','2023-02-06 00:48:41'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-02-10 12:48:41','2023-02-12 00:48:41'),(18,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(19,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2023-02-10 12:48:41','2023-02-10 12:48:41'),(20,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-02-10 12:48:41','2023-02-12 00:48:41'),(21,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2023-02-03 12:48:41','2023-02-03 12:48:41'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2023-02-10 14:48:41','2023-02-12 00:48:41'),(23,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,8,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(24,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2023-02-07 18:48:41','2023-02-07 18:48:41'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2023-02-10 14:48:41','2023-02-12 00:48:41'),(26,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2023-02-02 16:48:41','2023-02-02 16:48:41'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2023-02-10 16:48:41','2023-02-12 00:48:41'),(28,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2023-02-05 18:48:41','2023-02-05 18:48:41'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2023-02-10 18:48:41','2023-02-12 00:48:41'),(30,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,11,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(31,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2023-02-05 18:48:41','2023-02-05 18:48:41'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2023-02-10 18:48:41','2023-02-12 00:48:41'),(33,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2023-02-09 16:48:41','2023-02-09 16:48:41'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2023-02-10 20:48:41','2023-02-12 00:48:41'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(36,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2023-02-02 06:48:41','2023-02-02 06:48:41'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2023-02-10 22:48:41','2023-02-12 00:48:41'),(38,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,14,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(39,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2023-02-05 12:48:41','2023-02-05 12:48:41'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2023-02-10 22:48:41','2023-02-12 00:48:41'),(41,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(42,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2023-02-01 04:48:41','2023-02-01 04:48:41'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2023-02-10 22:48:41','2023-02-12 00:48:41'),(44,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2023-02-07 00:48:41','2023-02-07 00:48:41'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2023-02-11 00:48:41','2023-02-12 00:48:41'),(46,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2023-02-09 00:48:41','2023-02-09 00:48:41'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2023-02-11 00:48:41','2023-02-12 00:48:41'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,18,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(49,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2023-02-08 00:48:41','2023-02-08 00:48:41'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2023-02-11 00:48:41','2023-02-12 00:48:41'),(51,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2023-02-09 00:48:41','2023-02-09 00:48:41'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2023-02-11 00:48:41','2023-02-12 00:48:41'),(53,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2023-02-11 02:48:41','2023-02-11 02:48:41'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2023-02-11 02:48:41','2023-02-12 00:48:41'),(55,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2023-02-02 20:48:41','2023-02-02 20:48:41'),(56,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2023-02-11 02:48:41','2023-02-12 00:48:41'),(57,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,22,22,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,22,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(59,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2023-02-02 20:48:41','2023-02-02 20:48:41'),(60,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2023-02-11 02:48:41','2023-02-12 00:48:41'),(61,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,23,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(62,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2023-02-07 20:48:41','2023-02-07 20:48:41'),(63,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2023-02-11 04:48:41','2023-02-12 00:48:41'),(64,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,24,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(65,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2023-02-09 12:48:41','2023-02-09 12:48:41'),(66,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2023-02-11 04:48:41','2023-02-12 00:48:41'),(67,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2023-02-11 04:48:41','2023-02-11 04:48:41'),(68,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2023-02-11 04:48:41','2023-02-12 00:48:41'),(69,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,26,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(70,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2023-02-07 12:48:41','2023-02-07 12:48:41'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2023-02-11 06:48:41','2023-02-12 00:48:41'),(72,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2023-02-05 06:48:41','2023-02-05 06:48:41'),(73,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2023-02-11 06:48:41','2023-02-12 00:48:41'),(74,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2023-02-06 00:48:41','2023-02-06 00:48:41'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2023-02-11 08:48:41','2023-02-12 00:48:41'),(76,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2023-02-11 08:48:41','2023-02-11 08:48:41'),(77,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2023-02-11 08:48:41','2023-02-12 00:48:41'),(78,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2023-02-06 00:48:41','2023-02-06 00:48:41'),(79,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2023-02-11 08:48:41','2023-02-12 00:48:41'),(80,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,31,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(81,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2023-02-11 10:48:41','2023-02-11 10:48:41'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2023-02-11 10:48:41','2023-02-12 00:48:41'),(83,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2023-02-07 08:48:41','2023-02-07 08:48:41'),(84,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2023-02-11 10:48:41','2023-02-12 00:48:41'),(85,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2023-02-06 18:48:41','2023-02-06 18:48:41'),(86,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2023-02-11 10:48:41','2023-02-12 00:48:41'),(87,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,34,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(88,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2023-02-07 12:48:41','2023-02-07 12:48:41'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2023-02-11 12:48:41','2023-02-12 00:48:41'),(90,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,35,35,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(91,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,35,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(92,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2023-02-11 12:48:41','2023-02-11 12:48:41'),(93,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2023-02-11 12:48:41','2023-02-12 00:48:41'),(94,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,36,36,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(95,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,36,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(96,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2023-02-09 02:48:41','2023-02-09 02:48:41'),(97,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2023-02-11 14:48:41','2023-02-12 00:48:41'),(98,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2023-02-08 06:48:41','2023-02-08 06:48:41'),(99,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2023-02-11 14:48:41','2023-02-12 00:48:41'),(100,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,38,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(101,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2023-02-10 08:48:41','2023-02-10 08:48:41'),(102,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2023-02-11 14:48:41','2023-02-12 00:48:41'),(103,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2023-02-11 08:48:41','2023-02-11 08:48:41'),(104,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2023-02-11 16:48:41','2023-02-12 00:48:41'),(105,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,40,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(106,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2023-02-09 08:48:41','2023-02-09 08:48:41'),(107,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2023-02-11 16:48:41','2023-02-12 00:48:41'),(108,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2023-02-11 00:48:41','2023-02-11 00:48:41'),(109,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2023-02-11 16:48:41','2023-02-12 00:48:41'),(110,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,42,'2023-02-12 00:48:41','2023-02-12 00:48:41'),(111,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2023-02-11 06:48:41','2023-02-11 06:48:41'),(112,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,43,'2023-02-11 18:48:41','2023-02-12 00:48:41'),(113,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2023-02-10 18:48:41','2023-02-10 18:48:41'),(114,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,44,44,'2023-02-11 18:48:41','2023-02-12 00:48:41'),(115,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2023-02-09 18:48:41','2023-02-09 18:48:41'),(116,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,45,45,'2023-02-11 18:48:41','2023-02-12 00:48:41'),(117,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2023-02-11 00:48:41','2023-02-11 00:48:41'),(118,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,46,46,'2023-02-11 20:48:41','2023-02-12 00:48:41'),(119,'create_from_order','Shipping was created from order %order_id%',0,47,47,'2023-02-11 00:48:42','2023-02-11 00:48:42'),(120,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,47,47,'2023-02-11 20:48:42','2023-02-12 00:48:42'),(121,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,47,47,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(122,'create_from_order','Shipping was created from order %order_id%',0,48,48,'2023-02-11 04:48:42','2023-02-11 04:48:42'),(123,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,48,48,'2023-02-11 22:48:42','2023-02-12 00:48:42'),(124,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,48,'2023-02-12 00:48:42','2023-02-12 00:48:42'),(125,'create_from_order','Shipping was created from order %order_id%',0,49,49,'2023-02-11 16:48:42','2023-02-11 16:48:42'),(126,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,49,49,'2023-02-11 22:48:42','2023-02-12 00:48:42');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,2267.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0023244475','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-15 07:48:41','2023-02-12 07:48:41',NULL,NULL),(2,2,NULL,1629.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0047947035','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-18 07:48:41','2023-02-12 07:48:41',NULL,NULL),(3,3,NULL,1578.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0096674707','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-14 07:48:41','2023-02-12 07:48:41',NULL,NULL),(4,4,NULL,543.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0014001789','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:48:41','2023-02-12 07:48:41',NULL,NULL),(5,5,NULL,730.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0058688121','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-18 07:48:41','2023-02-12 07:48:41',NULL,NULL),(6,6,NULL,2532.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0047109976','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-22 07:48:41','2023-02-12 07:48:41',NULL,NULL),(7,7,NULL,789.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0011260602','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-15 07:48:41',NULL,NULL,NULL),(8,8,NULL,4365.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0085614290','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-17 07:48:41','2023-02-12 07:48:41',NULL,NULL),(9,9,NULL,2157.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0038025904','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:48:41',NULL,NULL,NULL),(10,10,NULL,3195.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0075046586','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-16 07:48:41',NULL,NULL,NULL),(11,11,NULL,719.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0096272233','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-20 07:48:41','2023-02-12 07:48:41',NULL,NULL),(12,12,NULL,2854.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0055653744','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-15 07:48:41',NULL,NULL,NULL),(13,13,NULL,3852.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0096872396','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-18 07:48:41','2023-02-12 07:48:41',NULL,NULL),(14,14,NULL,1890.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0092409419','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-15 07:48:41','2023-02-12 07:48:41',NULL,NULL),(15,15,NULL,529.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0016004244','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-16 07:48:41','2023-02-12 07:48:41',NULL,NULL),(16,16,NULL,572.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0091616149','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-19 07:48:41',NULL,NULL,NULL),(17,17,NULL,873.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0023353512','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-18 07:48:41',NULL,NULL,NULL),(18,18,NULL,1058.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0036415351','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-19 07:48:41','2023-02-12 07:48:41',NULL,NULL),(19,19,NULL,683.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0061180405','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-20 07:48:41',NULL,NULL,NULL),(20,20,NULL,1688.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0090213451','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41',NULL,NULL,NULL),(21,21,NULL,873.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0097929332','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41',NULL,NULL,NULL),(22,22,NULL,1797.00,NULL,NULL,'','delivered',144.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0033052805','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41','2023-02-12 07:48:41',NULL,NULL),(23,23,NULL,674.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0051686482','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41','2023-02-12 07:48:41',NULL,NULL),(24,24,NULL,4365.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0041086267','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-16 07:48:41','2023-02-12 07:48:41',NULL,NULL),(25,25,NULL,1438.00,NULL,NULL,'','approved',146.00,'pending','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0079903215','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-19 07:48:41',NULL,NULL,NULL),(26,26,NULL,1350.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0099077723','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-18 07:48:41','2023-02-12 07:48:41',NULL,NULL),(27,27,NULL,2396.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD008460540','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41',NULL,NULL,NULL),(28,28,NULL,730.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0054895535','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-18 07:48:41',NULL,NULL,NULL),(29,29,NULL,1917.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD005481462','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-16 07:48:41',NULL,NULL,NULL),(30,30,NULL,1408.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0055977250','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-19 07:48:41',NULL,NULL,NULL),(31,31,NULL,789.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0012628350','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41','2023-02-12 07:48:41',NULL,NULL),(32,32,NULL,2157.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0057756144','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41',NULL,NULL,NULL),(33,33,NULL,3933.00,NULL,NULL,'','approved',732.00,'pending','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0041301801','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41',NULL,NULL,NULL),(34,34,NULL,639.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0021030234','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41','2023-02-12 07:48:41',NULL,NULL),(35,35,NULL,3532.00,NULL,NULL,'','delivered',900.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD005989082','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-17 07:48:41','2023-02-12 07:48:41',NULL,NULL),(36,36,NULL,2025.00,NULL,NULL,'','delivered',381.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0017815240','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-18 07:48:41','2023-02-12 07:48:41',NULL,NULL),(37,37,NULL,1198.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0024119727','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-20 07:48:41',NULL,NULL,NULL),(38,38,NULL,2376.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0079434314','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-15 07:48:41','2023-02-12 07:48:41',NULL,NULL),(39,39,NULL,2124.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0052704008','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-19 07:48:41',NULL,NULL,NULL),(40,40,NULL,844.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0026215404','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41','2023-02-12 07:48:41',NULL,NULL),(41,41,NULL,2121.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0035047769','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41',NULL,NULL,NULL),(42,42,NULL,2367.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0097824105','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-13 07:48:41','2023-02-12 07:48:41',NULL,NULL),(43,43,NULL,630.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0058513873','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-15 07:48:41',NULL,NULL,NULL),(44,44,NULL,3016.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0037138307','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-17 07:48:41',NULL,NULL,NULL),(45,45,NULL,614.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0097183432','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-16 07:48:41',NULL,NULL,NULL),(46,46,NULL,1629.00,NULL,NULL,'','approved',378.00,'pending','pending',0.00,0,'2023-02-12 00:48:41','2023-02-12 00:48:41','JJD0090427215','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-21 07:48:41',NULL,NULL,NULL),(47,47,NULL,1716.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:42','2023-02-12 00:48:42','JJD001425806','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-17 07:48:42','2023-02-12 07:48:42',NULL,NULL),(48,48,NULL,541.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:42','2023-02-12 00:48:42','JJD0071596652','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-19 07:48:42','2023-02-12 07:48:42',NULL,NULL),(49,49,NULL,675.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-02-12 00:48:42','2023-02-12 00:48:42','JJD0048577007','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-02-18 07:48:42',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-02-12 00:48:26','2023-02-12 00:48:26');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-02-12 00:48:26','2023-02-12 00:48:26');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2023-02-12 00:48:26','2023-02-12 00:48:26');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-02-12 00:48:25','2023-02-12 00:48:25'),(2,'None',0.000000,2,'published','2023-02-12 00:48:25','2023-02-12 00:48:25'),(3,'Import Tax',15.000000,3,'published','2023-02-12 00:48:25','2023-02-12 00:48:25');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(2,'Payment',1,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(3,'Order &amp; Returns',2,'published','2023-02-12 00:48:33','2023-02-12 00:48:33');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-02-12 00:48:33','2023-02-12 00:48:33'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-02-12 00:48:33','2023-02-12 00:48:33');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','90bc7e53722f00a169814d84589a52a6',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','2d8c56732deb8c54fdb7d35c9d50eaf0',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','cbfd08e71f2eb4adcc46a190439f406e',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','04faa2fb378f667a148dbe52809185d6',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','a6687bc049831ae0daf4adfd45e78a71',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','8848f7952de3ad1e12cc7bad2c354ff2',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','53093e6e0ebc08eb301509e7cefacc46',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'vi','90bc7e53722f00a169814d84589a52a6',8,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(9,'vi','2d8c56732deb8c54fdb7d35c9d50eaf0',9,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(10,'vi','cbfd08e71f2eb4adcc46a190439f406e',10,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(11,'vi','04faa2fb378f667a148dbe52809185d6',11,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(12,'vi','a6687bc049831ae0daf4adfd45e78a71',12,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(13,'vi','8848f7952de3ad1e12cc7bad2c354ff2',13,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(14,'vi','53093e6e0ebc08eb301509e7cefacc46',14,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(15,'en_US','ffd2e7cb66a0493eb2e3b59cd99d7d1e',1,'Botble\\Menu\\Models\\MenuLocation'),(16,'en_US','03b8fc0dba83d4a00f86dfc6cf77b724',1,'Botble\\Menu\\Models\\Menu'),(17,'en_US','8ff86784fd75a60c8f32a36a42c74a11',2,'Botble\\Menu\\Models\\MenuLocation'),(18,'en_US','b3702d52dbc4be21c1780abe23021841',2,'Botble\\Menu\\Models\\Menu'),(19,'en_US','c97f5065b53c25df9346f0fcfc927f95',3,'Botble\\Menu\\Models\\Menu'),(20,'en_US','90a3e87c29913ff7ba63bccebdd6f3a5',4,'Botble\\Menu\\Models\\Menu'),(21,'en_US','3130bc7aed05934dcd35da5d0b369bbf',5,'Botble\\Menu\\Models\\Menu'),(22,'vi','ff9cfdd4ae56d2646a79dffc03e4714f',3,'Botble\\Menu\\Models\\MenuLocation'),(23,'vi','03b8fc0dba83d4a00f86dfc6cf77b724',6,'Botble\\Menu\\Models\\Menu'),(24,'vi','53115959c084bfdb07c4d91663dbc3cc',4,'Botble\\Menu\\Models\\MenuLocation'),(25,'vi','b3702d52dbc4be21c1780abe23021841',7,'Botble\\Menu\\Models\\Menu'),(26,'vi','c97f5065b53c25df9346f0fcfc927f95',8,'Botble\\Menu\\Models\\Menu'),(27,'vi','90a3e87c29913ff7ba63bccebdd6f3a5',9,'Botble\\Menu\\Models\\Menu'),(28,'vi','3130bc7aed05934dcd35da5d0b369bbf',10,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1','icon-1',1,'image/png',1307,'product-categories/icon-1.png','[]','2023-02-12 00:48:15','2023-02-12 00:48:15',NULL),(2,0,'icon-10','icon-10',1,'image/png',1307,'product-categories/icon-10.png','[]','2023-02-12 00:48:15','2023-02-12 00:48:15',NULL),(3,0,'icon-11','icon-11',1,'image/png',1307,'product-categories/icon-11.png','[]','2023-02-12 00:48:15','2023-02-12 00:48:15',NULL),(4,0,'icon-12','icon-12',1,'image/png',1307,'product-categories/icon-12.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(5,0,'icon-13','icon-13',1,'image/png',1307,'product-categories/icon-13.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(6,0,'icon-14','icon-14',1,'image/png',1307,'product-categories/icon-14.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(7,0,'icon-2','icon-2',1,'image/png',1307,'product-categories/icon-2.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(8,0,'icon-3','icon-3',1,'image/png',1307,'product-categories/icon-3.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(9,0,'icon-4','icon-4',1,'image/png',1307,'product-categories/icon-4.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(10,0,'icon-5','icon-5',1,'image/png',1307,'product-categories/icon-5.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(11,0,'icon-6','icon-6',1,'image/png',1307,'product-categories/icon-6.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(12,0,'icon-7','icon-7',1,'image/png',1307,'product-categories/icon-7.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(13,0,'icon-8','icon-8',1,'image/png',1307,'product-categories/icon-8.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(14,0,'icon-9','icon-9',1,'image/png',1307,'product-categories/icon-9.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(15,0,'image-1','image-1',1,'image/png',1307,'product-categories/image-1.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(16,0,'image-10','image-10',1,'image/png',1307,'product-categories/image-10.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(17,0,'image-11','image-11',1,'image/png',1307,'product-categories/image-11.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(18,0,'image-12','image-12',1,'image/png',1307,'product-categories/image-12.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(19,0,'image-13','image-13',1,'image/png',1307,'product-categories/image-13.png','[]','2023-02-12 00:48:16','2023-02-12 00:48:16',NULL),(20,0,'image-14','image-14',1,'image/png',1307,'product-categories/image-14.png','[]','2023-02-12 00:48:17','2023-02-12 00:48:17',NULL),(21,0,'image-15','image-15',1,'image/png',1307,'product-categories/image-15.png','[]','2023-02-12 00:48:17','2023-02-12 00:48:17',NULL),(22,0,'image-2','image-2',1,'image/png',1307,'product-categories/image-2.png','[]','2023-02-12 00:48:17','2023-02-12 00:48:17',NULL),(23,0,'image-3','image-3',1,'image/png',1307,'product-categories/image-3.png','[]','2023-02-12 00:48:17','2023-02-12 00:48:17',NULL),(24,0,'image-4','image-4',1,'image/png',1307,'product-categories/image-4.png','[]','2023-02-12 00:48:17','2023-02-12 00:48:17',NULL),(25,0,'image-5','image-5',1,'image/png',1307,'product-categories/image-5.png','[]','2023-02-12 00:48:17','2023-02-12 00:48:17',NULL),(26,0,'image-6','image-6',1,'image/png',1307,'product-categories/image-6.png','[]','2023-02-12 00:48:17','2023-02-12 00:48:17',NULL),(27,0,'image-7','image-7',1,'image/png',1307,'product-categories/image-7.png','[]','2023-02-12 00:48:17','2023-02-12 00:48:17',NULL),(28,0,'image-8','image-8',1,'image/png',1307,'product-categories/image-8.png','[]','2023-02-12 00:48:17','2023-02-12 00:48:17',NULL),(29,0,'image-9','image-9',1,'image/png',1307,'product-categories/image-9.png','[]','2023-02-12 00:48:17','2023-02-12 00:48:17',NULL),(30,0,'1-1','1-1',2,'image/jpeg',2165,'products/1-1.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(31,0,'1','1',2,'image/jpeg',2165,'products/1.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(32,0,'10-1','10-1',2,'image/jpeg',2165,'products/10-1.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(33,0,'10','10',2,'image/jpeg',2165,'products/10.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(34,0,'11-1','11-1',2,'image/jpeg',2165,'products/11-1.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(35,0,'11','11',2,'image/jpeg',2165,'products/11.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(36,0,'12-1','12-1',2,'image/jpeg',2165,'products/12-1.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(37,0,'12','12',2,'image/jpeg',2165,'products/12.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(38,0,'13-1','13-1',2,'image/jpeg',2165,'products/13-1.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(39,0,'13','13',2,'image/jpeg',2165,'products/13.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(40,0,'14-1','14-1',2,'image/jpeg',2165,'products/14-1.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(41,0,'14','14',2,'image/jpeg',2165,'products/14.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(42,0,'15-1','15-1',2,'image/jpeg',2165,'products/15-1.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(43,0,'15','15',2,'image/jpeg',2165,'products/15.jpg','[]','2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(44,0,'16-1','16-1',2,'image/jpeg',2165,'products/16-1.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(45,0,'16-2','16-2',2,'image/jpeg',2165,'products/16-2.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(46,0,'16-3','16-3',2,'image/jpeg',2165,'products/16-3.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(47,0,'16-4','16-4',2,'image/jpeg',2165,'products/16-4.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(48,0,'16-5','16-5',2,'image/jpeg',2165,'products/16-5.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(49,0,'16-6','16-6',2,'image/jpeg',2165,'products/16-6.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(50,0,'16','16',2,'image/jpeg',2165,'products/16.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(51,0,'17-1','17-1',2,'image/jpeg',2165,'products/17-1.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(52,0,'17','17',2,'image/jpeg',2165,'products/17.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(53,0,'18-1','18-1',2,'image/jpeg',2165,'products/18-1.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(54,0,'18','18',2,'image/jpeg',2165,'products/18.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(55,0,'19-1','19-1',2,'image/jpeg',2165,'products/19-1.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(56,0,'19','19',2,'image/jpeg',2165,'products/19.jpg','[]','2023-02-12 00:48:19','2023-02-12 00:48:19',NULL),(57,0,'2-1','2-1',2,'image/jpeg',2165,'products/2-1.jpg','[]','2023-02-12 00:48:20','2023-02-12 00:48:20',NULL),(58,0,'2','2',2,'image/jpeg',2165,'products/2.jpg','[]','2023-02-12 00:48:20','2023-02-12 00:48:20',NULL),(59,0,'20-1','20-1',2,'image/jpeg',2165,'products/20-1.jpg','[]','2023-02-12 00:48:20','2023-02-12 00:48:20',NULL),(60,0,'20','20',2,'image/jpeg',2165,'products/20.jpg','[]','2023-02-12 00:48:20','2023-02-12 00:48:20',NULL),(61,0,'21-1','21-1',2,'image/jpeg',2165,'products/21-1.jpg','[]','2023-02-12 00:48:20','2023-02-12 00:48:20',NULL),(62,0,'21','21',2,'image/jpeg',2165,'products/21.jpg','[]','2023-02-12 00:48:20','2023-02-12 00:48:20',NULL),(63,0,'22-1','22-1',2,'image/jpeg',2165,'products/22-1.jpg','[]','2023-02-12 00:48:20','2023-02-12 00:48:20',NULL),(64,0,'22','22',2,'image/jpeg',2165,'products/22.jpg','[]','2023-02-12 00:48:20','2023-02-12 00:48:20',NULL),(65,0,'23-1','23-1',2,'image/jpeg',2165,'products/23-1.jpg','[]','2023-02-12 00:48:20','2023-02-12 00:48:20',NULL),(66,0,'23','23',2,'image/jpeg',2165,'products/23.jpg','[]','2023-02-12 00:48:20','2023-02-12 00:48:20',NULL),(67,0,'24-1','24-1',2,'image/jpeg',2165,'products/24-1.jpg','[]','2023-02-12 00:48:20','2023-02-12 00:48:20',NULL),(68,0,'24','24',2,'image/jpeg',2165,'products/24.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(69,0,'3-1','3-1',2,'image/jpeg',2165,'products/3-1.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(70,0,'3','3',2,'image/jpeg',2165,'products/3.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(71,0,'4-1','4-1',2,'image/jpeg',2165,'products/4-1.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(72,0,'4','4',2,'image/jpeg',2165,'products/4.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(73,0,'5-1','5-1',2,'image/jpeg',2165,'products/5-1.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(74,0,'5','5',2,'image/jpeg',2165,'products/5.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(75,0,'6-1','6-1',2,'image/jpeg',2165,'products/6-1.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(76,0,'6','6',2,'image/jpeg',2165,'products/6.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(77,0,'7-1','7-1',2,'image/jpeg',2165,'products/7-1.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(78,0,'7','7',2,'image/jpeg',2165,'products/7.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(79,0,'8-1','8-1',2,'image/jpeg',2165,'products/8-1.jpg','[]','2023-02-12 00:48:21','2023-02-12 00:48:21',NULL),(80,0,'8','8',2,'image/jpeg',2165,'products/8.jpg','[]','2023-02-12 00:48:22','2023-02-12 00:48:22',NULL),(81,0,'9-1','9-1',2,'image/jpeg',2165,'products/9-1.jpg','[]','2023-02-12 00:48:22','2023-02-12 00:48:22',NULL),(82,0,'9','9',2,'image/jpeg',2165,'products/9.jpg','[]','2023-02-12 00:48:22','2023-02-12 00:48:22',NULL),(83,0,'1','1',3,'image/jpeg',2165,'customers/1.jpg','[]','2023-02-12 00:48:25','2023-02-12 00:48:25',NULL),(84,0,'2','2',3,'image/jpeg',2165,'customers/2.jpg','[]','2023-02-12 00:48:25','2023-02-12 00:48:25',NULL),(85,0,'3','3',3,'image/jpeg',2165,'customers/3.jpg','[]','2023-02-12 00:48:25','2023-02-12 00:48:25',NULL),(86,0,'4','4',3,'image/jpeg',2165,'customers/4.jpg','[]','2023-02-12 00:48:25','2023-02-12 00:48:25',NULL),(87,0,'5','5',3,'image/jpeg',2165,'customers/5.jpg','[]','2023-02-12 00:48:25','2023-02-12 00:48:25',NULL),(88,0,'6','6',3,'image/jpeg',2165,'customers/6.jpg','[]','2023-02-12 00:48:25','2023-02-12 00:48:25',NULL),(89,0,'7','7',3,'image/jpeg',2165,'customers/7.jpg','[]','2023-02-12 00:48:25','2023-02-12 00:48:25',NULL),(90,0,'8','8',3,'image/jpeg',2165,'customers/8.jpg','[]','2023-02-12 00:48:25','2023-02-12 00:48:25',NULL),(91,0,'9','9',3,'image/jpeg',2165,'customers/9.jpg','[]','2023-02-12 00:48:25','2023-02-12 00:48:25',NULL),(92,0,'1','1',4,'image/png',3187,'flash-sales/1.png','[]','2023-02-12 00:48:26','2023-02-12 00:48:26',NULL),(93,0,'2','2',4,'image/png',2392,'flash-sales/2.png','[]','2023-02-12 00:48:26','2023-02-12 00:48:26',NULL),(94,0,'3','3',4,'image/png',2392,'flash-sales/3.png','[]','2023-02-12 00:48:27','2023-02-12 00:48:27',NULL),(95,0,'4','4',4,'image/png',2392,'flash-sales/4.png','[]','2023-02-12 00:48:27','2023-02-12 00:48:27',NULL),(96,0,'5','5',4,'image/png',2392,'flash-sales/5.png','[]','2023-02-12 00:48:27','2023-02-12 00:48:27',NULL),(97,0,'1-1','1-1',5,'image/png',10577,'sliders/1-1.png','[]','2023-02-12 00:48:27','2023-02-12 00:48:27',NULL),(98,0,'1-2','1-2',5,'image/png',10577,'sliders/1-2.png','[]','2023-02-12 00:48:27','2023-02-12 00:48:27',NULL),(99,0,'1-3','1-3',5,'image/png',2697,'sliders/1-3.png','[]','2023-02-12 00:48:27','2023-02-12 00:48:27',NULL),(100,0,'2-1','2-1',5,'image/png',4556,'sliders/2-1.png','[]','2023-02-12 00:48:27','2023-02-12 00:48:27',NULL),(101,0,'2-2','2-2',5,'image/png',4556,'sliders/2-2.png','[]','2023-02-12 00:48:27','2023-02-12 00:48:27',NULL),(102,0,'2-3','2-3',5,'image/png',2697,'sliders/2-3.png','[]','2023-02-12 00:48:27','2023-02-12 00:48:27',NULL),(103,0,'3-1','3-1',5,'image/png',10577,'sliders/3-1.png','[]','2023-02-12 00:48:28','2023-02-12 00:48:28',NULL),(104,0,'3-2','3-2',5,'image/png',10577,'sliders/3-2.png','[]','2023-02-12 00:48:28','2023-02-12 00:48:28',NULL),(105,0,'4-1','4-1',5,'image/png',10577,'sliders/4-1.png','[]','2023-02-12 00:48:28','2023-02-12 00:48:28',NULL),(106,0,'4-2','4-2',5,'image/png',10577,'sliders/4-2.png','[]','2023-02-12 00:48:28','2023-02-12 00:48:28',NULL),(107,0,'4-3','4-3',5,'image/png',2697,'sliders/4-3.png','[]','2023-02-12 00:48:28','2023-02-12 00:48:28',NULL),(108,0,'5-1','5-1',5,'image/png',5213,'sliders/5-1.png','[]','2023-02-12 00:48:28','2023-02-12 00:48:28',NULL),(109,0,'5-2','5-2',5,'image/png',5213,'sliders/5-2.png','[]','2023-02-12 00:48:28','2023-02-12 00:48:28',NULL),(110,0,'banner-1','banner-1',5,'image/png',12801,'sliders/banner-1.png','[]','2023-02-12 00:48:29','2023-02-12 00:48:29',NULL),(111,0,'thumbnail-1','thumbnail-1',5,'image/jpeg',2165,'sliders/thumbnail-1.jpg','[]','2023-02-12 00:48:29','2023-02-12 00:48:29',NULL),(112,0,'thumbnail-2','thumbnail-2',5,'image/jpeg',2165,'sliders/thumbnail-2.jpg','[]','2023-02-12 00:48:29','2023-02-12 00:48:29',NULL),(113,0,'thumbnail-3','thumbnail-3',5,'image/jpeg',2165,'sliders/thumbnail-3.jpg','[]','2023-02-12 00:48:29','2023-02-12 00:48:29',NULL),(114,0,'thumbnail-4','thumbnail-4',5,'image/jpeg',2165,'sliders/thumbnail-4.jpg','[]','2023-02-12 00:48:29','2023-02-12 00:48:29',NULL),(115,0,'thumbnail-5','thumbnail-5',5,'image/jpeg',2165,'sliders/thumbnail-5.jpg','[]','2023-02-12 00:48:29','2023-02-12 00:48:29',NULL),(116,0,'thumbnail-6','thumbnail-6',5,'image/jpeg',2165,'sliders/thumbnail-6.jpg','[]','2023-02-12 00:48:29','2023-02-12 00:48:29',NULL),(117,0,'1','1',6,'image/png',2165,'news/1.png','[]','2023-02-12 00:48:30','2023-02-12 00:48:30',NULL),(118,0,'10','10',6,'image/png',2165,'news/10.png','[]','2023-02-12 00:48:30','2023-02-12 00:48:30',NULL),(119,0,'11','11',6,'image/png',2165,'news/11.png','[]','2023-02-12 00:48:30','2023-02-12 00:48:30',NULL),(120,0,'2','2',6,'image/png',2165,'news/2.png','[]','2023-02-12 00:48:30','2023-02-12 00:48:30',NULL),(121,0,'3','3',6,'image/png',2165,'news/3.png','[]','2023-02-12 00:48:30','2023-02-12 00:48:30',NULL),(122,0,'4','4',6,'image/png',2165,'news/4.png','[]','2023-02-12 00:48:30','2023-02-12 00:48:30',NULL),(123,0,'5','5',6,'image/png',2165,'news/5.png','[]','2023-02-12 00:48:31','2023-02-12 00:48:31',NULL),(124,0,'6','6',6,'image/png',2165,'news/6.png','[]','2023-02-12 00:48:31','2023-02-12 00:48:31',NULL),(125,0,'7','7',6,'image/png',2165,'news/7.png','[]','2023-02-12 00:48:31','2023-02-12 00:48:31',NULL),(126,0,'8','8',6,'image/png',2165,'news/8.png','[]','2023-02-12 00:48:31','2023-02-12 00:48:31',NULL),(127,0,'9','9',6,'image/png',2165,'news/9.png','[]','2023-02-12 00:48:31','2023-02-12 00:48:31',NULL),(128,0,'1','1',7,'image/png',3010,'promotion/1.png','[]','2023-02-12 00:48:32','2023-02-12 00:48:32',NULL),(129,0,'10','10',7,'image/png',2722,'promotion/10.png','[]','2023-02-12 00:48:32','2023-02-12 00:48:32',NULL),(130,0,'11','11',7,'image/png',2722,'promotion/11.png','[]','2023-02-12 00:48:32','2023-02-12 00:48:32',NULL),(131,0,'12','12',7,'image/png',2722,'promotion/12.png','[]','2023-02-12 00:48:32','2023-02-12 00:48:32',NULL),(132,0,'2','2',7,'image/png',3010,'promotion/2.png','[]','2023-02-12 00:48:32','2023-02-12 00:48:32',NULL),(133,0,'3','3',7,'image/png',3010,'promotion/3.png','[]','2023-02-12 00:48:32','2023-02-12 00:48:32',NULL),(134,0,'4','4',7,'image/png',2266,'promotion/4.png','[]','2023-02-12 00:48:32','2023-02-12 00:48:32',NULL),(135,0,'5','5',7,'image/png',3847,'promotion/5.png','[]','2023-02-12 00:48:32','2023-02-12 00:48:32',NULL),(136,0,'6','6',7,'image/png',3847,'promotion/6.png','[]','2023-02-12 00:48:32','2023-02-12 00:48:32',NULL),(137,0,'7','7',7,'image/png',2905,'promotion/7.png','[]','2023-02-12 00:48:33','2023-02-12 00:48:33',NULL),(138,0,'8','8',7,'image/png',1926,'promotion/8.png','[]','2023-02-12 00:48:33','2023-02-12 00:48:33',NULL),(139,0,'9','9',7,'image/png',2722,'promotion/9.png','[]','2023-02-12 00:48:33','2023-02-12 00:48:33',NULL),(140,0,'app-store','app-store',8,'image/jpeg',1064,'general/app-store.jpg','[]','2023-02-12 00:48:33','2023-02-12 00:48:33',NULL),(141,0,'category-1','category-1',8,'image/png',231,'general/category-1.png','[]','2023-02-12 00:48:33','2023-02-12 00:48:33',NULL),(142,0,'facebook','facebook',8,'image/png',646,'general/facebook.png','[]','2023-02-12 00:48:33','2023-02-12 00:48:33',NULL),(143,0,'favicon','favicon',8,'image/png',3890,'general/favicon.png','[]','2023-02-12 00:48:33','2023-02-12 00:48:33',NULL),(144,0,'google-play','google-play',8,'image/jpeg',1064,'general/google-play.jpg','[]','2023-02-12 00:48:33','2023-02-12 00:48:33',NULL),(145,0,'header-bg','header-bg',8,'image/png',16995,'general/header-bg.png','[]','2023-02-12 00:48:33','2023-02-12 00:48:33',NULL),(146,0,'home-6','home-6',8,'image/jpeg',799491,'general/home-6.jpeg','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(147,0,'icon-1','icon-1',8,'image/png',2024,'general/icon-1.png','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(148,0,'icon-2','icon-2',8,'image/png',3531,'general/icon-2.png','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(149,0,'icon-3','icon-3',8,'image/png',2344,'general/icon-3.png','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(150,0,'icon-4','icon-4',8,'image/png',2314,'general/icon-4.png','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(151,0,'icon-5','icon-5',8,'image/png',2853,'general/icon-5.png','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(152,0,'instagram','instagram',8,'image/png',2586,'general/instagram.png','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(153,0,'loading','loading',8,'image/gif',25062,'general/loading.gif','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(154,0,'login-1','login-1',8,'image/png',3099,'general/login-1.png','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(155,0,'logo','logo',8,'image/png',16457,'general/logo.png','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(156,0,'newsletter-background-image','newsletter-background-image',8,'image/png',28409,'general/newsletter-background-image.png','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(157,0,'newsletter-image','newsletter-image',8,'image/png',3997,'general/newsletter-image.png','[]','2023-02-12 00:48:34','2023-02-12 00:48:34',NULL),(158,0,'open-graph-image','open-graph-image',8,'image/png',436809,'general/open-graph-image.png','[]','2023-02-12 00:48:35','2023-02-12 00:48:35',NULL),(159,0,'payment-methods','payment-methods',8,'image/png',268,'general/payment-methods.png','[]','2023-02-12 00:48:35','2023-02-12 00:48:35',NULL),(160,0,'pinterest','pinterest',8,'image/png',2128,'general/pinterest.png','[]','2023-02-12 00:48:35','2023-02-12 00:48:35',NULL),(161,0,'twitter','twitter',8,'image/png',1759,'general/twitter.png','[]','2023-02-12 00:48:35','2023-02-12 00:48:35',NULL),(162,0,'youtube','youtube',8,'image/png',1083,'general/youtube.png','[]','2023-02-12 00:48:35','2023-02-12 00:48:35',NULL),(163,0,'1','1',9,'image/png',1307,'stores/1.png','[]','2023-02-12 00:48:35','2023-02-12 00:48:35',NULL),(164,0,'10','10',9,'image/png',1307,'stores/10.png','[]','2023-02-12 00:48:35','2023-02-12 00:48:35',NULL),(165,0,'11','11',9,'image/png',1307,'stores/11.png','[]','2023-02-12 00:48:35','2023-02-12 00:48:35',NULL),(166,0,'12','12',9,'image/png',1307,'stores/12.png','[]','2023-02-12 00:48:35','2023-02-12 00:48:35',NULL),(167,0,'13','13',9,'image/png',1307,'stores/13.png','[]','2023-02-12 00:48:35','2023-02-12 00:48:35',NULL),(168,0,'14','14',9,'image/png',1307,'stores/14.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL),(169,0,'15','15',9,'image/png',1307,'stores/15.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL),(170,0,'16','16',9,'image/png',1307,'stores/16.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL),(171,0,'17','17',9,'image/png',1307,'stores/17.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL),(172,0,'2','2',9,'image/png',1307,'stores/2.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL),(173,0,'3','3',9,'image/png',1307,'stores/3.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL),(174,0,'4','4',9,'image/png',1307,'stores/4.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL),(175,0,'5','5',9,'image/png',1307,'stores/5.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL),(176,0,'6','6',9,'image/png',1307,'stores/6.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL),(177,0,'7','7',9,'image/png',1307,'stores/7.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL),(178,0,'8','8',9,'image/png',1307,'stores/8.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL),(179,0,'9','9',9,'image/png',1307,'stores/9.png','[]','2023-02-12 00:48:36','2023-02-12 00:48:36',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories','product-categories',0,'2023-02-12 00:48:15','2023-02-12 00:48:15',NULL),(2,0,'products','products',0,'2023-02-12 00:48:18','2023-02-12 00:48:18',NULL),(3,0,'customers','customers',0,'2023-02-12 00:48:25','2023-02-12 00:48:25',NULL),(4,0,'flash-sales','flash-sales',0,'2023-02-12 00:48:26','2023-02-12 00:48:26',NULL),(5,0,'sliders','sliders',0,'2023-02-12 00:48:27','2023-02-12 00:48:27',NULL),(6,0,'news','news',0,'2023-02-12 00:48:30','2023-02-12 00:48:30',NULL),(7,0,'promotion','promotion',0,'2023-02-12 00:48:32','2023-02-12 00:48:32',NULL),(8,0,'general','general',0,'2023-02-12 00:48:33','2023-02-12 00:48:33',NULL),(9,0,'stores','stores',0,'2023-02-12 00:48:35','2023-02-12 00:48:35',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-02-12 00:48:37','2023-02-12 00:48:37'),(2,2,'header-navigation','2023-02-12 00:48:37','2023-02-12 00:48:37'),(3,6,'main-menu','2023-02-12 00:48:37','2023-02-12 00:48:37'),(4,7,'header-navigation','2023-02-12 00:48:37','2023-02-12 00:48:37');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Home 1',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product',NULL,'_self',1,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-amp-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(41,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(42,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(43,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(44,4,0,9,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(45,4,0,10,'Botble\\Page\\Models\\Page','/returns-amp-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(46,4,0,11,'Botble\\Page\\Models\\Page','/shipping-amp-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(47,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(48,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(51,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(52,6,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(53,6,52,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Trang chủ 1',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(54,6,52,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(55,6,52,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(56,6,52,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Trang chủ 4',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(57,6,52,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Trang chủ 5',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(58,6,52,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Trang chủ 6',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(59,6,0,NULL,NULL,'/products',NULL,0,'Bán hàng',NULL,'_self',1,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(60,6,59,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(61,6,59,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(62,6,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',1,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(63,6,62,NULL,NULL,'/stores',NULL,0,'Cửa hàng - Grid',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(64,6,62,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Cửa hàng - List',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(65,6,62,NULL,NULL,'/stores/gopro',NULL,0,'Cửa hàng - Detail',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(66,6,0,NULL,NULL,'#',NULL,0,'Sản phẩm',NULL,'_self',1,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(67,6,66,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Sản phẩm Sidebar phải',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(68,6,66,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Sản phẩm Sidebar trái',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(69,6,66,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Sản phẩm full width',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(70,6,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(71,6,70,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức Sidebar phải',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(72,6,70,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Tin tức Sidebar trái',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(73,6,70,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết Sidebar phải',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(74,6,70,NULL,NULL,'/blog/sexy-clutches-how-to-buy-amp-wear-a-designer-clutch-bag',NULL,0,'Bài viết Sidebar trái',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(75,6,70,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết Full Width',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(76,6,70,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Bài viết kèm sản phẩm',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(77,6,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(78,6,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(79,7,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về Chúng Tôi',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(80,7,0,NULL,NULL,'/orders/tracking',NULL,0,'Theo Dõi Đơn Hàng',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(81,8,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Sữa',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(82,8,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Quần áo và làm đẹp',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(83,8,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Đồ chơi thú cưng',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(84,8,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Nguyên liệu làm bánh',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(85,8,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Trái cây tươi',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(86,8,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Rượu & Đồ uống',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(87,9,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(88,9,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(89,9,0,9,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Điều khoản & quy định',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(90,9,0,10,'Botble\\Page\\Models\\Page','/returns-amp-exchanges',NULL,0,'Chính sách đổi trả',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(91,9,0,11,'Botble\\Page\\Models\\Page','/shipping-amp-delivery',NULL,0,'Chính sách vận chuyển',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(92,9,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Chính sách bảo mật',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(93,10,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(94,10,0,NULL,NULL,'#',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(95,10,0,NULL,NULL,'#',NULL,0,'Tuyển dụng',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37'),(96,10,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-02-12 00:48:37','2023-02-12 00:48:37');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-02-12 00:48:37','2023-02-12 00:48:37'),(2,'Header menu','header-menu','published','2023-02-12 00:48:37','2023-02-12 00:48:37'),(3,'Product categories','product-categories','published','2023-02-12 00:48:37','2023-02-12 00:48:37'),(4,'Information','information','published','2023-02-12 00:48:37','2023-02-12 00:48:37'),(5,'Company','company','published','2023-02-12 00:48:37','2023-02-12 00:48:37'),(6,'Menu chính','menu-chinh','published','2023-02-12 00:48:37','2023-02-12 00:48:37'),(7,'Menu trên cùng','menu-tren-cung','published','2023-02-12 00:48:37','2023-02-12 00:48:37'),(8,'Product categories','danh-muc-san-pham','published','2023-02-12 00:48:37','2023-02-12 00:48:37'),(9,'Information','thong-tin','published','2023-02-12 00:48:37','2023-02-12 00:48:37'),(10,'Công ty','cong-ty','published','2023-02-12 00:48:37','2023-02-12 00:48:37');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon_image','[\"product-categories\\/icon-1.png\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(2,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(3,'icon_image','[\"product-categories\\/icon-2.png\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(4,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(5,'icon_image','[\"product-categories\\/icon-3.png\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(6,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(7,'icon_image','[\"product-categories\\/icon-4.png\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(8,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(9,'icon_image','[\"product-categories\\/icon-5.png\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(10,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(11,'icon_image','[\"product-categories\\/icon-6.png\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(12,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(13,'icon_image','[\"product-categories\\/icon-7.png\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(14,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(15,'icon_image','[\"product-categories\\/icon-8.png\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(16,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(17,'icon_image','[\"product-categories\\/icon-9.png\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(18,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(19,'icon_image','[\"product-categories\\/icon-10.png\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(20,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(21,'icon_image','[\"product-categories\\/icon-11.png\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(22,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(23,'icon_image','[\"product-categories\\/icon-12.png\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(24,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(25,'icon_image','[\"product-categories\\/icon-13.png\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(26,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(27,'icon_image','[\"product-categories\\/icon-14.png\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(28,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2023-02-12 00:48:17','2023-02-12 00:48:17'),(29,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(31,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(32,'is_popular','[\"1\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(34,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(36,'is_popular','[\"1\"]',4,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(39,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(42,'is_popular','[\"1\"]',8,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(45,'is_popular','[\"1\"]',10,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(48,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:23','2023-02-12 00:48:23'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(51,'is_popular','[\"1\"]',14,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(54,'is_popular','[\"1\"]',16,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(55,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(56,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(57,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(58,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(59,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(60,'is_popular','[\"1\"]',20,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(61,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(62,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(63,'is_popular','[\"1\"]',22,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(64,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(65,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(66,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(67,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2023-02-12 00:48:24','2023-02-12 00:48:24'),(68,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-02-12 00:48:27','2023-02-12 00:48:27'),(69,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-02-12 00:48:27','2023-02-12 00:48:27'),(70,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2023-02-12 00:48:27','2023-02-12 00:48:27'),(71,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2023-02-12 00:48:27','2023-02-12 00:48:27'),(72,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2023-02-12 00:48:27','2023-02-12 00:48:27'),(73,'vi_image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-02-12 00:48:27','2023-02-12 00:48:27'),(74,'vi_image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-02-12 00:48:27','2023-02-12 00:48:27'),(75,'vi_image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2023-02-12 00:48:27','2023-02-12 00:48:27'),(76,'vi_image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2023-02-12 00:48:27','2023-02-12 00:48:27'),(77,'vi_image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2023-02-12 00:48:27','2023-02-12 00:48:27'),(78,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:29','2023-02-12 00:48:29'),(79,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(80,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(81,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(82,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(83,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(84,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(85,'simple_slider_style','[\"style-4\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(86,'simple_slider_style','[\"style-2\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(87,'simple_slider_style','[\"style-3\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(88,'simple_slider_style','[\"style-1\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(89,'simple_slider_style','[\"style-5\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(90,'simple_slider_style','[\"style-6\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(91,'simple_slider_style','[\"style-1\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-02-12 00:48:30','2023-02-12 00:48:30'),(92,'layout','[\"blog-post-right-sidebar\"]',1,'Botble\\Blog\\Models\\Post','2023-02-12 00:48:31','2023-02-12 00:48:31'),(93,'layout','[\"blog-post-left-sidebar\"]',2,'Botble\\Blog\\Models\\Post','2023-02-12 00:48:31','2023-02-12 00:48:31'),(94,'layout','[\"blog-post-full-width\"]',3,'Botble\\Blog\\Models\\Post','2023-02-12 00:48:31','2023-02-12 00:48:31'),(95,'layout','[\"blog-post-full-width\"]',4,'Botble\\Blog\\Models\\Post','2023-02-12 00:48:31','2023-02-12 00:48:31'),(96,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2023-02-12 00:48:32','2023-02-12 00:48:32'),(97,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2023-02-12 00:48:32','2023-02-12 00:48:32'),(98,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(99,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(100,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(101,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(102,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(103,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(104,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(105,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(106,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(107,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(108,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(109,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(110,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(111,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(112,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(113,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(114,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(115,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(116,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(117,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(118,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(119,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(120,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(121,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(122,'vi_subtitle','[\"S\\u1ea1ch s\\u1ebd h\\u00e0ng ng\\u00e0y v\\u1edbi \\nc\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a \\nch\\u00fang t\\u00f4i\"]',1,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(123,'vi_button_text','[\"Mua ngay\"]',1,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(124,'vi_subtitle','[\"N\\u1eabu b\\u1eefa s\\u00e1ng c\\u1ee7a b\\u1ea1n l\\u00e0nh m\\u1ea1nh v\\u00e0 d\\u1ec5 d\\u00e0ng\"]',2,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(125,'vi_button_text','[\"Mua ngay\"]',2,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(126,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',3,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(127,'vi_button_text','[\"Mua ngay\"]',3,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(128,'vi_subtitle','[\"Mang thi\\u00ean nhi\\u00ean v\\u00e0o ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n\"]',4,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(129,'vi_button_text','[\"Mua ngay\"]',4,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(130,'vi_subtitle','[\"Giao t\\u1eadn nh\\u00e0\"]',5,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(131,'vi_button_text','[\"Mua ngay\"]',5,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(132,'vi_subtitle','[\"Ti\\u1ebft ki\\u1ec7m 17% <br \\/> khi mua N\\u01b0\\u1edbc \\u00e9p <br \\/> Oganic\"]',6,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(133,'vi_button_text','[\"Mua ngay\"]',6,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(134,'vi_subtitle','[\"T\\u01b0\\u01a1i v\\u00e0 S\\u1ea1ch h\\u00e0ng ng\\u00e0y v\\u1edbi c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',7,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(135,'vi_button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(136,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',8,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(137,'vi_button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(138,'vi_subtitle','[\"T\\u01b0\\u01a1i m\\u1edbi m\\u1ed7i ng\\u00e0y v\\u1edbi\\n c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',9,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(139,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',9,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(140,'vi_subtitle','[\"100% \\u0111\\u1ea3m b\\u1ea3o t\\u1ea5t c\\u1ea3\\n c\\u00e1c m\\u1eb7t h\\u00e0ng t\\u01b0\\u01a1i\"]',10,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(141,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',10,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(142,'vi_subtitle','[\"Gi\\u1ea3m gi\\u00e1 h\\u00e0ng t\\u1ea1p h\\u00f3a\\n \\u0111\\u1eb7c bi\\u1ec7t trong th\\u00e1ng n\\u00e0y\"]',11,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(143,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',11,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(144,'vi_subtitle','[\"GI\\u1ea2M GI\\u00c1 15% cho t\\u1ea5t c\\u1ea3\\n rau v\\u00e0 tr\\u00e1i c\\u00e2y\"]',12,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(145,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',12,'Botble\\Ads\\Models\\Ads','2023-02-12 00:48:33','2023-02-12 00:48:33'),(146,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2023-02-12 00:48:37','2023-02-12 00:48:37'),(147,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2023-02-12 00:48:37','2023-02-12 00:48:37'),(148,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2023-02-12 00:48:37','2023-02-12 00:48:37'),(149,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2023-02-12 00:48:37','2023-02-12 00:48:37');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2020_11_18_150916_ads_create_ads_table',2),(26,'2021_12_02_035301_add_ads_translations_table',2),(27,'2015_06_29_025744_create_audit_history',3),(28,'2015_06_18_033822_create_blog_table',4),(29,'2021_02_16_092633_remove_default_value_for_author_type',4),(30,'2021_12_03_030600_create_blog_translations',4),(31,'2022_04_19_113923_add_index_to_table_posts',4),(32,'2016_06_17_091537_create_contacts_table',5),(33,'2020_03_05_041139_create_ecommerce_tables',6),(34,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(35,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(36,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(37,'2021_02_18_073505_update_table_ec_reviews',6),(38,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(39,'2021_03_10_025153_change_column_tax_amount',6),(40,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(41,'2021_04_28_074008_ecommerce_create_product_label_table',6),(42,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(43,'2021_06_28_153141_correct_slugs_data',6),(44,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(45,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(46,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(47,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(48,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(49,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(50,'2021_11_23_071403_correct_languages_for_product_variations',6),(51,'2021_11_28_031808_add_product_tags_translations',6),(52,'2021_12_01_031123_add_featured_image_to_ec_products',6),(53,'2022_01_01_033107_update_table_ec_shipments',6),(54,'2022_02_16_042457_improve_product_attribute_sets',6),(55,'2022_03_22_075758_correct_product_name',6),(56,'2022_04_19_113334_add_index_to_ec_products',6),(57,'2022_04_28_144405_remove_unused_table',6),(58,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(59,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(60,'2022_06_16_095633_add_index_to_some_tables',6),(61,'2022_06_30_035148_create_order_referrals_table',6),(62,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(63,'2022_08_14_032836_create_ec_order_returns_table',6),(64,'2022_08_14_033554_create_ec_order_return_items_table',6),(65,'2022_08_15_040324_add_billing_address',6),(66,'2022_08_30_091114_support_digital_products_table',6),(67,'2022_09_13_095744_create_options_table',6),(68,'2022_09_13_104347_create_option_value_table',6),(69,'2022_10_05_163518_alter_table_ec_order_product',6),(70,'2022_10_12_041517_create_invoices_table',6),(71,'2022_10_12_142226_update_orders_table',6),(72,'2022_10_13_024916_update_table_order_returns',6),(73,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(74,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(75,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(76,'2022_11_19_041643_add_ec_tax_product_table',6),(77,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(78,'2022_12_17_041532_fix_address_in_order_invoice',6),(79,'2022_12_26_070329_create_ec_product_views_table',6),(80,'2023_01_04_033051_fix_product_categories',6),(81,'2023_01_09_050400_add_ec_global_options_translations_table',6),(82,'2023_01_10_093754_add_missing_option_value_id',6),(83,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(84,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(85,'2018_07_09_221238_create_faq_table',7),(86,'2021_12_03_082134_create_faq_translations',7),(87,'2016_10_03_032336_create_languages_table',8),(88,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(89,'2021_12_03_075608_create_page_translations',9),(90,'2019_11_18_061011_create_country_table',10),(91,'2021_12_03_084118_create_location_translations',10),(92,'2021_12_03_094518_migrate_old_location_data',10),(93,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(94,'2022_01_16_085908_improve_plugin_location',10),(95,'2022_08_04_052122_delete_location_backup_tables',10),(96,'2022_10_29_065232_increase_states_abbreviation_column',10),(97,'2022_11_06_061847_increase_state_translations_abbreviation_column',10),(98,'2021_07_06_030002_create_marketplace_table',11),(99,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(100,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(101,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(102,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(103,'2021_12_06_031304_update_table_mp_customer_revenues',11),(104,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(105,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(106,'2022_11_02_071413_add_more_info_for_store',11),(107,'2022_11_02_080444_add_tax_info',11),(108,'2023_02_01_062030_add_store_translations',11),(109,'2017_10_24_154832_create_newsletter_table',12),(110,'2017_05_18_080441_create_payment_tables',13),(111,'2021_03_27_144913_add_customer_type_into_table_payments',13),(112,'2021_05_24_034720_make_column_currency_nullable',13),(113,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(114,'2021_10_19_020859_update_metadata_field',13),(115,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(116,'2022_07_07_153354_update_charge_id_in_table_payments',13),(117,'2017_07_11_140018_create_simple_slider_table',14),(118,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` int unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,7,1,690.00,0.00,690.00,0.00,'USD',NULL,'2023-02-10 08:48:42','2023-02-10 08:48:42',0,NULL),(2,4,2,378.00,0.00,378.00,0.00,'USD',NULL,'2023-02-10 06:48:42','2023-02-10 06:48:42',0,NULL),(3,5,3,242.00,0.00,242.00,0.00,'USD',NULL,'2023-02-09 00:48:42','2023-02-09 00:48:42',0,NULL),(4,7,5,115.00,0.00,115.00,690.00,'USD',NULL,'2023-02-09 12:48:42','2023-02-09 12:48:42',0,NULL),(5,7,8,2240.00,0.00,2240.00,805.00,'USD',NULL,'2023-02-08 06:48:42','2023-02-08 06:48:42',0,NULL),(6,5,11,73.00,0.00,73.00,242.00,'USD',NULL,'2023-02-07 00:48:42','2023-02-07 00:48:42',0,NULL),(7,2,14,1440.00,0.00,1440.00,0.00,'USD',NULL,'2023-02-03 06:48:43','2023-02-03 06:48:43',0,NULL),(8,5,15,130.00,0.00,130.00,315.00,'USD',NULL,'2023-02-05 08:48:43','2023-02-05 08:48:43',0,NULL),(9,5,18,260.00,0.00,260.00,445.00,'USD',NULL,'2023-01-27 04:48:43','2023-01-27 04:48:43',0,NULL),(10,2,23,129.00,0.00,129.00,1440.00,'USD',NULL,'2023-02-10 00:48:43','2023-02-10 00:48:43',0,NULL),(11,2,26,254.00,0.00,254.00,1569.00,'USD',NULL,'2023-01-25 00:48:43','2023-01-25 00:48:43',0,NULL),(12,5,31,121.00,0.00,121.00,705.00,'USD',NULL,'2023-01-16 08:48:44','2023-01-16 08:48:44',0,NULL),(13,4,34,123.00,0.00,123.00,378.00,'USD',NULL,'2023-01-25 12:48:44','2023-01-25 12:48:44',0,NULL),(14,4,38,342.00,0.00,342.00,501.00,'USD',NULL,'2023-01-26 18:48:44','2023-01-26 18:48:44',0,NULL),(15,2,40,110.00,0.00,110.00,1823.00,'USD',NULL,'2023-01-08 20:48:44','2023-01-08 20:48:44',0,NULL),(16,5,42,363.00,0.00,363.00,826.00,'USD',NULL,'2023-01-07 04:48:44','2023-01-07 04:48:44',0,NULL),(17,7,47,342.00,0.00,342.00,3045.00,'USD',NULL,'2023-01-19 00:48:45','2023-01-19 00:48:45',0,NULL),(18,4,48,113.00,0.00,113.00,843.00,'USD',NULL,'2023-01-02 04:48:45','2023-01-02 04:48:45',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,551.00,1933.00,'USD','','{\"name\":\"Isobel Wisoky\",\"number\":\"+12077783143\",\"full_name\":\"Dr. Alexander Daniel\",\"description\":\"Prof. Kavon Hahn III\"}',NULL,0,'completed',NULL,'2023-02-12 00:48:45','2023-02-12 00:48:45',NULL),(2,2,0.00,305.00,1382.00,'USD','','{\"name\":\"Isobel Wisoky\",\"number\":\"+12077783143\",\"full_name\":\"Dr. Alexander Daniel\",\"description\":\"Prof. Kavon Hahn III\"}',NULL,0,'pending',NULL,'2023-02-12 00:48:45','2023-02-12 00:48:45',NULL),(3,4,0.00,226.00,956.00,'USD','','{\"name\":\"Sandra Ratke\",\"number\":\"+12145168596\",\"full_name\":\"Ross Schaefer\",\"description\":\"Otha Buckridge\"}',NULL,0,'pending',NULL,'2023-02-12 00:48:45','2023-02-12 00:48:45',NULL),(4,4,0.00,170.00,730.00,'USD','','{\"name\":\"Sandra Ratke\",\"number\":\"+12145168596\",\"full_name\":\"Ross Schaefer\",\"description\":\"Otha Buckridge\"}',NULL,0,'pending',NULL,'2023-02-12 00:48:45','2023-02-12 00:48:45',NULL),(5,4,0.00,19.00,560.00,'USD','','{\"name\":\"Sandra Ratke\",\"number\":\"+12145168596\",\"full_name\":\"Ross Schaefer\",\"description\":\"Otha Buckridge\"}',NULL,0,'processing',NULL,'2023-02-12 00:48:46','2023-02-12 00:48:46',NULL),(6,5,0.00,280.00,1189.00,'USD','','{\"name\":\"Shakira Hane\",\"number\":\"+18202476025\",\"full_name\":\"Valentin Fisher\",\"description\":\"Tyrel Lang\"}',NULL,0,'pending',NULL,'2023-02-12 00:48:46','2023-02-12 00:48:46',NULL),(7,5,0.00,54.00,909.00,'USD','','{\"name\":\"Shakira Hane\",\"number\":\"+18202476025\",\"full_name\":\"Valentin Fisher\",\"description\":\"Tyrel Lang\"}',NULL,0,'completed',NULL,'2023-02-12 00:48:46','2023-02-12 00:48:46',NULL),(8,5,0.00,116.00,855.00,'USD','','{\"name\":\"Shakira Hane\",\"number\":\"+18202476025\",\"full_name\":\"Valentin Fisher\",\"description\":\"Tyrel Lang\"}',NULL,0,'pending',NULL,'2023-02-12 00:48:46','2023-02-12 00:48:46',NULL),(9,5,0.00,50.00,739.00,'USD','','{\"name\":\"Shakira Hane\",\"number\":\"+18202476025\",\"full_name\":\"Valentin Fisher\",\"description\":\"Tyrel Lang\"}',NULL,0,'processing',NULL,'2023-02-12 00:48:46','2023-02-12 00:48:46',NULL),(10,7,0.00,950.00,3387.00,'USD','','{\"name\":\"Alize Hodkiewicz Sr.\",\"number\":\"+12098003917\",\"full_name\":\"Cali Barton\",\"description\":\"D\'angelo Leffler\"}',NULL,0,'completed',NULL,'2023-02-12 00:48:46','2023-02-12 00:48:46',NULL),(11,7,0.00,129.00,2437.00,'USD','','{\"name\":\"Alize Hodkiewicz Sr.\",\"number\":\"+12098003917\",\"full_name\":\"Cali Barton\",\"description\":\"D\'angelo Leffler\"}',NULL,0,'completed',NULL,'2023-02-12 00:48:47','2023-02-12 00:48:47',NULL),(12,7,0.00,78.00,2308.00,'USD','','{\"name\":\"Alize Hodkiewicz Sr.\",\"number\":\"+12098003917\",\"full_name\":\"Cali Barton\",\"description\":\"D\'angelo Leffler\"}',NULL,0,'completed',NULL,'2023-02-12 00:48:47','2023-02-12 00:48:47',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','rebeka88@example.org','+19525896239','67074 Florian Field','GT','New Jersey','Lake Armando',2,'stores/1.png','Velit optio adipisci voluptatem qui ab accusamus.','Dolorum voluptatem omnis accusantium quia cum. Officiis similique adipisci maiores nulla corrupti et.','published',NULL,'2023-02-12 00:48:37','2023-02-12 00:48:37',NULL,NULL),(2,'Global Office','sandy.kihn@example.org','+19737083568','508 Simone Mount Apt. 278','SK','Alaska','Gladysbury',4,'stores/2.png','Alias cum repellat aliquid repudiandae cumque.','Eum odit exercitationem necessitatibus eligendi. Sequi enim iste ipsum eaque sequi. Est sint laboriosam aliquam est autem.','published',NULL,'2023-02-12 00:48:37','2023-02-12 00:48:37',NULL,NULL),(3,'Young Shop','thea98@example.com','+16785302208','37400 Heller Meadow','RW','Maryland','Jaimetown',5,'stores/3.png','Similique sed ad totam occaecati dolorum sint.','Culpa tenetur quo magni ea ipsam amet. Hic voluptatem qui sint sequi. Nulla in reiciendis facere architecto.','published',NULL,'2023-02-12 00:48:37','2023-02-12 00:48:37',NULL,NULL),(4,'Global Store','graham.kohler@example.com','+17748530438','883 Fritsch Run','AF','Minnesota','East Caitlynmouth',7,'stores/4.png','Ad dolorum consequatur in beatae omnis.','Id debitis quisquam ut omnis laudantium. Commodi at quam facere. Ad vero cumque omnis dolorem itaque voluptatum.','published',NULL,'2023-02-12 00:48:37','2023-02-12 00:48:37',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,1077.00,0.00,1933.00,'$2y$10$x2742Xm3KaCpQDLFPuF.p.NpbLKdHLr4ebLYRUfLbLzmQ2GPXASiG','{\"name\":\"Isobel Wisoky\",\"number\":\"+12077783143\",\"full_name\":\"Dr. Alexander Daniel\",\"description\":\"Prof. Kavon Hahn III\"}','2023-02-12 00:48:36','2023-02-12 00:48:45','bank_transfer',NULL),(2,4,541.00,0.00,956.00,'$2y$10$LZI8NFnfjK7Y5/vp6JPNIORWJUCMDs1eKFwegPRwg7DaPsPr/twIa','{\"name\":\"Sandra Ratke\",\"number\":\"+12145168596\",\"full_name\":\"Ross Schaefer\",\"description\":\"Otha Buckridge\"}','2023-02-12 00:48:37','2023-02-12 00:48:46','bank_transfer',NULL),(3,5,689.00,0.00,1189.00,'$2y$10$.zZVZ7FUBvsfRT3ekPlog.Nv1B1eEFdDKOXz.HgYt8dnM/gF6d/f6','{\"name\":\"Shakira Hane\",\"number\":\"+18202476025\",\"full_name\":\"Valentin Fisher\",\"description\":\"Tyrel Lang\"}','2023-02-12 00:48:37','2023-02-12 00:48:46','bank_transfer',NULL),(4,7,2230.00,0.00,3387.00,'$2y$10$KUe0.tqq6e0Le3VcdGg0SuYMUukSYwVXdC55YVXZ8k7yeEPy7xm9S','{\"name\":\"Alize Hodkiewicz Sr.\",\"number\":\"+12098003917\",\"full_name\":\"Cali Barton\",\"description\":\"D\'angelo Leffler\"}','2023-02-12 00:48:37','2023-02-12 00:48:47','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',NULL,'published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',NULL,'published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(7,'About us','<p>Gryphon, and, taking Alice by the Hatter, \'when the Queen said severely \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said the young lady to see some meaning in it,\' but none of them can explain it,\' said Alice, seriously, \'I\'ll have nothing more to be a footman in livery came running out of its right ear and left foot, so as to go on with the bones and the baby--the fire-irons came first; then followed a shower of little pebbles came rattling in at the frontispiece if you only walk long.</p><p>And the executioner myself,\' said the Duchess, \'and that\'s the queerest thing about it.\' (The jury all brightened up again.) \'Please your Majesty,\' he began. \'You\'re a very short time the Queen was to eat some of the trees had a consultation about this, and Alice guessed in a very deep well. Either the well was very fond of pretending to be no doubt that it was the matter on, What would become of it; and the beak-- Pray how did you ever saw. How she longed to change them--\' when she got to.</p><p>No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you, old fellow?\' The Mock Turtle repeated thoughtfully. \'I should have croqueted the Queen\'s ears--\' the Rabbit was no more to do next, when suddenly a footman in livery came running out of sight: \'but it seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the Caterpillar took the watch and looked at each other for some time.</p><p>King said, for about the reason is--\' here the conversation dropped, and the executioner ran wildly up and to wonder what they WILL do next! If they had to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a mournful tone, \'he won\'t do a thing before, and behind it was YOUR table,\' said Alice; not that she ran with all her riper years, the simple and loving heart of her voice, and the Dormouse again, so violently, that she was a large crowd collected round it: there were ten of them.</p>',1,NULL,'right-sidebar',NULL,'published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(9,'Terms &amp; Conditions','<p>Queen\'s voice in the shade: however, the moment she appeared; but she stopped hastily, for the pool was getting so far off). \'Oh, my poor little thing sat down a good deal: this fireplace is narrow, to be Involved in this way! Stop this moment, and fetch me a good many voices all talking together: she made out what she was shrinking rapidly; so she went back for a little bit of stick, and tumbled head over heels in its hurry to change the subject of conversation. \'Are you--are you fond--of--of.</p><p>Alice, so please your Majesty!\' the soldiers shouted in reply. \'Idiot!\' said the Dormouse said--\' the Hatter went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was not a moment like a serpent. She had not a bit afraid of them!\' \'And who is Dinah, if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in the air: it puzzled her a good deal frightened by this time?\' she said to herself. \'Of the mushroom,\'.</p><p>The Hatter shook his head sadly. \'Do I look like one, but the Hatter said, turning to Alice with one foot. \'Get up!\' said the Mock Turtle: \'crumbs would all wash off in the kitchen. \'When I\'M a Duchess,\' she said to live. \'I\'ve seen a good many voices all talking together: she made some tarts, All on a summer day: The Knave of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen. \'Can you play croquet with the other: the only difficulty was, that you weren\'t to talk.</p><p>ME,\' but nevertheless she uncorked it and put back into the air off all its feet at the window, and some were birds,) \'I suppose they are the jurors.\' She said the Gryphon. \'Of course,\' the Gryphon at the place where it had come to the seaside once in a game of play with a T!\' said the Queen, \'and he shall tell you his history,\' As they walked off together, Alice heard it before,\' said Alice,) and round Alice, every now and then Alice put down the chimney, has he?\' said Alice to herself.</p>',1,NULL,'default',NULL,'published','2023-02-12 00:48:32','2023-02-12 00:48:32'),(10,'Returns &amp; Exchanges','<p>White Rabbit as he wore his crown over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, and, after glaring at her for a conversation. \'You don\'t know of any that do,\' Alice said to Alice. \'What sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, because some of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' He got behind him, and said to Alice, \'Have you seen the Mock Turtle yet?\' \'No,\' said the.</p><p>Alice thought the whole party swam to the Dormouse, without considering at all anxious to have him with them,\' the Mock Turtle; \'but it doesn\'t matter much,\' thought Alice, \'it\'ll never do to ask: perhaps I shall think nothing of the earth. Let me think: was I the same age as herself, to see anything; then she remembered trying to invent something!\' \'I--I\'m a little worried. \'Just about as curious as it didn\'t sound at all the first really clever thing the King put on his flappers, \'--Mystery.</p><p>Gryphon. Alice did not get dry again: they had to leave off this minute!\' She generally gave herself very good advice, (though she very seldom followed it), and sometimes shorter, until she made her so savage when they met in the air. This time there could be no chance of this, so she sat down at her hands, wondering if anything would EVER happen in a trembling voice to a farmer, you know, with oh, such long ringlets, and mine doesn\'t go in ringlets at all; and I\'m sure I can\'t tell you my.</p><p>Mock Turtle repeated thoughtfully. \'I should have croqueted the Queen\'s ears--\' the Rabbit whispered in a shrill, loud voice, and see how he can EVEN finish, if he thought it would feel with all their simple sorrows, and find a pleasure in all my life!\' Just as she picked her way into that beautiful garden--how IS that to be true): If she should meet the real Mary Ann, what ARE you talking to?\' said the Footman, \'and that for two reasons. First, because I\'m on the same size: to be talking in a.</p>',1,NULL,'default',NULL,'published','2023-02-12 00:48:32','2023-02-12 00:48:32'),(11,'Shipping &amp; Delivery','<p>And so it was addressed to the seaside once in the house, and found quite a commotion in the newspapers, at the Hatter, and here the conversation a little. \'\'Tis so,\' said Alice. \'What IS a Caucus-race?\' said Alice; \'all I know THAT well enough; don\'t be particular--Here, Bill! catch hold of anything, but she stopped hastily, for the immediate adoption of more broken glass.) \'Now tell me, Pat, what\'s that in some book, but I THINK I can reach the key; and if I shall have to beat them off, and.</p><p>KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, \'as all the players, except the Lizard, who seemed too much pepper in that poky little house, on the ground near the looking-glass. There was certainly English. \'I don\'t quite understand you,\' she said, as politely as she was out of sight. Alice remained looking thoughtfully at the Caterpillar\'s making such VERY short remarks, and she very good-naturedly began hunting about for it, while the Mouse was swimming away from her as she left.</p><p>Pigeon; \'but I know THAT well enough; and what does it to make the arches. The chief difficulty Alice found at first was moderate. But the insolence of his great wig.\' The judge, by the end of the words don\'t FIT you,\' said the King: \'however, it may kiss my hand if it please your Majesty!\' the Duchess and the jury asked. \'That I can\'t understand it myself to begin again, it was over at last, with a teacup in one hand and a bright idea came into her face, and large eyes like a Jack-in-the-box.</p><p>Alice. The King laid his hand upon her arm, and timidly said \'Consider, my dear: she is of mine, the less there is of mine, the less there is of mine, the less there is of mine, the less there is of yours.\"\' \'Oh, I BEG your pardon!\' she exclaimed in a trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the capital of Paris, and Paris is the same thing as a cushion, resting their elbows on it, (\'which certainly.</p>',1,NULL,'default',NULL,'published','2023-02-12 00:48:32','2023-02-12 00:48:32'),(12,'Privacy Policy','<p>All the time they were lying on the second verse of the edge with each hand. \'And now which is which?\' she said to herself; \'his eyes are so VERY remarkable in that; nor did Alice think it so quickly that the meeting adjourn, for the end of the room again, no wonder she felt sure she would keep, through all her knowledge of history, Alice had no very clear notion how long ago anything had happened.) So she began thinking over other children she knew, who might do something better with the.</p><p>Hatter: \'I\'m on the look-out for serpents night and day! Why, I do it again and again.\' \'You are old,\' said the Footman, \'and that for the baby, and not to her, though, as they were mine before. If I or she fell very slowly, for she had found her way through the wood. \'If it had no very clear notion how delightful it will be much the same thing as \"I eat what I like\"!\' \'You might just as if he doesn\'t begin.\' But she waited for a minute or two sobs choked his voice. \'Same as if she did it at.</p><p>Alice asked. \'We called him a fish)--and rapped loudly at the door--I do wish they COULD! I\'m sure she\'s the best way to explain the mistake it had VERY long claws and a bright idea came into her face, and large eyes like a telescope.\' And so it was her dream:-- First, she dreamed of little cartwheels, and the three gardeners, but she ran off as hard as it could go, and making faces at him as he spoke, and the turtles all advance! They are waiting on the top with its head, it WOULD twist.</p><p>Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not stoop? Soup of the e--e--evening, Beautiful, beautiful Soup! Soup of the trial.\' \'Stupid things!\' Alice began telling them her adventures from the sky! Ugh, Serpent!\' \'But I\'m not used to do:-- \'How doth the little--\"\' and she put them into a pig, and she heard her voice close to her head, she tried to look for her, and the two sides of the Lobster Quadrille?\' the Gryphon said to herself.</p>',1,NULL,'default',NULL,'published','2023-02-12 00:48:32','2023-02-12 00:48:32'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',NULL,'published','2023-02-12 00:48:32','2023-02-12 00:48:32'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',NULL,'published','2023-02-12 00:48:32','2023-02-12 00:48:32'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',NULL,'published','2023-02-12 00:48:32','2023-02-12 00:48:32'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-02-12 00:48:32','2023-02-12 00:48:32'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-02-12 00:48:32','2023-02-12 00:48:32'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2023-02-12 00:48:32','2023-02-12 00:48:32');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',4,'Trang chủ 4',NULL,'<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',5,'Tin tức',NULL,'<p>---</p>'),('vi',6,'Liên hệ',NULL,'<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>'),('vi',7,'Về chúng tôi',NULL,'<p>Next came the royal children, and everybody laughed, \'Let the jury wrote it down \'important,\' and some of the mushroom, and raised herself to about two feet high: even then she remembered having seen in her life, and had come to an end! \'I wonder what CAN have happened to you? Tell us all about for them, and all that,\' he said do. Alice looked all round her, about four feet high. \'Whoever lives there,\' thought Alice, as she could not think of any use, now,\' thought poor Alice, and looking.</p><p>I can remember feeling a little scream, half of them--and it belongs to the door. \'Call the first witness,\' said the Footman, and began singing in its hurry to change the subject. \'Ten hours the first minute or two to think that very few things indeed were really impossible. There seemed to follow, except a little faster?\" said a timid and tremulous sound.] \'That\'s different from what I should like to be lost: away went Alice like the look of it altogether; but after a pause: \'the reason is.</p><p>Hatter trembled so, that Alice quite hungry to look through into the garden at once; but, alas for poor Alice! when she next peeped out the proper way of speaking to a farmer, you know, and he poured a little three-legged table, all made of solid glass; there was generally a ridge or furrow in the book,\' said the White Rabbit as he spoke. \'A cat may look at me like that!\' \'I couldn\'t afford to learn it.\' said the King and Queen of Hearts, he stole those tarts, And took them quite away!\'.</p><p>Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took no notice of her head struck against the roof of the tea--\' \'The twinkling of the Mock Turtle in the lap of her head to feel which way it was over at last: \'and I do it again and again.\' \'You are all pardoned.\' \'Come, THAT\'S a good deal frightened by this very sudden change, but very glad to get into that lovely garden.</p>'),('vi',8,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',9,'Điều kiện và điều khoản',NULL,'<p>King replied. Here the other was sitting next to her. The Cat seemed to think about it, you know--\' \'What did they draw?\' said Alice, rather doubtfully, as she couldn\'t answer either question, it didn\'t sound at all like the Mock Turtle repeated thoughtfully. \'I should have croqueted the Queen\'s voice in the face. \'I\'ll put a stop to this,\' she said to the part about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be.</p><p>Long Tale They were indeed a queer-looking party that assembled on the trumpet, and called out, \'First witness!\' The first witness was the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course not,\' said the King. \'I can\'t remember things as I used--and I don\'t believe there\'s an atom of meaning in it, \'and what is the same tone, exactly as if she had peeped into the book her sister kissed her, and said, very gravely, \'I think, you ought to be managed? I suppose Dinah\'ll be sending me.</p><p>I should think you could draw treacle out of sight: \'but it doesn\'t matter which way she put it. She went on at last, and they all looked so grave that she was holding, and she swam nearer to make out exactly what they WILL do next! As for pulling me out of the shelves as she tucked it away under her arm, that it felt quite unhappy at the cook was leaning over the edge of her ever getting out of breath, and till the puppy\'s bark sounded quite faint in the distance, sitting sad and lonely on a.</p><p>Just then she noticed that they couldn\'t get them out again. The Mock Turtle said: \'advance twice, set to work very diligently to write this down on one knee as he spoke, and the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was certainly not becoming. \'And that\'s the queerest thing about it.\' (The jury all brightened up again.) \'Please your Majesty,\' said the King, \'that only makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own.</p>'),('vi',10,'Chính sách trả hàng',NULL,'<p>Alice went on, taking first one side and then she heard a little ledge of rock, and, as she went on. \'Or would you like to go near the looking-glass. There was no \'One, two, three, and away,\' but they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' He got behind Alice as it went. So she began: \'O Mouse, do you mean that you have just been reading about; and when Alice had begun to dream that she was quite tired of being upset, and their.</p><p>Duchess was sitting between them, fast asleep, and the other ladder?--Why, I hadn\'t begun my tea--not above a week or so--and what with the bread-and-butter getting so used to call him Tortoise--\' \'Why did you do lessons?\' said Alice, (she had grown to her ear, and whispered \'She\'s under sentence of execution. Then the Queen said to the shore. CHAPTER III. A Caucus-Race and a Long Tale They were just beginning to grow up any more questions about it, so she began nursing her child again.</p><p>The poor little thing sat down in a shrill, passionate voice. \'Would YOU like cats if you only walk long enough.\' Alice felt a little queer, won\'t you?\' \'Not a bit,\' she thought it over a little timidly, for she had plenty of time as she went slowly after it: \'I never saw one, or heard of uglifying!\' it exclaimed. \'You know what a delightful thing a Lobster Quadrille The Mock Turtle went on. Her listeners were perfectly quiet till she too began dreaming after a few minutes she heard something.</p><p>Hatter, \'when the Queen was to find that she did not get hold of anything, but she ran off as hard as it spoke. \'As wet as ever,\' said Alice to herself, \'after such a hurry to change the subject. \'Go on with the edge of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'it\'s very easy to know when the tide rises and sharks are around, His voice has a timid voice at her with large eyes full of the creature, but on second thoughts she decided on going into the wood to listen.</p>'),('vi',11,'Chính sách vận chuyển',NULL,'<p>I think.\' And she went on again:-- \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse did not get dry very soon. \'Ahem!\' said the Gryphon. \'I\'ve forgotten the little thing howled so, that he had to stop and untwist it. After a while she was ever to get her head in the same size: to be talking in a natural way again. \'I should like to see it written up somewhere.\' Down, down, down. Would the fall was over. However, when they had any dispute with the.</p><p>And the Eaglet bent down its head impatiently, and said, very gravely, \'I think, you ought to be sure, she had but to open her mouth; but she got up and said, without opening its eyes, \'Of course, of course; just what I could show you our cat Dinah: I think it was,\' said the Mock Turtle yet?\' \'No,\' said the King, and the second verse of the jurymen. \'It isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the King and the bright flower-beds and the other was sitting next to her. The Cat only.</p><p>King, \'that saves a world of trouble, you know, as we were. My notion was that she knew that it might be hungry, in which case it would be grand, certainly,\' said Alice, who had followed him into the darkness as hard as he found it made no mark; but he would deny it too: but the Dodo replied very solemnly. Alice was so large in the way YOU manage?\' Alice asked. The Hatter looked at Alice. \'I\'M not a bit of mushroom, and raised herself to some tea and bread-and-butter, and went in. The door led.</p><p>I\'m never sure what I\'m going to say,\' said the Eaglet. \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the King repeated angrily, \'or I\'ll have you got in your knocking,\' the Footman went on eagerly. \'That\'s enough about lessons,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not quite like the tone of great curiosity. \'Soles and eels, of course,\' the Mock Turtle a little startled when she got up this morning? I almost wish I could shut up.</p>'),('vi',12,'Chính sách bảo mật',NULL,'<p>Alice opened the door began sneezing all at once. \'Give your evidence,\' the King in a natural way again. \'I wonder if I was, I shouldn\'t want YOURS: I don\'t believe you do lessons?\' said Alice, (she had grown so large in the flurry of the Lobster Quadrille?\' the Gryphon went on. \'I do,\' Alice said to the jury. They were indeed a queer-looking party that assembled on the other bit. Her chin was pressed so closely against her foot, that there was hardly room for her. \'Yes!\' shouted Alice. \'Come.</p><p>Suppress him! Pinch him! Off with his tea spoon at the top with its head, it WOULD twist itself round and round the table, but it is.\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice, \'but I must sugar my hair.\" As a duck with its wings. \'Serpent!\' screamed the Gryphon. \'Then, you know,\' Alice gently remarked; \'they\'d have been changed in the book,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, \'it would have made a dreadfully ugly child: but it just at first.</p><p>D,\' she added in an impatient tone: \'explanations take such a nice soft thing to nurse--and she\'s such a simple question,\' added the Hatter, and here the conversation a little. \'\'Tis so,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the Cat. \'--so long as there was a general clapping of hands at this: it was in managing her flamingo: she succeeded in curving it down into a tree. By the time it vanished quite slowly, beginning with the Mouse only shook its head.</p><p>YET,\' she said to herself, and began by producing from under his arm a great hurry. \'You did!\' said the King, \'and don\'t look at all for any lesson-books!\' And so it was YOUR table,\' said Alice; \'I daresay it\'s a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Queen said severely \'Who is this?\' She said the Lory positively refused to tell me who YOU are, first.\' \'Why?\' said the Hatter. He had been of late much accustomed to usurpation and conquest. Edwin and.</p>'),('vi',13,'Blog danh sách',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',14,'Blog Lớn',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',15,'Blog Rộng',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',16,'Trang chủ 5',NULL,'<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',17,'Trang chủ 6',NULL,'<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"Bạn đang tìm kiếm sản phẩm?\"][/big-banner]</div><div>[trending-products title=\"Các mặt hàng thịnh hành\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',18,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'S4Z4CABKIR','sslcommerz',NULL,690.00,1,'completed','confirm',8,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'MURA3JFZIP','mollie',NULL,378.00,2,'completed','confirm',8,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'2OQRSGFYBC','paystack',NULL,242.00,3,'completed','confirm',8,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'CLV4P8J8VO','bank_transfer',NULL,126.00,4,'pending','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'A479KNGU8Z','sslcommerz',NULL,115.00,5,'completed','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'NUZQUYIWHV','bank_transfer',NULL,330.00,6,'pending','confirm',6,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'DZ7LX0TZNT','stripe',NULL,121.00,7,'completed','confirm',6,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'Q3GZMH6JWB','sslcommerz',NULL,2240.00,8,'completed','confirm',1,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'UAQDYUA9CB','mollie',NULL,219.00,9,'completed','confirm',1,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'E22AR6DLQJ','stripe',NULL,615.00,10,'completed','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'ERJ0N2VQUP','razorpay',NULL,73.00,11,'completed','confirm',8,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'ZRIJNI1WVM','stripe',NULL,472.00,12,'completed','confirm',8,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'UTRVDQ3SP8','bank_transfer',NULL,2390.00,13,'pending','confirm',6,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'THEJTA8BB9','paystack',NULL,1440.00,14,'completed','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'K7NLFHBZ02','paypal',NULL,130.00,15,'completed','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'THPTT3GQCW','sslcommerz',NULL,114.00,16,'completed','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'EFBAMBY1S9','stripe',NULL,448.00,17,'completed','confirm',6,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'X3C45CCGGS','sslcommerz',NULL,260.00,18,'completed','confirm',6,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'QKLCDBWRBG','paystack',NULL,118.00,19,'completed','confirm',6,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'3KYU6PCSM6','razorpay',NULL,220.00,20,'completed','confirm',6,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'PGFQWCS4YE','paystack',NULL,448.00,21,'completed','confirm',9,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'N8K5KPC4II','cod',NULL,144.00,22,'pending','confirm',9,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'BZFEAFM6GQ','stripe',NULL,129.00,23,'completed','confirm',9,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'UUUXR7CCSK','bank_transfer',NULL,2240.00,24,'pending','confirm',8,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'FG2LDASNLI','cod',NULL,146.00,25,'pending','confirm',8,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'TJ4QS7OVRM','razorpay',NULL,254.00,26,'completed','confirm',8,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'U3PQACCZFR','bank_transfer',NULL,192.00,27,'pending','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'PXNE5VJJEK','mollie',NULL,115.00,28,'completed','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'HH80ZJRUME','mollie',NULL,369.00,29,'completed','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'6E5Q8KUSMF','sslcommerz',NULL,237.00,30,'completed','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'9X3MWQMAPB','stripe',NULL,121.00,31,'completed','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'BDU1BX0X9M','mollie',NULL,219.00,32,'completed','confirm',9,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'J9Q2R7O98K','cod',NULL,732.00,33,'pending','confirm',9,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'I8ALPDO3HI','razorpay',NULL,123.00,34,'completed','confirm',9,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'QDB5D32OEJ','cod',NULL,900.00,35,'pending','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'UIDVGOX8AG','cod',NULL,381.00,36,'pending','confirm',3,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'GWNFPMBFSB','mollie',NULL,96.00,37,'completed','confirm',10,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'UPFALTOS2I','paystack',NULL,342.00,38,'completed','confirm',10,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'GWO32MMS8H','sslcommerz',NULL,357.00,39,'completed','confirm',10,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'SXCLVQEXDQ','paypal',NULL,110.00,40,'completed','confirm',6,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'4IIXWKCAHH','stripe',NULL,336.00,41,'completed','confirm',6,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'XPD3RB2MDK','sslcommerz',NULL,363.00,42,'completed','confirm',6,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'DWGR18GFXL','paystack',NULL,480.00,43,'completed','confirm',10,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'SZKCR5YSJ8','razorpay',NULL,388.00,44,'completed','confirm',10,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'L7HQOXDGPE','mollie',NULL,123.00,45,'completed','confirm',10,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'8Q1YXXROOD','cod',NULL,378.00,46,'pending','confirm',1,NULL,NULL,'2023-02-12 00:48:41','2023-02-12 00:48:41','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'BLNQ1QOR1D','razorpay',NULL,342.00,47,'completed','confirm',1,NULL,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'DRJICKIJAP','stripe',NULL,113.00,48,'completed','confirm',8,NULL,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'1WQLONGHW5','bank_transfer',NULL,127.00,49,'pending','confirm',8,NULL,NULL,'2023-02-12 00:48:42','2023-02-12 00:48:42','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,3,1),(3,1,2),(4,3,2),(5,2,3),(6,3,3),(7,2,4),(8,4,4),(9,2,5),(10,4,5),(11,1,6),(12,3,6),(13,2,7),(14,3,7),(15,1,8),(16,4,8),(17,1,9),(18,4,9),(19,1,10),(20,3,10),(21,2,11),(22,3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.png',2019,NULL,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.png',750,NULL,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.png',2324,NULL,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.png',1156,NULL,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.png',223,NULL,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.png',1349,NULL,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.png',946,NULL,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.png',1463,NULL,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.png',2423,NULL,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.png',932,NULL,'2023-02-12 00:48:31','2023-02-12 00:48:31'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.png',1718,NULL,'2023-02-12 00:48:31','2023-02-12 00:48:31');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',5,'Cách Chăm sóc Túi Da','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,'2023-02-12 00:48:15'),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'ecommerce_store_name','Nest',NULL,NULL),(9,'ecommerce_store_phone','18006268',NULL,NULL),(10,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(11,'ecommerce_store_state','Singapore',NULL,NULL),(12,'ecommerce_store_city','Singapore',NULL,NULL),(13,'ecommerce_store_country','SG',NULL,NULL),(14,'media_random_hash','7254caa119d4d3fa9e101d89f2b33ef4',NULL,NULL),(15,'permalink-botble-blog-models-post','blog',NULL,NULL),(16,'permalink-botble-blog-models-category','blog',NULL,NULL),(17,'payment_cod_status','1',NULL,NULL),(18,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(19,'payment_bank_transfer_status','1',NULL,NULL),(20,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(21,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(22,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(23,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(24,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(25,'simple_slider_using_assets','0',NULL,NULL),(26,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(28,'theme','nest',NULL,NULL),(29,'admin_favicon','general/favicon.png',NULL,NULL),(30,'admin_logo','general/logo.png',NULL,NULL),(31,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(32,'theme-nest-seo_description','Nest is an attractive Laravel multivendor eCommerce script specially designed for the multipurpose shops like mega store, grocery store, supermarket, organic shop, and online stores selling products like beverages, vegetables, fruits, ice creams, paste, herbs, juice, meat, cold drinks, sausages, cocktails, soft drinks, cookies…',NULL,NULL),(33,'theme-nest-copyright','Copyright © 2021 Nest all rights reserved. Powered by Botble.',NULL,NULL),(34,'theme-nest-favicon','general/favicon.png',NULL,NULL),(35,'theme-nest-logo','general/logo.png',NULL,NULL),(36,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(37,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(38,'theme-nest-hotline','1900 - 888',NULL,NULL),(39,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(40,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(41,'theme-nest-homepage_id','1',NULL,NULL),(42,'theme-nest-blog_page_id','5',NULL,NULL),(43,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(44,'theme-nest-cookie_consent_learn_more_url','https://nest.test/cookie-policy',NULL,NULL),(45,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(46,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(47,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(48,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(49,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(50,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(51,'theme-nest-image_in_login_page','general/login-1.png',NULL,NULL),(52,'theme-nest-number_of_products_per_page','12',NULL,NULL),(53,'theme-nest-preloader_enabled','yes',NULL,NULL),(54,'theme-nest-preloader_version','v2',NULL,NULL),(55,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(56,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(57,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(58,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(59,'theme-nest-vi-font_text','Roboto Condensed',NULL,NULL),(60,'theme-nest-vi-copyright','Bản quyền © 2021 Nest tất cả quyền đã được bảo hộ. Phát triển bởi Botble.',NULL,NULL),(61,'theme-nest-vi-working_hours','10:00 - 18:00, Thứ Hai - Thứ Bảy',NULL,NULL),(62,'theme-nest-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(63,'theme-nest-vi-cookie_consent_learn_more_url','https://nest.test/cookie-policy',NULL,NULL),(64,'theme-nest-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(65,'theme-nest-vi-homepage_id','1',NULL,NULL),(66,'theme-nest-vi-blog_page_id','5',NULL,NULL),(67,'theme-nest-vi-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]',NULL,NULL),(68,'theme-nest-vi-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br /> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2023-02-12 00:48:29','2023-02-12 00:48:29'),(2,1,'Fresh Vegetables<br />\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(3,2,'Don’t miss amazing<br /> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(4,2,'Fresh Vegetables<br />\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(5,3,'Don’t miss amazing<br /> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(6,3,'Fresh Vegetables<br />\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(7,4,'Don’t miss amazing<br /> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(8,4,'Fresh Vegetables<br />\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(9,5,'Don’t miss amazing<br /> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(10,5,'Fresh Vegetables<br />\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(11,6,'Don’t miss amazing<br /> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(18,8,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/1-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(19,8,'Rau tươi <br />Giảm giá lớn','sliders/1-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(20,9,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/2-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(21,9,'Rau tươi <br />Giảm giá lớn','sliders/2-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(22,10,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/3-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(23,10,'Rau tươi <br />Giảm giá lớn','sliders/3-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(24,11,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/4-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(25,11,'Rau tươi <br />Giảm giá lớn','sliders/4-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(26,12,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/5-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(27,12,'Rau tươi <br />Giảm giá lớn','sliders/5-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(28,13,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/6-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(29,14,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(30,14,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(31,14,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(32,14,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(33,14,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2023-02-12 00:48:30','2023-02-12 00:48:30'),(34,14,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2023-02-12 00:48:30','2023-02-12 00:48:30');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2023-02-12 00:48:29','2023-02-12 00:48:29'),(2,'Home slider 2','home-slider-2',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(3,'Home slider 3','home-slider-3',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(4,'Home slider 4','home-slider-4',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(5,'Home slider 5','home-slider-5',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(6,'Home slider 6','home-slider-6',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(8,'Slider trang chủ 1','slider-trang-chu-1',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(9,'Slider trang chủ 2','slider-trang-chu-2',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(10,'Slider trang chủ 3','slider-trang-chu-3',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(11,'Slider trang chủ 4','slider-trang-chu-4',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(12,'Slider trang chủ 5','slider-trang-chu-5',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(13,'Slider trang chủ 6','slider-trang-chu-6',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30'),(14,'Slider blog 1','slider-blog-1',NULL,'published','2023-02-12 00:48:30','2023-02-12 00:48:30');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-12 00:48:15','2023-02-12 00:48:15'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-12 00:48:15','2023-02-12 00:48:15'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-12 00:48:15','2023-02-12 00:48:15'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-12 00:48:15','2023-02-12 00:48:15'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-12 00:48:15','2023-02-12 00:48:15'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-12 00:48:15','2023-02-12 00:48:15'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-02-12 00:48:15','2023-02-12 00:48:15'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-02-12 00:48:17','2023-02-12 00:48:17'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-02-12 00:48:17','2023-02-12 00:48:17'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-02-12 00:48:17','2023-02-12 00:48:17'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-02-12 00:48:17','2023-02-12 00:48:17'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-02-12 00:48:17','2023-02-12 00:48:17'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-02-12 00:48:17','2023-02-12 00:48:17'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:23','2023-02-12 00:48:23'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2023-02-12 00:48:24','2023-02-12 00:48:24'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-02-12 00:48:31','2023-02-12 00:48:31'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-02-12 00:48:31','2023-02-12 00:48:31'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-02-12 00:48:31','2023-02-12 00:48:31'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-02-12 00:48:31','2023-02-12 00:48:31'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-02-12 00:48:31','2023-02-12 00:48:31'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(61,'sexy-clutches-how-to-buy-amp-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-02-12 00:48:31','2023-02-12 00:48:32'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:31','2023-02-12 00:48:31'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:31','2023-02-12 00:48:31'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:31','2023-02-12 00:48:31'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:31','2023-02-12 00:48:31'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:31','2023-02-12 00:48:31'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:31','2023-02-12 00:48:31'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:31','2023-02-12 00:48:31'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:32','2023-02-12 00:48:32'),(79,'terms-amp-conditions',9,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:32','2023-02-12 00:48:32'),(80,'returns-amp-exchanges',10,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:32','2023-02-12 00:48:32'),(81,'shipping-amp-delivery',11,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:32','2023-02-12 00:48:32'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:32','2023-02-12 00:48:32'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:32','2023-02-12 00:48:32'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:32','2023-02-12 00:48:32'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:32','2023-02-12 00:48:32'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:32','2023-02-12 00:48:32'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:32','2023-02-12 00:48:32'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2023-02-12 00:48:32','2023-02-12 00:48:32'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2023-02-12 00:48:37','2023-02-12 00:48:37'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2023-02-12 00:48:37','2023-02-12 00:48:37'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2023-02-12 00:48:37','2023-02-12 00:48:37'),(92,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2023-02-12 00:48:37','2023-02-12 00:48:37');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-02-12 00:48:31','2023-02-12 00:48:31'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-02-12 00:48:31','2023-02-12 00:48:31');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$/Sb7tI.Jxlx6AcRZDzZTu.0e9CLr3zg5iqkgkTiBW0SRqcu0xw4Qm',NULL,'2023-02-12 00:48:32','2023-02-12 00:48:32','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(13,'PriceFilterWidget','product_sidebar','nest',2,'{\"id\":\"PriceFilterWidget\",\"name\":\"Filter by price\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(14,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(15,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(16,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(17,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(18,'SiteInfoWidget','footer_sidebar','nest-vi',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"about\":\"M\\u1eabu trang web c\\u1eeda h\\u00e0ng t\\u1ea1p h\\u00f3a tuy\\u1ec7t v\\u1eddi\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Th\\u1ee9 2 - Th\\u1ee9 7\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(19,'CustomMenuWidget','footer_sidebar','nest-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(20,'CustomMenuWidget','footer_sidebar','nest-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(21,'CustomMenuWidget','footer_sidebar','nest-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(22,'BlogSearchWidget','primary_sidebar','nest-vi',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(23,'BlogCategoriesWidget','primary_sidebar','nest-vi',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(24,'RecentPostsWidget','primary_sidebar','nest-vi',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(25,'TagsWidget','primary_sidebar','nest-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(26,'ProductCategoriesWidget','product_sidebar','nest-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(27,'FeaturedProductsWidget','product_sidebar','nest-vi',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(28,'FeaturedBrandsWidget','product_sidebar','nest-vi',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(29,'NewsletterWidget','pre_footer_sidebar','nest-vi',0,'{\"id\":\"NewsletterWidget\",\"title\":\"\\u1ede nh\\u00e0 & \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u <br \\/> h\\u00e0ng ng\\u00e0y c\\u1ee7a b\\u1ea1n t\\u1eeb c\\u1eeda h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i\",\"subtitle\":\"B\\u1eaft \\u0111\\u1ea7u mua s\\u1eafm v\\u1edbi <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2023-02-12 00:48:33','2023-02-12 00:48:33'),(30,'SiteFeaturesWidget','pre_footer_sidebar','nest-vi',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Gi\\u00e1 & \\u01b0u \\u0111\\u00e3i t\\u1ed1t nh\\u1ea5t\",\"subtitle\":\"Cho \\u0111\\u01a1n h\\u00e0ng t\\u1eeb $50\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Mi\\u1ec5n ph\\u00ed v\\u1eadn chuy\\u1ec3n\",\"subtitle\":\"D\\u1ecbch v\\u1ee5 tuy\\u1ec7t v\\u1eddi 24\\/7\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"\\u01afu \\u0111\\u00e3i h\\u00e0ng ng\\u00e0y\",\"subtitle\":\"Khi b\\u1ea1n \\u0111\\u0103ng k\\u00fd\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Nhi\\u1ec1u m\\u1eb7t h\\u00e0ng\",\"subtitle\":\"Gi\\u1ea3m gi\\u00e1 c\\u1ef1c l\\u1edbn\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"D\\u1ec5 d\\u00e0ng ho\\u00e0n tr\\u1ea3\",\"subtitle\":\"Trong v\\u00f2ng 30 ng\\u00e0y\"}}}','2023-02-12 00:48:33','2023-02-12 00:48:33');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-12 14:49:22