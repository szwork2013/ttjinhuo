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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
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
INSERT INTO `goods` VALUES (11394,677,11398,0,'欧莱雅男士火山岩控油清豆洁面膏100ml',' 欧莱雅','','http://img.bqmart.cn/data/files/store/d77f9a67777325d5b64c004d4411b3ea.jpg','欧莱雅男士火山岩控油清豆洁面膏100ml',39,39,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2016-02-02 07:45:11'),(11400,776,11404,0,'舒肤佳纯白清香型香皂115g',' 舒肤佳','','http://img.bqmart.cn/data/files/store/b1f0a3993ad1f6ac0fbe79664257b352.jpg','舒肤佳纯白清香型香皂115g',4.9,4.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11401,776,11405,2,'舒肤佳芦荟呵护型香皂115g',' 舒肤佳','','http://img.bqmart.cn/data/files/store_8805/goods_45/small_201502121140453218.jpg','舒肤佳芦荟呵护型香皂115g',4.9,4.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11403,776,11407,0,'舒肤佳柠檬清新型香皂115g',' 舒肤佳','','http://img.bqmart.cn/data/files/store/9028d837a931587a4a74304f335b6e40.jpg','舒肤佳柠檬清新型香皂115g',4.9,4.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11405,778,11409,1,'阿迪达斯男士沐浴露（冰点）250ml',' 阿迪达斯','','http://img.bqmart.cn/data/files/store/ebae8e1047320e403991a2db8d68cfe3.jpg','阿迪达斯男士沐浴露（冰点）250ml',24.5,24.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11407,778,11411,4,'舒肤佳纯白清香型沐浴露200ml',' 舒肤佳','','http://img.bqmart.cn/data/files/store_8805/goods_117/small_201502121148378117.jpg','舒肤佳纯白清香型沐浴露200ml',13.5,13.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11408,778,11412,3,'舒肤佳柠檬清新型沐浴露200ml',' 舒肤佳','','http://img.bqmart.cn/data/files/store/072578f563d793cdfe2b37aeb31f4103.jpg','舒肤佳柠檬清新型沐浴露200ml',13.5,13.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11409,773,11413,3,'海飞丝去屑洗发露丝质柔滑型200ml',' 海飞丝','','http://img.bqmart.cn/data/files/store/d7039e48e4ffc24800ff79879bb64430.jpg','海飞丝去屑洗发露丝质柔滑型200ml',22.5,22.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11410,773,11414,3,'潘婷乳液修护洗发露200ml',' 潘婷','','http://img.bqmart.cn/data/files/store/e26e5bfc2ccf7eeb3a189050a9b4f802.jpg','潘婷乳液修护洗发露200ml',19.5,19.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11411,773,11415,1,'潘婷丝质顺滑洗发露200ml',' 潘婷','','http://img.bqmart.cn/data/files/store/b4e2a42d03285bf4dc047bd12f7b4a99.jpg','潘婷丝质顺滑洗发露200ml',19.5,19.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11413,773,11417,4,'清扬男士去屑洗发露多效水润养护型蓝瓶175ml',' 清扬','','http://img.bqmart.cn/data/files/store/24026cdd3995691917a858c2ec2626a8.jpg','清扬男士去屑洗发露多效水润养护型蓝瓶175ml',22.5,22.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11414,773,11418,3,'清扬男士去屑洗发露活力运动薄荷型蓝瓶175ml',' 清扬','','http://img.bqmart.cn/data/files/store_8805/goods_13/small_201502121410135148.jpg','清扬男士去屑洗发露活力运动薄荷型蓝瓶175ml',22.5,22.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11415,774,11419,4,'潘婷乳液修护润发精华素200ml',' 潘婷','','http://img.bqmart.cn/data/files/store/7a2c605b616e9aa91c06b8f47f67920e.jpg','潘婷乳液修护润发精华素200ml',19.5,19.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11416,774,11420,0,'潘婷丝质顺滑润发精华素200ml',' 潘婷','','http://img.bqmart.cn/data/files/store_8805/goods_153/small_201502121419132911.jpg','潘婷丝质顺滑润发精华素200ml',19.5,19.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11417,777,11421,3,'美涛保湿定型啫喱水183ml',' 美涛','','http://img.bqmart.cn/data/files/store/4d9f080e1f3d835de2262b96751f0a18.jpg','美涛保湿定型啫喱水183ml',19.8,19.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11534,799,11538,4,'洁丽雅格绒印花毛童巾',' 洁丽雅','','http://img.bqmart.cn/data/files/store_8805/goods_182/small_201502121653025707.jpg','洁丽雅格绒印花毛童巾',10,10,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11536,799,11540,3,'洁丽雅面巾76*34cm',' 洁丽雅','','http://img.bqmart.cn/data/files/store/79174fdda2de3dd5d1a90a11d52e518d.jpg','洁丽雅面巾76*34cm',21.8,21.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11538,798,11542,0,'妙洁超柔浴花',' 妙洁','','http://img.bqmart.cn/data/files/store/81b75345a4866d768babd0cf66f2bea3.jpg','妙洁超柔浴花',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11546,793,11550,4,'妙洁pe保鲜膜中号30cm*15m+5m',' 妙洁','','http://img.bqmart.cn/data/files/store/6d17847ddd3425ad878f8d07445a664e.jpg','妙洁pe保鲜膜中号30cm*15m+5m',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11551,793,11555,3,'妙洁点断式垃圾袋大号50cm*60cm',' 妙洁','','http://img.bqmart.cn/data/files/store/d7a2982eca140c5ab35581abb124af52.jpg','妙洁点断式垃圾袋大号50cm*60cm',4.8,4.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11552,793,11556,4,'妙洁点断式垃圾袋小号 40cm*45cm',' 妙洁','','http://img.bqmart.cn/data/files/store/77f169c35aca1a746d9394272747b263.jpg','妙洁点断式垃圾袋小号 40cm*45cm',4.8,4.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11553,793,11557,1,'妙洁点断式垃圾袋中号45cm*50cm 30只',' 妙洁','','http://img.bqmart.cn/data/files/store/365f24d6fff4d57bc5c0d1dd42c92c43.jpg','妙洁点断式垃圾袋中号45cm*50cm 30只',4.8,4.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11555,793,11559,1,'云蕾袋装竹棉棒100支装',' 云蕾','','http://img.bqmart.cn/data/files/store/097f32cfe2a7b64b999785812075c53a.jpg','云蕾袋装竹棉棒100支装',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11570,793,11574,4,'妙洁8盎司特惠纸杯 50只装',' 妙洁','','http://img.bqmart.cn/data/files/store/218b5db1bfa826f832feff27425e3165.jpg','妙洁8盎司特惠纸杯 50只装',6.8,6.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11572,790,11576,2,'大笨钟7号 单节',' 大笨钟','','http://img.bqmart.cn/data/files/store/aa8ae07ec4265b966a0fe0c9f0c8d189.jpg','大笨钟7号 单节',1,1,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11575,790,11579,2,'大笨钟电池5号 单节',' 大笨钟','','http://img.bqmart.cn/data/files/store/4ddbb7894a2ce65ecfc7c8109a7e2337.jpg','大笨钟电池5号 单节',1,1,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11577,790,11581,1,'丰蓝防漏电池1号',' 丰蓝','','http://img.bqmart.cn/data/files/store/f72449af0a483177a6cb5a99d6684887.jpg','丰蓝防漏电池1号',10,10,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11578,790,11582,1,'南孚电池5号单节',' 南孚','','http://img.bqmart.cn/data/files/store/8b9bf99922e6c98634eacb9bd5cbb511.jpg','南孚电池5号单节',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11580,790,11584,0,'南孚电池7号单节',' 南孚','','http://img.bqmart.cn/data/files/store_8805/goods_176/small_201502130912568881.jpg','南孚电池7号单节',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11581,790,11585,0,'南孚碱性吊卡2B7号2粒装',' 南孚','','http://img.bqmart.cn/data/files/store/6146429122f0ca7ca8a97b839921401d.jpg','南孚碱性吊卡2B7号2粒装',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11611,798,11615,0,'云蕾两用搓澡手套（细砂）',' 云蕾','','http://img.bqmart.cn/data/files/store_8805/goods_51/small_201503241457316940.jpg','云蕾两用搓澡手套（细砂）',6,6,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11852,729,11856,2,'百岁山景田天然矿泉水348ml',' 百岁山','','http://img.bqmart.cn/data/files/store/dcacc3aa9e3b47930cefe9bf7335d874.jpg','百岁山景田天然矿泉水348ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11853,729,11857,2,'恒大冰泉350ml',' 恒大','','http://img.bqmart.cn/data/files/store_8805/goods_46/small_201502141150469769.jpg','恒大冰泉350ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11855,729,11859,0,'名仁苏打水360ml',' 名仁','','http://img.bqmart.cn/data/files/store/a1c35aff7572c259c09a5ec3aaf27ea6.jpg','名仁苏打水360ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11857,729,11861,2,'怡宝纯净水350ml',' 怡宝','','http://img.bqmart.cn/data/files/store/28cb1d1d300b6edc06284c1fd1d96c67.jpg','怡宝纯净水350ml',1.5,1.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11859,729,11863,2,'恒大冰泉500ml',' 恒大','','http://img.bqmart.cn/data/files/store_8805/goods_42/small_201507220837222517.jpg','恒大冰泉500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11860,729,11864,2,'农夫山泉550ml',' 农夫山泉','','http://img.bqmart.cn/data/files/store/5bfffc7c20be68e4c92f7dde20327a57.jpg','农夫山泉550ml',1.5,1.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11861,729,11865,3,'普利思矿泉水600ml',' 普利思','','http://img.bqmart.cn/data/files/store/611de49e6d5353b850a0d37ac043cc8c.jpg','普利思矿泉水600ml',1,1,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11862,729,11866,4,'娃哈哈纯净水596ml',' 娃哈哈','','http://img.bqmart.cn/data/files/store/5a2baaebbdf48d51d0c82ebf7936cdc4.jpg','娃哈哈纯净水596ml',1.5,1.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11864,729,11868,4,'冰露饮用矿物质水1.5L',' 冰露','','http://img.bqmart.cn/data/files/store_8805/goods_154/small_201502141412347003.jpg','冰露饮用矿物质水1.5L',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11866,729,11870,1,'怡宝纯净水555ml',' 怡宝','','http://img.bqmart.cn/data/files/store/88e30a94a43cc8ab7f8a8ae51ab9306f.jpg','怡宝纯净水555ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11868,729,11872,4,'农夫山泉饮用天然水1.5L',' 农夫山泉','','http://img.bqmart.cn/data/files/store/b4dd5fe4c02b49f01dd0cd959b5deb69.jpg','农夫山泉饮用天然水1.5L',3.5,3.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11870,729,11874,3,'农夫山泉饮用天然水4L',' 农夫山泉','','http://img.bqmart.cn/data/files/store/a592798063b5965c4f69581dc5d5518e.jpg','农夫山泉饮用天然水4L',9,9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11872,729,11876,1,'普利思矿泉水1.5L',' 普利思','','http://img.bqmart.cn/data/files/store/394f6c1a0a512aaf7d63ca97dd74f823.jpg','普利思矿泉水1.5L',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11873,731,11877,3,'7喜冰爽柠檬330ml',' 7喜','','http://img.bqmart.cn/data/files/store/b63983960cd5b4a4146b59d1c1fdeb52.jpg','7喜冰爽柠檬330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11876,731,11880,0,'百事可乐2L',' 百事可乐','','http://img.bqmart.cn/data/files/store/44c0ffaa60f82bb014dcbfad893eda68.jpg','百事可乐2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11878,731,11882,4,'百事可乐600ml',' 百事可乐','','http://img.bqmart.cn/data/files/store/d1cfe53fc0a4ecf3e309c67419cd3cd5.jpg','百事可乐600ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11879,731,11883,2,'芬达橙味汽水2L',' 芬达','','http://img.bqmart.cn/data/files/store/d9f95bbe82722d3521a272364c8aa2f3.jpg','芬达橙味汽水2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11881,731,11885,2,'芬达橙味汽水听装330ml',' 芬达','','http://img.bqmart.cn/data/files/store/09e074ce7e19ced4713d32c5d21de74f.jpg','芬达橙味汽水听装330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11882,731,11886,2,'芬达苹果味汽水500ml',' 芬达','','http://img.bqmart.cn/data/files/store_8805/goods_90/small_201502141424507637.jpg','芬达苹果味汽水500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11885,731,11889,1,'芬达葡萄500ml',' 芬达','','http://img.bqmart.cn/data/files/store/a1586fffed49c71161f94c5899466eab.jpg','芬达葡萄500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11886,731,11890,1,'芬达汽水500ml',' 芬达','','http://img.bqmart.cn/data/files/store/8e474937ca2a56c971ea13d7100e9710.jpg','芬达汽水500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11888,731,11892,1,'可口可乐零度汽水500ml',' 可口可乐','','http://img.bqmart.cn/data/files/store/2f790812674693ae7175321aff412da4.jpg','可口可乐零度汽水500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11890,731,11894,4,'可口可乐汽水2L',' 可口可乐','','http://img.bqmart.cn/data/files/store/cfefba545529f3bb63a06b2a1a33c105.jpg','可口可乐汽水2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11891,731,11895,3,'可口可乐汽水330ml',' 可口可乐','','http://img.bqmart.cn/data/files/store/720164623a91b7dea6beb174efb517c5.jpg','可口可乐汽水330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11896,731,11900,2,'可口可乐水冻乐西柚味600ml',' 可口可乐','','http://img.bqmart.cn/data/files/store_8805/goods_158/small_201502141439188929.jpg','可口可乐水冻乐西柚味600ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11897,731,11901,4,'美年达2L',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_32/small_201502141447128583.jpg','美年达2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11898,731,11902,1,'美年达橙味汽水2L',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_131/small_201502141448517465.jpg','美年达橙味汽水2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11899,731,11903,2,'美年达橙味汽水330ml',' 美年达','','http://img.bqmart.cn/data/files/store/5bbc99822d09ed9bce83fce55461bbba.jpg','美年达橙味汽水330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11900,731,11904,4,'美年达橙味汽水600ml',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_72/small_201502141451124986.jpg','美年达橙味汽水600ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11901,731,11905,3,'美年达葡萄味2L',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_183/small_201502141453036093.jpg','美年达葡萄味2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11902,731,11906,3,'美年达青苹果味600ml',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_63/small_201502141454234378.jpg','美年达青苹果味600ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11903,731,11907,4,'美年达青苹果味听330ml',' 美年达','','http://img.bqmart.cn/data/files/store_8805/goods_136/small_201502141455361442.jpg','美年达青苹果味听330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11907,731,11911,2,'醒目苹果味500ml',' 醒目','','http://img.bqmart.cn/data/files/store/9c040035a18eb4e8f2339afa04b91d32.jpg','醒目苹果味500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11908,731,11912,2,'醒目水蜜桃味500ml',' 醒目','','http://img.bqmart.cn/data/files/store_8264/goods_62/small_201502141504222027.jpg','醒目水蜜桃味500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11909,731,11913,3,'雪碧(500ml)500ml',' 雪碧','','http://img.bqmart.cn/data/files/store/722957a342448d2a6fbfb5ca3fa59589.jpg','雪碧(500ml)500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11910,731,11914,3,'雪碧碧冰薄荷味汽水2L',' 雪碧','','http://img.bqmart.cn/data/files/store/078eaa51298a39a8e3f630e6b5181ecc.jpg','雪碧碧冰薄荷味汽水2L',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11911,731,11915,3,'雪碧冰薄荷味汽水500ml',' 雪碧','','http://img.bqmart.cn/data/files/store_8805/goods_51/small_201502141510517590.jpg','雪碧冰薄荷味汽水500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11912,731,11916,3,'雪碧清爽柠檬味汽水330ml',' 雪碧','','http://img.bqmart.cn/data/files/store/3231c38866ee3525a4e17723fb7b27b8.jpg','雪碧清爽柠檬味汽水330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11914,730,11918,4,'汇源果肉系列橙汁饮料2.5L',' 汇源','','http://img.bqmart.cn/data/files/store_8805/goods_99/small_201502141521396575.jpg','汇源果肉系列橙汁饮料2.5L',13.5,13.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11917,730,11921,2,'汇源果肉系列桃果肉饮料2.5L',' 汇源','','http://img.bqmart.cn/data/files/store_8805/goods_48/small_201502141524087873.jpg','汇源果肉系列桃果肉饮料2.5L',13.5,13.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11919,732,11923,4,'康师傅冰糖柠檬500ml',' 康师傅 ','','http://img.bqmart.cn/data/files/store/d02ba7a0952e184b7202096a761d0d78.jpg','康师傅冰糖柠檬500ml',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11921,732,11925,3,'康师傅冰糖雪梨(490ml)490ml',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_12/small_201502141526529516.jpg','康师傅冰糖雪梨(490ml)490ml',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11923,732,11927,0,'康师傅蜂蜜柚子600ml',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_74/small_201502141527542309.jpg','康师傅蜂蜜柚子600ml',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11924,730,11928,0,'美之源果粒芒果450ml',' 美之源','','http://img.bqmart.cn/data/files/store_8264/goods_17/small_201502141530179241.jpg','美之源果粒芒果450ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11926,730,11930,4,'美汁源果粒橙450ml',' 美汁源','','http://img.bqmart.cn/data/files/store/8ba7122bfc9613f6a244379125470747.jpg','美汁源果粒橙450ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11928,730,11932,1,'美汁源热带果粒450ml',' 美汁源','','http://img.bqmart.cn/data/files/store/e3629e84b86c48f20b5f83da4d5b7e5b.jpg','美汁源热带果粒450ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11938,730,11942,0,'美汁源爽粒葡萄450ml',' 美汁源','','http://img.bqmart.cn/data/files/store/a965eca96c54a0aafab1ed42e63edd87.jpg','美汁源爽粒葡萄450ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11939,730,11943,0,'农夫果园饮料(混合果汁)橙+胡萝卜味600ml',' 农夫果园','','http://img.bqmart.cn/data/files/store_8805/goods_158/small_201502141602383290.jpg','农夫果园饮料(混合果汁)橙+胡萝卜味600ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11940,730,11944,4,'农夫果园饮料(混合果汁)芒果+菠萝味600ml',' 农夫果园','','http://img.bqmart.cn/data/files/store/facd6a5b61ecc888220c6559a5099060.jpg','农夫果园饮料(混合果汁)芒果+菠萝味600ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11941,731,11945,3,'水溶C100西柚445ml',' 水溶','','http://img.bqmart.cn/data/files/store_8805/goods_120/small_201502141612009291.jpg','水溶C100西柚445ml',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11942,731,11946,0,'水溶C100柠檬味复合果汁饮料西柚445ml',' 水溶C','','http://img.bqmart.cn/data/files/store/d1d442740dcbd20970906da818453609.jpg','水溶C100柠檬味复合果汁饮料西柚445ml',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11945,732,11949,4,'和其正600ml',' 和其正','','http://img.bqmart.cn/data/files/store_8805/goods_154/small_201502141622344409.jpg','和其正600ml',3.5,3.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11946,732,11950,3,'加多宝310ml',' 加多宝','','http://img.bqmart.cn/data/files/store/4d92f73d9b8adbb7b206e5293b6bb787.jpg','加多宝310ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11947,732,11951,4,'康师傅冰红茶1L',' 康师傅','','http://img.bqmart.cn/data/files/store/2c4f10f8d2e0605a7123e44aefe48bc0.jpg','康师傅冰红茶1L',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11948,732,11952,0,'康师傅冰红茶490ml',' 康师傅','','http://img.bqmart.cn/data/files/store/a1217c3bfc23be2b2c6e206d5cae5950.jpg','康师傅冰红茶490ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11950,732,11954,4,'康师傅蜂蜜绿茶490ml',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_76/small_201502141627565438.jpg','康师傅蜂蜜绿茶490ml',3,3,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11951,732,11955,1,'康师傅绿茶1L',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_123/small_201502141628435423.jpg','康师傅绿茶1L',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11952,732,11956,2,'康师傅茉莉茶蜜茶500ml+100ml',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_191/small_201502141629512873.jpg','康师傅茉莉茶蜜茶500ml+100ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11953,732,11957,1,'康师傅茉莉茶清茶500+100ml',' 康师傅','','http://img.bqmart.cn/data/files/store_8805/goods_38/small_201502141630388455.jpg','康师傅茉莉茶清茶500+100ml',2.5,2.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11954,732,11958,0,'康师傅茉莉蜜茶1L',' 康师傅','','http://img.bqmart.cn/data/files/store/4b4df07872e9c163fa0815f7f9b0f4dc.jpg','康师傅茉莉蜜茶1L',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11956,732,11960,4,'王老吉310ml',' 王老吉','','http://img.bqmart.cn/data/files/store/eefc1b7d89b4d2c04d085afa1c8e7d0e.jpg','王老吉310ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11958,731,11962,3,'尖叫活性肽运动饮料550ml',' 尖叫','','http://img.bqmart.cn/data/files/store_8805/goods_188/small_201502141636288588.jpg','尖叫活性肽运动饮料550ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11959,731,11963,3,'尖叫纤维饮料550ml',' 尖叫','','http://img.bqmart.cn/data/files/store_8805/goods_37/small_201502141637178951.jpg','尖叫纤维饮料550ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11960,731,11964,3,'乐百氏脉动桔子600ml',' 乐百氏','','http://img.bqmart.cn/data/files/store/b84c079de565ad02bc90d151167f8074.jpg','乐百氏脉动桔子600ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11961,731,11965,3,'乐百氏脉动水蜜桃600ml',' 乐百氏','','http://img.bqmart.cn/data/files/store/f7de2b2dd3f0c273348ef31ee738d5a1.jpg','乐百氏脉动水蜜桃600ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11962,731,11966,2,'农夫山泉维他命西柚味500ml',' 农夫山泉','','http://img.bqmart.cn/data/files/store/47cc6b1adbbabf591d77fa5af6f9e1f9.jpg','农夫山泉维他命西柚味500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11963,731,11967,2,'农夫维他命柑橘味550ml',' 农夫','','http://img.bqmart.cn/data/files/store_8805/goods_115/small_201502141641556199.jpg','农夫维他命柑橘味550ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11964,731,11968,1,'农夫维他命柠檬味550ml',' 农夫','','http://img.bqmart.cn/data/files/store_8805/goods_186/small_201502141643066073.jpg','农夫维他命柠檬味550ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11965,731,11969,1,'农夫维他命水石榴蓝莓风味500ml',' 农夫','','http://img.bqmart.cn/data/files/store_8805/goods_125/small_201502141645254631.jpg','农夫维他命水石榴蓝莓风味500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11966,731,11970,3,'农夫维他命水热带水果风味500ml',' 农夫','','http://img.bqmart.cn/data/files/store/a1b00a98fa197c0878a34f22eac4f9bb.jpg','农夫维他命水热带水果风味500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11968,731,11972,4,'怡泉+c600g',' 怡泉','','http://img.bqmart.cn/data/files/store_8805/goods_28/small_201502141650286378.jpg','怡泉+c600g',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(11969,731,11973,3,'红牛维生素饮料250ml',' 红牛','','http://img.bqmart.cn/data/files/store/7a4b8149ed355bee6f8991d42dd01a25.jpg','红牛维生素饮料250ml',6,6,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12038,729,12042,1,'农夫山泉天然水380ml',' 农夫山泉','','http://img.bqmart.cn/data/files/store/26f2655364b8aef6428e3acdc9f73b89.jpg','农夫山泉天然水380ml',1.5,1.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12039,730,12043,2,'美汁源果粒橙1.25L',' 美汁源','','http://img.bqmart.cn/data/files/store/177db92c04031745c57542891e7d5106.jpg','美汁源果粒橙1.25L',7,7,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12041,730,12045,0,'农夫维他命水蓝莓树莓味500ml',' 农夫','','http://img.bqmart.cn/data/files/store_8805/goods_197/small_201502151113173074.jpg','农夫维他命水蓝莓树莓味500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12061,731,12065,2,'芬达青柠味汽水500ml',' 芬达','','http://img.bqmart.cn/data/files/store_8805/goods_0/small_201502151156403008.jpg','芬达青柠味汽水500ml',2.8,2.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12066,822,12070,4,'六神特效花露水195ml',' 六神','','http://img.bqmart.cn/data/files/store/c0c6385b86008462d4c683dbe7fd6337.jpg','六神特效花露水195ml',11.5,11.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12068,793,12072,0,'云蕾一次性手套50只装',' 云蕾','','http://img.bqmart.cn/data/files/store/186d6ba365e32d601ff3709121d9f9a8.jpg','云蕾一次性手套50只装',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12070,793,12074,2,'云蕾袋装竹制牙签300支',' 云蕾','','http://img.bqmart.cn/data/files/store_8805/goods_48/small_201502151417285793.jpg','云蕾袋装竹制牙签300支',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12073,778,12077,1,'六神艾叶健肤沐浴露止痒型200ml',' 六神','','http://img.bqmart.cn/data/files/store/990fb13a65de003a8ca3ccdebfaa1e7d.jpg','六神艾叶健肤沐浴露止痒型200ml',10.5,10.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12074,778,12078,4,'六神艾叶健肤沐浴露清凉型200ml',' 六神','','http://img.bqmart.cn/data/files/store/d472ef775f5a1d9e68f16f425ea10d4f.jpg','六神艾叶健肤沐浴露清凉型200ml',10.5,10.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12075,778,12079,3,'六神艾叶健肤沐浴露（滋润型）200ml',' 六神','','http://img.bqmart.cn/data/files/store_8805/goods_78/small_201503211137583946.jpg','六神艾叶健肤沐浴露（滋润型）200ml',10.5,10.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12082,729,12086,3,'法国进口依云矿泉水500ml',' 依云','','http://img.bqmart.cn/data/files/store_8805/goods_2/small_201503211126423858.jpg','法国进口依云矿泉水500ml',8.9,8.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12084,729,12088,1,'法国进口依云矿泉水330ml',' 依云','','http://img.bqmart.cn/data/files/store/0a2c2c497ed13a98c3cf8d1a7268c87d.jpg','法国进口依云矿泉水330ml',7.9,7.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12085,797,12089,3,'妙洁易洁刷',' 妙洁','','http://img.bqmart.cn/data/files/store/09cd845cbd221f13e0b618b322d86386.jpg','妙洁易洁刷',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12106,798,12110,1,'云蕾两用搓澡手套（粗砂）',' 云蕾','','http://img.bqmart.cn/data/files/store/92e83e54e3ce1f12b87f58afe8a3c211.jpg','云蕾两用搓澡手套（粗砂）',6,6,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12116,776,12120,0,'蓝月亮芦荟瓶洗手液500ml',' 蓝月亮','','http://img.bqmart.cn/data/files/store_8264/goods_73/small_201502151547538431.jpg','蓝月亮芦荟瓶洗手液500ml',13.5,13.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12117,776,12121,0,'蓝月亮手洗洗衣液1kg',' 蓝月亮','','http://img.bqmart.cn/data/files/store_8805/goods_150/small_201502151549107435.JPG','蓝月亮手洗洗衣液1kg',23.5,23.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12142,800,12146,3,'洁丽雅简约休闲男袜26-28cm',' 洁丽雅','','http://img.bqmart.cn/data/files/store/b01858d30110447c1e9a354622df526c.jpg','洁丽雅简约休闲男袜26-28cm',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(12188,731,12192,0,'百事可乐330ml',' 百事','','http://img.bqmart.cn/data/files/store/3325c776da429910a971f48635544ff4.jpg','百事可乐330ml',2,2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20574,732,20578,0,'天喔蜂蜜柚子茶500ml',' 天喔','','http://img.bqmart.cn/data/files/store/d1371af71232ddfbcd5adb695c6cafdb.jpg','天喔蜂蜜柚子茶500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20590,729,20594,1,'英格苏打水365ml',' 英格','','http://img.bqmart.cn/data/files/store/3daadb2da2281e5f9f118926fbf10e80.jpg','英格苏打水365ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20598,731,20602,0,'黑卡6小时强化维生素什果味饮料450ml',' 黑卡','','http://img.bqmart.cn/data/files/store/f04818d854686650d20c80df5a0a208e.jpg','黑卡6小时强化维生素什果味饮料450ml',5.8,5.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20606,731,20610,3,'中沃体质能量（黑标）600ml',' 中沃','','http://img.bqmart.cn/data/files/store/35be88ad5fbe1e868df35743c6d33fba.jpg','中沃体质能量（黑标）600ml',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20614,731,20618,1,'中沃体质能量（黄标）580ml',' 中沃','','http://img.bqmart.cn/data/files/store_8805/goods_145/small_201504111605452320.jpg','中沃体质能量（黄标）580ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20926,733,20930,1,'雀巢咖啡268ml',' 雀巢','','http://img.bqmart.cn/data/files/store/ba9c39ab9546058ca82a1b110b7935ef.jpg','雀巢咖啡268ml',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20927,733,20931,0,'星巴克咖啡摩卡281ml',' 星巴克','','http://img.bqmart.cn/data/files/store/04a357b6707ebe96d227d70d17e96944.jpg','星巴克咖啡摩卡281ml',19,19,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(20928,733,20932,4,'星巴克咖啡原味281ml',' 星巴克','','http://img.bqmart.cn/data/files/store/300dea649c748aeb0d044a3602c2709d.jpg','星巴克咖啡原味281ml',19,19,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(25439,732,25443,3,'统一480ml小铭同学青柠红茶',' 统一','','http://img.bqmart.cn/data/files/store/f73c0d5e8eccff068b3929b64d2d14bf.jpg','统一480ml小铭同学青柠红茶',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(25440,732,25444,1,'统一480ml小铭同学冰橘绿茶',' 统一','','http://img.bqmart.cn/data/files/store/62739905ac20a04a05a036d137fc53d5.jpg','统一480ml小铭同学冰橘绿茶',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(28956,797,28960,3,'佳驰雕刻时光吸塑刻花筷10双装',' 佳驰','','http://img.bqmart.cn/data/files/store_8264/goods_84/small_201506111151249698.jpg','佳驰雕刻时光吸塑刻花筷10双装',8.5,8.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29128,730,29132,1,'汇源100%鲜橙汁1L',' 汇源','','http://img.bqmart.cn/data/files/store_8264/goods_150/small_201506111622306391.jpg','汇源100%鲜橙汁1L',14.8,14.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29142,730,29146,3,'统一海之言西柚500ml',' 统一','','http://img.bqmart.cn/data/files/store_8264/goods_90/small_201506111618101691.jpg','统一海之言西柚500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29147,730,29151,3,'海之言海盐+柠檬果味饮料500ml',' 海之言','','http://img.bqmart.cn/data/files/store/c7dbe78afd31c1a521f831440dce17ad.jpg','海之言海盐+柠檬果味饮料500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29152,730,29156,1,'统一海之言卡曼橘500ml',' 统一','','http://img.bqmart.cn/data/files/store_8264/goods_92/small_201506111601322629.jpg','统一海之言卡曼橘500ml',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29157,730,29161,1,'汇源100%桃汁1L',' 汇源','','http://img.bqmart.cn/data/files/store/9c52f760d550144ad4e68e5d284bc21b.jpg','汇源100%桃汁1L',14.8,14.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29256,768,29260,3,'森田药妆活氧水感保湿面膜',' 森田','','http://img.bqmart.cn/data/files/store_8805/goods_83/small_201506111748034323.jpg','森田药妆活氧水感保湿面膜',12,12,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29291,822,29295,1,'枪手电热液体蚊香(无导线)套装1+2套装',' 枪手','','http://img.bqmart.cn/data/files/store/aebb9e254fd904d7b8786c4a255c62e0.jpg','枪手电热液体蚊香(无导线)套装1+2套装',29.8,29.8,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(29298,822,29302,0,'枪手无味电蚊香片+器72片',' 枪手','','http://img.bqmart.cn/data/files/store_8264/goods_107/small_201506111448274690.jpg','枪手无味电蚊香片+器72片',22.5,22.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(41682,729,41687,3,'恒大冰泉1.25L',' 恒大','','http://img.bqmart.cn/data/files/store/93bcbe51c2978b72b868eb5c2591bf43.jpg','恒大冰泉1.25L',3.5,3.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(51946,791,51955,2,'固体胶7102',' 得力','','http://img.bqmart.cn/data/files/store_42/goods_65/small_201412171524254819.jpg','固体胶7102',1.5,1.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(51972,791,51981,2,'得力封箱胶带超透明装',' 得力','','http://img.bqmart.cn/data/files/store_5276/goods_79/small_201502151357591646.jpg','得力封箱胶带超透明装',6.5,6.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(51983,849,51992,0,'妙洁百洁布2片装',' 妙洁','','http://img.bqmart.cn/data/files/store/6418b6889b54577cc8ae3e5ddaed75e3.jpg','妙洁百洁布2片装',1.2,1.2,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(51986,773,51995,1,'海飞丝去屑洗发露深层洁净型400ml洗头膏',' 海飞丝','','http://img.bqmart.cn/data/files/store/9fca88839c67187dea478017cafda64f.jpg','海飞丝去屑洗发露深层洁净型400ml洗头膏',42.5,42.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(52006,729,52015,0,'5℃活力恩天然无气苏打水500ml',' 5℃活力恩','','http://img.bqmart.cn/data/files/store/27b1b76e1d5ab1e8c894783ef2ae407f.jpg','5℃活力恩天然无气苏打水500ml',6.9,6.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(52010,729,52019,1,'5℃活力恩含气果味苏打水饮料（柠檬味）500ml',' 5℃活力恩','','http://img.bqmart.cn/data/files/store/5701314f261a59f7a4e5bb1299a7a2ea.jpg','5℃活力恩含气果味苏打水饮料（柠檬味）500ml',6.9,6.9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(59688,729,59732,1,'乐百氏脉动蓝莓口味500ml',' 乐百氏','','http://img.bqmart.cn/data/files/store/4813fd32ac41cbe2ebe3d47ff7259e96.jpg','乐百氏脉动蓝莓口味500ml',4.5,4.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(91861,731,91917,3,'体质能量黑体580ml',' 体质能量','','http://img.bqmart.cn/data/files/store_42/goods_167/small_201412181116078006.jpg','体质能量黑体580ml',5,5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(91862,731,91918,4,'体质能量黄体580ml功能饮料',' 体质能量','','http://img.bqmart.cn/data/files/store_42/goods_105/small_201412181115054646.jpg','体质能量黄体580ml功能饮料',4,4,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(101491,729,101547,0,'5℃活力恩原味含气苏打水',' 5℃活力恩','','http://img.bqmart.cn/data/files/store/dd8caf516a105bf9845ad8bdef665e44.jpg','5℃活力恩原味含气苏打水',9,9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(101492,733,101548,3,'5℃活力恩含气果味苏打水',' 5℃活力恩','','http://img.bqmart.cn/data/files/store/956615aac29c5542786d80825e1e29a1.jpg','5℃活力恩含气果味苏打水',9,9,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17'),(101654,849,101710,3,'笔记本',' ','','http://img.bqmart.cn/data/files/store/00acd3490a1c9020af4fca0d72d93ac9.jpg','笔记本',5.8,5.5,0,99999,'条','',0,0,0,1,'2015-12-07 15:44:17','2015-12-07 15:44:17');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES (18,1,'s6BhdRkqt3','f7b88771d0b53d148b2ada2f2643456f1f2b8ab3','2016-01-26 13:36:21','2016-01-26 12:36:20','2016-01-26 12:36:20'),(19,1,'s6BhdRkqt3','730f1c9a6ef11882e32b353c586b05387f8bc0f0','2016-01-26 13:40:46','2016-01-26 12:40:46','2016-01-26 12:40:46'),(20,1,'s6BhdRkqt3','1336abea54b31de85254b074e5adc5ae1d345ea1','2016-01-26 13:42:21','2016-01-26 12:42:21','2016-01-26 12:42:21'),(21,1,'s6BhdRkqt3','96ae104b36e10c2aae30eb793a42c9abd90abedf','2016-01-26 13:42:39','2016-01-26 12:42:38','2016-01-26 12:42:38'),(22,1,'s6BhdRkqt3','755982ffbab347b603550a0f5a0d4b6c22524abe','2016-01-26 13:44:14','2016-01-26 12:44:13','2016-01-26 12:44:13'),(23,1,'s6BhdRkqt3','49b51d5a47237c67f2b63cad0a5b259516b9c26a','2016-01-26 13:47:29','2016-01-26 12:47:28','2016-01-26 12:47:28'),(24,1,'s6BhdRkqt3','f6e0e8e3b4bb67a51dd713776223280665111cd6','2016-01-26 13:47:42','2016-01-26 12:47:42','2016-01-26 12:47:42'),(25,1,'s6BhdRkqt3','','2016-02-09 12:44:14','2016-01-26 12:52:04','2016-01-26 12:52:04'),(26,1,'s6BhdRkqt3','bfcae3b9bc34833d068094e048b11c3efb3a1922','2016-01-26 13:58:41','2016-01-26 12:58:40','2016-01-26 12:58:40'),(27,1,'s6BhdRkqt3','7e6cf3743f5300a93e777fdc465b9d5e891aaa31','2016-01-26 13:58:59','2016-01-26 12:58:58','2016-01-26 12:58:58'),(28,2,'s6BhdRkqt3','51d15049b876b14257f5819bf21bfa3c1ff094a7','2016-01-26 13:59:12','2016-01-26 12:59:12','2016-01-26 12:59:12'),(29,2,'s6BhdRkqt3','2779c288f558f11c309260c9eedb42cbc33ac478','2016-01-26 14:00:11','2016-01-26 13:00:11','2016-01-26 13:00:11'),(30,2,'s6BhdRkqt3','20bc575faec306a7a24986618aebb2c079301fb1','2016-01-26 14:00:33','2016-01-26 13:00:33','2016-01-26 13:00:33'),(31,2,'s6BhdRkqt3','0e20451f10ce70d15d361ac63731319040e923d1','2016-01-26 14:04:28','2016-01-26 13:04:28','2016-01-26 13:04:28'),(32,2,'s6BhdRkqt3','cec4bb4eedff6410eda22f4a68cbe935775c4325','2016-01-26 14:11:45','2016-01-26 13:11:44','2016-01-26 13:11:44'),(33,0,'s6BhdRkqt3','70e0e811573d55ff9c12429c642a89eed6354829','2016-01-26 14:15:37','2016-01-26 13:15:37','2016-01-26 13:15:37'),(34,0,'s6BhdRkqt3','62a8e2ac4a82071624df6655aca3d1bbb5348332','2016-01-26 14:16:32','2016-01-26 13:16:32','2016-01-26 13:16:32'),(35,0,'s6BhdRkqt3','e4166efad71350f4825a7070e11073607bb4faf0','2016-01-26 14:16:33','2016-01-26 13:16:33','2016-01-26 13:16:33'),(36,0,'s6BhdRkqt3','eda323ee2529c95fcb02062c150630d4eb037df0','2016-01-26 14:16:37','2016-01-26 13:16:36','2016-01-26 13:16:36'),(37,0,'s6BhdRkqt3','afb98b26fbf993bde6814e9c6b77bc00614ca77a','2016-01-26 14:16:48','2016-01-26 13:16:47','2016-01-26 13:16:47'),(38,0,'s6BhdRkqt3','24563cc5e7cc383ba4eba4d5bd52cd74e3ca1754','2016-01-26 14:17:38','2016-01-26 13:17:38','2016-01-26 13:17:38'),(39,0,'s6BhdRkqt3','e1ee8b3b31e0ccf43fb2fa3e25053504800ce86f','2016-01-26 14:18:24','2016-01-26 13:18:23','2016-01-26 13:18:23'),(40,0,'s6BhdRkqt3','d9f99584b1b016eee67b924a5d0e7fe921720b82','2016-01-27 03:11:20','2016-01-27 02:11:19','2016-01-27 02:11:19'),(41,0,'s6BhdRkqt3','1c5391ca88513646cee64eb9b7afa765bad68540','2016-01-27 04:13:55','2016-01-27 03:13:54','2016-01-27 03:13:54'),(42,0,'s6BhdRkqt3','e8953e9b70a2cac3e2f4054a60f9aade95a7dc12','2016-01-27 05:10:02','2016-01-27 04:10:02','2016-01-27 04:10:02'),(43,0,'s6BhdRkqt3','ce726aea2edb199dcafa51307cf2f8ab9f51ddd3','2016-01-27 05:11:36','2016-01-27 04:11:35','2016-01-27 04:11:35'),(44,0,'s6BhdRkqt3','99164453b18653e65f854a593401150fcb4a141b','2016-01-27 05:16:04','2016-01-27 04:16:04','2016-01-27 04:16:04'),(45,0,'s6BhdRkqt3','79aed3f936795189b7356ee747f8558d0dcf3679','2016-01-27 07:41:04','2016-01-27 06:41:03','2016-01-27 06:41:03'),(46,0,'s6BhdRkqt3','80054b6ac434b0f73b196ecfc4168ad2f01d2cf7','2016-01-27 07:42:13','2016-01-27 06:42:12','2016-01-27 06:42:12'),(47,0,'s6BhdRkqt3','a98fda6e3ea13a76890c717f39a0c51d19d3a732','2016-01-27 07:42:14','2016-01-27 06:42:14','2016-01-27 06:42:14'),(48,0,'s6BhdRkqt3','87b5dbbb07605df22f0da33efefdc5b70cbf5b5d','2016-01-27 07:42:15','2016-01-27 06:42:14','2016-01-27 06:42:14'),(49,0,'s6BhdRkqt3','7d398a11e4773148902b6bdf8005a62145271936','2016-01-27 07:42:15','2016-01-27 06:42:14','2016-01-27 06:42:14'),(50,0,'s6BhdRkqt3','d880648ea298768cb0686ee5c5fb17222d0dda8a','2016-01-27 07:42:15','2016-01-27 06:42:15','2016-01-27 06:42:15'),(51,0,'s6BhdRkqt3','57752b8450371279687c48b5c28699df64f2752f','2016-01-27 07:42:15','2016-01-27 06:42:15','2016-01-27 06:42:15'),(52,0,'s6BhdRkqt3','cd2d48909bbe554aca898ac21de039fb00c65667','2016-01-27 07:42:15','2016-01-27 06:42:15','2016-01-27 06:42:15'),(53,0,'s6BhdRkqt3','c8a077a497c860fd1a17d46bed5bae037910c0c8','2016-01-27 07:42:16','2016-01-27 06:42:15','2016-01-27 06:42:15'),(54,0,'s6BhdRkqt3','ca42893d7eefa5505f52455903c94f35567b5707','2016-01-27 07:42:16','2016-01-27 06:42:15','2016-01-27 06:42:15'),(55,0,'s6BhdRkqt3','cb7a9800649f73211247825b9dc3ed1517d83054','2016-01-27 07:42:16','2016-01-27 06:42:15','2016-01-27 06:42:15'),(56,0,'s6BhdRkqt3','df7a1f13cd1fadfff0e29d44ce44e4fdc5daad33','2016-01-27 07:42:16','2016-01-27 06:42:16','2016-01-27 06:42:16'),(57,0,'s6BhdRkqt3','1923fdad9f762a4bca72633ebfae30f8db0840c5','2016-01-27 07:42:16','2016-01-27 06:42:16','2016-01-27 06:42:16'),(58,0,'s6BhdRkqt3','6e2d0d3f72cf5fb9fac16cf192c32b8c313628d1','2016-01-27 07:42:17','2016-01-27 06:42:16','2016-01-27 06:42:16'),(59,0,'s6BhdRkqt3','26d715d666de32088e0163cb926542cb8b0106d6','2016-01-27 07:42:17','2016-01-27 06:42:16','2016-01-27 06:42:16'),(60,0,'s6BhdRkqt3','2d4c60f049b94b2358df54b865205e4e1ca6758c','2016-01-27 07:42:17','2016-01-27 06:42:16','2016-01-27 06:42:16'),(61,0,'s6BhdRkqt3','1867a052f6d8ea372ac7b88870201680075e286c','2016-01-27 07:42:17','2016-01-27 06:42:17','2016-01-27 06:42:17'),(62,0,'s6BhdRkqt3','b267f6e7e05e6bcb455c43f050b0f1b6a844bd48','2016-01-27 07:42:17','2016-01-27 06:42:17','2016-01-27 06:42:17'),(63,0,'s6BhdRkqt3','8c06de08059a8a9f006d67b8616b94e0d2b00c78','2016-01-27 07:42:17','2016-01-27 06:42:17','2016-01-27 06:42:17'),(64,0,'s6BhdRkqt3','acb19fc38f75255e3006ead5a255bd040e4235b2','2016-01-27 07:42:18','2016-01-27 06:42:17','2016-01-27 06:42:17'),(65,0,'s6BhdRkqt3','62831a91edfdfdf3d17809e4cb824fe6eeb2a5ac','2016-01-27 07:42:18','2016-01-27 06:42:17','2016-01-27 06:42:17'),(66,0,'s6BhdRkqt3','9306d289296ee18308eb9ed34ccd24a07b97be7d','2016-01-27 07:42:18','2016-01-27 06:42:17','2016-01-27 06:42:17'),(67,0,'s6BhdRkqt3','e9d748c0d368483e19124357dc249a7d5df43580','2016-01-27 07:42:18','2016-01-27 06:42:18','2016-01-27 06:42:18'),(68,0,'s6BhdRkqt3','02fb5f177b8f7e99b160da072edcaebbb18fbcad','2016-01-27 07:42:18','2016-01-27 06:42:18','2016-01-27 06:42:18'),(69,0,'s6BhdRkqt3','f5925f584dad5c8ad54ed35ed828bb5a445bd4ef','2016-01-27 07:42:18','2016-01-27 06:42:18','2016-01-27 06:42:18'),(70,0,'s6BhdRkqt3','6517fad88879401bddeae43b32d31b7db0478c13','2016-01-27 07:42:19','2016-01-27 06:42:18','2016-01-27 06:42:18'),(71,0,'s6BhdRkqt3','5499719bcfaade30ad7e673da3a7fa41e5dd74ea','2016-01-27 07:42:19','2016-01-27 06:42:18','2016-01-27 06:42:18'),(72,0,'s6BhdRkqt3','9eddf0c2ccd5368c2a731cbea30ae8cba785ae43','2016-01-27 07:46:19','2016-01-27 06:46:18','2016-01-27 06:46:18'),(73,0,'s6BhdRkqt3','ea340456627da48a83e8ac18a1cfad97450b15df','2016-01-27 10:22:50','2016-01-27 09:22:49','2016-01-27 09:22:49'),(74,0,'s6BhdRkqt3','fec5e0e6fb5cdfc2a7040215f056effc59a45254','2016-01-27 10:22:53','2016-01-27 09:22:53','2016-01-27 09:22:53'),(75,1,'s6BhdRkqt3','ddf9fc8e6950b0fa44780066f80c1ccfcdb70cb0','2016-02-01 02:08:55','2016-02-01 01:08:54','2016-02-01 01:08:54'),(76,1,'s6BhdRkqt3','383373efcb87892813e02682d573d7e87cf4698f','2016-02-01 10:19:45','2016-02-01 09:19:45','2016-02-01 09:19:45');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES (18,1,'s6BhdRkqt3','a018aefd121253cee584e08362e411da73d33aa3','2016-02-09 12:58:41','2016-01-26 12:58:40','2016-01-26 12:58:40'),(19,1,'s6BhdRkqt3','f0f68552de6ee22eea2ffbe7b6e24d038b289526','2016-02-09 12:58:59','2016-01-26 12:58:58','2016-01-26 12:58:58'),(20,2,'s6BhdRkqt3','7fc3749a3becc2a12ed57940c891fe6ad8e01c30','2016-02-09 12:59:12','2016-01-26 12:59:12','2016-01-26 12:59:12'),(21,2,'s6BhdRkqt3','125935682291e973468a84cb45aa2c71096d0ce0','2016-02-09 13:00:11','2016-01-26 13:00:11','2016-01-26 13:00:11'),(22,2,'s6BhdRkqt3','013922460da7af93b075cf5461bd568caff30b5f','2016-02-09 13:00:33','2016-01-26 13:00:33','2016-01-26 13:00:33'),(23,2,'s6BhdRkqt3','182a3894bb0d2aca6240b5be8476e76ff2047f09','2016-02-09 13:04:28','2016-01-26 13:04:28','2016-01-26 13:04:28'),(24,2,'s6BhdRkqt3','325a026a67b4028ee6c5c2e62acf24106dbabe0e','2016-02-09 13:11:45','2016-01-26 13:11:44','2016-01-26 13:11:44'),(25,2,'s6BhdRkqt3','b180d9d598ae992ccad2c9f05367d39878aa946e','2016-02-09 13:15:37','2016-01-26 13:15:37','2016-01-26 13:15:37'),(26,2,'s6BhdRkqt3','63c4379001e28b933ff4757b0c03cf08f8ddde3d','2016-02-09 13:16:32','2016-01-26 13:16:32','2016-01-26 13:16:32'),(27,2,'s6BhdRkqt3','6ee3511d37d39fd483d0437ad48001a4d94c58de','2016-02-09 13:16:33','2016-01-26 13:16:33','2016-01-26 13:16:33'),(28,2,'s6BhdRkqt3','eeb77f921b7d98033e8c928deaa111a1644a1c77','2016-02-09 13:16:37','2016-01-26 13:16:36','2016-01-26 13:16:36'),(29,2,'s6BhdRkqt3','e376445c72ffcc6bcca443bfe73c7cd249790364','2016-02-09 13:16:48','2016-01-26 13:16:47','2016-01-26 13:16:47'),(30,1,'s6BhdRkqt3','5f3ff01f6946fa78470b0b4d1330e63237bcaec4','2016-02-09 13:17:38','2016-01-26 13:17:38','2016-01-26 13:17:38'),(31,1,'s6BhdRkqt3','cc550d807b0c2b32a935d02f28992e103ae2d3ab','2016-02-09 13:18:24','2016-01-26 13:18:23','2016-01-26 13:18:23'),(32,1,'s6BhdRkqt3','c7522f5c91e64cb4c7d9a8502f51169d5a1767e1','2016-02-10 02:11:20','2016-01-27 02:11:19','2016-01-27 02:11:19'),(33,1,'s6BhdRkqt3','c0b96976b1506388e6869ba771f989d8dcd5dc84','2016-02-10 03:13:55','2016-01-27 03:13:55','2016-01-27 03:13:55'),(34,1,'s6BhdRkqt3','93978a318b1b5fce9a6b21866038ca06c993128e','2016-02-10 04:10:02','2016-01-27 04:10:02','2016-01-27 04:10:02'),(35,1,'s6BhdRkqt3','baf7061e6191da5a7f1238665c437cdc19a5d944','2016-02-10 04:11:36','2016-01-27 04:11:35','2016-01-27 04:11:35'),(36,1,'s6BhdRkqt3','76b375ff14691e0e60a5363e35bf094618836cc7','2016-02-10 04:16:04','2016-01-27 04:16:04','2016-01-27 04:16:04'),(37,1,'s6BhdRkqt3','549fe2273fb7d0611d713bfa57167009e37044b1','2016-02-10 06:41:04','2016-01-27 06:41:03','2016-01-27 06:41:03'),(38,1,'s6BhdRkqt3','86fd7f1dc78daf402dcf6c5549d1511db2e98356','2016-02-10 06:42:13','2016-01-27 06:42:12','2016-01-27 06:42:12'),(39,1,'s6BhdRkqt3','7c943f8ecc216a26cdbd5afed0413616e68700ae','2016-02-10 06:42:14','2016-01-27 06:42:14','2016-01-27 06:42:14'),(40,1,'s6BhdRkqt3','86523bdc6deafe501797871ad0b7c1bb7af63107','2016-02-10 06:42:15','2016-01-27 06:42:14','2016-01-27 06:42:14'),(41,1,'s6BhdRkqt3','1f3453578507a30b5264fc9dcb809881c71aa9be','2016-02-10 06:42:15','2016-01-27 06:42:14','2016-01-27 06:42:14'),(42,1,'s6BhdRkqt3','a1bbfbabc8ea1a86ca5d9347c3a8058a5820ab40','2016-02-10 06:42:15','2016-01-27 06:42:15','2016-01-27 06:42:15'),(43,1,'s6BhdRkqt3','1505688d49fa31547a219fee0663b85079228e97','2016-02-10 06:42:15','2016-01-27 06:42:15','2016-01-27 06:42:15'),(44,1,'s6BhdRkqt3','3f2573b0d97d2c62bb1a9ecf49a7a8512175d3c3','2016-02-10 06:42:15','2016-01-27 06:42:15','2016-01-27 06:42:15'),(45,1,'s6BhdRkqt3','844a8f8a4be262b0a487571e8ac523e69d22f305','2016-02-10 06:42:16','2016-01-27 06:42:15','2016-01-27 06:42:15'),(46,1,'s6BhdRkqt3','dc4a99edd8c4cace1df508cf2a2a179b043bd760','2016-02-10 06:42:16','2016-01-27 06:42:15','2016-01-27 06:42:15'),(47,1,'s6BhdRkqt3','5a9161f9a61fde32e0c489fd7fae40a910062f9c','2016-02-10 06:42:16','2016-01-27 06:42:16','2016-01-27 06:42:16'),(48,1,'s6BhdRkqt3','10d70b758a24ed95545972ec3ac2779c66e9eda8','2016-02-10 06:42:16','2016-01-27 06:42:16','2016-01-27 06:42:16'),(49,1,'s6BhdRkqt3','01d596d5608ef9ae1b5d0a0aeb9aa35bbd42d8a7','2016-02-10 06:42:16','2016-01-27 06:42:16','2016-01-27 06:42:16'),(50,1,'s6BhdRkqt3','816cc215ab4543a880fc56e6712ac994097a7cf6','2016-02-10 06:42:17','2016-01-27 06:42:16','2016-01-27 06:42:16'),(51,1,'s6BhdRkqt3','353dbae41b6b74e7beebb51ce775ca1b76e8bffd','2016-02-10 06:42:17','2016-01-27 06:42:16','2016-01-27 06:42:16'),(52,1,'s6BhdRkqt3','fd4a13ee83296ff96577c5328e91c55f9d6ae56e','2016-02-10 06:42:17','2016-01-27 06:42:16','2016-01-27 06:42:16'),(53,1,'s6BhdRkqt3','0eeed31d1494cc8fecf36085ef7e6ae49e8a3d0c','2016-02-10 06:42:17','2016-01-27 06:42:17','2016-01-27 06:42:17'),(54,1,'s6BhdRkqt3','8e1470849c83ca4fd0fde17b11746a05dbc56949','2016-02-10 06:42:17','2016-01-27 06:42:17','2016-01-27 06:42:17'),(55,1,'s6BhdRkqt3','3bffb3fc1b9bfab7727a56e4d0c9317570b9ee43','2016-02-10 06:42:17','2016-01-27 06:42:17','2016-01-27 06:42:17'),(56,1,'s6BhdRkqt3','875ea3dff9e8b34acddb7b210b4c1dc2aadb8789','2016-02-10 06:42:18','2016-01-27 06:42:17','2016-01-27 06:42:17'),(57,1,'s6BhdRkqt3','e1db7c06a27c5983c1aaeb153025fcd92c159cac','2016-02-10 06:42:18','2016-01-27 06:42:17','2016-01-27 06:42:17'),(58,1,'s6BhdRkqt3','9d6e84b18a12c44ccb5b8ec7ae854fc51a3453f4','2016-02-10 06:42:18','2016-01-27 06:42:17','2016-01-27 06:42:17'),(59,1,'s6BhdRkqt3','5256c9d37ca9d898577267ec026d1e578427e2b3','2016-02-10 06:42:18','2016-01-27 06:42:18','2016-01-27 06:42:18'),(60,1,'s6BhdRkqt3','af8cd7c27bcaf4d7b0a18e9e8ff1e3166faf4e79','2016-02-10 06:42:18','2016-01-27 06:42:18','2016-01-27 06:42:18'),(61,1,'s6BhdRkqt3','33654f47b5b36c362eef0f96cde1934d2c16fd65','2016-02-10 06:42:18','2016-01-27 06:42:18','2016-01-27 06:42:18'),(62,1,'s6BhdRkqt3','583e6fb4b5d4a90f53bb782896bf310fc20c8eef','2016-02-10 06:42:19','2016-01-27 06:42:18','2016-01-27 06:42:18'),(63,1,'s6BhdRkqt3','9b9e8d6a973cd1037382f7715d36a7a78cc8b098','2016-02-10 06:42:19','2016-01-27 06:42:18','2016-01-27 06:42:18'),(64,1,'s6BhdRkqt3','9e190a619c6b246f28a48ed2e9cbe0d6faa65d3f','2016-02-10 06:46:19','2016-01-27 06:46:18','2016-01-27 06:46:18'),(65,1,'s6BhdRkqt3','fdb05bb63813e256a6cc8febb1dc2365525d09dd','2016-02-10 09:22:50','2016-01-27 09:22:49','2016-01-27 09:22:49'),(66,1,'s6BhdRkqt3','2d91680b6fccff202182c22069f018274da4b07e','2016-02-10 09:22:53','2016-01-27 09:22:53','2016-01-27 09:22:53'),(67,1,'s6BhdRkqt3','11d66073e334683cc186f49167fb89f91a204017','2016-02-15 01:08:55','2016-02-01 01:08:55','2016-02-01 01:08:55'),(68,1,'s6BhdRkqt3','f0184e83a8e01d01b316a3468b6319cbe9c92451','2016-02-15 09:19:45','2016-02-01 09:19:45','2016-02-01 09:19:45');
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
INSERT INTO `sessions` VALUES ('-dcAACV10jtlhmbu8X2_YCFKugtqEynj',1454403579,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('0H4tdhyJul4JVON-1godCXyJRzAOMRNU',1454416087,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('0MZK76uAd4UpH3dTDkFBGFrQcW9V08FD',1454415686,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('0mf5uV60Z2VUvTSVWxAv8HRD-m6n8ikf',1454415681,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('0o0zFa6f7MpCUYMi_AtQkaDKkn9vw7xP',1454416745,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('1aNuv69mJasVzWyka1lfI58kl7pNTlBj',1454415852,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('2eyvlasl67B8EcAPCwDfPu62rMhR-VwY',1454415678,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('2viW8YDXnAjivGeUxVmWN_oTjEWmx4BK',1454416745,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('2w_kl0Lh5jrJ1r22m27cq1TG3UrRFuLJ',1454479417,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":\"1\"},\"flash\":{}}'),('30jwZGh_mhYcnvhL2fFXlDf1fqxjWv9r',1454416053,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('3GwYXC_bQXHF7UP5DXORDFWEDQMvZpal',1454416121,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('3Gzq_DpvxVG6aOI-RBdsGmao0xDa88tm',1454415978,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('3P82y--xOJjlZEdjZZ5k_Rgc6J2pQWgt',1454415668,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('3ro_wZlUTTmQCBnyjPWkPr5hyUu2F6Tq',1454416330,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('40OXGozHKmjB-AYG5eeoS192DRMIeQ9L',1454416206,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('4yGwegP6fv5TmvL-HteZuDdTrNR9Qz-q',1454415609,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('5G-FgvihJ4dRQ-Mdu3i-J6eNCpcQnjnb',1454416125,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('5ljWSPRzstwzVfND9bl53XFu8DPAdP_2',1454407468,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('6mnLiB727GPWc7g6Hi2qyTKXK_EJjLhu',1454416267,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('6xa9DNPH9tPCdLnmNgr6HjUJdSICt8Cz',1454416087,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('6yhSV3CBhJu7191z0fpH2z-V_lYmT4i_',1454403549,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('7GwxwYr0OgqBuUWM8b-crkRPUne616XF',1454403549,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('7KeVYPspPW8vLTC_aaGb-5JS7xgmed1A',1454415822,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('7RtfQVePo6MreNei7OjD9SrNh64dJKOF',1454415981,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('7T7hWpacZMOsx35aJ5dvvFckwszwOk1m',1454403613,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('8PDZxt3OHB-Ogvz92Pbh8Y8z1Rt2Y30G',1454416125,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('8z5sPThR104jLJEgUVbECMLtgo6JEAb7',1454416021,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('97X3OlnuYmgHPHfUHKwrLK3mncYndaIX',1454416282,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('9JoTngG1ko3J_r8hZ4F6EbQ8G_4cagRy',1454415932,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('9QO1klIXubLIyIfaKBoab5I86pY_iOys',1454415852,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('AJ9pcuutZ-1oc52UE0UqeCZ5lGd6t3vf',1454407469,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('B1JRTZgnHWznYp2WU6UjNLIZvYlbTMU6',1454407464,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('BKHby4vuWWGDFG68dvAuLMUzvzatAfai',1454416540,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('BRjSQaVsIioGd2WptmLCYCqxbNjFHdIL',1454479417,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('BbKWP70b67si9fPLig7xvdvYp8m1Mfaa',1454416308,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('DJXN-bQ5KCiRFuqMgE1BZKSXjwhZcGRn',1454416535,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('DXqH5VFq6WYWpF0R-r_fbBJb72jw7kxi',1454415609,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('EOpyigUjrz2nfPBDlytEMouYnrwBWGXE',1454415807,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Ea3d9STKH2LIC9qbszFfu-fzwOEeD-Cu',1454415823,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Ewp_fOQYnuwXAP5Hy93O-ESShzoLTtkd',1454403611,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('F7LVAEqtYs_r4yvAObNwfiv2Gb3rNmbI',1454416207,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('FAkULpPpunzJoo3NupG42LMUGH1pyETg',1454479415,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('FCiqCPgWX3n58ZcPmnh0MuvMrgLauGcj',1454416235,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('FLs6WOWi4t6wZGYLGzVQU7yghFRI7mJs',1454415971,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('FS1nTZUsUNM0U_NtPvmRuHPkK8S9t0Yj',1454479415,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('FZlguPH_G36kmHN_IgyX-t8jiukwYW2O',1454415683,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('FZn640r18j4-Jj5H0AZJ1GmEuE13TQo4',1454407472,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('GFgfrDTRzN_oCJ0q35nInHLSaqp1vnzY',1454407456,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Gb51m384zMKuFyeR50H9PL_dYXOPRN9u',1454415774,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Gsd52sb_-XvQbIOhpW6ElHGyZqessUC-',1454403556,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Gt_f1Yw2Ahxvn5lWlu7JSphiqpxbK87j',1454416266,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('GxldUz9t7iJq8Q2M4PI3mYVsYbasw_-U',1454407472,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('GzJhXsvEBjJ9TuLxd3cmruiyhXrqC7DD',1454479417,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('H7NKYLNCaYwAQdBFYK7VLw6N54jRoOtV',1454407464,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('HUjQlm2j_fEAnquaJYl_GhY1tsLbiw-y',1454416087,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Hu7wykArYqlBOT-Z8uwx2eqL2J4es_9c',1454403588,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('HxnDYNcuVF_g1k9Wxf9lbCNrhUvti1uv',1454403599,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('I4BBq_p4R_3tzdLz4LwOJXRvVG0DRb6Q',1454416309,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('I82ZRBAA7biCPo_3WYqTPc-WTNC3RXi2',1454415683,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('ICbcNlT_4Uhli7xZO2By18neD6glTgXe',1454415971,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('IOhpZiNoVmOe5rwlc_Hy6nXXTpmXcMkv',1454416129,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Il0QEIyGC1qU-GHsxa3biQLjebh2M4iJ',1454418854,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('ItNmIgWCclahjG4LuuGgXlN1DiVQs0fk',1454416251,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Itn1j62bBn2kZ3mi8vg_cFzKSzgEsguR',1454417446,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('JFQF-1ZgFkZtIpe1G6C-ZT5Sr6XZzk5x',1454417435,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('JMLt0Z7wQB84tKVu5Cnz104l8CDHpnMt',1454416117,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('JySFFBdPqE_LD7p3dpBpcGsxcAhaLK4y',1454416155,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('KC6LlyKB2g7yGf1fGoGCP-4iOMkbnd_7',1454415686,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('KOBTyRCupQ1roG4dfCXiIodW6bAHsWTy',1454481725,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('KOD6nUhnQZymgSt5qYEdFtoqxmOiTNWA',1454415641,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Ke1XR0REjxLGbRcy57XDwB0RCdT-XNNj',1454416281,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('KeWB7PcGn0L3tTcITVDDMODPZMp9gBgP',1454415685,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('LSEETPi_b_4UE6dPQIyBbBD-qKXDSrph',1454415755,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Li56oFGUfQaL4WRd5emQe5_fd9xt1g6y',1454403549,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('MKHMmFarHpB6DtfYt0XRx3VycblN5jDs',1454415935,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('MTRO08O9Yp_cleHQy-qYYoSOwacMxk3u',1454415852,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('MnUiQfGOy0KOHXGskc9ikeBuDwQDvdKg',1454415774,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('NBE08SocsjR0msLNtQnN5uyA9MXfm-sD',1454403641,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('NqldtKXXZXy_ftw9YZYJVhl6N1ZSgz3N',1454415669,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Nu0OZYFmxHUjt-VMhyGX8nwwNZajzK8Z',1454415971,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('O2LVpkeWdqJDfgdkowGXHzuJI6g5lqsz',1454415678,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('OGj0gbM7i2KAirWpy2qpiadeV_m9ApG9',1454416267,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('PF3fnhD2KfWCg2fnbrU8MTXkLLnX6tRy',1454486322,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('PHAMz0U1ICFMICLT1J4znRLXYlK0O2zo',1454416739,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Phhh6SNWOf6AUi9CT2gNVvffIKFnmfel',1454407456,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('PjKDNIYMDkDDy-g6M0PbcbMvbqGYErIP',1454416054,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('PlBkjUpsfeLRVqfazYBe8uz0opz1U9Zt',1454417435,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('QEkAn04AUvKdBOV_WC-cd3k3tG2Z6Hc1',1454416155,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Qc1v5tw3bB9bA8kDEi5xCB80YTg0Tp6i',1454407738,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('QhWCFXCHapTofw9V_dmZ5UwVs1S0CtTr',1454416309,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('QktIMiVvc9msGgT4K8Gid3_lvcfMBvEz',1454416235,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('QwBmOE0Don1t3WCGFPzwIPWinY_rTlBy',1454415822,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('SAfffDEOfQCocetQ5jqEI7gZBTFhsOB0',1454416235,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('SVHIsbNCsJFK5g-wKPr1L0ZProRyXag8',1454415755,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('TC0wcQlzlNx2ogmHOsMEe3mvi6WglR2H',1454403527,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('TZonQX_lfHwQfT4Lk9LfEKQ_ZFN5Jn1M',1454415755,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('TzFKHR2QzDIhqGCY-77pZmoPOuxFgO1Y',1454415678,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('UAcyxAfRBrV055P4M2OVb4dK9uUntIWR',1454415935,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('UGpxw_OylpDbA9_plVpKi8bpMtJhNo35',1454479417,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('UL7Xf0t0_9eIsTaEbiQ4gQhqX40nQ20k',1454403527,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('UaQsnCDyWfo_2UM8m9rN0Bo3GDunRwIT',1454416207,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('V9quHzb-k82wqCIgOJHwniuYjC-2w6Hz',1454416739,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('VfyCfWCA5twRuRBxoubY8U2YgQTZKYoz',1454416155,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('VqZDcZf_ByJ85uMwzOMqkDugsAQBDl28',1454416128,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('VuIRDa3AhWzROzTF6ZnaLOWmiEjn-qj8',1454416252,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('WER7RI6u__2jJ1q2BWK2WkkzvkS5VPQ1',1454417443,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('WKOKdM_d8_uk3ohVOnPH1yCg2XyFcq3Q',1454415669,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('X1u8s9wvLMJij_AtLgeo13F-8CcU97JF',1454403534,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('XTkz-UorUDTzT6b2Tkw5Mtg8bstRF6yJ',1454415823,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('XlRnNNLEA3Gxa3AXhMK3wzaqpeme8Ah4',1454415642,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('Y4O6wUgmajNSSQVH6PH_-gh9rM8QxfvV',1454416020,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('YdlVGwdjzWTPPaIi3sJz5BMqvhW580rj',1454485446,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('ZRAR74WGkgRRD7J35N5sr-zVzrQYqAIS',1454403582,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('_llddXTeILzqHIB-Cv4pAxwUWDvhl8IF',1454415672,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('bjMP6BFJ3vnTjS3_z6cvx7kW1IDGXUe8',1454417443,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('by4oBx9KehUvI2gbf-4whcmRxAm-BADU',1454417446,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('c-1KQS4cY5MOXV3s2Ovv4laWphJocBMJ',1454416021,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('c-zRpmdQh-p4rHCCPAwCrL6DMzh5P9vf',1454407469,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('cENIMoyVvUoLq2Hxs7jf5gxnlR-qMMZO',1454403584,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('cOv2M5E4bYxG1z7i9Zpr3mUV9l5YAZtX',1454415641,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('cP19pHsp9_w7v_kdA4nCcQWfAwQRBwdL',1454415642,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('ccAI5AAqc5IaEPl6VkBQxX6yBA4ZbhhC',1454415770,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('ccZCLTRaSrHTPpRCz5zpNhKnkQUEmvea',1454415755,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('ckvA5ASVOLJKe1AfZ5SEWN90NqYnYORe',1454403551,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('clB7YjNzx8E0wM5LHMJ09rxFlQkfE0pf',1454416329,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('dEagYJS8vHtT-Kv6X5m_lELk22L6QxVX',1454415808,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('eRONJ0TRVHFMGmKyVHYj8hPTEaF8h5iS',1454403579,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('eVqB--Itq4lhFH170zdf2zzeDh4GXAH9',1454415840,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('f0VfaqwgMyJ-C9OXY_iO17k7DBAiD2NR',1454403578,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('g2UK0oI4sxBPYbh4jepKEsSeiewuIQ4s',1454416207,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('grBnnKX34yXh6DyChdgdh9ZsK0JpUYh7',1454416743,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('hhhMTXyUi1jCYeaVL0880vLG6UA75I5N',1454407471,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('iVRKatQhNEKKsdqPI4a9W6oKewyue1Q-',1454416330,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('iXf13NWKbubeQVu5AZyS2bXRZdk4knUx',1454415678,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('ixEH495LbwP8nUAZCuWZtgANBA0AwW_G',1454415672,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('jC1oxSXaDLJ2_61kWZkQoOymv86TdcMl',1454416122,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('jigCA5KtA_zzSYiQC3S1GEF3bO8Mqdvi',1454403561,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('jziTfc3XvHgFf4h1xVJXlTWsjWT8z0Qx',1454416282,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('jzt4nud2fmoXMp674ZseP2CPMqwHROHe',1454403601,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('k8OWLelLKvdziTzDXF6BnmHmpBhJ6GCQ',1454416207,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('lL0ctW9kAQUBojijVJE_obGpadrOhCS2',1454416117,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('lpc7OKlnV4tm9XcAMHpQMbtKAtsUI6Rq',1454415685,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('mPlvFS8yT7lae6OSgjCvxaNQtpt8cDB9',1454416667,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('mfvwoY5ZKgwxZthcFIyTPTsSVkOkZedn',1454415848,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('nWaP2oXCtHuTA_pzzXqt2-7XjeX9KlKI',1454415672,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('oND_QvzPDHhd6wQKUw7SOUBFRcuciQdc',1454403549,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('ocef9LfBHiqTVeoE3-fMFVGWIvdGM5_4',1454403534,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('pBcKf8LAUltfjcH0nCBfMB60RYSTp1ak',1454415681,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('pfYmq9KC6AxioVtWlFeMCy9QURXntLj2',1454417446,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('qTIoMIMYrLnU1TPEp2tB3CK_ovezeCdT',1454416540,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('qb8obXeplceySb8h1AdnDwjhGWKQAtZC',1454417446,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('rOcRtHHjhAUvakv6bxu0ZBLAr-yBUyUy',1454416745,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('rzdHZy_6c89JcQ6GEVkmDndt-_m1zsVI',1454415852,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('s0jRWbEselxhxFIkuqwaWkPwCEQNoYDH',1454403556,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('slACynKuiHeF03U8mWuQfUUB8OCmjL8Q',1454403551,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('tNmQcQjhckhlRlbVHqp0oNWMwlJRNrBv',1454416535,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('tQbpXRXA8ke8zcboPC8BJsFMKfVDYjN6',1454415808,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('u02-UvsymrgQl1ycmahCRnrcDcFxihje',1454415672,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('u5NbeH5DklaTQn4DrAwDCYGnqZ3eIS04',1454415683,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('uylCfScYdwqj9PITWsAULsRdZF2nGIP1',1454415681,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('v3GViKdhr-Vc1rBoRM9nyd-P8NmNE_B6',1454416116,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('vnUn09szDr22tfpvdRlbAAGETfFd-O0Q',1454403588,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('vtghtscrQa0N5FDkLxTFECnKwZXNQBFX',1454403599,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('wTL-50mQBKYgkfaq8ZgNlXJAgugFu4Yi',1454416252,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('x2HGzAGbkl0TZWsOXkKHmcBtAdZmqQ2M',1454415981,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('xGx70ZhK9TpTmATxRkQwD6JV32Zfcko6',1454479417,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('zFFJmwyecmo3Ef_cw1U92hSCkvrr8CjX',1454415681,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('zYmEW1-WuaXyAOvzf7KQ_ygIRX_aquOF',1454415683,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('zd_Ega0QX_NFnF-VBGb-zSoGJ-pk1dES',1454416745,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('zq2fYilwpPB6R8SCKAvHuGYqOwsJqk1x',1454403612,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('ztkDnDt5msaSlNVhN4phMcKib_IcViid',1454416054,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}'),('zwrGPep-i54c26q1PIIBgVFEd9lYNVp9',1454403581,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{},\"flash\":{}}');
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
INSERT INTO `users` VALUES (1,'18073181682','65f1a8a409859720c666ab17e1ff3355ebed0df2','genie88','genie88@163.com','18073181682','http://admin.ttjinhuo.com/upload/avatar副本.jpg',1,2,'2015-12-08 07:34:04','2015-12-08 07:34:04','2016-01-29 02:42:12','635520681477'),(2,'15824121675','6e518c33699ee724e45a02456e1f3666bdceb5cd','jackchoon','jackchoon@163.com','15824121675','http://admin.ttjinhuo.com/upload/avatar副本.jpg',1,3,'2015-12-08 07:34:22','2015-12-08 07:34:22','2016-01-29 02:42:44','59605678287'),(10,'darral','','darral','darral@123','18756889980','http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=avatar',1,2,'2016-01-11 10:18:56','2016-01-11 10:18:56','2016-01-11 10:18:56','');
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

-- Dump completed on 2016-02-02 16:00:27
