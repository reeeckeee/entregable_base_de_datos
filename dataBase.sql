CREATE DATABASE  IF NOT EXISTS `database` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `database`;
-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: database
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (4,'Actividades'),(5,'Fechas'),(9,'Hobbies'),(2,'Ideas'),(7,'Importantes'),(8,'Informacion'),(1,'Musica'),(10,'Otros'),(3,'Recordatorios'),(6,'Textos');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) DEFAULT NULL,
  `Creation_Date` datetime NOT NULL,
  `Last_Edit_Name` datetime NOT NULL,
  `Description` longtext NOT NULL,
  `Erasable` tinyint(2) DEFAULT NULL,
  `User_id` int(11) NOT NULL,
  `Genres_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_user_id_idx` (`User_id`),
  KEY `fk_genres_id_idx` (`Genres_id`),
  CONSTRAINT `fk_genres_id` FOREIGN KEY (`Genres_id`) REFERENCES `genres` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'TITULO1','2021-09-16 21:05:14','2021-09-16 21:05:14','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis ultricies metus. Mauris finibus ultrices neque, vitae aliquam lectus feugiat nec. Proin eu purus risus.',1,1,1),(2,'TITULO2','2021-09-16 21:05:41','2021-09-16 21:05:41','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis ultricies metus. Mauris finibus ultrices neque, vitae aliquam lectus feugiat nec. Proin eu purus risus.',0,2,2),(3,'TITULO3','2021-09-16 21:05:52','2021-09-16 21:05:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis ultricies metus. Mauris finibus ultrices neque, vitae aliquam lectus feugiat nec. Proin eu purus risus.',0,3,3),(4,'TITULO4','2021-09-16 21:06:02','2021-09-16 21:06:02','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis ultricies metus. Mauris finibus ultrices neque, vitae aliquam lectus feugiat nec. Proin eu purus risus.',1,4,4),(5,'TITULO5','2021-09-16 21:06:10','2021-09-16 21:06:10','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis ultricies metus. Mauris finibus ultrices neque, vitae aliquam lectus feugiat nec. Proin eu purus risus.',1,5,5),(6,'TITULO6','2021-09-16 21:06:19','2021-09-16 21:06:19','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis ultricies metus. Mauris finibus ultrices neque, vitae aliquam lectus feugiat nec. Proin eu purus risus.',0,6,6),(7,'TITULO7','2021-09-16 21:06:27','2021-09-16 21:06:27','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis ultricies metus. Mauris finibus ultrices neque, vitae aliquam lectus feugiat nec. Proin eu purus risus.',0,7,7),(8,'TITULO8','2021-09-16 21:07:11','2021-09-16 21:07:11','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis ultricies metus. Mauris finibus ultrices neque, vitae aliquam lectus feugiat nec. Proin eu purus risus.',1,8,8),(9,'TITULO9','2021-09-16 21:07:21','2021-09-16 21:07:21','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis ultricies metus. Mauris finibus ultrices neque, vitae aliquam lectus feugiat nec. Proin eu purus risus.',0,9,9),(10,'TITULO10','2021-09-16 21:07:34','2021-09-16 21:07:34','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis ultricies metus. Mauris finibus ultrices neque, vitae aliquam lectus feugiat nec. Proin eu purus risus.',0,12,10);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Carlos','carlosduty@gmail.com'),(2,'Carla','carlalala@gmail.com'),(3,'Federico','fedrrrico@gmail.com'),(4,'Maria','mariasantisima@gmail.com'),(5,'Esteban','estebanquito@gmail.com'),(6,'Ramón','ramon@gmail.com'),(7,'Pedro','pedrinho@gmail.com'),(8,'Mirtha','mirtha1967@gmail.com'),(9,'Catalina','catarsis@gmail.com'),(12,'Pablo','pablitoclavoun@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-16 21:24:51