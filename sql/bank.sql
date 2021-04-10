-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `balance` double(20,4) DEFAULT '0.0000',
  `customer_code` varchar(40) DEFAULT NULL COMMENT '客户号',
  `account_num` varchar(20) DEFAULT NULL COMMENT '银行卡账号',
  `password` varchar(40) NOT NULL COMMENT '加密后的银行卡密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (27,84911.6586,'demo001202104079','6161779470821245928','dsaddadaewradada'),(28,4567.0000,'南小食有限公司','716177967387571','dadadafddagfdfgdd'),(30,0.0000,'demo001202104079','6161779470821216793','wrrewrsdfsfsfgdfgd');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) NOT NULL COMMENT '客户号',
  `name` varchar(40) NOT NULL COMMENT '用户名',
  `id_number` varchar(20) NOT NULL COMMENT '证件号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (13,'demo001202104078','张三','432561200009087821'),(14,'demo001202104079','南小食客户一','465432134566789097');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_product`
--

DROP TABLE IF EXISTS `customer_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_product` (
  `customer_code` varchar(20) NOT NULL,
  `time_amount` int(11) NOT NULL DEFAULT '0',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_id` int(11) DEFAULT NULL,
  KEY `customer_product_product_id_fk` (`product_id`),
  CONSTRAINT `customer_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_product`
--

LOCK TABLES `customer_product` WRITE;
/*!40000 ALTER TABLE `customer_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_stock`
--

DROP TABLE IF EXISTS `customer_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_stock` (
  `customer_code` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `stock_id` int(11) NOT NULL,
  KEY `customer_stock_stock_id_fk` (`stock_id`),
  CONSTRAINT `customer_stock_stock_id_fk` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_stock`
--

LOCK TABLES `customer_stock` WRITE;
/*!40000 ALTER TABLE `customer_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institution` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(40) NOT NULL COMMENT '机构名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES (8,'野村证券公司'),(9,'南食'),(10,'南小食有限公司');
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `iou_num` varchar(40) NOT NULL COMMENT '借据号',
  `customer_code` varchar(40) DEFAULT NULL COMMENT '客户号',
  `account_num` varchar(20) DEFAULT NULL COMMENT '银行卡账号',
  `yearly_rate` double(20,4) DEFAULT '0.0000' COMMENT '年利率',
  `repayment_count` int(10) NOT NULL,
  `due_date` date NOT NULL COMMENT '应还日期',
  `loan_date` date NOT NULL COMMENT '贷款日期',
  `loan_cost` double(20,4) NOT NULL COMMENT '贷款相关费用',
  `loan_amount` double(20,4) NOT NULL COMMENT '贷款费用',
  `product_code` varchar(20) NOT NULL COMMENT '产品编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (8,'L2104081553341','demo001202104079','6161779470821245928',4.0000,2,'2021-06-07','2021-04-07',10.0000,9990.0000,'40001'),(9,'L2104081553342','demo001202104079','6161779470821245928',4.0000,3,'2021-04-07','2021-01-07',10.0000,19990.0000,'40001');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(8) NOT NULL,
  `name` varchar(8) NOT NULL,
  `description` varchar(9) DEFAULT NULL,
  `rate` float NOT NULL,
  `principal` int(11) NOT NULL,
  `min_period` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code_uindex` (`code`),
  UNIQUE KEY `product_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (14,'JJ01','fund1','fund',4.56,200000,6),(15,'JJ02','fund2','fund',4.8,250000,12),(18,'DQ01','period1','period',3,20000,12),(19,'DQ02','period2','period',3.4,20000,8);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repay_plan`
--

DROP TABLE IF EXISTS `repay_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repay_plan` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `iou_num` varchar(40) NOT NULL,
  `create_time` datetime NOT NULL,
  `plan_num` double(20,4) NOT NULL COMMENT '本次贷款的第几期',
  `plan_amount` double(20,4) NOT NULL,
  `plan_principal` double(20,4) DEFAULT '0.0000',
  `plan_interest` double(20,4) DEFAULT '0.0000',
  `plan_date` date NOT NULL,
  `remain_amount` double(20,4) NOT NULL,
  `remain_principal` double(20,4) NOT NULL,
  `remain_interest` double(20,4) DEFAULT '0.0000',
  `fine` double(20,4) DEFAULT '0.0000' COMMENT '罚金',
  `status` enum('0','1','2','3') DEFAULT '0' COMMENT '0：默认，1：逾期，有罚金且未还罚金，2，逾期，已还罚金，3：正常还款',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repay_plan`
--

LOCK TABLES `repay_plan` WRITE;
/*!40000 ALTER TABLE `repay_plan` DISABLE KEYS */;
INSERT INTO `repay_plan` VALUES (11,'L2104072048501','2021-04-07 20:53:27',1.0000,5025.0114,4991.6814,33.3300,'2021-05-07',5025.0114,4991.6814,33.3300,0.0000,'0'),(12,'L2104072048501','2021-04-07 20:53:27',1.0000,5025.0114,5008.3187,16.6927,'2021-06-07',5025.0114,5008.3187,16.6927,0.0000,'0'),(13,'L2104081553342','2021-01-07 20:53:27',1.0000,6712.2785,6643.9385,68.3400,'2021-02-07',6712.2785,6643.9385,68.3400,0.0000,'1'),(14,'L2104081553342','2021-01-07 20:53:27',1.0000,6712.2785,6666.6408,45.6377,'2021-03-07',6712.2785,6666.6408,45.6377,0.0000,'1'),(15,'L2104081553342','2021-01-07 20:53:27',1.0000,6712.2785,6689.4207,22.8578,'2021-04-07',6712.2785,6689.4207,22.8578,0.0000,'1');
/*!40000 ALTER TABLE `repay_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(4) NOT NULL,
  `name` varchar(8) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `stock_code_uindex` (`code`),
  UNIQUE KEY `stock_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'GP01','vavi',16),(2,'GP02','media',24),(3,'GP03','nokia',61);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-09 19:54:20
