-- Database: exploration
-- ------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `ct_id` int NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(50) NOT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computers`
--

DROP TABLE IF EXISTS `computers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computers` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_room` int DEFAULT NULL,
  `c_name` varchar(50) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `FK_computers_rooms` (`c_room`),
  CONSTRAINT `FK_computers_rooms` FOREIGN KEY (`c_room`) REFERENCES `rooms` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computers`
--

LOCK TABLES `computers` WRITE;
/*!40000 ALTER TABLE `computers` DISABLE KEYS */;
INSERT INTO `computers` VALUES (1,1,'The computer A in the room 1'),(2,1,'The computer B in the room 1'),(3,2,'The computer A in the room 2'),(4,2,'The computer B in the room 2'),(5,2,'The computer C in the room 2'),(6,NULL,'Unassigned computer A'),(7,NULL,'Unassigned computer B'),(8,NULL,'Unassigned computer C');
/*!40000 ALTER TABLE `computers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connections`
--

DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connections` (
  `cn_from` int NOT NULL,
  `cn_to` int NOT NULL,
  `cn_cost` double(10,2) DEFAULT NULL,
  `cn_bidir` enum('N','Y') NOT NULL,
  PRIMARY KEY (`cn_from`,`cn_to`),
  KEY `FK_connections_cities2` (`cn_to`),
  CONSTRAINT `FK_connections_cities1` FOREIGN KEY (`cn_from`) REFERENCES `cities` (`ct_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_connections_cities2` FOREIGN KEY (`cn_to`) REFERENCES `cities` (`ct_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dates`
--

DROP TABLE IF EXISTS `dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dates` (
  `d` date DEFAULT NULL,
  KEY `idx_d` (`d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dates`
--

LOCK TABLES `dates` WRITE;
/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_in_json`
--

DROP TABLE IF EXISTS `library_in_json`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_in_json` (
  `lij_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lij_book` varchar(150) NOT NULL,
  `lij_author` json NOT NULL,
  `lij_genre` json NOT NULL,
  PRIMARY KEY (`lij_id`),
  KEY `idx_d` (`lij_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_in_json`
--

LOCK TABLES `library_in_json` WRITE;
/*!40000 ALTER TABLE `library_in_json` DISABLE KEYS */;
INSERT INTO `library_in_json` VALUES (1,'Eugene Onegin','[{\"id\": 7, \"name\": \"Alexander Pushkin\"}]','[{\"id\": 1, \"name\": \"Poetry\"}, {\"id\": 5, \"name\": \"Classic\"}]'),(2,'The Art of Computer Programming','[{\"id\": 1, \"name\": \"Donald Knuth\"}]','[{\"id\": 2, \"name\": \"Programming\"}, {\"id\": 5, \"name\": \"Classic\"}]'),(3,'Course of Theoretical Physics','[{\"id\": 4, \"name\": \"Lev Landau\"}, {\"id\": 5, \"name\": \"Evgeny Lifshitz\"}]','[{\"id\": 5, \"name\": \"Classic\"}]'),(4,'Foundation and Empire','[{\"id\": 2, \"name\": \"Isaac Asimov\"}]','[{\"id\": 6, \"name\": \"Science Fiction\"}]'),(5,'Programming Psychology','[{\"id\": 3, \"name\": \"Dale Carnegie\"}, {\"id\": 6, \"name\": \"Bjarne Stroustrup\"}]','[{\"id\": 2, \"name\": \"Programming\"}, {\"id\": 3, \"name\": \"Psychology\"}]'),(6,'The Fisherman and the Golden Fish','[{\"id\": 7, \"name\": \"Alexander Pushkin\"}]','[{\"id\": 1, \"name\": \"Poetry\"}, {\"id\": 5, \"name\": \"Classic\"}]'),(7,'The C++ Programming Language','[{\"id\": 6, \"name\": \"Bjarne Stroustrup\"}]','[{\"id\": 2, \"name\": \"Programming\"}]');
/*!40000 ALTER TABLE `library_in_json` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overflow`
--

DROP TABLE IF EXISTS `overflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overflow` (
  `x` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overflow`
--

LOCK TABLES `overflow` WRITE;
/*!40000 ALTER TABLE `overflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `overflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `r_id` int NOT NULL AUTO_INCREMENT,
  `r_name` varchar(50) NOT NULL,
  `r_space` tinyint NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'A room with two computers',5),(2,'A room with three computers',5),(3,'An empty room 1',2),(4,'An empty room 2',2),(5,'An empty room 3',2);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping`
--

DROP TABLE IF EXISTS `shopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping` (
  `sh_id` int unsigned NOT NULL AUTO_INCREMENT,
  `sh_transaction` int unsigned NOT NULL,
  `sh_category` varchar(150) NOT NULL,
  PRIMARY KEY (`sh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping`
--

LOCK TABLES `shopping` WRITE;
/*!40000 ALTER TABLE `shopping` DISABLE KEYS */;
INSERT INTO `shopping` VALUES (1,1,'Bag'),(2,1,'Dress'),(3,1,'Bag'),(4,2,'Bag'),(5,2,'Skirt'),(6,3,'Dress'),(7,3,'Skirt'),(8,3,'Shoes'),(9,3,'Hat'),(10,4,'Bag');
/*!40000 ALTER TABLE `shopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_pages`
--

DROP TABLE IF EXISTS `site_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_pages` (
  `sp_id` int unsigned NOT NULL AUTO_INCREMENT,
  `sp_parent` int unsigned DEFAULT NULL,
  `sp_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sp_id`),
  KEY `FK_site_pages_site_pages` (`sp_parent`),
  CONSTRAINT `FK_site_pages_site_pages` FOREIGN KEY (`sp_parent`) REFERENCES `site_pages` (`sp_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_pages`
--

LOCK TABLES `site_pages` WRITE;
/*!40000 ALTER TABLE `site_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_with_nulls`
--

DROP TABLE IF EXISTS `table_with_nulls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_with_nulls` (
  `x` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_with_nulls`
--

LOCK TABLES `table_with_nulls` WRITE;
/*!40000 ALTER TABLE `table_with_nulls` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_with_nulls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_counts`
--

DROP TABLE IF EXISTS `test_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_counts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fni` int DEFAULT NULL,
  `fwi` int DEFAULT NULL,
  `fni_nn` int NOT NULL,
  `fwi_nn` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fwi` (`fwi`),
  KEY `idx_fwi_nn` (`fwi_nn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_counts`
--

LOCK TABLES `test_counts` WRITE;
/*!40000 ALTER TABLE `test_counts` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_counts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


