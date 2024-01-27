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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
