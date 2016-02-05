-- MySQL dump 10.13  Distrib 5.6.25, for osx10.10 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `primary` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `location` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `good_id` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `invalid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (3,1,11852,1,0,'2016-02-04 02:31:34','2016-02-04 02:31:34'),(4,1,11853,1,0,'2016-02-04 02:32:11','2016-02-04 02:32:11'),(5,1,11857,1,0,'2016-02-04 02:32:19','2016-02-04 02:32:19'),(6,1,11861,1,0,'2016-02-04 02:33:23','2016-02-04 02:33:23'),(7,1,11862,1,0,'2016-02-04 02:34:45','2016-02-04 02:34:45'),(8,1,12073,1,0,'2016-02-04 03:10:25','2016-02-04 03:10:25'),(9,1,12117,1,0,'2016-02-04 03:10:51','2016-02-04 03:10:51'),(10,1,11572,1,0,'2016-02-04 03:26:02','2016-02-04 03:26:02'),(11,1,11859,1,0,'2016-02-04 09:43:04','2016-02-04 09:43:04');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(30) NOT NULL DEFAULT '',
  `cat_pic` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=860 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
INSERT INTO `cats` VALUES (729,'泉水饮料','',0,2,1,'2016-02-01 09:56:29','2016-02-02 07:57:43'),(730,'奶乳饮品','',0,1,1,'2016-02-01 09:55:37','2016-02-02 07:52:57'),(742,'粮油副食','',0,8,1,'2016-02-01 09:56:59','2016-02-01 10:03:34'),(749,'调料蘸料','',0,9,1,'2016-02-01 09:57:04','2016-02-01 10:03:35'),(766,'美容洗护','',0,12,1,'2016-02-01 09:57:41','2016-02-01 10:03:39'),(773,'饼干糕点','',0,5,1,'2016-02-01 09:55:04','2016-02-02 07:52:04'),(776,'雪糕冰棍','',0,4,1,'2016-02-01 09:56:19','2016-02-02 07:52:01'),(778,'休闲零食','',0,23,1,'2016-02-01 09:54:53','2016-02-02 07:51:45'),(779,'个人护理','',0,23,1,'2016-02-01 09:57:52','2016-02-01 10:03:42'),(780,'生鲜果蔬','',0,23,1,'2016-02-01 09:58:27','2016-02-01 10:03:44'),(781,'日用百货','',0,15,1,'2016-02-01 09:58:02','2016-02-01 10:03:48'),(788,'酒水畅饮','',0,7,1,'2016-02-01 09:56:00','2016-02-02 07:52:20'),(790,'方便速食','',0,66,1,'2016-02-01 09:55:17','2016-02-02 07:52:16'),(791,'甜心糖果','',0,13,1,'2016-02-01 09:56:11','2016-02-02 07:56:57'),(793,'家居清洁','',0,100,1,'2016-02-01 09:57:29','2016-02-02 07:56:53'),(800,'整箱购物','',0,4,1,'2016-02-01 09:55:28','2016-02-02 07:55:32'),(825,'进口食品','',0,14,1,'2016-02-01 09:56:42','2016-02-01 10:03:50'),(838,'洗衣干洗','',0,11,1,'2016-02-01 09:58:16','2016-02-01 10:03:51'),(843,'收发快递','',0,10,1,'2016-02-01 09:57:18','2016-02-01 10:03:55'),(850,'泉水饮料','',0,8,1,'2016-02-01 09:55:49','2016-02-01 10:03:57'),(851,'代购香烟','',0,9,1,'2016-02-01 09:54:41','2016-02-01 10:03:58');
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_fragments`
--

DROP TABLE IF EXISTS `cms_fragments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_fragments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cms_module_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `abstract` mediumtext,
  `content` mediumtext,
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `ext1` varchar(255) NOT NULL DEFAULT '',
  `ext2` varchar(255) NOT NULL DEFAULT '',
  `ext3` varchar(255) NOT NULL DEFAULT '',
  `ext4` varchar(255) NOT NULL DEFAULT '',
  `ext5` varchar(255) NOT NULL DEFAULT '',
  `ext6` varchar(255) NOT NULL DEFAULT '',
  `ext7` varchar(255) NOT NULL DEFAULT '',
  `ext8` varchar(255) NOT NULL DEFAULT '',
  `ext9` varchar(255) NOT NULL DEFAULT '',
  `ext10` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_fragments`
--

LOCK TABLES `cms_fragments` WRITE;
/*!40000 ALTER TABLE `cms_fragments` DISABLE KEYS */;
INSERT INTO `cms_fragments` VALUES (5,2,'腾讯','',NULL,NULL,0,0,'http://www.qq.com','','','','','','','','','','2015-12-18 06:04:27','2015-12-18 06:04:27'),(17,2,'百度','',NULL,NULL,0,0,'http://www.baidu.com/www','','','','','','','','','','2016-01-15 10:08:58','2016-01-15 10:08:58'),(25,4,'人事/HR','http://www.lagou.com/jobs/1421757.html','%3Cp%20style%3D%22outline%3A%200px%3B%20margin%3A%201em%200px%3B%20color%3A%20rgb(119%2C%20119%2C%20119)%3B%20font-family%3A%20\'Hiragino%20Sans%20GB\'%2C%20\'Microsoft%20Yahei\'%2C%20SimSun%2C%20Arial%2C%20\'Helvetica%20Neue\'%2C%20Helvetica%3B%20font-size%3A%2014px%3B%20line-height%3A%2022px%3B%20background-color%3A%20rgb(250%2C%20250%2C%20250)%3B%22%3E%E3%80%90%E5%B2%97%E4%BD%8D%E8%81%8C%E8%B4%A3%E3%80%91%3C%2Fp%3E%0A%0A%3Cp%20style%3D%22outline%3A%200px%3B%20margin%3A%201em%200px%3B%20color%3A%20rgb(119%2C%20119%2C%20119)%3B%20font-family%3A%20\'Hiragino%20Sans%20GB\'%2C%20\'Microsoft%20Yahei\'%2C%20SimSun%2C%20Arial%2C%20\'Helvetica%20Neue\'%2C%20Helvetica%3B%20font-size%3A%2014px%3B%20line-height%3A%2022px%3B%20background-color%3A%20rgb(250%2C%20250%2C%20250)%3B%22%3E%3Cstrike%3E1%E3%80%81%E6%8B%9B%E8%81%98%E6%B4%BB%E5%8A%A8%E7%AD%96%E5%88%92%E3%80%81%E7%BB%84%E7%BB%87%E5%AE%9E%E6%96%BD%EF%BC%9B%E5%BA%94%E8%81%98%E6%8E%A5%E5%BE%85%EF%BC%8C%E5%BA%94%E8%81%98%E8%80%85%E8%B5%84%E6%96%99%E7%AE%A1%E7%90%86%E7%AD%892%EF%BC%9B%3C%2Fstrike%3E%3C%2Fp%3E%0A%0A%3Cp%20style%3D%22outline%3A%200px%3B%20margin%3A%201em%200px%3B%20color%3A%20rgb(119%2C%20119%2C%20119)%3B%20font-family%3A%20\'Hiragino%20Sans%20GB\'%2C%20\'Microsoft%20Yahei\'%2C%20SimSun%2C%20Arial%2C%20\'Helvetica%20Neue\'%2C%20Helvetica%3B%20font-size%3A%2014px%3B%20line-height%3A%2022px%3B%20background-color%3A%20rgb(250%2C%20250%2C%20250)%3B%22%3E2%E3%80%81%E6%8B%9B%E8%81%98%E6%B8%A0%E9%81%93%E6%8B%93%E5%B1%95%E4%B8%8E%E4%BE%9B%E5%BA%94%E5%95%86%E6%B2%9F%E9%80%9A%E6%8E%A5%E6%B4%BD%EF%BC%9B%3C%2Fp%3E%0A%0A%3Cp%20style%3D%22outline%3A%200px%3B%20margin%3A%201em%200px%3B%20color%3A%20rgb(119%2C%20119%2C%20119)%3B%20font-family%3A%20\'Hiragino%20Sans%20GB\'%2C%20\'Microsoft%20Yahei\'%2C%20SimSun%2C%20Arial%2C%20\'Helvetica%20Neue\'%2C%20Helvetica%3B%20font-size%3A%2014px%3B%20line-height%3A%2022px%3B%20background-color%3A%20rgb(250%2C%20250%2C%20250)%3B%22%3E3%E3%80%81%E5%91%98%E5%B7%A5%E5%9B%A2%E5%BB%BA%E6%B4%BB%E5%8A%A8%E7%AD%96%E5%88%92%E3%80%81%E7%BB%84%E7%BB%87%E5%AE%9E%E6%96%BD%EF%BC%9B%3C%2Fp%3E%0A%0A%3Cp%20style%3D%22outline%3A%200px%3B%20margin%3A%201em%200px%3B%20color%3A%20rgb(119%2C%20119%2C%20119)%3B%20font-family%3A%20\'Hiragino%20Sans%20GB\'%2C%20\'Microsoft%20Yahei\'%2C%20SimSun%2C%20Arial%2C%20\'Helvetica%20Neue\'%2C%20Helvetica%3B%20font-size%3A%2014px%3B%20line-height%3A%2022px%3B%20background-color%3A%20rgb(250%2C%20250%2C%20250)%3B%22%3E4%E3%80%81%E5%9C%A8%E4%B8%8A%E7%BA%A7%E6%8C%87%E5%AF%BC%E4%B8%8B%EF%BC%8C%E7%BB%84%E7%BB%87%E5%AE%9E%E6%96%BD%E5%86%85%E9%83%A8%E8%BD%AC%E6%AD%A3%E3%80%81%E6%99%8B%E5%8D%87%E8%BF%B0%E8%81%8C%E4%BC%9A%EF%BC%9B%3C%2Fp%3E%0A%0A%3Cp%20style%3D%22outline%3A%200px%3B%20margin%3A%201em%200px%3B%20color%3A%20rgb(119%2C%20119%2C%20119)%3B%20font-family%3A%20\'Hiragino%20Sans%20GB\'%2C%20\'Microsoft%20Yahei\'%2C%20SimSun%2C%20Arial%2C%20\'Helvetica%20Neue\'%2C%20Helvetica%3B%20font-size%3A%2014px%3B%20line-height%3A%2022px%3B%20background-color%3A%20rgb(250%2C%20250%2C%20250)%3B%22%3E5%E3%80%81%E6%9C%89%E6%9C%BA%E4%BC%9A%E7%BB%9F%E7%AD%B9%E5%85%A8%E9%9B%86%E5%9B%A2%E5%90%84%E7%B1%BB%E5%A4%A7%E5%9E%8B%E6%B4%BB%E5%8A%A8%E3%80%81%E5%8F%82%E4%B8%8E%E9%AB%98%E7%AE%A1%E4%BC%9A%E8%AE%AE%E3%80%82%3C%2Fp%3E%0A','',0,0,'10000','杭州','','','','','','','','','2016-01-18 08:00:14','2016-01-18 08:27:25'),(26,4,'运营','http://www.lagou.com/jobs/1421757.html','%3Cp%20style%3D%22outline%3A%200px%3B%20margin%3A%201em%200px%3B%20color%3A%20rgb(119%2C%20119%2C%20119)%3B%20font-family%3A%20\'Hiragino%20Sans%20GB\'%2C%20\'Microsoft%20Yahei\'%2C%20SimSun%2C%20Arial%2C%20\'Helvetica%20Neue\'%2C%20Helvetica%3B%20font-size%3A%2014px%3B%20line-height%3A%2022px%3B%20background-color%3A%20rgb(250%2C%20250%2C%20250)%3B%22%3E%E3%80%90%E4%BB%BB%E8%81%8C%E8%A6%81%E6%B1%82%E3%80%91%3C%2Fp%3E%0A%0A%3Cp%20style%3D%22outline%3A%200px%3B%20margin%3A%201em%200px%3B%20color%3A%20rgb(119%2C%20119%2C%20119)%3B%20font-family%3A%20\'Hiragino%20Sans%20GB\'%2C%20\'Microsoft%20Yahei\'%2C%20SimSun%2C%20Arial%2C%20\'Helvetica%20Neue\'%2C%20Helvetica%3B%20font-size%3A%2014px%3B%20line-height%3A%2022px%3B%20background-color%3A%20rgb(250%2C%20250%2C%20250)%3B%22%3E1%E3%80%81%E6%84%8F%E5%90%91%E4%BA%BA%E5%8A%9B%E8%B5%84%E6%BA%90%E6%96%B9%E5%90%91%E5%8F%91%E5%B1%95%EF%BC%8C%E4%BA%B2%E5%92%8C%E5%8A%9B%E5%BC%BA%E3%80%81%E5%BD%A2%E8%B1%A1%E6%B0%94%E8%B4%A8%E4%BD%B3%EF%BC%8C%E6%8B%85%E4%BB%BB%E8%BF%87%E6%A0%A1%E9%99%A2%E7%BA%A7%E5%B9%B2%E9%83%A8%E7%BB%8F%E5%8E%86%E4%BC%98%E5%85%88%E8%80%83%E8%99%91%EF%BC%9B%3C%2Fp%3E%0A%0A%3Cp%20style%3D%22outline%3A%200px%3B%20margin%3A%201em%200px%3B%20color%3A%20rgb(119%2C%20119%2C%20119)%3B%20font-family%3A%20\'Hiragino%20Sans%20GB\'%2C%20\'Microsoft%20Yahei\'%2C%20SimSun%2C%20Arial%2C%20\'Helvetica%20Neue\'%2C%20Helvetica%3B%20font-size%3A%2014px%3B%20line-height%3A%2022px%3B%20background-color%3A%20rgb(250%2C%20250%2C%20250)%3B%22%3E2%E3%80%81%E7%BB%86%E5%BF%83%E3%80%81%E8%80%90%E5%BF%83%E3%80%81%E7%81%B5%E6%B4%BB%EF%BC%8C%E6%9C%89%E8%B4%A3%E4%BB%BB%E5%BF%83%EF%BC%8C%E5%AD%A6%E4%B9%A0%E5%8A%9B%E5%BC%BA%EF%BC%9B%E6%80%A7%E6%A0%BC%E5%A4%96%E5%90%91%EF%BC%8C%E5%96%84%E4%BA%8E%E4%B8%8E%E4%BA%BA%E5%BB%BA%E7%AB%8B%E5%85%B3%E7%B3%BB%EF%BC%8C%E6%B2%9F%E9%80%9A%E8%83%BD%E5%8A%9B%E5%BC%BA%EF%BC%9B%3C%2Fp%3E%0A%0A%3Cp%20style%3D%22outline%3A%200px%3B%20margin%3A%201em%200px%3B%20color%3A%20rgb(119%2C%20119%2C%20119)%3B%20font-family%3A%20\'Hiragino%20Sans%20GB\'%2C%20\'Microsoft%20Yahei\'%2C%20SimSun%2C%20Arial%2C%20\'Helvetica%20Neue\'%2C%20Helvetica%3B%20font-size%3A%2014px%3B%20line-height%3A%2022px%3B%20background-color%3A%20rgb(250%2C%20250%2C%20250)%3B%22%3E3%E3%80%81%E5%85%B7%E5%A4%87%E4%B8%80%E5%AE%9A%E7%9A%84%E6%9C%8D%E5%8A%A1%E6%84%8F%E8%AF%86%EF%BC%8C%E5%B7%A5%E4%BD%9C%E5%BF%AB%E9%80%9F%E5%BC%BA%E5%8A%BF%E3%80%81%E4%B8%8D%E6%8B%96%E6%8B%89%EF%BC%9B%3C%2Fp%3E%0A%0A%3Cp%20style%3D%22outline%3A%200px%3B%20margin%3A%201em%200px%3B%20color%3A%20rgb(119%2C%20119%2C%20119)%3B%20font-family%3A%20\'Hiragino%20Sans%20GB\'%2C%20\'Microsoft%20Yahei\'%2C%20SimSun%2C%20Arial%2C%20\'Helvetica%20Neue\'%2C%20Helvetica%3B%20font-size%3A%2014px%3B%20line-height%3A%2022px%3B%20background-color%3A%20rgb(250%2C%20250%2C%20250)%3B%22%3E4%E3%80%81%E6%9C%AC%E7%A7%91%E5%8F%8A%E4%BB%A5%E4%B8%8A%E5%AD%A6%E5%8E%86%EF%BC%8C%E4%BC%98%E7%A7%80%E7%9A%84%E5%BA%94%E5%B1%8A%E6%AF%95%E4%B8%9A%E6%9C%AC%E7%A7%91%E7%94%9F%E6%88%96%E7%A1%95%E5%A3%AB%E4%BA%A6%E5%8F%AF%E3%80%82%3C%2Fp%3E%0A',NULL,0,0,'','','','','','','','','','','2016-01-18 08:28:43','2016-01-18 08:28:43'),(29,1,'红包','http://m.bqmart.cn/#/mart',NULL,NULL,0,0,'http://img.bqmart.cn/data/files/store/hongbao.jpg','','','','','','','','','','2016-02-01 12:22:34','2016-02-01 12:23:42'),(30,1,'幸福礼盒','http://m.bqmart.cn/activity02.html?store_id=8805&act_id=954',NULL,NULL,0,0,'http://img.bqmart.cn/data/files/store/maiyisongyi.jpg','','','','','','','','','','2016-02-01 12:23:27','2016-02-01 12:23:27'),(31,10,'水果预定','http://img.bqmart.cn/html/Images/fruit-banner.jpg',NULL,NULL,0,0,'http://img.bqmart.cn/data/files/store/xinxianyuding.png','http://m.bqmart.cn/#/fruit/62273/1','','','','','','','','','2016-02-01 12:26:10','2016-02-01 12:26:10'),(32,10,'闪送超市','',NULL,NULL,0,0,'http://img.bqmart.cn/data/files/store/icon_homeservice_market.png','http://m.bqmart.cn/#/mart','','','','','','','','','2016-02-01 12:27:00','2016-02-01 12:27:00'),(33,10,'洗衣干洗','http://img.bqmart.cn/upload/zq_xiyi.jpg',NULL,NULL,0,0,'http://img.bqmart.cn/upload/icon_homeservice_clouse.png','http://m.bqmart.cn/#/goods/list/79330/838','','','','','','','','','2016-02-01 12:27:33','2016-02-01 12:27:33'),(34,10,'蛋糕预定','http://img.bqmart.cn/upload/dgzq425n.jpg',NULL,NULL,0,0,'http://img.bqmart.cn/upload/icon_homeservice_cake.png','http://m.bqmart.cn/#/fruit/74294/13','','','','','','','','','2016-02-01 12:28:06','2016-02-01 12:28:06'),(35,10,'收发快递','http://img.bqmart.cn/upload/kuaidi.jpg',NULL,NULL,0,0,'http://img.bqmart.cn/upload/icon_homeservice_delivery.png','http://m.bqmart.cn/#/goods/list/93644/843','','','','','','','','','2016-02-01 12:28:36','2016-02-01 12:28:36'),(36,10,'地域特产','',NULL,NULL,0,0,'http://img.bqmart.cn/data/files/store/icon_homeservice_special2.png','http://m.bqmart.cn/#/goods/list/66405/884','','','','','','','','','2016-02-01 12:29:14','2016-02-01 12:29:14'),(37,3,'年货大惠','http://img.bqmart.cn/data/files/store/dahui.jpg','',NULL,0,0,'','','','','','','','','','','2016-02-01 12:30:34','2016-02-01 12:30:34'),(38,3,'整箱幸福','http://img.bqmart.cn/data/files/store/nianhuolihershijiu.jpg','',NULL,0,0,'','','','','','','','','','','2016-02-01 12:30:51','2016-02-01 12:30:51'),(39,3,'每日必抢','http://img.bqmart.cn/data/files/store/eryueyihaochengzi.jpg','',NULL,0,0,'','','','','','','','','','','2016-02-01 12:31:06','2016-02-01 12:31:06'),(40,3,'蔬菜','http://img.bqmart.cn/data/files/store/shuc.jpg','',NULL,0,0,'','','','','','','','','','','2016-02-01 12:31:21','2016-02-01 12:31:21'),(41,3,'调味品','http://img.bqmart.cn/data/files/store/huoguo.jpg','',NULL,0,0,'http://m.bqmart.cn/#/goods/list/8805/749','','','','','','','','','','2016-02-01 12:31:48','2016-02-01 12:31:48'),(42,3,'免费洗衣','http://img.bqmart.cn/data/files/store/beiquanxiyi.jpg','',NULL,0,0,'','','','','','','','','','','2016-02-01 12:32:09','2016-02-01 12:32:09');
/*!40000 ALTER TABLE `cms_fragments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_modules`
--

DROP TABLE IF EXISTS `cms_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_modules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `ext1` mediumtext,
  `ext2` varchar(255) NOT NULL DEFAULT '',
  `ext3` varchar(255) NOT NULL DEFAULT '',
  `ext4` varchar(255) NOT NULL DEFAULT '',
  `ext5` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_modules`
--

LOCK TABLES `cms_modules` WRITE;
/*!40000 ALTER TABLE `cms_modules` DISABLE KEYS */;
INSERT INTO `cms_modules` VALUES (1,'banner','banner闪图模块',0,0,'','[{\"key\":\"title\",\"label\":\"标题\",\"type\":\"text\",\"validate\":{}},{\"key\":\"ext1\",\"label\":\"闪图图片\",\"type\":\"image\",\"validate\":{}},{\"key\":\"ext2\",\"label\":\"浏览次数\",\"type\":\"number\",\"validate\":{}},{\"key\":\"subtitle\",\"label\":\"超链接\",\"type\":\"text\",\"validate\":{}}]','','','',''),(2,'friend_links','友情链接',0,0,'','[{\"key\":\"title\",\"label\":\"友情链接名称\",\"type\":\"text\",\"validate\":{}},{\"key\":\"ext1\",\"label\":\"跳转链接\",\"type\":\"link\",\"validate\":{}}]','','','',''),(3,'home_ads','首页广告',0,0,'','[{\"key\":\"title\",\"label\":\"标题\",\"type\":\"text\",\"validate\":{}},{\"key\":\"subtitle\",\"label\":\"广告图片\",\"type\":\"image\",\"validate\":{}},{\"key\":\"abstract\",\"label\":\"广告文案\",\"type\":\"text\",\"validate\":{}},{\"key\":\"ext1\",\"label\":\"跳转链接\",\"type\":\"text\",\"validate\":{}},{\"key\":\"ext2\",\"label\":\"浏览次数\",\"type\":\"number\",\"validate\":{}}]','','','',''),(4,'hr','招聘信息',0,0,'','[{\"key\":\"title\",\"label\":\"标题\",\"type\":\"text\",\"validate\":{}},{\"key\":\"subtitle\",\"label\":\"链接\",\"type\":\"link\",\"validate\":{}},{\"key\":\"abstract\",\"label\":\"职位描述\",\"type\":\"mtext\",\"validate\":{}}]','','','',''),(5,'kefu','在线客服',0,0,'','','','','',''),(6,'activity','活动信息',0,0,'','[{\"key\":\"title\",\"label\":\"标题\",\"type\":\"text\",\"validate\":{}},{\"key\":\"subtitle\",\"label\":\"图片\",\"type\":\"image\",\"validate\":{}},{\"key\":\"abstract\",\"label\":\"简介\",\"type\":\"mtext\",\"validate\":{}},{\"key\":\"content\",\"label\":\"正文\",\"type\":\"mtext\",\"validate\":{}},{\"key\":\"sort\",\"label\":\"排序\",\"type\":\"number\",\"validate\":{}},{\"key\":\"is_show\",\"label\":\"显示/隐藏\",\"type\":\"text\",\"validate\":{}},{\"key\":\"ext1\",\"label\":\"跳转链接\",\"type\":\"text\",\"validate\":{}},{\"key\":\"ext2\",\"label\":\"浏览次数\",\"type\":\"number\",\"validate\":{}}]','','','',''),(7,'system_msg','公告消息',0,0,'','','','','',''),(8,'news','公司新闻',0,0,'','','','','',''),(9,'products','产品介绍',0,0,'','[{\"key\":\"title\",\"label\":\"产品名称\",\"type\":\"text\",\"validate\":{}},{\"key\":\"ext1\",\"label\":\"产品链接\",\"type\":\"text\",\"validate\":{}},{\"key\":\"content\",\"label\":\"产品介绍\",\"type\":\"mtext\",\"validate\":{}}]','','','',''),(10,'services','服务',0,0,'','[{\"key\":\"title\",\"label\":\"服务名称\",\"type\":\"text\",\"validate\":{}},{\"key\":\"subtitle\",\"label\":\"图片地址\",\"type\":\"image\",\"validate\":{}},{\"key\":\"ext1\",\"label\":\"LOGO地址\",\"type\":\"image\",\"validate\":{}},{\"key\":\"ext2\",\"label\":\"跳转链接\",\"type\":\"link\",\"validate\":{}}]','','','',''),(23,'测试模块','测试模块',0,1,'',NULL,'','','','');
/*!40000 ALTER TABLE `cms_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `condition` varchar(255) NOT NULL DEFAULT '',
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) unsigned NOT NULL DEFAULT '0',
  `spec_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `brand_name` varchar(30) NOT NULL DEFAULT '',
  `tags` varchar(60) NOT NULL DEFAULT '',
  `default_image` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `price` float unsigned NOT NULL DEFAULT '0',
  `market_price` float unsigned NOT NULL DEFAULT '0',
  `sales` int(11) unsigned NOT NULL DEFAULT '0',
  `stock` int(11) unsigned NOT NULL DEFAULT '0',
  `unit` varchar(30) NOT NULL DEFAULT '',
  `sku` varchar(30) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recommended` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hot` int(11) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101655 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (11394,677,11398,0,'欧莱雅男士火山岩控油清豆洁面膏100ml',' 欧莱雅','','http://img.bqmart.cn/data/files/store/d77f9a67777325d5b64c004d4411b3ea.jpg','欧莱雅男士火山岩控油清豆洁面膏100ml',39,39,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2016-02-02 07:45:11'),(11400,776,11404,0,'舒肤佳纯白清香型香皂115g',' 舒肤佳','','http://img.bqmart.cn/data/files/store/b1f0a3993ad1f6ac0fbe79664257b352.jpg','舒肤佳纯白清香型香皂115g',4.9,4.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11401,776,11405,2,'舒肤佳芦荟呵护型香皂115g',' 舒肤佳','','http://img.bqmart.cn/data/files/store_8805/goods_45/small_201502121140453218.jpg','舒肤佳芦荟呵护型香皂115g',4.9,4.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11403,776,11407,0,'舒肤佳柠檬清新型香皂115g',' 舒肤佳','','http://img.bqmart.cn/data/files/store/9028d837a931587a4a74304f335b6e40.jpg','舒肤佳柠檬清新型香皂115g',4.9,4.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11405,778,11409,1,'阿迪达斯男士沐浴露（冰点）250ml',' 阿迪达斯','','http://img.bqmart.cn/data/files/store/ebae8e1047320e403991a2db8d68cfe3.jpg','阿迪达斯男士沐浴露（冰点）250ml',24.5,24.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11407,778,11411,4,'舒肤佳纯白清香型沐浴露200ml',' 舒肤佳','','http://img.bqmart.cn/data/files/store_8805/goods_117/small_201502121148378117.jpg','舒肤佳纯白清香型沐浴露200ml',13.5,13.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11408,778,11412,3,'舒肤佳柠檬清新型沐浴露200ml',' 舒肤佳','','http://img.bqmart.cn/data/files/store/072578f563d793cdfe2b37aeb31f4103.jpg','舒肤佳柠檬清新型沐浴露200ml',13.5,13.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11409,773,11413,3,'海飞丝去屑洗发露丝质柔滑型200ml',' 海飞丝','','http://img.bqmart.cn/data/files/store/d7039e48e4ffc24800ff79879bb64430.jpg','海飞丝去屑洗发露丝质柔滑型200ml',22.5,22.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11410,773,11414,3,'潘婷乳液修护洗发露200ml',' 潘婷','','http://img.bqmart.cn/data/files/store/e26e5bfc2ccf7eeb3a189050a9b4f802.jpg','潘婷乳液修护洗发露200ml',19.5,19.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11411,773,11415,1,'潘婷丝质顺滑洗发露200ml',' 潘婷','','http://img.bqmart.cn/data/files/store/b4e2a42d03285bf4dc047bd12f7b4a99.jpg','潘婷丝质顺滑洗发露200ml',19.5,19.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11413,773,11417,4,'清扬男士去屑洗发露多效水润养护型蓝瓶175ml',' 清扬','','http://img.bqmart.cn/data/files/store/24026cdd3995691917a858c2ec2626a8.jpg','清扬男士去屑洗发露多效水润养护型蓝瓶175ml',22.5,22.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11414,773,11418,3,'清扬男士去屑洗发露活力运动薄荷型蓝瓶175ml',' 清扬','','http://img.bqmart.cn/data/files/store_8805/goods_13/small_201502121410135148.jpg','清扬男士去屑洗发露活力运动薄荷型蓝瓶175ml',22.5,22.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11415,774,11419,4,'潘婷乳液修护润发精华素200ml',' 潘婷','','http://img.bqmart.cn/data/files/store/7a2c605b616e9aa91c06b8f47f67920e.jpg','潘婷乳液修护润发精华素200ml',19.5,19.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11416,774,11420,0,'潘婷丝质顺滑润发精华素200ml',' 潘婷','','http://img.bqmart.cn/data/files/store_8805/goods_153/small_201502121419132911.jpg','潘婷丝质顺滑润发精华素200ml',19.5,19.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11417,777,11421,3,'美涛保湿定型啫喱水183ml',' 美涛','','http://img.bqmart.cn/data/files/store/4d9f080e1f3d835de2262b96751f0a18.jpg','美涛保湿定型啫喱水183ml',19.8,19.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11534,799,11538,4,'洁丽雅格绒印花毛童巾',' 洁丽雅','','http://img.bqmart.cn/data/files/store_8805/goods_182/small_201502121653025707.jpg','洁丽雅格绒印花毛童巾',10,10,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11536,799,11540,3,'洁丽雅面巾76*34cm',' 洁丽雅','','http://img.bqmart.cn/data/files/store/79174fdda2de3dd5d1a90a11d52e518d.jpg','洁丽雅面巾76*34cm',21.8,21.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11538,798,11542,0,'妙洁超柔浴花',' 妙洁','','http://img.bqmart.cn/data/files/store/81b75345a4866d768babd0cf66f2bea3.jpg','妙洁超柔浴花',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11546,793,11550,4,'妙洁pe保鲜膜中号30cm*15m+5m',' 妙洁','','http://img.bqmart.cn/data/files/store/6d17847ddd3425ad878f8d07445a664e.jpg','妙洁pe保鲜膜中号30cm*15m+5m',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11551,793,11555,3,'妙洁点断式垃圾袋大号50cm*60cm',' 妙洁','','http://img.bqmart.cn/data/files/store/d7a2982eca140c5ab35581abb124af52.jpg','妙洁点断式垃圾袋大号50cm*60cm',4.8,4.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11552,793,11556,4,'妙洁点断式垃圾袋小号 40cm*45cm',' 妙洁','','http://img.bqmart.cn/data/files/store/77f169c35aca1a746d9394272747b263.jpg','妙洁点断式垃圾袋小号 40cm*45cm',4.8,4.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11553,793,11557,1,'妙洁点断式垃圾袋中号45cm*50cm 30只',' 妙洁','','http://img.bqmart.cn/data/files/store/365f24d6fff4d57bc5c0d1dd42c92c43.jpg','妙洁点断式垃圾袋中号45cm*50cm 30只',4.8,4.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11555,793,11559,1,'云蕾袋装竹棉棒100支装',' 云蕾','','http://img.bqmart.cn/data/files/store/097f32cfe2a7b64b999785812075c53a.jpg','云蕾袋装竹棉棒100支装',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11570,793,11574,4,'妙洁8盎司特惠纸杯 50只装',' 妙洁','','http://img.bqmart.cn/data/files/store/218b5db1bfa826f832feff27425e3165.jpg','妙洁8盎司特惠纸杯 50只装',6.8,6.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11572,790,11576,2,'大笨钟7号 单节',' 大笨钟','','http://img.bqmart.cn/data/files/store/aa8ae07ec4265b966a0fe0c9f0c8d189.jpg','大笨钟7号 单节',1,1,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11575,790,11579,2,'大笨钟电池5号 单节',' 大笨钟','','http://img.bqmart.cn/data/files/store/4ddbb7894a2ce65ecfc7c8109a7e2337.jpg','大笨钟电池5号 单节',1,1,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11577,790,11581,1,'丰蓝防漏电池1号',' 丰蓝','','http://img.bqmart.cn/data/files/store/f72449af0a483177a6cb5a99d6684887.jpg','丰蓝防漏电池1号',10,10,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11578,790,11582,1,'南孚电池5号单节',' 南孚','','http://img.bqmart.cn/data/files/store/8b9bf99922e6c98634eacb9bd5cbb511.jpg','南孚电池5号单节',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11580,790,11584,0,'南孚电池7号单节',' 南孚','','http://img.bqmart.cn/data/files/store_8805/goods_176/small_201502130912568881.jpg','南孚电池7号单节',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11581,790,11585,0,'南孚碱性吊卡2B7号2粒装',' 南孚','','http://img.bqmart.cn/data/files/store/6146429122f0ca7ca8a97b839921401d.jpg','南孚碱性吊卡2B7号2粒装',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11611,798,11615,0,'云蕾两用搓澡手套（细砂）',' 云蕾','','http://img.bqmart.cn/data/files/store_8805/goods_51/small_201503241457316940.jpg','云蕾两用搓澡手套（细砂）',6,6,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11852,729,11856,2,'百岁山景田天然矿泉水348ml',' 百岁山','','http://img.bqmart.cn/data/files/store/dcacc3aa9e3b47930cefe9bf7335d874.jpg','<p><span style=\"font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px;\">成立于1992年的景田公司，是一家专注于瓶装、桶装饮用水生产和销售的大型企业。自创办以来，公司分别在广东深圳、广东惠州百岁山、北京、福建及成都建立大型生产基地，公司拥有先进的生产厂房，二十八条先进的全自动生产线，其中百岁山生产基地还通过了国际最高标准生产认证。雄厚的技术</span><span style=\"font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px;\">力量和经济实力在饮用水行业中得到了公认。</span></p>\n\n<p><img alt=\"\" src=\"http://img.bqmart.cn/data/files/store/dcacc3aa9e3b47930cefe9bf7335d874.jpg\" /></p>\n',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2016-02-02 11:10:31'),(11853,729,11857,2,'恒大冰泉350ml',' 恒大','','http://img.bqmart.cn/data/files/store_8805/goods_46/small_201502141150469769.jpg','恒大冰泉350ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11855,729,11859,0,'名仁苏打水360ml',' 名仁','','http://img.bqmart.cn/data/files/store/a1c35aff7572c259c09a5ec3aaf27ea6.jpg','名仁苏打水360ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11857,729,11861,2,'怡宝纯净水350ml',' 怡宝','','http://img.bqmart.cn/data/files/store/28cb1d1d300b6edc06284c1fd1d96c67.jpg','怡宝纯净水350ml',1.5,1.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11859,729,11863,2,'恒大冰泉500ml',' 恒大','','http://img.bqmart.cn/data/files/store_8805/goods_42/small_201507220837222517.jpg','恒大冰泉500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11860,729,11864,2,'农夫山泉550ml',' 农夫山泉','','http://img.bqmart.cn/data/files/store/5bfffc7c20be68e4c92f7dde20327a57.jpg','农夫山泉550ml',1.5,1.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11861,729,11865,3,'普利思矿泉水600ml',' 普利思','','http://img.bqmart.cn/data/files/store/611de49e6d5353b850a0d37ac043cc8c.jpg','普利思矿泉水600ml',1,1,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11862,729,11866,4,'娃哈哈纯净水596ml',' 娃哈哈','','http://img.bqmart.cn/data/files/store/5a2baaebbdf48d51d0c82ebf7936cdc4.jpg','娃哈哈纯净水596ml',1.5,1.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11864,729,11868,4,'冰露饮用矿物质水1.5L',' 冰露','','http://img.bqmart.cn/data/files/store_8805/goods_154/small_201502141412347003.jpg','冰露饮用矿物质水1.5L',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11866,729,11870,1,'怡宝纯净水555ml',' 怡宝','','http://img.bqmart.cn/data/files/store/88e30a94a43cc8ab7f8a8ae51ab9306f.jpg','怡宝纯净水555ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11868,729,11872,4,'农夫山泉饮用天然水1.5L',' 农夫山泉','','http://img.bqmart.cn/data/files/store/b4dd5fe4c02b49f01dd0cd959b5deb69.jpg','农夫山泉饮用天然水1.5L',3.5,3.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11870,729,11874,3,'农夫山泉饮用天然水4L',' 农夫山泉','','http://img.bqmart.cn/data/files/store/a592798063b5965c4f69581dc5d5518e.jpg','农夫山泉饮用天然水4L',9,9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11872,729,11876,1,'普利思矿泉水1.5L',' 普利思','','http://img.bqmart.cn/data/files/store/394f6c1a0a512aaf7d63ca97dd74f823.jpg','普利思矿泉水1.5L',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11873,731,11877,3,'7喜冰爽柠檬330ml',' 7喜','','http://img.bqmart.cn/data/files/store/b63983960cd5b4a4146b59d1c1fdeb52.jpg','7喜冰爽柠檬330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11876,731,11880,0,'百事可乐2L',' 百事可乐','','http://img.bqmart.cn/data/files/store/44c0ffaa60f82bb014dcbfad893eda68.jpg','百事可乐2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11878,731,11882,4,'百事可乐600ml',' 百事可乐','','http://img.bqmart.cn/data/files/store/d1cfe53fc0a4ecf3e309c67419cd3cd5.jpg','百事可乐600ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11879,731,11883,2,'芬达橙味汽水2L',' 芬达','','http://img.bqmart.cn/data/files/store/d9f95bbe82722d3521a272364c8aa2f3.jpg','芬达橙味汽水2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11881,731,11885,2,'芬达橙味汽水听装330ml',' 芬达','','http://img.bqmart.cn/data/files/store/09e074ce7e19ced4713d32c5d21de74f.jpg','芬达橙味汽水听装330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11882,731,11886,2,'芬达苹果味汽水500ml',' 芬达','','http://img.bqmart.cn/data/files/store_8805/goods_90/small_201502141424507637.jpg','芬达苹果味汽水500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11885,731,11889,1,'芬达葡萄500ml',' 芬达','','http://img.bqmart.cn/data/files/store/a1586fffed49c71161f94c5899466eab.jpg','芬达葡萄500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11886,731,11890,1,'芬达汽水500ml',' 芬达','','http://img.bqmart.cn/data/files/store/8e474937ca2a56c971ea13d7100e9710.jpg','芬达汽水500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11888,731,11892,1,'可口可乐零度汽水500ml',' 可口可乐','','http://img.bqmart.cn/data/files/store/2f790812674693ae7175321aff412da4.jpg','可口可乐零度汽水500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11890,731,11894,4,'可口可乐汽水2L',' 可口可乐','','http://img.bqmart.cn/data/files/store/cfefba545529f3bb63a06b2a1a33c105.jpg','可口可乐汽水2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11891,731,11895,3,'可口可乐汽水330ml',' 可口可乐','','http://img.bqmart.cn/data/files/store/720164623a91b7dea6beb174efb517c5.jpg','可口可乐汽水330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11896,731,11900,2,'可口可乐水冻乐西柚味600ml',' 可口可乐','','http://img.bqmart.cn/data/files/store_8805/goods_158/small_201502141439188929.jpg','可口可乐水冻乐西柚味600ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11897,731,11901,4,'美年达2L',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_32/small_201502141447128583.jpg','美年达2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11898,731,11902,1,'美年达橙味汽水2L',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_131/small_201502141448517465.jpg','美年达橙味汽水2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11899,731,11903,2,'美年达橙味汽水330ml',' 美年达','','http://img.bqmart.cn/data/files/store/5bbc99822d09ed9bce83fce55461bbba.jpg','美年达橙味汽水330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11900,731,11904,4,'美年达橙味汽水600ml',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_72/small_201502141451124986.jpg','美年达橙味汽水600ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11901,731,11905,3,'美年达葡萄味2L',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_183/small_201502141453036093.jpg','美年达葡萄味2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11902,731,11906,3,'美年达青苹果味600ml',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_63/small_201502141454234378.jpg','美年达青苹果味600ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11903,731,11907,4,'美年达青苹果味听330ml',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_136/small_201502141455361442.jpg','美年达青苹果味听330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11907,731,11911,2,'醒目苹果味500ml',' 醒目','','http://img.bqmart.cn/data/files/store/9c040035a18eb4e8f2339afa04b91d32.jpg','醒目苹果味500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11908,731,11912,2,'醒目水蜜桃味500ml',' 醒目','','http://img.bqmart.cn/data/files/store_8264/goods_62/small_201502141504222027.jpg','醒目水蜜桃味500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11909,731,11913,3,'雪碧(500ml)500ml',' 雪碧','','http://img.bqmart.cn/data/files/store/722957a342448d2a6fbfb5ca3fa59589.jpg','雪碧(500ml)500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11910,731,11914,3,'雪碧碧冰薄荷味汽水2L',' 雪碧','','http://img.bqmart.cn/data/files/store/078eaa51298a39a8e3f630e6b5181ecc.jpg','雪碧碧冰薄荷味汽水2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11911,731,11915,3,'雪碧冰薄荷味汽水500ml',' 雪碧','','http://img.bqmart.cn/data/files/store_8805/goods_51/small_201502141510517590.jpg','雪碧冰薄荷味汽水500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11912,731,11916,3,'雪碧清爽柠檬味汽水330ml',' 雪碧','','http://img.bqmart.cn/data/files/store/3231c38866ee3525a4e17723fb7b27b8.jpg','雪碧清爽柠檬味汽水330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11914,730,11918,4,'汇源果肉系列橙汁饮料2.5L',' 汇源','','http://img.bqmart.cn/data/files/store_8805/goods_99/small_201502141521396575.jpg','汇源果肉系列橙汁饮料2.5L',13.5,13.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11917,730,11921,2,'汇源果肉系列桃果肉饮料2.5L',' 汇源','','http://img.bqmart.cn/data/files/store_8805/goods_48/small_201502141524087873.jpg','汇源果肉系列桃果肉饮料2.5L',13.5,13.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11919,732,11923,4,'康师傅冰糖柠檬500ml',' 康师傅 ','','http://img.bqmart.cn/data/files/store/d02ba7a0952e184b7202096a761d0d78.jpg','康师傅冰糖柠檬500ml',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11921,732,11925,3,'康师傅冰糖雪梨(490ml)490ml',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_12/small_201502141526529516.jpg','康师傅冰糖雪梨(490ml)490ml',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11923,732,11927,0,'康师傅蜂蜜柚子600ml',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_74/small_201502141527542309.jpg','康师傅蜂蜜柚子600ml',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11924,730,11928,0,'美之源果粒芒果450ml',' 美之源','','http://img.bqmart.cn/data/files/store_8264/goods_17/small_201502141530179241.jpg','美之源果粒芒果450ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11926,730,11930,4,'美汁源果粒橙450ml',' 美汁源','','http://img.bqmart.cn/data/files/store/8ba7122bfc9613f6a244379125470747.jpg','美汁源果粒橙450ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11928,730,11932,1,'美汁源热带果粒450ml',' 美汁源','','http://img.bqmart.cn/data/files/store/e3629e84b86c48f20b5f83da4d5b7e5b.jpg','美汁源热带果粒450ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11938,730,11942,0,'美汁源爽粒葡萄450ml',' 美汁源','','http://img.bqmart.cn/data/files/store/a965eca96c54a0aafab1ed42e63edd87.jpg','美汁源爽粒葡萄450ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11939,730,11943,0,'农夫果园饮料(混合果汁)橙+胡萝卜味600ml',' 农夫果园','','http://img.bqmart.cn/data/files/store_8805/goods_158/small_201502141602383290.jpg','农夫果园饮料(混合果汁)橙+胡萝卜味600ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11940,730,11944,4,'农夫果园饮料(混合果汁)芒果+菠萝味600ml',' 农夫果园','','http://img.bqmart.cn/data/files/store/facd6a5b61ecc888220c6559a5099060.jpg','农夫果园饮料(混合果汁)芒果+菠萝味600ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11941,731,11945,3,'水溶C100西柚445ml',' 水溶','','http://img.bqmart.cn/data/files/store_8805/goods_120/small_201502141612009291.jpg','水溶C100西柚445ml',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11942,731,11946,0,'水溶C100柠檬味复合果汁饮料西柚445ml',' 水溶C','','http://img.bqmart.cn/data/files/store/d1d442740dcbd20970906da818453609.jpg','水溶C100柠檬味复合果汁饮料西柚445ml',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11945,732,11949,4,'和其正600ml',' 和其正','','http://img.bqmart.cn/data/files/store_8805/goods_154/small_201502141622344409.jpg','和其正600ml',3.5,3.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11946,732,11950,3,'加多宝310ml',' 加多宝','','http://img.bqmart.cn/data/files/store/4d92f73d9b8adbb7b206e5293b6bb787.jpg','加多宝310ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11947,732,11951,4,'康师傅冰红茶1L',' 康师傅','','http://img.bqmart.cn/data/files/store/2c4f10f8d2e0605a7123e44aefe48bc0.jpg','康师傅冰红茶1L',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11948,732,11952,0,'康师傅冰红茶490ml',' 康师傅','','http://img.bqmart.cn/data/files/store/a1217c3bfc23be2b2c6e206d5cae5950.jpg','康师傅冰红茶490ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11950,732,11954,4,'康师傅蜂蜜绿茶490ml',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_76/small_201502141627565438.jpg','康师傅蜂蜜绿茶490ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11951,732,11955,1,'康师傅绿茶1L',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_123/small_201502141628435423.jpg','康师傅绿茶1L',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11952,732,11956,2,'康师傅茉莉茶蜜茶500ml+100ml',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_191/small_201502141629512873.jpg','康师傅茉莉茶蜜茶500ml+100ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11953,732,11957,1,'康师傅茉莉茶清茶500+100ml',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_38/small_201502141630388455.jpg','康师傅茉莉茶清茶500+100ml',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11954,732,11958,0,'康师傅茉莉蜜茶1L',' 康师傅','','http://img.bqmart.cn/data/files/store/4b4df07872e9c163fa0815f7f9b0f4dc.jpg','康师傅茉莉蜜茶1L',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11956,732,11960,4,'王老吉310ml',' 王老吉','','http://img.bqmart.cn/data/files/store/eefc1b7d89b4d2c04d085afa1c8e7d0e.jpg','王老吉310ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11958,731,11962,3,'尖叫活性肽运动饮料550ml',' 尖叫','','http://img.bqmart.cn/data/files/store_8805/goods_188/small_201502141636288588.jpg','尖叫活性肽运动饮料550ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11959,731,11963,3,'尖叫纤维饮料550ml',' 尖叫','','http://img.bqmart.cn/data/files/store_8805/goods_37/small_201502141637178951.jpg','尖叫纤维饮料550ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11960,731,11964,3,'乐百氏脉动桔子600ml',' 乐百氏','','http://img.bqmart.cn/data/files/store/b84c079de565ad02bc90d151167f8074.jpg','乐百氏脉动桔子600ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11961,731,11965,3,'乐百氏脉动水蜜桃600ml',' 乐百氏','','http://img.bqmart.cn/data/files/store/f7de2b2dd3f0c273348ef31ee738d5a1.jpg','乐百氏脉动水蜜桃600ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11962,731,11966,2,'农夫山泉维他命西柚味500ml',' 农夫山泉','','http://img.bqmart.cn/data/files/store/47cc6b1adbbabf591d77fa5af6f9e1f9.jpg','农夫山泉维他命西柚味500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11963,731,11967,2,'农夫维他命柑橘味550ml',' 农夫','','http://img.bqmart.cn/data/files/store_8805/goods_115/small_201502141641556199.jpg','农夫维他命柑橘味550ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11964,731,11968,1,'农夫维他命柠檬味550ml',' 农夫','','http://img.bqmart.cn/data/files/store_8805/goods_186/small_201502141643066073.jpg','农夫维他命柠檬味550ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11965,731,11969,1,'农夫维他命水石榴蓝莓风味500ml',' 农夫','','http://img.bqmart.cn/data/files/store_8805/goods_125/small_201502141645254631.jpg','农夫维他命水石榴蓝莓风味500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11966,731,11970,3,'农夫维他命水热带水果风味500ml',' 农夫','','http://img.bqmart.cn/data/files/store/a1b00a98fa197c0878a34f22eac4f9bb.jpg','农夫维他命水热带水果风味500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11968,731,11972,4,'怡泉+c600g',' 怡泉','','http://img.bqmart.cn/data/files/store_8805/goods_28/small_201502141650286378.jpg','怡泉+c600g',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11969,731,11973,3,'红牛维生素饮料250ml',' 红牛','','http://img.bqmart.cn/data/files/store/7a4b8149ed355bee6f8991d42dd01a25.jpg','红牛维生素饮料250ml',6,6,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12038,729,12042,1,'农夫山泉天然水380ml',' 农夫山泉','','http://img.bqmart.cn/data/files/store/26f2655364b8aef6428e3acdc9f73b89.jpg','农夫山泉天然水380ml',1.5,1.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12039,730,12043,2,'美汁源果粒橙1.25L',' 美汁源','','http://img.bqmart.cn/data/files/store/177db92c04031745c57542891e7d5106.jpg','美汁源果粒橙1.25L',7,7,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12041,730,12045,0,'农夫维他命水蓝莓树莓味500ml',' 农夫','','http://img.bqmart.cn/data/files/store_8805/goods_197/small_201502151113173074.jpg','农夫维他命水蓝莓树莓味500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12061,731,12065,2,'芬达青柠味汽水500ml',' 芬达','','http://img.bqmart.cn/data/files/store_8805/goods_0/small_201502151156403008.jpg','芬达青柠味汽水500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12066,822,12070,4,'六神特效花露水195ml',' 六神','','http://img.bqmart.cn/data/files/store/c0c6385b86008462d4c683dbe7fd6337.jpg','六神特效花露水195ml',11.5,11.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12068,793,12072,0,'云蕾一次性手套50只装',' 云蕾','','http://img.bqmart.cn/data/files/store/186d6ba365e32d601ff3709121d9f9a8.jpg','云蕾一次性手套50只装',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12070,793,12074,2,'云蕾袋装竹制牙签300支',' 云蕾','','http://img.bqmart.cn/data/files/store_8805/goods_48/small_201502151417285793.jpg','云蕾袋装竹制牙签300支',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12073,778,12077,1,'六神艾叶健肤沐浴露止痒型200ml',' 六神','','http://img.bqmart.cn/data/files/store/990fb13a65de003a8ca3ccdebfaa1e7d.jpg','六神艾叶健肤沐浴露止痒型200ml',10.5,10.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12074,778,12078,4,'六神艾叶健肤沐浴露清凉型200ml',' 六神','','http://img.bqmart.cn/data/files/store/d472ef775f5a1d9e68f16f425ea10d4f.jpg','六神艾叶健肤沐浴露清凉型200ml',10.5,10.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12075,778,12079,3,'六神艾叶健肤沐浴露（滋润型）200ml',' 六神','','http://img.bqmart.cn/data/files/store_8805/goods_78/small_201503211137583946.jpg','六神艾叶健肤沐浴露（滋润型）200ml',10.5,10.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12082,729,12086,3,'法国进口依云矿泉水500ml',' 依云','','http://img.bqmart.cn/data/files/store_8805/goods_2/small_201503211126423858.jpg','法国进口依云矿泉水500ml',8.9,8.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12084,729,12088,1,'法国进口依云矿泉水330ml',' 依云','','http://img.bqmart.cn/data/files/store/0a2c2c497ed13a98c3cf8d1a7268c87d.jpg','法国进口依云矿泉水330ml',7.9,7.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12085,797,12089,3,'妙洁易洁刷',' 妙洁','','http://img.bqmart.cn/data/files/store/09cd845cbd221f13e0b618b322d86386.jpg','妙洁易洁刷',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12106,798,12110,1,'云蕾两用搓澡手套（粗砂）',' 云蕾','','http://img.bqmart.cn/data/files/store/92e83e54e3ce1f12b87f58afe8a3c211.jpg','云蕾两用搓澡手套（粗砂）',6,6,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12116,776,12120,0,'蓝月亮芦荟瓶洗手液500ml',' 蓝月亮','','http://img.bqmart.cn/data/files/store_8264/goods_73/small_201502151547538431.jpg','蓝月亮芦荟瓶洗手液500ml',13.5,13.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12117,776,12121,0,'蓝月亮手洗洗衣液1kg',' 蓝月亮','','http://img.bqmart.cn/data/files/store_8805/goods_150/small_201502151549107435.JPG','蓝月亮手洗洗衣液1kg',23.5,23.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12142,800,12146,3,'洁丽雅简约休闲男袜26-28cm',' 洁丽雅','','http://img.bqmart.cn/data/files/store/b01858d30110447c1e9a354622df526c.jpg','洁丽雅简约休闲男袜26-28cm',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12188,731,12192,0,'百事可乐330ml',' 百事','','http://img.bqmart.cn/data/files/store/3325c776da429910a971f48635544ff4.jpg','百事可乐330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20574,732,20578,0,'天喔蜂蜜柚子茶500ml',' 天喔','','http://img.bqmart.cn/data/files/store/d1371af71232ddfbcd5adb695c6cafdb.jpg','天喔蜂蜜柚子茶500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20590,729,20594,1,'英格苏打水365ml',' 英格','','http://img.bqmart.cn/data/files/store/3daadb2da2281e5f9f118926fbf10e80.jpg','英格苏打水365ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20598,731,20602,0,'黑卡6小时强化维生素什果味饮料450ml',' 黑卡','','http://img.bqmart.cn/data/files/store/f04818d854686650d20c80df5a0a208e.jpg','黑卡6小时强化维生素什果味饮料450ml',5.8,5.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20606,731,20610,3,'中沃体质能量（黑标）600ml',' 中沃','','http://img.bqmart.cn/data/files/store/35be88ad5fbe1e868df35743c6d33fba.jpg','中沃体质能量（黑标）600ml',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20614,731,20618,1,'中沃体质能量（黄标）580ml',' 中沃','','http://img.bqmart.cn/data/files/store_8805/goods_145/small_201504111605452320.jpg','中沃体质能量（黄标）580ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20926,733,20930,1,'雀巢咖啡268ml',' 雀巢','','http://img.bqmart.cn/data/files/store/ba9c39ab9546058ca82a1b110b7935ef.jpg','雀巢咖啡268ml',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20927,733,20931,0,'星巴克咖啡摩卡281ml',' 星巴克','','http://img.bqmart.cn/data/files/store/04a357b6707ebe96d227d70d17e96944.jpg','星巴克咖啡摩卡281ml',19,19,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20928,733,20932,4,'星巴克咖啡原味281ml',' 星巴克','','http://img.bqmart.cn/data/files/store/300dea649c748aeb0d044a3602c2709d.jpg','星巴克咖啡原味281ml',19,19,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(25439,732,25443,3,'统一480ml小铭同学青柠红茶',' 统一','','http://img.bqmart.cn/data/files/store/f73c0d5e8eccff068b3929b64d2d14bf.jpg','统一480ml小铭同学青柠红茶',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(25440,732,25444,1,'统一480ml小铭同学冰橘绿茶',' 统一','','http://img.bqmart.cn/data/files/store/62739905ac20a04a05a036d137fc53d5.jpg','统一480ml小铭同学冰橘绿茶',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(28956,797,28960,3,'佳驰雕刻时光吸塑刻花筷10双装',' 佳驰','','http://img.bqmart.cn/data/files/store_8264/goods_84/small_201506111151249698.jpg','佳驰雕刻时光吸塑刻花筷10双装',8.5,8.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29128,730,29132,1,'汇源100%鲜橙汁1L',' 汇源','','http://img.bqmart.cn/data/files/store_8264/goods_150/small_201506111622306391.jpg','汇源100%鲜橙汁1L',14.8,14.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29142,730,29146,3,'统一海之言西柚500ml',' 统一','','http://img.bqmart.cn/data/files/store_8264/goods_90/small_201506111618101691.jpg','统一海之言西柚500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29147,730,29151,3,'海之言海盐+柠檬果味饮料500ml',' 海之言','','http://img.bqmart.cn/data/files/store/c7dbe78afd31c1a521f831440dce17ad.jpg','海之言海盐+柠檬果味饮料500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29152,730,29156,1,'统一海之言卡曼橘500ml',' 统一','','http://img.bqmart.cn/data/files/store_8264/goods_92/small_201506111601322629.jpg','统一海之言卡曼橘500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29157,730,29161,1,'汇源100%桃汁1L',' 汇源','','http://img.bqmart.cn/data/files/store/9c52f760d550144ad4e68e5d284bc21b.jpg','汇源100%桃汁1L',14.8,14.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29256,768,29260,3,'森田药妆活氧水感保湿面膜',' 森田','','http://img.bqmart.cn/data/files/store_8805/goods_83/small_201506111748034323.jpg','森田药妆活氧水感保湿面膜',12,12,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29291,822,29295,1,'枪手电热液体蚊香(无导线)套装1+2套装',' 枪手','','http://img.bqmart.cn/data/files/store/aebb9e254fd904d7b8786c4a255c62e0.jpg','枪手电热液体蚊香(无导线)套装1+2套装',29.8,29.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29298,822,29302,0,'枪手无味电蚊香片+器72片',' 枪手','','http://img.bqmart.cn/data/files/store_8264/goods_107/small_201506111448274690.jpg','枪手无味电蚊香片+器72片',22.5,22.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(41682,729,41687,3,'恒大冰泉1.25L',' 恒大','','http://img.bqmart.cn/data/files/store/93bcbe51c2978b72b868eb5c2591bf43.jpg','恒大冰泉1.25L',3.5,3.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(51946,791,51955,2,'固体胶7102',' 得力','','http://img.bqmart.cn/data/files/store_42/goods_65/small_201412171524254819.jpg','固体胶7102',1.5,1.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(51972,791,51981,2,'得力封箱胶带超透明装',' 得力','','http://img.bqmart.cn/data/files/store_5276/goods_79/small_201502151357591646.jpg','得力封箱胶带超透明装',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(51983,849,51992,0,'妙洁百洁布2片装',' 妙洁','','http://img.bqmart.cn/data/files/store/6418b6889b54577cc8ae3e5ddaed75e3.jpg','妙洁百洁布2片装',1.2,1.2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(51986,773,51995,1,'海飞丝去屑洗发露深层洁净型400ml洗头膏',' 海飞丝','','http://img.bqmart.cn/data/files/store/9fca88839c67187dea478017cafda64f.jpg','海飞丝去屑洗发露深层洁净型400ml洗头膏',42.5,42.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(52006,729,52015,0,'5℃活力恩天然无气苏打水500ml',' 5℃活力恩','','http://img.bqmart.cn/data/files/store/27b1b76e1d5ab1e8c894783ef2ae407f.jpg','5℃活力恩天然无气苏打水500ml',6.9,6.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(52010,729,52019,1,'5℃活力恩含气果味苏打水饮料（柠檬味）500ml',' 5℃活力恩','','http://img.bqmart.cn/data/files/store/5701314f261a59f7a4e5bb1299a7a2ea.jpg','5℃活力恩含气果味苏打水饮料（柠檬味）500ml',6.9,6.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(59688,729,59732,1,'乐百氏脉动蓝莓口味500ml',' 乐百氏','','http://img.bqmart.cn/data/files/store/4813fd32ac41cbe2ebe3d47ff7259e96.jpg','乐百氏脉动蓝莓口味500ml',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(91861,731,91917,3,'体质能量黑体580ml',' 体质能量','','http://img.bqmart.cn/data/files/store_42/goods_167/small_201412181116078006.jpg','体质能量黑体580ml',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(91862,731,91918,4,'体质能量黄体580ml功能饮料',' 体质能量','','http://img.bqmart.cn/data/files/store_42/goods_105/small_201412181115054646.jpg','体质能量黄体580ml功能饮料',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(101491,729,101547,0,'5℃活力恩原味含气苏打水',' 5℃活力恩','','http://img.bqmart.cn/data/files/store/dd8caf516a105bf9845ad8bdef665e44.jpg','5℃活力恩原味含气苏打水',9,9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(101492,733,101548,3,'5℃活力恩含气果味苏打水',' 5℃活力恩','','http://img.bqmart.cn/data/files/store/956615aac29c5542786d80825e1e29a1.jpg','5℃活力恩含气果味苏打水',9,9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(101654,849,101710,3,'笔记本',' ','','http://img.bqmart.cn/data/files/store/00acd3490a1c9020af4fca0d72d93ac9.jpg','笔记本',5.8,5.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_tags`
--

DROP TABLE IF EXISTS `goods_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `good_id` int(11) unsigned NOT NULL DEFAULT '0',
  `tag_id` int(11) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_tags`
--

LOCK TABLES `goods_tags` WRITE;
/*!40000 ALTER TABLE `goods_tags` DISABLE KEYS */;
INSERT INTO `goods_tags` VALUES (54,1,56,'2015-12-24 08:49:08','2015-12-24 08:49:08'),(55,1,57,'2015-12-24 08:49:08','2015-12-24 08:49:08'),(56,1,58,'2015-12-24 08:49:39','2015-12-24 08:49:39'),(57,1,59,'2016-01-21 07:15:03','2016-01-21 07:15:03'),(58,1,60,'2016-01-21 07:18:14','2016-01-21 07:18:14'),(59,3,61,'2016-01-21 07:41:57','2016-01-21 07:41:57'),(60,55,62,'2016-01-21 08:12:38','2016-01-21 08:12:38');
/*!40000 ALTER TABLE `goods_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `client_id` varchar(255) NOT NULL DEFAULT '',
  `access_token` varchar(255) NOT NULL DEFAULT '',
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES (101,1,'s6BhdRkqt3','6d0947b82dd6bc22669cbf619643bade3831af1d','2016-02-03 11:06:19','2016-02-03 10:06:19','2016-02-03 10:06:19'),(102,1,'s6BhdRkqt3','349d504602bcb378cf40bd77fd9b4524105f012c','2016-02-03 11:07:44','2016-02-03 10:07:44','2016-02-03 10:07:44'),(103,1,'s6BhdRkqt3','2249b77f30b896c07e95cb6a2aae95902950109b','2016-02-03 11:07:52','2016-02-03 10:07:52','2016-02-03 10:07:52'),(104,1,'s6BhdRkqt3','f5f787803106a749a673bd6119c47b2257c16ada','2016-02-03 11:07:58','2016-02-03 10:07:58','2016-02-03 10:07:58'),(105,1,'s6BhdRkqt3','53e66cb40cb1d2ae96a8324bf8fae36810a19fc2','2016-02-03 11:13:39','2016-02-03 10:13:38','2016-02-03 10:13:38'),(106,1,'s6BhdRkqt3','e90468fe54bd0874c0c420d0de5442a176287534','2016-02-03 11:13:46','2016-02-03 10:13:46','2016-02-03 10:13:46'),(107,1,'s6BhdRkqt3','ac477bf526f0b3c46d61eeff51c4a826ade3867e','2016-02-03 11:14:37','2016-02-03 10:14:37','2016-02-03 10:14:37'),(108,1,'s6BhdRkqt3','48c2baac671b9ed26d8096d4b55d53b10774b1ad','2016-02-03 11:17:38','2016-02-03 10:17:37','2016-02-03 10:17:37'),(109,3,'s6BhdRkqt3','5dc182d57c04defdd2e719c56833a5b551959316','2016-02-03 11:17:43','2016-02-03 10:17:43','2016-02-03 10:17:43'),(110,3,'s6BhdRkqt3','109081d798b478751a521f51a693e180b0ef1156','2016-02-03 11:17:57','2016-02-03 10:17:56','2016-02-03 10:17:56'),(111,3,'s6BhdRkqt3','a78ac6dbfe808cc7ce046fbc63766f7cbbd778a3','2016-02-03 11:21:40','2016-02-03 10:21:40','2016-02-03 10:21:40'),(112,3,'s6BhdRkqt3','657970c9906d82fb8cea5922db1df62330d82e01','2016-02-03 11:22:31','2016-02-03 10:22:31','2016-02-03 10:22:31'),(113,3,'s6BhdRkqt3','3c0de75d370c32333b8c2c2ac67a2bc73fd3d883','2016-02-03 11:23:04','2016-02-03 10:23:04','2016-02-03 10:23:04'),(114,3,'s6BhdRkqt3','5ebb5ccdb219b8debd529983f092ac14326a7d92','2016-02-03 11:25:47','2016-02-03 10:25:47','2016-02-03 10:25:47'),(115,3,'s6BhdRkqt3','01df09e027a4f2748c550b6951a8ee59d790061f','2016-02-03 11:44:24','2016-02-03 10:44:24','2016-02-03 10:44:24'),(116,3,'s6BhdRkqt3','ce1dfd6ccbcd4a4b634a389f49e77c1a6d1cc729','2016-02-03 11:45:56','2016-02-03 10:45:56','2016-02-03 10:45:56'),(117,3,'s6BhdRkqt3','3c3aa166942662fb74473eef7a95537987650dfd','2016-02-03 11:55:59','2016-02-03 10:55:58','2016-02-03 10:55:58'),(118,3,'s6BhdRkqt3','57b1fd1a0b3c7dcd1843bbf3324f2cfde466250c','2016-02-03 11:59:29','2016-02-03 10:59:28','2016-02-03 10:59:28'),(119,1,'s6BhdRkqt3','cc2af3935e98dc8b0af2c0c3e67338fcc3683054','2016-02-03 11:59:44','2016-02-03 10:59:43','2016-02-03 10:59:43'),(120,3,'s6BhdRkqt3','8a618c346a7f97dcc1f55846db8a596e8ab797cf','2016-02-03 12:02:48','2016-02-03 11:02:47','2016-02-03 11:02:47'),(121,3,'s6BhdRkqt3','4d5e1ec8edb414375ede671bd3388dabb7565e03','2016-02-03 12:02:52','2016-02-03 11:02:51','2016-02-03 11:02:51'),(122,1,'s6BhdRkqt3','488919679f18a4dd9ab82173d5956591c044e129','2016-02-03 12:03:10','2016-02-03 11:03:09','2016-02-03 11:03:09'),(123,1,'s6BhdRkqt3','e4f591071e591ed3157fc41bd5ca608bf20d5c3e','2016-02-03 12:03:40','2016-02-03 11:03:39','2016-02-03 11:03:39'),(124,1,'s6BhdRkqt3','ee5a8b69f6fcdcdee4ef80e7e1fd662b1234d9d7','2016-02-03 12:05:35','2016-02-03 11:05:34','2016-02-03 11:05:34'),(125,3,'s6BhdRkqt3','343cd8cb8ac12f9b6b5b2529b5a44d4e73b59a6d','2016-02-03 12:05:39','2016-02-03 11:05:38','2016-02-03 11:05:38'),(126,1,'s6BhdRkqt3','5027b64f0403ed622be9b7fac32622ae9b134e4c','2016-02-03 12:05:56','2016-02-03 11:05:55','2016-02-03 11:05:55'),(127,1,'s6BhdRkqt3','3bc00af636f84bb0bb0bdb5f72f630f02ec6f5a6','2016-02-03 12:06:57','2016-02-03 11:06:57','2016-02-03 11:06:57'),(128,3,'s6BhdRkqt3','034a3637420282b2cb1201e3bea38be6adb26c11','2016-02-03 12:08:18','2016-02-03 11:08:18','2016-02-03 11:08:18'),(129,3,'s6BhdRkqt3','ec86943e45ff3f03c94abe1ccba51100e9218b52','2016-02-03 12:08:36','2016-02-03 11:08:35','2016-02-03 11:08:35'),(130,1,'s6BhdRkqt3','2770f84ce862baea1f1fe85f03c7ef2f09a3acd2','2016-02-03 12:08:48','2016-02-03 11:08:47','2016-02-03 11:08:47'),(131,3,'s6BhdRkqt3','283bb408656cefdc985d343e0d63d169fb36a01a','2016-02-03 12:09:15','2016-02-03 11:09:15','2016-02-03 11:09:15'),(132,3,'s6BhdRkqt3','15de82df091a7a3a7d94ee3c20eac102546b5216','2016-02-03 12:09:23','2016-02-03 11:09:22','2016-02-03 11:09:22'),(133,3,'s6BhdRkqt3','0ab9650f8ded86d3fc1a8c8c5125f4a343fd9ebf','2016-02-03 12:10:15','2016-02-03 11:10:15','2016-02-03 11:10:15'),(134,1,'s6BhdRkqt3','60bd183f5e756b26733d89d717865c07e846aa26','2016-02-03 12:10:30','2016-02-03 11:10:29','2016-02-03 11:10:29'),(135,1,'s6BhdRkqt3','5be52d7c38ff7217ec130518e4b792d2de25e50a','2016-02-03 12:11:18','2016-02-03 11:11:17','2016-02-03 11:11:17'),(136,1,'s6BhdRkqt3','92232758a9501a11f7752e28e364f91080870757','2016-02-03 12:11:27','2016-02-03 11:11:27','2016-02-03 11:11:27'),(137,1,'s6BhdRkqt3','99ef606d232e93a892039f6e3ca2d8b982dfff56','2016-02-03 12:12:32','2016-02-03 11:12:31','2016-02-03 11:12:31'),(138,1,'s6BhdRkqt3','eee327c801da305fc24b097824b2cd2c23fc7b7c','2016-02-03 12:13:32','2016-02-03 11:13:32','2016-02-03 11:13:32'),(139,1,'s6BhdRkqt3','f2bbce43ef88b746ab666405c535a516207e0774','2016-02-03 12:14:25','2016-02-03 11:14:24','2016-02-03 11:14:24'),(140,1,'s6BhdRkqt3','acd2c34e1f8f69247e98bfe4f27def3eab47527d','2016-02-03 12:21:08','2016-02-03 11:21:08','2016-02-03 11:21:08'),(141,1,'s6BhdRkqt3','b7b49c022f7ac482d6fbbe70b6a9c392518f9837','2016-02-03 12:24:03','2016-02-03 11:24:02','2016-02-03 11:24:02'),(142,1,'s6BhdRkqt3','c03f71750e42b8a177c5ea406e4f8af902b12c8e','2016-02-03 12:32:02','2016-02-03 11:32:02','2016-02-03 11:32:02'),(143,1,'s6BhdRkqt3','c8970cbd13c0eadf56901163db56c456f0199991','2016-02-03 13:30:03','2016-02-03 12:30:03','2016-02-03 12:30:03'),(144,1,'s6BhdRkqt3','44b4eceb2f4c628743cf1ea3ea4cfaa32ac2fdfb','2016-02-03 13:48:00','2016-02-03 12:48:00','2016-02-03 12:48:00'),(145,1,'s6BhdRkqt3','70598bdde59d95b491c37511fe939c1bb4ec6593','2016-02-03 13:54:46','2016-02-03 12:54:46','2016-02-03 12:54:46'),(146,1,'s6BhdRkqt3','c6a3c9ea02d30579ea5279a97c93b5f0443aae9d','2016-02-04 02:19:17','2016-02-04 01:19:16','2016-02-04 01:19:16'),(147,1,'s6BhdRkqt3','fafd9689fc1c968d8ffdfe09b16f685a05d0b593','2016-02-04 02:43:54','2016-02-04 01:43:54','2016-02-04 01:43:54'),(148,1,'s6BhdRkqt3','d03e7da36fc0b19c12df5db99bb3a23f9b6972d5','2016-02-04 02:45:18','2016-02-04 01:45:18','2016-02-04 01:45:18'),(149,1,'s6BhdRkqt3','7e0ed55fe06ba6d576aa7774dccd6ffcd4891ce6','2016-02-04 02:46:02','2016-02-04 01:46:01','2016-02-04 01:46:01'),(150,1,'s6BhdRkqt3','6c517e84ae7fbac873b9c99c8ef76273f50b8acc','2016-02-04 02:46:57','2016-02-04 01:46:57','2016-02-04 01:46:57'),(151,1,'s6BhdRkqt3','fd200b1a9489eb7c3d25141f07e9ae68954cb94f','2016-02-04 02:49:48','2016-02-04 01:49:47','2016-02-04 01:49:47'),(152,1,'s6BhdRkqt3','3be748fe2118ba3042605e72553557f6fae810d4','2016-02-04 02:55:32','2016-02-04 01:55:31','2016-02-04 01:55:31'),(153,1,'s6BhdRkqt3','1a1ff2d61968ff5d13f2e900e4a4dc7771eafaa8','2016-02-04 02:57:30','2016-02-04 01:57:30','2016-02-04 01:57:30'),(154,1,'s6BhdRkqt3','b53be76161e1ae5c14b61ef65cc2cfadeb974036','2016-02-04 03:31:30','2016-02-04 02:31:30','2016-02-04 02:31:30'),(155,1,'s6BhdRkqt3','d2591779adfb577768dc09bcbc484598f083b258','2016-02-04 03:32:03','2016-02-04 02:32:02','2016-02-04 02:32:02'),(156,1,'s6BhdRkqt3','15fbc06deef858dfe610a9a440e5b4bc2cb77d62','2016-02-04 03:32:57','2016-02-04 02:32:56','2016-02-04 02:32:56'),(157,1,'s6BhdRkqt3','e6e2ee852ee292133bfcb0afb529e598959c6acb','2016-02-04 03:45:34','2016-02-04 02:45:34','2016-02-04 02:45:34'),(158,1,'s6BhdRkqt3','8ef9c24a6d7757d3e002a014430fdf790d792f09','2016-02-04 03:52:38','2016-02-04 02:52:38','2016-02-04 02:52:38'),(159,1,'s6BhdRkqt3','5327974412470c8d93b086e08191a5cdb703002d','2016-02-04 03:54:28','2016-02-04 02:54:28','2016-02-04 02:54:28'),(160,1,'s6BhdRkqt3','608d07dc1684510751b2fe1063e58446bb8ac8c0','2016-02-04 03:56:21','2016-02-04 02:56:21','2016-02-04 02:56:21'),(161,1,'s6BhdRkqt3','34691f60bffd285dbf31b2371a107aaaa7176b51','2016-02-04 03:56:42','2016-02-04 02:56:42','2016-02-04 02:56:42'),(162,1,'s6BhdRkqt3','ba086facdaeb48c05c657cfad2649a6fb4894565','2016-02-04 03:58:03','2016-02-04 02:58:02','2016-02-04 02:58:02'),(163,1,'s6BhdRkqt3','e5ade10410702822fc513a25f5f5acd9679b3769','2016-02-04 04:01:36','2016-02-04 03:01:35','2016-02-04 03:01:35'),(164,1,'s6BhdRkqt3','cfb03181bc5f38be59edbeb2e1734f0f4950238a','2016-02-04 04:04:04','2016-02-04 03:04:03','2016-02-04 03:04:03'),(165,1,'s6BhdRkqt3','3ccdb14d16014c26335df908f689ad0dd4e15a80','2016-02-04 04:08:24','2016-02-04 03:08:24','2016-02-04 03:08:24'),(166,1,'s6BhdRkqt3','27b18e3b1b2af63ec953180e8950d7f53a400f3b','2016-02-04 04:10:05','2016-02-04 03:10:05','2016-02-04 03:10:05'),(167,1,'s6BhdRkqt3','3c6864ba6186d1dd18f3e3adf2d09f1853be2777','2016-02-04 04:10:35','2016-02-04 03:10:34','2016-02-04 03:10:34'),(168,1,'s6BhdRkqt3','aa8f06756ffc35ade8545aa98c49052a612e37f8','2016-02-04 04:11:07','2016-02-04 03:11:07','2016-02-04 03:11:07'),(169,1,'s6BhdRkqt3','47ee85a1e5ca311629e047ea7282f5399534f713','2016-02-04 04:12:59','2016-02-04 03:12:58','2016-02-04 03:12:58'),(170,1,'s6BhdRkqt3','85cf4d4a2e7a6ab3f39a860b72624995b6cdb5d5','2016-02-04 04:14:25','2016-02-04 03:14:25','2016-02-04 03:14:25'),(171,1,'s6BhdRkqt3','82627372f3aa37fae78c290c80687c07cd7dd602','2016-02-04 04:15:34','2016-02-04 03:15:33','2016-02-04 03:15:33'),(172,1,'s6BhdRkqt3','166b010cdfc74ab041fc1c34480addc728d3c0cf','2016-02-04 04:15:45','2016-02-04 03:15:44','2016-02-04 03:15:44'),(173,1,'s6BhdRkqt3','f137ddc7cceb00a519c8db4e1f01c0345151ec1b','2016-02-04 04:16:27','2016-02-04 03:16:27','2016-02-04 03:16:27'),(174,1,'s6BhdRkqt3','36a05973ef93f48a7bafcf207d283addbbb902d1','2016-02-04 04:17:53','2016-02-04 03:17:52','2016-02-04 03:17:52'),(175,1,'s6BhdRkqt3','fc24e90e988ef8f46ff1171844d59793d63c9cf4','2016-02-04 04:18:09','2016-02-04 03:18:09','2016-02-04 03:18:09'),(176,1,'s6BhdRkqt3','858360abb18f75d046fd9b77933103b82ff63a3b','2016-02-04 04:18:20','2016-02-04 03:18:20','2016-02-04 03:18:20'),(177,1,'s6BhdRkqt3','c8305ef98e04b2fe5f6bb4b75a6ef59f135c4f59','2016-02-04 04:18:38','2016-02-04 03:18:38','2016-02-04 03:18:38'),(178,1,'s6BhdRkqt3','8008720240bf8e3e2acfb15eae64456d893195e4','2016-02-04 04:18:48','2016-02-04 03:18:48','2016-02-04 03:18:48'),(179,1,'s6BhdRkqt3','122c6e31b05677070447aa73f76a31083d600012','2016-02-04 04:19:03','2016-02-04 03:19:02','2016-02-04 03:19:02'),(180,1,'s6BhdRkqt3','6b4b0c8aa8f75e543ebe9f1d9a4f0a15c7cea310','2016-02-04 04:19:42','2016-02-04 03:19:42','2016-02-04 03:19:42'),(181,1,'s6BhdRkqt3','ef422b9b2f2f3958d9719f75b493aadc4fb98e89','2016-02-04 04:19:52','2016-02-04 03:19:52','2016-02-04 03:19:52'),(182,1,'s6BhdRkqt3','5d0e2bab2ab2d0543db789e0e56699c1968f2d61','2016-02-04 04:21:33','2016-02-04 03:21:32','2016-02-04 03:21:32'),(183,1,'s6BhdRkqt3','3d53df5cf1b9e03c0360dda89a28ced2472a8ba6','2016-02-04 04:26:09','2016-02-04 03:26:09','2016-02-04 03:26:09'),(184,1,'s6BhdRkqt3','e16d406513c89a1609f7c2e612d6f0cd35362782','2016-02-04 10:39:49','2016-02-04 09:39:49','2016-02-04 09:39:49'),(185,1,'s6BhdRkqt3','b42cbff796531fd516046d6ba5a07eb4b3087ff8','2016-02-04 10:40:07','2016-02-04 09:40:07','2016-02-04 09:40:07'),(186,1,'s6BhdRkqt3','6a1789ca4ae8d80f5a247ec9c0bffb388ef8ecec','2016-02-04 10:41:54','2016-02-04 09:41:53','2016-02-04 09:41:53'),(187,1,'s6BhdRkqt3','5f1dbdf052e02ef2c995d2ebf2fb2fa587c6a641','2016-02-04 10:42:37','2016-02-04 09:42:37','2016-02-04 09:42:37'),(188,1,'s6BhdRkqt3','a470c8f47a077fe663032b7fb3939ce4de865670','2016-02-04 10:42:45','2016-02-04 09:42:45','2016-02-04 09:42:45'),(189,1,'s6BhdRkqt3','2b471878600969b91934942ec26f72b3178ead87','2016-02-04 10:42:48','2016-02-04 09:42:48','2016-02-04 09:42:48'),(190,1,'s6BhdRkqt3','5067af0e070151c15b24f8c781525e2bb8b8f3fa','2016-02-04 10:44:59','2016-02-04 09:44:59','2016-02-04 09:44:59'),(191,1,'s6BhdRkqt3','d664ebe8dc09e087787f60311bf8aadb6fa25b45','2016-02-04 11:15:23','2016-02-04 10:15:23','2016-02-04 10:15:23'),(192,1,'s6BhdRkqt3','a0daa4afe087d49e929cfdac6d89bb2c86dba64e','2016-02-05 02:14:25','2016-02-05 01:14:25','2016-02-05 01:14:25'),(193,1,'s6BhdRkqt3','79b031f70a9d7ffb472573dda203746f494ec25d','2016-02-05 02:27:54','2016-02-05 01:27:53','2016-02-05 01:27:53'),(194,1,'s6BhdRkqt3','62b60cbefdd4cfc77957e4c846f1865f060acae9','2016-02-05 02:33:31','2016-02-05 01:33:30','2016-02-05 01:33:30'),(195,1,'s6BhdRkqt3','5fdf7732d48190422bab71adbe8eb0fcce0d6765','2016-02-05 02:34:17','2016-02-05 01:34:17','2016-02-05 01:34:17'),(196,1,'s6BhdRkqt3','c635e2ec5156fcec12107c8c07fb8fb23975fe13','2016-02-05 02:35:21','2016-02-05 01:35:21','2016-02-05 01:35:21'),(197,1,'s6BhdRkqt3','95407690e97301db8d4e3643056f77a122888043','2016-02-05 02:40:42','2016-02-05 01:40:42','2016-02-05 01:40:42'),(198,1,'s6BhdRkqt3','61ea642a391817e033b7c0d36c9d05a39519a7d6','2016-02-05 02:52:23','2016-02-05 01:52:22','2016-02-05 01:52:22'),(199,1,'s6BhdRkqt3','3adc287c002501bf56de6bfd14791c6399bfe2a1','2016-02-05 02:53:25','2016-02-05 01:53:24','2016-02-05 01:53:24'),(200,1,'s6BhdRkqt3','dd182a5ed5b2909784a8dc04469ce835a0fc5f27','2016-02-05 02:53:43','2016-02-05 01:53:43','2016-02-05 01:53:43'),(201,1,'s6BhdRkqt3','9348d0db3d4319837d6de45570402a62380d35c1','2016-02-05 02:54:48','2016-02-05 01:54:47','2016-02-05 01:54:47'),(202,1,'s6BhdRkqt3','a3b46c209eaa9c2cee4283bc8860d7bf8b781710','2016-02-05 02:55:27','2016-02-05 01:55:27','2016-02-05 01:55:27'),(203,1,'s6BhdRkqt3','e200a8752152785e72cdd325b7e48a8d9ed57dde','2016-02-05 02:56:29','2016-02-05 01:56:28','2016-02-05 01:56:28'),(204,1,'s6BhdRkqt3','caec216f91d9dc44e382885e2b5fdf6058079a16','2016-02-05 02:56:55','2016-02-05 01:56:55','2016-02-05 01:56:55'),(205,1,'s6BhdRkqt3','3fd8be64442ae5dbd0c79ce097dec83cc51e7e08','2016-02-05 02:57:18','2016-02-05 01:57:17','2016-02-05 01:57:17'),(206,1,'s6BhdRkqt3','9e905f90770f1bbd12edc4cfef8626a36affb6a5','2016-02-05 02:57:31','2016-02-05 01:57:31','2016-02-05 01:57:31'),(207,1,'s6BhdRkqt3','760deb130ef11684c03c3b1091ed51b17fe5e72d','2016-02-05 02:57:37','2016-02-05 01:57:37','2016-02-05 01:57:37'),(208,1,'s6BhdRkqt3','2605823e05fe5c7dcf1907fe648a3f7b7c1db5c1','2016-02-05 02:58:16','2016-02-05 01:58:15','2016-02-05 01:58:15'),(209,1,'s6BhdRkqt3','ab484041c150862b005ba43ea97268b02819f50b','2016-02-05 02:59:35','2016-02-05 01:59:35','2016-02-05 01:59:35'),(210,1,'s6BhdRkqt3','e9217815cf42e58f2301d1f551ab618568ba1079','2016-02-05 02:59:46','2016-02-05 01:59:45','2016-02-05 01:59:45'),(211,1,'s6BhdRkqt3','3d7145eb5595155cde37b72ba80c7269720fc6dd','2016-02-05 02:59:52','2016-02-05 01:59:51','2016-02-05 01:59:51'),(212,1,'s6BhdRkqt3','771ebdf9d59983ce07f35cd3cd5aee9e46233f15','2016-02-05 03:00:10','2016-02-05 02:00:09','2016-02-05 02:00:09'),(213,1,'s6BhdRkqt3','c990e7c3aae5f7915e872105c21ab779a3e2f086','2016-02-05 03:01:59','2016-02-05 02:01:58','2016-02-05 02:01:58'),(214,1,'s6BhdRkqt3','4fba08c909fc3624327f89c011c7df1584941845','2016-02-05 03:06:26','2016-02-05 02:06:26','2016-02-05 02:06:26'),(215,1,'s6BhdRkqt3','acf9b7bd6237856b503f52019bbfcc7b0bbe9daa','2016-02-05 03:07:01','2016-02-05 02:07:00','2016-02-05 02:07:00'),(216,1,'s6BhdRkqt3','2fcf075cf25a861bebd7364719e7ed5fa947c52c','2016-02-05 03:07:30','2016-02-05 02:07:30','2016-02-05 02:07:30'),(217,1,'s6BhdRkqt3','fa9c2f6a5b6b1571ac55488a52a95ab13f8326e1','2016-02-05 03:08:58','2016-02-05 02:08:57','2016-02-05 02:08:57'),(218,1,'s6BhdRkqt3','7334bf7ec1f1852c14c600f099db8d680651e106','2016-02-05 03:09:23','2016-02-05 02:09:22','2016-02-05 02:09:22'),(219,1,'s6BhdRkqt3','fff0da7ac9cbadff1b1be892c197cd2d304c95b9','2016-02-05 03:09:54','2016-02-05 02:09:54','2016-02-05 02:09:54'),(220,1,'s6BhdRkqt3','ed0a1fc2010fc6f5cf925924933d9d09b72830df','2016-02-05 03:10:29','2016-02-05 02:10:29','2016-02-05 02:10:29'),(221,1,'s6BhdRkqt3','f82f617c2f521a7a9dbb9f7152d1363824c602bd','2016-02-05 03:16:15','2016-02-05 02:16:14','2016-02-05 02:16:14'),(222,1,'s6BhdRkqt3','b82d918dd9c74096be3ede7a2fd066fee5162456','2016-02-05 03:18:43','2016-02-05 02:18:42','2016-02-05 02:18:42'),(223,1,'s6BhdRkqt3','2fdd61df96372d75ba7921a56aeb781b957e6316','2016-02-05 03:23:39','2016-02-05 02:23:38','2016-02-05 02:23:38'),(224,1,'s6BhdRkqt3','a025745d41d45d3760b98bc3c021f136931075dc','2016-02-05 03:29:45','2016-02-05 02:29:45','2016-02-05 02:29:45'),(225,1,'s6BhdRkqt3','36cc1d11f7846bc19a812d27f3f7e2f4f283413b','2016-02-05 03:29:50','2016-02-05 02:29:49','2016-02-05 02:29:49'),(226,1,'s6BhdRkqt3','c1a74d36e17ced9918ac10b8213fea64399341c1','2016-02-05 03:29:52','2016-02-05 02:29:52','2016-02-05 02:29:52'),(227,1,'s6BhdRkqt3','d353961377bab3d3950ba536fa1f8c164312f92d','2016-02-05 03:29:56','2016-02-05 02:29:55','2016-02-05 02:29:55'),(228,1,'s6BhdRkqt3','89b2ea82873427f7951f7c5fb98791fb96d18da6','2016-02-05 03:30:05','2016-02-05 02:30:04','2016-02-05 02:30:04'),(229,1,'s6BhdRkqt3','b397f3054b66404f4a3a167cb614d0bfc2de5058','2016-02-05 03:30:17','2016-02-05 02:30:16','2016-02-05 02:30:16'),(230,1,'s6BhdRkqt3','498eae91533f7b32326653faf7dda7240fadbb75','2016-02-05 03:30:19','2016-02-05 02:30:19','2016-02-05 02:30:19'),(231,1,'s6BhdRkqt3','da1b38c79cdb759ed44c6dee3df59c21580c048a','2016-02-05 03:30:27','2016-02-05 02:30:27','2016-02-05 02:30:27'),(232,1,'s6BhdRkqt3','08bd029bd863856b4284f14f01de8a3bb3d6522a','2016-02-05 03:32:42','2016-02-05 02:32:41','2016-02-05 02:32:41'),(233,1,'s6BhdRkqt3','373d54b98a42a6bb5d30f1330c7afb049dde9dad','2016-02-05 03:34:44','2016-02-05 02:34:44','2016-02-05 02:34:44'),(234,1,'s6BhdRkqt3','fb844550ba6b7d00123d27ac11bb852dad241f60','2016-02-05 03:34:49','2016-02-05 02:34:49','2016-02-05 02:34:49'),(235,1,'s6BhdRkqt3','bef2dc0d956d976f001db7073f776b0dbd2b8fc0','2016-02-05 03:37:45','2016-02-05 02:37:44','2016-02-05 02:37:44'),(236,1,'s6BhdRkqt3','ade5c11f66ea5943f3e566d47790374f8a367865','2016-02-05 03:39:13','2016-02-05 02:39:12','2016-02-05 02:39:12'),(237,1,'s6BhdRkqt3','3cb1fc05ee7508df1829c566ec56baef86b44a1e','2016-02-05 03:39:53','2016-02-05 02:39:53','2016-02-05 02:39:53'),(238,1,'s6BhdRkqt3','c109f2d0a92d7d9992a131b9b5736fd3afa22d8c','2016-02-05 04:03:45','2016-02-05 03:03:45','2016-02-05 03:03:45'),(239,1,'s6BhdRkqt3','c96dce16401bc5e387bcd0929598a922a58f4028','2016-02-05 04:03:58','2016-02-05 03:03:57','2016-02-05 03:03:57'),(240,1,'s6BhdRkqt3','935b5d769d56003f55a78382f0c23e9ea88f6823','2016-02-05 04:04:49','2016-02-05 03:04:48','2016-02-05 03:04:48'),(241,1,'s6BhdRkqt3','73e3c916c617b7dee202b8544cc7df0bee0dc138','2016-02-05 04:05:41','2016-02-05 03:05:41','2016-02-05 03:05:41'),(242,1,'s6BhdRkqt3','38558e807eea0a69bf95bc06295ada4fbcfa2b6e','2016-02-05 04:06:47','2016-02-05 03:06:47','2016-02-05 03:06:47');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `client_id` varchar(255) NOT NULL DEFAULT '',
  `auth_code` varchar(255) NOT NULL DEFAULT '',
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(255) NOT NULL DEFAULT '',
  `client_secret` varchar(255) NOT NULL DEFAULT '',
  `redirect_uri` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (18,'s6BhdRkqt3','gX1fBat3bV','','2016-01-26 12:12:13','2016-01-26 12:12:13');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `client_id` varchar(255) NOT NULL DEFAULT '',
  `refresh_token` varchar(255) NOT NULL DEFAULT '',
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES (101,1,'s6BhdRkqt3','62660ffa04f5b51d4bde044d152d305e69135145','2016-02-17 10:06:19','2016-02-03 10:06:19','2016-02-03 10:06:19'),(102,1,'s6BhdRkqt3','8a67a149480ee8edd058449a0db1df4f5b6d84bf','2016-02-17 10:07:44','2016-02-03 10:07:44','2016-02-03 10:07:44'),(103,1,'s6BhdRkqt3','34111b78d06441268048f5a0183ab270e70f5185','2016-02-17 10:07:52','2016-02-03 10:07:52','2016-02-03 10:07:52'),(104,1,'s6BhdRkqt3','26adbf91b2e8f298d9eb422a0507f6084816e82e','2016-02-17 10:07:58','2016-02-03 10:07:58','2016-02-03 10:07:58'),(105,1,'s6BhdRkqt3','0bf0ec9d5701951b39cbf7b465d52070f656aa79','2016-02-17 10:13:39','2016-02-03 10:13:38','2016-02-03 10:13:38'),(106,1,'s6BhdRkqt3','9e2d113a238757f17010bf7826815e36f730b901','2016-02-17 10:13:46','2016-02-03 10:13:46','2016-02-03 10:13:46'),(107,1,'s6BhdRkqt3','fa45aae3e6b341f98d82fe779a6cc0ec00a67842','2016-02-17 10:14:37','2016-02-03 10:14:37','2016-02-03 10:14:37'),(108,1,'s6BhdRkqt3','2f92412e29618d6c3ec31c49a6a3e5dfc273484a','2016-02-17 10:17:38','2016-02-03 10:17:37','2016-02-03 10:17:37'),(109,3,'s6BhdRkqt3','51c43f652948e60fe1e32ee7089b781aab746904','2016-02-17 10:17:43','2016-02-03 10:17:43','2016-02-03 10:17:43'),(110,3,'s6BhdRkqt3','5e920a26756ead2db4f38691c9a365e92c9c3579','2016-02-17 10:17:57','2016-02-03 10:17:56','2016-02-03 10:17:56'),(111,3,'s6BhdRkqt3','a48dad2e810f8fb04a787c72a57e1f16c45b1653','2016-02-17 10:21:40','2016-02-03 10:21:40','2016-02-03 10:21:40'),(112,3,'s6BhdRkqt3','428fe1c86c6bbb083e8333c81516693416900e32','2016-02-17 10:22:31','2016-02-03 10:22:31','2016-02-03 10:22:31'),(113,3,'s6BhdRkqt3','71391f4d81a2f8eec44a65694d96c7d1502d09ed','2016-02-17 10:23:04','2016-02-03 10:23:04','2016-02-03 10:23:04'),(114,3,'s6BhdRkqt3','73d8a4b026ffd448cd33ac496e2375c9e54be5f7','2016-02-17 10:25:47','2016-02-03 10:25:47','2016-02-03 10:25:47'),(115,3,'s6BhdRkqt3','790b89cef01b3e528d2cf2f58049096b283a0150','2016-02-17 10:44:24','2016-02-03 10:44:24','2016-02-03 10:44:24'),(116,3,'s6BhdRkqt3','d502d213a4717c46308a3803250ce8406b540a45','2016-02-17 10:45:56','2016-02-03 10:45:56','2016-02-03 10:45:56'),(117,3,'s6BhdRkqt3','844019680314eb08cda6ab123777e138505c6f70','2016-02-17 10:55:59','2016-02-03 10:55:58','2016-02-03 10:55:58'),(118,3,'s6BhdRkqt3','9ba07c47ed51a76a34585691a65c1c57b2e1dbd6','2016-02-17 10:59:29','2016-02-03 10:59:28','2016-02-03 10:59:28'),(119,1,'s6BhdRkqt3','43a98c303a9ae82440b3aa680eac50dc521926a7','2016-02-17 10:59:44','2016-02-03 10:59:43','2016-02-03 10:59:43'),(120,3,'s6BhdRkqt3','074825862087a169ed03f9b7c4a9573cf8e45711','2016-02-17 11:02:48','2016-02-03 11:02:47','2016-02-03 11:02:47'),(121,3,'s6BhdRkqt3','0d76adb4c0dfd987338e943ea8d6fcdce3e611a9','2016-02-17 11:02:52','2016-02-03 11:02:51','2016-02-03 11:02:51'),(122,1,'s6BhdRkqt3','bae68bf66d9994c94c9f8a038f9ccec69bb201ed','2016-02-17 11:03:10','2016-02-03 11:03:09','2016-02-03 11:03:09'),(123,1,'s6BhdRkqt3','10e9b7d4cd4fedb5ddf1d94eca8c4afb4b02b1db','2016-02-17 11:03:40','2016-02-03 11:03:39','2016-02-03 11:03:39'),(124,1,'s6BhdRkqt3','23306a920837ff6e1f83c08daa035a92cb96cdff','2016-02-17 11:05:35','2016-02-03 11:05:34','2016-02-03 11:05:34'),(125,3,'s6BhdRkqt3','a96e1e65e61090a32d3b734568f1919339afa699','2016-02-17 11:05:39','2016-02-03 11:05:38','2016-02-03 11:05:38'),(126,1,'s6BhdRkqt3','22e764617363df8390ba60ee65255d28147edc51','2016-02-17 11:05:56','2016-02-03 11:05:55','2016-02-03 11:05:55'),(127,1,'s6BhdRkqt3','e5aad5ae9f9e579e0f041bd8acd91ee554fe0ec5','2016-02-17 11:06:57','2016-02-03 11:06:57','2016-02-03 11:06:57'),(128,3,'s6BhdRkqt3','21e16217412caa74fe6e23b31eb028bf681e281c','2016-02-17 11:08:18','2016-02-03 11:08:18','2016-02-03 11:08:18'),(129,3,'s6BhdRkqt3','3ec6000494eb7279682430b699a73761c8b49909','2016-02-17 11:08:36','2016-02-03 11:08:35','2016-02-03 11:08:35'),(130,1,'s6BhdRkqt3','41e130e13eeffa526822926fb7bade424eca37fb','2016-02-17 11:08:48','2016-02-03 11:08:47','2016-02-03 11:08:47'),(131,3,'s6BhdRkqt3','6d7ada0ebac9954b3f3e59cfc53d7408b5de066e','2016-02-17 11:09:15','2016-02-03 11:09:15','2016-02-03 11:09:15'),(132,3,'s6BhdRkqt3','8d5d98cea8955bdd0d35b895f99bae8e3add904f','2016-02-17 11:09:23','2016-02-03 11:09:22','2016-02-03 11:09:22'),(133,3,'s6BhdRkqt3','94777ebc9f2832915b11474aac05cd267be05890','2016-02-17 11:10:15','2016-02-03 11:10:15','2016-02-03 11:10:15'),(134,1,'s6BhdRkqt3','76966a40fab37418afa5d3f35d6358e8a5849d8e','2016-02-17 11:10:30','2016-02-03 11:10:29','2016-02-03 11:10:29'),(135,1,'s6BhdRkqt3','211be5e8394b5eec84dd2f1cddd43bf03dbe9231','2016-02-17 11:11:18','2016-02-03 11:11:17','2016-02-03 11:11:17'),(136,1,'s6BhdRkqt3','4b8e6fcbd042ec1e9be89b03375ad7b71260add2','2016-02-17 11:11:27','2016-02-03 11:11:27','2016-02-03 11:11:27'),(137,1,'s6BhdRkqt3','87eb3890f6d1c0c2e65c51a255fe18bf954ec803','2016-02-17 11:12:32','2016-02-03 11:12:31','2016-02-03 11:12:31'),(138,1,'s6BhdRkqt3','73c5da1ffc6721fcbbb590f77d7512c2ad9524f7','2016-02-17 11:13:32','2016-02-03 11:13:32','2016-02-03 11:13:32'),(139,1,'s6BhdRkqt3','4cfd822330907f73c9d40cb242b97cd7fa971800','2016-02-17 11:14:25','2016-02-03 11:14:24','2016-02-03 11:14:24'),(140,1,'s6BhdRkqt3','ab6b78e1006c7250e23a3d6493e9f80a1073d5dc','2016-02-17 11:21:08','2016-02-03 11:21:08','2016-02-03 11:21:08'),(141,1,'s6BhdRkqt3','897c435122e7d64f36d4934d601b1e667a70327e','2016-02-17 11:24:03','2016-02-03 11:24:02','2016-02-03 11:24:02'),(142,1,'s6BhdRkqt3','2e0b411f07228758cfe885eaa9af65962d924c68','2016-02-17 11:32:02','2016-02-03 11:32:02','2016-02-03 11:32:02'),(143,1,'s6BhdRkqt3','f09642f4891ec3de4a0ee193e589daf0a73a5191','2016-02-17 12:30:03','2016-02-03 12:30:03','2016-02-03 12:30:03'),(144,1,'s6BhdRkqt3','fe400d853822f3068eacfb5efb54e1cf38458001','2016-02-17 12:48:00','2016-02-03 12:48:00','2016-02-03 12:48:00'),(145,1,'s6BhdRkqt3','d4ff8c9cce91b64e93acdaec0c92cb4c51bdad51','2016-02-17 12:54:46','2016-02-03 12:54:46','2016-02-03 12:54:46'),(146,1,'s6BhdRkqt3','f3d91e15d0f1a5d8f63b9c0fdd614fedd148a799','2016-02-18 01:19:17','2016-02-04 01:19:16','2016-02-04 01:19:16'),(147,1,'s6BhdRkqt3','163ffa05a18515438f266ed0d1ee36fe3447b523','2016-02-18 01:43:54','2016-02-04 01:43:54','2016-02-04 01:43:54'),(148,1,'s6BhdRkqt3','0d4a9e9f080745354174d9f5f2ccdd4f4c62fd76','2016-02-18 01:45:18','2016-02-04 01:45:18','2016-02-04 01:45:18'),(149,1,'s6BhdRkqt3','ce8d816d51f9c0eff168a21d8424e6440c7e5bde','2016-02-18 01:46:02','2016-02-04 01:46:01','2016-02-04 01:46:01'),(150,1,'s6BhdRkqt3','118aca8e0ba8171f9c51fe2ea85e09a0a03272ff','2016-02-18 01:46:57','2016-02-04 01:46:57','2016-02-04 01:46:57'),(151,1,'s6BhdRkqt3','2336a55006f3cf6a84130d3a2b9a0c505b655bd2','2016-02-18 01:49:48','2016-02-04 01:49:47','2016-02-04 01:49:47'),(152,1,'s6BhdRkqt3','668110b879c7a7d8eea693bdf81210e0e8c512ed','2016-02-18 01:55:32','2016-02-04 01:55:31','2016-02-04 01:55:31'),(153,1,'s6BhdRkqt3','b7360f1a7b0f03bb6a4ba1b202ae700263ad3390','2016-02-18 01:57:30','2016-02-04 01:57:30','2016-02-04 01:57:30'),(154,1,'s6BhdRkqt3','4f03eeca52bfa96821cf1da84d879781b65a5a94','2016-02-18 02:31:30','2016-02-04 02:31:30','2016-02-04 02:31:30'),(155,1,'s6BhdRkqt3','9a4a0643045cb9200a9975897e5c8a6cac3ca6f8','2016-02-18 02:32:03','2016-02-04 02:32:02','2016-02-04 02:32:02'),(156,1,'s6BhdRkqt3','438040a32aa3416e62ddf3890c0a173db3bac03f','2016-02-18 02:32:57','2016-02-04 02:32:56','2016-02-04 02:32:56'),(157,1,'s6BhdRkqt3','f12902c45376790d3e4d44ce648f5c558188ebab','2016-02-18 02:45:34','2016-02-04 02:45:34','2016-02-04 02:45:34'),(158,1,'s6BhdRkqt3','f659cbdc0d2292cfeaa1033c132ec739a61a1d07','2016-02-18 02:52:38','2016-02-04 02:52:38','2016-02-04 02:52:38'),(159,1,'s6BhdRkqt3','b4a5953f606f05da0496f973aaa58e98f722b469','2016-02-18 02:54:28','2016-02-04 02:54:28','2016-02-04 02:54:28'),(160,1,'s6BhdRkqt3','262010c35525aeab5ca54521e10bd633f80fdacb','2016-02-18 02:56:21','2016-02-04 02:56:21','2016-02-04 02:56:21'),(161,1,'s6BhdRkqt3','55bef6000601da18bf3ec6af1e218c9a7a315c47','2016-02-18 02:56:42','2016-02-04 02:56:42','2016-02-04 02:56:42'),(162,1,'s6BhdRkqt3','298f198a70794ce55637fbd72288d3e73764f0e1','2016-02-18 02:58:03','2016-02-04 02:58:02','2016-02-04 02:58:02'),(163,1,'s6BhdRkqt3','0ea2d0bde3dd2e6b9a41afb1a313ddc6d8a0f83b','2016-02-18 03:01:36','2016-02-04 03:01:35','2016-02-04 03:01:35'),(164,1,'s6BhdRkqt3','9191f092b191646a6e93d2be797069f4ed250e9a','2016-02-18 03:04:04','2016-02-04 03:04:03','2016-02-04 03:04:03'),(165,1,'s6BhdRkqt3','755086f6291deacb6f70a68a39712b92509c7fac','2016-02-18 03:08:24','2016-02-04 03:08:24','2016-02-04 03:08:24'),(166,1,'s6BhdRkqt3','2029c1cc869dcf3c6ee482bf86f175486b78499d','2016-02-18 03:10:05','2016-02-04 03:10:05','2016-02-04 03:10:05'),(167,1,'s6BhdRkqt3','61a7147b65e753f531c63aad6be2b7cd7252cd95','2016-02-18 03:10:35','2016-02-04 03:10:34','2016-02-04 03:10:34'),(168,1,'s6BhdRkqt3','d413edacc06d53ca4c9286b4a4ef33bc80ba3de2','2016-02-18 03:11:07','2016-02-04 03:11:07','2016-02-04 03:11:07'),(169,1,'s6BhdRkqt3','f7539f13ae62de7e00a1f477e260ef493be59fdd','2016-02-18 03:12:59','2016-02-04 03:12:58','2016-02-04 03:12:58'),(170,1,'s6BhdRkqt3','1323acfcb8aad21363d3695867399178abb2ed01','2016-02-18 03:14:25','2016-02-04 03:14:25','2016-02-04 03:14:25'),(171,1,'s6BhdRkqt3','630dd8c2d6d290f5b626f4dd2aece6c1e191e9ca','2016-02-18 03:15:34','2016-02-04 03:15:33','2016-02-04 03:15:33'),(172,1,'s6BhdRkqt3','cf764ec3992c6d83d239be14f796e5bc133210fc','2016-02-18 03:15:45','2016-02-04 03:15:44','2016-02-04 03:15:44'),(173,1,'s6BhdRkqt3','571c0846667346ed1876d4ea6c2439919325f87b','2016-02-18 03:16:27','2016-02-04 03:16:27','2016-02-04 03:16:27'),(174,1,'s6BhdRkqt3','cb9d5cf1fbf993fea0ed53c52682f51769e4a0d7','2016-02-18 03:17:53','2016-02-04 03:17:52','2016-02-04 03:17:52'),(175,1,'s6BhdRkqt3','c243af2e913174b952d1e39f7ef95fb1c9fce613','2016-02-18 03:18:09','2016-02-04 03:18:09','2016-02-04 03:18:09'),(176,1,'s6BhdRkqt3','91943f9ba715bbe10d769227a5e3215c2bf15210','2016-02-18 03:18:20','2016-02-04 03:18:20','2016-02-04 03:18:20'),(177,1,'s6BhdRkqt3','f6d32eaad0d7795434f075253246107d03176f1a','2016-02-18 03:18:38','2016-02-04 03:18:38','2016-02-04 03:18:38'),(178,1,'s6BhdRkqt3','04328338e9e06018a195bf06f28318b77a06cf93','2016-02-18 03:18:48','2016-02-04 03:18:48','2016-02-04 03:18:48'),(179,1,'s6BhdRkqt3','4171045ff50fada266f74598978c34af9f32334e','2016-02-18 03:19:03','2016-02-04 03:19:02','2016-02-04 03:19:02'),(180,1,'s6BhdRkqt3','4134bdf806c304945ff5a664087e3ac10474fcd0','2016-02-18 03:19:42','2016-02-04 03:19:42','2016-02-04 03:19:42'),(181,1,'s6BhdRkqt3','83b1c742bbe94866dea4c841c5d8b5887082af08','2016-02-18 03:19:52','2016-02-04 03:19:52','2016-02-04 03:19:52'),(182,1,'s6BhdRkqt3','e3ce587f0deb973f5e6dd491fce27932c629f99c','2016-02-18 03:21:33','2016-02-04 03:21:32','2016-02-04 03:21:32'),(183,1,'s6BhdRkqt3','1e6e600ac6f06787213cffc9be9336b01a4cbf99','2016-02-18 03:26:09','2016-02-04 03:26:09','2016-02-04 03:26:09'),(184,1,'s6BhdRkqt3','ccf1f2748f7367b7c44990a46c5f8bcd4716426f','2016-02-18 09:39:49','2016-02-04 09:39:49','2016-02-04 09:39:49'),(185,1,'s6BhdRkqt3','3ffc518ab38fab9a8da72c4a793c252365099485','2016-02-18 09:40:07','2016-02-04 09:40:07','2016-02-04 09:40:07'),(186,1,'s6BhdRkqt3','0fbf514c07452d56ba1ca1ed9b15d3fe500bf322','2016-02-18 09:41:54','2016-02-04 09:41:53','2016-02-04 09:41:53'),(187,1,'s6BhdRkqt3','e743e581ab456740d7a09b09ae37ec8a3fe60fe8','2016-02-18 09:42:37','2016-02-04 09:42:37','2016-02-04 09:42:37'),(188,1,'s6BhdRkqt3','73c6aacfd6d85697f0587793f0c2db7d9fc950ef','2016-02-18 09:42:45','2016-02-04 09:42:45','2016-02-04 09:42:45'),(189,1,'s6BhdRkqt3','2aa93631349db75048b2839da865d21aef4f96a5','2016-02-18 09:42:48','2016-02-04 09:42:48','2016-02-04 09:42:48'),(190,1,'s6BhdRkqt3','d66b9a02c45fcef28b299612ead74332f5e675af','2016-02-18 09:44:59','2016-02-04 09:44:59','2016-02-04 09:44:59'),(191,1,'s6BhdRkqt3','082ef12dde479b9325c8766dfbd0e061a7809c51','2016-02-18 10:15:23','2016-02-04 10:15:23','2016-02-04 10:15:23'),(192,1,'s6BhdRkqt3','e8704daf5c2ca27480931fbc7bfad0739eabf500','2016-02-19 01:14:25','2016-02-05 01:14:25','2016-02-05 01:14:25'),(193,1,'s6BhdRkqt3','485bf43f995dda84c2ce7789e59fe16b1919cf12','2016-02-19 01:27:54','2016-02-05 01:27:53','2016-02-05 01:27:53'),(194,1,'s6BhdRkqt3','6c7226a21e3b863faf48d2aa516fc47bb0a174f8','2016-02-19 01:33:31','2016-02-05 01:33:30','2016-02-05 01:33:30'),(195,1,'s6BhdRkqt3','dad8ea4ab28fc4c4d6c1d77ad68a7dc995003837','2016-02-19 01:34:17','2016-02-05 01:34:17','2016-02-05 01:34:17'),(196,1,'s6BhdRkqt3','995a0ec4867dc1876072b72daad2bacdd560c3b2','2016-02-19 01:35:21','2016-02-05 01:35:21','2016-02-05 01:35:21'),(197,1,'s6BhdRkqt3','f1720749798e8d88b05d41fcc5f49b15fb7cd8ce','2016-02-19 01:40:42','2016-02-05 01:40:42','2016-02-05 01:40:42'),(198,1,'s6BhdRkqt3','5fda335a317621d17778d882f80d4f3db7d2d0ad','2016-02-19 01:52:23','2016-02-05 01:52:22','2016-02-05 01:52:22'),(199,1,'s6BhdRkqt3','be2362833565e824647c071d9bdcf80d6676f575','2016-02-19 01:53:25','2016-02-05 01:53:24','2016-02-05 01:53:24'),(200,1,'s6BhdRkqt3','c4350367139565ecf5eac6b2c5967a39c889359f','2016-02-19 01:53:43','2016-02-05 01:53:43','2016-02-05 01:53:43'),(201,1,'s6BhdRkqt3','fea407f6fd21a1c4d15878d979b71c8452efb0ab','2016-02-19 01:54:48','2016-02-05 01:54:47','2016-02-05 01:54:47'),(202,1,'s6BhdRkqt3','fca5c5ed238c7cfcc1cf5dcd647e468c1ff0e83d','2016-02-19 01:55:27','2016-02-05 01:55:27','2016-02-05 01:55:27'),(203,1,'s6BhdRkqt3','36b74f90c0fb2fc975a97727e60e25fb82bb0d5e','2016-02-19 01:56:29','2016-02-05 01:56:28','2016-02-05 01:56:28'),(204,1,'s6BhdRkqt3','f016789a0e63bcd3b674bdd2aa9ccd03470c0e93','2016-02-19 01:56:55','2016-02-05 01:56:55','2016-02-05 01:56:55'),(205,1,'s6BhdRkqt3','a61e1d3c25ed47a2dc223363a95a695544381c18','2016-02-19 01:57:18','2016-02-05 01:57:17','2016-02-05 01:57:17'),(206,1,'s6BhdRkqt3','52abd6f96ec69be7efa9b7b4fd5b9e9a27cb0799','2016-02-19 01:57:31','2016-02-05 01:57:31','2016-02-05 01:57:31'),(207,1,'s6BhdRkqt3','926c2c881d7d4d89f9e75f6966c5d6781cc7aaa2','2016-02-19 01:57:37','2016-02-05 01:57:37','2016-02-05 01:57:37'),(208,1,'s6BhdRkqt3','f299c0bd3cf03c8c7df070f8f093f4b0753202d8','2016-02-19 01:58:16','2016-02-05 01:58:15','2016-02-05 01:58:15'),(209,1,'s6BhdRkqt3','1949f208e266082476a32c2378e2ae3b92e1b3cc','2016-02-19 01:59:35','2016-02-05 01:59:35','2016-02-05 01:59:35'),(210,1,'s6BhdRkqt3','ffe92062210adb3092da10f4d80f2beb6b41edf2','2016-02-19 01:59:46','2016-02-05 01:59:45','2016-02-05 01:59:45'),(211,1,'s6BhdRkqt3','aeb18af5c03b0cdc1723e717560627acdef5ab5c','2016-02-19 01:59:52','2016-02-05 01:59:51','2016-02-05 01:59:51'),(212,1,'s6BhdRkqt3','db6dca426a813e3abc502ba26b33b25b93679e69','2016-02-19 02:00:10','2016-02-05 02:00:09','2016-02-05 02:00:09'),(213,1,'s6BhdRkqt3','297773a57c3b703c3e8369907a7ba2fc579a743b','2016-02-19 02:01:59','2016-02-05 02:01:58','2016-02-05 02:01:58'),(214,1,'s6BhdRkqt3','ad5cfabed43cfbe862a7937aabb0ff5065734914','2016-02-19 02:06:26','2016-02-05 02:06:26','2016-02-05 02:06:26'),(215,1,'s6BhdRkqt3','0543ef5400ae4da595cf231166d7feac1be9d673','2016-02-19 02:07:01','2016-02-05 02:07:00','2016-02-05 02:07:00'),(216,1,'s6BhdRkqt3','efa4a5805749435708ccb85b5183f55c115fb606','2016-02-19 02:07:30','2016-02-05 02:07:30','2016-02-05 02:07:30'),(217,1,'s6BhdRkqt3','1f35dcbec8c87edf46add31d469ba3882a58a379','2016-02-19 02:08:58','2016-02-05 02:08:57','2016-02-05 02:08:57'),(218,1,'s6BhdRkqt3','67144b94219432df19ad5c26643a7b9c030c2ece','2016-02-19 02:09:23','2016-02-05 02:09:22','2016-02-05 02:09:22'),(219,1,'s6BhdRkqt3','7beddcf89fbd96b22169a4d557f0c12f103d6b3b','2016-02-19 02:09:54','2016-02-05 02:09:54','2016-02-05 02:09:54'),(220,1,'s6BhdRkqt3','dd75ee0eb5be1ac7aee2bdbfcf719f6035ec253e','2016-02-19 02:10:29','2016-02-05 02:10:29','2016-02-05 02:10:29'),(221,1,'s6BhdRkqt3','0f3332c462a906a377cc796dd4ef39d4e1bf9693','2016-02-19 02:16:15','2016-02-05 02:16:14','2016-02-05 02:16:14'),(222,1,'s6BhdRkqt3','96c29c3f992ee55361cb72fdf7ba16e6e158c9fa','2016-02-19 02:18:43','2016-02-05 02:18:42','2016-02-05 02:18:42'),(223,1,'s6BhdRkqt3','d831e64f089c77eade3deeea678a640db9e51e9c','2016-02-19 02:23:39','2016-02-05 02:23:38','2016-02-05 02:23:38'),(224,1,'s6BhdRkqt3','e7043db2cb72ee8b63de5feb8ba44ff00484ea5d','2016-02-19 02:29:45','2016-02-05 02:29:45','2016-02-05 02:29:45'),(225,1,'s6BhdRkqt3','24abedd23186e1971c67e02fb8bb301a99cff63f','2016-02-19 02:29:50','2016-02-05 02:29:49','2016-02-05 02:29:49'),(226,1,'s6BhdRkqt3','4d9a540d6dd2120712e262a6fba6fa1a65b2825a','2016-02-19 02:29:52','2016-02-05 02:29:52','2016-02-05 02:29:52'),(227,1,'s6BhdRkqt3','ae11def911698a4882384229908e010610025731','2016-02-19 02:29:56','2016-02-05 02:29:55','2016-02-05 02:29:55'),(228,1,'s6BhdRkqt3','56dbdccc0c040502c2d0d722a24786812b62316a','2016-02-19 02:30:05','2016-02-05 02:30:04','2016-02-05 02:30:04'),(229,1,'s6BhdRkqt3','aeced337aab5b5ff0b3de44446898580eb8edb9a','2016-02-19 02:30:17','2016-02-05 02:30:16','2016-02-05 02:30:16'),(230,1,'s6BhdRkqt3','2ecb422d955e87c9adad7b23a257b27b5a663c02','2016-02-19 02:30:19','2016-02-05 02:30:19','2016-02-05 02:30:19'),(231,1,'s6BhdRkqt3','20b51870eae5b4f10a1ae087f671488bd6c476a6','2016-02-19 02:30:27','2016-02-05 02:30:27','2016-02-05 02:30:27'),(232,1,'s6BhdRkqt3','6a311236fc4ea72c5c6afb5cf3eca5045611d2da','2016-02-19 02:32:42','2016-02-05 02:32:41','2016-02-05 02:32:41'),(233,1,'s6BhdRkqt3','95cca4bee5007c76e163f66f80c41d1d70f2648b','2016-02-19 02:34:44','2016-02-05 02:34:44','2016-02-05 02:34:44'),(234,1,'s6BhdRkqt3','64badf9a8bb468df5f1ccbd5d3b8b7d0b55ef589','2016-02-19 02:34:49','2016-02-05 02:34:49','2016-02-05 02:34:49'),(235,1,'s6BhdRkqt3','6fd6de94cdd452aa8cad65979e87250e966d16e4','2016-02-19 02:37:45','2016-02-05 02:37:44','2016-02-05 02:37:44'),(236,1,'s6BhdRkqt3','be823366abfb12f49021cee1dcdfd727e8e504b8','2016-02-19 02:39:13','2016-02-05 02:39:12','2016-02-05 02:39:12'),(237,1,'s6BhdRkqt3','59c6e33bb987408937c6423ef834e1f7e39a1988','2016-02-19 02:39:53','2016-02-05 02:39:53','2016-02-05 02:39:53'),(238,1,'s6BhdRkqt3','52798f6e8383637ef560385d5aef636a450cdc29','2016-02-19 03:03:45','2016-02-05 03:03:45','2016-02-05 03:03:45'),(239,1,'s6BhdRkqt3','60fc9fbe554ce1b4364af771ef8d531cc1110d12','2016-02-19 03:03:58','2016-02-05 03:03:57','2016-02-05 03:03:57'),(240,1,'s6BhdRkqt3','4eb799e682946b61460bf7bbc52a6611e3fa0b45','2016-02-19 03:04:49','2016-02-05 03:04:48','2016-02-05 03:04:48'),(241,1,'s6BhdRkqt3','e13fd944c9a68f1c784ed5a1de93b70afc6f7c81','2016-02-19 03:05:41','2016-02-05 03:05:41','2016-02-05 03:05:41'),(242,1,'s6BhdRkqt3','a7bada3d7d81caecc18c457f8fcc333594e8d80f','2016-02-19 03:06:47','2016-02-05 03:06:47','2016-02-05 03:06:47');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `good_id` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,1,2,'2015-12-17 01:00:30','2015-12-17 01:00:30'),(2,1,2,1,'2015-12-17 01:00:30','2015-12-17 01:00:30'),(3,1,3,5,'2015-12-17 01:00:31','2015-12-17 01:00:31'),(4,2,1,2,'2015-12-17 02:56:33','2015-12-17 02:56:33'),(5,2,2,1,'2015-12-17 02:56:40','2015-12-17 02:56:40'),(6,5,2,2,'2015-12-17 04:26:52','2015-12-17 04:26:52'),(7,5,1,2,'2015-12-17 04:26:52','2015-12-17 04:26:52');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sn` varchar(30) NOT NULL DEFAULT '',
  `amount` double unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `from` varchar(30) NOT NULL DEFAULT '',
  `payment` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2015121708581115000',20000,1,'',1,'2015-12-17 01:00:36','2015-12-17 01:00:36'),(2,1,'2015121615301115000',15000,5,'',1,'2015-12-17 02:56:45','2015-12-17 02:56:45'),(5,1,'201512171226524323527',0,0,'unknown',0,'2015-12-17 04:26:52','2015-12-17 04:26:52');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text COLLATE utf8_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('PF3fnhD2KfWCg2fnbrU8MTXkLLnX6tRy',1454728009,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specs`
--

DROP TABLE IF EXISTS `specs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(30) NOT NULL DEFAULT '',
  `cat_id` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs`
--

LOCK TABLES `specs` WRITE;
/*!40000 ALTER TABLE `specs` DISABLE KEYS */;
INSERT INTO `specs` VALUES (1,'衣物清洁类','756',0,0,0,'2015-12-08 07:38:35','2016-02-01 10:00:22'),(2,'厨房清洁类','756',0,0,0,'2015-12-08 07:38:35','2016-02-01 10:00:23'),(3,'纸类','756',0,0,0,'2015-12-08 07:38:35','2016-02-01 10:00:25'),(4,'奶粉类','859',0,0,0,'2015-12-08 07:38:35','2016-02-01 10:03:01'),(5,'服装类','859',0,0,0,'2015-12-08 07:38:35','2016-02-01 10:03:02'),(6,'玩具类','859',0,0,0,'2015-12-08 07:38:37','2016-02-01 10:03:03'),(7,'地板清洁','756',0,1,1,'2016-01-22 01:07:36','2016-02-01 10:02:48'),(8,'欧美','825',0,1,1,'2016-01-22 01:11:18','2016-02-01 10:00:58'),(9,'日韩','825',0,2,1,'2016-01-22 01:11:29','2016-02-01 10:00:59'),(10,'国产','825',0,3,1,'2016-01-22 01:12:04','2016-02-01 10:00:59'),(11,'水','850',0,1,1,'2016-01-22 01:12:49','2016-02-01 10:00:39'),(12,'碳酸饮料','850',0,1,1,'2016-01-22 01:13:22','2016-02-01 10:00:40'),(13,'牛奶','850',0,1,1,'2016-01-22 01:13:36','2016-02-01 10:00:41'),(14,'果汁类','850',0,1,1,'2016-01-22 01:13:51','2016-02-01 10:00:42'),(15,'鲜奶','850',0,1,1,'2016-01-22 01:16:45','2016-02-01 10:00:43'),(16,'奶粉','677',0,2,1,'2016-01-22 01:16:57','2016-02-01 10:01:23'),(17,'炼乳','677',0,3,1,'2016-01-22 01:17:10','2016-02-01 10:01:24'),(18,'酸奶','677',0,4,1,'2016-01-22 01:17:22','2016-02-01 10:01:25'),(19,'速溶咖啡','713',0,1,1,'2016-01-22 01:18:29','2016-02-01 10:02:15'),(20,'奶茶','713',0,2,1,'2016-01-22 01:18:42','2016-02-01 10:02:16'),(21,'糖果','735',0,1,1,'2016-01-22 01:21:25','2016-02-01 10:02:04'),(22,'巧克力','735',0,2,1,'2016-01-22 01:21:27','2016-02-01 10:02:05'),(23,'饼干糕点','691',0,3,1,'2016-01-22 01:21:29','2016-02-01 10:01:37'),(24,'坚果炒货','691',0,4,1,'2016-01-22 01:21:30','2016-02-01 10:01:36'),(25,'肉类豆干','691',0,5,1,'2016-01-22 01:22:09','2016-02-01 10:01:35'),(26,'麦片','691',0,3,1,'2016-01-22 01:22:55','2016-02-01 10:01:38');
/*!40000 ALTER TABLE `specs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `phone` varchar(11) NOT NULL DEFAULT '0',
  `scale` varchar(255) NOT NULL DEFAULT '',
  `business_scope` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,2,2,'长沙市湘华香烟批发商行','15824121675','','','长沙市开福区高桥大市场','2015-12-16 02:23:53','2015-12-16 02:23:53'),(2,3,2,'长沙景和食品贸易有限公司','18974861169','','','湖南省长沙市雨花区韶山南路红星糖酒城10栋173号','2015-12-16 02:23:53','2015-12-16 02:23:53'),(3,3,2,'长沙翔盛商贸有限公司','13667329234','','','湖南省长沙市芙蓉区农科服装市场','2015-12-16 02:23:55','2015-12-16 02:23:55');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'香烟','2015-12-16 01:49:07','2015-12-16 01:49:07'),(2,'烟标','2015-12-16 01:49:08','2015-12-16 01:49:08'),(56,'tag1','2015-12-24 08:49:08','2015-12-24 08:49:08'),(57,'tag2','2015-12-24 08:49:08','2015-12-24 08:49:08'),(58,'tag3','2015-12-24 08:49:39','2015-12-24 08:49:39'),(59,'tag4dd','2016-01-21 07:15:03','2016-01-21 07:15:03'),(60,'美女','2016-01-21 07:18:14','2016-01-21 07:18:14'),(61,'泰山','2016-01-21 07:41:57','2016-01-21 07:41:57'),(62,'测试','2016-01-21 08:12:38','2016-01-21 08:12:38');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(11) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `role` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `last_login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `salt` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'18073181682','65f1a8a409859720c666ab17e1ff3355ebed0df2','genie88','genie88@163.com','18073181682','http://admin.ttjinhuo.com/upload/avatar副本.jpg',1,2,'2015-12-08 07:34:04','2015-12-08 07:34:04','2016-01-29 02:42:12','635520681477'),(2,'15824121675','6e518c33699ee724e45a02456e1f3666bdceb5cd','jackchoon','jackchoon@163.com','15824121675','http://admin.ttjinhuo.com/upload/avatar副本.jpg',1,3,'2015-12-08 07:34:22','2015-12-08 07:34:22','2016-01-29 02:42:44','59605678287'),(3,'dummyUser','6e518c33699ee724e45a02456e1f3666bdceb5cd','dummyUser','dummyuser@ttjinhuo.com','15824121675','http://admin.ttjinhuo.com/upload/avatar副本.jpg',1,3,'2015-12-08 07:34:22','2015-12-08 07:34:22','2016-02-03 10:16:16','59605678287'),(10,'darral','','darral','darral@123','18756889980','http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=avatar',1,2,'2016-01-11 10:18:56','2016-01-11 10:18:56','2016-01-11 10:18:56','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-05 17:38:54
