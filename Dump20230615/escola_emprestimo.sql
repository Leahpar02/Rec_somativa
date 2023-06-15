-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: escola
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `emprestimo`
--

DROP TABLE IF EXISTS `emprestimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprestimo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usuarioFK` bigint NOT NULL,
  `bibliotecarioFK` bigint NOT NULL,
  `livroFk` bigint NOT NULL,
  `dataEmpres` datetime NOT NULL,
  `Previsao` date NOT NULL,
  `devolucao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuarioFK` (`usuarioFK`),
  KEY `bibliotecarioFK` (`bibliotecarioFK`),
  KEY `livroFk` (`livroFk`),
  CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`usuarioFK`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`bibliotecarioFK`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `emprestimo_ibfk_3` FOREIGN KEY (`livroFk`) REFERENCES `livros` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimo`
--

LOCK TABLES `emprestimo` WRITE;
/*!40000 ALTER TABLE `emprestimo` DISABLE KEYS */;
INSERT INTO `emprestimo` VALUES (1,3,7,4,'2023-06-15 18:58:52','2023-07-09',NULL),(2,2,7,2,'2023-05-22 23:56:10','2023-07-09','2023-06-22 10:53:10'),(3,5,7,1,'2023-06-15 18:58:52','2023-06-19',NULL),(4,5,7,2,'2023-03-10 11:00:05','2023-04-02','2023-04-01 20:13:01'),(5,3,7,3,'2023-05-29 18:20:35','2023-06-09','2023-06-09 14:45:20');
/*!40000 ALTER TABLE `emprestimo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15 19:24:39
