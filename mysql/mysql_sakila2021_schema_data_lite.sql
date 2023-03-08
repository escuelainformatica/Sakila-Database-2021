-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: sakila
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`actor_id`),
  KEY `ix_actor` (`first_name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'PENELOPE','GUINESS','2006-02-15 04:34:33.000'),(2,'NICK','WAHLBERG','2006-02-15 04:34:33.000'),(10,'CHRISTIAN','GABLE','2006-02-15 04:34:33.000'),(19,'BOB','FAWCETT','2006-02-15 04:34:33.000'),(20,'LUCILLE','TRACY','2006-02-15 04:34:33.000'),(21,'KIRSTEN','PALTROW','2006-02-15 04:34:33.000'),(22,'ELVIS','MARX','2006-02-15 04:34:33.000'),(23,'SANDRA','KILMER','2006-02-15 04:34:33.000'),(24,'CAMERON','STREEP','2006-02-15 04:34:33.000'),(26,'RIP','CRAWFORD','2006-02-15 04:34:33.000'),(29,'ALEC','WAYNE','2006-02-15 04:34:33.000'),(30,'SANDRA','PECK','2006-02-15 04:34:33.000'),(35,'JUDY','DEAN','2006-02-15 04:34:33.000'),(37,'VAL','BOLGER','2006-02-15 04:34:33.000'),(40,'JOHNNY','CAGE','2006-02-15 04:34:33.000'),(41,'JODIE','DEGENERES','2006-02-15 04:34:33.000'),(51,'GARY','PHOENIX','2006-02-15 04:34:33.000'),(53,'MENA','TEMPLE','2006-02-15 04:34:33.000'),(55,'FAY','KILMER','2006-02-15 04:34:33.000'),(59,'DUSTIN','TAUTOU','2006-02-15 04:34:33.000'),(62,'JAYNE','NEESON','2006-02-15 04:34:33.000'),(64,'RAY','JOHANSSON','2006-02-15 04:34:33.000'),(68,'RIP','WINSLET','2006-02-15 04:34:33.000'),(81,'SCARLETT','DAMON','2006-02-15 04:34:33.000'),(85,'MINNIE','ZELLWEGER','2006-02-15 04:34:33.000'),(88,'KENNETH','PESCI','2006-02-15 04:34:33.000'),(90,'SEAN','GUINESS','2006-02-15 04:34:33.000'),(96,'GENE','WILLIS','2006-02-15 04:34:33.000'),(99,'JIM','MOSTEL','2006-02-15 04:34:33.000'),(103,'MATTHEW','LEIGH','2006-02-15 04:34:33.000'),(108,'WARREN','NOLTE','2006-02-15 04:34:33.000'),(110,'SUSAN','DAVIS','2006-02-15 04:34:33.000'),(117,'RENEE','TRACY','2006-02-15 04:34:33.000'),(123,'JULIANNE','DENCH','2006-02-15 04:34:33.000'),(130,'GRETA','KEITEL','2006-02-15 04:34:33.000'),(133,'RICHARD','PENN','2006-02-15 04:34:33.000'),(137,'MORGAN','WILLIAMS','2006-02-15 04:34:33.000'),(138,'LUCILLE','DEE','2006-02-15 04:34:33.000'),(142,'JADA','RYDER','2006-02-15 04:34:33.000'),(147,'FAY','WINSLET','2006-02-15 04:34:33.000'),(157,'GRETA','MALDEN','2006-02-15 04:34:33.000'),(160,'CHRIS','DEPP','2006-02-15 04:34:33.000'),(162,'OPRAH','KILMER','2006-02-15 04:34:33.000'),(169,'KENNETH','HOFFMAN','2006-02-15 04:34:33.000'),(170,'MENA','HOPPER','2006-02-15 04:34:33.000'),(175,'WILLIAM','HACKMAN','2006-02-15 04:34:33.000'),(181,'MATTHEW','CARREY','2006-02-15 04:34:33.000'),(185,'MICHAEL','BOLGER','2006-02-15 04:34:33.000'),(188,'ROCK','DUKAKIS','2006-02-15 04:34:33.000'),(194,'MERYL','ALLEN','2006-02-15 04:34:33.000'),(197,'REESE','WEST','2006-02-15 04:34:33.000'),(198,'MARY','KEITEL','2006-02-15 04:34:33.000'),(200,'THORA','TEMPLE','2006-02-15 04:34:33.000');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(50) NOT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `district` varchar(20) NOT NULL,
  `city_id` int NOT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`address_id`),
  KEY `idx_fk_city_id` (`city_id`),
  CONSTRAINT `address_fk1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'47 MySakila Drive',NULL,' ',300,NULL,' ','2006-02-15 04:45:30.000'),(2,'28 MySQL Boulevard',NULL,' ',576,NULL,' ','2006-02-15 04:45:30.000'),(3,'23 Workhaven Lane',NULL,' ',300,NULL,' ','2006-02-15 04:45:30.000'),(4,'1411 Lillydale Drive',NULL,' ',576,NULL,' ','2006-02-15 04:45:30.000'),(5,'1913 Hanoi Way',NULL,' ',463,'35200',' ','2006-02-15 04:45:30.000'),(6,'1121 Loja Avenue',NULL,' ',449,'17886',' ','2006-02-15 04:45:30.000'),(7,'692 Joliet Street',NULL,' ',38,'83579',' ','2006-02-15 04:45:30.000'),(10,'1795 Santiago de Compostela Way',NULL,' ',295,'18743',' ','2006-02-15 04:45:30.000'),(11,'900 Santiago de Compostela Parkway',NULL,' ',280,'93896',' ','2006-02-15 04:45:30.000'),(45,'42 Brindisi Place',NULL,' ',586,'16744',' ','2006-02-15 04:45:30.000'),(56,'939 Probolinggo Loop',NULL,' ',1,'4166',' ','2006-02-15 04:45:30.000'),(68,'1966 Amroha Avenue',NULL,' ',139,'70385',' ','2006-02-15 04:45:30.000'),(72,'57 Arlington Manor',NULL,' ',475,'48960',' ','2006-02-15 04:45:30.000'),(87,'929 Tallahassee Loop',NULL,' ',497,'74671',' ','2006-02-15 04:45:30.000'),(94,'1952 Chatsworth Drive',NULL,' ',332,'25958',' ','2006-02-15 04:45:30.000'),(111,'1532 Dzerzinsk Way',NULL,' ',334,'9599',' ','2006-02-15 04:45:30.000'),(116,'793 Cam Ranh Avenue',NULL,' ',292,'87057',' ','2006-02-15 04:45:30.000'),(132,'1050 Garden Grove Avenue',NULL,' ',236,'4999',' ','2006-02-15 04:45:30.000'),(153,'782 Mosul Street',NULL,' ',94,'25545',' ','2006-02-15 04:45:30.000'),(193,'891 Novi Sad Manor',NULL,' ',383,'5379',' ','2006-02-15 04:45:30.000'),(226,'810 Palghat (Palakkad) Boulevard',NULL,' ',235,'73431',' ','2006-02-15 04:45:30.000'),(230,'201 Effon-Alaiye Way',NULL,' ',37,'64344',' ','2006-02-15 04:45:30.000'),(232,'754 Valencia Place',NULL,' ',406,'87911',' ','2006-02-15 04:45:30.000'),(256,'1497 Yuzhou Drive',NULL,' ',312,'3433',' ','2006-02-15 04:45:30.000'),(264,'1027 Banjul Place',NULL,' ',197,'50390',' ','2006-02-15 04:45:30.000'),(265,'1158 Mandi Bahauddin Parkway',NULL,' ',136,'98484',' ','2006-02-15 04:45:30.000'),(266,'862 Xintai Lane',NULL,' ',548,'30065',' ','2006-02-15 04:45:30.000'),(279,'1884 Shikarpur Avenue',NULL,' ',263,'85548',' ','2006-02-15 04:45:30.000'),(289,'1279 Udine Parkway',NULL,' ',69,'75860',' ','2006-02-15 04:45:30.000'),(291,'1155 Liaocheng Place',NULL,' ',152,'22650',' ','2006-02-15 04:45:30.000'),(292,'1993 Tabuk Lane',NULL,' ',522,'64221',' ','2006-02-15 04:45:30.000'),(297,'1192 Tongliao Street',NULL,' ',470,'19065',' ','2006-02-15 04:45:30.000'),(308,'687 Alessandria Parkway',NULL,' ',455,'57587',' ','2006-02-15 04:45:30.000'),(309,'827 Yuncheng Drive',NULL,' ',99,'79047',' ','2006-02-15 04:45:30.000'),(316,'746 Joliet Lane',NULL,' ',286,'94878',' ','2006-02-15 04:45:30.000'),(322,'1359 Zhoushan Parkway',NULL,' ',545,'29763',' ','2006-02-15 04:45:30.000'),(330,'981 Kumbakonam Place',NULL,' ',89,'87611',' ','2006-02-15 04:45:30.000'),(342,'124 al-Manama Way',NULL,' ',382,'52368',' ','2006-02-15 04:45:30.000'),(349,'1516 Escobar Drive',NULL,' ',370,'46069',' ','2006-02-15 04:45:30.000'),(381,'1618 Olomouc Manor',NULL,' ',285,'26385',' ','2006-02-15 04:45:30.000'),(410,'88 Nagaon Manor',NULL,' ',524,'86868',' ','2006-02-15 04:45:30.000'),(463,'935 Aden Boulevard',NULL,' ',532,'64709',' ','2006-02-15 04:45:30.000'),(472,'1447 Chatsworth Place',NULL,' ',129,'41545',' ','2006-02-15 04:45:30.000'),(473,'1257 Guadalajara Street',NULL,' ',78,'33599',' ','2006-02-15 04:45:30.000'),(479,'1854 Okara Boulevard',NULL,' ',158,'42123',' ','2006-02-15 04:45:30.000'),(484,'98 Pyongyang Boulevard',NULL,' ',11,'88749',' ','2006-02-15 04:45:30.000'),(485,'984 Novoterkassk Loop',NULL,' ',180,'28165',' ','2006-02-15 04:45:30.000'),(501,'1060 Tandil Lane',NULL,' ',432,'72349',' ','2006-02-15 04:45:30.000'),(514,'1747 Rustenburg Place',NULL,' ',110,'51369',' ','2006-02-15 04:45:30.000'),(528,'1176 Southend-on-Sea Manor',NULL,' ',458,'81651',' ','2006-02-15 04:45:30.000'),(529,'600 Purnea (Purnia) Avenue',NULL,' ',571,'18043',' ','2006-02-15 04:45:30.000'),(555,'1764 Jalib al-Shuyukh Parkway',NULL,' ',459,'77642',' ','2006-02-15 04:45:30.000'),(556,'346 Cam Ranh Avenue',NULL,' ',599,'39976',' ','2006-02-15 04:45:30.000'),(559,'1917 Kumbakonam Parkway',NULL,' ',368,'11892',' ','2006-02-15 04:45:30.000'),(566,'1229 Varanasi (Benares) Manor',NULL,' ',43,'40195',' ','2006-02-15 04:45:30.000'),(601,'844 Bucuresti Place',NULL,' ',242,'36603',' ','2006-02-15 04:45:30.000');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Action','2006-02-15 04:46:27.000'),(2,'Animation','2006-02-15 04:46:27.000'),(3,'Children','2006-02-15 04:46:27.000'),(4,'Classics','2006-02-15 04:46:27.000'),(5,'Comedy','2006-02-15 04:46:27.000'),(6,'Documentary','2006-02-15 04:46:27.000'),(7,'Drama','2006-02-15 04:46:27.000'),(8,'Family','2006-02-15 04:46:27.000'),(9,'Foreign','2006-02-15 04:46:27.000'),(10,'Games','2006-02-15 04:46:27.000'),(11,'Horror','2006-02-15 04:46:27.000'),(12,'Music','2006-02-15 04:46:27.000'),(13,'New','2006-02-15 04:46:27.000'),(14,'Sci-Fi','2006-02-15 04:46:27.000'),(15,'Sports','2006-02-15 04:46:27.000'),(16,'Travel','2006-02-15 04:46:27.000');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `country_id` smallint NOT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`city_id`),
  KEY `idx_fk_country_id` (`country_id`),
  CONSTRAINT `city_fk1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'A Corua (La Corua)',87,'2006-02-15 04:45:25.000'),(11,'Akron',103,'2006-02-15 04:45:25.000'),(37,'Asuncin',73,'2006-02-15 04:45:25.000'),(38,'Athenai',39,'2006-02-15 04:45:25.000'),(43,'Avellaneda',6,'2006-02-15 04:45:25.000'),(69,'Benin City',69,'2006-02-15 04:45:25.000'),(78,'Bijapur',44,'2006-02-15 04:45:25.000'),(89,'Braslia',15,'2006-02-15 04:45:25.000'),(94,'Brockton',103,'2006-02-15 04:45:25.000'),(99,'Callao',74,'2006-02-15 04:45:25.000'),(110,'Chapra',44,'2006-02-15 04:45:25.000'),(129,'Cuauhtmoc',60,'2006-02-15 04:45:25.000'),(136,'Datong',23,'2006-02-15 04:45:25.000'),(139,'Daxian',23,'2006-02-15 04:45:25.000'),(152,'Effon-Alaiye',69,'2006-02-15 04:45:25.000'),(158,'Emmen',67,'2006-02-15 04:45:25.000'),(180,'Gaziantep',97,'2006-02-15 04:45:25.000'),(197,'Halisahar',44,'2006-02-15 04:45:25.000'),(235,'Jaroslavl',80,'2006-02-15 04:45:25.000'),(236,'Jastrzebie-Zdrj',76,'2006-02-15 04:45:25.000'),(242,'Jinzhou',23,'2006-02-15 04:45:25.000'),(263,'Karnal',44,'2006-02-15 04:45:25.000'),(280,'Kragujevac',108,'2006-02-15 04:45:25.000'),(285,'Kurgan',80,'2006-02-15 04:45:25.000'),(286,'Kursk',80,'2006-02-15 04:45:25.000'),(292,'Lancaster',103,'2006-02-15 04:45:25.000'),(295,'Laredo',103,'2006-02-15 04:45:25.000'),(300,'Lethbridge',20,'2006-02-15 04:45:25.000'),(312,'London',102,'2006-02-15 04:45:25.000'),(332,'Meixian',23,'2006-02-15 04:45:25.000'),(334,'Merlo',6,'2006-02-15 04:45:25.000'),(368,'Novi Sad',108,'2006-02-15 04:45:25.000'),(370,'Nukualofa',95,'2006-02-15 04:45:25.000'),(382,'Onomichi',50,'2006-02-15 04:45:25.000'),(383,'Oshawa',20,'2006-02-15 04:45:25.000'),(406,'Phnom Penh',18,'2006-02-15 04:45:25.000'),(432,'Rizhao',23,'2006-02-15 04:45:25.000'),(449,'San Bernardino',103,'2006-02-15 04:45:25.000'),(455,'Sanaa',107,'2006-02-15 04:45:25.000'),(458,'Santa Rosa',75,'2006-02-15 04:45:25.000'),(459,'Santiago de Compostela',87,'2006-02-15 04:45:25.000'),(463,'Sasebo',50,'2006-02-15 04:45:25.000'),(470,'Sharja',101,'2006-02-15 04:45:25.000'),(475,'Shivapuri',44,'2006-02-15 04:45:25.000'),(497,'Springs',85,'2006-02-15 04:45:25.000'),(522,'Tambaram',44,'2006-02-15 04:45:25.000'),(524,'Tandil',6,'2006-02-15 04:45:25.000'),(532,'Tegal',45,'2006-02-15 04:45:25.000'),(545,'Trshavn',32,'2006-02-15 04:45:25.000'),(548,'Tuguegarao',75,'2006-02-15 04:45:25.000'),(571,'Vinh',105,'2006-02-15 04:45:25.000'),(576,'Woodridge',8,'2006-02-15 04:45:25.000'),(586,'Yerevan',7,'2006-02-15 04:45:25.000'),(599,'Zhoushan',23,'2006-02-15 04:45:25.000');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` smallint NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  `last_update` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (6,'Argentina','2006-02-15 04:44:00.000'),(7,'Armenia','2006-02-15 04:44:00.000'),(8,'Australia','2006-02-15 04:44:00.000'),(15,'Brazil','2006-02-15 04:44:00.000'),(18,'Cambodia','2006-02-15 04:44:00.000'),(20,'Canada','2006-02-15 04:44:00.000'),(23,'China','2006-02-15 04:44:00.000'),(32,'Faroe Islands','2006-02-15 04:44:00.000'),(39,'Greece','2006-02-15 04:44:00.000'),(44,'India','2006-02-15 04:44:00.000'),(45,'Indonesia','2006-02-15 04:44:00.000'),(50,'Japan','2006-02-15 04:44:00.000'),(60,'Mexico','2006-02-15 04:44:00.000'),(67,'Netherlands','2006-02-15 04:44:00.000'),(69,'Nigeria','2006-02-15 04:44:00.000'),(73,'Paraguay','2006-02-15 04:44:00.000'),(74,'Peru','2006-02-15 04:44:00.000'),(75,'Philippines','2006-02-15 04:44:00.000'),(76,'Poland','2006-02-15 04:44:00.000'),(80,'Russian Federation','2006-02-15 04:44:00.000'),(85,'South Africa','2006-02-15 04:44:00.000'),(87,'Spain','2006-02-15 04:44:00.000'),(95,'Tonga','2006-02-15 04:44:00.000'),(97,'Turkey','2006-02-15 04:44:00.000'),(101,'United Arab Emirates','2006-02-15 04:44:00.000'),(102,'United Kingdom','2006-02-15 04:44:00.000'),(103,'United States','2006-02-15 04:44:00.000'),(105,'Vietnam','2006-02-15 04:44:00.000'),(107,'Yemen','2006-02-15 04:44:00.000'),(108,'Yugoslavia','2006-02-15 04:44:00.000');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address_id` int NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `create_date` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`customer_id`),
  KEY `idx_fk_address_id` (`address_id`),
  KEY `idx_fk_store_id` (`store_id`),
  KEY `idx_last_name` (`last_name`),
  CONSTRAINT `customer_fk1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`),
  CONSTRAINT `customer_fk2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,'MARY','SMITH','MARY.SMITH@sakilacustomer.org',5,'1','2006-02-14 22:04:36.000','2006-02-15 04:57:20.000'),(2,1,'PATRICIA','JOHNSON','PATRICIA.JOHNSON@sakilacustomer.org',6,'1','2006-02-14 22:04:36.000','2006-02-15 04:57:20.000'),(6,2,'JENNIFER','DAVIS','JENNIFER.DAVIS@sakilacustomer.org',10,'1','2006-02-14 22:04:36.000','2006-02-15 04:57:20.000'),(7,1,'MARIA','MILLER','MARIA.MILLER@sakilacustomer.org',11,'1','2006-02-14 22:04:36.000','2006-02-15 04:57:20.000');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `film_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `release_year` varchar(4) DEFAULT NULL,
  `language_id` tinyint unsigned NOT NULL,
  `original_language_id` tinyint unsigned DEFAULT NULL,
  `rental_duration` tinyint unsigned NOT NULL DEFAULT '3',
  `rental_rate` decimal(4,2) NOT NULL DEFAULT '4.99',
  `length` smallint DEFAULT NULL,
  `replacement_cost` decimal(5,2) NOT NULL DEFAULT '19.99',
  `rating` varchar(10) DEFAULT 'G',
  `special_features` varchar(255) DEFAULT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`film_id`),
  KEY `idx_fk_language_id` (`language_id`),
  KEY `idx_fk_original_language_id` (`original_language_id`),
  CONSTRAINT `film_fk1` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  CONSTRAINT `film_fk2` FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'ACADEMY DINOSAUR','A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies','2006',1,NULL,6,0.99,86,20.99,'PG','Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42.000'),(2,'ACE GOLDFINGER','A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China','2006',1,NULL,3,4.99,48,12.99,'G','Trailers,Deleted Scenes','2006-02-15 05:03:42.000'),(3,'ADAPTATION HOLES','A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory','2006',1,NULL,7,2.99,50,18.99,'NC-17','Trailers,Deleted Scenes','2006-02-15 05:03:42.000'),(4,'AFFAIR PREJUDICE','A Fanciful Documentary of a Frisbee And a Lumberjack who must Chase a Monkey in A Shark Tank','2006',1,NULL,5,2.99,117,26.99,'G','Commentaries,Behind the Scenes','2006-02-15 05:03:42.000'),(5,'AFRICAN EGG','A Fast-Paced Documentary of a Pastry Chef And a Dentist who must Pursue a Forensic Psychologist in The Gulf of Mexico','2006',1,NULL,6,2.99,130,22.99,'G','Deleted Scenes','2006-02-15 05:03:42.000'),(6,'AGENT TRUMAN','A Intrepid Panorama of a Robot And a Boy who must Escape a Sumo Wrestler in Ancient China','2006',1,NULL,3,2.99,169,17.99,'PG','Deleted Scenes','2006-02-15 05:03:42.000'),(7,'AIRPLANE SIERRA','A Touching Saga of a Hunter And a Butler who must Discover a Butler in A Jet Boat','2006',1,NULL,6,4.99,62,28.99,'PG-13','Trailers,Deleted Scenes','2006-02-15 05:03:42.000'),(8,'AIRPORT POLLOCK','A Epic Tale of a Moose And a Girl who must Confront a Monkey in Ancient India','2006',1,NULL,6,4.99,54,15.99,'R','Trailers','2006-02-15 05:03:42.000'),(9,'ALABAMA DEVIL','A Thoughtful Panorama of a Database Administrator And a Mad Scientist who must Outgun a Mad Scientist in A Jet Boat','2006',1,NULL,3,2.99,114,21.99,'PG-13','Trailers,Deleted Scenes','2006-02-15 05:03:42.000'),(10,'ALADDIN CALENDAR','A Action-Packed Tale of a Man And a Lumberjack who must Reach a Feminist in Ancient China','2006',1,NULL,6,4.99,63,24.99,'NC-17','Trailers,Deleted Scenes','2006-02-15 05:03:42.000');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_actor` (
  `actor_id` int NOT NULL,
  `film_id` int NOT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`actor_id`,`film_id`),
  KEY `idx_fk_film_actor_actor` (`actor_id`),
  KEY `idx_fk_film_actor_film` (`film_id`),
  CONSTRAINT `film_actor_fk1` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`),
  CONSTRAINT `film_actor_fk2` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_actor`
--

LOCK TABLES `film_actor` WRITE;
/*!40000 ALTER TABLE `film_actor` DISABLE KEYS */;
INSERT INTO `film_actor` VALUES (1,1,'2006-02-15 05:05:03.000'),(2,3,'2006-02-15 05:05:03.000'),(10,1,'2006-02-15 05:05:03.000'),(10,9,'2006-02-15 05:05:03.000'),(19,2,'2006-02-15 05:05:03.000'),(19,3,'2006-02-15 05:05:03.000'),(20,1,'2006-02-15 05:05:03.000'),(21,6,'2006-02-15 05:05:03.000'),(22,9,'2006-02-15 05:05:03.000'),(23,6,'2006-02-15 05:05:03.000'),(24,3,'2006-02-15 05:05:03.000'),(26,9,'2006-02-15 05:05:03.000'),(29,10,'2006-02-15 05:05:03.000'),(30,1,'2006-02-15 05:05:03.000'),(35,10,'2006-02-15 05:05:03.000'),(37,10,'2006-02-15 05:05:03.000'),(40,1,'2006-02-15 05:05:03.000'),(41,4,'2006-02-15 05:05:03.000'),(51,5,'2006-02-15 05:05:03.000'),(53,1,'2006-02-15 05:05:03.000'),(53,9,'2006-02-15 05:05:03.000'),(55,8,'2006-02-15 05:05:03.000'),(59,5,'2006-02-15 05:05:03.000'),(62,6,'2006-02-15 05:05:03.000'),(64,3,'2006-02-15 05:05:03.000'),(64,10,'2006-02-15 05:05:03.000'),(68,9,'2006-02-15 05:05:03.000'),(81,4,'2006-02-15 05:05:03.000'),(85,2,'2006-02-15 05:05:03.000'),(88,4,'2006-02-15 05:05:03.000'),(90,2,'2006-02-15 05:05:03.000'),(96,8,'2006-02-15 05:05:03.000'),(99,7,'2006-02-15 05:05:03.000'),(103,5,'2006-02-15 05:05:03.000'),(108,1,'2006-02-15 05:05:03.000'),(108,6,'2006-02-15 05:05:03.000'),(108,9,'2006-02-15 05:05:03.000'),(110,8,'2006-02-15 05:05:03.000'),(117,10,'2006-02-15 05:05:03.000'),(123,3,'2006-02-15 05:05:03.000'),(130,9,'2006-02-15 05:05:03.000'),(133,7,'2006-02-15 05:05:03.000'),(137,6,'2006-02-15 05:05:03.000'),(138,8,'2006-02-15 05:05:03.000'),(142,10,'2006-02-15 05:05:03.000'),(147,4,'2006-02-15 05:05:03.000'),(157,10,'2006-02-15 05:05:03.000'),(160,2,'2006-02-15 05:05:03.000'),(162,1,'2006-02-15 05:05:03.000'),(162,4,'2006-02-15 05:05:03.000'),(162,7,'2006-02-15 05:05:03.000'),(169,6,'2006-02-15 05:05:03.000'),(170,7,'2006-02-15 05:05:03.000'),(175,9,'2006-02-15 05:05:03.000'),(181,5,'2006-02-15 05:05:03.000'),(185,7,'2006-02-15 05:05:03.000'),(188,1,'2006-02-15 05:05:03.000'),(188,10,'2006-02-15 05:05:03.000'),(194,9,'2006-02-15 05:05:03.000'),(197,6,'2006-02-15 05:05:03.000'),(198,1,'2006-02-15 05:05:03.000'),(200,5,'2006-02-15 05:05:03.000');
/*!40000 ALTER TABLE `film_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_category`
--

DROP TABLE IF EXISTS `film_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_category` (
  `film_id` int NOT NULL,
  `category_id` tinyint unsigned NOT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`film_id`,`category_id`),
  KEY `idx_fk_film_category_category` (`category_id`),
  KEY `idx_fk_film_category_film` (`film_id`),
  CONSTRAINT `film_category_fk1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_category`
--

LOCK TABLES `film_category` WRITE;
/*!40000 ALTER TABLE `film_category` DISABLE KEYS */;
INSERT INTO `film_category` VALUES (1,6,'2006-02-15 05:07:09.000'),(2,11,'2006-02-15 05:07:09.000'),(3,6,'2006-02-15 05:07:09.000'),(4,11,'2006-02-15 05:07:09.000'),(5,8,'2006-02-15 05:07:09.000'),(6,9,'2006-02-15 05:07:09.000'),(7,5,'2006-02-15 05:07:09.000'),(8,11,'2006-02-15 05:07:09.000'),(9,11,'2006-02-15 05:07:09.000'),(10,15,'2006-02-15 05:07:09.000');
/*!40000 ALTER TABLE `film_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_text`
--

DROP TABLE IF EXISTS `film_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_text` (
  `film_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`film_id`),
  CONSTRAINT `film_text_fk1` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_text`
--

LOCK TABLES `film_text` WRITE;
/*!40000 ALTER TABLE `film_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `film_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `film_id` int NOT NULL,
  `store_id` int NOT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`inventory_id`),
  KEY `idx_fk_film_id` (`film_id`),
  KEY `idx_fk_film_id_store_id` (`store_id`,`film_id`),
  CONSTRAINT `inventory_fk1` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`),
  CONSTRAINT `inventory_fk2` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4582 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,1,'2006-02-15 05:09:17.000'),(2,1,1,'2006-02-15 05:09:17.000'),(3,1,1,'2006-02-15 05:09:17.000'),(4,1,1,'2006-02-15 05:09:17.000'),(5,1,2,'2006-02-15 05:09:17.000'),(6,1,2,'2006-02-15 05:09:17.000'),(7,1,2,'2006-02-15 05:09:17.000'),(8,1,2,'2006-02-15 05:09:17.000'),(9,2,2,'2006-02-15 05:09:17.000'),(10,2,2,'2006-02-15 05:09:17.000'),(11,2,2,'2006-02-15 05:09:17.000'),(12,3,2,'2006-02-15 05:09:17.000'),(13,3,2,'2006-02-15 05:09:17.000'),(14,3,2,'2006-02-15 05:09:17.000'),(15,3,2,'2006-02-15 05:09:17.000'),(16,4,1,'2006-02-15 05:09:17.000'),(17,4,1,'2006-02-15 05:09:17.000'),(18,4,1,'2006-02-15 05:09:17.000'),(19,4,1,'2006-02-15 05:09:17.000'),(20,4,2,'2006-02-15 05:09:17.000'),(21,4,2,'2006-02-15 05:09:17.000'),(22,4,2,'2006-02-15 05:09:17.000'),(23,5,2,'2006-02-15 05:09:17.000'),(24,5,2,'2006-02-15 05:09:17.000'),(25,5,2,'2006-02-15 05:09:17.000'),(26,6,1,'2006-02-15 05:09:17.000'),(27,6,1,'2006-02-15 05:09:17.000'),(28,6,1,'2006-02-15 05:09:17.000'),(29,6,2,'2006-02-15 05:09:17.000'),(30,6,2,'2006-02-15 05:09:17.000'),(31,6,2,'2006-02-15 05:09:17.000'),(32,7,1,'2006-02-15 05:09:17.000'),(33,7,1,'2006-02-15 05:09:17.000'),(34,7,2,'2006-02-15 05:09:17.000'),(35,7,2,'2006-02-15 05:09:17.000'),(36,7,2,'2006-02-15 05:09:17.000'),(37,8,2,'2006-02-15 05:09:17.000'),(38,8,2,'2006-02-15 05:09:17.000'),(39,8,2,'2006-02-15 05:09:17.000'),(40,8,2,'2006-02-15 05:09:17.000'),(41,9,1,'2006-02-15 05:09:17.000'),(42,9,1,'2006-02-15 05:09:17.000'),(43,9,1,'2006-02-15 05:09:17.000'),(44,9,2,'2006-02-15 05:09:17.000'),(45,9,2,'2006-02-15 05:09:17.000'),(46,10,1,'2006-02-15 05:09:17.000'),(47,10,1,'2006-02-15 05:09:17.000'),(48,10,1,'2006-02-15 05:09:17.000'),(49,10,1,'2006-02-15 05:09:17.000'),(50,10,2,'2006-02-15 05:09:17.000'),(51,10,2,'2006-02-15 05:09:17.000'),(52,10,2,'2006-02-15 05:09:17.000');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `language_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'English','2006-02-15 05:02:19.000'),(2,'Italian','2006-02-15 05:02:19.000'),(3,'Japanese','2006-02-15 05:02:19.000'),(4,'Mandarin','2006-02-15 05:02:19.000'),(5,'French','2006-02-15 05:02:19.000'),(6,'German','2006-02-15 05:02:19.000');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `rental_id` int DEFAULT NULL,
  `amount` decimal(5,2) NOT NULL,
  `payment_date` datetime(3) NOT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`payment_id`),
  KEY `idx_fk_customer_id` (`customer_id`),
  KEY `idx_fk_staff_id` (`staff_id`),
  KEY `payment_fk3_idx` (`rental_id`),
  CONSTRAINT `payment_fk1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `payment_fk2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`),
  CONSTRAINT `payment_fk3` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`rental_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73524 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (73523,1,1,318413,2.00,'2010-01-01 00:00:00.000','2023-02-11 18:36:57.515');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental` (
  `rental_id` int NOT NULL AUTO_INCREMENT,
  `rental_date` datetime(3) NOT NULL,
  `inventory_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `return_date` datetime(3) DEFAULT NULL,
  `staff_id` int NOT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`rental_id`),
  UNIQUE KEY `idx_uq` (`rental_date`,`inventory_id`,`customer_id`),
  KEY `idx_fk_customer_id` (`customer_id`),
  KEY `idx_fk_inventory_id` (`inventory_id`),
  KEY `idx_fk_staff_id` (`staff_id`),
  CONSTRAINT `rental_fk1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`),
  CONSTRAINT `rental_fk2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `rental_fk3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=318414 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (318413,'2022-01-01 00:00:00.000',1,1,'2022-01-01 00:00:00.000',1,'2023-02-11 18:36:36.677');
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address_id` int NOT NULL,
  `picture` longblob,
  `email` varchar(50) DEFAULT NULL,
  `store_id` int NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `username` varchar(16) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`staff_id`),
  KEY `idx_fk_address_id` (`address_id`),
  KEY `idx_fk_store_id` (`store_id`),
  CONSTRAINT `staff_fk1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`),
  CONSTRAINT `staff_fk2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Mike','Hillyer',3,NULL,'Mike.Hillyer@sakilastaff.com',1,1,'Mike','8cb2237d0679ca88db6464eac60da96345513964','2006-02-15 04:57:16.000'),(2,'Jon','Stephens',4,NULL,'Jon.Stephens@sakilastaff.com',2,1,'Jon','8cb2237d0679ca88db6464eac60da96345513964','2006-02-15 04:57:16.000'),(3,'Guillermo','Littel',292,NULL,'Guillermo.Littel@sakila.com',2,1,'Guillermo.Littel','Congue vivamus vehicula molestie.','2010-01-01 19:43:57.000'),(4,'Lois','Schroeder',264,NULL,'Lois.Schroeder@sakila.com',1,1,'Lois.Schroeder','Nulla suscipit placerat vestibulum at.','2010-02-01 06:54:01.000'),(5,'Tristin','Fisher',297,NULL,'Tristin.Fisher@sakila.com',2,1,'Tristin.Fisher','Lectus velit et suspendisse felis.','2010-02-01 08:42:44.000'),(6,'Alford','Breitenberg',308,NULL,'Alford.Breitenberg@sakila.com',2,0,'Alford.Breitenbe','Nunc tortor luctus facilisi lectus.','2010-03-01 00:54:07.000'),(7,'Liana','Koepp',514,NULL,'Liana.Koepp@sakila.com',1,0,'Liana.Koepp','Porta Porta.','2010-03-01 10:42:19.000'),(8,'Granville','Kuphal',111,NULL,'Granville.Kuphal@sakila.com',1,0,'Granville.Kuphal','Ex scelerisque ultrices arcu aliquam.','2010-03-01 16:53:36.000'),(9,'Daryl','Corwin',226,NULL,'Daryl.Corwin@sakila.com',1,1,'Daryl.Corwin','Sem elit nec consectetur duis fermentum.','2010-04-01 12:16:37.000'),(10,'Leslie','Orn',566,NULL,'Leslie.Orn@sakila.com',1,1,'Leslie.Orn','Fames leo ornare vivamus iaculis duis.','2010-05-01 06:18:34.000'),(11,'Jamar','Kunde',111,NULL,'Jamar.Kunde@sakila.com',2,1,'Jamar.Kunde','A ipsum adipiscing ante tellus et risus.','2010-06-01 03:26:59.000'),(12,'Charlotte','Gottlieb',559,NULL,'Charlotte.Gottlieb@sakila.com',2,0,'Charlotte.Gottli','Phasellus ullamcorper laoreet.','2010-07-01 00:18:35.000'),(13,'Gwendolyn','Effertz',111,NULL,'Gwendolyn.Effertz@sakila.com',2,0,'Gwendolyn.Effert','Lectus praesent facilisi proin vitae.','2010-07-01 18:45:58.000'),(14,'Pauline','Rau',72,NULL,'Pauline.Rau@sakila.com',1,1,'Pauline.Rau','Nec fermentum consectetur proin.','2010-08-01 05:10:40.000'),(15,'Mireya','Gulgowski',529,NULL,'Mireya.Gulgowski@sakila.com',2,1,'Mireya.Gulgowski','Phasellus iaculisut dapibus urna id.','2010-08-01 23:19:27.000'),(16,'Ariane','Bosco',56,NULL,'Ariane.Bosco@sakila.com',1,0,'Ariane.Bosco','Proin pellentesque facilisis tempor.','2010-09-01 01:27:38.000'),(17,'Anahi','Moen',529,NULL,'Anahi.Moen@sakila.com',1,0,'Anahi.Moen','Nulla justo non nam a efficitur viverra.','2010-10-01 00:11:38.000'),(18,'Rick','Glover',463,NULL,'Rick.Glover@sakila.com',1,1,'Rick.Glover','Erat gravida eros sem nullam eget quam.','2010-10-01 18:58:50.000'),(19,'Nellie','Rippin',601,NULL,'Nellie.Rippin@sakila.com',2,1,'Nellie.Rippin','Ornare efficitur tempor eget.','2010-11-01 17:16:53.000'),(20,'Lorenz','West',266,NULL,'Lorenz.West@sakila.com',1,1,'Lorenz.West','Tristique a ante Tristique a ante.','2010-12-01 07:52:57.000'),(21,'Carmel','Nader',501,NULL,'Carmel.Nader@sakila.com',2,1,'Carmel.Nader','Eleifend finibus tristique quisque.','2010-12-01 22:53:57.000'),(62,'Reggie','Shields',45,NULL,'Reggie.Shields@sakila.com',2,1,'Reggie.Shields','Magna dapibus eget eget amet suscipit.','2010-01-02 15:34:18.000'),(63,'Alvis','Parisian',322,NULL,'Alvis.Parisian@sakila.com',1,0,'Alvis.Parisian','Est tellus tincidunt aliquam faucibus.','2010-01-02 18:46:55.000'),(64,'Keenan','McKenzie',116,NULL,'Keenan.McKenzie@sakila.com',2,1,'Keenan.McKenzie','Maecenas sagittis eget porta nullam.','2010-02-02 09:51:23.000'),(65,'Wallace','Nienow',556,NULL,'Wallace.Nienow@sakila.com',1,0,'Wallace.Nienow','Erat nulla leo feugiat cras congue.','2010-02-02 15:23:49.000'),(66,'Joesph','Padberg',87,NULL,'Joesph.Padberg@sakila.com',1,0,'Joesph.Padberg','Commodo dui tempor purus quam ipsum.','2010-03-02 03:47:35.000'),(67,'Carolyne','Pacocha',479,NULL,'Carolyne.Pacocha@sakila.com',2,0,'Carolyne.Pacocha','Gravida erat mattis nullam mi risus.','2010-03-02 20:09:24.000'),(68,'Mollie','Johnson',410,NULL,'Mollie.Johnson@sakila.com',2,0,'Mollie.Johnson','Purus elit mattis odio id condimentum.','2010-04-02 10:48:39.000'),(69,'Charity','Johnson',68,NULL,'Charity.Johnson@sakila.com',1,0,'Charity.Johnson','Sagittis adipiscing iaculisut velit ut.','2010-05-02 04:54:06.000'),(70,'Nathaniel','Jenkins',381,NULL,'Nathaniel.Jenkins@sakila.com',1,1,'Nathaniel.Jenkin','.','2010-05-02 09:47:24.000'),(71,'Emmanuelle','Rowe',316,NULL,'Emmanuelle.Rowe@sakila.com',1,1,'Emmanuelle.Rowe','Vehicula nisi integer porta diam luctus.','2010-05-02 12:48:31.000'),(72,'Nat','Zboncak',309,NULL,'Nat.Zboncak@sakila.com',2,1,'Nat.Zboncak','Commodo mollis dolor risus tristique.','2010-05-02 19:59:47.000'),(73,'Retha','Windler',4,NULL,'Retha.Windler@sakila.com',1,1,'Retha.Windler','Sagittis mattis quisque nunc Sagittis.','2010-06-02 17:51:25.000'),(74,'Uriel','Kohler',292,NULL,'Uriel.Kohler@sakila.com',1,1,'Uriel.Kohler','Vivamus tristique neque risus interdum.','2010-06-02 22:06:33.000'),(75,'Tomas','Braun',528,NULL,'Tomas.Braun@sakila.com',2,0,'Tomas.Braun','Tinciduntnulla quisque justo enim ipsum.','2010-07-02 20:08:08.000'),(76,'Lonzo','Quigley',279,NULL,'Lonzo.Quigley@sakila.com',1,1,'Lonzo.Quigley','Donec quam a facilisi vel sit lorem.','2010-08-02 18:46:30.000'),(77,'Chyna','Volkman',256,NULL,'Chyna.Volkman@sakila.com',2,0,'Chyna.Volkman','Fusce neque ullamcorper viverra.','2010-09-02 10:19:17.000'),(78,'Treva','Barton',94,NULL,'Treva.Barton@sakila.com',1,0,'Treva.Barton','Sem eu non mauris turpis mollis duis.','2010-10-02 08:38:29.000'),(79,'Eric','Tremblay',289,NULL,'Eric.Tremblay@sakila.com',2,1,'Eric.Tremblay','Nam duis mollis felis sapien laoreet.','2010-11-02 08:37:04.000'),(80,'Marcelina','Orn',473,NULL,'Marcelina.Orn@sakila.com',2,1,'Marcelina.Orn','Tellus malesuada maecenas finibus nibh.','2010-11-02 17:43:59.000'),(81,'Blaise','Schmitt',330,NULL,'Blaise.Schmitt@sakila.com',2,0,'Blaise.Schmitt','Commodo elementum vestibulum fusce.','2010-12-02 16:00:49.000'),(113,'Urban','Keebler',485,NULL,'Urban.Keebler@sakila.com',1,0,'Urban.Keebler','Pellentesque eget vel urna nisl iaculis.','2010-01-03 07:40:03.000'),(114,'Trey','Collier',342,NULL,'Trey.Collier@sakila.com',1,1,'Trey.Collier','Aliquet vehicula lectus malesuada.','2010-02-03 02:25:02.000'),(115,'Madie','Roberts',349,NULL,'Madie.Roberts@sakila.com',2,0,'Madie.Roberts','Lacus nisi Lacus nisi.','2010-02-03 22:02:19.000'),(116,'Ottis','Will',472,NULL,'Ottis.Will@sakila.com',1,1,'Ottis.Will','Mi proin congue dapibus lectus eget.','2010-03-03 15:00:31.000'),(117,'Kane','Zboncak',132,NULL,'Kane.Zboncak@sakila.com',1,0,'Kane.Zboncak','Sit vivamus pretium proin vivamus neque.','2010-03-03 17:21:55.000'),(118,'Era','Turner',232,NULL,'Era.Turner@sakila.com',2,1,'Era.Turner','Elementum consectetur tempor viverra.','2010-03-03 22:36:04.000'),(119,'Ezekiel','Erdman',555,NULL,'Ezekiel.Erdman@sakila.com',1,1,'Ezekiel.Erdman','Eros sollicitudin Eros sollicitudin.','2010-04-03 04:08:15.000'),(120,'Rodrick','Ullrich',153,NULL,'Rodrick.Ullrich@sakila.com',1,1,'Rodrick.Ullrich','Varius finibus in nulla justo sapien.','2010-04-03 06:41:09.000'),(121,'Noemi','Thiel',291,NULL,'Noemi.Thiel@sakila.com',1,1,'Noemi.Thiel','Fermentum adipiscing aliquam eu.','2010-04-03 08:59:07.000'),(122,'Haley','Veum',556,NULL,'Haley.Veum@sakila.com',1,1,'Haley.Veum','Urna facilisi lacus laoreet ornare.','2010-04-03 14:47:11.000'),(123,'Green','Runolfsdottir',193,NULL,'Green.Runolfsdottir@sakila.com',1,1,'Green.Runolfsdot','Felis aliquam sollicitudin suspendisse.','2010-05-03 04:53:07.000'),(124,'Jasper','Nolan',265,NULL,'Jasper.Nolan@sakila.com',1,0,'Jasper.Nolan','Diam odio eu quam ac in iaculis mollis.','2010-05-03 11:02:28.000'),(125,'Jaden','Bauch',484,NULL,'Jaden.Bauch@sakila.com',1,1,'Jaden.Bauch','Eu augue molestie Eu augue molestie.','2010-05-03 21:37:58.000'),(126,'Retta','Kling',230,NULL,'Retta.Kling@sakila.com',2,1,'Retta.Kling','Et mollis orci suscipit tempor nam.','2010-06-03 12:12:59.000');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `manager_staff_id` int NOT NULL,
  `address_id` int NOT NULL,
  `last_update` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `idx_fk_address_id` (`manager_staff_id`),
  KEY `idx_fk_store_address` (`address_id`),
  CONSTRAINT `store_fk1` FOREIGN KEY (`manager_staff_id`) REFERENCES `staff` (`staff_id`),
  CONSTRAINT `store_fk2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,1,1,'2006-02-15 04:57:12.000'),(2,2,2,'2006-02-15 04:57:12.000'),(4,3,3,'2021-11-28 22:18:20.500'),(5,4,4,'2021-11-28 22:18:23.410'),(6,5,5,'2021-11-28 22:18:25.143'),(7,6,6,'2021-11-28 22:18:26.957'),(8,7,7,'2021-11-28 22:18:28.157');
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

-- Dump completed on 2023-02-11 18:38:02
