-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: techgadgetstore
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `endereço` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `país` varchar(255) NOT NULL,
  `data_nascimento` varchar(255) NOT NULL,
  `gênero` varchar(255) NOT NULL,
  `idade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (36,'João','Silva','joao.silva@example.com','123-456-7890','Rua Principal, 123','Cidade','SP','Brasil','1990-01-01','M',NULL),(37,'João','Silva','joao.silva@example.com','123-456-7890','Rua Principal, 123','Cidade','SP','Brasil','1990-01-01','M',NULL),(38,'& C:/Users/SAMSUNG/AppData/Local/Programs/Python/Python312/python.exe c:/Users/SAMSUNG/Desktop/tech/Bytebazaar.py','vinicius','vini','5435','dgffd','fghf','dgd','dfgdf','54654','m',NULL),(39,'vinicius','pontes','vin','19981667275','pontes','pon','as','as','21','w',NULL),(40,'vinicius','pontes','sfsd','432234','sda','sad','sad','ads','45453','m',NULL),(41,'& C:/Users/SAMSUNG/AppData/Local/Programs/Python/Python312/python.exe c:/Users/SAMSUNG/Desktop/tech/Bytebazaar.py','FD','SFD','SFD','','SFD','SFDFS','DSF','D','SDFF',NULL),(42,'dsf','sd','fs','dfs','f','sdf','sdfsd','fsd','fs','df',NULL),(43,'ads','sad','sad','sad','sad','sad','sad','sda','sad','sad',NULL),(44,'sd','sad','asd','ad','ada','da','da','da','da','da',NULL),(45,'wq','wq','qw','wq','qw','qw','qw','q','wq','qw',NULL),(46,'weqe','','eqwe','q','eq','eq','eq','eq','eq','eq',NULL),(47,'dsa','da','da','dad','asd','ada','sda','dad','asda','dada',NULL),(48,'João','Silva','joao.silva@example.com','123-456-7890','Rua Principal, 123','Cidade','SP','Brasil','1990-01-01','M',NULL),(49,'João','Silva','joao.silva@example.com','123-456-7890','Rua Principal, 123','Cidade','SP','Brasil','1990-01-01','M',NULL),(50,'asd','asd','ads','ad','ad','ad','asd','ad','adad','ad',NULL),(51,'vini','pontes','pontes','231','pontes','po','sa','s','s','m',NULL),(52,'& C:/Users/SAMSUNG/AppData/Local/Programs/Python/Python312/python.exe c:/Users/SAMSUNG/Desktop/tech/Bytebazaar.py','SAD','SDA','','SAD','ADA','SDA','DAD','ASD','',NULL),(53,'& C:/Users/SAMSUNG/AppData/Local/Programs/Python/Python312/python.exe c:/Users/SAMSUNG/Desktop/tech/Bytebazaar.py','& C:/Users/SAMSUNG/AppData/Local/Programs/Python/Python312/python.exe c:/Users/SAMSUNG/Desktop/tech/Bytebazaar.py','SFDD','FSDFS','F','SFS','F','SFDSF','SFS','FSD',NULL),(54,'sd','sfd','sfd','sdf','sdf','sdf','fsd','sfd','sdf','sdf',NULL),(55,'fsdf]sfs','fs','dfs','f','sf','sf','s','fsd','fsd','fsd',NULL),(56,'sfd','fs','fs','fsf','sf','sddf','s','fs','fds','fsf',NULL),(57,'sdad','a','da','sd','sad','sad','a','da','da','da',NULL),(58,'asda','da','da','da','sdas','da','sd','ad','asd','ad',NULL),(59,'fs','fds','fsd','fs','df','sdf','s','fs','fs','fs',NULL),(60,'sdf','sd','fsd','fs','df','s','f','df','sd','fsd',NULL),(61,'sdfsd','fsd','fsd','fsd','f','sf','s','fsd','fsd','fsd',NULL),(62,'sdf','sdfsf','sf','s','fsd','fsd','fsd','f','sdfs','dfs',NULL),(63,'sda','da','da','da','sda','d','assd','ad','ad','ad',NULL),(64,'dgdfg','dg','dg','d','gdf','gd','gdf','gdf','gd','gdf',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `endereço` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (36,'Fornecedor ABC','Av. Fornecedora, 456','987-654-3210','fornecedor.abc@example.com'),(37,'Fornecedor ABC','Av. Fornecedora, 456','987-654-3210','fornecedor.abc@example.com'),(38,'gr','gfd','g','fdg'),(39,'w','w','231','we'),(40,'d','dsfs','45','sd'),(41,'SF','D','SFD','SFD'),(42,'sdf','sdf','sdf','sd'),(43,'sad','','sad','sad'),(44,'da','ada','da','da'),(45,'qw','wq','qw','qw'),(46,'e','qe','qe','qe'),(47,'da','sdad','asda','dada'),(48,'Fornecedor ABC','Av. Fornecedora, 456','987-654-3210','fornecedor.abc@example.com'),(49,'Fornecedor ABC','Av. Fornecedora, 456','987-654-3210','fornecedor.abc@example.com'),(50,'dsa','das','dsa','ad'),(51,'P','P','P','S'),(52,'SAD','SAD','ADS','SAD'),(53,'SDF','DFS','SDF','SFD'),(54,'fsd','dfs','sdf','df'),(55,'fsf','sf','sf','sfsf'),(56,'sdf','dfs','dsfdsf','dfs'),(57,'da','d','ad','ad'),(58,'asd','a','asd','ad'),(59,'f','sdf','sf','sdf'),(60,'fs','df','sdf','sdf'),(61,'fs','dfsd','fsd','fsd'),(62,'ds','dfs','dfdsf','sd'),(63,'a','da','da','da'),(64,'gd','gdf','gdf','gd');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` varchar(255) NOT NULL,
  `hora` varchar(255) NOT NULL,
  `produtos` varchar(255) NOT NULL,
  `valor_total` varchar(255) NOT NULL,
  `valor_pago` varchar(255) DEFAULT NULL,
  `qtde_vendida` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (33,'2023-11-18','12:00:00','{\"produto1\": 2, \"produto2\": 1}','150.75',NULL,NULL),(34,'2023-11-18','12:00:00','{\"produto1\": 2, \"produto2\": 1}','150.75',NULL,NULL),(37,'sd','fsd','fsd','fs',NULL,NULL),(38,'sdf','sf','sf','s',NULL,NULL),(39,'fs','df','sdf','s',NULL,NULL),(40,'fsd','ff','dssf','d',NULL,NULL),(41,'gd','gdg','dfg','dfg',NULL,NULL);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descrição` varchar(255) NOT NULL,
  `preço` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `qtde_estoque` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (24,'Smartphone X','Um ótimo smartphone com muitos recursos','899.99','Eletrônicos','MarcaX',NULL),(25,'Smartphone X','Um ótimo smartphone com muitos recursos','899.99','Eletrônicos','MarcaX',NULL),(26,'fs','fs','fsd','fs','fs',NULL),(27,'54','645','645','64','56',NULL),(28,'sfd','sfd','fds','sdf','sdf',NULL);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportadora`
--

DROP TABLE IF EXISTS `transportadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportadora` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `endereço` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qtde_entregas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportadora`
--

LOCK TABLES `transportadora` WRITE;
/*!40000 ALTER TABLE `transportadora` DISABLE KEYS */;
INSERT INTO `transportadora` VALUES (24,'Transportadora Rápida','Rua da Entrega, 789','555-1234','contato@transportadora.com',NULL),(25,'Transportadora Rápida','Rua da Entrega, 789','555-1234','contato@transportadora.com',NULL),(26,'dfs','fs','fs','dfs',NULL),(27,'46','456','45','645',NULL),(28,'dd','d','a','a',NULL);
/*!40000 ALTER TABLE `transportadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'techgadgetstore'
--
/*!50003 DROP PROCEDURE IF EXISTS `calcular_desvio_padrao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calcular_desvio_padrao`(IN tabela_nome VARCHAR(50), IN coluna_nome VARCHAR(50))
BEGIN
    SET @sql = CONCAT('INSERT INTO estatisticas (tabela, coluna, desvio_padrao) SELECT ''', tabela_nome, ''', ''', coluna_nome, ''', STDDEV(', coluna_nome, ') FROM ', tabela_nome);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calcular_media` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calcular_media`(IN tabela_nome VARCHAR(50), IN coluna_nome VARCHAR(50))
BEGIN
    SET @sql = CONCAT('INSERT INTO estatisticas (tabela, coluna, media) SELECT ''', tabela_nome, ''', ''', coluna_nome, ''', AVG(', coluna_nome, ') FROM ', tabela_nome);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calcular_mediana` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calcular_mediana`(IN tabela_nome VARCHAR(50), IN coluna_nome VARCHAR(50))
BEGIN
    SET @sql = CONCAT('INSERT INTO estatisticas (tabela, coluna, mediana) SELECT ''', tabela_nome, ''', ''', coluna_nome, ''', (SELECT AVG(', coluna_nome, ') FROM (SELECT ', coluna_nome, ' FROM ', tabela_nome, ' ORDER BY ', coluna_nome, ' LIMIT 2 - (SELECT COUNT(*) FROM ', tabela_nome, ') % 2) subquery)');
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calcular_moda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calcular_moda`(IN tabela_nome VARCHAR(50), IN coluna_nome VARCHAR(50))
BEGIN
    SET @sql = CONCAT('INSERT INTO estatisticas (tabela, coluna, moda) SELECT ''', tabela_nome, ''', ''', coluna_nome, ''', (SELECT GROUP_CONCAT(', coluna_nome, ') FROM ', tabela_nome, ' GROUP BY ', coluna_nome, ' ORDER BY COUNT(*) DESC LIMIT 1) AS moda');
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 17:02:32
