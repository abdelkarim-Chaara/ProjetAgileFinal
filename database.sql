-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: sn-fr110-9001.net.clever-cloud.com    Database: bkkcpzqzz
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.04.3-log

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
-- Table structure for table `APEX$_ACL`
--

DROP TABLE IF EXISTS `APEX$_ACL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APEX$_ACL` (
  `ID` double NOT NULL DEFAULT '0',
  `WS_APP_ID` double DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PRIV` varchar(1) DEFAULT NULL,
  `CREATED_ON` datetime DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `APEX$_ACL_PK` (`ID`),
  KEY `APEX$_ACL_IDX1` (`WS_APP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APEX$_ACL`
--

LOCK TABLES `APEX$_ACL` WRITE;
/*!40000 ALTER TABLE `APEX$_ACL` DISABLE KEYS */;
/*!40000 ALTER TABLE `APEX$_ACL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APEX$_WS_FILES`
--

DROP TABLE IF EXISTS `APEX$_WS_FILES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APEX$_WS_FILES` (
  `ID` double NOT NULL DEFAULT '0',
  `WS_APP_ID` double DEFAULT NULL,
  `DATA_GRID_ID` double DEFAULT NULL,
  `ROW_ID` double DEFAULT NULL,
  `WEBPAGE_ID` double DEFAULT NULL,
  `COMPONENT_LEVEL` varchar(30) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `IMAGE_ALIAS` varchar(255) DEFAULT NULL,
  `IMAGE_ATTRIBUTES` varchar(255) DEFAULT NULL,
  `CONTENT` longblob,
  `CONTENT_LAST_UPDATE` datetime DEFAULT NULL,
  `MIME_TYPE` varchar(255) DEFAULT NULL,
  `CONTENT_CHARSET` varchar(255) DEFAULT NULL,
  `CONTENT_FILENAME` varchar(500) DEFAULT NULL,
  `DESCRIPTION` varchar(4000) DEFAULT NULL,
  `CREATED_ON` datetime DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `APEX$_WS_FILES_PK` (`ID`),
  KEY `APEX$_WS_FILES_IDX1` (`WS_APP_ID`,`DATA_GRID_ID`,`ROW_ID`),
  KEY `APEX$_WS_FILES_IDX2` (`WS_APP_ID`,`WEBPAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APEX$_WS_FILES`
--

LOCK TABLES `APEX$_WS_FILES` WRITE;
/*!40000 ALTER TABLE `APEX$_WS_FILES` DISABLE KEYS */;
/*!40000 ALTER TABLE `APEX$_WS_FILES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APEX$_WS_HISTORY`
--

DROP TABLE IF EXISTS `APEX$_WS_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APEX$_WS_HISTORY` (
  `ROW_ID` double DEFAULT NULL,
  `WS_APP_ID` double DEFAULT NULL,
  `DATA_GRID_ID` double DEFAULT NULL,
  `COLUMN_NAME` varchar(255) DEFAULT NULL,
  `OLD_VALUE` varchar(4000) DEFAULT NULL,
  `NEW_VALUE` varchar(4000) DEFAULT NULL,
  `APPLICATION_USER_ID` varchar(255) DEFAULT NULL,
  `CHANGE_DATE` datetime DEFAULT NULL,
  KEY `APEX$_WS_HISTORY_IDX` (`WS_APP_ID`,`DATA_GRID_ID`,`ROW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APEX$_WS_HISTORY`
--

LOCK TABLES `APEX$_WS_HISTORY` WRITE;
/*!40000 ALTER TABLE `APEX$_WS_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `APEX$_WS_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APEX$_WS_LINKS`
--

DROP TABLE IF EXISTS `APEX$_WS_LINKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APEX$_WS_LINKS` (
  `ID` double DEFAULT NULL,
  `WS_APP_ID` double DEFAULT NULL,
  `DATA_GRID_ID` double DEFAULT NULL,
  `ROW_ID` double DEFAULT NULL,
  `WEBPAGE_ID` double DEFAULT NULL,
  `COMPONENT_LEVEL` varchar(30) DEFAULT NULL,
  `TAGS` varchar(4000) DEFAULT NULL,
  `SHOW_ON_HOMEPAGE` varchar(1) DEFAULT NULL,
  `LINK_NAME` varchar(255) DEFAULT NULL,
  `URL` varchar(4000) DEFAULT NULL,
  `LINK_DESCRIPTION` varchar(4000) DEFAULT NULL,
  `DISPLAY_SEQUENCE` double DEFAULT NULL,
  `CREATED_ON` datetime DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(255) DEFAULT NULL,
  UNIQUE KEY `APEX$_WS_LINKS_PK` (`ID`),
  KEY `APEX$_WS_LINKS_IDX1` (`WS_APP_ID`,`DATA_GRID_ID`,`ROW_ID`),
  KEY `APEX$_WS_LINKS_IDX2` (`WS_APP_ID`,`WEBPAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APEX$_WS_LINKS`
--

LOCK TABLES `APEX$_WS_LINKS` WRITE;
/*!40000 ALTER TABLE `APEX$_WS_LINKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `APEX$_WS_LINKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APEX$_WS_NOTES`
--

DROP TABLE IF EXISTS `APEX$_WS_NOTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APEX$_WS_NOTES` (
  `ID` double NOT NULL DEFAULT '0',
  `WS_APP_ID` double DEFAULT NULL,
  `DATA_GRID_ID` double DEFAULT NULL,
  `ROW_ID` double DEFAULT NULL,
  `WEBPAGE_ID` double DEFAULT NULL,
  `COMPONENT_LEVEL` varchar(30) DEFAULT NULL,
  `CONTENT` longtext,
  `CREATED_ON` datetime DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `APEX$_WS_NOTES_PK` (`ID`),
  KEY `APEX$_WS_NOTES_IDX1` (`WS_APP_ID`,`DATA_GRID_ID`,`ROW_ID`),
  KEY `APEX$_WS_NOTES_IDX2` (`WS_APP_ID`,`WEBPAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APEX$_WS_NOTES`
--

LOCK TABLES `APEX$_WS_NOTES` WRITE;
/*!40000 ALTER TABLE `APEX$_WS_NOTES` DISABLE KEYS */;
/*!40000 ALTER TABLE `APEX$_WS_NOTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APEX$_WS_ROWS`
--

DROP TABLE IF EXISTS `APEX$_WS_ROWS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APEX$_WS_ROWS` (
  `ID` double NOT NULL DEFAULT '0',
  `WS_APP_ID` double DEFAULT NULL,
  `DATA_GRID_ID` double DEFAULT NULL,
  `UNIQUE_VALUE` varchar(255) DEFAULT NULL,
  `TAGS` varchar(4000) DEFAULT NULL,
  `PARENT_ROW_ID` double DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `GEOCODE` varchar(512) DEFAULT NULL,
  `LOAD_ORDER` double DEFAULT NULL,
  `CHANGE_COUNT` double DEFAULT NULL,
  `CREATED_ON` datetime DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(255) DEFAULT NULL,
  `C001` text,
  `C002` text,
  `C003` text,
  `C004` text,
  `C005` text,
  `C006` text,
  `C007` text,
  `C008` text,
  `C009` text,
  `C010` text,
  `C011` text,
  `C012` text,
  `C013` text,
  `C014` text,
  `C015` text,
  `C016` text,
  `C017` text,
  `C018` text,
  `C019` text,
  `C020` text,
  `C021` text,
  `C022` text,
  `C023` text,
  `C024` text,
  `C025` text,
  `C026` text,
  `C027` text,
  `C028` text,
  `C029` text,
  `C030` text,
  `C031` text,
  `C032` text,
  `C033` text,
  `C034` text,
  `C035` text,
  `C036` text,
  `C037` text,
  `C038` text,
  `C039` text,
  `C040` text,
  `C041` text,
  `C042` text,
  `C043` text,
  `C044` text,
  `C045` text,
  `C046` text,
  `C047` text,
  `C048` text,
  `C049` text,
  `C050` text,
  `N001` double DEFAULT NULL,
  `N002` double DEFAULT NULL,
  `N003` double DEFAULT NULL,
  `N004` double DEFAULT NULL,
  `N005` double DEFAULT NULL,
  `N006` double DEFAULT NULL,
  `N007` double DEFAULT NULL,
  `N008` double DEFAULT NULL,
  `N009` double DEFAULT NULL,
  `N010` double DEFAULT NULL,
  `N011` double DEFAULT NULL,
  `N012` double DEFAULT NULL,
  `N013` double DEFAULT NULL,
  `N014` double DEFAULT NULL,
  `N015` double DEFAULT NULL,
  `N016` double DEFAULT NULL,
  `N017` double DEFAULT NULL,
  `N018` double DEFAULT NULL,
  `N019` double DEFAULT NULL,
  `N020` double DEFAULT NULL,
  `N021` double DEFAULT NULL,
  `N022` double DEFAULT NULL,
  `N023` double DEFAULT NULL,
  `N024` double DEFAULT NULL,
  `N025` double DEFAULT NULL,
  `N026` double DEFAULT NULL,
  `N027` double DEFAULT NULL,
  `N028` double DEFAULT NULL,
  `N029` double DEFAULT NULL,
  `N030` double DEFAULT NULL,
  `N031` double DEFAULT NULL,
  `N032` double DEFAULT NULL,
  `N033` double DEFAULT NULL,
  `N034` double DEFAULT NULL,
  `N035` double DEFAULT NULL,
  `N036` double DEFAULT NULL,
  `N037` double DEFAULT NULL,
  `N038` double DEFAULT NULL,
  `N039` double DEFAULT NULL,
  `N040` double DEFAULT NULL,
  `N041` double DEFAULT NULL,
  `N042` double DEFAULT NULL,
  `N043` double DEFAULT NULL,
  `N044` double DEFAULT NULL,
  `N045` double DEFAULT NULL,
  `N046` double DEFAULT NULL,
  `N047` double DEFAULT NULL,
  `N048` double DEFAULT NULL,
  `N049` double DEFAULT NULL,
  `N050` double DEFAULT NULL,
  `D001` datetime DEFAULT NULL,
  `D002` datetime DEFAULT NULL,
  `D003` datetime DEFAULT NULL,
  `D004` datetime DEFAULT NULL,
  `D005` datetime DEFAULT NULL,
  `D006` datetime DEFAULT NULL,
  `D007` datetime DEFAULT NULL,
  `D008` datetime DEFAULT NULL,
  `D009` datetime DEFAULT NULL,
  `D010` datetime DEFAULT NULL,
  `D011` datetime DEFAULT NULL,
  `D012` datetime DEFAULT NULL,
  `D013` datetime DEFAULT NULL,
  `D014` datetime DEFAULT NULL,
  `D015` datetime DEFAULT NULL,
  `D016` datetime DEFAULT NULL,
  `D017` datetime DEFAULT NULL,
  `D018` datetime DEFAULT NULL,
  `D019` datetime DEFAULT NULL,
  `D020` datetime DEFAULT NULL,
  `D021` datetime DEFAULT NULL,
  `D022` datetime DEFAULT NULL,
  `D023` datetime DEFAULT NULL,
  `D024` datetime DEFAULT NULL,
  `D025` datetime DEFAULT NULL,
  `D026` datetime DEFAULT NULL,
  `D027` datetime DEFAULT NULL,
  `D028` datetime DEFAULT NULL,
  `D029` datetime DEFAULT NULL,
  `D030` datetime DEFAULT NULL,
  `D031` datetime DEFAULT NULL,
  `D032` datetime DEFAULT NULL,
  `D033` datetime DEFAULT NULL,
  `D034` datetime DEFAULT NULL,
  `D035` datetime DEFAULT NULL,
  `D036` datetime DEFAULT NULL,
  `D037` datetime DEFAULT NULL,
  `D038` datetime DEFAULT NULL,
  `D039` datetime DEFAULT NULL,
  `D040` datetime DEFAULT NULL,
  `D041` datetime DEFAULT NULL,
  `D042` datetime DEFAULT NULL,
  `D043` datetime DEFAULT NULL,
  `D044` datetime DEFAULT NULL,
  `D045` datetime DEFAULT NULL,
  `D046` datetime DEFAULT NULL,
  `D047` datetime DEFAULT NULL,
  `D048` datetime DEFAULT NULL,
  `D049` datetime DEFAULT NULL,
  `D050` datetime DEFAULT NULL,
  `CLOB001` longtext,
  `SEARCH_CLOB` longtext,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `APEX$_WS_ROWS_PK` (`ID`),
  KEY `APEX$_WS_ROWS_IDX` (`WS_APP_ID`,`DATA_GRID_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APEX$_WS_ROWS`
--

LOCK TABLES `APEX$_WS_ROWS` WRITE;
/*!40000 ALTER TABLE `APEX$_WS_ROWS` DISABLE KEYS */;
/*!40000 ALTER TABLE `APEX$_WS_ROWS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APEX$_WS_TAGS`
--

DROP TABLE IF EXISTS `APEX$_WS_TAGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APEX$_WS_TAGS` (
  `ID` double NOT NULL DEFAULT '0',
  `WS_APP_ID` double DEFAULT NULL,
  `DATA_GRID_ID` double DEFAULT NULL,
  `ROW_ID` double DEFAULT NULL,
  `WEBPAGE_ID` double DEFAULT NULL,
  `COMPONENT_LEVEL` varchar(30) DEFAULT NULL,
  `TAG` varchar(4000) DEFAULT NULL,
  `CREATED_ON` datetime DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `APEX$_WS_TAGS_PK` (`ID`),
  KEY `APEX$_WS_TAGS_IDX2` (`WS_APP_ID`,`WEBPAGE_ID`),
  KEY `APEX$_WS_TAGS_IDX1` (`WS_APP_ID`,`DATA_GRID_ID`,`ROW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APEX$_WS_TAGS`
--

LOCK TABLES `APEX$_WS_TAGS` WRITE;
/*!40000 ALTER TABLE `APEX$_WS_TAGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `APEX$_WS_TAGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APEX$_WS_WEBPG_SECTIONS`
--

DROP TABLE IF EXISTS `APEX$_WS_WEBPG_SECTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APEX$_WS_WEBPG_SECTIONS` (
  `ID` double NOT NULL DEFAULT '0',
  `WS_APP_ID` double DEFAULT NULL,
  `WEBPAGE_ID` double DEFAULT NULL,
  `DISPLAY_SEQUENCE` double DEFAULT NULL,
  `SECTION_TYPE` varchar(30) DEFAULT NULL,
  `TITLE` varchar(4000) DEFAULT NULL,
  `CONTENT` longtext,
  `CONTENT_UPPER` longtext,
  `NAV_START_WEBPAGE_ID` double DEFAULT NULL,
  `NAV_MAX_LEVEL` double DEFAULT NULL,
  `NAV_INCLUDE_LINK` varchar(1) DEFAULT NULL,
  `DATA_GRID_ID` double DEFAULT NULL,
  `REPORT_ID` double DEFAULT NULL,
  `DATA_SECTION_STYLE` double DEFAULT NULL,
  `CHART_TYPE` varchar(255) DEFAULT NULL,
  `CHART_3D` varchar(1) DEFAULT NULL,
  `CHART_LABEL` varchar(255) DEFAULT NULL,
  `LABEL_AXIS_TITLE` varchar(255) DEFAULT NULL,
  `CHART_VALUE` varchar(255) DEFAULT NULL,
  `VALUE_AXIS_TITLE` varchar(255) DEFAULT NULL,
  `CHART_AGGREGATE` varchar(255) DEFAULT NULL,
  `CHART_SORTING` varchar(255) DEFAULT NULL,
  `CREATED_ON` datetime DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `APEX$_WS_WEBPG_SECTIONS_PK` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APEX$_WS_WEBPG_SECTIONS`
--

LOCK TABLES `APEX$_WS_WEBPG_SECTIONS` WRITE;
/*!40000 ALTER TABLE `APEX$_WS_WEBPG_SECTIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `APEX$_WS_WEBPG_SECTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APEX$_WS_WEBPG_SECTION_HISTORY`
--

DROP TABLE IF EXISTS `APEX$_WS_WEBPG_SECTION_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APEX$_WS_WEBPG_SECTION_HISTORY` (
  `SECTION_ID` double DEFAULT NULL,
  `WS_APP_ID` double DEFAULT NULL,
  `WEBPAGE_ID` double DEFAULT NULL,
  `OLD_DISPLAY_SEQUENCE` double DEFAULT NULL,
  `NEW_DISPLAY_SEQUENCE` double DEFAULT NULL,
  `OLD_TITLE` varchar(4000) DEFAULT NULL,
  `NEW_TITLE` varchar(4000) DEFAULT NULL,
  `OLD_CONTENT` longtext,
  `NEW_CONTENT` longtext,
  `APPLICATION_USER_ID` varchar(255) DEFAULT NULL,
  `CHANGE_DATE` datetime DEFAULT NULL,
  KEY `APEX$_WS_WEBPG_SECHIST_IDX1` (`WS_APP_ID`,`WEBPAGE_ID`,`SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APEX$_WS_WEBPG_SECTION_HISTORY`
--

LOCK TABLES `APEX$_WS_WEBPG_SECTION_HISTORY` WRITE;
/*!40000 ALTER TABLE `APEX$_WS_WEBPG_SECTION_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `APEX$_WS_WEBPG_SECTION_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CANDIDAT`
--

DROP TABLE IF EXISTS `CANDIDAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CANDIDAT` (
  `NO_CANDIDAT` varchar(50) NOT NULL DEFAULT '' COMMENT 'Numéro du candidat',
  `CODE_FORMATION` varchar(8) DEFAULT NULL COMMENT 'Code de la formation sur laquelle le candidat postule.',
  `ANNEE_UNIVERSITAIRE` varchar(10) DEFAULT NULL COMMENT 'Année universitaire. Ex. : 2014-2015',
  `NOM` varchar(50) DEFAULT NULL COMMENT 'Nom de famille du candidat',
  `PRENOM` varchar(50) DEFAULT NULL COMMENT 'Prénom du candidat',
  `SEXE` varchar(1) DEFAULT NULL COMMENT 'Sexe du candidat : Homme ou Femme.',
  `DATE_NAISSANCE` datetime DEFAULT NULL COMMENT 'Date de naissance du candidat',
  `LIEU_NAISSANCE` varchar(255) DEFAULT NULL COMMENT 'Lieu de naissance du candidat',
  `NATIONALITE` varchar(50) DEFAULT 'Française' COMMENT 'Nationalité du candidat',
  `TELEPHONE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone fixe du candidat',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone portable du candidat',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT 'Adresse email du candidat',
  `ADRESSE` varchar(255) DEFAULT NULL COMMENT 'Rue du candidat',
  `CODE_POSTAL` varchar(10) DEFAULT NULL COMMENT 'Code postal de la ville où réside le candidat',
  `VILLE` varchar(255) DEFAULT NULL COMMENT 'Ville où habite le candidat',
  `PAYS_ORIGINE` varchar(5) DEFAULT NULL COMMENT 'Pays d''origine du candidat',
  `UNIVERSITE_ORIGINE` varchar(6) DEFAULT NULL COMMENT 'Université d''originie du candidat',
  `LISTE_SELECTION` varchar(6) DEFAULT NULL COMMENT 'Liste sur laquelle est positionné le candidat  : liste principale, liste d''attente ou non retenu.',
  `SELECTION_NO_ORDRE` double DEFAULT NULL COMMENT 'Classement du candidat sur la liste prinicipale ou sur la liste d''attente',
  `CONFIRMATION_CANDIDAT` char(1) DEFAULT NULL COMMENT 'Confirmation du candidat.',
  `DATE_REPONSE_CANDIDAT` datetime DEFAULT NULL COMMENT 'Date à laquelle le candidat a confirmé ou annulé son inscription.',
  PRIMARY KEY (`NO_CANDIDAT`),
  UNIQUE KEY `CAN_PK` (`NO_CANDIDAT`),
  KEY `CAN_PRO_FK_I` (`ANNEE_UNIVERSITAIRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CANDIDAT`
--

LOCK TABLES `CANDIDAT` WRITE;
/*!40000 ALTER TABLE `CANDIDAT` DISABLE KEYS */;
INSERT INTO `CANDIDAT` VALUES ('1','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1992-02-09 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.candidat@example.com','4 avenue Test','40000','TEST CITY','MA','UAE','LP',NULL,'O',NULL),('10','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1990-12-23 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.candidat@example.com','4 avenue Test','40000','TEST CITY','MA','UIT','LP',NULL,'O',NULL),('2','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1999-09-03 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.candidat@example.com','4 avenue Test','40000','TEST CITY','MA','UCAM','LP',NULL,'O',NULL),('3','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1991-11-02 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.candidat@example.com','4 avenue Test','40000','TEST CITY','MA','UIZ','LP',NULL,'O',NULL),('4','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1991-05-29 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.candidat@example.com','4 avenue Test','40000','TEST CITY','MA','UCAM','LP',NULL,'O',NULL),('5','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1992-09-11 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.candidat@example.com','4 avenue Test','40000','TEST CITY','MA','UIZ','LP',NULL,'O',NULL),('6','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1992-02-20 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.candidat@example.com','4 avenue Test','40000','TEST CITY','MA','UIZ','LP',NULL,'O',NULL),('7','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1991-07-18 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.candidat@example.com','4 avenue Test','40000','TEST CITY','MA','UIT','LP',NULL,'O',NULL),('8','M2DOSI','2014-2015','Test First Name','Test Last Name','F','1992-02-04 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.candidat@example.com','4 avenue Test','40000','TEST CITY','MA','UIT','LP',NULL,'O',NULL),('9','M2DOSI','2014-2015','Test First Name','Test Last Name','F','1992-08-01 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.candidat@example.com','4 avenue Test','40000','TEST CITY','MA','UAE','LP',NULL,'O',NULL);
/*!40000 ALTER TABLE `CANDIDAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CG_REF_CODES`
--

DROP TABLE IF EXISTS `CG_REF_CODES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CG_REF_CODES` (
  `RV_DOMAIN` varchar(100) DEFAULT NULL,
  `RV_LOW_VALUE` varchar(240) DEFAULT NULL,
  `RV_HIGH_VALUE` varchar(240) DEFAULT NULL,
  `RV_ABBREVIATION` varchar(240) DEFAULT NULL,
  `RV_MEANING` varchar(240) DEFAULT NULL,
  KEY `CGRC_I` (`RV_DOMAIN`,`RV_LOW_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CG_REF_CODES`
--

LOCK TABLES `CG_REF_CODES` WRITE;
/*!40000 ALTER TABLE `CG_REF_CODES` DISABLE KEYS */;
INSERT INTO `CG_REF_CODES` VALUES ('UNIVERSITE','UAE',NULL,'UAE','Université Abdelamlek Essaâdi'),('UNIVERSITE','UCD',NULL,'UCD','Université Chouaïb Doukkali'),('UNIVERSITE','UCAM',NULL,'UCAM','Université Cadi Ayyad'),('UNIVERSITE','UH2M',NULL,'UH2M','Université Hassan 2 Mohamedia'),('UNIVERSITE','UIT',NULL,'UIT','Université Ibn Tofail'),('UNIVERSITE','UH1',NULL,'UH1','Université Hassan 1er'),('UNIVERSITE','UIZ',NULL,'UIZ','Université Ibn Zhor'),('UNIVERSITE','UM5A',NULL,'UM5A','Université Mohamed 5 Agdal'),('UNIVERSITE','USMBA',NULL,'USMBA','Université Sidi Mohammed Ben Abdellah'),('SEXE','H',NULL,'H','Homme'),('SEXE','F',NULL,'F','Femme'),('SALLE','LC117A',NULL,'LC117A','Salle de réunion N°1'),('SALLE','LC117B',NULL,'LC117B','Salle de réunion N°2'),('SALLE','Amphi P',NULL,'Amphi P','Amphi Pédagogique'),('TYPE_ENSEIGNANT','MCF',NULL,'MCF','Maître de Conférences'),('TYPE_ENSEIGNANT','INT',NULL,'INT','Intervenant-Extérieur'),('TYPE_ENSEIGNANT','PR',NULL,'PR','Professeur des Universités'),('TYPE_ENSEIGNANT','PRAST',NULL,'PRAST','Professionnel Associé'),('TYPE_ENSEIGNANT','PRAG',NULL,'PRAG','Professeur Agrégé'),('SEMESTRE','S1',NULL,'S1','Semestre 1'),('SEMESTRE','S2',NULL,'S2','Semestre 2'),('SEMESTRE','S3',NULL,'S3','Semestre 3'),('SEMESTRE','S4',NULL,'S4','Semestre 4'),('SEMESTRE','S5',NULL,'S5','Semestre 5'),('SEMESTRE','S6',NULL,'S6','Semestre 6'),('SEMESTRE','S7',NULL,'S7','Semestre 7'),('SEMESTRE','S8',NULL,'S8','Semestre 8'),('SEMESTRE','S9',NULL,'S9','Semestre 9'),('SEMESTRE','S10',NULL,'S10','Semestre 10'),('PROCESSUS_STAGE','RECH',NULL,'RECH','Recherche en cours'),('PROCESSUS_STAGE','EC',NULL,'EC','Stage en cours'),('PROCESSUS_STAGE','TUT',NULL,'TUT','Tuteurs attribués'),('PROCESSUS_STAGE','SOUT',NULL,'SOUT','Sessions de soutenance définies'),('PROCESSUS_STAGE','EVAL',NULL,'EVAL','Stage evalué'),('OUI_NON','O',NULL,'O','Oui'),('OUI_NON','N',NULL,'N','Non'),('LISTE_SELECTION','LP',NULL,'LP','Liste principale'),('LISTE_SELECTION','LA',NULL,'LA','Liste d\'attente'),('LISTE_SELECTION','NR',NULL,'NR','Non retenu'),('PAYS','FR',NULL,'FR','France'),('PAYS','MA',NULL,'MA','Maroc'),('PAYS','TU',NULL,'TU','Tunisie'),('PAYS','AL',NULL,'AL','Algérie'),('PAYS','BF',NULL,'BF','Burkina Faso'),('DIPLOME','L',NULL,'L','Licence'),('DIPLOME','M',NULL,'M','Master'),('DIPLOME','D',NULL,'D','Doctorat');
/*!40000 ALTER TABLE `CG_REF_CODES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEMO_CUSTOMERS`
--

DROP TABLE IF EXISTS `DEMO_CUSTOMERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEMO_CUSTOMERS` (
  `CUSTOMER_ID` double NOT NULL DEFAULT '0',
  `CUST_FIRST_NAME` varchar(20) DEFAULT NULL,
  `CUST_LAST_NAME` varchar(20) DEFAULT NULL,
  `CUST_STREET_ADDRESS1` varchar(60) DEFAULT NULL,
  `CUST_STREET_ADDRESS2` varchar(60) DEFAULT NULL,
  `CUST_CITY` varchar(30) DEFAULT NULL,
  `CUST_STATE` varchar(2) DEFAULT NULL,
  `CUST_POSTAL_CODE` varchar(10) DEFAULT NULL,
  `PHONE_NUMBER1` varchar(25) DEFAULT NULL,
  `PHONE_NUMBER2` varchar(25) DEFAULT NULL,
  `CREDIT_LIMIT` decimal(9,2) DEFAULT NULL,
  `CUST_EMAIL` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  UNIQUE KEY `DEMO_CUSTOMERS_PK` (`CUSTOMER_ID`),
  KEY `DEMO_CUST_NAME_IX` (`CUST_LAST_NAME`,`CUST_FIRST_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEMO_CUSTOMERS`
--

LOCK TABLES `DEMO_CUSTOMERS` WRITE;
/*!40000 ALTER TABLE `DEMO_CUSTOMERS` DISABLE KEYS */;
INSERT INTO `DEMO_CUSTOMERS` VALUES (1,'John','Dulles','45020 Aviation Drive',NULL,'Sterling','VA','20166','703-555-2143',NULL,1000.00,NULL),(2,'William','Hartsfield','6000 North Terminal Parkway',NULL,'Atlanta','GA','30320','404-555-3285',NULL,1000.00,NULL),(3,'Edward','Logan','1 Harborside Drive',NULL,'East Boston','MA','02128','617-555-3295',NULL,1000.00,NULL),(4,'Edward \"Butch\"','OHare','10000 West OHare',NULL,'Chicago','IL','60666','773-555-7693',NULL,1000.00,NULL),(5,'Fiorello','LaGuardia','Hangar Center','Third Floor','Flushing','NY','11371','212-555-3923',NULL,1000.00,NULL),(6,'Albert','Lambert','10701 Lambert International Blvd.',NULL,'St. Louis','MO','63145','314-555-4022',NULL,1000.00,NULL),(7,'Eugene','Bradley','Schoephoester Road',NULL,'Windsor Locks','CT','06096','860-555-1835',NULL,1000.00,NULL);
/*!40000 ALTER TABLE `DEMO_CUSTOMERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEMO_ORDERS`
--

DROP TABLE IF EXISTS `DEMO_ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEMO_ORDERS` (
  `ORDER_ID` double NOT NULL DEFAULT '0',
  `CUSTOMER_ID` double DEFAULT NULL,
  `ORDER_TOTAL` decimal(8,2) DEFAULT NULL,
  `ORDER_TIMESTAMP` datetime DEFAULT NULL,
  `USER_ID` double DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  UNIQUE KEY `DEMO_ORDER_PK` (`ORDER_ID`),
  KEY `DEMO_ORD_CUSTOMER_IX` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEMO_ORDERS`
--

LOCK TABLES `DEMO_ORDERS` WRITE;
/*!40000 ALTER TABLE `DEMO_ORDERS` DISABLE KEYS */;
INSERT INTO `DEMO_ORDERS` VALUES (1,7,1890.00,'2016-02-03 00:00:00',2),(2,1,2380.00,'2016-01-31 00:00:00',2),(3,2,1640.00,'2016-01-25 00:00:00',2),(4,5,1090.00,'2016-01-17 00:00:00',2),(5,6,950.00,'2016-01-12 00:00:00',2),(6,3,1515.00,'2016-01-07 00:00:00',2),(7,3,905.00,'2015-12-28 00:00:00',2),(8,4,1060.00,'2015-12-26 00:00:00',2),(9,2,730.00,'2015-12-15 00:00:00',2),(10,7,870.00,'2015-12-01 00:00:00',2);
/*!40000 ALTER TABLE `DEMO_ORDERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEMO_ORDER_ITEMS`
--

DROP TABLE IF EXISTS `DEMO_ORDER_ITEMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEMO_ORDER_ITEMS` (
  `ORDER_ITEM_ID` smallint(6) NOT NULL DEFAULT '0',
  `ORDER_ID` double DEFAULT NULL,
  `PRODUCT_ID` double DEFAULT NULL,
  `UNIT_PRICE` decimal(8,2) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  UNIQUE KEY `DEMO_ORDER_ITEMS_PK` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEMO_ORDER_ITEMS`
--

LOCK TABLES `DEMO_ORDER_ITEMS` WRITE;
/*!40000 ALTER TABLE `DEMO_ORDER_ITEMS` DISABLE KEYS */;
INSERT INTO `DEMO_ORDER_ITEMS` VALUES (1,1,1,50.00,10),(2,1,2,80.00,8),(3,1,3,150.00,5),(4,2,1,50.00,3),(5,2,2,80.00,3),(6,2,3,150.00,3),(7,2,4,60.00,3),(8,2,5,80.00,3),(9,2,6,120.00,2),(10,2,7,30.00,2),(11,2,8,125.00,4),(12,2,9,110.00,2),(13,2,10,50.00,2),(14,3,4,60.00,4),(15,3,5,80.00,4),(16,3,6,120.00,4),(17,3,8,125.00,4),(18,3,10,50.00,2),(19,4,6,120.00,2),(20,4,7,30.00,6),(21,4,8,125.00,2),(22,4,9,110.00,2),(23,4,10,50.00,4),(24,5,1,50.00,3),(25,5,2,80.00,2),(26,5,3,150.00,2),(27,5,4,60.00,3),(28,5,5,80.00,2),(29,6,3,150.00,3),(30,6,6,120.00,3),(31,6,8,125.00,3),(32,6,9,110.00,3),(33,7,1,50.00,2),(34,7,2,80.00,2),(35,7,4,60.00,2),(36,7,5,80.00,2),(37,7,7,30.00,3),(38,7,8,125.00,1),(39,7,10,50.00,3),(40,8,2,80.00,2),(41,8,3,150.00,3),(42,8,6,120.00,1),(43,8,9,110.00,3),(44,9,4,60.00,4),(45,9,5,80.00,3),(46,9,8,125.00,2),(47,10,1,50.00,5),(48,10,2,80.00,4),(49,10,3,150.00,2);
/*!40000 ALTER TABLE `DEMO_ORDER_ITEMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEMO_PRODUCT_INFO`
--

DROP TABLE IF EXISTS `DEMO_PRODUCT_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEMO_PRODUCT_INFO` (
  `PRODUCT_ID` double NOT NULL DEFAULT '0',
  `PRODUCT_NAME` varchar(50) DEFAULT NULL,
  `PRODUCT_DESCRIPTION` varchar(2000) DEFAULT NULL,
  `CATEGORY` varchar(30) DEFAULT NULL,
  `PRODUCT_AVAIL` varchar(1) DEFAULT NULL,
  `LIST_PRICE` decimal(8,2) DEFAULT NULL,
  `PRODUCT_IMAGE` longblob,
  `MIMETYPE` varchar(255) DEFAULT NULL,
  `FILENAME` varchar(400) DEFAULT NULL,
  `IMAGE_LAST_UPDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  UNIQUE KEY `DEMO_PRODUCT_INFO_PK` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEMO_PRODUCT_INFO`
--

LOCK TABLES `DEMO_PRODUCT_INFO` WRITE;
/*!40000 ALTER TABLE `DEMO_PRODUCT_INFO` DISABLE KEYS */;
INSERT INTO `DEMO_PRODUCT_INFO` VALUES (1,'Business Shirt','Wrinkle-free cotton business shirt','Mens','Y',50.00,NULL,'image/jpeg','shirt.jpg','2016-02-04 00:00:00'),(2,'Trousers','Black trousers suitable for every business man','Mens','Y',80.00,NULL,'image/jpeg','pants.jpg','2016-02-04 00:00:00'),(3,'Jacket','Fully lined jacket which is both professional and extremely comfortable to wear','Mens','Y',150.00,NULL,'image/jpeg','jacket.jpg','2016-02-04 00:00:00'),(4,'Blouse','Silk blouse ideal for all business women','Womens','Y',60.00,NULL,'image/jpeg','blouse.jpg','2016-02-04 00:00:00'),(5,'Skirt','Wrinkle free skirt','Womens','Y',80.00,NULL,'image/jpeg','skirt.jpg','2016-02-04 00:00:00'),(6,'Ladies Shoes','Low heel and cushioned interior for comfort and style in simple yet elegant shoes','Womens','Y',120.00,NULL,'image/jpeg','heels.jpg','2016-02-04 00:00:00'),(7,'Belt','Leather belt','Accessories','Y',30.00,NULL,'image/jpeg','belt.jpg','2016-02-04 00:00:00'),(8,'Bag','Unisex bag suitable for carrying laptops with room for many additional items','Accessories','Y',125.00,NULL,'image/jpeg','bag.jpg','2016-02-04 00:00:00'),(9,'Mens Shoes','Leather upper and lower lace up shoes','Mens','Y',110.00,NULL,'image/jpeg','shoes.jpg','2016-02-04 00:00:00'),(10,'Wallet','Travel wallet suitable for men and women. Several compartments for credit cards, passports and cash','Accessories','Y',50.00,NULL,'image/jpeg','wallet.jpg','2016-02-04 00:00:00');
/*!40000 ALTER TABLE `DEMO_PRODUCT_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEMO_STATES`
--

DROP TABLE IF EXISTS `DEMO_STATES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEMO_STATES` (
  `ST` varchar(30) DEFAULT NULL,
  `STATE_NAME` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEMO_STATES`
--

LOCK TABLES `DEMO_STATES` WRITE;
/*!40000 ALTER TABLE `DEMO_STATES` DISABLE KEYS */;
INSERT INTO `DEMO_STATES` VALUES ('AK','ALASKA'),('AL','ALABAMA'),('AR','ARKANSAS'),('AZ','ARIZONA'),('CA','CALIFORNIA'),('CO','COLORADO'),('CT','CONNECTICUT'),('DC','DISTRICT OF COLUMBIA'),('DE','DELAWARE'),('FL','FLORIDA'),('GA','GEORGIA'),('HI','HAWAII'),('IA','IOWA'),('ID','IDAHO'),('IL','ILLINOIS'),('IN','INDIANA'),('KS','KANSAS'),('KY','KENTUCKY'),('LA','LOUISIANA'),('MA','MASSACHUSETTS'),('MD','MARYLAND'),('ME','MAINE'),('MI','MICHIGAN'),('MN','MINNESOTA'),('MO','MISSOURI'),('MS','MISSISSIPPI'),('MT','MONTANA'),('NC','NORTH CAROLINA'),('ND','NORTH DAKOTA'),('NE','NEBRASKA'),('NH','NEW HAMPSHIRE'),('NJ','NEW JERSEY'),('NM','NEW MEXICO'),('NV','NEVADA'),('NY','NEW YORK'),('OH','OHIO'),('OK','OKLAHOMA'),('OR','OREGON'),('PA','PENNSYLVANIA'),('RI','RHODE ISLAND'),('SC','SOUTH CAROLINA'),('SD','SOUTH DAKOTA'),('TN','TENNESSEE'),('TX','TEXAS'),('UT','UTAH'),('VA','VIRGINIA'),('VT','VERMONT'),('WA','WASHINGTON'),('WI','WISCONSIN'),('WV','WEST VIRGINIA'),('WY','WYOMING');
/*!40000 ALTER TABLE `DEMO_STATES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEMO_USERS`
--

DROP TABLE IF EXISTS `DEMO_USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEMO_USERS` (
  `USER_ID` double NOT NULL DEFAULT '0',
  `USER_NAME` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(4000) DEFAULT NULL,
  `CREATED_ON` datetime DEFAULT NULL,
  `QUOTA` double DEFAULT NULL,
  `PRODUCTS` char(1) DEFAULT NULL,
  `EXPIRES_ON` datetime DEFAULT NULL,
  `ADMIN_USER` char(1) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `DEMO_USERS_PK` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEMO_USERS`
--

LOCK TABLES `DEMO_USERS` WRITE;
/*!40000 ALTER TABLE `DEMO_USERS` DISABLE KEYS */;
INSERT INTO `DEMO_USERS` VALUES (1,'ADMIN','5FEB47F6C34EF4A6D6CBBD0B767ABFDF','2016-02-04 00:00:00',NULL,'Y',NULL,'Y'),(2,'DEMO','713261F288D18855617EFC17CE81A148','2016-02-04 00:00:00',15000,'Y',NULL,'N');
/*!40000 ALTER TABLE `DEMO_USERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPT`
--

DROP TABLE IF EXISTS `DEPT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPT` (
  `DEPTNO` tinyint(4) NOT NULL DEFAULT '0',
  `DNAME` varchar(14) DEFAULT NULL,
  `LOC` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`DEPTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPT`
--

LOCK TABLES `DEPT` WRITE;
/*!40000 ALTER TABLE `DEPT` DISABLE KEYS */;
INSERT INTO `DEPT` VALUES (10,'ACCOUNTING','NEW YORK'),(20,'RESEARCH','DALLAS'),(30,'SALES','CHICAGO'),(40,'OPERATIONS','BOSTON');
/*!40000 ALTER TABLE `DEPT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ELEMENT_CONSTITUTIF`
--

DROP TABLE IF EXISTS `ELEMENT_CONSTITUTIF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ELEMENT_CONSTITUTIF` (
  `CODE_FORMATION` varchar(8) NOT NULL DEFAULT '' COMMENT 'Code de la formation (Ex. : M2DOSI)',
  `CODE_UE` varchar(8) NOT NULL DEFAULT '' COMMENT 'Code de l''Unité d''Enseignement (Ex. : ISI, J2EE, WEB, etc.)',
  `CODE_EC` varchar(8) NOT NULL DEFAULT '' COMMENT 'Code de l''Elément Constitutif (Ex. : SD pour Serveur de Données dans l''UE PSI',
  `NO_ENSEIGNANT` int(11) DEFAULT NULL COMMENT 'N° de l''enseignant responsable de l''EC',
  `DESIGNATION` varchar(64) DEFAULT NULL COMMENT 'Désignation de l''EC',
  `DESCRIPTION` varchar(240) DEFAULT NULL COMMENT 'Description ou résumé de l''élément constitutof',
  `NBH_CM` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de Cours Magistraux (CM) dispensées dans l''EC.',
  `NBH_TD` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de Travaux Dirigés (TD) dispensées dans l''EC.',
  `NBH_TP` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de Travaux Pratiques (TP) dispensées dans l''EC.',
  PRIMARY KEY (`CODE_FORMATION`,`CODE_UE`,`CODE_EC`),
  UNIQUE KEY `EC_PK` (`CODE_FORMATION`,`CODE_UE`,`CODE_EC`),
  KEY `EC_ENS_FK_I` (`NO_ENSEIGNANT`),
  KEY `EC_UE_FK_I` (`CODE_FORMATION`,`CODE_UE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Element Constitutif';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ELEMENT_CONSTITUTIF`
--

LOCK TABLES `ELEMENT_CONSTITUTIF` WRITE;
/*!40000 ALTER TABLE `ELEMENT_CONSTITUTIF` DISABLE KEYS */;
INSERT INTO `ELEMENT_CONSTITUTIF` VALUES ('M2DOSI','J2EE','CME',2,'Couche Métier','EJB,REST et JPA',12,12,12),('M2DOSI','J2EE','CPR',4,'Couche Présentation','SPRING MVC',4,4,4),('M2DOSI','PCO','ERP',6,'Intégration de progiciels',NULL,6,6,6),('M2DOSI','PCO','SFM',1,'Stage en France pré-embauche Maroc','Préparation au stage en France dans une perspective d\'embauche au Maroc',6,6,6);
/*!40000 ALTER TABLE `ELEMENT_CONSTITUTIF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMP`
--

DROP TABLE IF EXISTS `EMP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMP` (
  `EMPNO` smallint(6) DEFAULT NULL,
  `ENAME` varchar(10) DEFAULT NULL,
  `JOB` varchar(9) DEFAULT NULL,
  `MGR` smallint(6) DEFAULT NULL,
  `HIREDATE` datetime DEFAULT NULL,
  `SAL` decimal(7,2) DEFAULT NULL,
  `COMM` decimal(7,2) DEFAULT NULL,
  `DEPTNO` tinyint(4) DEFAULT NULL,
  KEY `DEPTNO` (`DEPTNO`),
  CONSTRAINT `EMP_ibfk_1` FOREIGN KEY (`DEPTNO`) REFERENCES `DEPT` (`DEPTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMP`
--

LOCK TABLES `EMP` WRITE;
/*!40000 ALTER TABLE `EMP` DISABLE KEYS */;
INSERT INTO `EMP` VALUES (7839,'KING','PRESIDENT',NULL,'1981-11-17 00:00:00',5000.00,NULL,10),(7698,'BLAKE','MANAGER',7839,'1981-05-01 00:00:00',2850.00,NULL,30),(7782,'CLARK','MANAGER',7839,'1981-06-09 00:00:00',2450.00,NULL,10),(7566,'JONES','MANAGER',7839,'1981-04-02 00:00:00',2975.00,NULL,20),(7788,'SCOTT','ANALYST',7566,'1982-12-09 00:00:00',3000.00,NULL,20),(7902,'FORD','ANALYST',7566,'1981-12-03 00:00:00',3000.00,NULL,20),(7369,'SMITH','CLERK',7902,'1980-12-17 00:00:00',800.00,NULL,20),(7499,'ALLEN','SALESMAN',7698,'1981-02-20 00:00:00',1600.00,300.00,30),(7521,'WARD','SALESMAN',7698,'1981-02-22 00:00:00',1250.00,500.00,30),(7654,'MARTIN','SALESMAN',7698,'1981-09-28 00:00:00',1250.00,1400.00,30),(7844,'TURNER','SALESMAN',7698,'1981-09-08 00:00:00',1500.00,0.00,30),(7876,'ADAMS','CLERK',7788,'1983-01-12 00:00:00',1100.00,NULL,20),(7900,'JAMES','CLERK',7698,'1981-12-03 00:00:00',950.00,NULL,30),(7934,'MILLER','CLERK',7782,'1982-01-23 00:00:00',1300.00,NULL,10);
/*!40000 ALTER TABLE `EMP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ENSEIGNANT`
--

DROP TABLE IF EXISTS `ENSEIGNANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ENSEIGNANT` (
  `NO_ENSEIGNANT` int(11) NOT NULL DEFAULT '0' COMMENT 'Numéro de l''enseignant',
  `TYPE` varchar(5) DEFAULT NULL COMMENT 'Type de l''enseignant : Maître de Conférences, Professeur des Universités, Intervenant Extérieur, etc.',
  `SEXE` varchar(1) DEFAULT NULL COMMENT 'Sexe de l''enseignant : Homme ou Femme.',
  `NOM` varchar(50) DEFAULT NULL COMMENT 'Nom de l''enseignant',
  `PRENOM` varchar(50) DEFAULT NULL COMMENT 'Prénom de l''enseignant',
  `ADRESSE` varchar(255) DEFAULT NULL COMMENT 'Rue de l''enseignant',
  `CODE_POSTAL` varchar(10) DEFAULT NULL COMMENT 'Code Postal de la ville où réside l''enseignant.',
  `VILLE` varchar(255) DEFAULT NULL COMMENT 'Ville de résidence de l''enseignant',
  `PAYS` varchar(5) DEFAULT NULL COMMENT 'Pays où vit l''enseignant',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone portable de l''enseignant chercheur',
  `TELEPHONE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone fixe de l''enseignant',
  `EMAIL_UBO` varchar(255) DEFAULT NULL COMMENT 'Adresse email UBO de l''enseignant',
  `EMAIL_PERSO` varchar(255) DEFAULT NULL COMMENT 'Adresse email de l''UBO de l''enseignant',
  PRIMARY KEY (`NO_ENSEIGNANT`),
  UNIQUE KEY `ENS_PK` (`NO_ENSEIGNANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ENSEIGNANT`
--

LOCK TABLES `ENSEIGNANT` WRITE;
/*!40000 ALTER TABLE `ENSEIGNANT` DISABLE KEYS */;
INSERT INTO `ENSEIGNANT` VALUES (0,'PRAST','M','Lemarechal','Yannick','Rue de la mer','29860','Le Drennec','FR','0600000000','0600000000','yl@univ-brest.fr','yl@gmail.com'),(1,'MCF','H','SALIOU1','Philippe','6 rue de l\'Argoat','29860','LE DRENNEC','FR','06.29.24.01.00','02.98.01.69.74','philippe.saliou@univ-brest.fr','philippe.saliou@gmail.com'),(2,'MCF','H','LALLALI','Mounir','18rue Jean Jaurès','29200','BREST','FR','06.32.03.56.32','02.08.01.67.32','mounir.lallali@univ-brest.fr','mouni.lallali@gmail.com'),(3,'PRAST','H','BOUREL','Guillaume','45 rue de SIAM','29200',' BREST','FR','06.21.76.89.28',NULL,'guillaume.bourel@univ-brest.fr',NULL),(4,'INT','H','LEROUX','Pierre','65 route de Gouesnou','29200','BREST','FR','06.45.95.47.29',NULL,'pierre.leroux@univ-brest.fr','pileroux@gmail.com'),(5,'MCF','H','KERBOEUF','Mickaël','63 rue de la Libération','29650','ST RENAN','FR','06.32.06.84.10',NULL,'mickael.kerboeuf@univ-brest.fr','mickael.kerboeuf@gmail.com'),(6,'INT','H','OLEO','François','65 rue Charles de Gaule','29260','LESNEVEN','FR','06.31.59.20.43',NULL,'francois.oleo@univ-brest.fr',NULL),(995,'PRAS','M','Pauly','Yann','XX rue du YYYYY','29490','XXXXXX','FR','0000000000','0000000000','yann.pauly@gmail.com','yann.pauly@gmail.com'),(996,'PRAS','M','Pauly','Yann','XX rue du YYYYY','29490','XXXXXX','FR','0000000000','0000000000','yann.pauly@gmail.com','yann.pauly@gmail.com'),(997,'PRAS','M','Pauly','Yann','XX rue du YYYYY','29490','XXXXXX','FR','0000000000','0000000000','yann.pauly@gmail.com','yann.pauly@gmail.com'),(998,'PRAS','M','Pauly','Yann','XX rue du YYYYY','29490','XXXXXX','FR','0000000000','0000000000','yann.pauly@gmail.com','yann.pauly@gmail.com'),(999,'PRAS','M','Pauly','Yann','29 rue du pont neuf','29490','GUIPAVAS','FR','0678598820','0678598820','yann.pauly@gmail.com','yann.pauly@gmail.com');
/*!40000 ALTER TABLE `ENSEIGNANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ETUDIANT`
--

DROP TABLE IF EXISTS `ETUDIANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ETUDIANT` (
  `NO_ETUDIANT` varchar(50) NOT NULL DEFAULT '' COMMENT 'Numéro National de l''étudiant',
  `CODE_FORMATION` varchar(8) DEFAULT NULL COMMENT 'Code de la formation suivie par l''étudiant',
  `ANNEE_UNIVERSITAIRE` varchar(10) DEFAULT NULL COMMENT 'Année universitaire suivie par l''étudiant. Ex. : 2014-2015.',
  `NOM` varchar(50) DEFAULT NULL COMMENT 'Nom de l''étudiant',
  `PRENOM` varchar(50) DEFAULT NULL COMMENT 'Prénom de l''étudiant',
  `SEXE` varchar(1) DEFAULT NULL COMMENT 'Sexe de l''étudiant : Homme ou Femme.',
  `DATE_NAISSANCE` datetime DEFAULT NULL COMMENT 'Date de naiisance de l''étudiant',
  `LIEU_NAISSANCE` varchar(255) DEFAULT NULL COMMENT 'Lieu de naissance de l''étudiant',
  `NATIONALITE` varchar(50) DEFAULT 'Française' COMMENT 'Nationalité de l''étudiant',
  `TELEPHONE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone fixe de l''étudiant',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone portable de l''étudiant',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT 'Adresse email personnel de l''étudiant',
  `EMAIL_UBO` varchar(255) DEFAULT NULL COMMENT 'Adresse email UBO de l''étudiant',
  `ADRESSE` varchar(255) DEFAULT NULL COMMENT 'Rue de l''étudiant pendant l''anne scolaire',
  `CODE_POSTAL` varchar(10) DEFAULT NULL COMMENT 'Code postal de l''étudiant pendant l''année scolaire',
  `VILLE` varchar(255) DEFAULT NULL COMMENT 'Ville de l''étudiant pendant l''année scolaire',
  `PAYS_ORIGINE` varchar(5) DEFAULT NULL COMMENT 'Pays d''origine de l''étudiant',
  `UNIVERSITE_ORIGINE` varchar(6) DEFAULT NULL COMMENT 'Université d''origine de l''étudiant',
  `GROUPE_TP` double DEFAULT NULL COMMENT 'N° du groupe de TP de l''étudiant',
  `GROUPE_ANGLAIS` double DEFAULT NULL COMMENT 'N° du groupe d''anglais de l''étudiant',
  PRIMARY KEY (`NO_ETUDIANT`),
  UNIQUE KEY `ETU_PK` (`NO_ETUDIANT`),
  KEY `ETU_PRO_FK_I` (`ANNEE_UNIVERSITAIRE`),
  KEY `ETU_PRO_FK` (`ANNEE_UNIVERSITAIRE`,`CODE_FORMATION`),
  CONSTRAINT `ETU_PRO_FK` FOREIGN KEY (`ANNEE_UNIVERSITAIRE`, `CODE_FORMATION`) REFERENCES `PROMOTION` (`ANNEE_UNIVERSITAIRE`, `CODE_FORMATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ETUDIANT`
--

LOCK TABLES `ETUDIANT` WRITE;
/*!40000 ALTER TABLE `ETUDIANT` DISABLE KEYS */;
INSERT INTO `ETUDIANT` VALUES ('1','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1992-02-09 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.etudiant@example.com','test.etudiant@example.com','2 rue des Archives','29287','BREST','MA','UAE',1,1),('10','M2DOSI','2013-2014','Test First Name','Test Last Name','M','1990-12-23 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.etudiant@example.com','test.etudiant@example.com','2 rue des Archives','29287','BREST','MA','UIT',1,1),('2','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1999-09-03 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.etudiant@example.com','test.etudiant@example.com','2 rue des Archives','29287','BREST','MA','UCAM',1,1),('3','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1991-11-02 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.etudiant@example.com','test.etudiant@example.com','2 rue des Archives','29287','BREST','MA','UIZ',1,1),('4','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1991-05-29 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.etudiant@example.com','test.etudiant@example.com','2 rue des Archives','29287','BREST','MA','UCAM',1,1),('5','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1992-09-11 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.etudiant@example.com','test.etudiant@example.com','2 rue des Archives','29287','BREST','MA','UIZ',1,1),('6','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1992-02-20 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.etudiant@example.com','test.etudiant@example.com','2 rue des Archives','29287','BREST','MA','UIZ',2,1),('7','M2DOSI','2014-2015','Test First Name','Test Last Name','M','1991-07-18 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.etudiant@example.com','test.etudiant@example.com','2 rue des Archives','29287','BREST','MA','UIT',1,1),('8','M2DOSI','2014-2015','Test First Name','Test Last Name','F','1992-02-04 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.etudiant@example.com','test.etudiant@example.com','2 rue des Archives','29287','BREST','MA','UIT',1,1),('9','M2DOSI','2014-2015','Test First Name','Test Last Name','F','1992-08-01 00:00:00','Test City','Marocaine',NULL,'000-000-0000','test.etudiant@example.com','test.etudiant@example.com','2 rue des Archives','29287','BREST','MA','UAE',1,1);
/*!40000 ALTER TABLE `ETUDIANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FORMATION`
--

DROP TABLE IF EXISTS `FORMATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FORMATION` (
  `CODE_FORMATION` varchar(8) NOT NULL DEFAULT '' COMMENT 'Code de la formation (Ex. : M2DOSI)',
  `DIPLOME` varchar(3) DEFAULT NULL COMMENT 'Type de diplôem préparé : Licence, Master ou Doctorat.',
  `N0_ANNEE` tinyint(4) DEFAULT '1' COMMENT 'Année de formation (Ex.: 2 pour Licence 2)',
  `NOM_FORMATION` varchar(64) DEFAULT NULL COMMENT 'Nom de  la formation',
  `DOUBLE_DIPLOME` char(1) DEFAULT NULL COMMENT 'Indique s''il s''agit d''un double dipôme ou non',
  `DEBUT_ACCREDITATION` datetime DEFAULT NULL COMMENT 'Date de début de validité de l''accréditation courante.',
  `FIN_ACCREDITATION` datetime DEFAULT NULL COMMENT 'Date de fin de validité de l''accréditation courante.',
  PRIMARY KEY (`CODE_FORMATION`),
  UNIQUE KEY `FRM_PK` (`CODE_FORMATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FORMATION`
--

LOCK TABLES `FORMATION` WRITE;
/*!40000 ALTER TABLE `FORMATION` DISABLE KEYS */;
INSERT INTO `FORMATION` VALUES ('M1TIIL','M',1,'Master technologie de l\'Information et Ingénierie du Logiciel','N','2012-09-01 00:00:00','2017-09-30 00:00:00'),('M2DOSI','M',2,'Master Développement à l\'Offshore des Systèmes d\'Information','O','2012-09-01 00:00:00','2017-09-30 00:00:00'),('M2LSE','M',2,'Master Logiciel pour Système Embarqué','N','2012-09-01 00:00:00','2017-09-30 00:00:00'),('M2TIIL','M',2,'Master technologie de l\'Information et Ingénierie du Logiciel','N','2012-09-01 00:00:00','2017-09-30 00:00:00');
/*!40000 ALTER TABLE `FORMATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROMOTION`
--

DROP TABLE IF EXISTS `PROMOTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROMOTION` (
  `CODE_FORMATION` varchar(8) DEFAULT NULL COMMENT 'Code de la formation',
  `ANNEE_UNIVERSITAIRE` varchar(10) DEFAULT NULL COMMENT 'Année universitaire. Ex. : 2014-2015',
  `NO_ENSEIGNANT` int(11) DEFAULT NULL COMMENT 'N° de l''enseignant responsable de la promotion.',
  `SIGLE_PROMOTION` varchar(16) DEFAULT NULL COMMENT 'Sigle de la promotion. Ex. : DOSI5 pour la 5ème promotion DOSI.',
  `NB_MAX_ETUDIANT` smallint(6) DEFAULT NULL COMMENT 'Nombre maximum d''étudiants que peut contenir la promotion.',
  `DATE_REPONSE_LP` datetime DEFAULT NULL COMMENT 'Date (au plus tard) à laquelle les candidats sur liste principale doivent donner leur réponse',
  `DATE_REPONSE_LALP` datetime DEFAULT NULL COMMENT 'Date (au plus tard) à laquelle les candidats passés de la liste d''attente à la liste principale doivent donner leur réponse',
  `DATE_RENTREE` datetime DEFAULT NULL COMMENT 'Date à laquelle la rentrée est prévue.',
  `LIEU_RENTREE` varchar(12) DEFAULT 'LC117A' COMMENT 'Salle où s''effectuera la rentrée',
  `PROCESSUS_STAGE` varchar(5) DEFAULT 'RECH' COMMENT 'Etat d''avancement du processus stage.',
  `COMMENTAIRE` varchar(255) DEFAULT NULL COMMENT 'Commentaire sur la promotion',
  UNIQUE KEY `PRO_PK` (`ANNEE_UNIVERSITAIRE`,`CODE_FORMATION`),
  KEY `PRO_ENS_FK_I` (`NO_ENSEIGNANT`),
  KEY `PRO_FRM_FK_I` (`CODE_FORMATION`),
  CONSTRAINT `PRO_FRM_FK` FOREIGN KEY (`CODE_FORMATION`) REFERENCES `FORMATION` (`CODE_FORMATION`),
  CONSTRAINT `PRO_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `ENSEIGNANT` (`NO_ENSEIGNANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROMOTION`
--

LOCK TABLES `PROMOTION` WRITE;
/*!40000 ALTER TABLE `PROMOTION` DISABLE KEYS */;
INSERT INTO `PROMOTION` VALUES ('M2DOSI','2013-2014',1,'DOSI4',24,'2013-05-04 00:00:00','2013-05-19 00:00:00','2013-09-07 00:00:00','LC117B','EC',NULL),('M2DOSI','2014-2015',1,'DOSI5',24,'2014-05-10 00:00:00','2014-05-19 00:00:00','2014-09-08 00:00:00','LC117B','RECH',NULL),('M1TIIL','2014-2015',6,NULL,60,'2014-07-10 00:00:00','2014-08-10 00:00:00','2014-09-01 00:00:00','LC117A','EC',NULL);
/*!40000 ALTER TABLE `PROMOTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UNITE_ENSEIGNEMENT`
--

DROP TABLE IF EXISTS `UNITE_ENSEIGNEMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UNITE_ENSEIGNEMENT` (
  `CODE_FORMATION` varchar(8) DEFAULT NULL COMMENT 'Code de la formation (Ex. : M2DOSI)',
  `CODE_UE` varchar(8) DEFAULT NULL COMMENT 'Code de l''Unité d''Enseignement (Ex. : ISI, J2EE, WEB, etc.)',
  `NO_ENSEIGNANT` int(11) DEFAULT NULL COMMENT 'N° de l''enseignant responsable de l''UC',
  `DESIGNATION` varchar(64) DEFAULT NULL COMMENT 'Désignation de l''Unité d''Enseignement.',
  `SEMESTRE` char(3) DEFAULT NULL COMMENT 'N° de semestre dans lequel l''UE doit être dispensée.',
  `DESCRIPTION` varchar(256) DEFAULT NULL COMMENT 'Description ou résumé de l''Unité d''Enseignement',
  `NBH_CM` decimal(38,0) DEFAULT NULL COMMENT 'Nb d''heures de Cours Magistraux (CM) dispensées dans l''UE.',
  `NBH_TD` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de Travaux Dirigés (TD) dispensées dans l''UE.',
  `NBH_TP` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de Travaux Pratiques (TP) dispensées dans l''UE.',
  UNIQUE KEY `UE_PK` (`CODE_FORMATION`,`CODE_UE`),
  KEY `UE_ENS_FK_I` (`NO_ENSEIGNANT`),
  KEY `UE_FRM_FK_I` (`CODE_FORMATION`),
  CONSTRAINT `UE_FRM_FK` FOREIGN KEY (`CODE_FORMATION`) REFERENCES `FORMATION` (`CODE_FORMATION`),
  CONSTRAINT `UE_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `ENSEIGNANT` (`NO_ENSEIGNANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Unité d''Enseignement';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UNITE_ENSEIGNEMENT`
--

LOCK TABLES `UNITE_ENSEIGNEMENT` WRITE;
/*!40000 ALTER TABLE `UNITE_ENSEIGNEMENT` DISABLE KEYS */;
INSERT INTO `UNITE_ENSEIGNEMENT` VALUES ('M2DOSI','ISI',1,'Ingénierie des Systèmes d\'Information','9',NULL,20,20,20),('M2DOSI','IDL',1,'Ingénierie de Développement Logiciel','9',NULL,20,20,20),('M2DOSI','J2EE',2,'Java/J2EE','9',NULL,20,20,20),('M2DOSI','SR',2,'Systèmes Répartis','10',NULL,20,20,20),('M2DOSI','EDE',3,'Environnement de Développement','9',NULL,0,0,48),('M2DOSI','WEB',3,'Langages du WEB','9',NULL,20,20,20),('M2DOSI','CO',5,'Conception Objet','9',NULL,20,20,20),('M2DOSI','PCO',1,'Préparation au Contexte de l\'Offshore','10',NULL,16,16,16);
/*!40000 ALTER TABLE `UNITE_ENSEIGNEMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `V_DIPLOME`
--

DROP TABLE IF EXISTS `V_DIPLOME`;
/*!50001 DROP VIEW IF EXISTS `V_DIPLOME`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `V_DIPLOME` (
  `CODE` tinyint NOT NULL,
  `ABREVIATION` tinyint NOT NULL,
  `SIGNIFICATION` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `V_LISTE_SELECTION`
--

DROP TABLE IF EXISTS `V_LISTE_SELECTION`;
/*!50001 DROP VIEW IF EXISTS `V_LISTE_SELECTION`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `V_LISTE_SELECTION` (
  `CODE` tinyint NOT NULL,
  `ABREVIATION` tinyint NOT NULL,
  `SIGNIFICATION` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `V_OUI_NON`
--

DROP TABLE IF EXISTS `V_OUI_NON`;
/*!50001 DROP VIEW IF EXISTS `V_OUI_NON`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `V_OUI_NON` (
  `CODE` tinyint NOT NULL,
  `ABREVIATION` tinyint NOT NULL,
  `SIGNIFICATION` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `V_PAYS`
--

DROP TABLE IF EXISTS `V_PAYS`;
/*!50001 DROP VIEW IF EXISTS `V_PAYS`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `V_PAYS` (
  `CODE` tinyint NOT NULL,
  `ABREVIATION` tinyint NOT NULL,
  `SIGNIFICATION` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `V_PROCESSUS_STAGE`
--

DROP TABLE IF EXISTS `V_PROCESSUS_STAGE`;
/*!50001 DROP VIEW IF EXISTS `V_PROCESSUS_STAGE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `V_PROCESSUS_STAGE` (
  `CODE` tinyint NOT NULL,
  `ABREVIATION` tinyint NOT NULL,
  `SIGNIFICATION` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `V_SALLE`
--

DROP TABLE IF EXISTS `V_SALLE`;
/*!50001 DROP VIEW IF EXISTS `V_SALLE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `V_SALLE` (
  `CODE` tinyint NOT NULL,
  `ABREVIATION` tinyint NOT NULL,
  `SIGNIFICATION` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `V_SEMESTRE`
--

DROP TABLE IF EXISTS `V_SEMESTRE`;
/*!50001 DROP VIEW IF EXISTS `V_SEMESTRE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `V_SEMESTRE` (
  `CODE` tinyint NOT NULL,
  `ABREVIATION` tinyint NOT NULL,
  `SIGNIFICATION` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `V_SEXE`
--

DROP TABLE IF EXISTS `V_SEXE`;
/*!50001 DROP VIEW IF EXISTS `V_SEXE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `V_SEXE` (
  `CODE` tinyint NOT NULL,
  `ABREVIATION` tinyint NOT NULL,
  `SIGNIFICATION` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `V_TYPE_ENSEIGNANT`
--

DROP TABLE IF EXISTS `V_TYPE_ENSEIGNANT`;
/*!50001 DROP VIEW IF EXISTS `V_TYPE_ENSEIGNANT`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `V_TYPE_ENSEIGNANT` (
  `CODE` tinyint NOT NULL,
  `ABREVIATION` tinyint NOT NULL,
  `SIGNIFICATION` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `V_UNIVERSITE`
--

DROP TABLE IF EXISTS `V_UNIVERSITE`;
/*!50001 DROP VIEW IF EXISTS `V_UNIVERSITE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `V_UNIVERSITE` (
  `CODE` tinyint NOT NULL,
  `ABREVIATION` tinyint NOT NULL,
  `SIGNIFICATION` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;
