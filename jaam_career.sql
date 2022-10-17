-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: jaamcareer
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `currency_type`
--

DROP TABLE IF EXISTS `currency_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_type` (
  `currency_id` int NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_type`
--

LOCK TABLES `currency_type` WRITE;
/*!40000 ALTER TABLE `currency_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `currency_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_details`
--

DROP TABLE IF EXISTS `job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_details` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `postedby_id` int DEFAULT NULL,
  `jobtype_id` int DEFAULT NULL,
  `jobcreated_date` date DEFAULT NULL,
  `job_description` varchar(1000) DEFAULT NULL,
  `joblocation_id` int DEFAULT NULL,
  `jobrole_id` int DEFAULT NULL,
  `joblast_date` date DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `jobskills_reqid` int DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  KEY `postedby_id` (`postedby_id`),
  KEY `jobtype_id` (`jobtype_id`),
  KEY `joblocation_id` (`joblocation_id`),
  KEY `jobrole_id` (`jobrole_id`),
  KEY `jobskills_reqid` (`jobskills_reqid`),
  CONSTRAINT `job_details_ibfk_1` FOREIGN KEY (`postedby_id`) REFERENCES `user_account` (`user_id`),
  CONSTRAINT `job_details_ibfk_2` FOREIGN KEY (`jobtype_id`) REFERENCES `job_type` (`jobtype_id`),
  CONSTRAINT `job_details_ibfk_3` FOREIGN KEY (`joblocation_id`) REFERENCES `job_location` (`jobloca_id`),
  CONSTRAINT `job_details_ibfk_4` FOREIGN KEY (`jobrole_id`) REFERENCES `job_role` (`role_id`),
  CONSTRAINT `job_details_ibfk_5` FOREIGN KEY (`jobskills_reqid`) REFERENCES `jobskill_set` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_details`
--

LOCK TABLES `job_details` WRITE;
/*!40000 ALTER TABLE `job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_location`
--

DROP TABLE IF EXISTS `job_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_location` (
  `jobloca_id` int NOT NULL AUTO_INCREMENT,
  `jobloca_name` varchar(50) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`jobloca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_location`
--

LOCK TABLES `job_location` WRITE;
/*!40000 ALTER TABLE `job_location` DISABLE KEYS */;
INSERT INTO `job_location` VALUES (1,'India','abc','chennai','TN','India','600100'),(2,'US-Utah','hhjok','jdfkl','Utah','US','548484'),(3,'US-Pleasanton,CA','kljsdf','Pleasanton','CA','US','6566454'),(4,'UK-London','sdhfh','London','khjk','UK','547844');
/*!40000 ALTER TABLE `job_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_role`
--

DROP TABLE IF EXISTS `job_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_role`
--

LOCK TABLES `job_role` WRITE;
/*!40000 ALTER TABLE `job_role` DISABLE KEYS */;
INSERT INTO `job_role` VALUES (1,'CEO'),(2,'President'),(3,'CTO'),(4,'VP of Product Management'),(5,'Product Manager'),(6,'VP of Marketing'),(7,'VP of Engineering'),(8,'Chief Architect'),(9,'Software Architect'),(10,'Project Manager'),(11,'Team Lead'),(12,'Full stack Developer'),(13,'Senior Software Developer'),(14,'Junior Software Developer'),(15,'Intern Software Developer');
/*!40000 ALTER TABLE `job_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_type`
--

DROP TABLE IF EXISTS `job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_type` (
  `jobtype_id` int NOT NULL AUTO_INCREMENT,
  `jobtype_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jobtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_type`
--

LOCK TABLES `job_type` WRITE;
/*!40000 ALTER TABLE `job_type` DISABLE KEYS */;
INSERT INTO `job_type` VALUES (1,'FullTime'),(2,'PartTime'),(3,'InternStudent'),(4,'WorkFromHome');
/*!40000 ALTER TABLE `job_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobdetails`
--

DROP TABLE IF EXISTS `jobdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobdetails` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `job_title` varchar(20) DEFAULT NULL,
  `job_description` varchar(1000) DEFAULT NULL,
  `job_location` varchar(20) DEFAULT NULL,
  `job_nature` varchar(20) DEFAULT NULL,
  `joblast_date` date DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobdetails`
--

LOCK TABLES `jobdetails` WRITE;
/*!40000 ALTER TABLE `jobdetails` DISABLE KEYS */;
INSERT INTO `jobdetails` VALUES (1,'Team Lead','Oversees a group of employees','melbourne','FullTime','2022-12-03',1),(2,'Sr.Developer','Angular development with 2 yrs of experience','India','WFH','2022-12-03',1);
/*!40000 ALTER TABLE `jobdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobpost_skillset`
--

DROP TABLE IF EXISTS `jobpost_skillset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobpost_skillset` (
  `skillset_id` int DEFAULT NULL,
  `jobpost_id` int DEFAULT NULL,
  `skill_level` int DEFAULT NULL,
  KEY `skillset_id` (`skillset_id`),
  KEY `jobpost_id` (`jobpost_id`),
  CONSTRAINT `jobpost_skillset_ibfk_1` FOREIGN KEY (`skillset_id`) REFERENCES `jobskill_set` (`skill_id`),
  CONSTRAINT `jobpost_skillset_ibfk_2` FOREIGN KEY (`jobpost_id`) REFERENCES `job_details` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobpost_skillset`
--

LOCK TABLES `jobpost_skillset` WRITE;
/*!40000 ALTER TABLE `jobpost_skillset` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobpost_skillset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobseeker_education`
--

DROP TABLE IF EXISTS `jobseeker_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobseeker_education` (
  `jobseeker_id` int DEFAULT NULL,
  `degree_name` varchar(5) DEFAULT NULL,
  `degree_major` varchar(25) DEFAULT NULL,
  `university_name` varchar(50) DEFAULT NULL,
  `start_data` date DEFAULT NULL,
  `completed_date` date DEFAULT NULL,
  `percentage` double DEFAULT NULL,
  `cgpa` double DEFAULT NULL,
  KEY `jobseeker_id` (`jobseeker_id`),
  CONSTRAINT `jobseeker_education_ibfk_1` FOREIGN KEY (`jobseeker_id`) REFERENCES `user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobseeker_education`
--

LOCK TABLES `jobseeker_education` WRITE;
/*!40000 ALTER TABLE `jobseeker_education` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobseeker_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobseeker_experience`
--

DROP TABLE IF EXISTS `jobseeker_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobseeker_experience` (
  `jobseeker_id` int DEFAULT NULL,
  `company_name` varchar(20) DEFAULT NULL,
  `iscurr_job` char(1) DEFAULT NULL,
  `start_data` date DEFAULT NULL,
  `completed_date` date DEFAULT NULL,
  `job_title` varchar(20) DEFAULT NULL,
  `emp_id` varchar(20) DEFAULT NULL,
  `job_location` varchar(20) DEFAULT NULL,
  KEY `jobseeker_id` (`jobseeker_id`),
  CONSTRAINT `jobseeker_experience_ibfk_1` FOREIGN KEY (`jobseeker_id`) REFERENCES `user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobseeker_experience`
--

LOCK TABLES `jobseeker_experience` WRITE;
/*!40000 ALTER TABLE `jobseeker_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobseeker_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobseeker_profile`
--

DROP TABLE IF EXISTS `jobseeker_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobseeker_profile` (
  `jobseeker_id` int DEFAULT NULL,
  `jobapplied_id` int DEFAULT NULL,
  `jobskillset_id` int DEFAULT NULL,
  `annualcurrent_salary` double DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `skill_level` int DEFAULT NULL,
  `edu_break` char(1) DEFAULT NULL,
  `edubrk_reason` varchar(20) DEFAULT NULL,
  `career_brk` char(1) DEFAULT NULL,
  `career_brkreason` varchar(20) DEFAULT NULL,
  KEY `jobseeker_id` (`jobseeker_id`),
  KEY `jobapplied_id` (`jobapplied_id`),
  KEY `jobskillset_id` (`jobskillset_id`),
  KEY `currency_id` (`currency_id`),
  CONSTRAINT `jobseeker_profile_ibfk_1` FOREIGN KEY (`jobseeker_id`) REFERENCES `user_account` (`user_id`),
  CONSTRAINT `jobseeker_profile_ibfk_2` FOREIGN KEY (`jobapplied_id`) REFERENCES `job_details` (`job_id`),
  CONSTRAINT `jobseeker_profile_ibfk_3` FOREIGN KEY (`jobskillset_id`) REFERENCES `jobskill_set` (`skill_id`),
  CONSTRAINT `jobseeker_profile_ibfk_4` FOREIGN KEY (`currency_id`) REFERENCES `currency_type` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobseeker_profile`
--

LOCK TABLES `jobseeker_profile` WRITE;
/*!40000 ALTER TABLE `jobseeker_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobseeker_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobseeker_resume`
--

DROP TABLE IF EXISTS `jobseeker_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobseeker_resume` (
  `jobseeker_id` int DEFAULT NULL,
  `seeker_resume` blob,
  KEY `jobseeker_id` (`jobseeker_id`),
  CONSTRAINT `jobseeker_resume_ibfk_1` FOREIGN KEY (`jobseeker_id`) REFERENCES `user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobseeker_resume`
--

LOCK TABLES `jobseeker_resume` WRITE;
/*!40000 ALTER TABLE `jobseeker_resume` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobseeker_resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobskill_set`
--

DROP TABLE IF EXISTS `jobskill_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobskill_set` (
  `skill_id` int NOT NULL AUTO_INCREMENT,
  `skill_setname` varchar(25) DEFAULT NULL,
  `skill_setdesc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobskill_set`
--

LOCK TABLES `jobskill_set` WRITE;
/*!40000 ALTER TABLE `jobskill_set` DISABLE KEYS */;
INSERT INTO `jobskill_set` VALUES (1,'Angular developer','npm,HTML and CSS,Angular cli,TypeScript,RxJS,version control'),(2,'.net developer','ASP.NET MVC,c#,HTML and CSS,Angular cli,TypeScript,RxJS,version control');
/*!40000 ALTER TABLE `jobskill_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology_type`
--

DROP TABLE IF EXISTS `technology_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology_type` (
  `tech_id` int NOT NULL AUTO_INCREMENT,
  `tech_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tech_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology_type`
--

LOCK TABLES `technology_type` WRITE;
/*!40000 ALTER TABLE `technology_type` DISABLE KEYS */;
INSERT INTO `technology_type` VALUES (1,'C'),(2,'C++'),(3,'Angular'),(4,'ReactJS'),(5,'MuleSoft'),(6,'Front-end');
/*!40000 ALTER TABLE `technology_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `usertype_id` int DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `login_password` varchar(20) DEFAULT NULL,
  `dateof_birth` date DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `sms_notification` char(1) DEFAULT NULL,
  `email_notification` char(1) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `usertype_id` (`usertype_id`),
  CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`usertype_id`) REFERENCES `user_type` (`usertype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,1,'aruna.gurunathan@jaam.co','admin','1990-01-01','Y','9876543210','Y','Y','2022-10-10','Aruna','Gurunathan'),(2,5,'garunanath@gmail.com','admin','1990-01-01','Y','9876543210','Y','Y','2022-10-10','Team','Leadview'),(3,3,'arunaguru999@gmail.com','admin','1990-01-01','Y','9876543210','Y','Y','2022-10-10','Job','seekerview');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `usertype_id` int NOT NULL AUTO_INCREMENT,
  `usertype_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`usertype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,'administrator'),(2,'Project Manager'),(3,'Job seeker'),(4,'HR'),(5,'Team Lead'),(6,'Developer');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'jaamcareer'
--

--
-- Dumping routines for database 'jaamcareer'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-17 16:28:03
