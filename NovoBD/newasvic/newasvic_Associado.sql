-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: newasvic
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `Associado`
--

DROP TABLE IF EXISTS `Associado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Associado` (
  `matricula` varchar(6) NOT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `chassi` varchar(17),
  `taxa_adesao` decimal(5,2) DEFAULT NULL,
  `end_cep` varchar(8) DEFAULT NULL,
  `end_logradouro` varchar(100) DEFAULT NULL,
  `end_cidade` varchar(50) DEFAULT NULL,
  `end_bairro` varchar(50) DEFAULT NULL,
  `end_numero` varchar(6) DEFAULT NULL,
  `end_complemento` varchar(60) DEFAULT NULL,
  `cnh` varchar(11) DEFAULT NULL,
  `documento` varchar(14) DEFAULT NULL,
  `tipo_associado` enum('FISICA','JURIDICA') DEFAULT NULL,
  `matriculaFuncionario` varchar(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Associado`
--

LOCK TABLES `Associado` WRITE;
/*!40000 ALTER TABLE `Associado` DISABLE KEYS */;
INSERT INTO `Associado` VALUES ('A00001','João Silva','1HGBH41JXMN109186',250.00,'12345678','Rua A','Cidade A','Bairro A','123','Apto 101','12345678901','12345678901','FISICA','F00001'),('A00001','João Silva','1HGBH41JXMN109196',150.00,'12345678','Rua A','Cidade A','Bairro A','123','Apto 101','12345678901','12345678901','FISICA','F00001'),('A00002','Maria Oliveira','2HGBH41JXMN109187',300.00,'23456789','Avenida B','Cidade B','Bairro B','456','Casa','23456789012','23456789012','FISICA','F00003'),('A00003','Empresa X','8HGBH41JXMN109193',310.00,'34567890','Rua C','Cidade C','Bairro C','789','Sala 1','34567890123','12345678000101','JURIDICA','F00005'),('A00004','Carlos Souza','3HGBH41JXMN109188',350.00,'45678901','Avenida D','Cidade D','Bairro D','101','Cobertura','45678901234','45678901234','FISICA','F00005'),('A00005','Luana Costa','4HGBH41JXMN109189',280.00,'56789012','Rua E','Cidade E','Bairro E','202','Apto 202','56789012345','56789012345','FISICA','F00007'),('A00005','Luana Costa','5HGBH41JXMN109200',180.00,'56789012','Rua E','Cidade E','Bairro E','202','Apto 202','56789012345','56789012345','FISICA','F00007'),('A00006','Empresa Y','9HGBH41JXMN109194',290.00,'67890123','Avenida F','Cidade F','Bairro F','303','Sala 2','67890123456','23456789000102','JURIDICA','F00007'),('A00007','Pedro Lima','5HGBH41JXMN109190',320.00,'78901234','Rua G','Cidade G','Bairro G','404','Casa','78901234567','78901234567','FISICA','F00009'),('A00008','Ana Mendes','6HGBH41JXMN109191',400.00,'89012345','Avenida H','Cidade H','Bairro H','505','Apto 303','89012345678','89012345678','FISICA','F00001'),('A00009','Empresa Z','0HGBH41JXMN109195',330.00,'90123456','Rua I','Cidade I','Bairro I','606','Sala 3','90123456789','34567890000103','JURIDICA','F00009'),('A00010','Rafael Santos','7HGBH41JXMN109192',360.00,'01234567','Avenida J','Cidade J','Bairro J','707','Casa','01234567890','01234567890','FISICA','F00003'),('A00010','Rafael Santos','9HGBH41JXMN109194',410.00,'01234567','Avenida J','Cidade J','Bairro J','707','Casa','01234567890','01234567890','FISICA','F00003');
/*!40000 ALTER TABLE `Associado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-28 17:57:17
