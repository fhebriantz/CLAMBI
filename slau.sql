-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: db_slau
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('e3khm5smeadhd82b8c4suprlrp','139.194.10.167',1539068008,'__ci_last_regenerate|i:1539068008;'),('8r9ddf3d0trb7ffghq39lshtdm','139.194.10.167',1539068027,''),('lff8ie21n83t5rhu5ebmjp6ffr','139.194.10.167',1539068035,''),('oj1q4v94769nlhahpanrdgl1mu','139.194.10.167',1539068049,'__ci_last_regenerate|i:1539068048;success|s:54:\"Thank You For Contact Us. The Data Has Been Processed.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),('jie1hrhqqqefj6q6u5vhih52c3','139.194.10.167',1539068049,'__ci_last_regenerate|i:1539068049;'),('l4f7g1co369prvvfpj98acn14f','139.194.10.167',1539070869,'__ci_last_regenerate|i:1539070869;'),('k9nbm07nvnguh2s810s37dih47','139.194.10.167',1539070872,'__ci_last_regenerate|i:1539070872;'),('uoibglov5aakfs6alf9dmho4q4','114.124.244.196',1539086035,'__ci_last_regenerate|i:1539086035;'),('nkukrqatcek8pgpvtdgpf8jle0','114.124.244.117',1539086096,'__ci_last_regenerate|i:1539086096;'),('j5heso0lm2qh3rphnl2q2r6ped','114.124.214.245',1539086099,'__ci_last_regenerate|i:1539086099;'),('urviin2nj0g0qf4isvalk504t4','114.124.213.28',1539086100,'__ci_last_regenerate|i:1539086100;'),('jk9ic6urgt8gq9lq88gbrlv19d','118.136.7.198',1539126397,'__ci_last_regenerate|i:1539126397;'),('jv2mpqj6943f52ess475as2isq','36.84.71.126',1539134856,'__ci_last_regenerate|i:1539134856;'),('oscj9pjfben32cu6ffh0de3d2o','139.194.10.112',1539165236,'__ci_last_regenerate|i:1539165236;');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_item_laundry`
--

DROP TABLE IF EXISTS `dt_item_laundry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_item_laundry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_laundry` int(11) NOT NULL,
  `item` varchar(256) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `price_dryclean` bigint(20) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_item_laundry`
--

LOCK TABLES `dt_item_laundry` WRITE;
/*!40000 ALTER TABLE `dt_item_laundry` DISABLE KEYS */;
INSERT INTO `dt_item_laundry` VALUES (1,1,'BAJU','1',2500,2000,1,1),(2,1,'CELANA','1',3000,6000,1,1),(3,2,'BAJU','1',3000,6000,4,1),(4,2,'Jaket','1',3000,6000,1,1),(5,3,'Jaket','1',5000,7000,1,1),(6,3,'Jaket','1',5000,7000,1,1);
/*!40000 ALTER TABLE `dt_item_laundry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_item_laundry_history`
--

DROP TABLE IF EXISTS `dt_item_laundry_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_item_laundry_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_laundry` int(11) NOT NULL,
  `item` varchar(256) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `price_dryclean` bigint(20) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_item_laundry_history`
--

LOCK TABLES `dt_item_laundry_history` WRITE;
/*!40000 ALTER TABLE `dt_item_laundry_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `dt_item_laundry_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_payment_laundry`
--

DROP TABLE IF EXISTS `dt_payment_laundry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_payment_laundry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_laundry` int(11) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT 'down_payment;lunas;full_payment',
  `payment_type` varchar(50) NOT NULL COMMENT 'debit;cash;transfer',
  `amount` bigint(20) NOT NULL,
  `account_holder` varchar(256) NOT NULL,
  `payment_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL COMMENT '0=inactive;1=active;2=deleted',
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_payment_laundry`
--

LOCK TABLES `dt_payment_laundry` WRITE;
/*!40000 ALTER TABLE `dt_payment_laundry` DISABLE KEYS */;
INSERT INTO `dt_payment_laundry` VALUES (1,1,'down_payment','debit',50000,'tina','2018-10-21 10:00:00',1,'1','2018-10-21 10:00:00',NULL,NULL),(2,1,'lunas','debit',70000,'tina','2018-10-22 10:00:00',1,'1','2018-10-22 10:00:00',NULL,NULL),(3,2,'down_payment','debit',70000,'Ando','2018-10-22 10:00:00',1,'1','2018-10-22 10:00:00',NULL,NULL),(4,2,'lunas','debit',70000,'Ando','2018-10-22 10:00:00',1,'1','2018-10-22 10:00:00',NULL,NULL),(5,3,'down_payment','cash',5000,'Logam','2018-10-22 10:00:00',1,'1','2018-10-22 10:00:00',NULL,NULL),(6,3,'lunas','cash',2000,'Logam','2018-10-22 10:00:00',1,'1','2018-10-22 10:00:00',NULL,NULL);
/*!40000 ALTER TABLE `dt_payment_laundry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_payment_laundry_history`
--

DROP TABLE IF EXISTS `dt_payment_laundry_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_payment_laundry_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_laundry` int(11) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT 'down_payment;lunas;full_payment',
  `payment_type` varchar(50) NOT NULL COMMENT 'debit;cash;transfer',
  `amount` bigint(20) NOT NULL,
  `account_holder` varchar(256) NOT NULL,
  `payment_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL COMMENT '0=inactive;1=active;2=deleted',
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_payment_laundry_history`
--

LOCK TABLES `dt_payment_laundry_history` WRITE;
/*!40000 ALTER TABLE `dt_payment_laundry_history` DISABLE KEYS */;
INSERT INTO `dt_payment_laundry_history` VALUES (1,1,'down_payment','debit',50000,'tina','2018-10-21 10:00:00',1,'1','2018-10-21 10:00:00',NULL,NULL),(2,1,'lunas','debit',70000,'tina','2018-10-22 10:00:00',1,'1','2018-10-22 10:00:00',NULL,NULL);
/*!40000 ALTER TABLE `dt_payment_laundry_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_survey_form`
--

DROP TABLE IF EXISTS `dt_survey_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_survey_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_laundry` varchar(255) NOT NULL,
  `alamat_laundry` text NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `no_telp` varchar(15) NOT NULL,
  `foto_1` varchar(255) DEFAULT NULL,
  `foto_2` varchar(255) DEFAULT NULL,
  `any_system` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `question_1` text,
  `question_2` text,
  `question_3` varchar(10) DEFAULT NULL,
  `question_4` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_survey_form`
--

LOCK TABLES `dt_survey_form` WRITE;
/*!40000 ALTER TABLE `dt_survey_form` DISABLE KEYS */;
INSERT INTO `dt_survey_form` VALUES (1,'Sun Wash.','Villa Dago Pamulang','Ibu Yuni','081213316839','9ccd1801bc3625dcd099f3fbff91b1b0.jpg','34ef13aa783e97f97edf7ce16f7d8398.jpg',1,'Dery suhe','2018-10-21 09:22:45',NULL,NULL,'GoWash Express. Cuma reporting kaya cms.','Ask owner','Saat openi','Tidak.'),(2,'Laundri nayla','Jl.antara jatimakmur masjid alarifiah pondok gede bekasi','Nayla','081288561565','a9c086df3ccd490a07e61cb80d667529.jpg','cc5bb62eb1b92db678b6545a71839dc3.jpg',0,'Eko','2018-10-30 13:37:25',NULL,NULL,'Tidak punya','Di pikir dulu','Tidak ada ','Tidak ada');
/*!40000 ALTER TABLE `dt_survey_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_task_laundry`
--

DROP TABLE IF EXISTS `dt_task_laundry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_task_laundry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_laundry` int(11) NOT NULL,
  `outlet_user` varchar(256) NOT NULL,
  `comment` text,
  `status` varchar(50) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_task_laundry`
--

LOCK TABLES `dt_task_laundry` WRITE;
/*!40000 ALTER TABLE `dt_task_laundry` DISABLE KEYS */;
INSERT INTO `dt_task_laundry` VALUES (1,1,'Staff Outlet A1',NULL,'KERANJANG',1,'1','2018-10-09 00:00:00',NULL,NULL),(2,1,'Staff Outlet A2',NULL,'CUCI',1,'2','2018-10-09 00:00:00',NULL,NULL),(3,1,'Staff Outlet A1',NULL,'KERING',1,'1','2018-10-09 00:00:00',NULL,NULL),(4,1,'Staff Outlet A2',NULL,'SETRIKA',1,'2','2018-10-09 00:00:00',NULL,NULL),(5,2,'Staff Outlet A1',NULL,'KERANJANG',1,'1','2018-10-09 00:00:00',NULL,NULL),(6,2,'Staff Outlet A1',NULL,'CUCI',1,'1','2018-10-09 00:00:00',NULL,NULL),(7,2,'Staff Outlet A1',NULL,'KERING',1,'1','2018-10-09 00:00:00',NULL,NULL),(8,2,'Staff Outlet A1',NULL,'SETRIKA',1,'1','2018-10-09 00:00:00',NULL,NULL),(9,3,'Staff Outlet A2',NULL,'KERANJANG',1,'2','2018-10-09 00:00:00',NULL,NULL),(10,3,'Staff Outlet A2',NULL,'CUCI',1,'2','2018-10-09 00:00:00',NULL,NULL),(11,3,'Staff Outlet A2',NULL,'KERING',1,'2','2018-10-09 00:00:00',NULL,NULL),(12,3,'Staff Outlet A2',NULL,'SETRIKA',1,'2','2018-10-09 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `dt_task_laundry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_task_laundry_history`
--

DROP TABLE IF EXISTS `dt_task_laundry_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_task_laundry_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_laundry` int(11) NOT NULL,
  `outlet_user` varchar(256) NOT NULL,
  `comment` text,
  `status` varchar(50) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_task_laundry_history`
--

LOCK TABLES `dt_task_laundry_history` WRITE;
/*!40000 ALTER TABLE `dt_task_laundry_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `dt_task_laundry_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_additional_service`
--

DROP TABLE IF EXISTS `ms_additional_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_additional_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_outlet` int(11) NOT NULL,
  `item` varchar(256) NOT NULL,
  `price` bigint(20) DEFAULT NULL,
  `description` text,
  `is_active` tinyint(4) NOT NULL COMMENT '0=inactive;1=active;2=deleted',
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_additional_service`
--

LOCK TABLES `ms_additional_service` WRITE;
/*!40000 ALTER TABLE `ms_additional_service` DISABLE KEYS */;
INSERT INTO `ms_additional_service` VALUES (1,1,'Parfurm A',5111,'Parfum A dengan aroma A',1,'SYSTEM','2018-10-01 00:00:00',NULL,'2018-10-23 09:45:37'),(2,1,'Parfurm B',4000,'Parfum B dengan aroma B',1,'SYSTEM','2018-10-23 09:52:29',NULL,'2018-10-23 09:52:38'),(3,1,'test12',1231232,'test description2',2,'1','2018-10-29 07:43:38','12','2018-10-29 08:51:16');
/*!40000 ALTER TABLE `ms_additional_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_coupon`
--

DROP TABLE IF EXISTS `ms_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_outlet` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL COMMENT 'nominal or percentage',
  `value` int(10) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_used` int(11) NOT NULL COMMENT '0=not used yet;1=already used',
  `is_active` int(11) NOT NULL COMMENT '0=inactive;1=active;2=deleted',
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_coupon`
--

LOCK TABLES `ms_coupon` WRITE;
/*!40000 ALTER TABLE `ms_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_customer`
--

DROP TABLE IF EXISTS `ms_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_mscustomer` varchar(50) DEFAULT NULL,
  `id_outlet` int(11) NOT NULL,
  `fullname` varchar(256) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `handphone` varchar(20) NOT NULL,
  `email` varchar(256) NOT NULL,
  `address` text NOT NULL,
  `provinsi` varchar(256) DEFAULT NULL,
  `kecamatan` varchar(256) DEFAULT NULL,
  `kelurahan` varchar(256) DEFAULT NULL,
  `kab_kota` varchar(256) DEFAULT NULL,
  `kodepos` varchar(10) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `reset_password` varchar(256) DEFAULT NULL,
  `link_verification` varchar(256) DEFAULT NULL,
  `is_membership` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL COMMENT '0=inactive;1=active;2=deleted',
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_customer`
--

LOCK TABLES `ms_customer` WRITE;
/*!40000 ALTER TABLE `ms_customer` DISABLE KEYS */;
INSERT INTO `ms_customer` VALUES (1,'CS0000001',1,'Cust 1 Outlet A','wanita','085716044222','febi','Gramayuda',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,0,1,'','2018-10-01 00:00:00',NULL,NULL),(2,'CS0000002',1,'Cust 2 Outlet A','wanita','087880995535','susi_asik@yahoo.com','Blok M Square',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,0,1,'','2018-10-01 00:00:00',NULL,NULL),(3,'CS0000001',2,'Cust 1 Outlet B','pria','09898980898','joko_wow@yahoo.com','Pondok Indah',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,0,1,'','2018-10-01 00:00:00',NULL,NULL),(4,'CS0000002',2,'Cust 2 Outlet B','pria','08789898','sss','Pondok Gede',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,0,1,'','2018-10-01 00:00:00',NULL,NULL),(5,'CS0000003',2,'Cust 3 Outlet B','pria','09797907','khhnl','Pamulang',NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,0,0,'','2018-10-01 00:00:00',NULL,NULL),(6,'CS0000001',1,'f','Man','085748884448','fhebriantz@gmail.com','<p>asdd</p>','1','1','1','1','123412','superadmin','123123123',NULL,NULL,0,0,'admin','2018-10-22 07:38:14',NULL,'2018-10-23 06:33:47'),(7,'CS0000001',1,'fakih','Man','085748884448','adast@gmail.com','aceh','2','2','2','2','123412','admin','c129b324aee662b04eccf68babba85851346dff9',NULL,NULL,0,0,'admin','2018-10-22 07:49:24',NULL,'2018-10-23 06:28:56'),(8,'CS1540302472',1,'Lutfi1234','Pria','085748884448','lutfi@gmail.com','<p>Bogor</p>','1','1','11234','2','123412','fhebriantz1004','12341234',NULL,NULL,0,1,'admin','2018-10-23 03:47:52',NULL,'2018-10-23 07:09:39'),(9,'CS1540315948',1,'Lutfi Febriantos','Pria','085718841359','lutfi@gmail.com','<p>Bogorsss</p>','Jawa Barat','Bogor Selatan','Ranggamekarssss','Bogor','16133','fhebriantzs','c129b324aee662b04eccf68babba85851346dff9',NULL,NULL,0,1,'admin','2018-10-23 07:32:28',NULL,'2018-10-23 07:47:18'),(11,NULL,1,'test1','pria','08123123123','deby.natazha@gmail.com','jl. 123 xyz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'1','2018-10-26 02:46:17',NULL,NULL),(12,NULL,1,'test1','pria','081231231233','deby.natazha@gmail.com','jl. 123 xyz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'1','2018-10-26 07:01:57',NULL,NULL),(13,NULL,1,'test1','pria','0812312312','deby.natazha@gmail.com','jl. 123 xyz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'1','2018-10-26 07:03:37',NULL,NULL),(14,NULL,1,'test12','pria','081231231232','deby.natazha@gmail.com','jl. 123 xyz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'1','2018-10-26 07:09:23',NULL,NULL),(15,NULL,1,'test1','pria','081231231265','deby.natazha@gmail.com','jl. 123 xyz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'1','2018-10-26 07:09:51',NULL,NULL),(16,NULL,1,'test1','pria','081231231265','deby.natazha@gmail.com','jl. 123 xyz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'1','2018-10-26 07:13:38',NULL,NULL),(17,NULL,1,'test1','pria','081231231265','deby.natazha@gmail.com','jl. 123 xyz','','','','','',NULL,NULL,NULL,NULL,0,1,'1','2018-10-26 07:27:42',NULL,NULL),(18,NULL,1,'test12','wanita','081111','deby1.natazha@gmail.com','jl.  xyz','1','2','3','4','5',NULL,NULL,NULL,NULL,1,2,'1','2018-10-26 07:28:00','1','2018-10-30 07:19:36');
/*!40000 ALTER TABLE `ms_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_laundry_service`
--

DROP TABLE IF EXISTS `ms_laundry_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_laundry_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_outlet` int(11) NOT NULL,
  `item` varchar(256) NOT NULL,
  `type` varchar(10) NOT NULL COMMENT 'satuan or kiloan',
  `description` varchar(256) DEFAULT NULL,
  `price` bigint(20) NOT NULL COMMENT 'price laundry',
  `price_dryclean` bigint(20) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL COMMENT '0=inactive;1=active;2=deleted',
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_laundry_service`
--

LOCK TABLES `ms_laundry_service` WRITE;
/*!40000 ALTER TABLE `ms_laundry_service` DISABLE KEYS */;
INSERT INTO `ms_laundry_service` VALUES (1,1,'CUCI KILOAN','perbulan','dengan pewangi',5000,91000,1,'SYSTEM','2018-10-10 00:00:00','2','2018-10-25 03:55:29'),(2,1,'SETRIKA','','ok',7000,0,1,'SYSTEM','2018-10-10 00:00:00',NULL,NULL),(3,1,'CUCI','','ok',5000,0,0,'SYSTEM','2018-10-10 00:00:00',NULL,'2018-10-25 04:02:33'),(4,1,'SETRIKA DAN CUCI','','ok',10000,0,1,'SYSTEM','2018-10-10 00:00:00',NULL,NULL),(5,1,'JAKET','','ok',10000,0,1,'SYSTEM','2018-10-10 00:00:00',NULL,NULL),(6,1,'KAOS','','ok',10000,0,1,'SYSTEM','2018-10-10 00:00:00',NULL,NULL),(7,1,'CELANA JEANS','','ok',10000,0,1,'SYSTEM','2018-10-10 00:00:00',NULL,NULL),(8,1,'CELANA BAHAN','','ok',10000,0,1,'SYSTEM','2018-10-10 00:00:00',NULL,NULL),(9,1,'KEMEJA','','ok',10000,0,1,'SYSTEM','2018-10-10 00:00:00',NULL,NULL),(10,1,'JAS','','ok',10000,20000,1,'SYSTEM','2018-10-10 00:00:00',NULL,NULL),(11,1,'Kilat Karpet','perbulan','<p>ok</p>',10000,20000,1,'2','2018-10-25 04:02:02',NULL,'2018-10-25 04:02:02'),(12,1,'Cuci','perbulan','<p>ok</p>',5000,0,1,'2','2018-10-25 04:03:32',NULL,'2018-10-25 04:03:32'),(13,1,'test12','perbulan2','test description2',1231232,4564562,2,'1','2018-10-29 07:08:31','1','2018-10-29 08:48:21');
/*!40000 ALTER TABLE `ms_laundry_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_outlet`
--

DROP TABLE IF EXISTS `ms_outlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_outlet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_msoutlet` varchar(50) NOT NULL,
  `id_headoffice` int(11) DEFAULT NULL,
  `outlet_name` varchar(256) NOT NULL,
  `address` text,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `is_headoffice` tinyint(4) DEFAULT NULL,
  `is_branch` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL COMMENT '0=inactive;1=active;2=deleted',
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_outlet`
--

LOCK TABLES `ms_outlet` WRITE;
/*!40000 ALTER TABLE `ms_outlet` DISABLE KEYS */;
INSERT INTO `ms_outlet` VALUES (1,'OT0000001',NULL,'OUTLET TEST A','Address Test A','123123123','outlet.a@email.com',NULL,NULL,1,'SYSTEM','2018-10-01 00:00:00',NULL,NULL),(2,'OT0000002',NULL,'OUTLET TEST B','Address Test B','987987987','outlet.b@email.com',NULL,NULL,1,'SYSTEM','2018-10-01 00:00:00',NULL,NULL),(3,'OT1540319853',NULL,'Syari Laundrya','<p>Blok M</p>','0251234561','lutfi@gmail.coms',NULL,NULL,1,'admin','2018-10-23 08:37:33',NULL,'2018-10-23 08:46:18');
/*!40000 ALTER TABLE `ms_outlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_outlet_user`
--

DROP TABLE IF EXISTS `ms_outlet_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_outlet_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_msoutlet_user` varchar(50) DEFAULT NULL,
  `id_user_group` int(11) DEFAULT NULL,
  `id_outlet` int(11) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` text,
  `gender` varchar(15) DEFAULT NULL,
  `handphone` varchar(20) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `verification_code` text,
  `is_verified` tinyint(4) NOT NULL,
  `is_superadmin` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL COMMENT '0=inactive;1=active;2=deleted',
  `last_login` datetime DEFAULT NULL,
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_outlet_user`
--

LOCK TABLES `ms_outlet_user` WRITE;
/*!40000 ALTER TABLE `ms_outlet_user` DISABLE KEYS */;
INSERT INTO `ms_outlet_user` VALUES (1,'EM0000001',2,1,'Staff Outlet A1','Jalan buntu','pria','08888999221','deby.natazha@gmail.com','admin_a1','7110eda4d09e062aa5e4a390b0a572ac0d2c0220',NULL,0,0,1,NULL,'SYSTEM','2018-10-09 00:00:00','2','2018-10-25 09:48:24'),(2,'EM0000002',2,1,'Staff Outlet A2','Pondok Indah','pria','909080123123','deby.natazha@gmail.com','admin_a2','8cb2237d0679ca88db6464eac60da96345513964',NULL,0,0,1,NULL,'SYSTEM','2018-10-09 00:00:00','2','2018-10-25 09:54:07'),(3,'EM0000001',2,2,'Staff Outlet B1','Pondok Indah','wanita','909080','deby.natazha@gmail.com','admin_b1','8cb2237d0679ca88db6464eac60da96345513964',NULL,0,0,1,NULL,'SYSTEM','2018-10-09 00:00:00',NULL,NULL),(4,'EM0000002',2,2,'Staff Outlet B2','Pondok Indah','wanita','123412341234','deby.natazha@gmail.com','admin_b2','8cb2237d0679ca88db6464eac60da96345513964',NULL,0,0,1,NULL,'SYSTEM','2018-10-09 00:00:00','2','2018-10-25 09:55:48'),(9,'2',2,1,'test1','2','2',NULL,'deby.natazha@gmail.com','admin_a3','3da541559918a808c2402bba5012f6c60b27661c','11ba74cea24065c13017b6a74045bb55',0,1,0,NULL,'SYSTEM','2018-10-18 04:16:13',NULL,NULL);
/*!40000 ALTER TABLE `ms_outlet_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_package`
--

DROP TABLE IF EXISTS `ms_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` bigint(20) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_package`
--

LOCK TABLES `ms_package` WRITE;
/*!40000 ALTER TABLE `ms_package` DISABLE KEYS */;
INSERT INTO `ms_package` VALUES (1,'PACKAGE A','Berlangganan Sistem 1 Tahun<br/>Mobile Application & Website Application<br/>FREE. Laundry Marketplace','perbulan',130000,1,'SYSTEM','2018-10-10 00:00:00',NULL,NULL),(2,'PACKAGE B','Berlangganan Sistem 1 Tahun<br/>Mobile Application & Website Application<br/>Bluetooth Thermal Mini Printer<br/>FREE. Laundry Marketplace','perbulan',165000,1,'SYSTEM','2018-10-10 00:00:00',NULL,NULL),(3,'Paket C','<p>Setahun diskon 50%</p>','pertahun',2000000,1,'2','2018-10-24 09:52:12','2','2018-10-24 09:53:35');
/*!40000 ALTER TABLE `ms_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_promo`
--

DROP TABLE IF EXISTS `ms_promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_outlet` int(11) NOT NULL,
  `promo_code` varchar(50) NOT NULL,
  `promo_name` varchar(256) NOT NULL,
  `nominal` bigint(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_promo`
--

LOCK TABLES `ms_promo` WRITE;
/*!40000 ALTER TABLE `ms_promo` DISABLE KEYS */;
INSERT INTO `ms_promo` VALUES (1,1,'Tanpa Promo','Tanpa Promo',0,'potongan_harga','<p>tes</p>','2018-10-09 00:10:00','2018-10-09 23:10:00',1,'SYSTEM','2018-10-10 00:00:00','2','2018-10-26 08:52:39'),(2,1,'LEBARAN18','Promo Hari Lebaran 2018',50,'diskon',NULL,'2018-10-10 00:00:00','2018-10-10 00:00:00',1,'SYSTEM','2018-10-10 00:00:00','SYSTEM','2018-10-10 00:00:00'),(3,1,'LIBUR25','LIBUR DISKON 25 %',25,'diskon','<p>OK</p>','2018-10-26 00:10:00','2018-11-08 23:11:00',1,'2','2018-10-26 09:54:57',NULL,'2018-10-26 09:54:57'),(4,1,'ABC123A','Test PromoA',72,'diskon','test descriptionA','2018-10-16 00:00:00','2018-10-26 00:00:00',1,'1','2018-10-30 06:17:31','1','2018-10-30 06:21:38');
/*!40000 ALTER TABLE `ms_promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_user_group`
--

DROP TABLE IF EXISTS `ms_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_user_group`
--

LOCK TABLES `ms_user_group` WRITE;
/*!40000 ALTER TABLE `ms_user_group` DISABLE KEYS */;
INSERT INTO `ms_user_group` VALUES (1,'Owner','Owner of laundry outlet',1,'SYSTEM','2018-10-14 00:00:00','2','2018-10-25 07:39:50'),(2,'Staff','Staff works in laundry outlet',1,'SYSTEM','2018-10-14 00:00:00','2','2018-10-25 07:39:42'),(3,'Superadmin','<p>All Akses</p>',0,'2','2018-10-25 07:47:36',NULL,'2018-10-25 07:47:47');
/*!40000 ALTER TABLE `ms_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_user_mgmt`
--

DROP TABLE IF EXISTS `ms_user_mgmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_user_mgmt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` text NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `is_superadmin` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL COMMENT '0=inactive;1=active;2=deleted',
  `last_login` datetime DEFAULT NULL,
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_user_mgmt`
--

LOCK TABLES `ms_user_mgmt` WRITE;
/*!40000 ALTER TABLE `ms_user_mgmt` DISABLE KEYS */;
INSERT INTO `ms_user_mgmt` VALUES (1,'MIA000001','admin_a1','8cb2237d0679ca88db6464eac60da96345513964',0,1,NULL,'SYSTEM','2018-10-01 00:00:00',NULL,NULL),(2,'MIA000002','admin','7110eda4d09e062aa5e4a390b0a572ac0d2c0220',0,1,NULL,'SYSTEM','2018-10-01 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `ms_user_mgmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_log`
--

DROP TABLE IF EXISTS `system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text,
  `class` text,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_log`
--

LOCK TABLES `system_log` WRITE;
/*!40000 ALTER TABLE `system_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_laundry`
--

DROP TABLE IF EXISTS `tr_laundry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_laundry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trlaundry` varchar(50) NOT NULL,
  `id_outlet` int(11) NOT NULL,
  `employee_name` varchar(256) NOT NULL,
  `cust_fullname` varchar(256) DEFAULT NULL,
  `cust_gender` varchar(15) DEFAULT NULL,
  `cust_handphone` varchar(20) DEFAULT NULL,
  `cust_address` text,
  `cust_provinsi` varchar(256) DEFAULT NULL,
  `cust_kecamatan` varchar(256) DEFAULT NULL,
  `cust_kelurahan` varchar(256) DEFAULT NULL,
  `cust_kabkota` varchar(256) DEFAULT NULL,
  `cust_kodepos` varchar(10) DEFAULT NULL,
  `addservice_item` varchar(256) DEFAULT NULL,
  `addservice_price` bigint(20) DEFAULT NULL,
  `date_in` datetime NOT NULL COMMENT 'laundry in',
  `date_start` datetime DEFAULT NULL COMMENT 'beginning of laundry process',
  `date_end` datetime DEFAULT NULL COMMENT 'laundry process is finished',
  `date_end_estimated` datetime DEFAULT NULL COMMENT 'Estimated date while transaction',
  `date_out` datetime NOT NULL COMMENT 'laundry out',
  `id_promo` int(11) DEFAULT NULL,
  `total_payment` bigint(20) NOT NULL,
  `qty_satuan` int(11) DEFAULT NULL,
  `qty_kiloan` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'belum_diambil',
  `is_express` tinyint(4) NOT NULL,
  `is_pickup` tinyint(4) NOT NULL,
  `is_delivery` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL COMMENT '0=inactive;1=active;2=deleted',
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_laundry`
--

LOCK TABLES `tr_laundry` WRITE;
/*!40000 ALTER TABLE `tr_laundry` DISABLE KEYS */;
INSERT INTO `tr_laundry` VALUES (1,'TR0000001',1,'Staff Outlet A1','Udin','Pria','085718841359','Samping Indomaret','Jawa Barat','Bogor Selatan','Ranggamekar','Bogor','16132','Parfum',2500,'2018-10-09 00:00:00','2018-10-09 00:00:00','2018-10-09 00:00:00','2018-10-09 00:00:00','2018-10-16 00:00:00',2,50000,2,5,'belum_diambil',1,1,1,1,'Lutfi','2018-09-18 00:00:00',NULL,NULL),(2,'TR0000002',1,'Staff Outlet A2','Sanusi','Pria','085718841359','Samping Indomaret','Jawa Barat','Bogor Selatan','Ranggamekar','Bogor','16132','-',0,'2018-10-09 00:00:00','2018-10-09 00:00:00','2018-10-09 00:00:00','2018-10-09 00:00:00','2018-10-16 00:00:00',1,20000,0,4,'belum_diambil',0,0,0,1,'Lutfi','2018-09-18 00:00:00',NULL,NULL),(3,'TR0000003',1,'Staff Outlet A2','Logam','Pria','085718841359','Samping Indomaret','Jawa Barat','Bogor Selatan','Ranggamekar','Bogor','16132',NULL,0,'2018-10-09 00:00:00','2018-09-09 00:00:00','2018-10-01 00:00:00','2018-10-20 00:00:00','2018-10-16 00:00:00',0,7000,0,3,'belum_diambil',0,1,0,1,'Lutfi','2018-09-18 00:00:00',NULL,NULL),(4,'TR0000004',1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-09 00:00:00',NULL,NULL,NULL,'2018-10-16 00:00:00',0,0,0,NULL,'belum_diambil',0,0,1,1,'','2018-09-18 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `tr_laundry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_laundry_history`
--

DROP TABLE IF EXISTS `tr_laundry_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_laundry_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trlaundry` varchar(50) NOT NULL,
  `id_outlet` int(11) NOT NULL,
  `employee_name` varchar(256) NOT NULL,
  `cust_fullname` varchar(256) DEFAULT NULL,
  `cust_gender` varchar(15) DEFAULT NULL,
  `cust_handphone` varchar(20) DEFAULT NULL,
  `cust_address` text,
  `cust_provinsi` varchar(256) DEFAULT NULL,
  `cust_kecamatan` varchar(256) DEFAULT NULL,
  `cust_kelurahan` varchar(256) DEFAULT NULL,
  `cust_kabkota` varchar(256) DEFAULT NULL,
  `cust_kodepos` varchar(10) DEFAULT NULL,
  `addservice_item` varchar(256) DEFAULT NULL,
  `addservice_price` bigint(20) DEFAULT NULL,
  `date_in` datetime NOT NULL COMMENT 'laundry in',
  `date_start` datetime DEFAULT NULL COMMENT 'beginning of laundry process',
  `date_end` datetime DEFAULT NULL COMMENT 'laundry process is finished',
  `date_end_estimated` datetime DEFAULT NULL COMMENT 'Estimated date while transaction',
  `date_out` datetime NOT NULL COMMENT 'laundry out',
  `id_promo` int(11) DEFAULT NULL,
  `total_payment` bigint(20) NOT NULL,
  `qty_satuan` int(11) DEFAULT NULL,
  `qty_kiloan` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'belum_diambil',
  `is_express` tinyint(4) NOT NULL,
  `is_pickup` tinyint(4) NOT NULL,
  `is_delivery` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL COMMENT '0=inactive;1=active;2=deleted',
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_laundry_history`
--

LOCK TABLES `tr_laundry_history` WRITE;
/*!40000 ALTER TABLE `tr_laundry_history` DISABLE KEYS */;
INSERT INTO `tr_laundry_history` VALUES (1,'TR0000001',1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-09 00:00:00',NULL,NULL,NULL,'2018-10-16 00:00:00',0,0,0,NULL,'belum_diambil',0,1,0,1,'','2018-09-18 00:00:00',NULL,NULL),(2,'TR0000002',1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-09 00:00:00',NULL,NULL,NULL,'2018-10-16 00:00:00',0,0,0,NULL,'belum_diambil',0,0,1,1,'','2018-09-18 00:00:00',NULL,NULL),(3,'TR0000003',1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-09 00:00:00',NULL,NULL,NULL,'2018-10-16 00:00:00',0,0,0,NULL,'belum_diambil',0,1,0,1,'','2018-09-18 00:00:00',NULL,NULL),(4,'TR0000004',1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-09 00:00:00',NULL,NULL,NULL,'2018-10-16 00:00:00',0,0,0,NULL,'belum_diambil',0,0,1,1,'','2018-09-18 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `tr_laundry_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_user_package`
--

DROP TABLE IF EXISTS `tr_user_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_user_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_truser_package` varchar(50) DEFAULT NULL,
  `id_outlet_user` int(11) NOT NULL,
  `id_package` int(11) DEFAULT NULL,
  `reserve_date` datetime DEFAULT NULL,
  `payment_no_acc` varchar(50) DEFAULT NULL,
  `payment_name` varchar(256) DEFAULT NULL,
  `payment_bank` varchar(50) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `is_trial` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(256) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_user_package`
--

LOCK TABLES `tr_user_package` WRITE;
/*!40000 ALTER TABLE `tr_user_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_user_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `item` varchar(256) DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
INSERT INTO `user_log` VALUES (1,'User Login','','172.31.25.148','1','2018-10-16 08:15:08'),(2,'Create New Account','','172.31.25.148','6','2018-10-16 08:15:17'),(3,'Email verification has been sent','email address: deby.natazha@gmail.com','172.31.25.148','6','2018-10-16 08:15:19'),(4,'Create New Account','','172.31.25.148','7','2018-10-16 10:10:44'),(5,'Email verification has been sent','email address: deby.natazha@gmail.com','172.31.25.148','7','2018-10-16 10:10:47'),(8,'Verification by email','','172.31.25.148','7','2018-10-17 07:56:07'),(9,'Create New Account','','172.31.25.148','8','2018-10-18 03:16:00'),(10,'Email verification has been sent','email address: deby.natazha@gmail.com','172.31.25.148','8','2018-10-18 03:16:02'),(11,'Verification by email','','172.31.25.148','8','2018-10-18 03:16:33'),(12,'Create New Account','','172.31.25.148','9','2018-10-18 04:16:13'),(13,'Email verification has been sent','email address: deby.natazha@gmail.com','172.31.25.148','9','2018-10-18 04:16:16'),(14,'User Login','','172.31.25.148','1','2018-10-18 06:41:09'),(15,'Create New Customer Data','10','172.31.25.148','1','2018-10-26 02:44:35'),(16,'Create New Customer Data','11','172.31.25.148','1','2018-10-26 02:46:17'),(17,'Create New Customer Data','id_customer: 13','172.31.25.148','1','2018-10-26 07:03:37'),(18,'Create New Customer Data','id_customer: 14','172.31.25.148','1','2018-10-26 07:09:23'),(19,'Create New Customer Data','id_customer: 15','172.31.25.148','1','2018-10-26 07:09:51'),(20,'Create New Customer Data','id_customer: 16','172.31.25.148','1','2018-10-26 07:13:38'),(21,'Create New Customer Data','ID Customer: 17','172.31.25.148','1','2018-10-26 07:27:42'),(22,'Create New Customer Data','ID Customer: 18','172.31.25.148','1','2018-10-26 07:28:00'),(23,'Update Customer Data','ID Customer: 0','172.31.25.148','2','2018-10-26 07:52:30'),(24,'Update Customer Data','ID Customer: 0','172.31.25.148','2','2018-10-26 07:53:08'),(25,'Create New Item Service Laundry','ID Item Service: 13','172.31.25.148','1','2018-10-29 07:08:31'),(26,'Update Item Service Laundry Data','ID Customer: 13','172.31.25.148','1','2018-10-29 07:23:17'),(27,'Update Item Service Laundry Data','ID Customer: 13','172.31.25.148','1','2018-10-29 07:23:29'),(28,'Create New Additional Service Laundry','ID Additional Service: 3','172.31.25.148','1','2018-10-29 07:43:38'),(29,'Update Additional Service Laundry Data','ID Additional Service: 3','172.31.25.148','12','2018-10-29 07:56:23'),(30,'Delete Item Service Laundry','ID Item Service: 13','172.31.25.148','1','2018-10-29 08:48:21'),(31,'Delete Additional Service Laundry','ID Additional Service: 3','172.31.25.148','12','2018-10-29 08:51:16'),(32,'Create New Promo','ID Promo: 5','172.31.25.148','1','2018-10-30 06:17:31'),(33,'Create New Promo','ID Promo: 6','172.31.25.148','1','2018-10-30 06:18:30'),(34,'Update Promo Data','ID Promo: 5','172.31.25.148','1','2018-10-30 06:21:38'),(35,'Delete Promo','ID Promo: 6','172.31.25.148','1','2018-10-30 06:37:29'),(36,'Delete Customer','ID Customer: 18','172.31.25.148','1','2018-10-30 07:19:36');
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 17:04:48
