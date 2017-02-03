CREATE DATABASE  IF NOT EXISTS `Gamer Project` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Gamer Project`;
-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: Gamer Project
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1

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
-- Table structure for table `GameList_TBL`
--

DROP TABLE IF EXISTS `GameList_TBL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GameList_TBL` (
  `Player_ID` int(4) NOT NULL,
  `Service_ID` int(3) NOT NULL,
  `Game_ID` int(6) NOT NULL,
  KEY `Game_ID_idx` (`Game_ID`),
  KEY `FK_GameList_Player_ID` (`Player_ID`),
  KEY `FK_GameList_Service_ID` (`Service_ID`),
  CONSTRAINT `FK_Gamelist_Game` FOREIGN KEY (`Game_ID`) REFERENCES `Game_TBL` (`Game_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_GameList_Player_ID` FOREIGN KEY (`Player_ID`) REFERENCES `Player_TBL` (`Player_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_GameList_Service_ID` FOREIGN KEY (`Service_ID`) REFERENCES `Services_TBL` (`Service_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GameList_TBL`
--

LOCK TABLES `GameList_TBL` WRITE;
/*!40000 ALTER TABLE `GameList_TBL` DISABLE KEYS */;
/*!40000 ALTER TABLE `GameList_TBL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Game_TBL`
--

DROP TABLE IF EXISTS `Game_TBL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Game_TBL` (
  `Game_ID` int(6) NOT NULL AUTO_INCREMENT,
  `Game_Name` varchar(60) NOT NULL,
  PRIMARY KEY (`Game_ID`),
  UNIQUE KEY `Game_Name_UNIQUE` (`Game_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Game_TBL`
--

LOCK TABLES `Game_TBL` WRITE;
/*!40000 ALTER TABLE `Game_TBL` DISABLE KEYS */;
INSERT INTO `Game_TBL` VALUES (16,'12 is Better Then 6'),(39,'7 Days to Die'),(17,'A New Beginning - Final Cut'),(18,'A Story About My Uncle'),(40,'A Virus Named TOM'),(19,'A Wolf in Autumn'),(20,'Aaru\'s Awakening'),(21,'Absolute Drift'),(41,'ACE COMBAT ASSAULT HORIZON Enhanced Edition'),(42,'Ace of Spades'),(22,'Afterfall In Sanity Extended Edition'),(43,'Air Brawl'),(23,'Airscape: The Fall of Gravity'),(1,'Alice: Madness Returns'),(44,'Alien Swarm'),(25,'Alien: Isolation'),(26,'Alpha Protocol'),(45,'Altitude'),(27,'Amnesia: The Dark Descent'),(28,'And Yet It Moves'),(29,'Anna'),(30,'Anodyne'),(31,'Another World'),(32,'Antichamber'),(46,'Aperture Tag: The Paint Gun Testing Initiative'),(33,'Aquaria'),(47,'ARK: Survival Evolved'),(48,'ARK: Survival Of The Fittest'),(34,'Arkshot'),(35,'Armello'),(49,'Assassin\'s Creed Brotherhood'),(6,'Assassin\'s Creed Chronicles: China'),(36,'Assassin\'s Creed Freedom Cry'),(9,'Assassin\'s Creed II'),(50,'Assassin\'s Creed IV Black Flag'),(7,'Assassin\'s Creed: Brotherhood'),(8,'Assassin\'s Creed: Rogue'),(51,'Assassins Creed III'),(52,'Atom Zombie Smasher'),(38,'Avadon: The Black Fortress'),(53,'Awesomenauts'),(54,'Banished'),(55,'Batman: Arkham Asylum GOTY Edition'),(56,'Batman: Arkham City GOTY'),(59,'Batman: Arkham Knight'),(57,'Batman: Arkham Origins'),(58,'Batman: Arkham Origins Blackgate - Deluxe Editions'),(60,'Battle Ranch'),(61,'BattleBlock Theater'),(62,'Beat Hazard'),(63,'Beatbuddy: Tale of the Guardians'),(64,'Bedlam'),(65,'Betrayer'),(66,'Binary Domain'),(67,'Bionic Commando'),(68,'Bionic Commando Rearmed'),(69,'BIT.TRIP RUNNER'),(70,'Black & White Bushido'),(71,'Blackguards'),(72,'Blood Bowl: Legendary Edition'),(73,'Blue Sheep'),(74,'Blues and Bullets'),(75,'Bob Came in Pieces'),(76,'Bob Was Hungry'),(77,'Borderlands'),(78,'Borderlands 2'),(79,'Borderlands: The Pre-Sequel'),(80,'Botanicula'),(81,'Braid'),(82,'Brawlhalla'),(83,'Broforce'),(84,'Broken Sword: Shadow of the Templars - Director\'s Cut'),(85,'Brothers - A Tale of Two Sons'),(86,'Bulletstorm'),(87,'Burnout Paradise: The Ultimate Box'),(11,'Child of Light'),(2,'Dead Space 3'),(12,'Driver: San Francisco'),(13,'Far Cry 3'),(14,'Far Cry 3: Blood Dragon'),(15,'Flashback'),(3,'Jade Empire'),(4,'Mass Effect 2'),(5,'Need For Speed: Most Wanted'),(10,'The Crew');
/*!40000 ALTER TABLE `Game_TBL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PlayerServices_TBL`
--

DROP TABLE IF EXISTS `PlayerServices_TBL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PlayerServices_TBL` (
  `Player_ID` int(4) NOT NULL,
  `Service_ID` int(3) NOT NULL,
  `Handle_Name` varchar(30) NOT NULL,
  KEY `fk_PlayerServices_TBL_1_idx` (`Service_ID`),
  KEY `PlayerServices_Player_FK_idx` (`Player_ID`),
  CONSTRAINT `FK_PlayerServices_Player_ID` FOREIGN KEY (`Player_ID`) REFERENCES `Player_TBL` (`Player_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PlayerServices_Service_ID` FOREIGN KEY (`Service_ID`) REFERENCES `Services_TBL` (`Service_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlayerServices_TBL`
--

LOCK TABLES `PlayerServices_TBL` WRITE;
/*!40000 ALTER TABLE `PlayerServices_TBL` DISABLE KEYS */;
/*!40000 ALTER TABLE `PlayerServices_TBL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Player_TBL`
--

DROP TABLE IF EXISTS `Player_TBL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Player_TBL` (
  `Player_ID` int(4) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(30) NOT NULL,
  `Last_Initial` varchar(1) NOT NULL,
  `City_Name` varchar(58) DEFAULT NULL,
  `State_Code` varchar(2) DEFAULT NULL,
  `Country_Code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Player_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Player_TBL`
--

LOCK TABLES `Player_TBL` WRITE;
/*!40000 ALTER TABLE `Player_TBL` DISABLE KEYS */;
INSERT INTO `Player_TBL` VALUES (1,'Vince','W','Portland','OR','USA'),(2,'Zeb','K','Portland','OR','USA');
/*!40000 ALTER TABLE `Player_TBL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Services_TBL`
--

DROP TABLE IF EXISTS `Services_TBL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Services_TBL` (
  `Service_ID` int(3) NOT NULL,
  `Service_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Service_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Services_TBL`
--

LOCK TABLES `Services_TBL` WRITE;
/*!40000 ALTER TABLE `Services_TBL` DISABLE KEYS */;
INSERT INTO `Services_TBL` VALUES (0,'Stand Alone'),(1,'Steam'),(2,'XBLA'),(3,'PSN'),(4,'Nintendo Network ID'),(5,'Uplay'),(6,'Origin'),(7,'Bnet');
/*!40000 ALTER TABLE `Services_TBL` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-02 22:05:47
