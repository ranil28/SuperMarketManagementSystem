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
-- Table structure for table `store_item`
--

DROP TABLE IF EXISTS `store_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_item` (
  `store_id` int NOT NULL,
  `item_id` int NOT NULL,
  `qty_in_stock` int NOT NULL DEFAULT '0',
  `unit_price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`store_id`,`item_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `store_item_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`),
  CONSTRAINT `store_item_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_item`
--

LOCK TABLES `store_item` WRITE;
/*!40000 ALTER TABLE `store_item` DISABLE KEYS */;
INSERT INTO `store_item` VALUES (1,5,93,23.11),(1,8,127,13.81),(1,12,142,22.50),(1,58,141,23.88),(1,99,76,21.95),(1,127,147,21.60),(1,147,48,19.01),(1,169,42,17.56),(1,181,174,5.62),(1,205,79,17.69),(1,211,75,9.74),(1,213,105,21.55),(1,216,75,1.74),(1,235,152,5.02),(1,261,118,12.04),(1,267,94,5.59),(1,282,71,22.23),(1,285,33,21.43),(1,302,172,17.00),(2,10,121,23.96),(2,53,102,2.46),(2,57,159,17.95),(2,67,113,21.14),(2,68,172,18.09),(2,85,196,1.03),(2,88,100,18.06),(2,98,67,10.96),(2,110,65,18.25),(2,122,55,19.90),(2,126,55,12.15),(2,135,135,13.62),(2,142,143,18.83),(2,146,37,23.54),(2,151,118,6.61),(2,159,35,15.22),(2,197,136,10.73),(2,208,75,20.40),(2,214,69,14.04),(2,241,154,7.76),(2,270,88,6.71),(2,299,128,9.80),(4,23,199,21.95),(4,37,189,24.01),(4,95,70,15.43),(4,173,89,16.22),(4,194,167,13.25),(4,257,119,24.50),(4,285,55,23.40),(5,1,54,23.33),(5,5,174,4.82),(5,14,120,10.23),(5,15,4,20.80),(5,18,154,5.93),(5,19,181,24.58),(5,39,14,10.22),(5,46,165,23.30),(5,66,76,11.52),(5,74,67,20.82),(5,79,70,3.23),(5,84,160,14.80),(5,85,182,1.51),(5,95,111,20.69),(5,97,93,10.99),(5,103,81,13.56),(5,109,287,7.25),(5,112,17,22.84),(5,117,33,24.67),(5,129,158,16.56),(5,130,179,20.36),(5,135,132,15.21),(5,141,90,1.38),(5,153,5,9.89),(5,161,95,4.40),(5,178,90,7.28),(5,184,6,3.32),(5,192,77,10.73),(5,207,31,1.49),(5,211,168,3.51),(5,223,175,18.32),(5,263,181,8.12),(5,273,44,3.93),(5,287,102,6.95),(5,290,170,7.63),(5,295,142,2.27),(5,303,166,2.37),(6,4,182,12.86),(6,9,344,8.99),(6,10,136,15.18),(6,22,165,24.43),(6,23,143,12.31),(6,25,127,6.19),(6,38,168,24.79),(6,41,163,12.49),(6,46,12,20.84),(6,49,31,4.52),(6,51,9,15.29),(6,58,86,1.17),(6,62,66,14.87),(6,72,111,20.46),(6,73,90,9.73),(6,79,167,6.17),(6,94,120,11.83),(6,99,26,17.17),(6,105,6,7.58),(6,106,182,2.77),(6,110,31,13.14),(6,115,82,13.78),(6,123,191,11.77),(6,130,101,19.99),(6,138,24,11.60),(6,141,150,13.62),(6,145,29,2.66),(6,155,108,24.40),(6,156,172,24.30),(6,158,27,10.56),(6,175,171,3.40),(6,178,22,18.06),(6,182,32,17.90),(6,185,65,13.23),(6,186,90,24.32),(6,187,177,13.67),(6,192,110,3.58),(6,201,154,9.49),(6,229,157,2.44),(6,232,24,18.54),(6,236,126,12.00),(6,237,194,21.48),(6,250,52,1.21),(6,261,132,24.51),(6,263,112,7.64),(6,266,122,15.89),(6,283,198,8.48),(6,288,135,5.08),(6,292,121,20.69),(6,296,170,24.59),(6,298,78,12.19),(6,303,129,21.63),(6,307,46,16.01),(7,1,172,5.54),(7,12,100,11.86),(7,33,177,15.48),(7,45,175,17.67),(7,79,90,6.00),(7,91,43,13.96),(7,119,185,14.02),(7,181,133,11.40),(7,191,19,13.55),(7,196,79,18.83),(7,220,136,11.22),(7,227,163,17.75),(7,243,152,17.23),(7,250,167,24.14),(7,270,94,15.43),(7,286,103,7.67),(7,291,80,17.48),(7,295,193,21.71),(7,299,109,14.49),(7,302,97,9.35),(8,253,4,21.88),(9,4,146,6.11),(9,13,56,3.59),(9,23,155,19.21),(9,27,15,21.74),(9,28,82,21.26),(9,29,162,20.43),(9,37,134,4.68),(9,59,73,5.95),(9,64,142,1.70),(9,70,181,19.91),(9,82,37,16.19),(9,90,178,5.71),(9,97,124,11.73),(9,107,191,18.56),(9,120,151,22.50),(9,122,66,17.98),(9,130,62,22.94),(9,138,25,14.53),(9,141,138,6.25),(9,161,72,17.54),(9,165,147,16.76),(9,166,144,24.57),(9,171,132,16.88),(9,172,190,22.46),(9,177,10,8.88),(9,187,39,19.00),(9,195,189,4.48),(9,201,14,7.33),(9,211,188,24.00),(9,225,146,12.52),(9,227,74,8.07),(9,240,62,17.44),(9,247,44,14.99),(9,250,81,8.85),(9,262,63,8.88),(9,263,92,18.42),(9,278,76,4.85),(10,9,159,3.32),(10,19,111,24.63),(10,46,2,13.70),(10,100,36,10.71),(10,108,10,13.31),(10,117,6,19.03),(10,224,153,5.51),(10,232,30,17.64),(10,253,103,20.35),(10,289,25,8.73),(11,7,54,14.38),(11,24,17,16.24),(11,29,108,20.78),(11,92,180,13.50),(11,93,26,2.95),(11,129,7,11.93),(11,141,31,19.17),(11,146,195,16.00),(11,153,153,17.09),(11,186,99,10.11),(11,191,143,24.15),(11,193,32,15.82),(11,218,164,1.49),(11,255,103,9.52),(11,298,196,21.14),(11,299,88,3.93),(12,3,99,23.11),(12,12,51,7.52),(12,13,124,1.89),(12,19,169,17.34),(12,39,198,7.48),(12,62,126,2.04),(12,63,181,13.05),(12,76,110,5.25),(12,85,103,1.67),(12,103,146,22.19),(12,127,86,6.41),(12,169,84,24.57),(12,178,127,12.05),(12,201,196,13.58),(12,227,74,23.30),(12,229,139,6.69),(12,246,14,14.76),(13,67,189,1.83),(13,101,127,17.28),(13,170,128,20.13),(13,238,114,18.56),(13,246,40,11.23),(14,34,9,13.79),(14,48,161,4.86),(14,117,15,12.86),(14,159,16,3.09),(14,165,85,4.31),(14,194,8,18.13),(14,202,74,4.40),(14,214,152,3.42),(14,260,87,10.68),(14,265,31,20.93),(15,17,39,12.25),(15,26,97,2.09),(15,40,83,16.49),(15,88,88,8.33),(15,155,197,13.50),(15,271,101,7.74),(15,273,17,13.26),(15,287,200,5.59),(16,3,36,23.70),(16,4,4,23.95),(16,13,120,14.53),(16,33,80,12.45),(16,44,8,10.09),(16,47,16,17.52),(16,85,132,19.39),(16,106,196,6.51),(16,149,20,7.82),(16,155,150,18.65),(16,192,189,14.80),(16,194,114,19.55),(16,200,63,17.23),(16,205,169,15.87),(16,206,56,16.42),(16,235,141,21.19),(16,240,9,10.34),(16,255,38,9.66),(16,265,187,2.06),(16,271,144,22.30),(16,278,96,8.92),(16,287,28,19.85),(16,292,114,4.83),(17,17,34,4.18),(17,25,180,12.83),(17,38,8,6.71),(17,122,186,13.24),(17,132,152,4.11),(17,135,138,15.00),(17,139,183,10.32),(17,191,130,15.40),(17,201,139,16.90),(17,205,191,17.76),(17,217,24,6.38),(17,235,101,12.51),(17,259,37,1.84),(17,266,146,13.24),(17,278,170,23.45),(17,283,184,5.51),(17,303,167,3.52),(18,8,176,14.84),(18,55,124,17.61),(18,73,188,15.69),(18,80,14,13.02),(18,96,63,18.12),(18,111,45,24.57),(18,113,24,16.87),(18,133,188,21.74),(18,139,180,18.68),(18,151,170,2.97),(18,250,172,20.54),(18,267,118,12.13),(19,48,7,14.90),(19,61,138,3.40),(19,171,136,19.01),(19,209,10,24.49),(19,226,130,15.66),(19,229,138,19.38),(20,14,135,14.38),(20,21,36,8.19),(20,29,162,12.73),(20,34,196,8.69),(20,36,189,23.26),(20,54,163,3.55),(20,55,128,19.29),(20,57,231,17.01),(20,68,78,22.38),(20,76,30,3.83),(20,92,90,19.26),(20,93,47,5.31),(20,107,113,10.85),(20,132,60,24.79),(20,136,67,14.66),(20,149,67,23.29),(20,154,137,12.66),(20,155,26,23.93),(20,157,172,15.30),(20,164,70,14.24),(20,189,19,21.31),(20,197,8,24.99),(20,201,301,11.42),(20,207,139,7.96),(20,220,181,10.86),(20,221,266,19.08),(20,224,126,15.41),(20,227,133,8.99),(20,245,140,5.74),(20,246,178,22.86),(20,247,173,15.48),(20,254,11,18.02),(20,259,120,1.30),(20,260,26,13.44),(20,262,59,14.51),(20,266,130,10.27),(20,269,154,21.75),(20,271,36,4.01),(20,279,49,19.77),(20,280,172,3.46),(20,283,86,9.72),(20,296,60,16.78),(20,301,270,11.06),(21,4,7,12.40),(21,13,101,18.43),(21,14,34,10.74),(21,171,72,20.99),(21,182,118,4.93),(21,192,199,10.03),(21,198,112,2.06),(21,258,181,11.55),(21,273,130,21.28),(22,8,23,21.53),(22,22,66,24.59),(22,24,118,2.07),(22,31,127,3.32),(22,32,68,3.67),(22,33,174,15.14),(22,74,69,2.92),(22,92,75,15.84),(22,93,27,17.09),(22,94,4,6.55),(22,105,110,24.41),(22,110,83,6.81),(22,115,67,10.01),(22,123,116,8.19),(22,129,75,1.36),(22,137,153,13.78),(22,152,153,20.50),(22,157,190,17.34),(22,160,95,14.42),(22,162,175,1.88),(22,175,120,14.44),(22,183,78,8.56),(22,193,151,19.75),(22,206,46,10.89),(22,207,112,19.52),(22,208,165,14.72),(22,232,36,23.40),(22,235,133,12.54),(22,241,101,5.37),(22,248,60,7.18),(22,254,129,13.41),(22,269,129,24.95),(22,279,45,1.59),(22,282,108,5.83),(22,283,116,16.67),(22,306,110,7.97),(22,309,116,4.68),(23,6,60,8.07),(23,26,131,12.18),(23,27,103,2.97),(23,34,66,17.13),(23,81,107,9.39),(23,82,106,13.58),(23,85,88,10.35),(23,121,24,10.39),(23,127,161,22.98),(23,128,24,10.37),(23,156,60,24.59),(23,163,155,22.74),(23,167,173,13.00),(23,172,139,2.82),(23,174,185,21.61),(23,188,175,15.01),(23,223,180,15.98),(23,240,30,1.65),(23,242,108,1.48),(23,253,102,7.26),(23,259,54,15.04),(23,271,188,1.66),(23,273,191,17.87),(23,302,174,14.70),(23,303,168,4.11),(23,305,78,22.87),(24,7,33,21.57),(24,10,90,6.98),(24,11,88,16.16),(24,17,181,5.65),(24,22,135,19.01),(24,25,56,24.16),(24,27,48,2.73),(24,28,85,4.49),(24,37,101,5.29),(24,47,154,12.11),(24,55,106,12.89),(24,57,184,5.79),(24,58,0,3.74),(24,64,65,15.37),(24,80,96,15.65),(24,81,126,20.71),(24,84,115,4.16),(24,86,64,24.44),(24,91,133,21.62),(24,97,19,17.01),(24,110,150,22.06),(24,135,176,18.69),(24,141,169,23.06),(24,149,148,14.74),(24,155,91,13.38),(24,175,242,11.52),(24,193,180,6.16),(24,196,191,23.78),(24,208,116,1.55),(24,220,9,12.62),(24,246,129,14.26),(24,248,195,23.15),(24,268,77,9.93),(24,284,7,14.76),(24,285,340,14.19),(24,290,21,21.80),(24,294,167,10.84),(24,302,156,1.16),(24,305,197,2.60),(24,310,27,2.30),(25,4,154,17.71),(25,6,72,2.40),(25,12,135,4.50),(25,16,152,22.29),(25,30,100,22.11),(25,31,60,19.69),(25,33,36,19.09),(25,36,60,17.21),(25,50,104,11.20),(25,78,83,20.61),(25,91,133,4.23),(25,92,86,15.40),(25,94,145,8.91),(25,102,196,8.34),(25,112,90,5.04),(25,155,65,9.53),(25,167,128,19.74),(25,169,131,20.95),(25,171,49,1.33),(25,184,17,24.76),(25,198,22,17.89),(25,201,34,6.73),(25,204,24,23.28),(25,213,82,8.76),(25,221,120,3.66),(25,245,40,7.08),(25,254,119,13.09),(25,264,62,16.73),(25,271,33,18.40),(25,272,68,4.12),(25,279,49,9.67),(25,289,23,6.70),(25,309,45,11.18),(25,310,134,6.50),(26,5,135,8.89),(26,7,167,8.60),(26,16,133,20.54),(26,29,49,18.17),(26,38,69,18.64),(26,40,121,17.02),(26,42,120,3.74),(26,76,14,23.22),(26,95,118,17.06),(26,113,123,12.60),(26,136,179,6.56),(26,163,162,5.07),(26,172,6,2.57),(26,176,182,14.08),(26,182,20,4.67),(26,186,143,20.70),(26,202,132,16.97),(26,215,147,23.97),(26,216,36,22.78),(26,237,153,24.51),(26,244,188,8.71),(26,245,132,18.50),(26,246,103,7.76),(26,259,87,3.58),(26,265,69,8.16),(26,292,171,8.63),(27,22,63,23.35),(27,31,24,6.07),(27,53,2,15.25),(27,62,65,18.22),(27,83,128,13.25),(27,92,36,4.27),(27,96,9,14.29),(27,110,6,13.43),(27,126,117,1.85),(27,130,154,7.95),(27,134,170,24.01),(27,147,8,24.84),(27,187,173,22.54),(27,221,43,22.63),(27,222,138,5.00),(27,230,96,13.43),(27,237,145,8.95),(27,266,57,10.80),(27,278,185,2.54),(27,282,63,18.80),(28,11,19,24.81),(28,16,101,5.01),(28,26,3,2.59),(28,27,181,18.67),(28,49,197,1.29),(28,86,12,13.24),(28,103,43,12.68),(28,110,28,11.32),(28,142,83,19.16),(28,144,146,20.45),(28,162,157,5.12),(28,172,140,13.56),(28,178,24,9.98),(28,183,36,9.61),(28,213,69,24.96),(28,239,84,24.22),(29,7,140,9.74),(29,34,18,22.91),(29,51,111,14.02),(29,52,65,12.39),(29,65,58,8.52),(29,78,44,20.78),(29,101,55,9.80),(29,113,110,15.27),(29,114,136,9.58),(29,126,118,16.10),(29,153,172,10.88),(29,184,162,16.36),(29,186,20,7.23),(29,192,190,5.56),(29,201,76,6.07),(29,204,199,14.82),(29,219,185,8.60),(29,250,189,9.42),(29,252,47,6.40),(29,258,80,22.83),(29,261,92,4.98),(29,265,117,24.90),(29,290,105,15.66),(29,293,6,7.63),(29,308,146,5.98),(30,12,119,6.76),(30,23,144,11.56),(30,107,58,9.95),(30,125,57,24.05),(30,143,70,5.29),(30,164,196,8.23),(30,170,119,5.61),(30,213,153,13.42),(30,248,157,17.28),(30,275,168,22.41),(30,277,100,24.60),(30,279,116,16.60),(30,284,162,1.23),(30,303,110,9.27),(31,28,31,17.59),(31,35,18,19.02),(31,51,73,15.53),(31,63,40,5.23),(31,117,72,24.64),(31,128,7,12.87),(31,131,20,13.78),(31,169,195,5.68),(31,179,44,8.85),(31,187,159,14.48),(31,194,47,17.18),(31,200,84,22.09),(31,215,86,9.80),(31,224,85,17.43),(31,241,155,9.66),(31,257,104,18.27),(31,283,89,1.12),(32,10,20,17.98),(32,14,136,23.74),(32,15,28,7.01),(32,16,112,6.73),(32,36,77,22.47),(32,41,151,20.23),(32,49,170,5.36),(32,59,141,4.82),(32,63,146,20.04),(32,80,29,13.53),(32,82,182,23.21),(32,92,173,24.28),(32,105,40,12.86),(32,106,167,6.74),(32,110,42,20.62),(32,112,104,23.01),(32,119,164,11.25),(32,122,113,19.13),(32,124,166,20.26),(32,134,135,12.31),(32,144,158,23.82),(32,154,132,11.76),(32,159,50,6.63),(32,171,177,22.65),(32,176,186,1.15),(32,181,14,5.89),(32,182,198,9.52),(32,183,116,23.66),(32,195,30,10.28),(32,196,124,14.23),(32,203,88,14.25),(32,209,62,6.59),(32,216,97,6.41),(32,222,217,22.51),(32,229,91,6.02),(32,239,15,22.15),(32,242,26,17.64),(32,260,142,5.31),(32,261,109,5.36),(32,270,35,11.29),(32,271,108,4.78),(32,273,304,9.73),(32,275,30,21.09),(32,281,98,3.15),(32,283,83,6.45),(32,285,192,2.24),(32,286,59,11.30),(32,287,88,22.65),(32,291,133,11.03),(32,295,67,17.10),(32,296,124,20.26),(32,298,91,13.78),(32,301,177,23.55),(33,4,112,19.91),(33,37,75,4.63),(33,65,148,14.37),(33,90,183,4.06),(33,96,48,6.01),(33,147,151,3.09),(33,188,150,12.46),(33,216,107,10.27),(33,263,196,5.88),(34,2,8,3.97),(34,31,22,10.29),(34,32,85,5.26),(34,67,169,7.30),(34,69,171,22.86),(34,76,177,21.65),(34,83,135,2.71),(34,219,105,11.24),(34,268,67,18.55),(34,272,166,2.70),(34,282,125,6.61),(34,288,118,19.74),(34,310,56,5.71),(35,6,126,4.62),(35,20,90,7.47),(35,41,30,1.36),(35,50,101,23.47),(35,53,94,22.73),(35,63,118,15.44),(35,73,55,19.55),(35,88,61,6.80),(35,93,184,19.24),(35,103,74,5.32),(35,112,44,8.00),(35,127,160,16.57),(35,149,35,17.49),(35,155,23,1.58),(35,164,72,11.53),(35,176,24,2.39),(35,185,137,13.40),(35,193,74,6.51),(35,211,11,14.45),(35,214,144,5.14),(35,215,32,21.93),(35,236,124,10.38),(35,240,104,2.07),(35,242,16,23.75),(35,248,138,12.74),(35,256,135,2.82),(35,266,124,3.24),(35,269,85,17.31),(35,272,17,13.50),(35,282,157,14.12),(35,286,163,20.12),(35,288,97,19.14),(36,6,18,4.22),(36,14,44,7.29),(36,16,41,7.80),(36,34,195,17.86),(36,61,33,19.26),(36,139,74,22.22),(36,165,158,10.44),(36,208,101,8.37),(36,224,82,13.21),(36,227,27,19.02),(36,232,80,10.97),(36,234,121,22.00),(36,242,143,16.67),(36,271,169,21.27),(36,273,185,9.70),(36,277,11,3.52),(37,1,199,10.65),(37,25,115,24.55),(37,30,15,11.67),(37,44,199,16.75),(37,60,112,11.62),(37,80,74,17.41),(37,92,80,16.33),(37,106,20,20.52),(37,132,115,15.26),(37,139,127,23.12),(37,150,70,14.18),(37,155,8,22.70),(37,173,180,24.29),(37,183,150,1.96),(37,184,135,24.08),(37,187,129,3.47),(37,195,153,19.97),(37,226,13,17.19),(37,253,67,6.26),(37,261,65,4.39),(38,38,171,16.05),(38,42,55,11.15),(38,82,69,8.72),(38,88,58,16.78),(38,98,56,20.03),(38,108,159,14.83),(38,111,6,8.96),(38,122,30,11.41),(38,127,63,20.43),(38,135,22,6.24),(38,139,77,13.00),(38,171,127,14.37),(38,175,43,8.43),(38,180,84,12.74),(38,186,172,20.55),(38,195,142,16.88),(38,208,175,16.26),(38,234,132,1.48),(38,239,162,23.04),(38,249,99,3.81),(38,251,68,12.95),(38,252,73,24.86),(38,254,97,20.31),(38,261,55,23.04),(38,278,102,24.69),(38,288,170,9.73),(38,303,26,19.74),(41,74,81,11.37),(41,200,141,15.91),(41,245,57,12.82),(42,1,176,13.85),(42,11,189,19.77),(42,21,13,4.04),(42,24,150,6.60),(42,49,187,14.84),(42,57,28,24.83),(42,66,123,4.69),(42,68,212,23.62),(42,78,60,12.31),(42,95,21,1.76),(42,103,65,10.34),(42,118,54,15.34),(42,137,174,21.30),(42,139,128,9.73),(42,143,193,24.25),(42,145,150,15.55),(42,150,77,13.16),(42,157,170,21.67),(42,158,156,11.85),(42,183,13,24.29),(42,205,46,21.17),(42,207,93,23.26),(42,211,15,1.59),(42,222,25,3.82),(42,239,156,13.44),(42,265,131,17.07),(42,290,109,12.23),(42,291,83,1.58),(43,12,119,3.38),(43,26,53,8.73),(43,55,45,13.88),(43,56,132,6.16),(43,61,106,11.82),(43,81,144,2.32),(43,89,140,22.39),(43,93,33,6.75),(43,98,172,18.92),(43,111,125,24.03),(43,113,199,13.10),(43,133,85,19.88),(43,138,172,8.10),(43,139,67,7.93),(43,144,145,4.31),(43,177,183,23.33),(43,178,62,24.22),(43,194,11,18.43),(43,202,29,12.36),(43,204,81,11.73),(43,221,1,8.16),(43,225,273,4.24),(43,228,171,5.17),(43,236,31,14.43),(43,240,61,23.28),(43,268,193,1.14),(43,271,39,5.65),(43,282,56,6.08),(43,287,168,8.92),(44,22,167,15.64),(44,24,89,13.54),(44,32,72,2.27),(44,65,6,23.57),(44,75,23,4.06),(44,95,128,1.37),(44,97,56,4.25),(44,103,156,17.28),(44,118,44,22.50),(44,132,130,16.89),(44,152,64,13.51),(44,167,113,12.95),(44,175,6,24.21),(44,191,94,2.70),(44,218,168,10.65),(44,238,49,13.63),(44,246,121,7.24),(44,247,12,9.03),(44,255,67,20.87),(44,259,98,21.96),(44,260,183,9.49),(44,303,41,15.97),(45,5,185,1.33),(45,39,28,11.57),(45,43,147,13.78),(45,51,159,21.61),(45,65,174,11.00),(45,73,33,1.22),(45,110,105,22.37),(45,126,140,18.88),(45,127,133,21.88),(45,129,53,21.58),(45,148,97,15.08),(45,175,24,10.52),(45,187,88,19.58),(45,203,24,11.43),(45,210,197,16.54),(45,263,80,22.48),(45,270,61,23.90),(45,274,104,1.84),(45,290,87,20.45),(46,2,137,23.04),(46,37,116,19.32),(46,39,162,20.29),(46,48,162,21.78),(46,121,171,12.13),(46,137,130,10.81),(46,149,78,21.29),(46,178,76,12.33),(46,202,168,3.84),(46,227,99,8.15),(46,261,107,4.81),(46,262,183,22.58),(46,271,84,14.87),(46,283,138,5.65),(46,287,44,12.68),(46,309,17,7.24),(47,24,97,5.75),(47,42,26,14.23),(47,51,98,11.80),(47,56,118,15.96),(47,101,40,20.16),(47,216,114,2.92),(47,263,68,7.46),(48,73,10,23.91),(48,84,56,21.64),(48,92,142,24.52),(48,96,83,23.91),(48,99,25,2.74),(48,106,140,15.47),(48,122,121,18.63),(48,130,9,7.13),(48,207,145,16.80),(48,210,125,8.29),(48,212,104,7.19),(48,224,175,24.20),(48,250,88,20.82),(48,259,89,13.58),(48,276,87,16.00),(48,281,196,9.71),(48,285,38,4.01),(48,297,163,18.96),(48,298,95,20.04),(49,16,74,3.34),(49,67,171,11.95),(49,87,50,13.60),(49,172,150,16.90),(49,181,179,20.07),(49,249,143,14.94),(50,34,99,3.38),(50,51,158,9.77),(50,64,192,1.87),(50,83,156,4.43),(50,96,32,16.50),(50,107,154,21.60),(50,117,195,21.60),(50,166,70,7.37),(50,180,76,18.47),(50,251,61,11.90),(50,286,187,1.78),(51,54,52,5.18),(51,77,144,15.70),(51,106,49,24.07),(51,140,65,24.57),(51,153,22,16.56),(51,192,136,13.27),(51,196,144,11.94),(51,208,146,23.48),(51,211,40,21.25),(51,214,75,13.77),(51,246,39,18.32),(51,249,81,4.72),(51,285,47,6.48),(51,289,71,6.82),(52,8,20,7.31),(52,13,113,8.53),(52,52,160,16.55),(52,65,9,11.11),(52,67,137,7.45),(52,68,93,12.87),(52,82,32,19.58),(52,142,101,18.08),(52,228,11,13.99),(52,236,93,23.43),(52,279,112,23.54),(52,304,31,18.49),(52,309,68,7.59),(53,14,100,8.54),(53,18,119,19.26),(53,21,169,24.23),(53,39,140,9.14),(53,42,106,1.45),(53,65,172,3.34),(53,81,174,19.57),(53,83,81,15.11),(53,96,36,13.35),(53,124,104,6.54),(53,128,189,22.10),(53,130,111,4.71),(53,131,105,17.77),(53,145,128,18.13),(53,168,83,24.42),(53,173,122,23.23),(53,189,123,10.71),(53,190,187,5.59),(53,197,28,19.12),(53,199,155,24.44),(53,214,175,17.76),(53,215,51,19.25),(53,216,101,21.75),(53,227,103,2.67),(53,230,157,16.84),(53,233,78,18.85),(53,237,65,3.80),(53,241,107,18.17),(53,242,10,23.70),(53,256,125,21.83),(53,265,187,12.65),(53,272,94,1.36),(53,293,55,14.05),(53,294,110,4.30),(53,310,14,23.11),(54,83,110,15.23),(54,92,78,7.64),(54,116,158,12.78),(54,146,189,9.13),(54,272,125,18.95),(55,7,76,22.28),(55,9,80,5.46),(55,15,51,8.06),(55,42,44,21.40),(55,65,100,13.79),(55,73,14,17.87),(55,81,43,5.76),(55,91,186,1.73),(55,163,69,13.22),(55,171,174,3.04),(55,175,58,6.45),(55,176,35,7.04),(55,209,96,5.52),(55,212,72,11.20),(55,258,117,3.15),(55,285,133,4.55),(55,297,6,8.15),(55,310,94,18.38),(56,34,178,22.30),(56,40,29,5.20),(56,51,12,17.82),(56,60,102,6.55),(56,80,62,12.16),(56,82,108,7.51),(56,128,100,9.12),(56,140,148,17.74),(56,170,124,21.18),(56,203,52,6.58),(56,253,57,7.94),(56,304,172,5.48),(56,306,8,14.36),(58,3,18,3.42),(58,6,10,21.59),(58,8,155,20.69),(58,12,137,21.59),(58,17,208,21.55),(58,29,107,21.30),(58,49,37,15.57),(58,68,46,17.01),(58,72,137,16.93),(58,80,77,14.37),(58,82,158,11.15),(58,87,29,8.63),(58,94,157,8.04),(58,101,168,7.75),(58,102,195,14.14),(58,113,192,19.80),(58,115,48,8.93),(58,129,173,14.52),(58,130,26,2.93),(58,135,163,18.83),(58,169,68,19.56),(58,178,21,3.47),(58,183,198,12.87),(58,193,175,14.10),(58,206,134,16.61),(58,214,199,21.84),(58,226,189,22.67),(58,229,5,12.20),(58,234,141,24.83),(58,248,8,14.71),(58,254,87,12.74),(58,261,95,7.27),(58,289,165,7.17),(58,291,85,17.72),(58,304,196,4.18),(58,307,123,19.83),(58,309,15,5.19),(59,77,61,10.97),(59,104,58,1.79),(59,139,140,8.10),(59,148,191,4.31),(59,169,235,9.78),(59,206,128,9.61),(59,211,78,5.86),(59,224,84,6.54),(59,227,18,7.04),(59,236,54,2.94),(59,251,91,16.77),(59,306,95,11.16),(60,5,85,18.84),(60,23,79,9.28),(60,27,79,23.43),(60,37,34,8.28),(60,71,145,2.44),(60,85,186,5.06),(60,109,113,2.06),(60,135,102,22.34),(60,138,16,9.47),(60,191,122,18.82),(60,225,65,2.51),(60,233,119,17.73),(60,303,27,11.89),(60,311,70,3.74),(61,2,199,11.69),(61,15,32,21.97),(61,29,110,5.66),(61,34,137,13.76),(61,44,143,17.68),(61,66,46,2.74),(61,70,108,8.69),(61,71,188,17.99),(61,77,25,19.69),(61,80,13,6.91),(61,99,134,5.19),(61,115,77,10.80),(61,119,114,11.23),(61,124,322,14.49),(61,125,62,15.36),(61,126,104,3.26),(61,128,41,9.79),(61,129,39,3.63),(61,132,142,21.37),(61,158,90,19.66),(61,174,18,17.01),(61,190,74,23.78),(61,194,32,11.47),(61,196,59,15.60),(61,214,122,11.78),(61,227,176,6.35),(61,235,128,10.01),(61,238,65,23.65),(61,241,192,1.77),(61,253,18,5.07),(61,263,70,23.90),(61,269,41,11.83),(61,308,166,23.50),(62,47,116,12.30),(62,110,97,3.81),(62,147,198,11.73),(62,150,164,14.98),(62,167,78,10.04),(62,170,188,20.23),(62,172,196,6.41),(62,184,140,4.90),(62,192,100,11.39),(62,194,167,16.66),(62,208,57,6.21),(62,209,30,19.81),(62,217,139,22.69),(62,218,27,17.00),(62,223,57,12.68),(62,224,104,9.84),(62,241,127,1.23),(62,244,86,20.32),(62,246,142,13.69),(62,257,119,10.16),(62,265,136,7.77),(62,269,178,10.99),(62,275,79,20.18),(62,280,40,4.21),(62,299,81,19.48),(63,5,34,2.10),(63,113,24,1.20),(63,133,144,24.94),(63,139,80,11.35),(63,198,25,18.72),(63,236,110,6.95),(63,241,336,13.31),(63,244,142,13.96),(64,34,137,15.57),(64,62,82,1.92),(64,63,194,1.22),(64,75,169,14.59),(64,110,60,19.40),(64,155,65,6.17),(64,186,199,10.82),(64,214,188,7.91),(64,259,272,10.60),(64,293,6,21.78),(65,9,76,13.54),(65,14,26,13.17),(65,60,39,16.88),(65,97,178,1.50),(65,124,90,5.78),(65,129,13,8.77),(65,165,109,24.93),(65,221,151,10.77),(65,227,118,23.77),(65,230,93,11.99),(65,253,13,19.99),(65,276,34,3.89),(65,297,15,13.07),(66,12,60,15.34),(66,13,70,11.18),(66,26,148,6.04),(66,33,86,8.28),(66,37,172,9.84),(66,77,33,12.76),(66,79,69,23.56),(66,97,33,1.10),(66,118,52,24.70),(66,139,89,23.52),(66,150,54,14.89),(66,157,18,8.11),(66,177,14,17.05),(66,213,183,7.04),(66,233,104,13.34),(66,246,150,3.11),(66,263,49,12.70),(66,278,44,9.93),(66,279,81,16.00),(66,293,72,17.53),(66,311,43,9.65),(67,7,136,15.74),(67,29,182,6.22),(67,58,88,2.91),(67,118,32,11.25),(67,120,67,2.25),(67,172,186,2.41),(67,176,77,4.75),(67,209,21,7.54),(67,217,108,18.61),(67,233,85,20.40),(67,240,125,19.53),(68,45,73,4.18),(68,82,151,1.43),(68,111,172,9.99),(68,130,45,6.38),(68,144,84,3.48),(68,153,133,23.61),(68,222,189,18.63),(68,260,190,8.01),(69,4,34,6.92),(69,10,89,20.23),(69,12,21,14.45),(69,23,74,21.70),(69,36,96,9.85),(69,41,5,24.35),(69,75,13,13.50),(69,80,28,13.18),(69,116,73,4.60),(69,130,156,21.63),(69,134,35,8.44),(69,138,68,16.17),(69,139,183,1.58),(69,177,25,15.22),(69,181,4,19.56),(69,207,42,1.38),(69,212,148,16.88),(69,226,93,5.11),(69,249,172,19.17),(69,258,44,8.00),(69,262,134,16.96),(69,266,145,21.56),(69,276,76,22.80),(69,280,96,2.95),(69,288,55,16.76),(69,292,19,24.83),(70,4,110,5.64),(70,8,104,18.75),(70,9,99,23.86),(70,52,141,14.82),(70,74,104,2.60),(70,83,184,5.09),(70,101,43,7.29),(70,102,134,17.57),(70,106,191,19.34),(70,124,196,8.59),(70,156,360,19.71),(70,158,65,24.36),(70,166,54,2.92),(70,195,59,16.14),(70,205,70,8.03),(70,224,57,19.33),(70,250,30,1.24),(70,255,183,21.54),(70,281,66,11.43),(70,295,168,16.75),(70,303,119,1.43),(70,305,155,11.43),(71,13,138,10.41),(71,30,17,4.59),(71,32,58,4.92),(71,84,161,4.80),(71,101,68,19.42),(71,117,13,13.53),(71,120,41,16.08),(71,127,171,4.45),(71,138,148,12.70),(71,148,34,23.89),(71,166,15,11.39),(71,211,35,23.73),(71,238,70,10.57),(71,263,25,2.14),(71,271,100,20.23),(71,274,143,4.17),(71,288,169,8.91),(71,300,66,19.61),(71,304,111,21.20),(72,14,104,14.91),(72,34,195,3.17),(72,44,140,6.89),(72,86,76,11.22),(72,130,120,19.67),(72,151,170,9.13),(72,180,172,1.79),(72,199,49,18.44),(72,214,138,20.12),(72,218,165,21.50),(72,296,115,19.92),(72,304,122,16.93),(73,16,112,22.83),(73,19,161,2.62),(73,28,70,4.91),(73,34,171,21.91),(73,35,101,8.10),(73,46,157,24.46),(73,109,10,22.47),(73,120,189,11.98),(73,134,47,6.92),(73,146,64,19.81),(73,149,31,15.13),(73,151,119,7.33),(73,168,79,19.51),(73,170,56,24.32),(73,175,127,19.14),(73,179,116,22.45),(73,211,27,15.22),(73,229,85,13.95),(73,246,130,17.67),(73,266,181,16.88),(73,279,41,17.83),(73,284,93,11.81),(73,296,129,8.77),(73,307,110,5.64),(74,15,27,5.65),(74,20,154,5.41),(74,22,9,2.61),(74,27,55,1.65),(74,43,28,10.53),(74,51,134,4.38),(74,75,47,8.57),(74,76,144,12.24),(74,77,27,2.59),(74,83,129,9.58),(74,119,9,18.97),(74,139,16,22.26),(74,160,115,10.93),(74,170,41,21.91),(74,185,1,17.40),(74,187,160,1.66),(74,196,199,20.48),(74,203,87,22.96),(74,244,43,2.41),(74,248,184,8.16),(74,261,116,3.10),(74,263,166,18.61),(74,292,180,2.93),(74,297,42,10.18),(74,303,191,10.54),(74,304,37,15.73),(75,7,26,3.02),(75,13,52,9.43),(75,17,15,3.45),(75,55,78,15.76),(75,56,234,16.27),(75,58,5,21.90),(75,61,113,11.25),(75,62,5,9.71),(75,74,7,15.65),(75,80,135,5.74),(75,84,188,13.41),(75,92,103,7.70),(75,96,18,8.70),(75,101,87,7.23),(75,106,90,2.47),(75,111,181,9.79),(75,116,91,3.94),(75,142,146,17.51),(75,148,69,5.81),(75,150,25,3.19),(75,154,140,23.79),(75,155,101,7.12),(75,163,158,17.76),(75,173,194,15.54),(75,178,15,20.05),(75,184,171,17.69),(75,186,196,24.47),(75,202,66,4.94),(75,225,185,7.93),(75,229,109,18.04),(75,243,71,2.46),(75,249,87,10.60),(75,258,18,21.68),(75,263,87,2.90),(75,267,104,21.56),(75,303,55,11.07),(75,309,79,19.05),(76,18,6,2.31),(76,23,162,15.29),(76,69,133,1.47),(76,73,39,20.07),(76,88,44,12.88),(76,100,133,4.37),(76,141,97,10.29),(76,173,28,9.22),(76,241,132,10.58),(77,6,120,22.28),(77,11,45,16.82),(77,32,84,23.40),(77,41,11,10.04),(77,58,37,7.27),(77,79,11,6.99),(77,100,17,23.76),(77,115,142,6.15),(77,120,110,23.47),(77,127,60,18.90),(77,130,13,22.59),(77,131,148,3.64),(77,145,90,11.32),(77,148,192,4.46),(77,169,188,7.73),(77,199,19,8.61),(77,204,41,2.83),(77,222,5,11.53),(77,226,6,4.12),(80,23,159,1.67),(80,69,58,12.76),(80,119,140,13.86),(80,170,175,7.80),(80,179,117,18.82),(80,193,67,8.18),(80,206,173,13.85),(80,211,5,1.25),(80,213,131,3.91),(80,233,196,18.80),(80,256,50,11.43),(80,274,131,5.56),(80,289,178,1.22),(80,294,21,9.16),(81,10,139,12.93),(81,78,168,15.24),(81,91,144,12.88),(81,118,34,1.88),(81,143,113,14.85),(81,148,109,21.49),(81,221,116,10.88),(81,262,92,2.18),(81,291,182,5.69),(81,292,82,6.52),(81,303,138,22.58),(82,31,96,1.74),(82,50,146,14.81),(82,214,172,9.00),(82,224,76,10.37),(82,254,90,7.30),(83,15,112,20.70),(83,16,50,5.17),(83,21,191,4.53),(83,34,106,5.76),(83,51,173,9.39),(83,53,108,5.26),(83,75,46,2.50),(83,77,45,10.27),(83,79,150,22.03),(83,92,63,7.62),(83,96,36,18.73),(83,101,56,24.71),(83,106,151,9.54),(83,128,39,1.02),(83,140,57,21.74),(83,144,168,14.56),(83,154,134,23.85),(83,159,75,4.56),(83,184,36,20.74),(83,186,63,15.48),(83,193,19,4.67),(83,206,103,2.81),(83,207,74,12.60),(83,213,6,22.13),(83,226,79,20.44),(83,230,141,3.69),(83,250,149,2.68),(83,260,159,8.04),(83,262,100,16.71),(83,267,132,5.78),(83,294,56,2.66),(83,297,178,3.15),(84,18,67,2.00),(84,20,90,5.83),(84,42,109,22.85),(84,52,114,10.80),(84,68,88,16.19),(84,70,155,9.83),(84,118,195,1.58),(84,128,11,4.88),(84,130,61,13.35),(84,136,64,22.56),(84,145,174,13.20),(84,146,120,17.86),(84,205,187,2.15),(84,214,165,24.84),(84,218,55,20.58),(84,221,83,22.57),(84,238,69,24.59),(84,286,154,7.17),(84,297,151,17.94),(84,307,94,5.15),(85,22,52,20.72),(85,48,45,15.05),(85,51,142,21.54),(85,52,59,9.30),(85,69,142,19.28),(85,70,170,5.47),(85,87,89,2.87),(85,113,99,22.64),(85,147,7,4.63),(85,151,37,12.43),(85,158,58,12.49),(85,159,170,19.02),(85,167,145,13.71),(85,180,21,18.32),(85,193,30,5.68),(85,196,108,4.83),(85,255,31,20.65),(85,256,71,13.21),(86,20,38,21.13),(86,91,102,1.93),(86,101,97,11.49),(86,107,73,11.02),(86,113,147,20.68),(86,133,146,11.51),(86,179,70,15.14),(86,190,128,19.19),(86,238,166,13.13),(86,244,127,12.33),(86,284,101,20.74),(86,308,32,3.33),(86,311,79,14.85),(87,69,112,13.90),(87,72,103,11.63),(87,131,31,8.37),(87,193,18,7.18),(87,209,195,4.37),(88,2,93,20.10),(88,4,128,15.09),(88,8,161,12.58),(88,13,96,10.54),(88,20,19,4.16),(88,31,186,13.85),(88,34,40,14.32),(88,36,23,3.02),(88,38,104,14.51),(88,47,195,14.36),(88,52,139,20.95),(88,62,21,6.66),(88,80,101,23.27),(88,89,73,22.58),(88,93,194,1.70),(88,96,150,24.13),(88,102,169,5.93),(88,106,84,22.17),(88,114,199,14.88),(88,126,181,8.25),(88,139,129,11.87),(88,150,103,4.47),(88,158,138,21.32),(88,167,102,23.46),(88,170,104,1.04),(88,187,187,19.21),(88,189,44,22.02),(88,201,145,11.68),(88,207,144,9.27),(88,209,70,10.44),(88,218,65,5.57),(88,220,130,23.45),(88,223,181,7.05),(88,225,199,24.27),(88,228,40,5.81),(88,237,21,14.52),(88,239,56,6.28),(88,241,188,5.53),(88,244,105,23.27),(88,256,63,1.75),(88,258,72,13.74),(88,259,22,3.71),(88,266,73,8.85),(88,274,114,4.73),(88,294,165,7.47),(88,295,120,3.24),(88,304,157,24.27),(88,309,196,24.85),(89,1,115,22.13),(89,53,120,21.79),(89,91,118,12.78),(89,97,22,1.80),(89,99,104,12.71),(89,116,123,10.70),(89,129,26,3.80),(89,150,154,24.91),(89,166,83,8.14),(89,177,75,24.25),(89,185,164,24.18),(89,255,129,13.31),(89,277,121,20.50),(89,284,131,1.79),(90,3,179,17.83),(90,14,180,5.14),(90,33,160,17.06),(90,63,70,12.29),(90,98,40,5.66),(90,118,186,4.76),(90,131,20,14.11),(90,137,148,21.75),(90,143,186,19.54),(90,151,11,2.70),(90,152,55,16.12),(90,169,53,1.78),(90,191,21,5.74),(90,199,71,7.98),(90,201,146,13.14),(90,269,126,22.38),(90,275,64,12.16),(90,289,132,19.16),(90,291,195,3.99),(90,292,90,7.30),(90,293,15,5.56),(90,310,137,19.29),(91,11,121,11.73),(91,17,193,16.13),(91,33,129,11.76),(91,35,53,16.37),(91,48,190,6.81),(91,56,72,9.50),(91,63,61,24.07),(91,66,43,13.18),(91,80,53,17.98),(91,84,76,23.80),(91,111,68,14.21),(91,112,88,7.99),(91,134,47,17.69),(91,159,123,23.42),(91,170,83,2.48),(91,264,105,4.08),(91,269,131,17.82),(91,283,149,24.18),(92,16,188,2.67),(92,17,192,7.89),(92,18,71,6.61),(92,22,136,14.65),(92,27,136,13.83),(92,33,84,23.47),(92,47,72,14.58),(92,53,68,17.62),(92,59,130,9.25),(92,66,177,20.34),(92,70,130,14.60),(92,76,55,9.94),(92,78,187,1.15),(92,79,8,15.89),(92,106,67,2.04),(92,114,32,5.20),(92,132,87,10.14),(92,153,12,12.51),(92,156,16,5.51),(92,177,137,4.55),(92,186,127,21.15),(92,192,182,22.41),(92,212,21,18.08),(92,215,101,13.34),(92,233,86,13.86),(92,237,54,18.89),(92,244,125,7.06),(92,256,120,15.16),(92,272,40,18.45),(92,275,119,19.42),(92,276,184,11.93),(92,286,9,20.87),(92,296,199,11.57),(92,304,180,11.13),(92,307,213,17.25),(92,310,73,1.91),(93,6,53,18.73),(93,9,33,24.13),(93,21,27,16.48),(93,28,4,17.81),(93,29,10,10.92),(93,43,128,20.39),(93,49,70,11.44),(93,50,157,17.88),(93,73,32,21.93),(93,77,132,3.54),(93,78,84,7.43),(93,94,171,4.66),(93,95,12,4.65),(93,98,95,12.57),(93,126,102,9.66),(93,151,118,2.66),(93,190,198,3.77),(93,191,67,7.81),(93,220,134,21.27),(93,234,193,6.56),(93,250,89,23.40),(93,252,73,16.67),(93,305,159,15.37),(93,309,68,8.85),(94,17,182,8.10),(94,27,188,14.97),(94,32,158,13.01),(94,33,116,5.61),(94,40,42,19.63),(94,50,51,7.10),(94,52,35,24.17),(94,54,245,18.80),(94,65,168,19.19),(94,66,3,6.35),(94,86,50,10.77),(94,87,87,23.97),(94,92,13,24.17),(94,106,172,8.33),(94,115,164,24.84),(94,118,120,7.10),(94,123,200,7.19),(94,129,142,5.37),(94,152,197,18.20),(94,193,97,15.85),(94,222,168,15.20),(94,227,19,2.86),(94,230,28,24.25),(94,234,8,2.43),(94,237,69,4.54),(94,247,143,17.24),(94,249,91,4.04),(94,260,98,24.93),(94,263,7,7.01),(94,264,58,2.80),(94,282,135,6.87),(94,297,164,16.27),(95,3,61,2.98),(95,10,123,9.93),(95,11,193,12.70),(95,12,14,7.52),(95,19,57,12.81),(95,31,64,8.77),(95,39,66,9.27),(95,57,162,9.98),(95,83,111,13.29),(95,90,101,16.57),(95,103,50,10.18),(95,117,195,18.79),(95,132,45,24.58),(95,157,71,4.95),(95,159,24,3.21),(95,220,59,23.38),(95,224,175,24.81),(95,272,107,10.19),(95,278,197,16.92),(95,281,142,15.02),(95,295,61,18.32),(95,299,58,3.86),(96,15,104,23.98),(96,25,181,5.20),(96,28,76,14.71),(96,44,40,16.24),(96,53,7,5.48),(96,59,181,6.51),(96,60,73,15.36),(96,66,177,17.74),(96,68,172,21.39),(96,70,134,16.31),(96,78,44,4.74),(96,86,49,12.49),(96,93,38,20.25),(96,94,29,17.03),(96,98,79,5.15),(96,106,80,24.29),(96,120,218,17.51),(96,125,186,18.45),(96,127,95,17.45),(96,130,138,19.94),(96,137,142,12.13),(96,150,217,15.08),(96,159,107,8.26),(96,162,47,3.62),(96,172,70,24.68),(96,179,167,13.83),(96,193,59,11.89),(96,194,188,3.25),(96,198,128,9.41),(96,207,102,1.38),(96,214,107,24.24),(96,221,156,9.55),(96,229,27,15.02),(96,237,76,7.19),(96,247,91,4.79),(96,248,47,3.74),(96,249,98,4.12),(96,251,85,7.28),(96,256,82,20.99),(96,264,15,24.76),(96,267,153,15.55),(96,271,5,4.18),(96,278,190,12.58),(96,281,181,16.20),(96,283,3,7.18),(96,290,71,21.81),(96,291,123,11.71),(96,292,102,16.74),(96,303,181,3.36),(96,307,7,24.46),(96,311,136,6.32),(97,4,161,6.42),(97,12,128,12.89),(97,17,187,23.68),(97,21,41,8.54),(97,67,81,23.75),(97,73,180,12.54),(97,81,119,24.16),(97,90,126,21.10),(97,96,153,4.55),(97,110,141,1.78),(97,121,74,9.47),(97,132,31,17.24),(97,133,122,20.69),(97,137,183,21.81),(97,154,60,18.80),(97,161,104,7.90),(97,166,8,20.45),(97,177,37,15.29),(97,179,154,6.46),(97,219,69,2.37),(97,235,85,21.97),(97,239,99,8.54),(97,245,144,16.01),(97,252,129,15.68),(97,259,20,20.03),(97,268,58,7.91),(97,286,36,10.62),(97,303,37,11.83),(98,4,41,4.08),(98,31,50,3.64),(98,80,58,15.80),(98,99,198,8.23),(98,122,180,21.67),(98,134,123,19.11),(98,164,85,9.74),(98,199,136,9.98),(98,279,24,8.62),(98,283,183,5.44),(98,285,33,2.45),(98,306,198,9.24),(99,29,141,4.56),(99,32,138,11.65),(99,51,151,7.73),(99,75,192,8.09),(99,79,178,2.98),(99,98,11,5.36),(99,138,110,7.12),(99,148,130,19.53),(99,166,112,14.66),(99,172,46,3.61),(99,180,166,12.72),(99,190,118,20.99),(99,194,79,6.49),(99,200,179,1.98),(99,206,146,20.56),(99,207,26,5.92),(99,215,86,24.75),(99,229,132,6.62),(99,238,176,6.89),(99,255,114,24.94),(99,260,136,9.18),(99,298,55,15.72),(100,7,6,1.03),(100,9,13,15.54),(100,26,57,13.54),(100,27,47,18.75),(100,38,117,8.30),(100,49,183,4.33),(100,54,192,1.48),(100,57,178,4.45),(100,61,50,11.34),(100,64,118,18.42),(100,67,88,3.52),(100,69,27,4.83),(100,71,83,24.15),(100,74,196,15.87),(100,85,133,11.01),(100,89,6,7.71),(100,107,192,24.92),(100,117,47,8.94),(100,118,104,19.81),(100,133,142,18.67),(100,153,89,20.11),(100,179,7,5.30),(100,188,107,15.57),(100,197,26,13.78),(100,208,96,4.68),(100,214,116,6.45),(100,217,8,9.31),(100,224,25,14.35),(100,229,35,7.43),(100,238,105,1.28),(100,251,125,22.55),(100,285,138,16.45),(100,297,129,22.64),(100,301,119,10.78);
/*!40000 ALTER TABLE `store_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 22:23:37
