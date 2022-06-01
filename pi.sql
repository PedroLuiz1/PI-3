-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: PI
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `units` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,1,1,2,'2022-05-28 21:25:10','2022-05-28 22:23:05');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Brasil','2022-05-28 20:51:58','2022-05-28 20:51:58',NULL),(2,'Alemanha','2022-05-28 21:02:01','2022-05-28 21:02:01',NULL),(3,'França','2022-05-28 21:02:12','2022-05-28 21:02:12',NULL),(4,'Inglaterra','2022-05-28 21:02:39','2022-05-28 21:02:39',NULL),(5,'Espanha','2022-05-28 21:02:46','2022-05-28 21:02:46',NULL),(6,'Outros - Europa','2022-05-28 21:03:01','2022-05-28 21:03:01',NULL),(7,'Seleções','2022-05-28 21:03:13','2022-05-28 21:03:13',NULL),(8,'Itália','2022-05-28 22:14:59','2022-05-28 22:14:59',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_03_02_230915_create_products_table',1),(6,'2022_03_03_003318_create_categories_table',1),(7,'2022_03_03_012848_edit_product_table',1),(8,'2022_03_10_002144_edit_product_table',1),(9,'2022_03_10_003109_edit_categories_table',1),(10,'2022_03_16_232411_create_tags_table',1),(11,'2022_03_16_233044_create_product_tag_table',1),(12,'2022_03_24_001235_edit_tag_table',1),(13,'2022_04_06_222440_create_sizes_table',1),(14,'2022_04_06_232003_edit_users_table',1),(15,'2022_04_07_002929_delete_product_table',1),(16,'2022_04_13_223334_edit_products_table',1),(17,'2022_05_11_022125_create_carts_table',2),(18,'2022_05_25_225505_create_orders_table',3),(19,'2022_05_25_225800_create_order_product',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `units` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tag`
--

LOCK TABLES `product_tag` WRITE;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
INSERT INTO `product_tag` VALUES (1,1,1,NULL,NULL),(2,2,1,NULL,NULL),(3,3,1,NULL,NULL),(4,4,1,NULL,NULL),(5,5,1,NULL,NULL),(6,6,1,NULL,NULL),(7,7,1,NULL,NULL),(8,8,1,NULL,NULL),(9,9,1,NULL,NULL),(10,10,1,NULL,NULL),(11,11,2,NULL,NULL),(12,12,2,NULL,NULL),(13,13,2,NULL,NULL),(14,14,2,NULL,NULL),(15,15,4,NULL,NULL),(16,16,4,NULL,NULL),(17,17,4,NULL,NULL),(18,18,5,NULL,NULL),(19,19,5,NULL,NULL),(20,20,5,NULL,NULL),(21,21,3,NULL,NULL),(22,22,3,NULL,NULL),(23,23,3,NULL,NULL),(24,24,3,NULL,NULL),(25,25,3,NULL,NULL),(26,26,6,NULL,NULL),(27,27,6,NULL,NULL),(28,28,7,NULL,NULL),(30,29,7,NULL,NULL),(31,30,7,NULL,NULL),(32,31,7,NULL,NULL),(33,32,7,NULL,NULL);
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'storage/itens/image.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Camisa Botafogo 21/22 s/n° Torcedor Kappa Masculina - Azul','Camisa Botafogo - away - 21/22',149.90,'2022-05-28 20:54:40','2022-05-28 23:20:47',1,'2022-05-28 23:20:47','/storage/itens/JI6lriLHjyDkvoAZlBemJyP3sxX0mrpcRHPngRda.jpg'),(2,'Camisa Botafogo 21/22 s/n° Torcedor Kappa Masculina - Preta','Camisa Botafogo - home - 21/22',149.90,'2022-05-28 23:10:38','2022-05-28 23:10:38',1,NULL,'/storage/itens/dJaFHkeScHoK2CgCfK4UYs3nA73f3LsZ99Wp00Cl.jpg'),(3,'Camisa Fortaleza Away 22/23 s/n° Torcedor Masculina - Branco','Camisa Fortaleza - home - 22/23',169.90,'2022-05-28 23:12:02','2022-05-28 23:20:43',1,'2022-05-28 23:20:43','/storage/itens/sPQ5gHz5HNLZdZFt0v5Zth5HcW0w3MZnGuBqkmn8.jpg'),(4,'Camisa Fortaleza Home 22/23 s/n° Torcedor Masculina - Branco','Camisa Fortaleza - home - 22/23',169.90,'2022-05-28 23:13:17','2022-05-28 23:13:17',1,NULL,'/storage/itens/PyjeYCTfp2JKwDFesls0awJznvz1ZQf4edH2VLU2.jpg'),(5,'Camisa Atlético Mineiro Away 21/22 s/n° Torcedor Nike Masculina - Branco','Camisa Atletico-MG - away - 21/22',149.90,'2022-05-28 23:15:42','2022-05-28 23:20:40',1,'2022-05-28 23:20:40','/storage/itens/MNYZ6fqqfffvsaJPvHM6Xm2eGsCZoGt2rjAWxMhH.jpg'),(6,'Camisa Atlético Mineiro home 21/22 s/n° Torcedor Nike Masculina - Branco','Camisa Atletico-MG - home - 21/22',149.90,'2022-05-28 23:16:46','2022-05-28 23:16:46',1,NULL,'/storage/itens/fprXVuUnyl6eojMjMXUWseQTNetGk5B3kD2HDEME.jpg'),(7,'Camisa Grêmio Home 21/22 s/n° Torcedor Umbro Masculina - Azul','Camisa Grêmio - home - 21/22',149.90,'2022-05-28 23:18:28','2022-05-28 23:18:28',1,NULL,'/storage/itens/s9V8qHCH3PV9lSE4fjBYJttmkUWd520MmAv4NFjM.jpg'),(8,'Camisa Grêmio Away 21/22 s/n° Torcedor Umbro Masculina - Azul','Camisa Grêmio - away - 21/22',149.90,'2022-05-28 23:19:08','2022-05-28 23:20:37',1,'2022-05-28 23:20:37','/storage/itens/Fb5gCUSONj3jaPFFWHk8JxxzRbzLYn7bON3R8W4B.jpg'),(9,'Camisa Palmeiras Home 22/23 s/n° Torcedor Adidas Masculina - Verde','Camisa Palmeiras - home - 22/23',169.90,'2022-05-28 23:22:27','2022-05-28 23:22:27',1,NULL,'/storage/itens/dSecIytLO51GDiTS8DMZq52KxWjZqDMfHbgiFNoY.jpg'),(10,'Camisa Vasco Home 21/22 s/n° Torcedor Umbro Masculina - Preta','Camisa Vasco - home - 21/22',149.90,'2022-05-28 23:25:05','2022-05-28 23:25:05',1,NULL,'/storage/itens/StTZhQul6GE77UNaq4cTwqFYlRMYahqo0nbXpV1j.jpg'),(11,'Camisa Bayern München Home 22/23 s/n° Torcedor Adidas Masculina - Vermelho','Camisa Bayern - home - 22/23',169.90,'2022-05-28 23:29:31','2022-05-28 23:29:31',2,NULL,'/storage/itens/CqhmaZV8Ff00thvqGIblUfgB2oGz9rhkffxK4oKA.jpg'),(12,'Camisa Borussia Dortmund Home 22/23 s/n° Torcedor Puma Masculina - Amarelo','Camisa Borussia Dortmund - home - 22/23',169.90,'2022-05-28 23:30:27','2022-05-28 23:30:27',2,NULL,'/storage/itens/wJE2iFNYpeIuG7ItR1qwVFvOwZOcO69VD7d00bV4.jpg'),(13,'Camisa Frankfurt Home 21/22 s/n° Torcedor Nike Masculina - Branco','Camisa Frankfurt - home - 21/22',149.90,'2022-05-28 23:32:08','2022-05-28 23:32:08',2,NULL,'/storage/itens/MmD2wLnxiIeD55h4t0S4kjIe5GkhW2O47B63s5Br.jpg'),(14,'Camisa RB Leipzig Home 21/22 s/n° Torcedor Nike Masculina - Vermelho+branco','Camisa RB Leipzig - home - 21/22',149.90,'2022-05-28 23:33:17','2022-05-28 23:33:17',2,NULL,'/storage/itens/zXCpvuQZOoWo4bZSWNXrV8ptW8yTd5ZvkMTnAWm6.jpg'),(15,'Camisa Atletico de Madrid Home 22/23 s/n° Torcedor Nike Masculina - Branco+Vermelho','Camisa Atlético Madrid - home - 22/23',169.90,'2022-05-28 23:39:59','2022-05-28 23:39:59',5,NULL,'/storage/itens/URMkQuIjm00fWrUq3xJE8Sz9JpKsaBRl1uIbZumZ.jpg'),(16,'Camisa Real Madrid Home 22/23 s/n° Torcedor Adidas Masculina - Branca','Camisa Real Madrid - home - 22/23',169.90,'2022-05-28 23:41:03','2022-05-28 23:41:03',5,NULL,'/storage/itens/CN4kQStBhfu5CUepzdkZti6KYUdgVe7RZBa8dXZf.jpg'),(17,'Camisa Barcelona Home 22/23 s/n° Torcedor Nike Masculina - Azul+Vermelho','Camisa Barcelona - home - 22/23',169.90,'2022-05-28 23:42:09','2022-05-28 23:42:09',5,NULL,'/storage/itens/188D2wj66GMBZt8sunjy4F5NwPWSjVYpS3oExJpf.jpg'),(18,'Camisa PSG Home 22/23 s/n° Torcedor Nike Masculina - Azul','Camisa PSG - home - 22/23',149.90,'2022-05-28 23:44:50','2022-05-28 23:44:50',3,NULL,'/storage/itens/y2drD5YHWuIRzIuZo3dOTezj7EGKQfdlq2PsQIT4.jpg'),(19,'Camisa Olympique de Marseille Home 22/23 s/n° Torcedor Puma Masculina - Branco','Camisa Olympique de Marseille - home - 22/23',169.90,'2022-05-28 23:47:08','2022-05-28 23:47:08',3,NULL,'/storage/itens/DWLyTO6WpPtjasouJ6SxKiimx0iKbztIKja2jLXo.jpg'),(20,'Camisa Lyon home 21/22 s/n° Torcedor Adidas Masculina - Branca','Camisa Lyon - home - 21/22',149.90,'2022-05-28 23:49:42','2022-05-28 23:49:42',3,NULL,'/storage/itens/FzsN34ThNHifcxqkap8LqUnzXHMzGYhQKPl0EX5Y.jpg'),(21,'Camisa Manchester United Home 22/23 s/n° Torcedor Adidas Masculina - Vermelho','Camisa Manchester United - home - 22/23',149.90,'2022-05-28 23:51:29','2022-05-28 23:51:29',4,NULL,'/storage/itens/mh7YmTs1RtCxp6JHCK1VToO9ewddG66gyspx7Ay2.jpg'),(22,'Camisa Arsenal Home 22/23 s/n° Torcedor Adidas Masculina - Vermelho','Camisa Arsenal - home - 22/23',169.90,'2022-05-28 23:52:46','2022-05-28 23:52:46',4,NULL,'/storage/itens/x0IVT5FGkwBT9Sr42lcROZXpY7MyWhFhH3IpT9By.jpg'),(23,'Camisa Chelsea Home 21/22 s/n° Torcedor Nike Masculina - Azul','Camisa Chelsea - home - 21/22',149.90,'2022-05-28 23:54:08','2022-05-28 23:54:08',4,NULL,'/storage/itens/e3iplzsaoZbojhMIyH58iQEgc9YkRhwpdE3xj48I.jpg'),(24,'Camisa Liverpool Home 22/23 s/n° Torcedor Nike Masculina - Vermelho','Camisa Liverpool - home - 22/23',169.90,'2022-05-28 23:59:07','2022-05-28 23:59:07',4,NULL,'/storage/itens/PpSsXhGeSTFJXyRAv5rXd9gnCHFV2x2Z71GYjX7R.jpg'),(25,'Camisa Manchester City Home 22/23 s/n° Torcedor Puma Masculina - Azul','Camisa Manchester City - home - 22/23',169.90,'2022-05-29 00:00:10','2022-05-29 00:00:10',4,NULL,'/storage/itens/jmXt0mYZcjvfdq4tKpQmryyFa61MDVCItwaychx7.jpg'),(26,'Camisa AC Milan Special Edition 22/23 Puma - Vermelho+Preto','Camisa Milan - Special Edition - 22/23',169.90,'2022-05-29 00:02:09','2022-05-29 00:02:09',8,NULL,'/storage/itens/TpqSpL2H6UHVoN0Ll3waNnWxmTuHMHJleguTMTIf.jpg'),(27,'Camisa Juventus Home 22/23 s/n° Torcedor Adidas Masculina - Branco+Preto','Camisa Juventus - home - 22/23',169.90,'2022-05-29 00:04:35','2022-05-29 00:04:35',8,NULL,'/storage/itens/G8GJcbAo7DHgMD1pHEGWltvWxWeNQIKr6NtTa1Az.jpg'),(28,'Camisa Seleção Brasil Home 20/21 s/n° Torcedor Nike Masculina - Amarela','Camisa Brasil - home - 20/21',149.90,'2022-05-29 00:08:20','2022-05-29 00:08:20',7,NULL,'/storage/itens/BdqmVsxKDFaZ4nQLxBxtG4ytdcSgFalElQlTQzJT.jpg'),(29,'Camisa Seleção França Home 20/21 s/n° Torcedor Nike Masculina - Azul','Camisa França - home - 20/21',149.90,'2022-05-29 00:09:41','2022-05-29 00:10:02',7,NULL,'/storage/itens/Y6UwV0AopJZzOpscDR3kYtpjq6jNbr0F8wb7iHiV.jpg'),(30,'Camisa Alemanha Home 2020 s/n° Torcedor Masculina','Camisa Alemanha - home - 20/21',149.90,'2022-05-29 00:11:18','2022-05-29 00:11:18',7,NULL,'/storage/itens/qai1fKEBT4v24uSGPQkFyEmI3JMoWitODXOmM3tE.jpg'),(31,'Camisa Seleção Holanda Home 20/21 s/n° Torcedor Nike Masculina - Laranja','Camisa Holanda - home - 20/21',149.90,'2022-05-29 00:12:36','2022-05-29 00:12:36',7,NULL,'/storage/itens/r3MhA6lWbUl4uRiUmLqkbRXeTMpHsAxWXkk2Vz9x.jpg'),(32,'Camisa Seleção Argentina Home 22/23 s/n° Torcedor Adidas Masculina - Azul+Branca','Camisa Argentina - home - 22/23',169.90,'2022-05-29 00:13:23','2022-05-29 00:13:23',7,NULL,'/storage/itens/esBsoWDhQDFJRoD1rgYIxCTx0Juw3nQlxWVckrgK.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'P',1,4,'2022-05-28 20:54:40','2022-05-28 20:54:40'),(2,'M',1,10,'2022-05-28 20:54:40','2022-05-28 20:54:40'),(3,'G',1,15,'2022-05-28 20:54:40','2022-05-28 20:54:40'),(4,'GG',1,5,'2022-05-28 20:54:40','2022-05-28 20:54:40'),(5,'P',2,10,'2022-05-28 23:10:38','2022-05-28 23:10:38'),(6,'M',2,8,'2022-05-28 23:10:38','2022-05-28 23:10:38'),(7,'G',2,5,'2022-05-28 23:10:38','2022-05-28 23:10:38'),(8,'GG',2,6,'2022-05-28 23:10:38','2022-05-28 23:10:38'),(9,'P',3,10,'2022-05-28 23:12:02','2022-05-28 23:12:02'),(10,'M',3,7,'2022-05-28 23:12:02','2022-05-28 23:12:02'),(11,'G',3,8,'2022-05-28 23:12:02','2022-05-28 23:12:02'),(12,'GG',3,5,'2022-05-28 23:12:02','2022-05-28 23:12:02'),(13,'P',4,5,'2022-05-28 23:13:17','2022-05-28 23:13:17'),(14,'M',4,8,'2022-05-28 23:13:17','2022-05-28 23:13:17'),(15,'G',4,7,'2022-05-28 23:13:17','2022-05-28 23:13:17'),(16,'GG',4,6,'2022-05-28 23:13:17','2022-05-28 23:13:17'),(17,'P',5,10,'2022-05-28 23:15:42','2022-05-28 23:15:42'),(18,'M',5,14,'2022-05-28 23:15:42','2022-05-28 23:15:42'),(19,'G',5,12,'2022-05-28 23:15:42','2022-05-28 23:15:42'),(20,'GG',5,6,'2022-05-28 23:15:42','2022-05-28 23:15:42'),(21,'P',6,4,'2022-05-28 23:16:46','2022-05-28 23:16:46'),(22,'M',6,3,'2022-05-28 23:16:46','2022-05-28 23:16:46'),(23,'G',6,6,'2022-05-28 23:16:46','2022-05-28 23:16:46'),(24,'GG',6,7,'2022-05-28 23:16:46','2022-05-28 23:16:46'),(25,'P',7,12,'2022-05-28 23:18:28','2022-05-28 23:18:28'),(26,'M',7,5,'2022-05-28 23:18:28','2022-05-28 23:18:28'),(27,'G',7,7,'2022-05-28 23:18:28','2022-05-28 23:18:28'),(28,'GG',7,4,'2022-05-28 23:18:28','2022-05-28 23:18:28'),(29,'P',8,12,'2022-05-28 23:19:08','2022-05-28 23:19:08'),(30,'M',8,5,'2022-05-28 23:19:08','2022-05-28 23:19:08'),(31,'G',8,7,'2022-05-28 23:19:08','2022-05-28 23:19:08'),(32,'GG',8,8,'2022-05-28 23:19:08','2022-05-28 23:19:08'),(33,'P',9,5,'2022-05-28 23:22:28','2022-05-28 23:22:28'),(34,'M',9,6,'2022-05-28 23:22:28','2022-05-28 23:22:28'),(35,'G',9,5,'2022-05-28 23:22:28','2022-05-28 23:22:28'),(36,'GG',9,4,'2022-05-28 23:22:28','2022-05-28 23:22:28'),(37,'P',10,5,'2022-05-28 23:25:05','2022-05-28 23:25:05'),(38,'M',10,7,'2022-05-28 23:25:06','2022-05-28 23:25:06'),(39,'G',10,8,'2022-05-28 23:25:06','2022-05-28 23:25:06'),(40,'GG',10,9,'2022-05-28 23:25:06','2022-05-28 23:25:06'),(41,'P',11,4,'2022-05-28 23:29:31','2022-05-28 23:29:31'),(42,'M',11,6,'2022-05-28 23:29:31','2022-05-28 23:29:31'),(43,'G',11,5,'2022-05-28 23:29:31','2022-05-28 23:29:31'),(44,'GG',11,5,'2022-05-28 23:29:32','2022-05-28 23:29:32'),(45,'P',12,3,'2022-05-28 23:30:27','2022-05-28 23:30:27'),(46,'M',12,7,'2022-05-28 23:30:27','2022-05-28 23:30:27'),(47,'G',12,8,'2022-05-28 23:30:27','2022-05-28 23:30:27'),(48,'GG',12,5,'2022-05-28 23:30:27','2022-05-28 23:30:27'),(49,'P',13,5,'2022-05-28 23:32:08','2022-05-28 23:32:08'),(50,'M',13,7,'2022-05-28 23:32:09','2022-05-28 23:32:09'),(51,'G',13,8,'2022-05-28 23:32:09','2022-05-28 23:32:09'),(52,'GG',13,4,'2022-05-28 23:32:09','2022-05-28 23:32:09'),(53,'P',14,5,'2022-05-28 23:33:17','2022-05-28 23:33:17'),(54,'M',14,6,'2022-05-28 23:33:17','2022-05-28 23:33:17'),(55,'G',14,7,'2022-05-28 23:33:17','2022-05-28 23:33:17'),(56,'GG',14,4,'2022-05-28 23:33:17','2022-05-28 23:33:17'),(57,'P',15,2,'2022-05-28 23:39:59','2022-05-28 23:39:59'),(58,'M',15,6,'2022-05-28 23:39:59','2022-05-28 23:39:59'),(59,'G',15,7,'2022-05-28 23:39:59','2022-05-28 23:39:59'),(60,'GG',15,4,'2022-05-28 23:39:59','2022-05-28 23:39:59'),(61,'P',16,5,'2022-05-28 23:41:03','2022-05-28 23:41:03'),(62,'M',16,6,'2022-05-28 23:41:03','2022-05-28 23:41:03'),(63,'G',16,7,'2022-05-28 23:41:03','2022-05-28 23:41:03'),(64,'GG',16,6,'2022-05-28 23:41:03','2022-05-28 23:41:03'),(65,'P',17,5,'2022-05-28 23:42:09','2022-05-28 23:42:09'),(66,'M',17,4,'2022-05-28 23:42:10','2022-05-28 23:42:10'),(67,'G',17,7,'2022-05-28 23:42:10','2022-05-28 23:42:10'),(68,'GG',17,8,'2022-05-28 23:42:10','2022-05-28 23:42:10'),(69,'P',18,5,'2022-05-28 23:44:51','2022-05-28 23:44:51'),(70,'M',18,6,'2022-05-28 23:44:51','2022-05-28 23:44:51'),(71,'G',18,4,'2022-05-28 23:44:51','2022-05-28 23:44:51'),(72,'GG',18,2,'2022-05-28 23:44:51','2022-05-28 23:44:51'),(73,'P',19,5,'2022-05-28 23:47:08','2022-05-28 23:47:08'),(74,'M',19,6,'2022-05-28 23:47:08','2022-05-28 23:47:08'),(75,'G',19,4,'2022-05-28 23:47:08','2022-05-28 23:47:08'),(76,'GG',19,2,'2022-05-28 23:47:09','2022-05-28 23:47:09'),(77,'P',20,5,'2022-05-28 23:49:42','2022-05-28 23:49:42'),(78,'M',20,6,'2022-05-28 23:49:42','2022-05-28 23:49:42'),(79,'G',20,4,'2022-05-28 23:49:42','2022-05-28 23:49:42'),(80,'GG',20,2,'2022-05-28 23:49:42','2022-05-28 23:49:42'),(81,'P',21,5,'2022-05-28 23:51:29','2022-05-28 23:51:29'),(82,'M',21,2,'2022-05-28 23:51:29','2022-05-28 23:51:29'),(83,'G',21,3,'2022-05-28 23:51:29','2022-05-28 23:51:29'),(84,'GG',21,4,'2022-05-28 23:51:29','2022-05-28 23:51:29'),(85,'P',22,5,'2022-05-28 23:52:46','2022-05-28 23:52:46'),(86,'M',22,7,'2022-05-28 23:52:46','2022-05-28 23:52:46'),(87,'G',22,8,'2022-05-28 23:52:46','2022-05-28 23:52:46'),(88,'GG',22,7,'2022-05-28 23:52:46','2022-05-28 23:52:46'),(89,'P',23,10,'2022-05-28 23:54:08','2022-05-28 23:54:08'),(90,'M',23,8,'2022-05-28 23:54:09','2022-05-28 23:54:09'),(91,'G',23,7,'2022-05-28 23:54:09','2022-05-28 23:54:09'),(92,'GG',23,5,'2022-05-28 23:54:09','2022-05-28 23:54:09'),(93,'P',24,5,'2022-05-28 23:59:07','2022-05-28 23:59:07'),(94,'M',24,8,'2022-05-28 23:59:07','2022-05-28 23:59:07'),(95,'G',24,7,'2022-05-28 23:59:07','2022-05-28 23:59:07'),(96,'GG',24,10,'2022-05-28 23:59:07','2022-05-28 23:59:07'),(97,'P',25,5,'2022-05-29 00:00:10','2022-05-29 00:00:10'),(98,'M',25,10,'2022-05-29 00:00:10','2022-05-29 00:00:10'),(99,'G',25,6,'2022-05-29 00:00:10','2022-05-29 00:00:10'),(100,'GG',25,5,'2022-05-29 00:00:10','2022-05-29 00:00:10'),(101,'P',26,5,'2022-05-29 00:02:09','2022-05-29 00:02:09'),(102,'M',26,7,'2022-05-29 00:02:09','2022-05-29 00:02:09'),(103,'G',26,8,'2022-05-29 00:02:09','2022-05-29 00:02:09'),(104,'GG',26,7,'2022-05-29 00:02:09','2022-05-29 00:02:09'),(105,'P',27,5,'2022-05-29 00:04:35','2022-05-29 00:04:35'),(106,'M',27,4,'2022-05-29 00:04:35','2022-05-29 00:04:35'),(107,'G',27,7,'2022-05-29 00:04:35','2022-05-29 00:04:35'),(108,'GG',27,8,'2022-05-29 00:04:35','2022-05-29 00:04:35'),(109,'P',28,5,'2022-05-29 00:08:20','2022-05-29 00:08:20'),(110,'M',28,6,'2022-05-29 00:08:20','2022-05-29 00:08:20'),(111,'G',28,6,'2022-05-29 00:08:20','2022-05-29 00:08:20'),(112,'GG',28,5,'2022-05-29 00:08:20','2022-05-29 00:08:20'),(113,'P',29,12,'2022-05-29 00:09:41','2022-05-29 00:09:41'),(114,'M',29,6,'2022-05-29 00:09:41','2022-05-29 00:09:41'),(115,'G',29,7,'2022-05-29 00:09:41','2022-05-29 00:09:41'),(116,'GG',29,8,'2022-05-29 00:09:41','2022-05-29 00:09:41'),(117,'P',30,10,'2022-05-29 00:11:19','2022-05-29 00:11:19'),(118,'M',30,6,'2022-05-29 00:11:19','2022-05-29 00:11:19'),(119,'G',30,7,'2022-05-29 00:11:19','2022-05-29 00:11:19'),(120,'GG',30,8,'2022-05-29 00:11:19','2022-05-29 00:11:19'),(121,'P',31,3,'2022-05-29 00:12:36','2022-05-29 00:12:36'),(122,'M',31,6,'2022-05-29 00:12:36','2022-05-29 00:12:36'),(123,'G',31,7,'2022-05-29 00:12:36','2022-05-29 00:12:36'),(124,'GG',31,8,'2022-05-29 00:12:36','2022-05-29 00:12:36'),(125,'P',32,5,'2022-05-29 00:13:23','2022-05-29 00:13:23'),(126,'M',32,9,'2022-05-29 00:13:23','2022-05-29 00:13:23'),(127,'G',32,7,'2022-05-29 00:13:23','2022-05-29 00:13:23'),(128,'GG',32,8,'2022-05-29 00:13:23','2022-05-29 00:13:23');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Camisas-Brasil','2022-05-28 20:53:44','2022-05-28 22:12:01',NULL),(2,'Camisas-Alemanha','2022-05-28 22:12:16','2022-05-28 22:12:16',NULL),(3,'Camisas-Inglaterra','2022-05-28 22:12:27','2022-05-28 22:12:27',NULL),(4,'Camisas-Espanha','2022-05-28 22:12:50','2022-05-28 22:12:50',NULL),(5,'Camisas-França','2022-05-28 22:13:03','2022-05-28 22:13:03',NULL),(6,'Camisas-Italia','2022-05-28 22:13:18','2022-05-28 22:13:18',NULL),(7,'Camisas-Seleçoes','2022-05-28 22:13:50','2022-05-28 22:14:06',NULL),(8,'Camisas-Outros','2022-05-28 22:15:26','2022-05-28 22:15:26',NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
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
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Pedro','pedro.cardenuto@hotmail.com',NULL,'$2y$10$lk5pZshl/HeUNDHZaUISGe6PRK9Cvl4FaY2XPgu9A8DvC6Ag1sJlu','8PibwRXc7JmySg0ZkdNGEj5GJxRhkDF5kDXB3E0ycVc7PmsoYcQBdCTve4VY','2022-04-29 19:12:55','2022-04-29 19:12:55','admin');
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

-- Dump completed on 2022-06-01 13:43:04
