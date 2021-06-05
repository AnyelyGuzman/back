-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel1
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `lines`
--

DROP TABLE IF EXISTS `lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lines`
--

LOCK TABLES `lines` WRITE;
/*!40000 ALTER TABLE `lines` DISABLE KEYS */;
INSERT INTO `lines` VALUES (1,'Roa','2021-05-30 09:55:28','2021-05-30 09:55:28'),(2,'Florhuila','2021-05-30 09:55:29','2021-05-30 09:55:29'),(3,'Popular','2021-05-30 09:55:30','2021-05-30 09:55:30'),(4,'Exito','2021-05-30 09:55:30','2021-05-30 09:55:30'),(5,'La muñeca','2021-05-30 09:55:30','2021-05-30 09:55:30'),(6,'Doria','2021-05-30 09:55:30','2021-05-30 09:55:30');
/*!40000 ALTER TABLE `lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2021_05_18_234255_create_brands_table',1),(10,'2021_05_18_234256_create_lines_table',1),(11,'2021_05_18_234257_create_products_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('e5aa80f61276227e52c2aa121c1dfa0d7a4449ed8a2a7821dc0fc962a00c2358422fdfe70056d00c',1,1,'authToken','[]',0,'2021-05-30 10:06:42','2021-05-30 10:06:42','2022-05-30 05:06:42');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','myk8McecozW11hEcRwysS1pPdSLCmAuJc3sErGsn',NULL,'http://localhost',1,0,0,'2021-05-30 10:06:24','2021-05-30 10:06:24'),(2,NULL,'Laravel Password Grant Client','9113sIeQCzpYAzExmEdZOQiNmiM3w5Kg18jYCGQw','users','http://localhost',0,1,0,'2021-05-30 10:06:25','2021-05-30 10:06:25');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2021-05-30 10:06:24','2021-05-30 10:06:24');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_actual` double NOT NULL,
  `precio_anterior` double NOT NULL,
  `cantidad` double NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eliminado` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Queso mozzarella tajado','https://www.miaguila.com/tiendas/d1/products/12000084.png',6680,5000,100,'on',0,'2021-05-30 09:55:31','2021-05-30 09:55:31'),(2,'TOMATE CHONTO UNIDAD','https://www.lovemysalad.com/sites/default/files/styles/image_415x281/public/tomates_-_vladimir_morozov.jpg?itok=gU1-XJyE',780,690,1000,'on',0,'2021-05-30 09:55:31','2021-05-30 09:55:31'),(3,'Servilletas acolchamax famitaco medianas x 300 und FAMILIA','https://images.ctfassets.net/tcoigcjw85h2/7wKKZVr1b9as1hc5D8viHC/ff80e95e5075a7f88109bd6e31d52790/X220-SERVILLETAS-FAMILIA-PRACTI-DIARIAS.png',5380,5450,500,'on',0,'2021-05-30 09:55:33','2021-05-30 09:55:33'),(4,'Leche Alqueria Deslactosada Sixpack x 1300 Ml c.u','https://jumbocolombiafood.vteximg.com.br/arquivos/ids/3295314-1000-1000/7702177007341-1.jpg?v=636646649212300000',19900,21000,350,'on',0,'2021-05-30 09:55:35','2021-05-30 09:55:35'),(5,'Gaseosa COCA COLA Sabor Original 1500ml ','https://i1.wp.com/www.licoresmedellin.com/wp-content/uploads/2017/10/Cocacola-3lts-Licores_Medellin-.jpg?fit=600%2C800&ssl=1',3500,3800,150,'on',0,'2021-05-30 09:55:35','2021-05-30 09:55:35'),(6,'Avena en hojuelas original megabolsa x 960 g','https://exitocol.vtexassets.com/arquivos/ids/1818183-800-auto?width=800&height=auto&aspect=true',8650,9325,230,'on',0,'2021-05-30 09:55:36','2021-05-30 09:55:36');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hamilton','diaz3220@hotmail.com',NULL,'$2y$10$jEjmd3hrCOaL/N61GrByQeutEzzfFRmk5K4csr/IpUNkJrOeb1Loy',NULL,'2021-05-30 09:55:25','2021-05-30 09:55:25'),(2,'lisseth','liyafi1210@hotmail.com',NULL,'$2y$10$y68/RDxZACkLu4htEsIfG.FTEHuC4x.x1qiBhFYbQ35PfRi3n/Pye',NULL,'2021-05-30 09:55:26','2021-05-30 09:55:26');
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

-- Dump completed on 2021-06-04 19:43:23
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: outfit_store
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id_marcas` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_marcas`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Adidas',NULL),(2,'Nike',NULL),(3,'Carolina Herrera',NULL),(4,'Diesel',NULL),(5,'Dior',NULL),(6,'Dolce & Gabbana',NULL),(7,'Fila',NULL),(8,'Hovr',NULL),(9,'Hugo Boss',NULL),(10,'Jordan',NULL),(11,'Lacoste',NULL),(12,'Le Coq Sportif',NULL),(13,'New Balance',NULL),(14,'Philip Plein',NULL),(15,'Prada',NULL),(16,'Puma',NULL),(17,'Reebok',NULL),(18,'Salvatore Ferragamo',NULL),(19,'Valnciaga',''),(20,'Vans',NULL),(21,'Versace',NULL),(22,'Lociones',NULL),(23,'Rolex',NULL);
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
  `id_ordenes` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `valor_envio` int DEFAULT NULL,
  `subtotal` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `id_usuarios` int DEFAULT NULL,
  PRIMARY KEY (`id_ordenes`),
  KEY `fk_id_usuarios_idx` (`id_usuarios`),
  CONSTRAINT `fk_id_usuarios` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedidos` int NOT NULL AUTO_INCREMENT,
  `cantidad` int DEFAULT NULL,
  `precio_actual_producto` int DEFAULT NULL,
  `id_ordenes` int DEFAULT NULL,
  `id_productos` int DEFAULT NULL,
  PRIMARY KEY (`id_pedidos`),
  KEY `fk_id_ordenes_idx` (`id_ordenes`),
  KEY `fk_id_productos_idx` (`id_productos`),
  CONSTRAINT `fk_id_ordenes` FOREIGN KEY (`id_ordenes`) REFERENCES `ordenes` (`id_ordenes`),
  CONSTRAINT `fk_id_productos` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_productos` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(45) DEFAULT NULL,
  `cantidad_disponible` int DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `id_marcas` int DEFAULT NULL,
  `texto` varchar(200) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`id_productos`),
  KEY `fk_id_marcas_idx` (`id_marcas`),
  CONSTRAINT `fk_id_marcas` FOREIGN KEY (`id_marcas`) REFERENCES `marcas` (`id_marcas`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,NULL,10,'images/zapatos/adidas/adidas.jpg',1,'',180000),(2,NULL,10,'images/zapatos/adidas/adidas2.jpg',1,NULL,NULL),(3,NULL,10,'images/zapatos/nike/IMG-20210304-WA0086.jpg',2,NULL,NULL),(4,NULL,10,'images/zapatos/adidas/adidas3.jpg',1,NULL,NULL),(6,NULL,10,'images/zapatos/adidas/adidas4.jpg',1,NULL,NULL),(278,NULL,10,'images/zapatos/adidas/adidas5.jpg',1,NULL,NULL),(279,NULL,10,'images/zapatos/adidas/adidas6.jpg',1,NULL,NULL),(280,NULL,10,'images/zapatos/adidas/adidas7.jpg',1,NULL,NULL),(281,NULL,10,'images/zapatos/adidas/adidas8.jpg',1,NULL,NULL),(282,NULL,10,'images/zapatos/adidas/adidas9.jpg',1,NULL,NULL),(283,NULL,10,'images/zapatos/adidas/adidas10.jpg',1,NULL,NULL),(284,NULL,10,'images/zapatos/adidas/adidas11.jpg',1,NULL,NULL),(285,NULL,10,'images/zapatos/adidas/adidas12.jpg',1,NULL,NULL),(286,NULL,10,'images/zapatos/adidas/adidas13.jpg',1,NULL,NULL),(287,NULL,10,'images/zapatos/adidas/adidas14.jpg',1,NULL,NULL),(288,NULL,10,'images/zapatos/adidas/adidas15.jpg',1,NULL,NULL),(289,NULL,10,'images/zapatos/adidas/adidas16.jpg',1,NULL,NULL),(290,NULL,10,'images/zapatos/adidas/adidas17.jpg',1,NULL,NULL),(291,NULL,10,'images/zapatos/adidas/adidas18.jpg',1,NULL,NULL),(292,NULL,10,'images/zapatos/adidas/adidas19.jpg',1,NULL,NULL),(293,NULL,10,'images/zapatos/adidas/adidas20.jpg',1,NULL,NULL),(294,NULL,10,'images/zapatos/adidas/adidas21.jpg',1,NULL,NULL),(295,NULL,10,'images/zapatos/adidas/adidas22.jpg',1,NULL,NULL),(296,NULL,10,'images/zapatos/adidas/adidas23.jpg',1,NULL,NULL),(297,NULL,10,'images/zapatos/adidas/adidas24.jpg',1,NULL,NULL),(298,NULL,10,'images/zapatos/adidas/adidas25.jpg',1,NULL,NULL),(299,NULL,10,'images/zapatos/adidas/adidas26.jpg',1,NULL,NULL),(300,NULL,10,'images/zapatos/adidas/adidas27.jpg',1,NULL,NULL),(301,NULL,10,'images/zapatos/adidas/adidas28.jpg',1,NULL,NULL),(302,NULL,10,'images/zapatos/adidas/adidas29.jpg',1,NULL,NULL),(303,NULL,10,'images/zapatos/adidas/adidas30.jpg',1,NULL,NULL),(304,NULL,10,'images/zapatos/adidas/adidas31.jpg',1,NULL,NULL),(305,NULL,10,'images/zapatos/adidas/adidas32.jpg',1,NULL,NULL),(306,NULL,10,'images/zapatos/adidas/adidas33.jpg',1,NULL,NULL),(307,NULL,10,'images/zapatos/adidas/adidas34.jpg',1,NULL,NULL),(308,NULL,10,'images/zapatos/adidas/adidas35.jpg',1,NULL,NULL),(309,NULL,10,'images/zapatos/adidas/adidas36.jpg',1,NULL,NULL),(310,NULL,10,'images/zapatos/adidas/adidas37.jpg',1,NULL,NULL),(311,NULL,10,'images/zapatos/adidas/adidas38.jpg',1,NULL,NULL),(312,NULL,10,'images/zapatos/adidas/adidas39.jpg',1,NULL,NULL),(313,NULL,10,'images/zapatos/adidas/adidas40.jpg',1,NULL,NULL),(314,NULL,10,'images/zapatos/adidas/adidas41.jpg',1,NULL,NULL),(315,NULL,10,'images/zapatos/adidas/adidas42.jpg',1,NULL,NULL),(316,NULL,10,'images/zapatos/adidas/adidas43.jpg',1,NULL,NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04 19:43:23
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: iglesia
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `diezmo`
--

DROP TABLE IF EXISTS `diezmo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diezmo` (
  `id_diezmo` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT NULL,
  `diezmo` int DEFAULT NULL,
  PRIMARY KEY (`id_diezmo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diezmo`
--

LOCK TABLES `diezmo` WRITE;
/*!40000 ALTER TABLE `diezmo` DISABLE KEYS */;
INSERT INTO `diezmo` VALUES (1,'alan',20000),(2,'anyely',5000),(3,'wini',35000),(4,'camilo',100000),(5,'anyely',4000),(6,'camilo',25000),(7,'wini',350000),(8,'alan',600000);
/*!40000 ALTER TABLE `diezmo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `id_eventos` int NOT NULL AUTO_INCREMENT,
  `evento` varchar(45) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`id_eventos`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (2,'misa de sanacion','10:00:00'),(5,'misa curandera','11:20:00'),(6,'misas gral','13:30:00');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'camilo ','bonilla'),(2,'alan','galviz'),(3,'anyely ','guzman'),(4,'wini','galviz'),(5,'michell','guzman');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04 19:43:23
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: cafe
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04 19:43:23
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: parcial2
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `atencion`
--

DROP TABLE IF EXISTS `atencion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atencion` (
  `id_atencion` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `id_servicio` int DEFAULT NULL,
  PRIMARY KEY (`id_atencion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atencion`
--

LOCK TABLES `atencion` WRITE;
/*!40000 ALTER TABLE `atencion` DISABLE KEYS */;
INSERT INTO `atencion` VALUES (1,'2021-04-19 05:30:00',1),(2,'2021-04-19 05:30:00',2),(3,'2021-04-19 08:30:00',3),(4,'2021-04-19 17:30:00',2),(5,'2021-04-20 05:30:00',1);
/*!40000 ALTER TABLE `atencion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carro`
--

DROP TABLE IF EXISTS `carro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carro` (
  `id_carro` int NOT NULL AUTO_INCREMENT,
  `carro` varchar(45) DEFAULT NULL,
  `placa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_carro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carro`
--

LOCK TABLES `carro` WRITE;
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` VALUES (1,'kia','mkj 258'),(2,'spark','jhg 546'),(3,'renault','kui 894'),(4,'tuingo','los 874');
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `servicio` varchar(100) DEFAULT NULL,
  `id_carro` int DEFAULT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'lavado',1),(2,'mecanica',2),(3,'despinchadero',1),(4,'polichado',4),(5,'gasolina',3);
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04 19:43:23
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: parcial3
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id_comentario` int NOT NULL AUTO_INCREMENT,
  `comentario` varchar(45) DEFAULT NULL,
  `id_usuarios` int DEFAULT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `user_idx` (`id_usuarios`),
  CONSTRAINT `userss` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,'deo',1),(2,'exelente servicio',5),(3,'exelente servicio',5);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `placa` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_usuarios` int DEFAULT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `servicio_idx` (`id_usuarios`),
  CONSTRAINT `servicio` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'hfg 265','2020-12-03',1),(2,'hyg 256','2020-05-06',1),(3,'juh 542','2021-07-15',1),(4,'juh 542','2021-05-03',1);
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_usuario` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `tipo_usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'empleado'),(2,'usuario');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_vehiculo`
--

DROP TABLE IF EXISTS `tipo_vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_vehiculo` (
  `id_tipo_vehiculo` int NOT NULL AUTO_INCREMENT,
  `tipo_vehiculo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_vehiculo`
--

LOCK TABLES `tipo_vehiculo` WRITE;
/*!40000 ALTER TABLE `tipo_vehiculo` DISABLE KEYS */;
INSERT INTO `tipo_vehiculo` VALUES (1,'moto'),(2,'carro'),(3,'camioneta'),(4,'avion');
/*!40000 ALTER TABLE `tipo_vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int NOT NULL AUTO_INCREMENT,
  `usuarios` varchar(45) DEFAULT NULL,
  `id_tipo` int DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`),
  KEY `usuarios_idx` (`id_tipo`),
  CONSTRAINT `usuarios` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_usuario` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'daniel',1),(2,'duban',2),(3,'anyely',2),(4,'damian',1),(5,'alan',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `id_vehiculo` int NOT NULL AUTO_INCREMENT,
  `id_usuarios` int DEFAULT NULL,
  `placa` varchar(45) DEFAULT NULL,
  `id_tipo_vehiculo` int DEFAULT NULL,
  PRIMARY KEY (`id_vehiculo`),
  KEY `vehiculos_idx` (`id_usuarios`),
  KEY `user_idx` (`id_tipo_vehiculo`),
  CONSTRAINT `user` FOREIGN KEY (`id_tipo_vehiculo`) REFERENCES `tipo_vehiculo` (`id_tipo_vehiculo`),
  CONSTRAINT `vehiculos` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (1,1,'hfg 265',2),(2,2,'dte 123',3),(3,4,'hyg 256',4),(4,5,'juh 542',4);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04 19:43:24
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2021_05_30_164929_productos',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('2c41beb8be539e89ddb5725e499079c3a8e1a82a0e1745a9181caad5800a11ed3a415fa218a1c4c4',1,1,'authToken','[]',0,'2021-05-31 00:22:30','2021-05-31 00:22:30','2022-05-30 19:22:30');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','t5VkBkUyS9RnlN04dIhQqdLO5KicHORd2RxjfbTW',NULL,'http://localhost',1,0,0,'2021-05-31 00:22:23','2021-05-31 00:22:23'),(2,NULL,'Laravel Password Grant Client','I498HeNkHQWqjyx0r8Zf0SiaKf8zdvpjmnEKzooh','users','http://localhost',0,1,0,'2021-05-31 00:22:23','2021-05-31 00:22:23');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2021-05-31 00:22:23','2021-05-31 00:22:23');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_actual` double NOT NULL,
  `precio_anterior` double NOT NULL,
  `cantidad` double NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Queso mozzarella tajado','https://www.miaguila.com/tiendas/d1/products/12000084.png',6680,5000,100,'on',NULL,'2021-05-31 03:50:12'),(2,'Arroz','https://s1.eestatic.com/2020/05/29/ciencia/nutricion/arroz-seguridad_alimentaria-enfermedades_493711911_152762637_1706x960.jpg',3000,5000,10,'on','2021-05-31 01:57:14','2021-05-31 01:57:14'),(3,'Carne de cerdo','data:image/jpeg;base64,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',4000,12000,10,'on','2021-05-31 02:02:37','2021-05-31 02:18:08'),(4,'Frijol','https://files.rcnradio.com/public/styles/depliegue_img_especial/public/2020-08/beans-316592_1280.jpg?itok=GPU3yRRe',5000,6000,10,'off','2021-05-31 02:04:32','2021-05-31 02:04:32'),(5,'Lenteja','https://w6h5a5r4.rocketcdn.me/wp-content/uploads/2019/10/tipos-de-lentejas-1.jpg',5000,3000,40,'on','2021-05-31 02:21:36','2021-05-31 02:23:17'),(13,'TOMATE CHONTO UNIDAD','https://www.lovemysalad.com/sites/default/files/styles/image_415x281/public/tomates_-_vladimir_morozov.jpg?itok=gU1-XJyE',780,690,1000,'on','2021-05-31 04:08:02','2021-05-31 04:08:02'),(14,'Servilletas acolchamax famitaco medianas x 300 und FAMILIA','https://images.ctfassets.net/tcoigcjw85h2/7wKKZVr1b9as1hc5D8viHC/ff80e95e5075a7f88109bd6e31d52790/X220-SERVILLETAS-FAMILIA-PRACTI-DIARIAS.png',5380,5450,500,'on','2021-05-31 04:08:02','2021-05-31 04:08:02'),(15,'Leche Alqueria Deslactosada Sixpack x 1300 Ml c.u','https://jumbocolombiafood.vteximg.com.br/arquivos/ids/3295314-1000-1000/7702177007341-1.jpg?v=636646649212300000',19900,21000,350,'on','2021-05-31 04:08:02','2021-05-31 04:08:02'),(16,'Gaseosa COCA COLA Sabor Original 1500ml ','https://i1.wp.com/www.licoresmedellin.com/wp-content/uploads/2017/10/Cocacola-3lts-Licores_Medellin-.jpg?fit=600%2C800&ssl=1',3500,3800,150,'on','2021-05-31 04:08:03','2021-05-31 04:08:03'),(17,'Avena en hojuelas original megabolsa x 960 g','https://exitocol.vtexassets.com/arquivos/ids/1818183-800-auto?width=800&height=auto&aspect=true',8650,9325,230,'false','2021-05-31 04:08:03','2021-05-31 04:09:28');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'anyely','anyely-04@hotmail.com',NULL,'$2y$10$VLH5OKZdeT6Iu5DVW0BqxuJaNIlhLJu0X9CiErEgiX4TFwJk0dFOC',NULL,'2021-05-31 00:11:50','2021-05-31 00:11:50'),(4,'hamilton','diaz3220@hotmail.com',NULL,'$2y$10$uHF7WBpT/aEFizhtPUS/6uRCpng6KXL9NqLjogXwYuLlzUQIg5n7i',NULL,'2021-05-31 04:08:02','2021-05-31 04:08:02'),(5,'lisseth','liyafi1210@hotmail.com',NULL,'$2y$10$l9ekYK6X9h7XTMZKHw.heeL3poG01L4P./XeupXMqUcXE.jBU2I/O',NULL,'2021-05-31 04:08:02','2021-05-31 04:08:02');
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

-- Dump completed on 2021-06-04 19:43:24
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: backproyectocafe
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `admin` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_admin`
--

DROP TABLE IF EXISTS `clientes_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_admin` (
  `id_clientes_admin` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(85) DEFAULT NULL,
  `apellido` varchar(85) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_clientes_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_admin`
--

LOCK TABLES `clientes_admin` WRITE;
/*!40000 ALTER TABLE `clientes_admin` DISABLE KEYS */;
INSERT INTO `clientes_admin` VALUES (5,'Anyely Daya','guzman','258888');
/*!40000 ALTER TABLE `clientes_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id_comentarios` int NOT NULL AUTO_INCREMENT,
  `comentario` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_comentarios`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (4,'hola'),(5,'undefined'),(6,'undefined'),(7,'undefined');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envios`
--

DROP TABLE IF EXISTS `envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envios` (
  `id_envios` int NOT NULL AUTO_INCREMENT,
  `cll` int DEFAULT NULL,
  `cra` int DEFAULT NULL,
  `esquina` int DEFAULT NULL,
  `numero_casa` int DEFAULT NULL,
  `barrio` varchar(45) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_envios`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envios`
--

LOCK TABLES `envios` WRITE;
/*!40000 ALTER TABLE `envios` DISABLE KEYS */;
INSERT INTO `envios` VALUES (2,25,53,2,5,'los andes','32026906200');
/*!40000 ALTER TABLE `envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ganancias_admin`
--

DROP TABLE IF EXISTS `ganancias_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ganancias_admin` (
  `id_ganancias_admin` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(45) DEFAULT NULL,
  `mes` varchar(45) DEFAULT NULL,
  `ganancia_total` int DEFAULT NULL,
  PRIMARY KEY (`id_ganancias_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ganancias_admin`
--

LOCK TABLES `ganancias_admin` WRITE;
/*!40000 ALTER TABLE `ganancias_admin` DISABLE KEYS */;
INSERT INTO `ganancias_admin` VALUES (2,'cafe molido','abril',2585454),(3,'cafe molido','abril',2854),(4,'cafe','marzo',325455);
/*!40000 ALTER TABLE `ganancias_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
  `id_ordenes` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id_ordenes`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (3,'kjdfdfjjf',144455),(4,'leche',2155);
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedidos` int NOT NULL AUTO_INCREMENT,
  `id_usuarios` int DEFAULT NULL,
  `id_envios` int DEFAULT NULL,
  `metodoPago` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pedidos`),
  KEY `fk_id_usuario_idx` (`id_usuarios`),
  KEY `fk_id_envio_idx` (`id_envios`),
  CONSTRAINT `fk_id_envio` FOREIGN KEY (`id_envios`) REFERENCES `envios` (`id_envios`),
  CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,3,2,'efectivo');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_productos`
--

DROP TABLE IF EXISTS `pedidos_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_productos` (
  `id_pedidos_productos` int NOT NULL AUTO_INCREMENT,
  `id_pedidos` int DEFAULT NULL,
  `id_productos` int DEFAULT NULL,
  PRIMARY KEY (`id_pedidos_productos`),
  KEY `fk_id_producto_idx` (`id_productos`),
  KEY `fk_id_pedido_idx` (`id_pedidos`),
  CONSTRAINT `fk_id_pedido` FOREIGN KEY (`id_pedidos`) REFERENCES `pedidos` (`id_pedidos`),
  CONSTRAINT `fk_id_producto` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_productos`
--

LOCK TABLES `pedidos_productos` WRITE;
/*!40000 ALTER TABLE `pedidos_productos` DISABLE KEYS */;
INSERT INTO `pedidos_productos` VALUES (1,1,2),(2,1,3),(3,1,4);
/*!40000 ALTER TABLE `pedidos_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perdidas_admin`
--

DROP TABLE IF EXISTS `perdidas_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perdidas_admin` (
  `id_perdidas_admin` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(45) DEFAULT NULL,
  `mes` varchar(45) DEFAULT NULL,
  `perdida_total` int DEFAULT NULL,
  PRIMARY KEY (`id_perdidas_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perdidas_admin`
--

LOCK TABLES `perdidas_admin` WRITE;
/*!40000 ALTER TABLE `perdidas_admin` DISABLE KEYS */;
INSERT INTO `perdidas_admin` VALUES (2,'cafe molido','abril',52000),(3,'cafe molido','junio',250),(4,'cafe','octubre',58200),(5,'cafe','junio',6000000),(6,'cafe','junio',255000);
/*!40000 ALTER TABLE `perdidas_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_transportador_admin`
--

DROP TABLE IF EXISTS `personal_transportador_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_transportador_admin` (
  `id_personal_transportador_admin` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_personal_transportador_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_transportador_admin`
--

LOCK TABLES `personal_transportador_admin` WRITE;
/*!40000 ALTER TABLE `personal_transportador_admin` DISABLE KEYS */;
INSERT INTO `personal_transportador_admin` VALUES (2,'Anyely Daya','guzmandfvdvd','3202606200','4');
/*!40000 ALTER TABLE `personal_transportador_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_ptes_entregar_admin`
--

DROP TABLE IF EXISTS `pro_ptes_entregar_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pro_ptes_entregar_admin` (
  `id_pro_ptes_entregar_admin` int NOT NULL AUTO_INCREMENT,
  `nombre_pro` varchar(85) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `id_clientes_admin` int DEFAULT NULL,
  PRIMARY KEY (`id_pro_ptes_entregar_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_ptes_entregar_admin`
--

LOCK TABLES `pro_ptes_entregar_admin` WRITE;
/*!40000 ALTER TABLE `pro_ptes_entregar_admin` DISABLE KEYS */;
INSERT INTO `pro_ptes_entregar_admin` VALUES (3,'undefined',4,250000,NULL),(4,'undefined',3,2,NULL),(5,'undefined',32232,432432432,NULL);
/*!40000 ALTER TABLE `pro_ptes_entregar_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_ptes_llegar_admin`
--

DROP TABLE IF EXISTS `pro_ptes_llegar_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pro_ptes_llegar_admin` (
  `id_pro_ptes_llegar_admin` int NOT NULL AUTO_INCREMENT,
  `nombre_pro` varchar(85) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `id_proveedores_admin` int DEFAULT NULL,
  PRIMARY KEY (`id_pro_ptes_llegar_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_ptes_llegar_admin`
--

LOCK TABLES `pro_ptes_llegar_admin` WRITE;
/*!40000 ALTER TABLE `pro_ptes_llegar_admin` DISABLE KEYS */;
INSERT INTO `pro_ptes_llegar_admin` VALUES (1,'anyely',333,3,NULL);
/*!40000 ALTER TABLE `pro_ptes_llegar_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_productos` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`id_productos`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (2,'cafe molido artesanal',555555,250044444),(3,'helado',60,1000),(4,'frappeksjd',204,1200044),(12,'guzman',7,4),(13,'df',5,5);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_bodega_admin`
--

DROP TABLE IF EXISTS `productos_bodega_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_bodega_admin` (
  `id_productos_bodega` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(85) DEFAULT NULL,
  `cantidad_total` int DEFAULT NULL,
  `precio_total` int DEFAULT NULL,
  PRIMARY KEY (`id_productos_bodega`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_bodega_admin`
--

LOCK TABLES `productos_bodega_admin` WRITE;
/*!40000 ALTER TABLE `productos_bodega_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos_bodega_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_admin`
--

DROP TABLE IF EXISTS `proveedores_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_admin` (
  `id_proveedores_admin` int NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(100) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `mes` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`id_proveedores_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_admin`
--

LOCK TABLES `proveedores_admin` WRITE;
/*!40000 ALTER TABLE `proveedores_admin` DISABLE KEYS */;
INSERT INTO `proveedores_admin` VALUES (4,'Leomkmm','hdjdiruserg','abrilggfefdfgd',12,12500);
/*!40000 ALTER TABLE `proveedores_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int NOT NULL AUTO_INCREMENT,
  `accessToken` varchar(500) DEFAULT NULL,
  `idToken` varchar(500) DEFAULT NULL,
  `refreshToken` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `photoUrl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'ddddddddddddddddddddddddddddd','bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb','cccccccccccccccccccccccccccccc','anyely@gmail.com','ddddddd'),(3,'kjsdnjjvkkjvd','jhvjvjvjv','kjbkjbkjbbjkmjb','jbjbjhkjbbjk','kjbjbkjkbjkb'),(4,'mhvhjvhvjvhj','hjvbhhjv','jbhjkbjkb','zbfkjfvkjdfbkjd','sdvhksbdv');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo_admin`
--

DROP TABLE IF EXISTS `vehiculo_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo_admin` (
  `id_vehiculo_admin` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  `tipo_vehiculo` varchar(45) DEFAULT NULL,
  `placa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_vehiculo_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo_admin`
--

LOCK TABLES `vehiculo_admin` WRITE;
/*!40000 ALTER TABLE `vehiculo_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculo_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_admin`
--

DROP TABLE IF EXISTS `ventas_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_admin` (
  `id_ventas` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(85) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `mes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ventas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_admin`
--

LOCK TABLES `ventas_admin` WRITE;
/*!40000 ALTER TABLE `ventas_admin` DISABLE KEYS */;
INSERT INTO `ventas_admin` VALUES (4,'cafe molido',5,2500,'mayo'),(5,'cafe molido',3,2500,'marzo'),(6,'cafe molido',5,47444,'mayo'),(8,'cafe molido',65,2500,'marzo'),(9,'cafe molido',5,6565,'diciembre'),(10,'cafe',5,2,'octubre');
/*!40000 ALTER TABLE `ventas_admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04 19:43:24
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: parcial
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `id_usuarios` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `fk_usuarios_idx` (`id_usuarios`),
  CONSTRAINT `fk_usuarios` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,1,20),(2,2,3),(3,3,0),(4,4,5),(5,5,10);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'admin'),(2,'cliente'),(3,'visitante');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `id_rol` int DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`),
  KEY `fk_rol_idx` (`id_rol`),
  CONSTRAINT `fk_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'anyely','guzman',20,1),(2,'alam','galviz',4,1),(3,'wini','galviz',24,2),(4,'michel','guzman',19,1),(5,'astrid','galviz',16,3);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04 19:43:24
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectolen
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) DEFAULT NULL,
  `contra` varchar(45) DEFAULT NULL,
  `rol_id` int DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'anyely','112',1,'anyely',20),(2,'alan','123',2,'damian',4),(3,'juan','232',1,'juanca',25),(6,'anyely','258',NULL,'hhhjh',44);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04 19:43:24
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: cashbox
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20210314195348-create-user-model.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John','$2b$17$NFLEioatp47Dg1YG1siYAe2KgVHydEYiy2b9Wxw0nuCeaFRsE5eyO','example@example.com','2021-03-15 05:48:35','2021-03-15 05:48:35');
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

-- Dump completed on 2021-06-04 19:43:24
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio1
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'gorra',3000),(2,'gafas',2000),(3,'lapiz',800),(5,'jugo',3000),(6,'jugo hit',2500);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04 19:43:25
