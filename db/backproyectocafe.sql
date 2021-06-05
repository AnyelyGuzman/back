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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_admin`
--

LOCK TABLES `clientes_admin` WRITE;
/*!40000 ALTER TABLE `clientes_admin` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
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
-- Table structure for table `ganacias_admin`
--

DROP TABLE IF EXISTS `ganacias_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ganacias_admin` (
  `id_ganacias_admin` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(45) DEFAULT NULL,
  `mes` varchar(45) DEFAULT NULL,
  `gancia total` int DEFAULT NULL,
  PRIMARY KEY (`id_ganacias_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ganacias_admin`
--

LOCK TABLES `ganacias_admin` WRITE;
/*!40000 ALTER TABLE `ganacias_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ganacias_admin` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (2,'carne',25);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perdidas_admin`
--

LOCK TABLES `perdidas_admin` WRITE;
/*!40000 ALTER TABLE `perdidas_admin` DISABLE KEYS */;
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
  `id_vehiculo_admin` int DEFAULT NULL,
  PRIMARY KEY (`id_personal_transportador_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_transportador_admin`
--

LOCK TABLES `personal_transportador_admin` WRITE;
/*!40000 ALTER TABLE `personal_transportador_admin` DISABLE KEYS */;
INSERT INTO `personal_transportador_admin` VALUES (1,'undefined','undefined','undefined','undefined',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_ptes_entregar_admin`
--

LOCK TABLES `pro_ptes_entregar_admin` WRITE;
/*!40000 ALTER TABLE `pro_ptes_entregar_admin` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_ptes_llegar_admin`
--

LOCK TABLES `pro_ptes_llegar_admin` WRITE;
/*!40000 ALTER TABLE `pro_ptes_llegar_admin` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (2,'cafe',12,2500),(3,'helado',6,1000),(4,'frappe',20,12000),(5,'helado mix',20,6000);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_admin`
--

LOCK TABLES `proveedores_admin` WRITE;
/*!40000 ALTER TABLE `proveedores_admin` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_admin`
--

LOCK TABLES `ventas_admin` WRITE;
/*!40000 ALTER TABLE `ventas_admin` DISABLE KEYS */;
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

-- Dump completed on 2021-03-16  0:40:20
