-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: Almacen
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.22.04.1

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
-- Table structure for table `Almacenes`
--

DROP TABLE IF EXISTS `Almacenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Almacenes` (
  `almCodigo` int NOT NULL AUTO_INCREMENT,
  `almLugar` varchar(100) NOT NULL,
  `almCapacidad` int DEFAULT '0',
  `almFechaAlta` date NOT NULL,
  PRIMARY KEY (`almCodigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Almacenes`
--

LOCK TABLES `Almacenes` WRITE;
/*!40000 ALTER TABLE `Almacenes` DISABLE KEYS */;
INSERT INTO `Almacenes` VALUES (1,'Av. Madre de Ciudades 3559 - Santiago del Estero',1500,'2013-03-30'),(2,'Av. Rivadavia 16714 - Buenos Aires',2455,'2014-06-05'),(3,'Suipacha 1250 - Tucuman',2015,'2014-03-30'),(4,'Lavalle 3040 - Santiago del Estero',1456,'2014-07-26'),(5,'Diego de Rojas 620 - Catamarca',469,'2015-02-23');
/*!40000 ALTER TABLE `Almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cajas`
--

DROP TABLE IF EXISTS `Cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cajas` (
  `cajNumReferencia` char(5) NOT NULL,
  `cajContenido` varchar(100) DEFAULT NULL,
  `cajValor` decimal(15,2) DEFAULT '100.00',
  `Almacen` int DEFAULT NULL,
  PRIMARY KEY (`cajNumReferencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cajas`
--

LOCK TABLES `Cajas` WRITE;
/*!40000 ALTER TABLE `Cajas` DISABLE KEYS */;
INSERT INTO `Cajas` VALUES ('CA001','Expedientes 2012',300.00,5),('CA002','Mochila Mod',3400.00,2),('CC001','Expedientes 2012',300.00,5),('HA002','SSD 240GB',6290.00,5),('SE001','Libros',355.78,1),('SE002','Cartucheras',1557.00,1),('SE005','Cargadores 19w',1800.40,2),('SS001','Libros',355.78,1),('SS002','Cartucheras',1557.00,1),('TC001','Vajilla',2456.66,3),('TC002','Teclado',2100.50,4),('TC003','Memoria RAM',7698.90,2),('TC009','Vajilla',2456.66,3),('ZZ001','Anteojos de Sol',4510.30,2);
/*!40000 ALTER TABLE `Cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clientes` (
  `cliCodigo` int NOT NULL AUTO_INCREMENT,
  `cliDNI` varchar(8) DEFAULT NULL,
  `cliNombre` char(40) NOT NULL,
  `cliFecNac` date NOT NULL,
  `cliDomicilio` varchar(50) DEFAULT NULL,
  `cliProvincia` varchar(50) DEFAULT NULL,
  `cliTelefono` varchar(32) DEFAULT NULL,
  `cliCodigoPostal` int DEFAULT NULL,
  `cliFechaAlta` date NOT NULL,
  PRIMARY KEY (`cliCodigo`),
  UNIQUE KEY `cliDNI` (`cliDNI`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES (1,'41720940','Cruz Luis Roberto','1999-02-26','B.750 Viviendas','Santiago del Estero','3855990104',4200,'2020-12-02'),(2,'42267120','Miranda Chiervo Milagro Rita','1999-09-02','B.Villa del Carmen 450 Viv.','Santiago del Estero','3856821186',4200,'2020-04-12'),(3,'45212011','Moreno Alexyo Martin','2002-06-30','B.Catolica','Buenos Aires','3856922312',2320,'2020-11-15'),(4,'42182884','Cruz Juan Pablo Javier','2004-10-04','B.750 Viviendas','Santiago del Estero','3856783011',4200,'2020-02-11'),(5,'41982993','Contreras Juliana Micaela','2009-01-04','B.Albarados','Buenos Aires','3855693332',2320,'2021-01-04'),(6,'39182293','Westvern Sofia Paula','1999-09-27','B.25 de Mayo','Tucuman','3855839126',1222,'2020-08-12'),(7,'40122023','Gomez Rita Sofia','1998-02-12','B.Ejercito Argentino','Santigo del Estero','3855912492',4200,'2020-05-11'),(8,'24189810','Leiva Sonia Viviana','1970-09-01','B.750 Viviendas','Santiago del Estero','3854858941',4200,'2020-04-22'),(9,'36199203','Matorra Sebastian Marcos','1982-11-22','B.La Pierdad','Catamarca','3856293433',1200,'2020-04-12'),(10,'27830012','Salvatierra Jose Maria','1974-05-21','B.Palomar','Catamarca','3856776893',1200,'2020-12-11');
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Factura`
--

DROP TABLE IF EXISTS `Factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Factura` (
  `facPtoVenta` varchar(5) NOT NULL,
  `facNroFactura` int NOT NULL,
  `cliCodigo` int NOT NULL,
  `facNombre` varchar(40) DEFAULT NULL,
  `facDomicilio` varchar(50) NOT NULL,
  `facFechaYHora` timestamp NOT NULL,
  `facCUIT` int NOT NULL,
  `facCondicionVenta` smallint DEFAULT NULL,
  `facIVA` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`facPtoVenta`,`facNroFactura`),
  UNIQUE KEY `facCUIT` (`facCUIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Factura`
--

LOCK TABLES `Factura` WRITE;
/*!40000 ALTER TABLE `Factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `Factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FacturaDetalle`
--

DROP TABLE IF EXISTS `FacturaDetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FacturaDetalle` (
  `facNroVenta` varchar(10) NOT NULL,
  `facDetLinea` smallint DEFAULT '0',
  `facDetCantidad` int NOT NULL,
  `facDetDetalle` varchar(50) DEFAULT NULL,
  `facDetPrecUnitario` decimal(12,5) DEFAULT NULL,
  PRIMARY KEY (`facNroVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FacturaDetalle`
--

LOCK TABLES `FacturaDetalle` WRITE;
/*!40000 ALTER TABLE `FacturaDetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `FacturaDetalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-16  9:38:53
