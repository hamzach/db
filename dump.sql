-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.04.1
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,POSTGRESQL' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: "test"
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "test" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "test";

--
-- Table structure for table "education"
--

DROP TABLE IF EXISTS "education";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "education" (
  "UserID" int(11) NOT NULL,
  "School" varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  "Start_Date" year(4) NOT NULL,
  "End_Date" year(4) NOT NULL,
  "Degree" varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  "Field" varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "education"
--

LOCK TABLES "education" WRITE;
/*!40000 ALTER TABLE "education" DISABLE KEYS */;
/*!40000 ALTER TABLE "education" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "friendship"
--

DROP TABLE IF EXISTS "friendship";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "friendship" (
  "User1" int(11) NOT NULL,
  "User2" int(11) NOT NULL,
  "isFriend" tinyint(1) NOT NULL,
  KEY "User1" ("User1","User2")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "friendship"
--

LOCK TABLES "friendship" WRITE;
/*!40000 ALTER TABLE "friendship" DISABLE KEYS */;
/*!40000 ALTER TABLE "friendship" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "profile"
--

DROP TABLE IF EXISTS "profile";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "profile" (
  "UserID" int(11) NOT NULL,
  "Country" varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  "Postal_Code" varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  "User_Type" varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  "Job_Title" varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  "Self_Employed" tinyint(1) DEFAULT NULL,
  "Company" varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  "Industry" varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  "School" varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  "Date_From" year(4) DEFAULT NULL,
  "Date_To" year(4) DEFAULT NULL,
  PRIMARY KEY ("UserID")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "profile"
--

LOCK TABLES "profile" WRITE;
/*!40000 ALTER TABLE "profile" DISABLE KEYS */;
/*!40000 ALTER TABLE "profile" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "user"
--

DROP TABLE IF EXISTS "user";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "user" (
  "UserID" int(11) NOT NULL,
  "First_Name" varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  "Last_Name" varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  "Email" varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  "Password" varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  "Picture" varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY ("UserID"),
  UNIQUE KEY "Email" ("Email")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "user"
--

LOCK TABLES "user" WRITE;
/*!40000 ALTER TABLE "user" DISABLE KEYS */;
/*!40000 ALTER TABLE "user" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-14 17:05:07
