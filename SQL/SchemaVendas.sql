-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: vendas
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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cliente` (
  `CPF` int(11) NOT NULL,
  `Primeiro_Nome` varchar(20) NOT NULL,
  `Familia_Nome` varchar(20) NOT NULL,
  `DT_Nascimento` date DEFAULT NULL,
  `Estado_Civil` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (111,'Fernando','Riffel','1996-07-31','Casado'),(222,'Roberto','Cadavel','1987-10-12','Solteiro'),(333,'Lendro','Mar','1998-09-28','Solteiro'),(444,'Rafael','Laranjeira','1991-05-23','Solteiro'),(555,'Bruno','Macieira','1992-04-25','Casado'),(666,'Shirlay','Sá','1988-12-12','Solteiro'),(777,'Keila','Anjo','1985-05-25','Casado'),(888,'Pedro','Pereira','1989-10-02','Solteiro'),(999,'Katia','Silva','1979-12-01','Casado');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `departamento` (
  `Codigo` int(11) NOT NULL,
  `Nome` varchar(15) NOT NULL,
  `UF` char(2) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (10,'RH','RJ'),(20,'TI','RJ'),(30,'Logística','DF'),(40,'Financeiro','DF'),(50,'Venda','RS'),(60,'Pesquisa','RJ');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregado`
--

DROP TABLE IF EXISTS `empregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empregado` (
  `Matricula` int(11) NOT NULL,
  `Primeiro_Nome` varchar(20) NOT NULL,
  `Familia_Nome` varchar(20) NOT NULL,
  `Salario` float(8,2) DEFAULT NULL,
  `Departamento_Codigo` int(11) DEFAULT NULL,
  `Gerente_Matricula` int(11) DEFAULT NULL,
  PRIMARY KEY (`Matricula`),
  KEY `fk_Empregado_Departamento_idx` (`Departamento_Codigo`),
  KEY `fk_Empregado_Empregado1_idx` (`Gerente_Matricula`),
  CONSTRAINT `fk_Empregado_Departamento` FOREIGN KEY (`Departamento_Codigo`) REFERENCES `departamento` (`Codigo`),
  CONSTRAINT `fk_Empregado_Empregado1` FOREIGN KEY (`Gerente_Matricula`) REFERENCES `empregado` (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregado`
--

LOCK TABLES `empregado` WRITE;
/*!40000 ALTER TABLE `empregado` DISABLE KEYS */;
INSERT INTO `empregado` VALUES (123,'Igor','Pereira',100.00,10,NULL),(147,'Eduardo','Monteiro',700.00,20,NULL),(153,'Vera','Delta',323.00,50,NULL),(159,'Denise','Moreno',440.00,40,NULL),(258,'Marcio','Sá',800.00,30,NULL),(321,'Lia','Jardim',400.00,NULL,NULL),(369,'Marcelo','Neiva',900.00,40,NULL),(456,'Ana','Oliveira',200.00,20,NULL),(654,'João','Cardoso',500.00,NULL,NULL),(741,'Marcos','Victor',110.00,50,153),(789,'Clara','Silva',300.00,30,258),(852,'Paulo','José',220.00,50,153),(963,'Deyse','Silva',330.00,30,258),(987,'José','Moreno',600.00,50,153);
/*!40000 ALTER TABLE `empregado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item` (
  `N_Ordem` int(11) NOT NULL,
  `Preco_Unidade` float(8,2) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `Venda_Numero` int(11) NOT NULL,
  `Produto_Codigo` int(11) NOT NULL,
  PRIMARY KEY (`N_Ordem`,`Venda_Numero`),
  KEY `fk_Item_Venda1_idx` (`Venda_Numero`),
  KEY `fk_Item_Produto1_idx` (`Produto_Codigo`),
  CONSTRAINT `fk_Item_Produto1` FOREIGN KEY (`Produto_Codigo`) REFERENCES `produto` (`Codigo`),
  CONSTRAINT `fk_Item_Venda1` FOREIGN KEY (`Venda_Numero`) REFERENCES `venda` (`Numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,450.00,3,1,2222),(1,4350.00,1,2,9999),(1,3150.00,3,3,7777),(1,1200.00,4,4,1111),(1,3200.36,3,5,7777),(1,1250.48,2,6,1111),(1,499.99,2,7,2222),(1,3220.63,1,8,7777),(1,1256.98,2,9,1111),(1,1750.36,5,10,5555),(2,650.32,2,1,3333),(2,2200.00,1,2,8888),(2,1835.00,1,4,5555),(2,789.50,1,6,4444),(2,650.35,4,8,3333),(2,369.99,3,10,2222),(3,810.65,1,1,4444),(3,2136.65,3,6,8888),(3,1835.63,1,8,5555),(3,586.99,1,10,3333);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `produto` (
  `Codigo` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Categoria` varchar(45) NOT NULL,
  `Preco_Sugerido` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1010,'Microondas','Eletrodoméstico',550.00),(1111,'Geladeira','Eletrodoméstico',1356.65),(2222,'Impressora','Informática',500.84),(3333,'Fogão','Eletrodoméstico',689.50),(4444,'Televisão','Eletrodoméstico',856.65),(5555,'Tablete','Informática',1950.65),(7777,'Computador ','Informática',3500.00),(8888,'Celular','Telefonia',2200.00),(9999,'Notebook','Informática',4350.00);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `venda` (
  `Numero` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Empregado_Matricula` int(11) NOT NULL,
  `Cliente_CPF` int(11) NOT NULL,
  PRIMARY KEY (`Numero`),
  KEY `fk_Venda_Empregado1_idx` (`Empregado_Matricula`),
  KEY `fk_Venda_Cliente1_idx` (`Cliente_CPF`),
  CONSTRAINT `fk_Venda_Cliente1` FOREIGN KEY (`Cliente_CPF`) REFERENCES `cliente` (`CPF`),
  CONSTRAINT `fk_Venda_Empregado1` FOREIGN KEY (`Empregado_Matricula`) REFERENCES `empregado` (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,'2010-12-05',852,111),(2,'2010-03-30',741,222),(3,'2010-04-26',741,333),(4,'2011-08-19',852,444),(5,'2011-07-21',852,555),(6,'2011-09-17',987,666),(7,'2011-10-07',987,333),(8,'2012-11-12',741,222),(9,'2012-01-29',852,111),(10,'2012-02-09',987,444);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-06 10:09:08
