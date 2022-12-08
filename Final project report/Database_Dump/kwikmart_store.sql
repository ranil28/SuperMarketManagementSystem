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
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `street_name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip_code` int NOT NULL,
  `store_area` int NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'Kiehn Well','Romabury','WestVirginia',78377,8000,'40nfv@kwikmart.com'),(2,'Valerie Square','Cristshire','Nevada',70050,14452,'22rgr@kwikmart.com'),(3,'Cesar Forges','Homenickshire','Ohio',33073,12469,'71jjv@kwikmart.com'),(4,'Towne Courts','West Ruby','Arizona',70850,5252,'05jvr@kwikmart.com'),(5,'Andres Glen','Wuckertstad','Missouri',58237,4357,'52mey@kwikmart.com'),(6,'McCullough Cliff','Deshaunton','Washington',86095,5157,'25zej@kwikmart.com'),(7,'Stella Mills','Juniusland','Vermont',96484,3732,'62ojs@kwikmart.com'),(8,'Lempi Lodge','West Lavina','Alabama',64924,2627,'06nhf@kwikmart.com'),(9,'Davin Village','New Nova','Arkansas',16907,18283,'71zrl@kwikmart.com'),(10,'Erdman Road','East Lorainefort','Nevada',68136,8589,'68fdn@kwikmart.com'),(11,'Howell Harbors','Kuvalishaven','Oregon',65818,2893,'63mde@kwikmart.com'),(12,'Walton Gateway','Julianaburgh','Florida',82896,3251,'46vyh@kwikmart.com'),(13,'Quitzon Greens','Bertrandmouth','Maryland',88352,5491,'68igu@kwikmart.com'),(14,'Branson Extension','Scotburgh','NorthDakota',24579,19903,'80agk@kwikmart.com'),(15,'Alexie Bypass','Ferryberg','Iowa',34236,9378,'08kfr@kwikmart.com'),(16,'Henderson Vista','East Tracefort','Nevada',78475,3682,'12lwm@kwikmart.com'),(17,'Shields Cliff','West Velmamouth','Kentucky',71993,9127,'79rjj@kwikmart.com'),(18,'Oleta Estates','South Pascale','Connecticut',83694,12246,'40gbz@kwikmart.com'),(19,'Dante Islands','Marquardtburgh','Pennsylvania',37985,19938,'10jna@kwikmart.com'),(20,'Nikko Station','Kemmerfort','Louisiana',35631,7908,'93agf@kwikmart.com'),(21,'D\'Amore Pine','Stammhaven','Arkansas',34423,15159,'15maw@kwikmart.com'),(22,'Isaias Neck','East Madisonburgh','Vermont',64095,5108,'82lby@kwikmart.com'),(23,'Collier Underpass','Hodkiewiczbury','Vermont',92423,6547,'03icu@kwikmart.com'),(24,'Hope Crescent','East Aron','Ohio',53627,14273,'72bzm@kwikmart.com'),(25,'Arvilla Burgs','South Ashley','Idaho',34393,18017,'95guh@kwikmart.com'),(26,'Elsie Parks','Rohantown','NewMexico',13560,11883,'61ahi@kwikmart.com'),(27,'Weimann Branch','East Cristinaburgh','NewHampshire',30366,11177,'21zqc@kwikmart.com'),(28,'Trudie Extension','Tanyaborough','Wisconsin',65333,16297,'34eye@kwikmart.com'),(29,'Metz Trail','Reubenville','Missouri',66113,3988,'14tsx@kwikmart.com'),(30,'Pacocha Street','Hahnfurt','Indiana',23014,12116,'38inh@kwikmart.com'),(31,'Tremblay Valley','West Dellview','Pennsylvania',33250,12069,'90dtb@kwikmart.com'),(32,'Dolores Keys','Georgemouth','Delaware',76366,4438,'27zsr@kwikmart.com'),(33,'Marco Place','North Marianemouth','Massachusetts',15781,15942,'81czr@kwikmart.com'),(34,'Demarco Mount','Aufderharborough','Oregon',26388,16876,'14ltm@kwikmart.com'),(35,'Sigurd Prairie','New Arne','Oregon',29890,18892,'68ghd@kwikmart.com'),(36,'Zieme Keys','Lake Maximillian','Mississippi',66889,16613,'36cdl@kwikmart.com'),(37,'Jarvis Walk','Port Myriamland','Colorado',17858,11280,'65fhx@kwikmart.com'),(38,'Towne Pike','Dashawnbury','Tennessee',35713,18023,'33wzj@kwikmart.com'),(39,'Carlos Way','Cathyberg','NorthDakota',32321,13682,'56qqk@kwikmart.com'),(40,'Wisozk Center','Tatumborough','NewJersey',66590,10125,'01yvl@kwikmart.com'),(41,'Hodkiewicz Brook','Bashirianfurt','Maine',46425,9295,'69zei@kwikmart.com'),(42,'Zulauf Locks','Lake Dockbury','Maine',75764,11437,'56gtb@kwikmart.com'),(43,'Franecki Loaf','Port Elinoreside','Georgia',38446,10704,'15fsn@kwikmart.com'),(44,'Chance Estates','Adahville','SouthDakota',11953,3395,'53zto@kwikmart.com'),(45,'Alvah Course','East Eugenia','Utah',20376,16594,'75gde@kwikmart.com'),(46,'Sanford Creek','Port Amarishire','Arizona',63766,9160,'93put@kwikmart.com'),(47,'Elisa Cape','North Alfonzoview','RhodeIsland',60816,4133,'45xds@kwikmart.com'),(48,'Reichel Run','East Horacioview','NorthDakota',93608,4210,'07brx@kwikmart.com'),(49,'Cremin Branch','South Osbaldoport','NewMexico',77816,10612,'34gdc@kwikmart.com'),(50,'Missouri Lake','Onamouth','Delaware',88818,8044,'36qvx@kwikmart.com'),(51,'Grady Crest','East Reinholdburgh','Louisiana',21013,13499,'06urt@kwikmart.com'),(52,'Mabelle Branch','Sawaynton','Iowa',54392,10935,'15mqs@kwikmart.com'),(53,'Hilpert Estate','South Blaiseton','Missouri',38096,3629,'25ops@kwikmart.com'),(54,'Lemke Trafficway','O\'Connellborough','Florida',36473,15491,'44ckj@kwikmart.com'),(55,'Grant Manor','Mannburgh','Virginia',27664,19781,'66uzw@kwikmart.com'),(56,'Adams Trail','Schummtown','NewHampshire',92277,5693,'91rkd@kwikmart.com'),(57,'Schmeler Mountain','Charleneview','NewHampshire',53702,17085,'00pbs@kwikmart.com'),(58,'Ezra Vista','Nedmouth','Maryland',62093,16804,'02cfn@kwikmart.com'),(59,'Ruby Fort','Buckberg','NewJersey',44258,6523,'69uoc@kwikmart.com'),(60,'Neva Trail','Lake Elna','Connecticut',48914,3787,'22hqq@kwikmart.com'),(61,'Cleta Coves','East Citlalli','Montana',40002,18152,'16one@kwikmart.com'),(62,'Schoen Crest','South Levistad','Oklahoma',56204,18987,'35fze@kwikmart.com'),(63,'Raquel Lakes','Lake Alethafurt','Delaware',80963,13703,'36wlw@kwikmart.com'),(64,'Cynthia Common','North Estebanport','Indiana',63401,5840,'03ihu@kwikmart.com'),(65,'Sipes Valleys','East Queen','Wisconsin',25318,6949,'38rgi@kwikmart.com'),(66,'Theresia Crossroad','Muellermouth','Arizona',87619,11388,'81qhf@kwikmart.com'),(67,'King Manors','Davisland','Nevada',32136,19543,'48pha@kwikmart.com'),(68,'Jonathon Parkway','Reneefurt','Arkansas',21881,7277,'12nvq@kwikmart.com'),(69,'Marielle Spur','North Dawson','Maryland',15766,8030,'66gmg@kwikmart.com'),(70,'McKenzie Harbor','New Maximomouth','Indiana',16960,8815,'12ltp@kwikmart.com'),(71,'Melissa Mall','Faheyland','Delaware',61259,18512,'13zzc@kwikmart.com'),(72,'Boehm Court','Kunzeberg','NewJersey',59803,16951,'00ukq@kwikmart.com'),(73,'Schmeler Overpass','Karliton','Virginia',78720,14354,'50qxs@kwikmart.com'),(74,'Lebsack Drive','New Jaqueline','Michigan',40826,11805,'46yyd@kwikmart.com'),(75,'Hessel Ports','West Gonzaloview','Pennsylvania',94965,11419,'32zxt@kwikmart.com'),(76,'Sauer Motorway','East Korbinmouth','Utah',56259,7139,'46iba@kwikmart.com'),(77,'Jaycee Glens','Lake Jaydeland','Delaware',17644,12105,'57yxz@kwikmart.com'),(78,'Douglas Underpass','Oberbrunnerstad','NewJersey',44660,12950,'86orb@kwikmart.com'),(79,'Block Heights','Buddymouth','Wisconsin',67985,19032,'31svp@kwikmart.com'),(80,'Walter Mission','Lake Quinton','Utah',93309,5703,'84oiu@kwikmart.com'),(81,'Abbott Point','Anjaliland','Ohio',44769,3016,'04fsf@kwikmart.com'),(82,'Jones Port','North Rosalia','Montana',90276,16501,'64nny@kwikmart.com'),(83,'Emmie Meadow','South Arvidside','District of Columbia',95242,3930,'29knm@kwikmart.com'),(84,'Kiehn Mill','Gleichnerport','Louisiana',27633,8430,'07wjr@kwikmart.com'),(85,'Krystel Springs','Port Dandrefort','Kansas',62163,12708,'84tpu@kwikmart.com'),(86,'Katelyn Squares','New Clovis','California',71166,16201,'79abv@kwikmart.com'),(87,'Bradtke Ranch','Schmitthaven','RhodeIsland',32435,18957,'94hrd@kwikmart.com'),(88,'Jesus Springs','Port Christopher','Kansas',25511,5127,'44ics@kwikmart.com'),(89,'D\'Amore Road','North Maximillian','Nevada',64121,7434,'96abo@kwikmart.com'),(90,'Faye Circles','Hudsonfort','Missouri',26737,16212,'15csk@kwikmart.com'),(91,'Jeromy Groves','Timmyburgh','Indiana',41989,14724,'99uwy@kwikmart.com'),(92,'Heber Run','South Eugeneville','Alaska',66426,6635,'79uop@kwikmart.com'),(93,'Marquis Oval','Gottliebton','California',77585,17704,'69ism@kwikmart.com'),(94,'Trantow Passage','West Mateoshire','Montana',72644,4652,'73cjj@kwikmart.com'),(95,'Vicenta Springs','Prohaskahaven','Massachusetts',77079,16395,'88ssu@kwikmart.com'),(96,'Jermey Island','Port Destineyfurt','NewMexico',60443,9109,'03mde@kwikmart.com'),(97,'Marisa Island','Hipolitomouth','Oklahoma',30473,19201,'19jxr@kwikmart.com'),(98,'Kris Lake','Thaliamouth','Georgia',48804,9743,'25abp@kwikmart.com'),(99,'Holden Lake','New Websterborough','California',69933,4695,'54kqn@kwikmart.com'),(100,'Reilly Expressway','Hegmannfurt','Oklahoma',69686,7306,'98foy@kwikmart.com');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
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
