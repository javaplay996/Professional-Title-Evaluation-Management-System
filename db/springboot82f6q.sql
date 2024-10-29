-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot82f6q
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336122041 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2021-01-11 03:06:39',1,1,'提问1','回复1',1),(72,'2021-01-11 03:06:39',2,2,'提问2','回复2',2),(73,'2021-01-11 03:06:39',3,3,'提问3','回复3',3),(74,'2021-01-11 03:06:39',4,4,'提问4','回复4',4),(75,'2021-01-11 03:06:39',5,5,'提问5','回复5',5),(76,'2021-01-11 03:06:39',6,6,'提问6','回复6',6),(1610336005024,'2021-01-11 03:33:24',1610335888616,NULL,'在不',NULL,0),(1610336122040,'2021-01-11 03:35:21',1610335888616,1,NULL,'在',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot82f6q/upload/1610335010521.jpg'),(2,'picture2','http://localhost:8080/springboot82f6q/upload/1610335057456.jpg'),(3,'picture3','http://localhost:8080/springboot82f6q/upload/1610335836421.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusspingshentiaojian`
--

DROP TABLE IF EXISTS `discusspingshentiaojian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusspingshentiaojian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610335921581 DEFAULT CHARSET=utf8 COMMENT='评审条件评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusspingshentiaojian`
--

LOCK TABLES `discusspingshentiaojian` WRITE;
/*!40000 ALTER TABLE `discusspingshentiaojian` DISABLE KEYS */;
INSERT INTO `discusspingshentiaojian` VALUES (111,'2021-01-11 03:06:39',1,1,'评论内容1','回复内容1'),(112,'2021-01-11 03:06:39',2,2,'评论内容2','回复内容2'),(113,'2021-01-11 03:06:39',3,3,'评论内容3','回复内容3'),(114,'2021-01-11 03:06:39',4,4,'评论内容4','回复内容4'),(115,'2021-01-11 03:06:39',5,5,'评论内容5','回复内容5'),(116,'2021-01-11 03:06:39',6,6,'评论内容6','回复内容6'),(1610335096779,'2021-01-11 03:18:16',1610334885184,1610335077370,'规划法规和规划局已经 ',NULL),(1610335445622,'2021-01-11 03:24:04',1610335325275,1610335412160,'trytuyiuyo',NULL),(1610335921580,'2021-01-11 03:32:01',1610335822615,1610335888616,'efdfyghjh',NULL);
/*!40000 ALTER TABLE `discusspingshentiaojian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610335981399 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2021-01-11 03:06:39','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-01-11 03:06:39','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-01-11 03:06:39','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-01-11 03:06:39','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-01-11 03:06:39','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-01-11 03:06:39','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1610335493185,'2021-01-11 03:24:52','ugjyuiuop','<p>gyuijyuiuopoii</p>\n<p><img src=\"../../..//upload/1610335489878.jpg\" alt=\"\" width=\"500\" height=\"333\" /></p>',0,1610335412160,'3','开放'),(1610335972486,'2021-01-11 03:32:51','ytruyt7iuyoui','<p>任天堂一日游玉</p>\n<p><img src=\"../../..//upload/1610335968595.jpg\" alt=\"\" width=\"500\" height=\"332\" /></p>',0,1610335888616,'1','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jieguogongbu`
--

DROP TABLE IF EXISTS `jieguogongbu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jieguogongbu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `gongzuodanwei` varchar(200) DEFAULT NULL COMMENT '工作单位',
  `pingshenzhuanye` varchar(200) DEFAULT NULL COMMENT '评审专业',
  `zhichengjibie` varchar(200) DEFAULT NULL COMMENT '职称级别',
  `pingshenjieguo` varchar(200) DEFAULT NULL COMMENT '评审结果',
  `pingshenriqi` date DEFAULT NULL COMMENT '评审日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `pingshenyuanxingming` varchar(200) DEFAULT NULL COMMENT '评审员姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336041190 DEFAULT CHARSET=utf8 COMMENT='结果公布';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jieguogongbu`
--

LOCK TABLES `jieguogongbu` WRITE;
/*!40000 ALTER TABLE `jieguogongbu` DISABLE KEYS */;
INSERT INTO `jieguogongbu` VALUES (61,'2021-01-11 03:06:39','用户名1','用户姓名1','工作单位1','评审专业1','职称级别1','通过','2021-01-11','工号1','评审员姓名1'),(62,'2021-01-11 03:06:39','用户名2','用户姓名2','工作单位2','评审专业2','职称级别2','通过','2021-01-11','工号2','评审员姓名2'),(63,'2021-01-11 03:06:39','用户名3','用户姓名3','工作单位3','评审专业3','职称级别3','通过','2021-01-11','工号3','评审员姓名3'),(64,'2021-01-11 03:06:39','用户名4','用户姓名4','工作单位4','评审专业4','职称级别4','通过','2021-01-11','工号4','评审员姓名4'),(65,'2021-01-11 03:06:39','用户名5','用户姓名5','工作单位5','评审专业5','职称级别5','通过','2021-01-11','工号5','评审员姓名5'),(66,'2021-01-11 03:06:39','用户名6','用户姓名6','工作单位6','评审专业6','职称级别6','通过','2021-01-11','工号6','评审员姓名6'),(1610336041189,'2021-01-11 03:34:00','1','陈陈','gfhutyui87','建筑类','中级工程师','通过','2021-01-29','1','张一');
/*!40000 ALTER TABLE `jieguogongbu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610335860773 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-01-11 03:06:39','标题1','http://localhost:8080/springboot82f6q/upload/1610334688122.jpg','<p>内容1</p>'),(102,'2021-01-11 03:06:39','标题2','http://localhost:8080/springboot82f6q/upload/1610334698358.jpg','<p>内容2</p>'),(103,'2021-01-11 03:06:39','标题3','http://localhost:8080/springboot82f6q/upload/1610334716656.jpg','<p>内容3</p>'),(104,'2021-01-11 03:06:39','标题4','http://localhost:8080/springboot82f6q/upload/1610335682578.jpg','<p>内容4</p>'),(105,'2021-01-11 03:06:39','标题5','http://localhost:8080/springboot82f6q/upload/1610335635131.jpg','<p>内容5</p>'),(106,'2021-01-11 03:06:39','标题6','http://localhost:8080/springboot82f6q/upload/1610335660734.jpg','<p>内容6</p>'),(1610335860772,'2021-01-11 03:31:00','评审通知','http://localhost:8080/springboot82f6q/upload/1610335853211.png','<p>ffdgyrtjhkj</p><p><img src=\"http://localhost:8080/springboot82f6q/upload/1610335859862.png\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingshentiaojian`
--

DROP TABLE IF EXISTS `pingshentiaojian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingshentiaojian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shengfen` varchar(200) NOT NULL COMMENT '省份',
  `pingshenzhuanye` varchar(200) NOT NULL COMMENT '评审专业',
  `zhichengjibie` varchar(200) NOT NULL COMMENT '职称级别',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `pingshenshijian` varchar(200) DEFAULT NULL COMMENT '评审时间',
  `pingshentiaojian` longtext COMMENT '评审条件',
  `ziliaoqingdan` varchar(200) DEFAULT NULL COMMENT '资料清单',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610335822616 DEFAULT CHARSET=utf8 COMMENT='评审条件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingshentiaojian`
--

LOCK TABLES `pingshentiaojian` WRITE;
/*!40000 ALTER TABLE `pingshentiaojian` DISABLE KEYS */;
INSERT INTO `pingshentiaojian` VALUES (41,'2021-01-11 03:06:39','省份1','建筑类','职称级别1','http://localhost:8080/springboot82f6q/upload/1610334794101.jpg','评审时间1','<p>评审条件1</p>','','注意事项1','2021-01-09','2021-01-11 03:13:00',3),(42,'2021-01-11 03:06:39','省份2','建筑类','职称级别2','http://localhost:8080/springboot82f6q/upload/1610334571272.jpg','评审时间2','<p>评审条件2</p>','','注意事项2','2021-01-10','2021-01-11 03:09:21',3),(43,'2021-01-11 03:06:39','省份3','建筑类','职称级别3','http://localhost:8080/springboot82f6q/upload/1610334587097.jpg','评审时间3','<p>评审条件3</p>','','注意事项3','2021-01-10','2021-01-11 03:09:36',4),(44,'2021-01-11 03:06:39','省份4','建筑类','职称级别4','http://localhost:8080/springboot82f6q/upload/1610334628622.jpg','评审时间4','<p>评审条件4</p>','','注意事项4','2021-01-09','2021-01-11 03:10:13',6),(45,'2021-01-11 03:06:39','省份5','建筑类','职称级别5','http://localhost:8080/springboot82f6q/upload/1610334642626.jpg','评审时间5','<p>评审条件5</p>','','注意事项5','2021-01-10','2021-01-11 03:10:34',6),(46,'2021-01-11 03:06:39','省份6','建筑类','职称级别6','http://localhost:8080/springboot82f6q/upload/1610334658948.jpg','评审时间6','<p>评审条件6</p>','','注意事项6','2021-01-10','2021-01-11 03:10:47',7),(1610335822615,'2021-01-11 03:30:21','广东省','建筑类','中级工程师','http://localhost:8080/springboot82f6q/upload/1610335791517.jpg','2021年4月','<p>符合条件之一</p><p>1）dstgrfthgy</p><p>2）dfsgdftujhg</p><p>3）第三方提供发动机和国际化</p>','http://localhost:8080/springboot82f6q/upload/1610335800787.doc','estgrthtyujuy','2021-01-10','2021-01-11 03:32:26',3);
/*!40000 ALTER TABLE `pingshentiaojian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingshenyuan`
--

DROP TABLE IF EXISTS `pingshenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingshenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `pingshenyuanxingming` varchar(200) DEFAULT NULL COMMENT '评审员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610335749653 DEFAULT CHARSET=utf8 COMMENT='评审员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingshenyuan`
--

LOCK TABLES `pingshenyuan` WRITE;
/*!40000 ALTER TABLE `pingshenyuan` DISABLE KEYS */;
INSERT INTO `pingshenyuan` VALUES (21,'2021-01-11 03:06:39','评审员1','123456','评审员姓名1','男','http://localhost:8080/springboot82f6q/upload/pingshenyuan_zhaopian1.jpg','13823888881','440300199101010001'),(22,'2021-01-11 03:06:39','评审员2','123456','评审员姓名2','男','http://localhost:8080/springboot82f6q/upload/pingshenyuan_zhaopian2.jpg','13823888882','440300199202020002'),(23,'2021-01-11 03:06:39','评审员3','123456','评审员姓名3','男','http://localhost:8080/springboot82f6q/upload/pingshenyuan_zhaopian3.jpg','13823888883','440300199303030003'),(24,'2021-01-11 03:06:39','评审员4','123456','评审员姓名4','男','http://localhost:8080/springboot82f6q/upload/pingshenyuan_zhaopian4.jpg','13823888884','440300199404040004'),(25,'2021-01-11 03:06:39','评审员5','123456','评审员姓名5','男','http://localhost:8080/springboot82f6q/upload/pingshenyuan_zhaopian5.jpg','13823888885','440300199505050005'),(26,'2021-01-11 03:06:39','评审员6','123456','评审员姓名6','男','http://localhost:8080/springboot82f6q/upload/pingshenyuan_zhaopian6.jpg','13823888886','440300199606060006'),(1610335749652,'2021-01-11 03:29:09','1','1','张一','男','http://localhost:8080/springboot82f6q/upload/1610335738780.jpg','12312312345','123456789098765432');
/*!40000 ALTER TABLE `pingshenyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shengfen`
--

DROP TABLE IF EXISTS `shengfen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shengfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shengfen` varchar(200) NOT NULL COMMENT '省份',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shengfen` (`shengfen`)
) ENGINE=InnoDB AUTO_INCREMENT=1610335759830 DEFAULT CHARSET=utf8 COMMENT='省份';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shengfen`
--

LOCK TABLES `shengfen` WRITE;
/*!40000 ALTER TABLE `shengfen` DISABLE KEYS */;
INSERT INTO `shengfen` VALUES (31,'2021-01-11 03:06:39','省份1'),(32,'2021-01-11 03:06:39','省份2'),(33,'2021-01-11 03:06:39','省份3'),(34,'2021-01-11 03:06:39','省份4'),(35,'2021-01-11 03:06:39','省份5'),(36,'2021-01-11 03:06:39','省份6'),(1610335288245,'2021-01-11 03:21:27','四川省'),(1610335759829,'2021-01-11 03:29:19','广东省');
/*!40000 ALTER TABLE `shengfen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610335916079 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1610335088322,'2021-01-11 03:18:07',1610335077370,1610334885184,'pingshentiaojian','中级工程师','http://localhost:8080/springboot82f6q/upload/1610334862892.jpg'),(1610335440755,'2021-01-11 03:23:59',1610335412160,1610335325275,'pingshentiaojian','中级工程师','http://localhost:8080/springboot82f6q/upload/1610335306791.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','t670ro3sw81zjhmwl7tusrcwwlayjnxl','2021-01-11 03:08:38','2021-01-10 20:34:47'),(2,1610335077370,'1','yonghu','用户','7w0k6qexk8w4f5valorhw5ol0wn0eqkr','2021-01-11 03:18:02','2021-01-10 20:18:03'),(3,1610335412160,'3','yonghu','用户','pazo3dki1kucyz5s9zxnx2phiarj8pop','2021-01-11 03:23:40','2021-01-10 20:23:41'),(4,1610335888616,'1','yonghu','用户','kva12i4fn7kuslxcs6o5zh7u8956y3ce','2021-01-11 03:31:35','2021-01-10 20:34:25'),(5,1610335749652,'1','pingshenyuan','评审员','sk50zehg5ge9ngiioobyd2e7udqrxobr','2021-01-11 03:33:36','2021-01-10 20:33:37');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-11 03:06:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1610335888617 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-11 03:06:39','用户1','123456','用户姓名1','http://localhost:8080/springboot82f6q/upload/yonghu_touxiang1.jpg','男','13823888881'),(12,'2021-01-11 03:06:39','用户2','123456','用户姓名2','http://localhost:8080/springboot82f6q/upload/yonghu_touxiang2.jpg','男','13823888882'),(13,'2021-01-11 03:06:39','用户3','123456','用户姓名3','http://localhost:8080/springboot82f6q/upload/yonghu_touxiang3.jpg','男','13823888883'),(14,'2021-01-11 03:06:39','用户4','123456','用户姓名4','http://localhost:8080/springboot82f6q/upload/yonghu_touxiang4.jpg','男','13823888884'),(15,'2021-01-11 03:06:39','用户5','123456','用户姓名5','http://localhost:8080/springboot82f6q/upload/yonghu_touxiang5.jpg','男','13823888885'),(16,'2021-01-11 03:06:39','用户6','123456','用户姓名6','http://localhost:8080/springboot82f6q/upload/yonghu_touxiang6.jpg','男','13823888886'),(1610335888616,'2021-01-11 03:31:28','1','1','陈陈','http://localhost:8080/springboot82f6q/upload/1610335902945.jpg','女','12345678909');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhichengshenqing`
--

DROP TABLE IF EXISTS `zhichengshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhichengshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shengfen` varchar(200) DEFAULT NULL COMMENT '省份',
  `pingshenzhuanye` varchar(200) DEFAULT NULL COMMENT '评审专业',
  `zhichengjibie` varchar(200) DEFAULT NULL COMMENT '职称级别',
  `xueli` varchar(200) NOT NULL COMMENT '学历',
  `gongzuonianxian` varchar(200) NOT NULL COMMENT '工作年限',
  `congshixingye` varchar(200) DEFAULT NULL COMMENT '从事行业',
  `gongzuodanwei` varchar(200) DEFAULT NULL COMMENT '工作单位',
  `pingshencailiao` varchar(200) DEFAULT NULL COMMENT '评审材料',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610335944451 DEFAULT CHARSET=utf8 COMMENT='职称申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhichengshenqing`
--

LOCK TABLES `zhichengshenqing` WRITE;
/*!40000 ALTER TABLE `zhichengshenqing` DISABLE KEYS */;
INSERT INTO `zhichengshenqing` VALUES (51,'2021-01-11 03:06:39','省份1','评审专业1','职称级别1','中专及以下','1-3年','从事行业1','工作单位1','','2021-01-11','用户名1','用户姓名1','否',''),(52,'2021-01-11 03:06:39','省份2','评审专业2','职称级别2','中专及以下','1-3年','从事行业2','工作单位2','','2021-01-11','用户名2','用户姓名2','否',''),(53,'2021-01-11 03:06:39','省份3','评审专业3','职称级别3','中专及以下','1-3年','从事行业3','工作单位3','','2021-01-11','用户名3','用户姓名3','否',''),(54,'2021-01-11 03:06:39','省份4','评审专业4','职称级别4','中专及以下','1-3年','从事行业4','工作单位4','','2021-01-11','用户名4','用户姓名4','否',''),(55,'2021-01-11 03:06:39','省份5','评审专业5','职称级别5','中专及以下','1-3年','从事行业5','工作单位5','','2021-01-11','用户名5','用户姓名5','否',''),(56,'2021-01-11 03:06:39','省份6','评审专业6','职称级别6','中专及以下','1-3年','从事行业6','工作单位6','','2021-01-11','用户名6','用户姓名6','否',''),(1610335944450,'2021-01-11 03:32:23','广东省','建筑类','中级工程师','本科','4-6年','retryt7uyiuy','gfhutyui87',NULL,'2021-01-09','1','陈陈','是','夫人夫人太');
/*!40000 ALTER TABLE `zhichengshenqing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-11 12:56:30
