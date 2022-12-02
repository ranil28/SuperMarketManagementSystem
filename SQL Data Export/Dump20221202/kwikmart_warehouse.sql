-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: kwikmart
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
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `warehouse_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zip_code` int NOT NULL,
  `email_id` varchar(50) NOT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'Christelle Wells','0720 Billie Burg\nVolkmanmouth, ND 08973',94770,'war00047@kwikmart.com'),(2,'Lonzo Hill','884 Price Tunnel Suite 876\nNorth Glenda, AL 66917-1538',74713,'war62495@kwikmart.com'),(3,'Witting Mountains','912 Windler Vista\nO\'Connerstad, WI 83018-5159',89094,'war20986@kwikmart.com'),(4,'Judd Fort','31897 Kimberly Trace\nNorth Wandafurt, NY 70427',32904,'war91343@kwikmart.com'),(5,'Bobbie Road','5575 Schmidt Drive\nSouth Nataliechester, ME 12512-5704',23281,'war67914@kwikmart.com'),(6,'Ahmed Station','8652 Cruickshank Forge Suite 930\nMarielaland, NE 90641-9995',52697,'war60503@kwikmart.com'),(7,'King Mission','9772 Marvin Dale Apt. 365\nLake Sydnie, WI 23368-4928',76682,'war34843@kwikmart.com'),(8,'Vivianne Bridge','9538 Martina Ranch\nAdalineville, MO 23921',24348,'war54109@kwikmart.com'),(9,'Gerlach Track','59441 Aubree Knolls Suite 819\nNew Santosburgh, NH 15807-0664',81679,'war61050@kwikmart.com'),(10,'Antonio Via','1393 Jude Haven Apt. 291\nWest Jamarcus, OK 00848',50440,'war82369@kwikmart.com'),(11,'Lura Isle','23095 Ena Points Suite 287\nMaiaville, FL 03766-7602',39345,'war74246@kwikmart.com'),(12,'Baumbach Neck','784 Ryan Ports\nKristinahaven, NE 44564-2703',53966,'war70598@kwikmart.com'),(13,'Marianne Lodge','438 Frieda Square Suite 192\nPort Lazaroburgh, VT 84346-2592',27426,'war99832@kwikmart.com'),(14,'Schmidt Extensions','7206 King Circle Suite 044\nLake Willow, WY 26077-8354',42313,'war12900@kwikmart.com'),(15,'Marlen Cape','9909 Littel Rapid\nRueckerstad, MD 09510-1615',96675,'war84762@kwikmart.com'),(16,'Doyle Spur','593 Ledner Squares Suite 517\nSouth Luna, AR 02074',88436,'war98275@kwikmart.com'),(17,'Ruby Islands','20276 Bauch Ridges\nWest Elliot, NM 08679',29344,'war48112@kwikmart.com'),(18,'Rempel Way','48411 Gail Station Suite 840\nNorth Eleazar, TX 08640',38719,'war71806@kwikmart.com'),(19,'Cade Manors','2738 Cummerata Garden\nCeliatown, SD 65842-5165',36531,'war75556@kwikmart.com'),(20,'Keeling Groves','0769 Fisher Rapid\nMillschester, CA 40352',46948,'war89878@kwikmart.com'),(21,'Gottlieb Trafficway','35840 Jake Inlet Suite 121\nAufderharmouth, ME 10777',65818,'war19344@kwikmart.com'),(22,'Gottlieb Trail','25164 Emmanuelle Row Suite 082\nBaumbachborough, OK 89693',74187,'war66248@kwikmart.com'),(23,'Gusikowski Path','5743 Nicole Lights\nKassulkefurt, UT 37395-5102',36278,'war24875@kwikmart.com'),(24,'Cassin Parks','267 Verona Path Suite 715\nKirlinborough, KS 13237',79189,'war02413@kwikmart.com'),(25,'Kemmer Plaza','17499 Linwood Harbors Apt. 499\nNorth Felipe, LA 12696-4708',31074,'war10561@kwikmart.com');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-02 12:31:49
