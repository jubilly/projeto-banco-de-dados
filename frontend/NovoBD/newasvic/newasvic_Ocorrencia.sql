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
-- Table structure for table `Ocorrencia`
--

DROP TABLE IF EXISTS `Ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ocorrencia` (
  `protocolo` int NOT NULL,
  `tipo_ocorrencia` varchar(30) DEFAULT NULL,
  `endereco_atual` varchar(60) DEFAULT NULL,
  `participacao` decimal(6,2) DEFAULT NULL,
  `matriculaFuncionario` varchar(6) DEFAULT NULL,
  `chassi` varchar(17),
  `dataOcorrencia` date DEFAULT NULL,
  `total_individuos` tinyint unsigned,
  `nome_individuo` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ocorrencia`
--

LOCK TABLES `Ocorrencia` WRITE;
/*!40000 ALTER TABLE `Ocorrencia` DISABLE KEYS */;
INSERT INTO `Ocorrencia` VALUES (1001,'Acidente leve','Rua A, 123',75.50,'F00002','1HGBH41JXMN109186','2023-01-10',1,'Carlos Dias'),(1002,'Colisão traseira','Avenida B, 456',65.00,'F00004','1HGBH41JXMN109186','2023-01-15',2,'Renata Silva'),(1003,'Roubo de veículo','Rua C, 789',80.75,'F00006','2HGBH41JXMN109187','2023-02-20',3,'Marcelo Andrade'),(1004,'Batida em poste','Avenida D, 101',90.00,'F00008','3HGBH41JXMN109188','2023-03-25',4,'Júlia Martins'),(1005,'Danos na lataria','Rua E, 202',50.25,'F00010','3HGBH41JXMN109188','2023-04-05',5,'Fernando Costa'),(1006,'Furto de peças','Avenida F, 303',60.00,'F00002','4HGBH41JXMN109189','2023-05-10',6,'Carla Nunes'),(1007,'Vandalismo','Rua G, 404',70.50,'F00004','5HGBH41JXMN109190','2023-06-15',7,'Paulo Lima'),(1008,'Pane elétrica','Avenida H, 505',85.25,'F00006','5HGBH41JXMN109190','2023-07-20',8,'Amanda Souza'),(1009,'Queda de árvore','Rua I, 606',55.00,'F00008','6HGBH41JXMN109191','2023-08-25',9,'Rodrigo Ferreira'),(1010,'Alagamento','Avenida J, 707',95.50,'F00010','7HGBH41JXMN109192','2023-09-30',10,'Gabriela Alves'),(1011,'Acidente grave','Rua K, 808',120.00,'F00002','7HGBH41JXMN109192','2023-10-05',11,'Jorge Alves'),(1012,'Colisão frontal','Avenida L, 909',110.75,'F00004','8HGBH41JXMN109193','2023-11-10',12,'Silvia Cruz'),(1013,'Incêndio','Rua M, 1010',130.50,'F00006','9HGBH41JXMN109194','2023-12-15',13,'Henrique Dias'),(1014,'Danos elétricos','Avenida N, 1111',45.00,'F00004','9HGBH41JXMN109194','2023-12-20',14,'Luciana Oliveira');
/*!40000 ALTER TABLE `Ocorrencia` ENABLE KEYS */;
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
