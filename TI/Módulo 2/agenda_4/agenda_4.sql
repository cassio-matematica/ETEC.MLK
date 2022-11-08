CREATE DATABASE  IF NOT EXISTS `Db_Condominio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Db_Condominio`;
-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Db_Condominio
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `Apartamento`
--

DROP TABLE IF EXISTS `Apartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Apartamento` (
  `numero_ap` int NOT NULL,
  `tipo_ap` varchar(45) DEFAULT NULL,
  `codigo_cond` int DEFAULT NULL,
  `rg_proprietario` int DEFAULT NULL,
  PRIMARY KEY (`numero_ap`),
  KEY `fk_rg_proprietario_idx` (`rg_proprietario`),
  KEY `fk_codigo_cond_idx` (`codigo_cond`),
  CONSTRAINT `fk_codigo_cond` FOREIGN KEY (`codigo_cond`) REFERENCES `Condominio` (`codigo_cond`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_rg_proprietario` FOREIGN KEY (`rg_proprietario`) REFERENCES `proprietario` (`rg_prop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Apartamento`
--

LOCK TABLES `Apartamento` WRITE;
/*!40000 ALTER TABLE `Apartamento` DISABLE KEYS */;
INSERT INTO `Apartamento` VALUES (1,NULL,NULL,NULL),(10,'cobertura',1,34525161),(11,'padrao',1,34525162),(13,'padrao',1,34525163),(14,'padrao',1,34525164),(15,'cobertura',2,34525165),(16,'padrao',2,34525166),(17,'padrao',2,34525167),(18,'padrao',2,34525168),(19,'padrao',2,34525169);
/*!40000 ALTER TABLE `Apartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Condominio`
--

DROP TABLE IF EXISTS `Condominio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Condominio` (
  `codigo_cond` int NOT NULL,
  `Nome_cond` varchar(45) DEFAULT NULL,
  `rua_cond` varchar(45) DEFAULT NULL,
  `numero_cond` int DEFAULT NULL,
  `bairro_cond` varchar(45) DEFAULT NULL,
  `estado_cond` varchar(45) DEFAULT NULL,
  `cep` int DEFAULT NULL,
  `matrícula_sind` int DEFAULT NULL,
  PRIMARY KEY (`codigo_cond`),
  KEY `matricula_sind_idx` (`matrícula_sind`),
  CONSTRAINT `matricula_sind` FOREIGN KEY (`matrícula_sind`) REFERENCES `Sindico` (`matrícula_sind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Condominio`
--

LOCK TABLES `Condominio` WRITE;
/*!40000 ALTER TABLE `Condominio` DISABLE KEYS */;
INSERT INTO `Condominio` VALUES (1,'Praia Grande','Ubatuda',6,'Mooca','São Paulo',311111,1),(2,'Peixe','Rua Piranha',7,'Mooca','São Paulo',1111111,2);
/*!40000 ALTER TABLE `Condominio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Garagem`
--

DROP TABLE IF EXISTS `Garagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Garagem` (
  `numero_gr` float NOT NULL COMMENT '\\n\\n',
  `tipo_gr` varchar(45) DEFAULT NULL,
  `numero_ap` int DEFAULT NULL,
  PRIMARY KEY (`numero_gr`),
  KEY `numero_ap_idx` (`numero_ap`),
  CONSTRAINT `numero_ap` FOREIGN KEY (`numero_ap`) REFERENCES `Apartamento` (`numero_ap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Garagem`
--

LOCK TABLES `Garagem` WRITE;
/*!40000 ALTER TABLE `Garagem` DISABLE KEYS */;
INSERT INTO `Garagem` VALUES (1,'coberta',10),(1.1,'descoberta',10),(2,'descoberta',11),(2.1,'descoberta',11),(4,'coberta',13),(4.1,'descoberta',13),(5,'descoberta',14),(5.1,'descoberta',14),(6,'Coberta',15),(7,'descoberta',16),(8,'descoberta',17),(9,' descoberta',18),(10,'descoberta',19);
/*!40000 ALTER TABLE `Garagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sindico`
--

DROP TABLE IF EXISTS `Sindico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sindico` (
  `matrícula_sind` int NOT NULL,
  `nome_sind` varchar(45) DEFAULT NULL,
  `sobrenome_sind` varchar(45) DEFAULT NULL,
  `rua_sind` varchar(45) DEFAULT NULL,
  `bairro_sind` varchar(45) DEFAULT NULL,
  `estado_sind` varchar(45) DEFAULT NULL,
  `cep_sind` varchar(45) DEFAULT NULL,
  `telefone_fixo_sind` int DEFAULT NULL,
  `celular_sind` varchar(45) DEFAULT NULL,
  `e-mail_sind` varchar(45) DEFAULT NULL,
  `Data_Inicio_mandato_sind` date DEFAULT NULL,
  `Data_fim_mandato_sind` date DEFAULT NULL,
  PRIMARY KEY (`matrícula_sind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sindico`
--

LOCK TABLES `Sindico` WRITE;
/*!40000 ALTER TABLE `Sindico` DISABLE KEYS */;
INSERT INTO `Sindico` VALUES (1,'Zacarias	\n','da Silva	','Oratorio, 5','Moema','São Paulo','03111111',11222222,'1192222222	','sindico@gmail.com','2001-07-15','2003-07-15'),(2,'Maria	\n','das Graças','Rua Pardal','Indianópolis','São Paulo','031111111',113333333,'119333333','sindica@gmail.com','2003-07-15','2006-07-15');
/*!40000 ALTER TABLE `Sindico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proprietario`
--

DROP TABLE IF EXISTS `proprietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proprietario` (
  `rg_prop` int NOT NULL,
  `nome_prop` varchar(45) DEFAULT NULL,
  `sobrenome_prop` varchar(45) DEFAULT NULL,
  `Telefone_Fixo_prop` int DEFAULT NULL,
  `e-mail_prop` varchar(45) DEFAULT NULL,
  `celular_prop` int DEFAULT NULL,
  PRIMARY KEY (`rg_prop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proprietario`
--

LOCK TABLES `proprietario` WRITE;
/*!40000 ALTER TABLE `proprietario` DISABLE KEYS */;
INSERT INTO `proprietario` VALUES (34525110,'João','da Silva',22222210,'joao@gmail.com',91111110),(34525161,'Alberto','da Silva',22222221,'alberto@gmail.com',91111111),(34525162,'Bruna','da Silva',22222222,'bruna@gmail.com',9111122),(34525163,'Carla','da Silva',22222223,'carla@gmail.com',91111113),(34525164,'Daniel','da Silva',22222224,'daniel@gmail.com',91111114),(34525165,'Eduarda','da Silva',22222225,'eduarda@gmail.com',91111115),(34525166,'Felipe','da Silva',22222226,'felipe@gmail.com',91111116),(34525167,'Gabriela','da Silva',22222227,'gabriela@gmail.com',91111117),(34525168,'Henrique','da Silva',22222228,'henrique@gmail.com',91111118),(34525169,'Igor','da Silva',22222229,'igor@gmail.com',91111119);
/*!40000 ALTER TABLE `proprietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proprietario_apartamento`
--

DROP TABLE IF EXISTS `proprietario_apartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proprietario_apartamento` (
  `prop_ap_id` int NOT NULL AUTO_INCREMENT,
  `rg_prop` int DEFAULT NULL,
  `numero_ap` int DEFAULT NULL,
  PRIMARY KEY (`prop_ap_id`),
  KEY `rg_proprietario_idx` (`rg_prop`),
  KEY `rg_prop_idx` (`rg_prop`),
  KEY `rg_proprietario_idx1` (`rg_prop`,`numero_ap`),
  KEY `prop_ap_idx` (`prop_ap_id`,`rg_prop`),
  KEY `numero_ap_idx` (`numero_ap`),
  CONSTRAINT `rg_prop` FOREIGN KEY (`rg_prop`) REFERENCES `proprietario` (`rg_prop`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proprietario_apartamento`
--

LOCK TABLES `proprietario_apartamento` WRITE;
/*!40000 ALTER TABLE `proprietario_apartamento` DISABLE KEYS */;
INSERT INTO `proprietario_apartamento` VALUES (1,34525110,10),(2,34525162,10),(3,34525163,11),(4,34525164,11),(5,34525165,11),(9,34525166,14),(6,34525167,13),(8,34525167,14),(7,34525168,14),(10,34525169,15);
/*!40000 ALTER TABLE `proprietario_apartamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-11 12:02:03
