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


DROP TABLE IF EXISTS `FuncionarioSeguradora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FuncionarioSeguradora` (
  `matriculaFuncionario` varchar(6) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `tipo` enum('EVENTOS','ATENDIMENTO') DEFAULT NULL,
  `cnh` varchar(11) DEFAULT NULL,
  `rg` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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


DROP TABLE IF EXISTS `Oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Oficina` (
  `pecas` varchar(80) DEFAULT NULL,
  `oficina_credenciada` varchar(40) NOT NULL,
  `qtd_veiculos_atuais` tinyint unsigned DEFAULT NULL,
  `matriculaFuncionario` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `Veiculo`
--

DROP TABLE IF EXISTS `Veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Veiculo` (
  `chassi` varchar(17) NOT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `renavam` varchar(11) DEFAULT NULL,
  `cor` varchar(10) DEFAULT NULL,
  `numero_motor` varchar(15) DEFAULT NULL,
  `codigo_fipe` varchar(7) DEFAULT NULL,
  `mensalidade` decimal(5,2) DEFAULT NULL,
  `matriculaFuncionario` varchar(6),
  `codigo_modelo` int,
  `nome_modelo` varchar(50) DEFAULT NULL,
  `tipo_modelo` enum('CARRO','MOTO','CAMINHAO') DEFAULT NULL,
  `codigo_marca` int,
  `nome_marca` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Veiculo`
--

LOCK TABLES `Veiculo` WRITE;
/*!40000 ALTER TABLE `Veiculo` DISABLE KEYS */;
INSERT INTO `Veiculo` VALUES ('0HGBH41JXMN109195','BCD9012','01234567890','Branco','MOT012345','0123456',670.00,'F00009',10,'C-Class','CARRO',10,'Mercedes-Benz'),('1HGBH41JXMN109186','ABC1234','12345678901','Preto','MOT123456','1234567',500.00,'F00001',1,'Fiesta','CARRO',1,'Ford'),('1HGBH41JXMN109196','CDE3456','02345678901','Preto','MOT345123','1123456',450.00,'F00001',11,'CB500F','MOTO',4,'Honda'),('2HGBH41JXMN109187','DEF5678','23456789012','Branco','MOT234567','2345678',600.00,'F00003',2,'Cruze','CARRO',2,'Chevrolet'),('2HGBH41JXMN109197','EFG4567','03456789012','Azul','MOT456234','1234567',700.00,NULL,12,'Ninja ZX-6R','MOTO',5,'Nissan'),('3HGBH41JXMN109188','GHI9012','34567890123','Prata','MOT345678','3456789',700.00,'F00005',3,'Camry','CARRO',3,'Toyota'),('3HGBH41JXMN109198','FGH5678','04567890123','Verde','MOT567345','1345678',720.00,NULL,13,'R1','MOTO',9,'BMW'),('4HGBH41JXMN109189','JKL3456','45678901234','Azul','MOT456789','4567890',550.00,'F00007',4,'Civic','CARRO',4,'Honda'),('4HGBH41JXMN109199','GHI6789','05678901234','Vermelho','MOT678456','1456789',770.00,NULL,14,'Monster','MOTO',10,'Mercedes-Benz'),('5HGBH41JXMN109190','MNO7890','56789012345','Vermelho','MOT567890','5678901',620.00,'F00009',5,'Altima','CARRO',5,'Nissan'),('5HGBH41JXMN109200','HIJ7890','06789012345','Branco','MOT789567','1567890',800.00,'F00007',15,'Hayabusa','MOTO',3,'Toyota'),('6HGBH41JXMN109191','PQR2345','67890123456','Verde','MOT678901','6789012',750.00,'F00001',6,'Golf','CARRO',6,'Volkswagen'),('7HGBH41JXMN109192','STU6789','78901234567','Cinza','MOT789012','7890123',580.00,'F00003',7,'Elantra','CARRO',7,'Hyundai'),('8HGBH41JXMN109193','VWX1234','89012345678','Amarelo','MOT890123','8901234',630.00,'F00005',8,'Sportage','CARRO',8,'Kia'),('9HGBH41JXMN109194','YZA5678','90123456789','Azul','MOT901234','9012345',720.00,'F00007',9,'X5','CARRO',9,'BMW'),('9HGBH41JXMN109194','YZA5678','90123456789','Azul','MOT901234','9012345',720.00,'F00003',9,'X5','CARRO',9,'BMW');
/*!40000 ALTER TABLE `Veiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


--
-- Dumping data for table `Oficina`
--

LOCK TABLES `Oficina` WRITE;
/*!40000 ALTER TABLE `Oficina` DISABLE KEYS */;
INSERT INTO `Oficina` VALUES ('Peças X','Oficina A',5,'F00002'),('Peças Y','Oficina B',8,'F00004'),('Peças Z','Oficina C',3,'F00006'),('Peças W','Oficina D',7,'F00008'),('Peças V','Oficina E',10,'F00010');
/*!40000 ALTER TABLE `Oficina` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `Ocorrencia`
--

LOCK TABLES `Ocorrencia` WRITE;
/*!40000 ALTER TABLE `Ocorrencia` DISABLE KEYS */;
INSERT INTO `Ocorrencia` VALUES (1001,'Acidente leve','Rua A, 123',75.50,'F00002','1HGBH41JXMN109186','2023-01-10',1,'Carlos Dias'),(1002,'Colisão traseira','Avenida B, 456',65.00,'F00004','1HGBH41JXMN109186','2023-01-15',2,'Renata Silva'),(1003,'Roubo de veículo','Rua C, 789',80.75,'F00006','2HGBH41JXMN109187','2023-02-20',3,'Marcelo Andrade'),(1004,'Batida em poste','Avenida D, 101',90.00,'F00008','3HGBH41JXMN109188','2023-03-25',4,'Júlia Martins'),(1005,'Danos na lataria','Rua E, 202',50.25,'F00010','3HGBH41JXMN109188','2023-04-05',5,'Fernando Costa'),(1006,'Furto de peças','Avenida F, 303',60.00,'F00002','4HGBH41JXMN109189','2023-05-10',6,'Carla Nunes'),(1007,'Vandalismo','Rua G, 404',70.50,'F00004','5HGBH41JXMN109190','2023-06-15',7,'Paulo Lima'),(1008,'Pane elétrica','Avenida H, 505',85.25,'F00006','5HGBH41JXMN109190','2023-07-20',8,'Amanda Souza'),(1009,'Queda de árvore','Rua I, 606',55.00,'F00008','6HGBH41JXMN109191','2023-08-25',9,'Rodrigo Ferreira'),(1010,'Alagamento','Avenida J, 707',95.50,'F00010','7HGBH41JXMN109192','2023-09-30',10,'Gabriela Alves'),(1011,'Acidente grave','Rua K, 808',120.00,'F00002','7HGBH41JXMN109192','2023-10-05',11,'Jorge Alves'),(1012,'Colisão frontal','Avenida L, 909',110.75,'F00004','8HGBH41JXMN109193','2023-11-10',12,'Silvia Cruz'),(1013,'Incêndio','Rua M, 1010',130.50,'F00006','9HGBH41JXMN109194','2023-12-15',13,'Henrique Dias'),(1014,'Danos elétricos','Avenida N, 1111',45.00,'F00004','9HGBH41JXMN109194','2023-12-20',14,'Luciana Oliveira');
/*!40000 ALTER TABLE `Ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

--
-- Dumping data for table `Associado`
--

LOCK TABLES `Associado` WRITE;
/*!40000 ALTER TABLE `Associado` DISABLE KEYS */;
INSERT INTO `Associado` VALUES ('A00001','João Silva','1HGBH41JXMN109186',250.00,'12345678','Rua A','Cidade A','Bairro A','123','Apto 101','12345678901','12345678901','FISICA','F00001'),('A00001','João Silva','1HGBH41JXMN109196',150.00,'12345678','Rua A','Cidade A','Bairro A','123','Apto 101','12345678901','12345678901','FISICA','F00001'),('A00002','Maria Oliveira','2HGBH41JXMN109187',300.00,'23456789','Avenida B','Cidade B','Bairro B','456','Casa','23456789012','23456789012','FISICA','F00003'),('A00003','Empresa X','8HGBH41JXMN109193',310.00,'34567890','Rua C','Cidade C','Bairro C','789','Sala 1','34567890123','12345678000101','JURIDICA','F00005'),('A00004','Carlos Souza','3HGBH41JXMN109188',350.00,'45678901','Avenida D','Cidade D','Bairro D','101','Cobertura','45678901234','45678901234','FISICA','F00005'),('A00005','Luana Costa','4HGBH41JXMN109189',280.00,'56789012','Rua E','Cidade E','Bairro E','202','Apto 202','56789012345','56789012345','FISICA','F00007'),('A00005','Luana Costa','5HGBH41JXMN109200',180.00,'56789012','Rua E','Cidade E','Bairro E','202','Apto 202','56789012345','56789012345','FISICA','F00007'),('A00006','Empresa Y','9HGBH41JXMN109194',290.00,'67890123','Avenida F','Cidade F','Bairro F','303','Sala 2','67890123456','23456789000102','JURIDICA','F00007'),('A00007','Pedro Lima','5HGBH41JXMN109190',320.00,'78901234','Rua G','Cidade G','Bairro G','404','Casa','78901234567','78901234567','FISICA','F00009'),('A00008','Ana Mendes','6HGBH41JXMN109191',400.00,'89012345','Avenida H','Cidade H','Bairro H','505','Apto 303','89012345678','89012345678','FISICA','F00001'),('A00009','Empresa Z','0HGBH41JXMN109195',330.00,'90123456','Rua I','Cidade I','Bairro I','606','Sala 3','90123456789','34567890000103','JURIDICA','F00009'),('A00010','Rafael Santos','7HGBH41JXMN109192',360.00,'01234567','Avenida J','Cidade J','Bairro J','707','Casa','01234567890','01234567890','FISICA','F00003'),('A00010','Rafael Santos','9HGBH41JXMN109194',410.00,'01234567','Avenida J','Cidade J','Bairro J','707','Casa','01234567890','01234567890','FISICA','F00003');
/*!40000 ALTER TABLE */

--
-- Dumping data for table `Funcionario`
--

LOCK TABLES `Funcionario` WRITE;
/*!40000 ALTER TABLE `Funcionario` DISABLE KEYS */;
INSERT INTO `Funcionario` VALUES ('F00001','Roberto Martins','ATENDIMENTO',NULL,'MG1234567'),('F00002','Fernanda Lima','EVENTOS','98765432101',NULL),('F00003','Lucas Pereira','ATENDIMENTO',NULL,'SP2345678'),('F00004','Juliana Alves','EVENTOS','87654321012',NULL),('F00005','Thiago Souza','ATENDIMENTO',NULL,'RJ3456789'),('F00006','Camila Ferreira','EVENTOS','76543210923',NULL),('F00007','André Nunes','ATENDIMENTO',NULL,'PR4567890'),('F00008','Patricia Ramos','EVENTOS','65432109834',NULL),('F00009','Ricardo Mendes','ATENDIMENTO',NULL,'RS5678901'),('F00010','Mariana Costa','EVENTOS','54321098745',NULL);
/*!40000 ALTER TABLE `Funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;