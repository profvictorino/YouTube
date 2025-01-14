-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aloca`
--

DROP TABLE IF EXISTS `aloca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aloca` (
  `Projeto_Codigo` int(11) NOT NULL,
  `Pessoa_CPF` int(11) NOT NULL,
  PRIMARY KEY (`Projeto_Codigo`,`Pessoa_CPF`),
  KEY `fk_Projeto_has_Pessoa_Pessoa1_idx` (`Pessoa_CPF`),
  KEY `fk_Projeto_has_Pessoa_Projeto_idx` (`Projeto_Codigo`),
  CONSTRAINT `fk_Projeto_has_Pessoa_Pessoa1` FOREIGN KEY (`Pessoa_CPF`) REFERENCES `pessoa` (`CPF`),
  CONSTRAINT `fk_Projeto_has_Pessoa_Projeto` FOREIGN KEY (`Projeto_Codigo`) REFERENCES `projeto` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aloca`
--

LOCK TABLES `aloca` WRITE;
/*!40000 ALTER TABLE `aloca` DISABLE KEYS */;
INSERT INTO `aloca` VALUES (1122,123),(3344,123),(5566,123),(3344,147),(1122,456),(5566,456),(3344,789);
/*!40000 ALTER TABLE `aloca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pessoa` (
  `CPF` int(11) NOT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  `Sexo` char(1) DEFAULT NULL,
  `Idade` int(11) DEFAULT NULL,
  `Gerente_CPF` int(11) DEFAULT NULL,
  PRIMARY KEY (`CPF`),
  KEY `fk_Pessoa_Pessoa1_idx` (`Gerente_CPF`),
  CONSTRAINT `fk_Pessoa_Pessoa1` FOREIGN KEY (`Gerente_CPF`) REFERENCES `pessoa` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (123,'Rubi','F',35,NULL),(147,'Maria','F',42,123),(258,'Edu','M',45,147),(456,'Igor','M',40,123),(789,'Luiz','M',38,456);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto`
--

DROP TABLE IF EXISTS `projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `projeto` (
  `Codigo` int(11) NOT NULL,
  `Descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto`
--

LOCK TABLES `projeto` WRITE;
/*!40000 ALTER TABLE `projeto` DISABLE KEYS */;
INSERT INTO `projeto` VALUES (1122,'BI'),(3344,'GTI'),(5566,'SIG');
/*!40000 ALTER TABLE `projeto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-15 13:58:40
