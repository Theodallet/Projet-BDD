CREATE DATABASE  IF NOT EXISTS `projetbdd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projetbdd`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: projetbdd
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
-- Table structure for table `agencies`
--

DROP TABLE IF EXISTS `agencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agencies` (
  `Id_Age` int NOT NULL AUTO_INCREMENT,
  `Name_Age` varchar(50) NOT NULL,
  `Id_Cit` int DEFAULT NULL,
  PRIMARY KEY (`Id_Age`),
  KEY `Agencies_Cities_FK` (`Id_Cit`),
  CONSTRAINT `Agencies_Cities_FK` FOREIGN KEY (`Id_Cit`) REFERENCES `cities` (`Id_Cit`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencies`
--

LOCK TABLES `agencies` WRITE;
/*!40000 ALTER TABLE `agencies` DISABLE KEYS */;
INSERT INTO `agencies` VALUES (1,'Nexus Consulting',21),(2,'Horizon Agency',22),(3,'Zephyr Group',23),(4,'Vantage Ventures',24),(5,'Nova Solutions',25),(6,'Quasar Agency',26),(7,'Fusion Group',27),(8,'Nimbus Agency',28),(9,'Vertex Ventures',29),(10,'Axiom Enterprises',30);
/*!40000 ALTER TABLE `agencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `Id_Cit` int NOT NULL AUTO_INCREMENT,
  `Name_Cit` varchar(50) NOT NULL,
  `Postal_Code_Cit` varchar(50) NOT NULL,
  `Street_Cit` varchar(50) NOT NULL,
  `Building_Cit` varchar(50) NOT NULL,
  `Floor_Cit` int NOT NULL,
  `Id_Reg` int DEFAULT NULL,
  PRIMARY KEY (`Id_Cit`),
  KEY `Cities_Region_FK` (`Id_Reg`),
  CONSTRAINT `Cities_Region_FK` FOREIGN KEY (`Id_Reg`) REFERENCES `region` (`Id_Reg`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Rouen','76000','rue Jeanne D\'arc','Le Vergerdu Roy',2,1),(2,'Dieppe','76200','rue Dulague','Duo Verde',1,1),(3,'Paris','70000','rue LOUIS PASTEUR','Résidence du Parc',1,2),(4,'Lyon','69000','rue VICTOR HUGO','Natur\'L',1,4),(5,'Marseille','13000','rue JEAN JAURÈS','Clos de Feyen ',1,11),(6,'Montpelier','34000','rue JEAN MOULIN','Émergence',1,12),(7,'Strasbourg','67000','rue LÉON GAMBETTA','Art & Nature',1,10),(8,'Lille','59000','rue GÉNÉRAL LECLERC','Les Jardins des Arts',1,9),(9,'Toulouse','31000','rue MARÉCHAL FOCH ','Le Clos Bosquet',1,12),(10,'Nice','6000','rue JULES FERRY','Doppoarniosp Wood',1,11),(11,'Bordeaux','30072','rue GEORGES CLÉMENCEAU','Kitoccit Corner',1,3),(12,'Nantes','44000','Avenue de Pologne','Abri',1,13),(13,'Angers','49000','Avenue de Provence','Aérogare',2,13),(14,'Dijon','21231','Avenue de Rouvray','Colas',1,5),(15,'Rennes','35000','Avenue de Saint Maurice','Eiffage',2,6),(16,'Toulon','83000','Avenue de Saxe','Vinci',3,11),(17,'Reims','51454','Avenue de Saint-Ouen','SEBTP',3,10),(18,'Saint-Etienne','42000','Avenue de Ségur','Bretelle',5,4),(19,'Le Havre','76600','Avenue de Verdun','rouge',2,1),(20,'Bordeaux','30072','Avenue des Canadiens','bequet',1,3),(21,'Paris','70000','Avenue des Chasseurs','borelle',1,2),(22,'Marseille','13000','Avenue des Minimes ','cerisier',1,11),(23,'Lyon','69000','Avenue des Peupliers ','chenille',3,2),(24,'Toulouse','31000','Avenue du Parc-de-Passy','blanc',2,12),(25,'Nice','6000','Avenue des Portugais ','transparent',4,11),(26,'Nantes','44000','Avenue Dorian','la résidance',2,13),(27,'Montpellier','34000','Avenue du Square','étoile',3,12),(28,'Strasbourg','67000','Avenue du Ranelagh','lunaire',1,10),(29,'Bordeaux','30072','Avenue du Président-Wilson','vert',2,3),(30,'Lille','59000','Avenue du Polygone ','Duo Verde',4,9),(31,'Rouen','76000','rue Jeanne D\'arc','Le Vergerdu Roy',2,1),(32,'Dieppe','76200','rue Dulague','Duo Verde',3,1),(33,'Paris','70000','rue LOUIS PASTEUR','Résidence du Parc',4,2),(34,'Lyon','69000','rue VICTOR HUGO','Natur\'L',5,4),(35,'Marseille','13000','rue JEAN JAURÈS','Clos de Feyen ',5,11),(36,'Montpelier','34000','rue JEAN MOULIN','Émergence',2,12),(37,'Strasbourg','67000','rue LÉON GAMBETTA','Art & Nature',2,10),(38,'Lille','59000','rue GÉNÉRAL LECLERC','Les Jardins des Arts',3,9),(39,'Toulouse','31000','rue MARÉCHAL FOCH ','Le Clos Bosquet',3,12),(40,'Nice','6000','rue JULES FERRY','Doppoarniosp Wood',3,11),(41,'Bordeaux','30072','rue GEORGES CLÉMENCEAU','Kitoccit Corner',2,3);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collect` (
  `Ref_Col` int NOT NULL AUTO_INCREMENT,
  `Date_Col` date NOT NULL,
  `Data_Col` float NOT NULL,
  `Sector_Activity_Col` varchar(500) NOT NULL,
  `Values_Prg_Col` int NOT NULL,
  `Num_Sen` int NOT NULL,
  `Id_Rep` int NOT NULL,
  PRIMARY KEY (`Ref_Col`),
  KEY `Collect_Sensors_FK` (`Num_Sen`),
  KEY `Collect_Reports0_FK` (`Id_Rep`),
  CONSTRAINT `Collect_Reports0_FK` FOREIGN KEY (`Id_Rep`) REFERENCES `reports` (`Id_Rep`),
  CONSTRAINT `Collect_Sensors_FK` FOREIGN KEY (`Num_Sen`) REFERENCES `sensors` (`Num_Sen`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect`
--

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
INSERT INTO `collect` VALUES (1,'2021-06-14',357,'Combustion in the energy and energy conversion industries',58125,1,1),(2,'2020-10-27',824,'Combustion outside industry ',4562,2,1),(3,'2019-12-06',735,'Production processes ',86318,3,1),(4,'2018-08-09',128,'Extraction and distribution of fossil fuels/geothermal energy ',47586,4,2),(5,'2021-02-19',369,'Combustion in the energy and energy conversion industries',4563323,5,2),(6,'2019-03-25',283,'Other mobile sources and machinery ',86354,6,2),(7,'2017-07-31',580,'Waste treatment and disposal ',26867,7,3),(8,'2020-01-11',212,'Combustion in the manufacturing industry ',649821,8,3),(9,'2018-11-23',597,'Agriculture and forestry ',46975,9,3),(10,'2019-06-18',705,'Use of solvents and other products ',13254,10,4),(11,'2017-10-02',941,'Other biotic sources',779525,11,4),(12,'2018-04-26',668,'Combustion outside industry ',45457,12,4),(13,'2016-09-28',503,'Production processes ',52378,13,5),(14,'2020-07-14',825,'Waste treatment and disposal',54125,14,5),(15,'2017-01-02',763,'Road transport ',85621,15,5),(16,'2019-05-09',475,'Combustion in the energy and energy conversion industries ',74521,16,6),(17,'2018-03-07',621,'Waste treatment and disposal',7452,17,6),(18,'2016-06-16',182,'Agriculture and forestry ',46478,18,6),(19,'2021-03-12',992,'Combustion in the manufacturing industry ',97832,19,7),(20,'2017-12-04',946,'Extraction and distribution of fossil fuels/geothermal energy ',479825,20,7),(21,'2019-09-13',391,'Combustion outside industry ',324678,21,7),(22,'2018-05-25',639,'Other mobile sources and machinery ',326782,22,8),(23,'2016-08-22',147,'Road transport ',54742,23,8),(24,'2020-04-30',907,'Production processes ',23798,24,8),(25,'2017-09-11',442,'Other biotic sources',98562,25,9),(26,'2018-02-23',281,'Use of solvents and other products ',541323,26,9),(27,'2016-03-29',928,'Combustion in the energy and energy conversion industries ',111111,27,9),(28,'2019-02-15',170,'Other biotic sources',21344,28,10),(29,'2017-06-05',778,'Waste treatment and disposal ',13254,29,10),(30,'2018-12-20',575,'Extraction and distribution of fossil fuels/geothermal energy ',65778,30,10),(31,'2016-07-13',105,'Combustion in the manufacturing industry ',37482,1,1),(32,'2020-09-07',469,'Combustion outside industry ',16427,1,1),(33,'2017-11-27',725,'Other biotic sources',35687,2,1),(34,'2018-07-03',809,'Production processes ',98765,2,1),(35,'2016-11-08',672,'Agriculture and forestry ',23443,3,1),(36,'2019-08-26',904,'Other biotic sources',32435,3,1),(37,'2017-03-20',362,'Use of solvents and other products ',87654,4,2),(38,'2018-10-12',175,'Agriculture and forestry ',34556,4,2),(39,'2016-02-10',723,'Waste treatment and disposal ',23456,5,2),(40,'2021-05-06',542,'Combustion in the energy and energy conversion industries ',987654,5,2),(41,'2017-08-28',297,'Other biotic sources',234567,6,2),(42,'2018-06-08',880,'Combustion outside industry ',7654423,6,2),(43,'2016-01-06',642,'Other mobile sources and machinery ',42783,7,3),(44,'2020-02-12',854,'Use of solvents and other products ',673423,7,3),(45,'2019-01-24',444,'Extraction and distribution of fossil fuels/geothermal energy ',12987,8,3),(46,'2017-05-15',953,'Road transport ',74336,8,3),(47,'2018-09-28',615,'Production processes ',238675,9,3),(48,'2016-05-12',429,'Combustion in the manufacturing industry ',94282,9,3),(49,'2019-07-02',322,'Combustion outside industry ',84377,10,4),(50,'2017-02-21',167,'Combustion in the energy and energy conversion industries ',723486,10,4),(51,'2021-07-31',84389,'Combustion in the energy and energy conversion industries',585866,1,1),(52,'2022-05-07',98942,'Combustion outside industry',47474,2,1),(53,'2021-11-30',47262,'Combustion in the manufacturing industry',767557,3,1),(54,'2022-04-18',59040,'Production processes',383746,4,2),(55,'2022-02-27',53716,'Extraction and distribution of fossil fuels/geothermal energy',363645,5,2),(56,'2021-12-17',29804,'Use of solvents and other products',796,6,2),(57,'2022-01-09',34749,'Road transport',8746465,7,3),(58,'2021-11-11',46398,'Other mobile sources and machinery',78647,8,3),(59,'2022-03-06',68230,'Waste treatment and disposal',384658,9,3),(60,'2022-01-29',43220,'Agriculture and forestry',384657,10,4),(61,'2021-09-25',72491,'Combustion in the energy and energy conversion industries',295634,11,4),(62,'2022-04-20',72813,'Combustion outside industry',347557,12,4),(63,'2021-10-07',88176,'Combustion in the manufacturing industry',6867475,13,5),(64,'2022-03-23',77643,'Production processes',3566778,14,5),(65,'2021-09-06',51304,'Extraction and distribution of fossil fuels/geothermal energy',96876,15,5),(66,'2022-03-12',13233,'Use of solvents and other products',2735454,16,6),(67,'2022-05-18',76092,'Road transport',8667574,17,6),(68,'2022-01-26',82239,'Other mobile sources and machinery',5689657,18,6),(69,'2021-07-19',54779,'Waste treatment and disposal',657878,19,7),(70,'2022-03-11',97760,'Agriculture and forestry',2383475,20,7),(71,'2021-12-13',41579,'Other biotic sources',23456,21,7),(72,'2022-02-04',12924,'Combustion in the energy and energy conversion industries',98765,22,8),(73,'2021-08-30',64198,'Combustion outside industry',57870,23,8),(74,'2021-12-02',53180,'Combustion in the manufacturing industry',434958,24,8),(75,'2022-01-07',85648,'Production processes',384757,25,9),(76,'2021-09-16',89175,'Extraction and distribution of fossil fuels/geothermal energy',394575,26,9),(77,'2022-04-25',71992,'Use of solvents and other products',28364,27,9),(78,'2021-10-12',16831,'Road transport',46464,28,10),(79,'2022-03-14',40429,'Other mobile sources and machinery',373785,29,10),(80,'2021-09-29',21519,'Waste treatment and disposal',3637465,30,10),(81,'2022-05-01',64267,'Agriculture and forestry',807868,1,1),(82,'2021-12-06',53598,'Other biotic sources',2923747,3,1),(83,'2022-04-06',12407,'Combustion in the energy and energy conversion industries',3637474,2,1),(84,'2021-08-21',74278,'Combustion outside industry',384846,4,2),(85,'2022-02-06',16387,'Combustion in the manufacturing industry',45754,5,2),(86,'2021-11-23',91590,'Production processes',36465,6,2),(87,'2022-02-08',38585,'Extraction and distribution of fossil fuels/geothermal energy',253747,7,3),(88,'2021-10-22',31554,'Use of solvents and other products',1029384,8,3),(89,'2022-03-21',70872,'Road transport',9678509,9,3),(90,'2022-05-05',26988,'Other mobile sources and machinery',68788,9,4),(91,'2021-12-19',52976,'Waste treatment and disposal',5748745,10,4),(92,'2022-04-09',50808,'Agriculture and forestry',3487549,11,4),(93,'2021-08-04',35652,'Other biotic sources',45378,12,5),(94,'2022-03-27',65847,'Combustion in the energy and energy conversion industries',24656,13,5),(95,'2022-02-24',38885,'Combustion outside industry',69845,14,5),(96,'2021-08-11',49153,'Combustion in the manufacturing industry',698688,15,6),(97,'2022-01-11',82907,'Production processes',68797,16,6),(98,'2021-09-04',95555,'Extraction and distribution of fossil fuels/geothermal energy',765809,17,6),(99,'2022-04-15',36279,'Use of solvents and other products',54365,18,7),(100,'2022-05-10',36787,'Use of solvents and other products',556575,19,7),(101,'2022-01-01',54.2,'Combustion in the energy and energy conversion industries',469275,1,1),(102,'2021-02-13',68.9,'Combustion in the energy and energy conversion industries',5820574,4,2),(103,'2020-03-27',79.3,'Combustion in the energy and energy conversion industries',6473819,7,3),(104,'2019-04-09',85.1,'Extraction and distribution of fossil fuels/geothermal energy',475484,10,4),(105,'2018-05-21',92.5,'Waste treatment and disposal',111234,16,6),(106,'2017-06-02',60.8,'Combustion in the energy and energy conversion industries',44074,25,9),(107,'2016-07-14',42.5,'Waste treatment and disposal',748390,28,10),(108,'2015-08-26',76.2,'Road transport',44427,7,3),(109,'2014-09-07',89.1,'Extraction and distribution of fossil fuels/geothermal energy',48508,4,2),(110,'2013-10-19',97.8,'Road transport',478509,16,6),(111,'2012-11-30',53.7,'Combustion in the energy and energy conversion industries',89734,13,5),(112,'2011-12-12',71.3,'Waste treatment and disposal',777494,16,6),(113,'2010-01-24',83.4,'Road transport',444708,19,7),(114,'2009-03-08',96.2,'Extraction and distribution of fossil fuels/geothermal energy',890775,22,8),(115,'2008-04-20',38.7,'Road transport',475905,25,9),(116,'2007-06-02',62.1,'Road transport',110739,28,10),(117,'2006-07-15',78.3,'Combustion in the energy and energy conversion industries',96479,13,5),(118,'2005-08-27',92.8,'Road transport',373903,4,2),(119,'2004-10-09',41.2,'Waste treatment and disposal',77890,1,1),(120,'2003-11-20',56.7,'Road transport',748390,1,1),(121,'2002-12-31',67.5,'Road transport',462839,1,1),(122,'2001-02-12',72.9,'Waste treatment and disposal',22256,10,4),(123,'2000-03-26',88.4,'Combustion in the energy and energy conversion industries',758930,16,6),(124,'1999-05-07',94.1,'Road transport',12354,25,9),(125,'1998-06-19',51.2,'Extraction and distribution of fossil fuels/geothermal energy',748909,25,9),(126,'1997-07-31',75.3,'Waste treatment and disposal',563790,22,8),(127,'1996-09-12',82.5,'Road transport',555609,13,5),(128,'1995-10-24',96.7,'Extraction and distribution of fossil fuels/geothermal energy',657903,10,4),(129,'1994-12-05',34.2,'Waste treatment and disposal',754830,7,3),(130,'1993-01-17',58.9,'Combustion in the energy and energy conversion industries',555679,4,2),(131,'1992-02-28',69.1,'Road transport',589098,1,1),(132,'1991-04-12',75.6,'Waste treatment and disposal',590867,1,1),(133,'1990-05-24',80.2,'Extraction and distribution of fossil fuels/geothermal energy',580978,16,6),(134,'1989-07-06',44.3,'Waste treatment and disposal',658790,28,10),(135,'1988-08-18',63.2,'Combustion in the energy and energy conversion industries',65666,16,6),(136,'1987-09-30',77.1,'Road transport',14324,13,5),(137,'1986-11-12',91.5,'Extraction and distribution of fossil fuels/geothermal energy',37777,10,4),(138,'1985-12-25',31.4,'Road transport',8590983,4,2),(139,'1984-02-05',48.2,'Waste treatment and disposal',55567,4,2),(140,'1983-03-19',62.6,'Combustion in the energy and energy conversion industries',850085,1,1),(141,'1982-04-30',73.4,'Road transport',760941,1,1),(142,'1981-06-12',84.1,'Waste treatment and disposal',15378,19,7),(143,'1980-07-24',96.4,'Extraction and distribution of fossil fuels/geothermal energy',849083,28,10),(144,'1979-09-05',230,'Waste treatment and disposal',484984,30,10),(145,'2018-09-20',315,'Combustion in the energy and energy conversion industries',759084,21,7),(146,'2019-06-02',728,'Waste treatment and disposal',5689308,18,6),(147,'2020-01-09',682,'Road transport',47680,17,3),(148,'2018-03-14',820,'Extraction and distribution of fossil fuels/geothermal energy',47930,12,4),(149,'2019-12-07',51,'Extraction and distribution of fossil fuels/geothermal energy',474830,22,8),(150,'2017-07-15',797,'Combustion in the energy and energy conversion industries',444478,23,8),(151,'2019-04-28',462,'Extraction and distribution of fossil fuels/geothermal energy',76543,1,1),(152,'2022-01-22',743,'Extraction and distribution of fossil fuels/geothermal energy',3487,1,1),(153,'2019-05-25',645,'Combustion in the manufacturing industry',6824,2,1),(154,'2018-08-23',22,'Other mobile sources and machinery',579,2,1),(155,'2021-06-11',975,'Combustion in the manufacturing industry',1246,3,1),(156,'2017-09-19',764,'Waste treatment and disposal',83276,3,1),(157,'2022-02-06',173,'Combustion in the manufacturing industry',13248,4,2),(158,'2021-05-17',943,'Extraction and distribution of fossil fuels/geothermal energy',876,4,2),(159,'2017-11-30',767,'Waste treatment and disposal',2794,5,2),(160,'2022-03-08',471,'Combustion in the manufacturing industry',2694,5,2),(161,'2020-06-05',657,'Other mobile sources and machinery',597395,6,2),(162,'2021-07-02',731,'Road transport',95364,6,2),(163,'2018-05-16',854,'Combustion in the manufacturing industry',59346,7,3),(164,'2020-10-11',51,'Agriculture and forestry',4567,7,3),(165,'2021-06-29',319,'Road transport',23439,8,3),(166,'2020-08-23',810,'Combustion in the manufacturing industry',924762,8,3),(167,'2019-11-04',514,'Extraction and distribution of fossil fuels/geothermal energy',26523,9,3),(168,'2017-10-26',848,'Combustion in the manufacturing industry',38529,9,3),(169,'2020-07-16',460,'Road transport',2853429,10,4),(170,'2021-06-03',118,'Combustion in the manufacturing industry',854792,10,4),(171,'2019-02-14',523,'Road transport',28634692,11,4),(172,'2017-05-21',614,'Extraction and distribution of fossil fuels/geothermal energy',283548,11,4),(173,'2020-11-27',914,'Other biotic sources',4937,12,4),(174,'2021-02-26',208,'Other mobile sources and machinery',49356,12,4),(175,'2018-06-12',323,'Combustion in the manufacturing industry',2357,13,5),(176,'2019-07-17',747,'Other biotic sources',486,13,5),(177,'2021-01-14',693,'Extraction and distribution of fossil fuels/geothermal energy',5143,14,5),(178,'2022-01-06',78,'Extraction and distribution of fossil fuels/geothermal energy',672368,14,5),(179,'2018-11-27',998,'Waste treatment and disposal',8765,15,5),(180,'2017-07-05',876,'Combustion in the manufacturing industry',34567,15,5),(181,'2018-09-25',915,'Extraction and distribution of fossil fuels/geothermal energy',3456,16,6),(182,'2017-05-13',562,'Agriculture and forestry',8765,16,6),(183,'2020-07-21',140,'Road transport',3457,17,6),(184,'2021-09-11',254,'Extraction and distribution of fossil fuels/geothermal energy',93475965,17,6),(185,'2019-01-29',687,'Other biotic sources',69249959,18,6),(186,'2018-05-10',442,'Combustion in the manufacturing industry',358486,18,6),(187,'2022-02-03',983,'Road transport',3548,19,7),(188,'2019-10-23',506,'Agriculture and forestry',834,20,7),(189,'2017-08-28',277,'Extraction and distribution of fossil fuels/geothermal energy',835843,21,7),(190,'2021-02-12',186,'Other biotic sources',3384583,22,8),(191,'2018-11-21',7858,'Combustion in the manufacturing industry',954632,22,8),(192,'2004-11-21',78348,'Combustion in the manufacturing industry',954332,23,8),(193,'2001-11-21',74388,'Extraction and distribution of fossil fuels/geothermal energy',952432,23,8),(194,'2000-11-21',78658,'Agriculture and forestry',965432,24,8),(195,'2008-11-21',72488,'Combustion in the manufacturing industry',954332,24,8),(196,'2009-11-21',78458,'Agriculture and forestry',954932,25,9),(197,'2010-11-21',765688,'Extraction and distribution of fossil fuels/geothermal energy',9545632,26,9),(198,'2018-11-21',78228,'Combustion in the manufacturing industry',959432,27,9),(199,'2015-11-21',7878570,'Combustion in the manufacturing industry',954232,28,10),(200,'2012-11-21',78788,'Extraction and distribution of fossil fuels/geothermal energy',915432,29,10);
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contain`
--

DROP TABLE IF EXISTS `contain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contain` (
  `Id_Rep` int NOT NULL,
  `Id_Gas` int NOT NULL,
  PRIMARY KEY (`Id_Rep`,`Id_Gas`),
  KEY `Contain_Gases0_FK` (`Id_Gas`),
  CONSTRAINT `Contain_Gases0_FK` FOREIGN KEY (`Id_Gas`) REFERENCES `gases` (`Id_Gas`),
  CONSTRAINT `Contain_Reports_FK` FOREIGN KEY (`Id_Rep`) REFERENCES `reports` (`Id_Rep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contain`
--

LOCK TABLES `contain` WRITE;
/*!40000 ALTER TABLE `contain` DISABLE KEYS */;
INSERT INTO `contain` VALUES (1,1),(10,2),(10,3),(4,4),(2,5),(5,5),(9,5),(1,6),(5,6),(3,7),(8,7),(3,8),(5,8),(7,8),(6,9);
/*!40000 ALTER TABLE `contain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gases`
--

DROP TABLE IF EXISTS `gases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gases` (
  `Id_Gas` int NOT NULL AUTO_INCREMENT,
  `Name_Gas` varchar(50) NOT NULL,
  `Type_Gas` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Gas`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gases`
--

LOCK TABLES `gases` WRITE;
/*!40000 ALTER TABLE `gases` DISABLE KEYS */;
INSERT INTO `gases` VALUES (1,'S02','GRA'),(2,'Nox','GRA'),(3,'NH3','GRA'),(4,'CO','GRA'),(5,'COVNM','GRA'),(6,'Co2 non bio','GES'),(7,'CO2 bio','GES'),(8,'CH4','GES'),(9,'N2O','GES'),(10,'PFC','GES'),(11,'HFC','GES'),(12,'SF6','GES');
/*!40000 ALTER TABLE `gases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage` (
  `Num_Sen` int NOT NULL,
  `Id_Age` int NOT NULL,
  PRIMARY KEY (`Num_Sen`,`Id_Age`),
  KEY `Manage_Agencies0_FK` (`Id_Age`),
  CONSTRAINT `Manage_Agencies0_FK` FOREIGN KEY (`Id_Age`) REFERENCES `agencies` (`Id_Age`),
  CONSTRAINT `Manage_Sensors_FK` FOREIGN KEY (`Num_Sen`) REFERENCES `sensors` (`Num_Sen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
INSERT INTO `manage` VALUES (1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,3),(8,3),(9,3),(10,4),(11,4),(12,4),(13,5),(14,5),(15,5),(16,6),(17,6),(18,6),(19,7),(20,7),(21,7),(22,8),(23,8),(24,8),(25,9),(26,9),(27,9),(28,10),(29,10),(30,10);
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure`
--

DROP TABLE IF EXISTS `measure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `measure` (
  `Num_Sen` int NOT NULL,
  `Id_Gas` int NOT NULL,
  PRIMARY KEY (`Num_Sen`,`Id_Gas`),
  KEY `Measure_Gases0_FK` (`Id_Gas`),
  CONSTRAINT `Measure_Gases0_FK` FOREIGN KEY (`Id_Gas`) REFERENCES `gases` (`Id_Gas`),
  CONSTRAINT `Measure_Sensors_FK` FOREIGN KEY (`Num_Sen`) REFERENCES `sensors` (`Num_Sen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure`
--

LOCK TABLES `measure` WRITE;
/*!40000 ALTER TABLE `measure` DISABLE KEYS */;
INSERT INTO `measure` VALUES (1,1),(5,1),(17,1),(20,1),(30,1),(1,2),(2,2),(20,2),(25,2),(27,2),(2,3),(8,3),(10,3),(16,3),(18,3),(22,3),(26,3),(28,3),(29,3),(3,4),(11,4),(12,4),(18,4),(20,4),(23,4),(6,5),(13,5),(14,5),(24,5),(25,5),(3,6),(7,6),(14,6),(16,6),(20,6),(30,6),(4,7),(18,7),(19,7),(21,7),(25,7),(28,7),(1,8),(3,8),(4,8),(11,8),(15,8),(17,8),(29,8),(11,9),(12,9),(20,9),(23,9),(24,9),(26,9),(9,10),(10,10),(19,10),(21,10),(23,10),(25,10),(28,10),(30,10),(4,11),(13,11),(19,11),(4,12),(5,12),(16,12),(22,12),(26,12);
/*!40000 ALTER TABLE `measure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `Id_Per` int NOT NULL AUTO_INCREMENT,
  `Name_Per` varchar(50) NOT NULL,
  `First_Name_Per` varchar(50) NOT NULL,
  `Date_Per` date NOT NULL,
  `Date_Stain_Per` date NOT NULL,
  `Job_Per` varchar(50) NOT NULL,
  `Id_Tas` int NOT NULL,
  `Id_Age` int NOT NULL,
  `Id_Cit` int DEFAULT NULL,
  PRIMARY KEY (`Id_Per`),
  KEY `Personal_Task_FK` (`Id_Tas`),
  KEY `Personal_Agencies0_FK` (`Id_Age`),
  KEY `Personal_Cities1_FK` (`Id_Cit`),
  CONSTRAINT `Personal_Agencies0_FK` FOREIGN KEY (`Id_Age`) REFERENCES `agencies` (`Id_Age`),
  CONSTRAINT `Personal_Cities1_FK` FOREIGN KEY (`Id_Cit`) REFERENCES `cities` (`Id_Cit`),
  CONSTRAINT `Personal_Task_FK` FOREIGN KEY (`Id_Tas`) REFERENCES `task` (`Id_Tas`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Laine','Tom','2004-02-18','2010-04-18','Agency Manager',3,1,1),(2,'Patrzynski','Tom','2004-12-16','2015-04-01','Administrative Agent',2,1,2),(3,'Dallet-Thuillier','Theo','2002-12-22','2013-06-23','Technical Agent',1,1,20),(4,'Robert','Léo','1993-06-13','2008-06-11','Agency Manager',3,2,4),(5,'Durand','Sylvie','1985-01-31','2007-01-14','Administrative Agent',2,2,5),(6,'Leroy','Pascal','1983-07-18','2003-08-13','Technical Agent',1,2,6),(7,'Vasseur','Thomas','1988-08-30','2009-09-19','Agency Manager',3,3,7),(8,'Poirier','Christophe','1965-04-19','2009-05-19','Administrative Agent',2,3,8),(9,'Guyot','Frédéric','1967-12-16','2009-04-23','Technical Agent',1,3,9),(10,'Leger','Christian','1998-11-14','2009-04-22','Technical Agent',1,3,10),(11,'Le Goff','Bernard','1988-02-12','2005-08-01','Agency Manager',3,4,11),(12,'Leblanc','Chantal','1950-05-31','2004-07-31','Administrative Agent',2,4,12),(13,'Lebrun','Patricia','1963-08-27','2002-12-30','Technical Agent',1,4,13),(14,'Monnier','Céline','1985-02-14','2009-11-08','Agency Manager',3,5,14),(15,'Gillet','Michel','1977-04-18','2001-09-06','Administrative Agent',2,5,15),(16,'Humbert','Jean','1978-11-30','1998-06-16','Technical Agent',1,5,16),(17,'Lejeune','Catherine','1983-09-14','1999-02-14','Agency Manager',3,6,17),(18,'Pasquier','Isabelle','1990-09-17','1997-08-12','Administrative Agent',2,6,18),(19,'Laporte','Philippe','1957-11-29','2000-04-09','Technical Agent',1,6,19),(20,'PETIT','Pierre','1967-02-28','1990-04-01','Agency Manager',3,7,20),(21,'BERNARD','Philippe','1968-11-23','2004-04-09','Administrative Agent',2,7,30),(22,'MELON','Paul','1969-11-21','2000-02-21','Technical Agent',1,7,31),(23,'Laporte','Antoine','1971-11-20','2000-03-09','Agency Manager',3,8,32),(24,'PRINTEMPS','Thomas','1987-11-15','2004-06-22','Administrative Agent',2,8,33),(25,'BOURGEON','Victor','1998-11-13','2013-04-29','Technical Agent',1,8,34),(26,'MALTAIS','Lucas','1999-11-12','2010-12-29','Agency Manager',3,9,35),(27,'RENARD','Gaspard','2005-11-11','2004-11-15','Administrative Agent',2,9,36),(28,'ARDA','Adrien','2005-11-19','2011-09-19','Technical Agent',1,9,37),(29,'VUILLEMIN','Baptiste','1978-11-14','2001-01-15','Agency Manager',3,10,38),(30,'DELAMARE','Adrien','1969-11-16','2002-08-19','Administrative Agent',2,10,39),(31,'LAFFARGUE','Ethan','1959-11-17','2015-06-10','Technical Agent',1,10,40);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `Id_Reg` int NOT NULL AUTO_INCREMENT,
  `Name_Reg` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Reg`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Normandie'),(2,'Île-de-France'),(3,'Nouvelle-Aquitaine'),(4,'Auvergne-Rhône-Alpes'),(5,'Bourgogne-Franche-Comté'),(6,'Bretagne'),(7,'Centre-Val de Loire'),(8,'Corse'),(9,'Hauts-de-France'),(10,'Grand Est'),(11,'Provence-Alpes-Côte d\'Azur'),(12,'Occitanie'),(13,'Pays de la Loire');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `Id_Rep` int NOT NULL AUTO_INCREMENT,
  `Date_Rep` date NOT NULL,
  `Area_Rep` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Rep`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'2020-03-10','Rue Saint-Jacques'),(2,'2020-07-05','Parc des sports'),(3,'2020-01-19','Boulevard de la Liberté'),(4,'2020-05-28','Rue de la paix'),(5,'2018-11-02','Jardin des plantes'),(6,'2015-06-11','Avenue des Champs Elysees'),(7,'2022-04-15','Place de la République'),(8,'2021-09-21','Place du marché'),(9,'2013-02-27','Rue de la gare'),(10,'2017-08-08','Place de l hotel de ville');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensors`
--

DROP TABLE IF EXISTS `sensors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensors` (
  `Num_Sen` int NOT NULL AUTO_INCREMENT,
  `Id_Per` int NOT NULL,
  PRIMARY KEY (`Num_Sen`),
  KEY `Sensors_Personal_FK` (`Id_Per`),
  CONSTRAINT `Sensors_Personal_FK` FOREIGN KEY (`Id_Per`) REFERENCES `personal` (`Id_Per`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensors`
--

LOCK TABLES `sensors` WRITE;
/*!40000 ALTER TABLE `sensors` DISABLE KEYS */;
INSERT INTO `sensors` VALUES (1,3),(2,3),(3,3),(4,6),(5,6),(6,6),(8,9),(9,9),(7,10),(10,13),(11,13),(12,13),(13,16),(14,16),(15,16),(16,19),(17,19),(18,19),(19,22),(20,22),(21,22),(22,25),(23,25),(24,25),(25,28),(26,28),(27,28),(28,31),(29,31),(30,31);
/*!40000 ALTER TABLE `sensors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `Id_Tas` int NOT NULL AUTO_INCREMENT,
  `Name_Tas` varchar(200) NOT NULL,
  PRIMARY KEY (`Id_Tas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Responsible for the proper functioning of data sensors'),(2,'data analysis reporting on air quality'),(3,'Leads the agency');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writes`
--

DROP TABLE IF EXISTS `writes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writes` (
  `Id_Per` int NOT NULL,
  `Id_Rep` int NOT NULL,
  PRIMARY KEY (`Id_Per`,`Id_Rep`),
  KEY `Write_Reports0_FK` (`Id_Rep`),
  CONSTRAINT `Write_Personal_FK` FOREIGN KEY (`Id_Per`) REFERENCES `personal` (`Id_Per`),
  CONSTRAINT `Write_Reports0_FK` FOREIGN KEY (`Id_Rep`) REFERENCES `reports` (`Id_Rep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writes`
--

LOCK TABLES `writes` WRITE;
/*!40000 ALTER TABLE `writes` DISABLE KEYS */;
INSERT INTO `writes` VALUES (2,1),(2,2),(8,3),(18,4),(21,5),(24,6),(27,7),(30,8),(12,9),(15,10);
/*!40000 ALTER TABLE `writes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'projetbdd'
--

--
-- Dumping routines for database 'projetbdd'
--
/*!50003 DROP PROCEDURE IF EXISTS `delete_agencies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_agencies`(IN A Int)
BEGIN
	IF A IN(SELECT Id_Age from agencies)
		THEN 
			DELETE FROM manage WHERE Id_Age = A;
			DELETE FROM agencies WHERE Id_Age = A;
	ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This agencies id does not exist.";
	END IF;       
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_agent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_agent`(IN Id INT)
BEGIN
    DELETE FROM personal WHERE Id_Per = Id;
    DELETE FROM writes WHERE Id_Per = Id;
    DELETE FROM sensors WHERE Id_Per = Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_sensors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_sensors`(IN A Int)
BEGIN
	IF A IN(SELECT Num_Sen from sensors)
		THEN 
			DELETE FROM manage WHERE Num_Sen = A;
			DELETE FROM sensors WHERE Num_Sen = A;
			DELETE FROM measure WHERE Num_Sen = A;
	ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This person id does not exist";
	END IF;       
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_agencies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_agencies`(IN A int, IN B VARCHAR(50), IN C int)
BEGIN
	IF A IN(SELECT Id_Age from agencies)
		THEN 
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This agencies id exist.";
	ELSE INSERT INTO agencies (Id_Age, Name_Age, Id_Cit) VALUES
    (A, B, C);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_agent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_agent`(IN A INT, IN B VARCHAR(50), IN C VARCHAR(50), IN D DATE, IN E DATE, IN F VARCHAR(50), IN G INT, IN H INT, IN I INT)
BEGIN
	IF A IN (SELECT Id_Per FROM Personal)
    THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This person id exist.";
	ELSE INSERT INTO personal (Id_Per, Name_Per, First_Name_Per, DATE_Per, DATE_Stain_Per, Job_Per, Id_Tas, Id_Age, Id_Cit) 
		VALUES
		(A,B,C,D,E,F,G,H,I);
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_sensors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_sensors`(IN A int, IN B int)
BEGIN
	IF A IN(SELECT Num_Sen from sensors)
		THEN 
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This Num sensor id exist.";
	ELSE INSERT INTO sensors (Num_Sen,Id_Per) VALUES
    (A, B);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq01` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq01`()
BEGIN
	select * from agencies;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq02` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq02`()
BEGIN
	select Name_Per, First_Name_Per from personal
	join agencies on personal.Id_Age = agencies.Id_Age
	join cities on agencies.Id_Cit = cities.Id_Cit
	where Job_Per = 'Technical Agent' and 
	agencies.Id_Cit in (select Id_Cit from cities where Name_Cit = 'Bordeaux');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq03` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq03`()
BEGIN
	select count(Num_Sen) from sensors;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq04` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq04`()
BEGIN
	select Id_Rep from reports where Date_Rep between '2018-01-01' and '2022-12-31';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq05` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq05`()
BEGIN
	select Name_Reg as Region, sum(Data_Col) as Total  from collect
	join sensors on collect.Num_Sen = sensors.Num_Sen 
	join manage on sensors.Num_Sen = manage.Num_Sen 
	join agencies on manage.Id_Age = agencies.Id_Age
	join cities on agencies.Id_Cit = cities.Id_Cit
	join region on cities.Id_Reg = region.Id_Reg
	join measure on sensors.Num_Sen = measure.Num_sen
	join gases on measure.Id_Gas = gases.Id_Gas
	where year(Date_Col) = 2020 and gases.Type_Gas = 'GES'
	group by Name_Reg;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq06` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq06`()
BEGIN
	select max(Values_Prg_Col) as Maximum from collect 
	join sensors on collect.Num_Sen = sensors.Num_Sen 
	join manage on sensors.Num_Sen = manage.Num_Sen 
	join agencies on manage.Id_Age = agencies.Id_Age
	join cities on agencies.Id_Cit = cities.Id_Cit
	join region on cities.Id_Reg = region.Id_Reg
	where Name_Reg = 'Île-de-France';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq07` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq07`()
BEGIN
	select * from reports 
	join contain on reports.Id_Rep = contain.Id_Rep
	join gases on contain.Id_Gas = gases.Id_Gas
	where Name_Gas = 'NH3'
	order by Date_Rep ASC; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq08` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq08`()
BEGIN
	select distinct personal.Id_Per, Name_Per as Nom, First_Name_Per as Prenom from personal
	join agencies on personal.Id_Age = agencies.Id_Age
	join manage on agencies.Id_Age = manage.Id_Age
	join sensors on manage.Num_Sen = sensors.Num_Sen
	join measure on sensors.Num_Sen = measure.Num_Sen
	join gases on measure.Id_Gas = gases.Id_Gas
	where Job_Per = 'Technical Agent' and Type_Gas = 'GRA';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq09` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq09`()
BEGIN
	select Name_Gas as Gases, sum(Data_Col) as Total from collect
	join sensors on collect.Num_Sen = sensors.Num_Sen 
	join manage on sensors.Num_Sen = manage.Num_Sen 
	join agencies on manage.Id_Age = agencies.Id_Age
	join cities on agencies.Id_Cit = cities.Id_Cit
	join region on cities.Id_Reg = region.Id_Reg
	join measure on sensors.Num_Sen = measure.Num_sen
	join gases on measure.Id_Gas = gases.Id_Gas
	where year(Date_Col) = 2020 and Name_Reg = 'Île-de-France'
	group by Name_Gas ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq10` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq10`()
BEGIN
	select count(reports.Id_Rep)/(year(now()) - year(Date_Stain_Per)), personal.Id_Per, Name_Per as Nom, First_Name_Per as Prenom from personal 
	join cities on personal.Id_Cit = cities.Id_Cit
	join writes on personal.Id_Per = writes.Id_Per
	join reports on writes.Id_Rep = reports.Id_Rep
	where Job_Per like 'Administrative Agent%' and Name_Cit like 'Toulouse%' 
	group by personal.Id_Per, Name_Per, First_Name_Per;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq12` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq12`()
BEGIN
	select Region.Id_Reg, Name_Reg, count(manage.Num_Sen), count(agencies.Id_Age) from region
	left join cities on region.Id_Reg = cities.Id_Reg
	left join agencies on cities.Id_Cit = agencies.Id_Cit
	left join manage on agencies.Id_Age = manage.Id_Age
	left join sensors on manage.Num_Sen = sensors.Num_Sen
	group by region.Id_Reg, Name_Reg
	having count(sensors.Num_Sen) < count(agencies.Id_Age);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rq_011` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Rq_011`(in Gas varchar(50))
BEGIN
select * from reports
join contain on reports.Id_Rep = contain.Id_Rep
join gases on contain.Id_Gas = gases.Id_Gas 
where Name_Gas = gas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `set_agent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_agent`(IN A INT, IN B VARCHAR(50), IN C VARCHAR(50), IN D DATE, IN E DATE, IN F VARCHAR(50), IN G INT, IN H INT, IN I INT)
BEGIN
    IF A IN (SELECT Id_Per FROM Personal)
        THEN UPDATE Personal
        SET Id_Per = A,Name_Per = B,First_Name_Per = C,DATE_Per = D,DATE_Stain_Per = E,Job_Per = F,Id_Tas = G,Id_Age = H,Id_Cit = I
        WHERE Id_Per = A;
        
    ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Edition Error : This person id does not exist.";
    END IF;
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

-- Dump completed on 2023-05-14 14:25:37
