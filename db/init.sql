-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: qrcode
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `qr_dynamic_qrcodes`
--

DROP TABLE IF EXISTS `qr_dynamic_qrcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qr_dynamic_qrcodes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_owner` int DEFAULT NULL,
  `filename` varchar(45) NOT NULL,
  `format` varchar(45) DEFAULT NULL,
  `identifier` longtext,
  `link` varchar(500) DEFAULT NULL,
  `qrcode` varchar(60) DEFAULT NULL,
  `scan` int NOT NULL DEFAULT '0',
  `state` varchar(20) NOT NULL DEFAULT 'enable',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int unsigned NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_dynamic_qrcodes`
--

LOCK TABLES `qr_dynamic_qrcodes` WRITE;
/*!40000 ALTER TABLE `qr_dynamic_qrcodes` DISABLE KEYS */;
INSERT INTO `qr_dynamic_qrcodes` VALUES (1,1,'Facebook','png','rcCeC','https://facebook.com','Facebook.png',0,'enable',0,'2020-09-01 15:35:13',0,NULL),(2,1,'Amazon','png','F7GOY6','https://amazon.com','Amazon.png',0,'enable',0,'2020-09-01 15:40:34',0,NULL),(3,1,'Youtube','png','8dK5Nd','https://youtube.com','Youtube.png',0,'enable',0,'2020-09-01 15:41:43',0,NULL),(4,1,'Apple','jpg','7zxTKn','https://apple.com','Apple.jpg',0,'enable',0,'2020-09-01 15:44:20',0,NULL),(6,1,'Google','png','saJV1y','https://google.it','Google.png',0,'enable',0,'2020-09-01 15:46:37',0,NULL);
/*!40000 ALTER TABLE `qr_dynamic_qrcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qr_static_qrcodes`
--

DROP TABLE IF EXISTS `qr_static_qrcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qr_static_qrcodes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_owner` int DEFAULT NULL,
  `filename` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `format` varchar(45) DEFAULT NULL,
  `type` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `qrcode` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'enable',
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int unsigned NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_static_qrcodes`
--

LOCK TABLES `qr_static_qrcodes` WRITE;
/*!40000 ALTER TABLE `qr_static_qrcodes` DISABLE KEYS */;
INSERT INTO `qr_static_qrcodes` VALUES (1,1,'Text qr code','png','text','<strong>Text:</strong> My first text','Text qr code.png','enable',0,'2020-08-24 08:41:31',0,NULL),(2,1,'Email','jpg','email','<strong>Email:</strong> assistance@domain.com<br><strong>Subject:</strong> Assistance request<br><strong>Message:</strong> Regarding my order N ° ... I require assistance','Email.jpg','enable',0,'2020-08-24 08:44:13',0,NULL),(3,1,'Call me','png','phone','<strong>Phone number:</strong> 12563776756','Call me.png','enable',0,'2020-08-24 08:45:10',0,NULL),(4,1,'Send sms','png','sms','<strong>Phone number:</strong> 12563776756<br><strong>Message:</strong> Test message','Send sms.png','enable',0,'2020-08-24 08:46:52',0,NULL),(5,1,'wa.me','svg','whatsapp','<strong>Phone number:</strong> 12563776756<br><strong>Message:</strong> Hey there! I am using WhatsApp','wa.me.svg','enable',0,'2020-08-24 08:47:49',0,NULL),(6,1,'New York','png','location','<strong>Latitude:</strong> 40.7127753<br><strong>Longitude:</strong> -74.0059728','New York.png','enable',0,'2020-08-24 08:51:55',0,NULL),(7,1,'John Doe','png','vcard','<div class=\"row\"><div class=\"col-sm-4\"><strong>Full name:</strong> John Doe<br><strong>Nickname:</strong> John<br><strong>Email:</strong> john@domain.com<br><strong>Website:</strong> https://johndoe.com</div><div class=\"col-sm-4\"><strong>Company:</strong> Doe Inc.<br><strong>Role:</strong> CEO<br><strong>Categories:</strong> electronics, vcard<br><strong>Note:</strong> </div><div class=\"col-sm-4\"><strong>Phone:</strong> 412-999-9988<br><strong>Home Phone:</strong> 412-999-5555<br><strong>Work phone:</strong> 412-444-2222<br><strong>Address:</strong> 123 Main Street&nbsp;Anywhere&nbsp;15523&nbsp;Arizona</div></div>','John Doe.png','enable',0,'2020-08-24 08:55:59',0,NULL),(8,1,'Boat party','png','event','<div class=\"row\"><div class=\"col-sm-4\"><strong>Title:</strong> Party with friends<br><strong>Start event:</strong> 2020-08-26 09:00 AM<br><strong>End event:</strong> 2020-08-26 03:00 PM<br></div><div class=\"col-sm-4\"><strong>Location:</strong> New York<br><strong>Description:</strong> Happy Birthday Carl!<br><strong>URL:</strong> </div></div>','Boat party.png','enable',0,'2020-08-24 08:58:20',0,NULL),(9,1,'Save me','svg','bookmark','<strong>Title:</strong> Google search<br><strong>Url:</strong> https://google.it','Save me.svg','enable',0,'2020-08-24 08:59:46',0,NULL),(10,1,'Free wifi','png','wifi','<strong>Encryption:</strong> WPA<br><strong>SSID:</strong> TP-LINK-AB123<br><strong>Password:</strong> bBB8MR7TwbbUWMZT','Free wifi.png','enable',0,'2020-08-24 09:02:35',0,NULL),(11,1,'Pay here','png','paypal','<div class=\"row\"><div class=\"col-sm-4\"><strong>Payment type:</strong> _click<br><strong>Email:</strong> paypal@domain.com<br><strong>Item name:</strong> T-shirt<br><strong>Item id:</strong> 177</div><div class=\"col-sm-4\"><strong>Amount:</strong> 15<br><strong>Currency:</strong> USD<br><strong>Shipping:</strong> 4<br><strong>Tax rate:</strong> </div></div>','Pay here.png','enable',0,'2020-08-24 09:04:13',0,NULL),(12,1,'Send BTC','jpg','bitcoin','<strong>BTC address:</strong> 1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa<br><strong>Amount:</strong> 1<br><strong>Label:</strong> <br><strong>Message:</strong> ','Send BTC.jpg','enable',0,'2020-09-01 10:51:08',0,NULL);
/*!40000 ALTER TABLE `qr_static_qrcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qr_users`
--

DROP TABLE IF EXISTS `qr_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qr_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `series_id` varchar(60) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_users`
--

LOCK TABLES `qr_users` WRITE;
/*!40000 ALTER TABLE `qr_users` DISABLE KEYS */;
INSERT INTO `qr_users` VALUES (1,'superadmin','$2y$10$xpZc5KC.aU2XHkcqhuZGFuAnqmtL4Unt8MysOyylceq.19XIyoZpG','k43iP2r2MUEsCDxS','$2y$10$VrpgVEbm9AS2j8QB3NBEX.lzErtXnns3DLUH3DTDHNKOBaNC9ZYQW','2025-05-06 21:22:21','super');
/*!40000 ALTER TABLE `qr_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-06 21:36:45
