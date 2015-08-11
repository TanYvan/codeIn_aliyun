-- MySQL dump 10.13  Distrib 5.5.37, for linux2.6 (x86_64)
--
-- Host: localhost    Database: zc_extranet
-- ------------------------------------------------------
-- Server version	5.5.37-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agents`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `apply_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_a` int(11) DEFAULT NULL COMMENT '状态：1发布，0未发布',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `post_tel_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '传真',
  `recevice_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `partytype` int(1) DEFAULT NULL COMMENT '当事人类型， 1：申请人 2：被申请人',
  `party_id` int(11) DEFAULT NULL COMMENT '当事人，与tb_party表中id关联',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '代理人名称',
  `status` varchar(4) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '身份',
  `duty` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '职务',
  `postcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '邮编',
  `addr` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '联系地址',
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '公司',
  `email` varchar(40) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'Email',
  `tel` varchar(40) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '联系电话',
  `mobiletel` varchar(40) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '手机',
  `Area` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AcceptSendDate` datetime DEFAULT NULL,
  `AcceptSignDate` datetime DEFAULT NULL,
  `SuitSignDate` datetime DEFAULT NULL,
  `SuitSendDate` datetime DEFAULT NULL,
  `ArbitBookSendDate` datetime DEFAULT NULL,
  `capacity` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '代理人身份',
  `u` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '维护用户',
  `u_t` datetime DEFAULT NULL COMMENT '维护时间',
  `profession` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '行业',
  `subprofession` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '行业子分类',
  `paperwork_type` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '证件类型',
  `paperwork_id` int(11) DEFAULT NULL COMMENT '指向attachment 的id',
  PRIMARY KEY (`id`),
  KEY `tb_agents_recevice_code` (`recevice_code`),
  KEY `tb_agents_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='代理人信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` VALUES (1,'20140829-2',NULL,'Y',' ',NULL,NULL,1,'肖万仁','0001','律师','','深圳市南山区南海大道3688号','广东仁和律师事务所',' ',' ','15994707491',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a179','2014-08-29 15:20:02',NULL,NULL,NULL,NULL);
INSERT INTO `agents` VALUES (2,'20140902-1',NULL,'Y','888','',NULL,3,'张长章','0001','实习律师','11','天津道','大嘴巴律师事务所','123@126.com','777','666',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a182','2014-09-03 10:35:40','','',NULL,NULL);
INSERT INTO `agents` VALUES (3,'20140910-1',NULL,'Y','','',NULL,10,'张福群','0001','','','广东省惠州市惠阳区开城大道北59-11号','广东德邻律师事务所','','','13802474404 ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a184','2014-09-10 04:57:27','9999','',NULL,NULL);
INSERT INTO `agents` VALUES (4,'20140912-1',NULL,'Y','','',NULL,17,'ccc','0001','','','','ddd','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a185','2014-09-12 10:40:59','','',NULL,NULL);
INSERT INTO `agents` VALUES (5,'20141009-1',NULL,'Y','','',NULL,19,'xzdfsafd','0001','','','','qqqq','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a187','2014-10-09 03:32:34','','',NULL,NULL);
INSERT INTO `agents` VALUES (6,'20141024-2',NULL,'Y','','',NULL,21,'张福群','0001','','','广东省惠州市惠阳区开成大道北59-11号','广东德邻律师事务所','197191976@qq.com','','13602421752',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a189','2014-10-24 11:13:25','0013','00130001',NULL,NULL);
INSERT INTO `agents` VALUES (7,'20141024-2',NULL,'Y','','',NULL,21,'张颖','0001','','','广东省惠州市惠阳区开成大道北59-11号','广东德邻律师事务所','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a189','2014-10-24 11:14:05','','',NULL,NULL);
INSERT INTO `agents` VALUES (8,'20141024-3',NULL,'Y','333','',NULL,25,'王大锤','0001','大律师','1231','海淀区','咕咚律师事务所','2@126.com','222','111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a190','2014-10-24 03:01:32','0001','00010001',NULL,NULL);
INSERT INTO `agents` VALUES (9,'20141024-3',NULL,'N','','',NULL,26,'的萨菲打算放','0001','','','','撒的发大水','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a190','2014-10-24 03:38:01','','',NULL,NULL);
INSERT INTO `agents` VALUES (10,'20141028-2',NULL,'Y','','',NULL,28,'王五','0001','','','','北京中大律师事务所','','','13899967890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a192','2014-10-28 10:38:14','','',NULL,NULL);
INSERT INTO `agents` VALUES (11,'20141031-1',NULL,'Y','区委','',NULL,30,'李四','0001',' 未确认 ','哦我热',' 秦莞尔','阿里巴巴','1232345@qq.com',' 确认我',' 额确认',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a193','2014-10-31 11:27:32','0001','00010001',NULL,NULL);
INSERT INTO `agents` VALUES (12,'20141031-1',NULL,'Y','','',NULL,30,'李四','0001','','','','阿发','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a193','2014-10-31 11:40:31','','',NULL,NULL);
INSERT INTO `agents` VALUES (13,'20141105-1',NULL,'Y','','',NULL,33,'刘二','0001','','','','的萨芬','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a196','2014-11-05 03:05:53','','',NULL,NULL);
INSERT INTO `agents` VALUES (14,'20141215-1',NULL,'Y','3213213','',NULL,35,'王代理','0002','部门经理','111','清河','一个单位','1@126.com','1121','123213213123213',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cheshi0001','2014-12-15 04:49:18','','',NULL,NULL);
INSERT INTO `agents` VALUES (15,'20141215-1',NULL,'Y','55555','',NULL,36,'张代理','0003','实习生','111111','11','第二单位1','11@126.com','11111','123311113213211',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cheshi0001','2014-12-15 04:51:16','0001','00010001',NULL,NULL);
INSERT INTO `agents` VALUES (16,'20141216-1',NULL,'Y','','',NULL,38,'李四','0001','','','','深圳','123456@qq.com','','13590269880',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2014-12-16 05:23:03','','',NULL,NULL);
INSERT INTO `agents` VALUES (17,'20141217-1',NULL,'Y','','',NULL,40,'屈文静、王海梅','0001','','','深圳市南山区科苑路6号金融基地2栋6B','广东万诺律师事务所','352921847@qq.com','','13760356820',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'amy_wang7','2014-12-17 03:25:49','','',NULL,NULL);
INSERT INTO `agents` VALUES (18,'20141217-2',NULL,'Y','','',NULL,42,'郭威','0001','律师','215000','苏州市吴中区澄湖西路500号鑫悦生活广场2幢1323室','江苏九谷律师事务所','lawyerguowei@163.com','0512-66355799','13862057567',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'todaypresent','2014-12-17 03:59:17','','',NULL,NULL);
INSERT INTO `agents` VALUES (19,'20141226-1',NULL,'Y','','',NULL,44,'孙银果','0001','律师','','深圳市福田区深南大道4011号港中旅大厦9楼','上海市建纬（深圳）律师事务所','911134226@qq.com','','18576792886',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'linxiao','2014-12-26 04:09:45','','',NULL,NULL);
INSERT INTO `agents` VALUES (20,'20150109-1',NULL,'Y','020-8765 3212','',NULL,51,'黄宝浩','0001','律师','510620','广州市黄埔大道路159号富星商贸大厦西塔4A房','广东仁言律师事务所','123456@qq.com','020-28821628','13926470986',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'linxiao','2015-01-09 03:52:40','','',NULL,NULL);
INSERT INTO `agents` VALUES (21,'20150109-1',NULL,'Y','020-8765 3212','',NULL,51,'林栩','0001','','510620','广州市黄埔大道路159号富星商贸大厦西塔4A房','广东仁言律师事务所','123456@qq.com','020-28821628','13760702244',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'linxiao','2015-01-09 03:55:19','','',NULL,NULL);
INSERT INTO `agents` VALUES (22,'20150109-1',NULL,'Y',' ','',NULL,51,'孙正力','0002','资深法务经理','','广州市黄埔大道路159号富星商贸大厦西塔4A房','广东仁言律师事务所','123456@qq.com','571-8378-3700','571-8378-3700',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'linxiao','2015-01-09 03:57:11','','',NULL,NULL);
INSERT INTO `agents` VALUES (23,'20150114-1',NULL,'Y','','',NULL,53,'马成潭','0001','','','','广东广大（深圳）律师事务所','chtmlawyer@163.com','','13510717559',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MCT_791213','2015-01-14 11:08:31','','',NULL,NULL);
INSERT INTO `agents` VALUES (24,'20150115-1',NULL,'Y','','',NULL,54,'陈军、曾颖、王丽丽','0001','','','深圳市福田区新洲十一街139号中央西谷大厦1001','北京市东元（深圳）律师事务所','chenjunlawyer@163.com','','18038055681',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'北京市东元（深圳）律师事务所','2015-01-15 10:06:24','','',NULL,NULL);
INSERT INTO `agents` VALUES (25,'20150127-2',NULL,'Y','','',NULL,57,'灰太狼','0001','','','','深圳某地','156642769@qq.com','','13562665546',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-01-27 11:29:43','','',NULL,NULL);
INSERT INTO `agents` VALUES (26,'20150127-3',NULL,'Y','','',NULL,58,'死到发疯','0001','','','','发爱妃爱妃啊','1566427@qq.com','','115645516515',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-01-27 11:39:37','','',NULL,NULL);
INSERT INTO `agents` VALUES (27,'20150127-4',NULL,'Y','','',NULL,60,'安防啊啊发放','0001','','',' jafk ','发 范德萨','1655632@qq.com','','156246583445',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-01-27 03:25:39','','',NULL,NULL);
INSERT INTO `agents` VALUES (28,'20150128-1',NULL,'Y','','',NULL,61,'陈军、王丽丽、温燕玲','0001','','','深圳市福田区新洲十一街139号中央西谷大厦1001','北京市东元（深圳）律师事务所','305611465@qq.com','','15986789980',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'北京市东元（深圳）律师事务所','2015-01-28 10:19:37','','',NULL,NULL);
INSERT INTO `agents` VALUES (29,'20150130-1',NULL,'Y','82951209','',NULL,64,'陈宏松','0001','律师','518033','深圳市滨河大道5022号联合广场A座2101信箱','广东深天正律师事务所','15986746061@139.com','0755-82910319','15986746061',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ycjn21','2015-01-30 10:25:22','','',NULL,NULL);
INSERT INTO `agents` VALUES (30,'20150130-1',NULL,'Y','82951209','',NULL,64,'李成','0001','律师','518033','深圳市滨河大道5022号联合广场A座2101信箱','广东深天正律师事务所','15986746061@139.com','0755-82910319','15986746061',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ycjn21','2015-01-30 10:27:03','0001','00010001',NULL,NULL);
INSERT INTO `agents` VALUES (31,'20150130-2',NULL,'Y','0755-28973391','',NULL,71,'张金梅','0002','法律催收专员','518000','深圳市福田益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960 ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 11:02:21','','',NULL,NULL);
INSERT INTO `agents` VALUES (32,'20150130-3',NULL,'Y','0755-33912897','',NULL,73,'张金梅','0002','法律催收专员','518000','深圳市福田益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960 ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:34:55','0018','00180001',NULL,NULL);
INSERT INTO `agents` VALUES (33,'20150130-4',NULL,'Y','0755-33912897','',NULL,75,'张金梅','0002','法律催收专员','518000','深圳市福田益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960 ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:34:09','0018','00180001',NULL,NULL);
INSERT INTO `agents` VALUES (34,'20150130-5',NULL,'Y','0755-33912897','',NULL,77,'张金梅','0002','法律催收专员','518000','深圳市福田益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960 ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:33:01','0018','00180001',NULL,NULL);
INSERT INTO `agents` VALUES (35,'20150130-6',NULL,'Y','0755-33912897','',NULL,79,'张金梅','0002','法律催收专员','518000','深圳市福田益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960 ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:31:58','0018','00180001',NULL,NULL);
INSERT INTO `agents` VALUES (36,'20150130-7',NULL,'Y','0755-33912897','',NULL,81,'张金梅','0002','法律催收专员','518000','深圳市福田益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960 ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:30:46','0018','00180001',NULL,NULL);
INSERT INTO `agents` VALUES (37,'20150130-8',NULL,'Y','0755-33912897','',NULL,83,'张金梅','0002','法律催收专员','518000','深圳市福田益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960 ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:26:32','0018','00180001',NULL,NULL);
INSERT INTO `agents` VALUES (38,'20150130-9',NULL,'Y','0755-33912897','',NULL,86,'张金梅','0002','法律催收专员','518000','深圳市福田区益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960  ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:23:35','0018','00180001',NULL,NULL);
INSERT INTO `agents` VALUES (39,'20150130-10',NULL,'Y','0755-33912897','',NULL,88,'张金梅','0002','法律催收专员','510000','深圳市福田区益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960  ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 11:43:06','0018','00180001',NULL,NULL);
INSERT INTO `agents` VALUES (40,'20150130-11',NULL,'Y','0755-33912897','',NULL,90,'张金梅　　  ','0002','法律催收专员    ','510000','深圳市福田区益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960  ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 10:01:39','0018','00180001',NULL,NULL);
INSERT INTO `agents` VALUES (41,'20150130-12',NULL,'Y','0755-33912897','',NULL,92,'张金梅','0002','法律催收专员','518000','深圳市福田区益田路免税商务大厦塔楼10楼','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','Tel: 0755-21515960  ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 10:00:43','0018','00180001',NULL,NULL);
INSERT INTO `agents` VALUES (42,'20150202-1',NULL,'Y','0755-33912897','',NULL,94,'张金梅','0002','法律催收专员','510000','深圳市福田区益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960  ext.3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 11:52:47','','',NULL,NULL);
INSERT INTO `agents` VALUES (43,'20150202-2',NULL,'Y','','',NULL,96,'荣蕃训','0001','','','深圳市福田区益田路江苏大厦A座23层','广东仁人律师事务所','147896817@qq.com','','18666210895',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:20:26','','',NULL,NULL);
INSERT INTO `agents` VALUES (44,'20150202-3',NULL,'Y','','',NULL,97,'王志强、谢容强、卫良维、刘向阳','0001','律师','','深圳市福田区益田路6003号荣超商务中心B座3层','北京市盈科（深圳）律师事务所、江苏汇泉律师事务所','ray615@163.com','','15019450860',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'xierongqiang','2015-02-02 03:36:26','','',NULL,NULL);
INSERT INTO `agents` VALUES (45,'20150202-4',NULL,'Y','','',NULL,100,'荣蕃训','0001','','','深圳市福田区益田路江苏大厦A座23层','广东仁人律师事务所','147896817@qq.com','','18666210895',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:42:48','','',NULL,NULL);
INSERT INTO `agents` VALUES (46,'20150202-5',NULL,'Y','','',NULL,102,'荣蕃训','0001','','','深圳市福田区益田路江苏大厦A座23层','广东仁人律师事务所','147896817@qq.com','','18666210895',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:48:48','','',NULL,NULL);
INSERT INTO `agents` VALUES (47,'20150202-6',NULL,'Y','0755-33912897','',NULL,104,'张金梅','0002','法律催收专员','518000','深圳市福田区益田路免税商务大厦塔楼10楼','深圳捷信一号咨询有限公司','Kimberly.ZHANG@homecredit.cn','0755-21515960 ext 3799','15976876865',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 05:21:26','','',NULL,NULL);
INSERT INTO `agents` VALUES (48,'20150203-1',NULL,'Y','0755-33912897','',NULL,106,'张金梅','0002','法律催收专员','518000','深圳市福田区益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.zhang@homecredit.cn','0755-21515960 ext 3799','15976876865  ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:26:00','0001','00010001',NULL,NULL);
INSERT INTO `agents` VALUES (49,'20150203-2',NULL,'Y','0755-33912897','',NULL,108,'张金梅','0002','法律催收专员','518000','深圳市福田区益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司','Kimberly.zhang@homecredit.cn','0755-21515960 ext 3799','15976876865  ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:21:11','','',NULL,NULL);
INSERT INTO `agents` VALUES (50,'20150203-3',NULL,'Y','0755-33912897','',NULL,110,'张金梅','0002','法律催收专员','518000','深圳市福田区益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司 ','Kimberly.zhang@homecredit.cn','0755-21515960 ext 3799','15976876865  ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:29:39','','',NULL,NULL);
INSERT INTO `agents` VALUES (51,'20150203-4',NULL,'Y','0755-33912897','',NULL,112,'张金梅','0002','法律催收专员','518000','深圳市福田区益田路免税商务大厦塔楼10楼1单元','深圳捷信一号咨询有限公司 ','Kimberly.zhang@homecredit.cn','0755-21515960 ext 3799','15976876865  ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:38:01','','',NULL,NULL);
INSERT INTO `agents` VALUES (52,'20150203-6',NULL,'Y',' ','',NULL,114,'易志刚','0001','律师','   ','深圳市南山区高中一道2号长园公司6栋一层','广东商达律师事务所','123456@qq.com',' ','18665819706',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'yoyosee123','2015-02-03 05:18:39','','',NULL,NULL);
INSERT INTO `agents` VALUES (53,'20150203-6',NULL,'Y','','',NULL,114,'吴正霞','0002','员工',' ','深圳市南山区高新中一道2号长园公司6栋一层','深圳市华成峰实业有限公司','123456@qq.com',' ','18682120715',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'yoyosee123','2015-02-03 05:20:36','','',NULL,NULL);
INSERT INTO `agents` VALUES (54,'20150204-1',NULL,'Y','','',NULL,116,'林霞娟','0002','法律顾问','','','深圳市京基房地产股份有限公司','347819661@qq.com','','13632527853',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-02-04 09:57:24','','',NULL,NULL);
INSERT INTO `agents` VALUES (55,'20150204-2',NULL,'Y','','',NULL,120,'宋思宇、李沛然','0001','','518035','深圳市福田区金田路4028号荣超经贸中心28楼','北京市金杜（深圳）律师事务所','lipeiran@cn.kwm.com','','18675596511',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lipeiran','2015-02-04 10:36:11','9999','00010001',NULL,NULL);
INSERT INTO `agents` VALUES (56,'20150204-4',NULL,'Y','','',NULL,122,'黄晓燕','0002','','','','深圳长城开发科技股份有限公司','727919128@163.com','0755-83032006','13510597067',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'chchkf','2015-02-04 04:25:01','0003','00030014',NULL,NULL);
INSERT INTO `agents` VALUES (57,'20150204-4',NULL,'Y','','',NULL,122,'宁泽群','0002','设备高级主管','','','深圳市开发光磁科技有限公司','zequnning@kaifa.com','','13714991890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'chchkf','2015-02-04 04:22:54','','',NULL,NULL);
INSERT INTO `agents` VALUES (58,'20150205-1',NULL,'Y','','',NULL,125,'陈荻','0001','','','','广东泽康律师事务所','ddclaudia@foxmail.com','','13827761289',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'广东泽康律师事务所','2015-02-05 09:13:59','','',NULL,NULL);
INSERT INTO `agents` VALUES (59,'20150205-1',NULL,'Y','','',NULL,125,'刘知航','0004','','','','广东泽康律师事务所','liuzhihang11@foxmail.com','','18520943993',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'广东泽康律师事务所','2015-02-05 09:14:42','','',NULL,NULL);
INSERT INTO `agents` VALUES (60,'20150206-1',NULL,'Y','','',NULL,127,'王承强','0001','律师',' ','深圳市福田区福华一路深圳市中心商务大厦19楼','广东雅尔德律师事务所','123456@qq.com',' ','13827408478',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'zhaojun','2015-02-06 10:46:26','','',NULL,NULL);
INSERT INTO `agents` VALUES (61,'20150206-1',NULL,'Y','','',NULL,127,'赵君','0003','实习律师',' ','深圳市福田区福华一路深圳市中心商务大厦19楼','广东雅尔德律师事务所','123456@qq.com','  ','15817379493',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'zhaojun','2015-02-06 10:47:16','','',NULL,NULL);
INSERT INTO `agents` VALUES (62,'20150210-1',NULL,'Y','','',NULL,129,'崔卫群','0001','律师','','深圳市罗湖区笋岗东路中民时代广场A座2楼','广东嘉得信（前海）律师事务所','123456@qq.com','','13480989076',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arlin','2015-02-10 11:08:00','','',NULL,NULL);
INSERT INTO `agents` VALUES (63,'20150210-1',NULL,'Y','','',NULL,129,'黄雪林','0001','律师','','深圳市罗湖区笋岗东路中民时代广场A座2楼201','广东嘉得信律师事务所','123456@qq.com','','18620300929',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arlin','2015-02-10 11:08:57','','',NULL,NULL);
INSERT INTO `agents` VALUES (64,'20150210-1',NULL,'Y','','',NULL,129,'王德森 ','0003','律师','','深圳市罗湖区笋岗东路中民时代广场A座2楼','广东嘉得信律师事务所','123456@qq.com','','13923453200',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arlin','2015-02-10 11:09:40','','',NULL,NULL);
INSERT INTO `agents` VALUES (65,'20150210-1',NULL,'Y','','',NULL,129,'宋琳','0003','实习律师','','深圳市罗湖区笋岗东路中民时代广场A座2楼','广东嘉得信律师事务所','123456@qq.com','','18676726687',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arlin','2015-02-10 11:10:11','','',NULL,NULL);
INSERT INTO `agents` VALUES (66,'20150210-2',NULL,'Y','021-62555919','',NULL,133,'王春强','0001','','200041','上海市南京西路555号五五五商厦1003室','上海市合信律师事务所','chun.qiang@aliyun.com','021-62555100','13901932764',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'chunqiang_0404','2015-02-10 12:24:48','','',NULL,NULL);
INSERT INTO `agents` VALUES (67,'20150210-3',NULL,'Y','','',NULL,135,'梁波','0002','','','','东莞丰裕电机有限公司','smiles_leung@126.com','','13825777714',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'smiles','2015-02-10 03:29:13','','',NULL,NULL);
INSERT INTO `agents` VALUES (68,'20150210-4',NULL,'Y','','',NULL,137,'胡劲峰','0001','','','','国浩律师（深圳）事务所','hujinfeng@grandall.com.cn','','13798428081',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:12:58','','',NULL,NULL);
INSERT INTO `agents` VALUES (69,'20150210-4',NULL,'Y','','',NULL,137,'李晓丽','0001','','','','国浩律师（深圳）事务所','lixiaoli@grandall.com.cn','','13510836883',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:14:17','','',NULL,NULL);
INSERT INTO `agents` VALUES (70,'20150210-4',NULL,'Y','','',NULL,137,'李睿智','0003','','','','国浩律师（深圳）事务所','liruizhi@grandall.com.cn','','15989868682',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:15:06','','',NULL,NULL);
INSERT INTO `agents` VALUES (71,'20150210-5',NULL,'Y','','',NULL,140,'胡劲峰','0001','','','','国浩律师（深圳）事务所','hujinfeng@grandall.com.cn','','13798428081',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:57:17','','',NULL,NULL);
INSERT INTO `agents` VALUES (72,'20150210-5',NULL,'Y','','',NULL,140,'李晓丽','0001','','','','国浩律师（深圳）事务所','lixiaoli@grandall.com.cn','','13510836883',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:58:06','','',NULL,NULL);
INSERT INTO `agents` VALUES (73,'20150210-5',NULL,'Y','','',NULL,140,'李睿智','0003','','','','国浩律师（深圳）事务所','liruizhi@grandall.com.cn','','15989868682',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:58:24','','',NULL,NULL);
INSERT INTO `agents` VALUES (74,'20150210-6',NULL,'Y','','',NULL,143,'胡劲峰','0001','','','','国浩律师（深圳）事务所','hujinfeng@grandall.com.cn','','13798428081',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 07:27:44','','',NULL,NULL);
INSERT INTO `agents` VALUES (75,'20150210-6',NULL,'Y','','',NULL,143,'李晓丽','0001','','','','国浩律师（深圳）事务所','lixiaoli@grandall.com.cn','','13510836883',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 07:27:50','','',NULL,NULL);
INSERT INTO `agents` VALUES (76,'20150210-6',NULL,'Y','','',NULL,143,'李睿智','0003','','','','国浩律师（深圳）事务所','liruizhi@grandall.com.cn','','15989868682',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 07:27:56','','',NULL,NULL);
INSERT INTO `agents` VALUES (77,'20150212-1',NULL,'Y','','',NULL,146,'周芳','0001','律师','','广州市林和西路9号耀中广场A座820室','广东金领律师事务所','12345@qq.com','020-38106488','13602825872',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'chowfang','2015-02-12 03:26:17','','',NULL,NULL);
INSERT INTO `agents` VALUES (78,'20150212-1',NULL,'Y','','',NULL,146,'张蓉','0001','律师','','广州市林和西路9号耀中广场A座820室','广东金领律师事务所','12345@qq.com','020-38106488','13924212298',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'chowfang','2015-02-12 03:27:47','','',NULL,NULL);
INSERT INTO `agents` VALUES (79,'20150212-2',NULL,'Y','0755-22163390','',NULL,150,'赵显龙','0001','律师','518026','深圳市福田区金田路4028号荣超经贸中心28楼','北京市金杜（深圳）律师事务所','zhangmo@cn.kwm.com','0755-22167172','18200981504',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'menglijia','2015-02-12 04:23:15','','',NULL,NULL);
INSERT INTO `agents` VALUES (80,'20150212-2',NULL,'Y','0755-22163390','',NULL,150,'林嘉','0001','律师','518026','深圳市福田区金田路4028号荣超经贸中心28楼','北京市金杜（深圳）律师事务所','zhangmo@cn.kwm.com','0755-22167172','18200981504',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'menglijia','2015-02-12 04:24:32','','',NULL,NULL);
INSERT INTO `agents` VALUES (81,'20150212-2',NULL,'Y','0755-22163390','',NULL,150,'张漠','0001','律师','518026','深圳市福田区金田路4028号荣超经贸中心28楼','北京市金杜（深圳）律师事务所','zhangmo@cn.kwm.com','0755-22167172','18200981504',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'menglijia','2015-02-12 04:25:17','','',NULL,NULL);
INSERT INTO `agents` VALUES (82,'20150212-2',NULL,'Y','0755-22163390','',NULL,150,'许乃夫','0001','律师','518026','深圳市福田区金田路4028号荣超经贸中心28楼','北京市金杜（深圳）律师事务所','zhangmo@cn.kwm.com','0755-22167172','18200981504',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'menglijia','2015-02-12 04:26:03','','',NULL,NULL);
INSERT INTO `agents` VALUES (83,'20150212-2',NULL,'Y','0755-22163390','',NULL,150,'蒙丽佳','0001','律师','518026','深圳市福田区金田路4028号荣超经贸中心28楼','北京市金杜（深圳）律师事务所','zhangmo@cn.kwm.com','0755-22167172','18200981504',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'menglijia','2015-02-12 04:26:39','','',NULL,NULL);
INSERT INTO `agents` VALUES (84,'20150213-1',NULL,'Y','','',NULL,155,'黄贵勇','0001','律师','510600','广州市五羊新城寺右北一街二巷3号地02','广东南粤律师事务所','123456@qq.com','87392812','13600092911',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'huangguiyong','2015-02-13 12:15:28','','',NULL,NULL);
INSERT INTO `agents` VALUES (85,'20150213-1',NULL,'Y','','',NULL,155,'覃飞鹏','0001','律师','','广州市五羊新城寺右北一街二巷3号地02','广东南粤律师事务所','123456@qq.com','87392812','13600074911 ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'huangguiyong','2015-02-13 12:16:24','','',NULL,NULL);
INSERT INTO `agents` VALUES (86,'20150214-1',NULL,'Y','','',NULL,158,'胡劲峰','0001','','','','国浩律师（深圳）事务所','hujinfeng@grandall.com.cn','','13798428081',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-14 04:57:29','','',NULL,NULL);
INSERT INTO `agents` VALUES (87,'20150214-1',NULL,'Y','','',NULL,158,'李晓丽','0001','','','','国浩律师（深圳）事务所','lixiaoli@grandall.com.cn','','13510836883',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-14 04:57:38','','',NULL,NULL);
INSERT INTO `agents` VALUES (88,'20150214-1',NULL,'Y','','',NULL,158,'李睿智','0003','','','','国浩律师（深圳）事务所','liruizhi@grandall.com.cn','','15989868682',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-14 04:57:42','','',NULL,NULL);
INSERT INTO `agents` VALUES (89,'20150215-1',NULL,'Y','','',NULL,161,'刘开宇','0001','','','','上海市锦天城律师事务所','liukaiyu@allbrightlaw.com','','13823366220',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 01:55:55','','',NULL,NULL);
INSERT INTO `agents` VALUES (90,'20150215-1',NULL,'Y','','',NULL,161,'胡汉斌','0001','','','','上海市锦天城律师事务所','huhanbin@allbrightlaw.com','','13600429996',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 01:56:33','','',NULL,NULL);
INSERT INTO `agents` VALUES (91,'20150215-1',NULL,'Y','','',NULL,161,'沈萌','0001','','','','上海市锦天城律师事务所','shenmeng@allbrightlaw.com','','15118042339',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 01:57:39','','',NULL,NULL);
INSERT INTO `agents` VALUES (92,'20150215-2',NULL,'Y','','',NULL,165,'刘开宇','0001','','','','上海市锦天城（深圳）律师事务所','liukaiyu@allbrightlaw.com','','13823366220',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:09:54','','',NULL,NULL);
INSERT INTO `agents` VALUES (93,'20150215-2',NULL,'Y','','',NULL,165,'沈萌','0001','','','','上海市锦天城律师事务所','shenmeng@allbrightlaw.com','','15118042339',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:10:03','','',NULL,NULL);
INSERT INTO `agents` VALUES (94,'20150215-2',NULL,'Y','','',NULL,165,'胡汉斌','0001','','','','上海市锦天城律师事务所','huhanbin@allbrightlaw.com','','13600429996',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:10:09','','',NULL,NULL);
INSERT INTO `agents` VALUES (95,'20150304-1',NULL,'N','0769-87941888','',NULL,175,'张雷','0002','','','东莞丰裕电机有限公司','东莞丰裕电机有限公司','fungyu_smile@126.com','','15989921812',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'smiles','2015-03-04 08:04:07','','',NULL,NULL);
INSERT INTO `agents` VALUES (96,'20150304-1',NULL,'Y','','',NULL,175,'梁波','0002','','','东莞丰裕电机有限公司','东莞丰裕电机有限公司','smiles_leung@126.com','','13825777714',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'smiles','2015-03-04 08:04:16','','',NULL,NULL);
INSERT INTO `agents` VALUES (97,'20150305-1',NULL,'Y','','',NULL,177,'胡玉芳','0001','','','深圳市福田区荣超商务中心B座3楼','北京市盈科（深圳）律师事务所','734084149@qq.com','','13828888982',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wxj2520068','2015-03-05 03:22:58','','',NULL,NULL);
INSERT INTO `agents` VALUES (98,'20150305-1',NULL,'Y','','',NULL,177,'王秀娟','0003','','','深圳市福田区荣超商务中心B座3；楼','北京市盈科（深圳）律师事务所','664881632@qq.com','','18718560711',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wxj2520068','2015-03-05 03:22:38','','',NULL,NULL);
INSERT INTO `agents` VALUES (99,'20150311-1',NULL,'Y','','',NULL,181,'林霞娟','0002','','','','深圳市京基房地产股份有限公司','2210360.JJ@163.com','','13632527853',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-03-11 03:13:56','','',NULL,NULL);
INSERT INTO `agents` VALUES (100,'20150313-1',NULL,'Y',' ','',NULL,185,'张勇/许秋霞','0001','律师','518036','广东省深圳市福田区莲花支路1001号公交大厦17楼','北京市大成(深圳)律师事务所','zhangmo@cn.kwm.com','','13923885590',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:06:33','','',NULL,NULL);
INSERT INTO `agents` VALUES (101,'20150313-2',NULL,'Y','','',NULL,187,'张勇/许秋霞','0001','律师','518036','深圳市福田区莲花支路1001号公交大厦17楼','北京市大成(深圳)律师事务所','zhangmo@cn.kwm.com',' ','13923885590',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:36:37','','',NULL,NULL);
INSERT INTO `agents` VALUES (102,'20150318-1',NULL,'Y','','',NULL,194,'赵越','0001','','','','广东君言律师事务所','yuezhao75@163.com','','13570831913',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dexin','2015-03-18 10:44:27','','',NULL,NULL);
INSERT INTO `agents` VALUES (103,'20150318-2',NULL,'Y','','',NULL,196,'查晓斌','0001','','','','北京德恒（深圳）律师事务所','zhaxb@dehenglaw.com','','13602573662',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'黄霁','2015-03-18 05:23:24','','',NULL,NULL);
INSERT INTO `agents` VALUES (104,'20150318-2',NULL,'Y','','',NULL,196,'唐波','0001','','','','北京德恒（深圳）律师事务所','tangbo@dehenglaw.com','','13902963358',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'黄霁','2015-03-18 05:22:04','','',NULL,NULL);
INSERT INTO `agents` VALUES (105,'20150318-2',NULL,'Y','','',NULL,196,'潘广禄','0001','','','','北京德恒（深圳）律师事务所','pangl@dehenglaw.com','','13590206617',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'黄霁','2015-03-18 05:23:34','','',NULL,NULL);
INSERT INTO `agents` VALUES (106,'20150318-2',NULL,'Y','','',NULL,196,'周杰璋','0003','','','','北京德恒（深圳）律师事务所','zhoujz@dehenglaw.com','','18576418838',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'黄霁','2015-03-18 05:24:17','','',NULL,NULL);
INSERT INTO `agents` VALUES (107,'20150318-2',NULL,'Y','','',NULL,196,'黄霁','0004','','','','北京德恒（深圳）律师事务所','huangji@dehenglaw.com','','18928420691',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'黄霁','2015-03-18 05:24:52','','',NULL,NULL);
INSERT INTO `agents` VALUES (108,'20150319-1',NULL,'Y','','',NULL,201,'曹慧珍','0001','律师','','深圳市福田区莲花北村吉莲大厦4栋10C','广东德城律师事务所','chzfzx@163.com','','13760275925',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'chzfzx','2015-03-19 11:08:12','','',NULL,NULL);
INSERT INTO `agents` VALUES (109,'20150319-2',NULL,'Y','','',NULL,204,'彭艳林、钟德权','0002','','','','东莞艾孚莱电子材料有限公司','juefei0905@126.com','','13580861083',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'shengyikeji','2015-03-19 02:26:03','','',NULL,NULL);
INSERT INTO `agents` VALUES (110,'20150319-5',NULL,'Y','','',NULL,206,'h','0001','','','','h','s@2.c','','ccccccccccc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'help','2015-03-19 04:10:39','','',NULL,NULL);
INSERT INTO `agents` VALUES (111,'20150319-5',NULL,'Y','','',NULL,206,'h','0001','','','','h','s@2.c','','ccccccccccc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'help','2015-03-19 04:11:21','','',NULL,NULL);
INSERT INTO `agents` VALUES (112,'20150319-5',NULL,'Y','','',NULL,206,'h','0001','','','','h','s@2.c','','ccccccccccc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'help','2015-03-19 04:11:38','','',NULL,NULL);
INSERT INTO `agents` VALUES (113,'20150319-5',NULL,'Y','','',NULL,206,'h','0001','','','','h','s@2.c','','ccccccccccc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'help','2015-03-19 04:12:26','','',NULL,NULL);
INSERT INTO `agents` VALUES (114,'20150319-5',NULL,'Y','','',NULL,206,'h','0001','','','','h','s@2.c','','ccccccccccc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'help','2015-03-19 04:12:32','','',NULL,NULL);
INSERT INTO `agents` VALUES (115,'20150319-5',NULL,'Y','','',NULL,206,'h','0001','','','','h','s@2.c','','ccccccccccc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'help','2015-03-19 04:12:34','','',NULL,NULL);
INSERT INTO `agents` VALUES (116,'20150319-5',NULL,'Y','','',NULL,206,'h','0001','','','','h','s@2.c','','ccccccccccc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'help','2015-03-19 04:12:36','','',NULL,NULL);
INSERT INTO `agents` VALUES (117,'20150319-5',NULL,'Y','','',NULL,206,'h','0001','','','','h','s@2.c','','ccccccccccc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'help','2015-03-20 10:38:14','','',NULL,NULL);
INSERT INTO `agents` VALUES (118,'20150324-1',NULL,'Y',' ','',NULL,208,'郭延伟','0002','员工','','深圳市福田区泰然工贸园201栋东座二楼','深圳市富森供应链管理有限公司','123@qq.com',' ','13417372194',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vic_gyw','2015-03-24 09:52:53','','',NULL,NULL);
INSERT INTO `agents` VALUES (119,'20150409-1',NULL,'Y','','',NULL,210,'林霞娟','0002','','','','深圳市京基房地产股份有限公司','2210360.JJ@163.com','','13632527853',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-04-09 11:40:16','','',NULL,NULL);
INSERT INTO `agents` VALUES (120,'20150416-1',NULL,'Y','','',NULL,213,'林霞娟','0002','','','','深圳市京基房地产股份有限公司','2210360.JJ@163.com','','13632527853',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-04-16 01:52:18','','',NULL,NULL);
INSERT INTO `agents` VALUES (121,'20150506-1',NULL,'Y','','',NULL,219,'刘锡泰','0001','','','','北京市竞天公诚（深圳）律师事务所','liu.xitai@jingtian.com','','13501572806',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-06 10:15:09','','',NULL,NULL);
INSERT INTO `agents` VALUES (122,'20150506-1',NULL,'Y','','',NULL,219,'林婷兰','0004','','','','北京市竞天公诚（深圳）律师事务所','lin.tinglan@jingtian.com','','13662587385',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-06 10:16:23','','',NULL,NULL);
INSERT INTO `agents` VALUES (123,'20150506-2',NULL,'Y','','',NULL,226,'陈阳','0002','法务',' ','深圳市南山区蛇口工业七路科技大厦辅楼一楼','奥宝电子（深圳）有限公司','123456@qq.com','0755-26021623','18688988830',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'crucychen','2015-05-06 04:46:20','','',NULL,NULL);
INSERT INTO `agents` VALUES (124,'20150513-1',NULL,'Y','','',NULL,228,'刘锡泰','0001','','','','北京市竞天公诚（深圳）律师事务所','liu.xitai@jingtian.com','','13501572806',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-13 10:00:53','','',NULL,NULL);
INSERT INTO `agents` VALUES (125,'20150513-2',NULL,'Y','','',NULL,235,'刘锡泰','0001','','','','北京市竞天公诚（深圳）律师事务所','liu.xitai@jingtian.com','','13501572806',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-13 02:07:53','','',NULL,NULL);
INSERT INTO `agents` VALUES (126,'20150515-1',NULL,'Y','','',NULL,243,'adsf','0001','asdf','','','sdaf','asdf@vgaf.vom','','asdfsdafadf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'linxiao','2015-05-15 09:26:47','','',NULL,NULL);
INSERT INTO `agents` VALUES (127,'20150522-1',NULL,'Y','','',NULL,244,'刘锡泰','0001','','','','北京市竞天公诚（深圳）律师事务所','liu.xitai@jingtian.com','','13501572806',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-22 09:35:34','','',NULL,NULL);
INSERT INTO `agents` VALUES (128,'20150522-1',NULL,'Y','','',NULL,244,'李玉艳','0004','','','','北京市竞天公诚（深圳）律师事务所','li.yuyan@jingtian.com','','13691863739',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-22 09:36:32','','',NULL,NULL);
INSERT INTO `agents` VALUES (129,'20150619-1',NULL,'Y','','',NULL,249,'沈萌','0001','','','','上海市锦天城（深圳）律师事务所','shenmeng@allbrightlaw.com','82818553','15118042339',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lwj','2015-06-19 11:01:09','','',NULL,NULL);
INSERT INTO `agents` VALUES (130,'20150619-1',NULL,'Y','','',NULL,249,'廖文静','0003','','','','上海市锦天城（深圳）律师事务所','liaowenjing@allbrightlaw.com','82816793','13510009816',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lwj','2015-06-19 11:02:22','','',NULL,NULL);
INSERT INTO `agents` VALUES (131,'20150706-1',NULL,'Y','','',NULL,251,'同意','0001','','','','同意','同意@qq.com','','111111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'houlibao','2015-07-06 04:14:54','','',NULL,NULL);
INSERT INTO `agents` VALUES (132,'20150707-1',NULL,'Y','0769-22174183','',NULL,252,'彭艳林、钟德权','0002','法务专员','523039','广东省东莞市万江区莞穗大道411号','广东生益科技股份有限公司','zhongdq@syst.com.cn','','13709600441',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'shengyikeji','2015-07-07 09:34:32','','',NULL,NULL);
INSERT INTO `agents` VALUES (133,'20150708-1',NULL,'Y','','',NULL,254,'1','0003','','','11111111111111111','111111111111','1111111111111@1111111111.com','','11111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-08 04:26:51','','',NULL,NULL);
INSERT INTO `agents` VALUES (134,'20150708-2',NULL,'Y','','',NULL,255,'ddd','0001','ddddddddddd','','ddddddddddddddd','ddddddddddddddd','d@qq.com','','ddddddddddd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsr2','2015-07-08 04:37:28','','',NULL,NULL);
INSERT INTO `agents` VALUES (135,'20150708-3',NULL,'Y','','',NULL,256,'d','0001','','','ddddddddddddddd','d','d@qq.com','','33333333333',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wscao','2015-07-08 05:26:39','','',NULL,NULL);
INSERT INTO `agents` VALUES (136,'20150708-1',NULL,'Y','','',NULL,254,'1','0003','','','11111111111111111','111111111111','1111111111111@1111111111.com','','11111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-08 05:57:21','','',NULL,NULL);
INSERT INTO `agents` VALUES (137,'20150709-2',NULL,'Y','','',NULL,261,'彭艳林、钟德权','0002','','','','广东生益科技股份有限公司','15748264@qq.com','','13709600441',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'zhongqianyi','2015-07-09 02:23:21','','',NULL,NULL);
INSERT INTO `agents` VALUES (138,'20150710-1',NULL,'Y','','',NULL,265,'1','0003','','','11111111111111111','111111111111','1111111111111@1111111111.com','','11111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-13 05:42:19','','',NULL,NULL);
INSERT INTO `agents` VALUES (139,'20150710-1',NULL,'Y','','',NULL,265,'1','0003','','','11111111111111111','111111111111','1111111111111@1111111111.com','','11111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-13 05:42:28','','',NULL,NULL);
INSERT INTO `agents` VALUES (140,'20150710-1',NULL,'Y','','',NULL,265,'1','0003','','','11111111111111111','111111111111','1111111111111@1111111111.com','','11111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-14 05:55:05','','',NULL,NULL);
INSERT INTO `agents` VALUES (141,'20150709-1',NULL,'Y','','',NULL,271,'死到发疯','0001','','','','发爱妃爱妃啊','1566427@qq.com','','115645516515',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-07-14 06:07:57','','',NULL,NULL);
INSERT INTO `agents` VALUES (142,'20150716-1',NULL,'Y','','',NULL,274,'陈阳','0002','法律顾问','','','奥宝电子（深圳）有限公司','crucy.chen@orbotech.com','075526021623','18688988830',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'crucychen','2015-07-17 10:57:43','','',NULL,NULL);
INSERT INTO `agents` VALUES (143,'20150730-1',NULL,'Y','','',NULL,276,'fdfdfd','0001','','','fdfdfdfd','fdfd','fdjflaj@22.com','','dlfjdlgdgdgdg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ruby','2015-07-30 04:17:50','','',NULL,NULL);
INSERT INTO `agents` VALUES (144,'20150803-1',NULL,'Y','','',NULL,278,'李战良','0001','律师','510623','广州市珠江新城华强路3号富力盈力大厦南塔717房','广东联合发展律师事务所','lianhefazhan@21cn.con','38012087','13825068138',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lianhefazhan','2015-08-03 10:42:38','','',NULL,NULL);

--
-- Table structure for table `arbitman`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arbitman` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `status_a` int(11) DEFAULT '0' COMMENT '状态：1已经内网确认，0未确认',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `identity` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '身份，01,02,    01,为仲裁员  02,为调解员',
  `ynbbh` int(11) DEFAULT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仲裁员编号',
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `spell` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名拼音缩写',
  `age` int(11) DEFAULT '0' COMMENT 'nianling',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `name_idcard` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证名称',
  `name_idcard_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '英文姓名(身份证)',
  `first_name_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '英文名',
  `surname_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '英文姓',
  `evername` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '曾用名',
  `area_type` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所在地分类',
  `area_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地区编码',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `fax` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '传真',
  `bank_u` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '财务信息的维护人',
  `bank_t` datetime DEFAULT NULL COMMENT '财务信息的维护时间',
  `telh` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '家庭电话',
  `telo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '单位电话',
  `bp` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '呼机',
  `mobiletel` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机',
  `postcode` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮政编码',
  `addr` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系地址',
  `company` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '单位',
  `busyness` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N' COMMENT '是否有照片，Y:有照片N:没照片',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email',
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态,1：在聘/0：解聘',
  `sex` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别,男、女',
  `nation` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '民族',
  `polityvisage` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '政治面貌',
  `id_card` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `lawyerdate` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职称',
  `lawyernum` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '推荐人',
  `jobwant` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工作意愿',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职务,读取系统基本字典表中条目代码前缀为“ZZ" ”的数据',
  `jobstart` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参加工作时间',
  `doforeign` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '能否涉外,1：能/0：否',
  `standing` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份类型,读取系统基本字典表中条目代码前缀为“SF”的数据',
  `comtype` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '单位类型,读取系统基本字典表中条目代码前缀为“DL”的数据',
  `secjob` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '兼职情况',
  `hightitle` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '有无高职',
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '国籍',
  `country_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '国籍(英文)',
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '居住地',
  `city_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '居住地(英文)',
  `work1` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工作状况,1：在职/0：非在职',
  `zy` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职业分类,1：从事法律研究、教学工作的/2：从事经济贸易等专业工作的/3：曾任审判员的/4：律师/5：从事立法、执法、法',
  `background` mediumtext COLLATE utf8_unicode_ci COMMENT '背景',
  `testdate` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backg_en` mediumtext COLLATE utf8_unicode_ci COMMENT '文英背景',
  `yearbelong` int(4) DEFAULT NULL COMMENT '属所年度',
  `salutation` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '呼称',
  `caseperyearmin` int(4) DEFAULT NULL COMMENT '一年办理最小案件数',
  `caseperyearmax` int(4) DEFAULT NULL COMMENT '大案件数最',
  `setting` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '否接受是开庭通知：1是0否',
  `bankaccount` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '????',
  `bankname` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '????',
  `bank_typ` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0001:本地   0002:外地',
  `bankremark` tinytext COLLATE utf8_unicode_ci COMMENT '财务的备注',
  `outstanding` mediumtext COLLATE utf8_unicode_ci COMMENT '主要工作业绩',
  `fruit` mediumtext COLLATE utf8_unicode_ci COMMENT '发表的学术成果',
  `selfvalue` mediumtext COLLATE utf8_unicode_ci COMMENT '自我评价',
  `parttime` mediumtext COLLATE utf8_unicode_ci,
  `workhistory` mediumtext COLLATE utf8_unicode_ci,
  `advisorycompany` mediumtext COLLATE utf8_unicode_ci COMMENT '两年内担任法律顾问的企业名',
  `remark` mediumtext COLLATE utf8_unicode_ci COMMENT '备注',
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_time` datetime DEFAULT NULL,
  `sittingtime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '开庭时间要求',
  `train` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '培训要求',
  `recommendation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住宿要求',
  `file` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '接收文件特别要求',
  `financestatus` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `isunit` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N' COMMENT '是否本单位仲裁员  Y:是；N:不是',
  `role_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `bank_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `bank_username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '银行账号户名',
  `complete` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N' COMMENT '资料是否齐全,Y N',
  `other_org_handling` text COLLATE utf8_unicode_ci COMMENT '在其它机构办案情况',
  `special` text COLLATE utf8_unicode_ci COMMENT '专长(中文)',
  `special_en` text COLLATE utf8_unicode_ci COMMENT '专长(英文)',
  `paperwork_id` int(11) DEFAULT '0' COMMENT '指向attachment 的id',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`),
  KEY `tb_arbitmen_name` (`name`),
  KEY `tb_arbitmen_spell` (`spell`),
  KEY `tb_arbitmen_name_spell` (`name`,`spell`),
  KEY `tb_arbitmen_code` (`code`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='仲裁员基本信息表（仲裁员申请）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbitman`
--

INSERT INTO `arbitman` VALUES (1,1,'Y',NULL,NULL,'a114','123456',NULL,NULL,'李生','李生','李生',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123456',NULL,'发动机',NULL,NULL,NULL,'123@123.com',NULL,NULL,NULL,NULL,'123456',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `arbitman` VALUES (2,0,'Y','01,02',NULL,'a115','ef209c9343ca8c715265781876657b18',NULL,NULL,'李四','李四','李四','英文名字(身份证)','英文姓氏(身份证',NULL,NULL,NULL,'2014-09-03','传真',NULL,NULL,'家庭电话','单位电话',NULL,'153222','邮政编码','海淀区','单位',NULL,NULL,'hant@yhdiglib.com.cn',NULL,'男','0002','政治面貌','21333','职称','推荐','工作意愿','职务','2014-10-30','0','0002','0003','w','1','国籍(中文)','国籍(英文)','所在地(中文)','所在地(英文)','1','0001',NULL,NULL,NULL,NULL,'称呼',NULL,NULL,NULL,'银行账号','详细开户行名称',NULL,NULL,'主要业务成果','发表的学术成果',NULL,'社会团体兼职情况','工作经历','两年内担任法律顾问','备注',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'户名（必须仲裁员本人账号）',NULL,'在其它机构办案情','专长(中文)','专长(英文',3,NULL);
INSERT INTO `arbitman` VALUES (4,1,'Y','01,02',NULL,'a116','123',NULL,0,'李小四','李小四','李小四','','啊啊啊',NULL,NULL,NULL,NULL,'',NULL,NULL,'','',NULL,'153153','','上地三街','',NULL,'N','hhant@yhdiglib.com.cn',NULL,'男','0001','','21333323','','','','','2014-09-18','1','0001','0001','h','1','','','','','0','0003',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',0,NULL);
INSERT INTO `arbitman` VALUES (5,1,'Y','',NULL,'a117','test11',NULL,0,'test11','test11','test11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'454',NULL,'trwggf',NULL,NULL,'N','trew',NULL,NULL,NULL,NULL,'453',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,NULL);
INSERT INTO `arbitman` VALUES (6,0,'Y','',NULL,'a118','ef209c9343ca8c715265781876657b18',NULL,0,'韩寒','韩寒','韩寒',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'153',NULL,'aaa',NULL,NULL,'N','ha1nt@yhdiglib.com.cn',NULL,NULL,NULL,NULL,'121111',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,NULL);
INSERT INTO `arbitman` VALUES (7,0,'Y','',NULL,'a119','ef209c9343ca8c715265781876657b18',NULL,0,'aaa','aaa','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a',NULL,'a',NULL,NULL,'N','a',NULL,NULL,NULL,NULL,'a',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,NULL);
INSERT INTO `arbitman` VALUES (8,0,'Y','01',NULL,'a120','ef209c9343ca8c715265781876657b18',NULL,0,'ccc','ccc','ccc','','',NULL,NULL,NULL,'2014-10-16','',NULL,NULL,'','',NULL,'c','','c','',NULL,'N','c',NULL,'女','0001','','c','','','','','','1','0001','0001','h','0','','','','','1','0001',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',0,NULL);
INSERT INTO `arbitman` VALUES (9,0,'Y','01',NULL,'a121','ef209c9343ca8c715265781876657b18',NULL,0,'陈明宇','陈明宇','Ming Yu','CHEN mingyu','CHEN',NULL,NULL,NULL,'1989-11-22','',NULL,NULL,'','84219995',NULL,'13602421752','','深圳市福田区彩田路中银大厦','华南国际经济贸易仲裁委员会',NULL,'N','197191976@qq.com',NULL,'男','0001','群众','4401501989112256564','','','','','2012-09-01','1','0001','0005','h','1','中国','china','深圳市福田区彩田路中银大厦19楼','Flood 19, Zhong Yin Building, Cai Tian Road, Futian District, Shen Zhen City ','1','0002',NULL,NULL,NULL,NULL,'MR',NULL,NULL,NULL,'4401501989112256564','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','陈明宇','N','','','',0,NULL);
INSERT INTO `arbitman` VALUES (10,0,'Y','01',NULL,'a122','ef209c9343ca8c715265781876657b18',NULL,0,'陈宇明','陈宇明','陈宇明','Yuming CHEN','Yuming CHEN',NULL,NULL,NULL,'1989-11-22','',NULL,NULL,'','84219995',NULL,'13602421752','','深圳福田区彩田路中银大厦19楼','华南国际经济贸易仲裁委员会',NULL,'N','197191976@qq.com',NULL,'男','0001','群众','440105199011225776','','','','','2014-10-08','1','0005','0001','h','0','中国','china','深圳福田区彩田路中银大厦19楼','Floor 19, Zhong Yin Building , Cai Tian Road, ','1','0001',NULL,NULL,NULL,NULL,'MR',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',0,NULL);
INSERT INTO `arbitman` VALUES (11,0,'Y','01',NULL,'a123','ef209c9343ca8c715265781876657b18',NULL,0,'测试','测试','测试','','',NULL,NULL,NULL,NULL,'',NULL,NULL,'','',NULL,'133','','海淀','',NULL,'N','1@126.com',NULL,'女','0001','','1','','','','','','1','0001','0001','h','0','','','','','1','0001',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',0,NULL);
INSERT INTO `arbitman` VALUES (12,0,'Y','01',NULL,'a124','ef209c9343ca8c715265781876657b18',NULL,0,'lib9102','lib9102','lib9102','','',NULL,NULL,NULL,'1952-03-01','',NULL,NULL,'','',NULL,'13512345678','','北京临汾路12号','',NULL,'N','lib9102@163.com',NULL,'女','0001','','110108195203011233','','','','','1979-11-05','1','0001','0001','h','1','','','','','1','0001',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',28,NULL);
INSERT INTO `arbitman` VALUES (13,1,'Y','',NULL,'a125','scia',NULL,0,'123456789','123456789','123456789','dafa','adfa',NULL,NULL,NULL,'2014-04-07','111111111111111111',NULL,NULL,'afa','af',NULL,'13888888888','fa','dasf afasfasf','adsfaf',NULL,'N','123456@qq.com',NULL,'女','0001','adfa','123456789','adfadfa','af','fadafa','dafads','2014-10-27','1','0001','0001','h','0','afa','adfa','dasfa','dafa','1','0001',NULL,NULL,NULL,NULL,'adfa',NULL,NULL,NULL,'','',NULL,NULL,'fad','dafadf',NULL,'adfd','adf','dfafad','adfad',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','dafa','dfafadf','afa',0,NULL);
INSERT INTO `arbitman` VALUES (14,1,'Y','',NULL,'a126','wang',NULL,0,'平平','平平','平平','','fdasf',NULL,NULL,NULL,NULL,'fd',NULL,NULL,'dasf','dasf',NULL,'12345678910','dasf','fasfa','fdsaf',NULL,'N','wanghaiping@scia.com.cn',NULL,'女','0001','adsf sdaf','362202198601141031','a','daf','df','dfa','2014-11-16','1','0001','0001','h','0','dfas','adsfadsf','dsf','sdfas','1','0001',NULL,NULL,NULL,NULL,'adfs',NULL,NULL,NULL,'123456789123456998','',NULL,NULL,'dasf','df',NULL,'df','daf','df','df',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','daf','d','daf',0,NULL);
INSERT INTO `arbitman` VALUES (15,0,'Y','01,02',NULL,'a127','ef209c9343ca8c715265781876657b18',NULL,0,'sunhong','sunhong','sunhong','','',NULL,NULL,NULL,NULL,'',NULL,NULL,'','',NULL,'123123213213','','111','',NULL,'N','1@126.com',NULL,'女','0001','','1111111111111111111','','','','','','1','0001','0001','h','0','','','','','1','0001',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',0,'2014-12-14 11:59:05');
INSERT INTO `arbitman` VALUES (16,1,'Y','01,02',NULL,'a128','a2222222',NULL,0,'测试仲裁员','测试仲裁员','测试仲裁员','mike','a',NULL,NULL,NULL,'2014-12-16','6233333',NULL,NULL,'60623222','153',NULL,'15311111111','111111','中关村1','单位',NULL,'N','hant@yhdiglib.com.cn',NULL,'男','0002','党员','210111111111111111','职称','推荐人','工作意愿','职务','2014-12-16','0','0003','0001','w','0','国籍(中文)','国籍(英文)','所在地(中文)','所在地(英文)','0','0002',NULL,NULL,NULL,NULL,'称呼',NULL,NULL,NULL,'23123231','中国百姓银行',NULL,NULL,'主要业务成果','发表的学术成果',NULL,'社会团体兼职情况','工作经历','北大','备注',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','测试一下呗','N','在其它机构办案情况','专长(中文','专长(英文',49,'2014-12-16 09:28:17');
INSERT INTO `arbitman` VALUES (17,0,'Y','',NULL,'a129','ef209c9343ca8c715265781876657b18',NULL,0,'13316587378','13316587378','13316587378',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'13316587378',NULL,'ddddddddddddddddddddddddddd',NULL,NULL,'N','qmingq@hotmail.com',NULL,NULL,NULL,NULL,'1324567889098876655544',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,'2015-01-08 04:37:05');
INSERT INTO `arbitman` VALUES (18,0,'Y','',NULL,'a130','ef209c9343ca8c715265781876657b18',NULL,0,'测试MD5','测试MD5','测试MD5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12321321321321',NULL,'请求为单位',NULL,NULL,'N','1@126.com',NULL,NULL,NULL,NULL,'12132132121321321321',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,'2015-02-12 06:25:29');
INSERT INTO `arbitman` VALUES (19,0,'Y','',NULL,'a131','f2f6e7b34ef6080bc67a9e578cbb7d60',NULL,0,'362232197412261254','362232197412261254','362232197412261254',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'13686666666',NULL,'广东省广州市',NULL,NULL,'N','niuzai805@126.com',NULL,NULL,NULL,NULL,'362232197412261254',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,'2015-03-19 10:11:22');
INSERT INTO `arbitman` VALUES (20,0,'Y','01',NULL,'a132','80bf7e348e9ad370b730ea1b7c7e8657',NULL,0,'刘涛','刘涛','刘涛','TAO','LIU',NULL,NULL,NULL,'1971-03-24','020-38988393',NULL,NULL,'','020-85608818',NULL,'18688897876','510620','广东省广州市天河区天河路101号兴业银行大厦14楼','广东君厚律师事务所',NULL,'N','liutaoweiyuan@163.com',NULL,'男','0001','无党派','410503197103243035','一级律师','','','主任','1994-07-01','1','0005','0004','w','0','中国',NULL,'广东省广州市天河区天河路101号兴业银行大厦14楼','','1','0004',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'○独立董事及常年法律顾问业务：1、至今担任广东电力发展股份有限公司独立董事；2、至今担任广东友谊集团股份有限公司独立董事；3、至今担任中国联合网络通信有限公司广东省分公司、广东省国有资产管理委员会、中国邮政储蓄银行广东省分行、中国农业发展银行广东省分行、广东虎门技术咨询有限公司、正佳集团有限公司、广州市白云化工实业有限公司、广州市瀚贤矿产业技术咨询有限公司、广东天泉文化休闲会馆有限公司等多家大中型国有、民营企业常年法律顾问；4、至今担任广东省省委宣传部“广东改革开放30周年成就展览”工程项目、广东省丝绸纺织集团有限公司吸收合并广东省广新外贸轻纺（控股）公司资产重组、中国洛阳浮法玻璃集团有限公司广州国际信托投资公司债务重组信托项目、正佳广场西塔“天河万豪酒店项目”、 正佳东方国际广场开发项目、广东广瀚投资有限公司海南三亚合作开发房地产项目、渔阳房地产开发（深圳）有限公司股权重组等专项法律顾问团队首席律师，率领法律服务团队每年为各公司提供国有资产管理、企业改制重组、产权转让、股权投资、上市融资、基金募集与运作、项目投资开发等专业法律服务工作；○专项法律服务业务：1、担任广东省丝绸纺织集团有限公司发行短期融资券项目专项法律顾问团首席律师，项目金额4亿元人民币；2、担任广东省广新外贸轻纺（控股）公司企业改制重组事宜专项法律顾问团首席律师，项目金额19亿元人民币；3、担任广东省丝丽国际集团股份有限公司与新华信托股份有限公司成都信托融资项目专项法律顾问团首席律师，项目金额2.2亿元人民币；4、担任中国洛阳浮法玻璃集团有限公司广州国际信托投资公司债务重组信托项目专项法律顾问团首席律师，项目金额1.5亿元人民币；5、担任广东广瀚投资有限公司股权并购、合作开发房地产项目专项法律顾问团首席律师，项目金额35亿元人民币；6、担任广州天恒机车工业有限公司企业改制、资产重组项目专项法律顾问团首席律师，项目金额1.2亿元人民币；7、担任渔阳房地产开发（深圳）有限公司并购及转让专项法律顾问团首席律师，项目金额3.1亿元人民币；8、担任设立江苏众鑫创业投资有限公司资本运作项目专项法律顾问团首席律师，项目金额2亿元人民币；9、担任增资入股广东中盈盛达担保投资股份有限公司股权投资项目法律顾问团首席律师，项目金额6000万元人民币；10、担任正佳广场西塔“天河万豪酒店项目”专项法律顾问团首席律师，项目金额40亿元人民币；11、担任东方国际广场开发项目专项法律顾问团首席律师，项目金额30亿元人民币；12、担任广东省丝绸纺织集团海南省保亭县合作开发房地产项目（七仙伴月）专项法律顾问团首席律师，项目金额25亿元人民币；13、担任佛山市顺德区鸿俊房产有限公司与广东省顺德丝绸进出口有限公司顺德容桂地块合作开发房地产项目专项法律顾问团首席律师，项目金额4.2亿元人民币；14、担任广东丝绸纺织集团有限公司伦教开发项目专项法律顾问团首席律师，项目金额3亿元人民币；15、担任广东丝源集团集团有限公司土地开发项目专项法律顾问团首席律师，项目金额2亿元人民币。○诉讼业务：1、代理湛江港集团有限公司与中国银行（香港）有限公司借款合同担保纠纷案；2、代理广州英华房地产实业有限公司与中国工商银行广州市流花支行借款合同纠纷案；3、代理中国邮政储蓄银行广东省分行与广州喜尔宾酒店、广东明大智业公司全球通大厦合同纠纷；4、代理招商银行股份有限公司广州分行清贷业务；5、代理招商银行股份有限公司广州淘金支行与广东蓝海海运有限公司借贷合同纠纷；6、代理广东省农业发展银行与广东省某建筑工程有限公司建筑工程合同纠纷案；7、代理广东省丝绸进出口集团金业物业发展有限公司与海珠区风阳街五凤沙溪第二经济合作社融资合作开发房地产纠纷案；8、代理广东宏信达房地产开发有限公司与广东某船厂有限公司土地融资合作开发纠纷案；9、代理东风丝绸大酒店与广州市辉煌房地产发展有限公司合作融资及35套房产合同纠纷系列案；10、代理海信科龙电器股份有限公司与中山市阜沙镇工业开发有限公司债权债务纠纷案；11、代理中国联合网络通信有限公司广东省分公司与安徽吉云电子有限责任公司联营合同纠纷案；12、代理渔阳房地产开发（深圳）有限公司与深圳市水产公司房产纠纷案；13、代理原告广东省省委宣传部 “广东改革开放30周年成就展览”项目工程纠纷系列案24个；14、代理广东省建筑设计研究院与华润电力（贺州）有限公司设计合同纠纷案；15、代理湛江港（集团）股份有限公司不服广东省人民政府行政复议决定行政诉讼上诉案；15、代理广东仲森建筑实业有限公司与茂名市茂南第五建筑安装工程施工合同纠纷案；16、代理北京优朋普乐科技有限公司诉深圳市迅雷网络技术有限公司知识产权侵权系列案100个；17、代理广东仲森建筑实业有限公司与广东海外高强混凝土有限公司买卖合同纠纷案；18、代理珠海茂升房地产开发公司与广州市嘉信房地产开发有限公司建设工程施工合同纠纷案；19、代理广东美的制冷设备有限公司与珠海格力电器股份有限公司实用新型专利纠纷项目。','1、专著：《民营企业刑法风险及其防范》；2、《浅析票据行为无因性》发表于《广东律师》；3、《我国证券交易中的民事赔偿制度探析》发表于《广东律师》；4、<On the Legal Validity of Defective Capital Contribution Transfer in Limited Liability Companies >(《瑕疵股权转让法律效力的认定》)发表于核心期刊<China Legal Science>（《中国法学》外文版）；5、《公司治理结构的基础理论分析》发表于《广东律师》；6、《论行政公共权 力的限度及其法律规制》发表于核心期刊《国家行政学院学报》；7、《浅谈涉港澳民事诉讼管辖权冲突》在中国国际私法学研究会主办、武汉大学国际法研究所协办的“第二届内地、香港、澳门区际法律问题研讨会”宣读；8、《刑事责任及其构成要素》发表于《广东律师》；9、《论审查起诉听证制度的构建》荣获广东省律师协会论文评选二等奖，广州市律师协会“理论成果二等奖”；10、《私产入宪”的意义、缺憾及补救建议》发表于核心期刊《暨南学报》',NULL,'','1994年-1999年  广东展望律师事务所律师；1999年-2001年  广东大同律师事务所律师；2001年-2003年   广东华之杰律师事务所律师；2003年-2012年   广东法制盛邦律师事务所合伙人、管理委员会委员；2013至今  广东君厚律师事务所主任、管理委员会主任 ','广东省国有资产管理委员会；广东省省委宣传部；中国农业发展银行广东省分行；广州市妇女联合会；中国联合网络通信有限公司广东省分公司；中国邮政储蓄银行股份有限公司广东省分公司','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','　公司；银行金融；国有资产监管；基础设施项目；房地产','',0,'2015-03-31 01:37:00');
INSERT INTO `arbitman` VALUES (21,0,'Y','',NULL,'a133','31a2c94f6a9dcba1516d65935cc21774',NULL,0,'鲁楷','鲁楷','鲁楷',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'13501575971',NULL,'福田区深南大道1006号国际创新中心A座10层广和律师所',NULL,NULL,'N','look91@126.com',NULL,NULL,NULL,NULL,'11010819741124491x',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,'2015-04-11 10:15:56');
INSERT INTO `arbitman` VALUES (22,0,'Y','',NULL,'a134','6269944cdc8601e9296011335949002d',NULL,0,'蔡镇顺','蔡镇顺','蔡镇顺','','',NULL,NULL,NULL,NULL,'',NULL,NULL,'','',NULL,'13826206905','','广州白云大道广东外语外贸大学法学院','',NULL,'N','caizhenshun@126.com',NULL,'女','0001','','110108195602175014','','','','','','1','0001','0001','h','0','',NULL,'','','1','0001',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',0,'2015-05-01 02:54:39');
INSERT INTO `arbitman` VALUES (23,1,'Y','',NULL,'a135','75ae4f84baa00b85d58359c4a383842d',NULL,0,'王海平','王海平','王海平',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'13590269880',NULL,'深圳市彩田路中银大厦B19',NULL,NULL,'N','wanghaiping@scia.com.cn',NULL,NULL,NULL,NULL,'362202198601141030',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,'2015-05-04 02:36:49');
INSERT INTO `arbitman` VALUES (24,0,'Y','01',NULL,'a136','98e6d9b9e97259351ecf98f13ce3d291',NULL,0,'张嘉庆','张嘉庆','jiaqing','jiaqing  zhang ','zhang',NULL,NULL,NULL,'1953-10-04','020-38870222',NULL,NULL,'020-62365669','020-38870111-305',NULL,'13902238671','510290','广州市海珠区南洲路盛世街3号1202房','广东法制盛邦律师事务所',NULL,'N','zh-jiaqing@163.com',NULL,'男','0001','中共党员','440106195310040031','经济师','谢卫民','','','1971-02-06','1','0005','0004','h','0','中国',NULL,'广东省广州市天河区天河路385号太古汇1座第31层','31st Floor Taikoo Hui Tower 1,385 Tianhe Road,Tianhe District,Guangzhou','1','0004',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'601382 1900056385383','中国银行广交会支行',NULL,NULL,'','',NULL,'','','广州环渝能源科技有限公司','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','张嘉庆','N','','知识产权、民（商）事、公司法、合同法','',0,'2015-05-06 03:50:54');
INSERT INTO `arbitman` VALUES (25,0,'Y','01',NULL,'a137','e17eca4224646de5add976634f43ed20',NULL,0,'卢全章','卢全章','卢全章','','',NULL,NULL,NULL,NULL,'',NULL,NULL,'','',NULL,'13902459637','','深圳市民田路中海华庭华景轩2座2C','',NULL,'N','1006103371@qq.com',NULL,'女','0001','','440301195609125514','','','','','','1','0001','0004','h','0','',NULL,'','','1','0004',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',0,'2015-05-07 11:47:59');
INSERT INTO `arbitman` VALUES (26,0,'Y','01',NULL,'a138','2f064f9968315721d98e4a2d67f44f9c',NULL,0,'谢兰军','谢兰军','谢兰军','Lanjun Xie','Lanjun Xie',NULL,NULL,NULL,'1966-03-03','82531555',NULL,NULL,'82531555','82531588',NULL,'13302319433','','深圳市福田区金田路3038号现代国际大厦28层','北京市中银（深圳）律师事务所',NULL,'N','13302319433@189.com',NULL,'男','0001','','620102196603035394','','','','','1989-02-07','1','0001','0001','h','0','中国',NULL,'深圳市福田区金田路3038号现代国际大厦28层','','1','0001',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','自2012年始，任深圳仲裁委第四及现任的第五届仲裁员 在申请人为深圳机场综合开发公司与被申请人为世外桃园（中国）发展有限公司、深圳航空城（东部）实业有限公司的仲裁纠纷案中担任申请人的代理律师 ','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','曾于何时起受聘为华南国仲或其他仲裁机构的仲裁员，以及作为仲裁员或者代理人参加仲裁案件审理的情况或者在仲裁领域科研成果。','建筑合同、股权转让、购销合同、金融证券、并购重组、公司清算','Have extensive experience in real estate contract disputes resolution, equity transfer, business contract disputes resolution, financial securities, restructuring in M&A, company liquidation.',0,'2015-05-07 12:49:12');
INSERT INTO `arbitman` VALUES (27,0,'Y','01',NULL,'a139','5626944bd5a8145506c106161ead1637',NULL,0,'wen xiantao','wen xiantao','wen xiantao','','wen',NULL,NULL,NULL,'1966-04-09','010-65198905',NULL,NULL,'010-67178356','010-65198738',NULL,'13501348644','100731','北京东长安街2号商务部条约法律司','商务部条约法律司',NULL,'N','wxiantao@mofcom.gov.cn',NULL,'男','0001','共产党员','350203196604094034','处长','','','处长','1989-08-01','1','0007','0003','h','0','中国',NULL,'北京东长安街2号','2,dong chang an street,beijing','1','0005',NULL,NULL,NULL,NULL,'温先涛',NULL,NULL,NULL,'4367420011690109846','中国建设银行',NULL,NULL,'公司法 合同法 侵权法','中国投资保护协定范本草案论稿',NULL,'','国际投资协定谈判 外商投资立法 行政诉讼 行政复议','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','温先涛','N','中国国际经济贸易仲裁委员会 北京仲裁委员会','公司法 合同法 侵权法','company law,contract law,tort law',0,'2015-05-08 05:03:39');
INSERT INTO `arbitman` VALUES (28,0,'Y','01',NULL,'a140','0a0f55f5bbf5cfc8fac2965e7257fb66',NULL,0,'李方','李方','','','',NULL,NULL,NULL,NULL,'',NULL,NULL,'','',NULL,'13901036135','','北京市西城区丰盛胡同太平洋保险大厦10层天元律师事务所','',NULL,'N','lifang@tylaw.com.cn',NULL,'男','0001','','110108195403171811','','','','','','1','0001','0004','h','0','',NULL,'','','1','0004',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',0,'2015-05-26 11:20:35');
INSERT INTO `arbitman` VALUES (29,0,'Y','',NULL,'a141','5690dddfa28ae085d23518a035707282',NULL,0,'测试一下','测试一下','测试一下',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15321762034',NULL,'北京',NULL,NULL,'N','hant@yhdiglib.com.cn',NULL,NULL,NULL,NULL,'2101111978223125050',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,'2015-06-04 11:38:34');
INSERT INTO `arbitman` VALUES (30,0,'Y','',NULL,'a142','13b661b16844f2074150af2479df3e68',NULL,0,'dd','dd','dd','','',NULL,NULL,NULL,NULL,'',NULL,NULL,'','',NULL,'12345678901','','q','',NULL,'N','q@aa.com',NULL,'女','0001','','111111111111111111111','','','','','','1','0001','0001','h','0','',NULL,'','','1','0001',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',0,'2015-07-06 05:05:29');
INSERT INTO `arbitman` VALUES (31,0,'Y','',NULL,'a143','0b0dd6ef4a18cef62bd6cadf6dde4120',NULL,0,'zcy1','zcy1','zcy1','','',NULL,NULL,NULL,NULL,'',NULL,NULL,'','',NULL,'1111111111111','','333','',NULL,'N','111111111@qq.com',NULL,'女','0001','','1111111111ddd11111','','','','','','1','0001','0001','h','0','',NULL,'','','1','0001',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',0,'2015-07-07 12:59:13');
INSERT INTO `arbitman` VALUES (32,0,'Y','',NULL,'a144','0b0dd6ef4a18cef62bd6cadf6dde4120',NULL,0,'zcy2','zcy2','zcy2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dddddddddddddd',NULL,'ddk',NULL,NULL,'N','ddddddddd@11.com',NULL,NULL,NULL,NULL,'dddddddddddddddddd',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,'2015-07-07 01:00:50');
INSERT INTO `arbitman` VALUES (33,0,'Y','',NULL,'a145','6ecc622da44f272a52a8557b6ef47f8a',NULL,0,'zcy1','zcy1','zcy1','','',NULL,NULL,NULL,NULL,'',NULL,NULL,'','',NULL,'jfldfjldgjldgd','','dkfjkdjfk','',NULL,'N','de@qq.com',NULL,'女','0001','','fdljfaljglajglfdfdfd','','','','','','1','0001','0001','h','0','',NULL,'','','1','0001',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'','',NULL,NULL,'','',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','','','N','','','',157,'2015-07-08 04:40:46');
INSERT INTO `arbitman` VALUES (34,0,'Y','',NULL,'a146','0b0dd6ef4a18cef62bd6cadf6dde4120',NULL,0,'zcy2','zcy2','zcy2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'333333333333',NULL,'3333333',NULL,NULL,'N','2231141@q.com',NULL,NULL,NULL,NULL,'333333333333333333',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,'2015-07-08 04:54:22');
INSERT INTO `arbitman` VALUES (35,0,'Y','',NULL,'a147','9810db470e85de119e2a67f54e3fc667',NULL,0,' 王海平',' 王海平',' 王海平',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'13590269880',NULL,'中银大厦',NULL,NULL,'N','wanghaiping88263@scia.com.cn',NULL,NULL,NULL,NULL,'362202198601141032',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'h',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','N','','',NULL,'N',NULL,NULL,NULL,0,'2015-07-10 11:35:38');

--
-- Table structure for table `arbitman_att`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arbitman_att` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL COMMENT '状态：1已经内网确认，0未确认',
  `arbitman` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仲裁员编码（外网新增）',
  `att_id` int(11) DEFAULT NULL,
  `u` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '维护用户',
  `u_t` datetime DEFAULT NULL COMMENT '维护时间',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='仲裁员附件表（外网存放的附）InnoDB free: 350208 kB; InnoDB free: 350208 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbitman_att`
--

INSERT INTO `arbitman_att` VALUES (1,0,'a115',3,NULL,NULL,'Y');
INSERT INTO `arbitman_att` VALUES (2,0,'a118',18,'',NULL,'Y');
INSERT INTO `arbitman_att` VALUES (3,0,'a124',28,'',NULL,'Y');
INSERT INTO `arbitman_att` VALUES (4,0,'a125',32,'',NULL,'Y');
INSERT INTO `arbitman_att` VALUES (5,0,'a128',49,'',NULL,'Y');
INSERT INTO `arbitman_att` VALUES (6,0,'a145',157,'',NULL,'Y');
INSERT INTO `arbitman_att` VALUES (7,0,'a145',158,'',NULL,'Y');

--
-- Table structure for table `arbitman_public`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arbitman_public` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仲裁员编号',
  `spell` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名拼音缩写',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名 系统内名称',
  `name_idcard` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名(身份证)',
  `name_idcard_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '姓名(身份证)',
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '国籍(中文)',
  `country_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '国籍(英文)',
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '居住地(中文)',
  `city_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '居住地(英文)',
  `role_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `identity` varchar(30) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '申请的身份',
  `special` mediumtext COLLATE utf8_unicode_ci COMMENT '专长(中文)',
  `special_en` mediumtext COLLATE utf8_unicode_ci COMMENT '专长(英文)',
  PRIMARY KEY (`id`),
  KEY `tb_arbitmen_name` (`name`),
  KEY `tb_arbitmen_spell` (`spell`),
  KEY `tb_arbitmen_name_spell` (`name`,`spell`),
  KEY `tb_arbitmen_code` (`code`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=1700 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='仲裁员基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbitman_public`
--

INSERT INTO `arbitman_public` VALUES (1,'Y','00000013','Aicle','Aicle','Aicle','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (2,'Y','00000014','hj','韩健','韩健','HAN Jian','中国','China','深圳','Shenzhen','0001,0006,','','合同法、投资和贸易法、建设工程法、知识产权','Contract Law, Investment and Trade Law, Construction Engineering Law, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (3,'Y','00000015','flb','傅伦博','傅伦博','FU Lunbo','中国','China','深圳','Shenzhen','0001,0006,','','合同法、房地产法、金融法','Contract Law, Real Estate Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (4,'Y','00000016','llm','李黎鸣','李黎鸣','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (5,'Y','00000017','hch','黄昌鸿','黄昌鸿','HUANG Changhong','中国','China','深圳','Shenzhen','0001,0006,','','建设工程法、合同法','Construction Engineering Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (6,'Y','00000018','zz','张志','张志','ZHANG Zhi','中国','China','深圳','Shenzhen','0001,0006,','','公司法、房地产法、合同法、知识产权法','Corporate Law, Real Estate Law, Contract Law, Intellectual Property Law');
INSERT INTO `arbitman_public` VALUES (7,'Y','00000019','wsl','王素丽','王素丽','WANG Suli','中国','China','深圳','Shenzhen','0001,0006,','','经济法、民法、民事程序规则','Economic Law, Civil Law, Civil Procedure Rules');
INSERT INTO `arbitman_public` VALUES (8,'N','00000020','xsq','徐三桥','徐三桥','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (9,'Y','00000021','xss','谢石松','谢石松','XIE Shisong','中国','China','广州','Guangzhou','0001,0006,','','国际私法、国际经济贸易法、合同法','Private International Law, International Economic and Trade Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (10,'Y','00000022','lwx','刘卫翔','刘卫翔','LIU Weixiang','中国','China','深圳','Shenzhen','0001,0006,','','国际私法、仲裁法、欧盟法','Private International Law, Arbitration Law, European Union Law');
INSERT INTO `arbitman_public` VALUES (11,'Y','00000023','qmq','钱明强','钱明强','QIAN Mingqiang','中国','China','深圳','Shenzhen','0001,0006,','','合同法、公司法、仲裁','Contract Law, Corporate Law, Arbitration');
INSERT INTO `arbitman_public` VALUES (12,'Y','00000024','gs','高树','高树','GAO Shu','中国','China','深圳','Shenzhen','0001,0006,','','房地产法、公司法、金融法、民商法','Real Estate Law, Corporate Law, Financial Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (13,'Y','00000025','lyf','林一飞','林一飞','LIN Yifei','中国','China','深圳','Shenzhen','0001,0006,','','仲裁法、民商法、贸易法、国际法','Arbitration Law, Civil and Commercial Law, Trade Law, International Law');
INSERT INTO `arbitman_public` VALUES (14,'Y','00000026','lj','李俊','李俊','LI Jun','中国','China','深圳','Shenzhen','0001,0006,','','合同法、公司法、经济法、国际贸易法','Contract Law, Corporate Law, Economic Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (15,'Y','00000027','cd','陈涤','陈涤','CHEN Di','中国','China','深圳','Shenzhen','0001,0006,','','经济法、合同法','Economic Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (16,'Y','00000028','xj','徐进','徐进','XU Jin','中国','China','深圳','Shenzhen','0001,0006,','','金融法、经济法','Financial Law, Economic Law');
INSERT INTO `arbitman_public` VALUES (17,'N','00000029','ZLJ','张丽杰','张丽杰','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (18,'Y','00000030','hzj','郝珠江','郝珠江','HAO Zhujiang','中国','China','深圳','Shenzhen','0001,0006,','','公司法、房地产法、商事仲裁、合同法','Corporate Law, Real Estate Law, Commercial Arbitration, Contract Law');
INSERT INTO `arbitman_public` VALUES (19,'Y','00000031','jtg','姜同光','姜同光','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (20,'Y','00000032','hgc','何贵才','何贵才','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (21,'Y','00000033','wqh','王千华','王千华','WANG Qianhua','中国','China','深圳','Shenzhen','0001,0006,','','合同法、海商法、外商投资法、公司法','Contract Law, Maritime Law, Foreign Investment Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (22,'Y','00000034','lc','李邨','李邨','LI Cun','中国','China','深圳','Shenzhen','0001,0006,','','房地产法','Real Estate Law');
INSERT INTO `arbitman_public` VALUES (23,'Y','00000035','lfy','罗蕃郁','罗蕃郁','LUO Fanyu','中国','China','香港','Hong Kong','0001,0006,','','商事合同、外商投资法','Commercial Contract, Foreign Investment Law');
INSERT INTO `arbitman_public` VALUES (24,'Y','00000039','gxw','郭晓文','郭晓文','GUO Xiaowen','中国','China','深圳','Shenzhen','0001,0006,','','公司法、国际商法','Corporate Law, International Business Law');
INSERT INTO `arbitman_public` VALUES (25,'Y','00000040','lxg','黎晓光','黎晓光','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (26,'Y','00000043','cxk','陈锡康','陈锡康','CHEN Xikang','中国','China','东莞','Dongguan','0001,0006,','','公司法、合同法、投资法、建设工程法','Corporate Law, Contract Law, Investment Law, Construction Engineering Law');
INSERT INTO `arbitman_public` VALUES (27,'Y','00000044','wp','王璞','王璞','WANG Pu','中国','China','深圳','Shenzhen','0001,0006,','','经济法、房地产法、合同法','Economic Law, Real Estate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (28,'Y','00000045','hym','黄雁明','黄雁明','HUANG Yanming','中国','China','深圳','Shenzhen','0001,0006,','','国际商事仲裁、国际商法、国际贸易法、国际私法','International Commercial Arbitration, International Business Law, International Trade Law, Private International Law');
INSERT INTO `arbitman_public` VALUES (29,'Y','00000046','zjq','张敬前','张敬前','ZHANG Jingqian','中国','China','深圳','Shenzhen','0001,0006,','','国际投资法、公司法、证券法','International Investment Law, Corporate Law, Securities Law');
INSERT INTO `arbitman_public` VALUES (30,'Y','00000047','hh','黄辉','黄辉','HUANG Hui','中国','China','深圳','Shenzhen','0001,0006,','','房地产法、建设工程法、公司法、融资租赁、合同法','Real Estate Law, Construction Engineering Law, Corporate Law, Financial Leasing, Contract Law');
INSERT INTO `arbitman_public` VALUES (31,'Y','00000048','zcx','周成新','周成新','ZHOU Chengxin','中国','China','深圳','Shenzhen','0001,0006,','','国际投资法、公司法、合同法、房地产法','International Investment Law, Corporate Law, Contract Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (32,'Y','00000049','thz','唐厚志','唐厚志','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (33,'Y','00000050','dlk','董立坤','董立坤','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (34,'Y','00000051','xff','许奋飞','许奋飞','XU Fenfei','中国','China','广州','Guangzhou','0001,0006,','','房地产法、建筑工程法、公司法、合同法、物权法','Real Estate Law, Construction Engineering Law, Corporate Law, Contract Law, Property Law');
INSERT INTO `arbitman_public` VALUES (35,'Y','00000052','cxh','程信和','程信和','CHENG Xinhe','中国','China','广州','Guangzhou','0001,0006,','','合同法、公司法、房地产法、涉外投资贸易法','Contract Law, Corporate Law, Real Estate Law, Foreign Investment and Trade Law');
INSERT INTO `arbitman_public` VALUES (36,'Y','00000053','cbq','崔炳全','崔炳全','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (37,'Y','00000055','zyq','张玉卿','张玉卿','ZHANG Yuqing','中国','China','北京','Beijing','0001,0006,','','国际贸易法、商事合同、WTO法','International Trade Law, Commercial Contract, WTO Law');
INSERT INTO `arbitman_public` VALUES (38,'Y','00000056','yxf','于秀峰','于秀峰','YU Xiufeng','中国','China','深圳','Shenzhen','0001,0006,','','房地产法、建设工程法、公司法','Real Estate Law, Construction Engineering Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (39,'Y','00000057','lsg','刘曙光','刘曙光','LIU Shuguang','中国','China','深圳','Shenzhen','0001,0006,','','合同法、公司法、行政法、房地产法','Contract Law, Corporate Law, Administrative Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (40,'Y','00000058','xlg','许良根','许良根','XU Lianggen','中国','China','深圳','Shenzhen','0001,0006,','','保险法、金融法、国际私法、合同法','Insurance Law, Financial Law, Private International Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (41,'Y','00000059','xsq','徐三桥','徐三桥','XU Sanqiao','中国','China','深圳','Shenzhen','0001,0006,','','合同法、国际贸易法、公司法、国际商事仲裁','Contract Law, International Trade Law, Corporate Law, International Commerical Arbitration');
INSERT INTO `arbitman_public` VALUES (42,'Y','00000060','zsl','周宋良','周宋良','ZHOU Songliang','中国','China','深圳','Shenzhen','0001,0006,','','民商法、银行法、房地产法','Civil and Commercial Law, Banking Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (43,'Y','00000061','zlj','张丽杰','张丽杰','ZHANG Lijie','中国','China','深圳','Shenzhen','0001,0006,','','公司法、房地产法、金融法','Corporate Law, Real Estate Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (44,'Y','00000062','qzj','曲竹君','曲竹君','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (45,'Y','00000063','','江','江','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (46,'Y','00000064','lxl','黎学玲','黎学玲','','','','广州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (47,'Y','00000065','yz','姚壮','姚壮','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (48,'Y','00000066','gsz','郭世栈','郭世栈','GUO Shizhan','中国','China','深圳','Shenzhen','0001,0006,','','知识产权、国际贸易、技术贸易','Intellectual Property, International Trade, Technology Trade');
INSERT INTO `arbitman_public` VALUES (49,'Y','00000067','wjj','万佳基','万佳基','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (50,'Y','00000068','xyh','薛云华','薛云华','XUE Yunhua','中国','China','广州','Guangzhou','0001,0006,','','建设工程法、房地产法、仲裁、并购、资产重组、证券法','Construction Engineering Law, Real Estate Law, Arbitration, M&A, Assets Reorganization, Securities Law');
INSERT INTO `arbitman_public` VALUES (51,'N','00000069','lk','鲁昆','鲁昆','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (52,'Y','00000070','cdy','曹叠云','曹叠云','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (53,'Y','00000071','xj','徐建','徐建','XU Jian','中国','China','深圳','Shenzhen','0001,0006,','','民商法、金融法','Civil and Commercial Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (54,'Y','00000072','wqc','王秋潮','王秋潮','WANG Qiuchao','中国','China','杭州','Hangzhou','0001,0006,','','国际投资法、国际贸易法、公司法、金融证券法','International Investment Law, International Trade Law, Corporate Law, Finance and Securities Law');
INSERT INTO `arbitman_public` VALUES (55,'Y','00000073','lgb','刘广滨','刘广滨','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (56,'Y','00000074','ljh','刘俊海','刘俊海','LIU Junhai','中国','China','北京','Beijing','0001,0006,','','公司法、证券法、合同法','Corporate Law, Securities Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (57,'Y','00000075','wlx','王立宪','王立宪','WANG Lixian','中国','China','香港','Hong Kong','0001,0006,','','民法、冲突法、国际法','Civil Law, Conflict of Laws, International Law');
INSERT INTO `arbitman_public` VALUES (58,'Y','00000076','zyy','曾银燕','曾银燕','ZENG Yinyan','中国','China','深圳','Shenzhen','0001,0006,','','国际商法、合同法、公司法、仲裁','International Commercial Law, Contract Law, Corporate Law, Arbitration');
INSERT INTO `arbitman_public` VALUES (59,'Y','00000077','lk','鲁昆','鲁昆','LU, Kun','中国','China','香港','Hong Kong','0001,0006,','','合同法、国际贸易法、投资法','Contract Law, International Trade Law, Investment Law');
INSERT INTO `arbitman_public` VALUES (60,'Y','00000078','wgg','王贵国','王贵国','WANG, Gui Guo','中国','China','香港','Hong Kong','0001,0006,','','国际经济法','International Economic Law');
INSERT INTO `arbitman_public` VALUES (61,'N','00000079','byq','毕玉谦','毕玉谦','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (62,'Y','00000080','yxp','叶兴平','叶兴平','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (63,'Y','00000081','zzb','张志彪','张志彪','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (64,'Y','00000082','xzm','肖志明','肖志明','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (65,'Y','00000083','xyp','肖永平','肖永平','','','','武汉','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (66,'Y','00000084','xwm','谢卫民','谢卫民','XIE Weimin','中国','China','深圳','Shenzhen','0001,0006,','','商事仲裁、国际经济法、国际私法','Commercial Arbitration, International Economic Law, Private International Law');
INSERT INTO `arbitman_public` VALUES (67,'N','00000085','','黎晓光','黎晓光','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (68,'Y','00000086','hbs','何伯森','何伯森','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (69,'Y','00000087','lh','李海','李海','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (70,'N','00000088','','陆继强','陆继强','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (71,'Y','00000089','ljq','陆继强','陆继强','LU Jiqiang','中国','China','深圳','Shenzhen','0001,0006,','','公司法、合同法、证券法、房地产法','Corporate Law, Contract Law, Securities Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (72,'Y','00000090','ahq','安红旗','安红旗','AN Hongqi','中国','China','北京','Beijing','0001,0006,','','国际贸易和国际经济法、合同法、公司法、投资法','International Trade and International Economic Law,Contract Law, Corporate Law, Investment Law');
INSERT INTO `arbitman_public` VALUES (73,'Y','00000091','ar','安瑞','安瑞','','','','安瑞','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (74,'Y','00000092','blx','白莲湘','白莲湘','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (75,'Y','00000093','bl','白亮','白亮','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (76,'Y','00000094','bms','白明韶','白明韶','BAI Mingshao','中国','China','广州','Guangzhou','0001,0006,','','合同法、公司法','Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (77,'Y','00000095','wcg','王春阁','王春阁','WANG Chunge','中国','China','香港','Hong Kong','0001,0006,','','民商法、金融法、海商法','Civil and Commercial Law, Financial Law, Maritime Law');
INSERT INTO `arbitman_public` VALUES (78,'Y','00000096','bp','白萍','白萍','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (79,'Y','00000097','byc','白延春','白延春','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (80,'Y','00000098','byf','白映福','白映福','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (81,'Y','00000099','bpl','鲍培伦','鲍培伦','BAO Peilun','中国','China','上海','Shanghai','0001,0006,','','合同法、房地产法、公司法','Contract Law, Real Estate Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (82,'Y','00000100','bwq',' 	毕武卿',' 	毕武卿','','','','保定','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (83,'Y','00000101','byq','毕玉谦','毕玉谦','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (84,'Y','00000102','chd','蔡鸿达','蔡鸿达','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (85,'Y','00000103','cmy','蔡敏勇','蔡敏勇','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (86,'Y','00000104','crr','蔡仁荣','蔡仁荣','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (87,'Y','00000105','czs','蔡镇顺','蔡镇顺','CAI Zhenshun','中国','China','广州','Guangzhou','0001,0006,','','合同法、房地产法、国际贸易法、海商法','Contract Law, Real Estate Law, International Trade Law, Maritime Law');
INSERT INTO `arbitman_public` VALUES (88,'Y','00000106','zmy','朱茂元','朱茂元','ZHU Maoyuan','中国','China','北京','Beijing','0001,0006,','','房地产法、建设工程法、公司法','Real Estate Law, Construction Engineering Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (89,'Y','00000107','wlm','王利明','王利明','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (90,'Y','00000108','lpch','李培传','李培传','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (91,'Y','00000109','mjt','马江涛','马江涛','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (92,'Y','00000110','jxw','蒋信伟','蒋信伟','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (93,'Y','00000111','kly','寇立耘','寇立耘','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (94,'Y','00000112','wzz','WONG, Chat Chor Samuel 王则左','WONG, Chat Chor Samuel 王则左','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (95,'Y','00000113','zy','张勇','张勇','ZHANG Yong','中国','China','深圳','Shenzhen','0001,0006,','','国际经济法、破产法、公司法','International Economic Law, Bankruptcy Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (96,'Y','00000114','yjy','姚俊逸','姚俊逸','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (97,'Y','00000115','zjq','张嘉庆','张嘉庆','ZHANG Jiaqing','中国','China','广州','Guangzhou','0001,0006,','','知识产权、公司法、合同法、国际贸易','Intellectual Property, Corporate Law, Contract Law, International Trade');
INSERT INTO `arbitman_public` VALUES (98,'Y','00000116','gf','高菲','高菲','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (99,'Y','00000117','hyy','黄亚英','黄亚英','HUANG Yaying','中国','China','深圳','Shenzhen','0001,0006,','','国际贸易法、中外合资法、金融结算、仲裁法','International Trade Law, Sino-Foreign Joint Venture Law, Financial Settlement, Arbitration Law');
INSERT INTO `arbitman_public` VALUES (100,'Y','00000118','lxc','刘晓春','刘晓春','LIU Xiaochun','中国','China','深圳','Shenzhen','0001,0006,','','公司法、证券法、金融法','Corporate Law, Securities Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (101,'Y','00000119','cgj','曹广晶','曹广晶','','','','宜昌','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (102,'Y','00000120','ch','曹辉','曹辉','','','','南京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (103,'Y','00000121','cj','曹健','曹健','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (104,'Y','00000122','clj','曹丽军','曹丽军','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (105,'Y','00000123','csq','曹诗权','曹诗权','','','','武汉','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (106,'Y','00000124','cxz','曹宪志','曹宪志','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (107,'Y','00000125','cxg','曹欣光','曹欣光','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (108,'Y','00000126','cfr','岑富荣','岑富荣','CEN Furong','中国','China','上海','Shanghai','0001,0006,','','国际经济贸易、合同法','International Economic and Trade, Contract Law');
INSERT INTO `arbitman_public` VALUES (109,'Y','00000127','cpz','车丕照','车丕照','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (110,'Y','00000128','ca','陈安','陈安','','','','厦门','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (111,'Y','00000129','cbw','陈秉五','陈秉五','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (112,'Y','00000130','cb','陈波','陈波','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (113,'Y','00000131','cbs','陈博生','陈博生','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (114,'Y','00000132','cdg','陈大刚','陈大刚','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (115,'Y','00000133','cdl','陈德林','陈德林','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (116,'Y','00000134','cg','陈刚','陈刚','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (117,'Y','00000135','cg','陈钢','陈钢','CHEN Gang','中国','China','深圳','Shenzhen','0001,0006,','','建设工程法、房地产法、合同法、公司法','Construction Engineering Law, Real Estate Law, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (118,'Y','00000136','chr','陈浩然','陈浩然','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (119,'Y','00000137','ch','陈洪','陈洪','','','','重庆','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (120,'Y','00000138','chw','陈洪武','陈洪武','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (121,'Y','00000139','cjy','陈纪元','陈纪元','CHEN Jiyuan','中国','China','北京','Beijing','0001,0006,','','国际融资、基础设施建设、投资和并购、矿业勘探和开采','International Financing, Infrastructure Project Construction, Investment and M&A, Mineral Exploration and Mining');
INSERT INTO `arbitman_public` VALUES (122,'Y','00000140','cj','陈建','陈建','CHEN Jian','中国','China','广州','Guangzhou','0001,0006,','','国际贸易、合同法','International Trade, Contract Law');
INSERT INTO `arbitman_public` VALUES (123,'Y','00000141','cjw','陈建伟','陈建伟','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (124,'Y','00000142','cj','陈珺','陈珺','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (125,'Y','00000143','clf','陈兰芳','陈兰芳','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (126,'Y','00000144','clc','陈里程','陈里程','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (127,'Y','00000145','clj','陈丽洁','陈丽洁','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (128,'Y','00000146','clm','陈鲁明','陈鲁明','CHEN Luming','中国','China','上海','Shanghai','0001,0006,','','公司法、金融法、投资法、工程合同','Corporate Law, Financial Law, Investment Law, Engineering Contract');
INSERT INTO `arbitman_public` VALUES (129,'Y','00000147','cm','陈敏','陈敏','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (130,'Y','00000148','cnw','陈乃蔚','陈乃蔚','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (131,'Y','00000149','cq','陈潜','陈潜','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (132,'Y','00000150','crl','陈仁良','陈仁良','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (133,'Y','00000151','cs','陈胜','陈胜','CHEN Sheng','中国','China','北京','Beijing','0001,0006,','','金融法、投资法、合同法、国际贸易法','Financial Law, Investment Law, Contract Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (134,'Y','00000152','cwl','陈伟利','陈伟利','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (135,'Y','00000153','cw','陈文','陈文','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (136,'Y','00000154','cxm','陈小敏','陈小敏','CHEN, Xiao Min','美国','U.S.A.','美国','U.S.A.','0001,0006,','','国际金融法、银行法、国际投资法、国际贸易法','International Financial Law, Banking Law, International Investment Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (137,'Y','00000155','cx','陈晓','陈晓','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (138,'Y','00000156','cxp','陈晓平','陈晓平','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (139,'Y','00000157','cx','陈旭','陈旭','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (140,'Y','00000158','cz','陈震','陈震','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (141,'Y','00000159','czw','陈正伟','陈正伟','CHEN Zhengwei','中国','China','长春','Changchun','0001,0006,','','民商法、国际经济贸易法、国际投资法、房地产法、建设工程法','Civil and Commercial Law, International Economic and Trade Law, International Investment Law, Real Estate Law, Construction Engineering Law');
INSERT INTO `arbitman_public` VALUES (142,'Y','00000160','czx','陈志兴','陈志兴','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (143,'Y','00000161','czd','陈治东','陈治东','CHEN Zhidong','中国','China','上海','Shanghai','0001,0006,','','国际货物买卖、外商投资法、工程承包、公司法','International Sales of Goods, Foreign Investment Law, Engineering Contracting, Corporate Law');
INSERT INTO `arbitman_public` VALUES (144,'Y','00000162','cg','晨光','晨光','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (145,'Y','00000163','cdj','程德钧','程德钧','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (146,'Y','00000164','cjd','程景东','程景东','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (147,'Y','00000165','cmf','程美芬','程美芬','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (148,'Y','00000166','csj','迟少杰','迟少杰','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (149,'Y','00000167','cjl','崔建玲','崔建玲','CUI Jianling','中国','China','深圳','Shenzhen','0001,0006,','','金融法、合同法','Financial Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (150,'Y','00000168','cjy','崔建远','崔建远','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (151,'Y','00000169','cyq','崔宇清','崔宇清','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (152,'Y','00000170','dgq','戴国强','戴国强','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (153,'Y','00000171','dh','戴红','戴红','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (154,'Y','00000172','dp','戴萍','戴萍','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (155,'Y','00000173','dsq','戴绍泉','戴绍泉','','','','成都','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (156,'Y','00000174','sjb','单建保','单建保','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (157,'Y','00000175','dlx','邓罗兴','邓罗兴','','','','长沙','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (158,'Y','00000176','dnw','邓乃文','邓乃文','','','','厦门','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (159,'Y','00000177','dsc','邓思聪','邓思聪','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (160,'Y','00000178','dz','邓湛','邓湛','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (161,'Y','00000179','dp','丁朋','丁朋','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (162,'Y','00000180','dw','丁伟','丁伟','DING Wei','中国','China','上海','Shanghai','0001,0006,','','国际贸易法、国际投资法、国际私法','International Trade Law, International Investment Law, Private International Law');
INSERT INTO `arbitman_public` VALUES (163,'Y','00000181','dxw','丁晓文','丁晓文','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (164,'Y','00000182','dq','董谦','董谦','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (165,'Y','00000183','dx','董箫','董箫','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (166,'Y','00000184','dyf','董元丰','董元丰','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (167,'Y','00000185','dbz','杜宝忠','杜宝忠','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (168,'Y','00000186','dby','杜彬瑜','杜彬瑜','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (169,'Y','00000187','dgx','杜国兴','杜国兴','DU Guoxing','中国','China','香港','Hong Kong','0001,0006,','','合同法、公司法、合资法','Contract Law, Corporate Law, Joint Venture Law');
INSERT INTO `arbitman_public` VALUES (170,'Y','00000188','dxl','杜新丽','杜新丽','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (171,'Y','00000189','ddh','段东辉','段东辉','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (172,'Y','00000190','fk','樊克','樊克','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (173,'Y','00000191','zhd','周焕东','周焕东','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (174,'Y','00000192','sh','师虹','师虹','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (175,'Y','00000193','feg','范尔刚','范尔刚','','','','呼和浩特','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (176,'Y','00000194','fj','范健','范健','','','','南京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (177,'Y','00000195','fyj','范永进','范永进','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (178,'Y','00000196','fyw','范跃武','范跃武','','','','郑州市','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (179,'Y','00000197','fzf','范在峰','范在峰','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (180,'Y','00000198','fx','方向','方向','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (181,'Y','00000199','fx','方雄','方雄','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (182,'Y','00000200','fj','费佳','费佳','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (183,'Y','00000201','fn','费宁','费宁','FEI Ning','中国','China','北京','Beijing','0001,0006,','','商事仲裁、外商直接投资、并购、房地产法','Commercial Arbitration, Foreign Direct Investment, M&A, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (184,'Y','00000202','fzy','费宗祎','费宗祎','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (185,'Y','00000203','fkf','冯克非','冯克非','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (186,'Y','00000204','fsr','冯树荣','冯树荣','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (187,'Y','00000205','fww','冯文伟','冯文伟','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (188,'Y','00000206','fzx','冯志祥','冯志祥','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (189,'Y','00000207','fy','付洋','付洋','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (190,'Y','00000208','fyl','傅郁林','傅郁林','FU Yulin','中国','China','北京','Beijing','0001,0006,','','证据法、程序法、合同法、海商法','Evidence Law, Procedure Law, Contract Law, Maritime Law');
INSERT INTO `arbitman_public` VALUES (191,'Y','00000209','gzc','甘藏春','甘藏春','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (192,'Y','00000210','gjm','高剑鸣','高剑鸣','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (193,'Y','00000211','gzl','高隼来','高隼来','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (194,'Y','00000212','gxq','高西庆','高西庆','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (195,'Y','00000213','gx','高祥','高祥','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (196,'Y','00000214','gyf','高移风','高移风','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (197,'Y','00000215','gy','高羽','高羽','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (198,'Y','00000216','gzc','高子程','高子程','GAO Zicheng','中国','China','北京','Beijing','0001,0006,','','合同法、房地产法、知识产权、公司法','Contract Law, Real Estate Law, Intellectual Property, Corporate Law');
INSERT INTO `arbitman_public` VALUES (199,'Y','00000217','gzz','高宗泽','高宗泽','GAO Zongze','中国','China','北京','Beijing','0001,0006,','','国际债务/股权重整、破产法、重组和清算、海事海商法','International Debt/Equity Reconstruction, Bankruptcy Law, Restructuring and Liquidation, Maritime Law');
INSERT INTO `arbitman_public` VALUES (200,'Y','00000218','gxj','葛行军','葛行军','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (201,'Y','00000219','gxb','宫晓冰','宫晓冰','GONG Xiaobing','中国','China','香港','Hong Kong','0001,0006,','','合同法、外商投资法','Contract Law, Foreign Investment Law');
INSERT INTO `arbitman_public` VALUES (202,'Y','00000220','gxf','龚晓峰','龚晓峰','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (203,'Y','00000221','gy','谷岩','谷岩','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (204,'Y','00000222','gdl','顾东林','顾东林','GU Donglin','中国','China','深圳','Shenzhen','0001,0006,','','建设工程法、房地产法、合同法','Construction Engineering Law, Real Estate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (205,'Y','00000223','ggy','顾功耘','顾功耘','GU Gongyun','中国','China','上海','Shanghai','0001,0006,','','公司法、合同法','Corporate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (206,'Y','00000224','gxr','顾肖荣','顾肖荣','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (207,'Y','00000225','gxx','顾学湘','顾学湘','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (208,'Y','00000226','gyl','顾耀良','顾耀良','GU Yaoliang','中国','China','上海','Shanghai','0001,0006,','','金融法、公司法、商法、海事法、船舶建造','Financial Law, Corporate Law, Commercial Law, Maritime Law, Boat Construction');
INSERT INTO `arbitman_public` VALUES (209,'Y','00000227','gmj','桂敏杰','桂敏杰','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (210,'Y','00000228','gc','郭策','郭策','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (211,'Y','00000229','gf','郭峰','郭峰','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (212,'Y','00000230','ggr','郭国荣','郭国荣','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (213,'Y','00000231','ghj','郭洪俊','郭洪俊','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (214,'Y','00000232','ghw','郭洪伟','郭洪伟','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (215,'Y','00000233','gjy','郭京毅','郭京毅','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (216,'Y','00000234','gw','郭伟','郭伟','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (217,'Y','00000235','gyj','郭玉军','郭玉军','','','','武汉','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (218,'Y','00000236','hch','韩传华','韩传华','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (219,'Y','00000237','hdy','韩德云','韩德云','','','','重庆市','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (220,'Y','00000238','hks','韩津生','韩津生','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (221,'Y','00000239','hl','韩良','韩良','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (222,'Y','00000240','hf','何斐','何斐','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (223,'Y','00000241','hw','何薇','何薇','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (224,'Y','00000242','hby','贺宝银','贺宝银','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (225,'Y','00000243','hp','贺培','贺培','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (226,'Y','00000244','hsz','侯绍泽','侯绍泽','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (227,'Y','00000245','hh','胡海','胡海','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (228,'Y','00000246','hjh','胡建华','胡建华','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (229,'Y','00000247','hjm','胡建淼','胡建淼','','','','杭州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (230,'Y','00000248','hjn','胡建农','胡建农','HU Jiannong','中国','China','深圳','Shenzhen','0001,0006,','','合同法、房地产法、侵权法','Contract Law, Real Estate Law, Tort Law');
INSERT INTO `arbitman_public` VALUES (231,'Y','00000249','hq','胡群','胡群','','','','长沙','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (232,'Y','00000250','hwr','胡宛如','胡宛如','HU Wanru','中国','China','北京','Beijing','0001,0006,','','国际贸易法、合同法、金融法、公司法','International Trade Law, Contract Law, Financial Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (233,'Y','00000251','hb','华兵','华兵','','','','福州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (234,'Y','00000252','hb','黄斌','黄斌','HUANG Bin','中国','China','深圳','Shenzhen','0001,0006,','','金融法、合同法','Financial Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (235,'Y','00000253','hdh','黄丹涵','黄丹涵','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (236,'Y','00000254','hdx','黄敦新','黄敦新','HUANG Dunxin','中国','China','广州','Guangzhou','0001,0006,','','公司法、企业国有资产法','Corporate Law, State-owned Assets Law');
INSERT INTO `arbitman_public` VALUES (237,'Y','00000255','hjn','黄加宁','黄加宁','','','','杭州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (238,'Y','00000256','hj','黄进','黄进','HUANG Jin','中国','China','北京','Beijing','0001,0006,','','国际私法、国际贸易法','Private International Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (239,'Y','00000257','hlx','黄廉熙','黄廉熙','','','','杭州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (240,'Y','00000258','hp','黄萍','黄萍','','','','宁波','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (241,'Y','00000259','hw','黄为','黄为','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (242,'Y','00000260','hw','黄文','黄文','HUANG Wen','中国','China','上海','Shanghai','0001,0006,','','国际贸易法、知识产权、金融法','International Trade Law, Intellectual Property, Financial Law');
INSERT INTO `arbitman_public` VALUES (243,'Y','00000261','hyx','黄仰鑫','黄仰鑫','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (244,'Y','00000262','hyz','黄耀忠','黄耀忠','','','','南京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (245,'Y','00000263','hy','黄毅','黄毅','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (246,'Y','00000264','hy','黄勇','黄勇','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (247,'Y','00000265','hm','惠湄','惠湄','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (248,'Y','00000266','hg','霍刚','霍刚','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (249,'Y','00000267','jm','纪敏','纪敏','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (250,'Y','00000268','jlg','季立刚','季立刚','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (251,'Y','00000269','jgq','江国青','江国青','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (252,'Y','00000270','jp','江平','江平','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (253,'Y','00000271','jx','江宪','江宪','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (254,'Y','00000272','jzh','江子浩','江子浩','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (255,'Y','00000273','jys','姜岩松','姜岩松','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (256,'Y','00000274','jh','蒋弘','蒋弘','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (257,'Y','00000275','jy','蒋迎','蒋迎','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (258,'Y','00000276','jjh','焦津洪','焦津洪','JIAO Jinhong','中国','China','深圳','Shenzhen','0001,0006,','','金融证券法、国际贸易法、合同法、投资法','Financial and Securities Law, International Trade Law, Contract Law, Investment Law');
INSERT INTO `arbitman_public` VALUES (259,'Y','00000277','xcq','解常晴','解常晴','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (260,'Y','00000278','jc','金超','金超','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (261,'Y','00000279','jcq','金春卿','金春卿','','','','苏州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (262,'Y','00000280','jfj','金凤菊','金凤菊','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (263,'Y','00000281','jly','金立宇','金立宇','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (264,'Y','00000282','jsb','金赛波','金赛波','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (265,'Y','00000283','js','金山','金山','','','','乌鲁木齐','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (266,'Y','00000284','jty','金铁英','金铁英','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (267,'Y','00000285','jqj','靳庆军','靳庆军','JIN Qingjun','中国','China','北京','Beijing','0001,0006,','','金融法、证券法、投资法、房地产法、公司法','Financial Law, Securities Law, Investment Law, Real Estate Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (268,'Y','00000286','jyc','敬云川','敬云川','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (269,'Y','00000287','km','康明','康明','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (270,'Y','00000288','ky','康乂','康乂','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (271,'Y','00000289','kls','孔林山','孔林山','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (272,'Y','00000290','kxy','孔晓艳','孔晓艳','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (273,'Y','00000291','kn','奎娜','奎娜','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (274,'Y','00000292','ly','兰影','兰影','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (275,'Y','00000293','lsq','雷胜强','雷胜强','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (276,'Y','00000294','lyj','雷颖君','雷颖君','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (277,'Y','00000295','lhd','冷海东','冷海东','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (278,'Y','00000296','lyj','冷怡佳','冷怡佳','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (279,'Y','00000297','lby','李炳余','李炳余','LI Bingyu','中国','China','广州','Guangzhou','0001,0006,','','民商法、知识产权','Civil and Commercial Law, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (280,'Y','00000298','lch','李朝晖','李朝晖','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (281,'Y','00000299','lcg','李成钢','李成钢','LI Chenggang','中国','China','北京','Beijing','0001,0006,','','国际商法、技术转让、外商投资','International Commercial Law, Technology Transfer,Foreign Investment');
INSERT INTO `arbitman_public` VALUES (282,'Y','00000300','lcx','李从欣','李从欣','LI Congxin','中国','China','深圳','Shenzhen','0001,0006,','','民商法','Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (283,'Y','00000301','ldy','李大元','李大元','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (284,'Y','00000302','ldt','李德田','李德田','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (285,'Y','00000303','lf','李凡','李凡','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (286,'Y','00000304','lf','李方','李方','LI Fang','中国','China','北京','Beijing','0001,0006,','','国际经济法、国际投资法、国际税法、证券法','International Economic Law, International Investment Law, International Tax Law, Securities Law');
INSERT INTO `arbitman_public` VALUES (287,'Y','00000305','lhb','李海波','李海波','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (288,'Y','00000306','lhj','李洪积','李洪积','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (289,'Y','00000307','lh','李虎','李虎','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (290,'Y','00000308','lhn','李华楠','李华楠','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (291,'Y','00000309','ljh','李建华','李建华','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (292,'Y','00000310','lj','李健','李健','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (293,'Y','00000311','ljz','李金泽','李金泽','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (294,'Y','00000312','lj','李娟','李娟','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (295,'Y','00000313','ll','李玲','李玲','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (296,'Y','00000314','lm','李梅','李梅','LI Mei','中国','China','深圳','Shenzhen','0001,0006,','','民商法、房地产法、金融法、合同法','Civil and Commercial Law, Real Estate Law, Financial Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (297,'Y','00000315','lmd','李明德','李明德','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (298,'Y','00000316','lm','李牧','李牧','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (299,'Y','00000317','lpf','李庞芳','李庞芳','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (300,'Y','00000318','lq','李清','李清','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (301,'Y','00000319','lry','李瑞跃','李瑞跃','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (302,'Y','00000320','lsx','李升昕','李升昕','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (303,'Y','00000321','lss','李适时','李适时','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (304,'Y','00000322','lsy','李双元','李双元','','','','长沙','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (305,'Y','00000323','lwr','李旺荣','李旺荣','','','','绍兴','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (306,'Y','00000324','lw','李伟','李伟','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (307,'Y','00000325','lw','李文','李文','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (308,'Y','00000326','lxm','李晓鸣','李晓鸣','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (309,'Y','00000327','lxj','李新军','李新军','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (310,'Y','00000328','lyb','李燕兵','李燕兵','LI Yanbing','中国','China','海口','Haikou','0001,0006,','','公司法、证券法','Corporate Law, Securities Law');
INSERT INTO `arbitman_public` VALUES (311,'Y','00000329','ly','李洋','李洋','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (312,'Y','00000330','lyx','李永祥','李永祥','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (313,'Y','00000331','ly','李勇','李勇','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (314,'Y','00000332','lyq','李玉泉','李玉泉','LI yuquan','中国','China','北京','Beijing','0001,0006,','','保险法、民法、国际私法','Insurance Law, Civil Law, Private International Law');
INSERT INTO `arbitman_public` VALUES (315,'Y','00000333','lyzh','李玉臻','李玉臻','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (316,'Y','00000334','ly','李云','李云','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (317,'N','00000335','lzg','李志刚','李志刚','','','','呼和浩特','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (318,'Y','00000336','lzg','李志刚','李志刚','LI Zhigang','中国','China','上海','Shanghai','0001,0006,','','涉外投资、贸易法、合同法、房地产法','Foreign Investment, Trade Law, Contract Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (319,'Y','00000337','lzq','李志强','李志强','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (320,'Y','00000338','lf','梁飞','梁飞','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (321,'Y','00000339','lh','梁华','梁华','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (322,'Y','00000340','lhx','梁慧星','梁慧星','LIANG Huixing','中国','China','北京','Beijing','0001,0006,','','民法、物权法、法学方法论','Civil Law, Property Law, Legal Methodology');
INSERT INTO `arbitman_public` VALUES (323,'Y','00000341','lyf','廖远飞','廖远飞','LIAO Yuanfei','中国','China','深圳','Shenzhen','0001,0006,','','商标法、合同法、公司法、竞争法、广告法','Trademark Law, Contract Law, Corporate Law, Competition Law, Advertising Law');
INSERT INTO `arbitman_public` VALUES (324,'Y','00000342','lbn','林柏楠','林柏楠','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (325,'Y','00000343','ljw','林建文','林建文','','','','厦门','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (326,'Y','00000344','lwk','林文肯','林文肯','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (327,'Y','00000345','lxl','林小利','林小利','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (328,'Y','00000346','lyp','林燕萍','林燕萍','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (329,'Y','00000347','lc','刘驰','刘驰','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (330,'Y','00000348','lct','刘春田','刘春田','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (331,'Y','00000349','ldl','刘大力','刘大力','LIU Dali','中国','China','上海','Shanghai','0001,0006,','','金融法、银行法、外商投资法、并购','Financial Law, Banking Law, Foreign Investment Law, M&A');
INSERT INTO `arbitman_public` VALUES (332,'Y','00000350','lfm','刘凤鸣','刘凤鸣','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (333,'Y','00000351','lxq','刘新权','刘新权','','','','武汉','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (334,'Y','00000352','lxq','刘兴全','刘兴全','','','','重庆市','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (335,'Y','00000353','lfg','刘福贵','刘福贵','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (336,'Y','00000354','lg','刘歌','刘歌','LIU Ge','中国','China','北京','Beijing','0001,0006,','','投资法、合同法、国际贸易法、娱乐及体育','Investment Law, Contract Law, International Trade Law, Entertainment & Sports');
INSERT INTO `arbitman_public` VALUES (337,'Y','00000355','lhy','刘红宇','刘红宇','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (338,'Y','00000356','lh','刘鸿','刘鸿','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (339,'Y','00000357','lh','刘华','刘华','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (340,'Y','00000358','ljx','刘家兴','刘家兴','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (341,'Y','00000359','ljz','刘建中','刘建中','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (342,'Y','00000360','ljw','刘剑文','刘剑文','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (343,'Y','00000361','lkx','刘凯湘','刘凯湘','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (344,'Y','00000362','ll','刘璐','刘璐','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (345,'Y','00000363','lqf','刘全甫','刘全甫','','','','德阳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (346,'Y','00000364','lj','刘俊','刘俊','','','','重庆市','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (347,'Y','00000365','lsy','刘世元','刘世元','','','','广州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (348,'Y','00000366','lw','刘伟','刘伟','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (349,'Y','00000367','lwz','刘文仲','刘文仲','','','','香港','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (350,'Y','00000368','lw','刘纹','刘纹','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (351,'Y','00000369','lx','刘晰','刘晰','LIU Xi','中国','China','南宁','Nanning','0001,0006,','','房地产法、建设工程法、公司法、合同法','Real Estate Law, Construction Engineering Law, Corporate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (352,'Y','00000370','lxl','刘湘玲','刘湘玲','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (353,'Y','00000371','lxh','刘晓红','刘晓红','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (354,'Y','00000372','lxy','刘晓勇','刘晓勇','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (355,'Y','00000373','lxy','刘新宇','刘新宇','','','','北京/东京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (356,'Y','00000374','ly','刘屹','刘屹','','','','北京市','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (357,'Y','00000375','ly','刘勇','刘勇','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (358,'Y','00000376','lyj','刘虞军','刘虞军','','','','南京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (359,'Y','00000377','lyw','刘郁武','刘郁武','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (360,'Y','00000378','lzm','刘振民','刘振民','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (361,'Y','00000379','lzh','刘子华','刘子华','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (362,'Y','00000380','lt','龙涛','龙涛','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (363,'Y','00000381','lyf','龙翼飞','龙翼飞','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (364,'Y','00000382','lzz','龙宗智','龙宗智','','','','重庆市','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (365,'Y','00000383','lqz','卢全章','卢全章','LU Quanzhang','中国','China','深圳','Shenzhen','0001,0006,','','投资法、合同法、公司法','Investment Law, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (366,'Y','00000384','lrj','卢仁江','卢仁江','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (367,'Y','00000385','ls','卢松','卢松','LU Song','中国','China','北京','Beijing','0001,0006,','','贸易投资、并购、银行证券、建筑工程','Trade and Investment, M&A, Banking and Securities, Construction Engineering');
INSERT INTO `arbitman_public` VALUES (368,'Y','00000386','lpsh','陆普舜','陆普舜','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (369,'Y','00000387','lr','陆韧','陆韧','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (370,'Y','00000388','lws','陆文山','陆文山','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (371,'Y','00000389','lzf','陆泽峰','陆泽峰','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (372,'Y','00000390','lgp','吕国平','吕国平','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (373,'Y','00000391','lhb','吕红兵','吕红兵','LV Hongbing','中国','China','上海','Shanghai','0001,0006,','','公司法、证券法','Corporate Law, Securities Law');
INSERT INTO `arbitman_public` VALUES (374,'Y','00000392','ly','吕煜','吕煜','LV Yu','中国','China','上海','Shanghai','0001,0006,','','合同法、公司法、银行法、投资和证券法','Contract Law, Corporate Law, Banking Law, Investment and Securities Law');
INSERT INTO `arbitman_public` VALUES (375,'Y','00000393','lzh','罗振宏','罗振宏','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (376,'Y','00000394','lzd','罗镇东','罗镇东','LUO, Zhen Dong','美国','U.S.A.','中国深圳','China Shenzhen','0001,0006,','','工业产权法、国际商法','Industry Porperty Right Law, International Commercial Law');
INSERT INTO `arbitman_public` VALUES (377,'Y','00000395','mgl','马根林','马根林','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (378,'Y','00000396','mj','马浩','马浩','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (379,'Y','00000397','mjj','马俊驹','马俊驹','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (380,'Y','00000398','mlb','马龙滨','马龙滨','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (381,'Y','00000399','ms','马赛','马赛','','','','杭州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (382,'Y','00000400','myl','马怿林','马怿林','','','','香港','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (383,'Y','00000401','mzq','马自强','马自强','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (384,'Y','00000402','myq','孟于群','孟于群','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (385,'Y','00000403','mzw','孟昭文','孟昭文','MENG Zhaowen','中国','China','深圳','Shenzhen','0001,0006,','','民法、商法、国际经济法','Civil Law, Commercial Law, International Economic Law');
INSERT INTO `arbitman_public` VALUES (386,'Y','00000404','mzl','穆子砺','穆子砺','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (387,'Y','00000405','ny','聂颖','聂颖','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (388,'Y','00000406','njc','宁金成','宁金成','','','','郑州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (389,'Y','00000407','nbq','牛百谦','牛百谦','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (390,'Y','00000408','nl','牛磊','牛磊','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (391,'Y','00000409','ogy','欧桂英','欧桂英','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (392,'Y','00000410','px','潘熙','潘熙','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (393,'Y','00000411','pwg','彭文革','彭文革','PENG Wenge','中国','China','深圳','Shenzhen','0001,0006,','','证券法、公司法','Securities Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (394,'Y','00000412','pxj','彭学军','彭学军','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (395,'Y','00000413','py','彭瑜','彭瑜','','','','湖北','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (396,'Y','00000414','pl','浦雷','浦雷','','','','乌鲁木齐','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (397,'Y','00000415','qls','漆腊水','漆腊水','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (398,'Y','00000416','qlp','钱丽萍','钱丽萍','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (399,'Y','00000417','qmx','钱明星','钱明星','QIAN Mingxing','中国','China','北京','Beijing','0001,0006,','','民商法','Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (400,'Y','00000418','qrj','钱荣金','钱荣金','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (401,'Y','00000419','qyx','秦玉秀','秦玉秀','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (402,'Y','00000420','qjx','邱进新','邱进新','QIU Jinxin','中国','China','香港','Hong Kong','0001,0006,','','国际贸易法、外商投资法、公司法、合同法','International Trade Law, Foreign Investment Law, Corporate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (403,'Y','00000421','qy','邱野','邱野','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (404,'Y','00000422','qks','曲坤山','曲坤山','','','','青岛','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (405,'Y','00000423','qgq','屈广清','屈广清','','','','福州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (406,'Y','00000424','qmh','屈茂辉','屈茂辉','','','','长沙','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (407,'Y','00000425','rg','任刚','任刚','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (408,'Y','00000426','ry','任勇','任勇','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (409,'Y','00000427','sm','尚明','尚明','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (410,'Y','00000428','zjy','邵敬扬','邵敬扬','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (411,'Y','00000429','sz','邵忠','邵忠','','','','南京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (412,'Y','00000430','sm','申铭','申铭','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (413,'Y','00000431','swh','申卫华','申卫华','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (414,'Y','00000432','sbl','沈白路','沈白路','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (415,'Y','00000433','smt','沈满堂','沈满堂','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (416,'Y','00000434','ssb','沈四宝','沈四宝','SHEN Sibao','中国','China','北京','Beijing','0001,0006,','','三资企业法、国际贸易法、房地产法、国际商法','Foreign-Investment Enterprises Law, International Trade Law, Real Estate Law, International Business Law');
INSERT INTO `arbitman_public` VALUES (417,'Y','00000435','sw','沈伟','沈伟','SHEN Wei','中国','China','上海','Shanghai','0001,0006,','','公司法、国际投资法、私募及兼并业务、金融法','Corporate Law, International Investment Law, Private Equity and M&A, Financial Law');
INSERT INTO `arbitman_public` VALUES (418,'Y','00000436','sxm','石小梅','石小梅','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (419,'Y','00000437','syc','石玉川','石玉川','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (420,'Y','00000438','sw','时伟','时伟','SHI Wei','中国','China','深圳','Shenzhen','0001,0006,','','国际经济法、建设工程合同、运输及物流','International Economic Law, Construction Engineering Contract, Transportation and Logistics');
INSERT INTO `arbitman_public` VALUES (421,'Y','00000439','sjc','史际春','史际春','SHI Jichun','中国','China','北京','Beijing','0001,0006,','','民商法、经济法、金融法、知识产权','Civil and Commercial Law, Economic Law, Financial Law, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (422,'Y','00000440','sjs','史建三','史建三','SHI Jiansan','中国','China','上海','Shanghai','0001,0006,','','国际投资法、合同法、公司法、建设工程法、房地产法','International Investment Law, Contract Law, Corporate Law, Construction Engineering Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (423,'Y','00000441','sxy','史学瀛','史学瀛','','','','天津','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (424,'Y','00000442','sdh','宋迪煌','宋迪煌','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (425,'Y','00000443','sgf','宋国锋','宋国锋','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (426,'Y','00000444','shp','宋和平','宋和平','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (427,'Y','00000445','slb','宋连斌','宋连斌','SONG Lianbin','中国','China','北京','Beijing','0001,0006,','','仲裁法、国际私法、外商投资法、国际贸易法','Arbitration Law, Private International Law, Foreign Investment Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (428,'Y','00000446','stm','宋廷明','宋廷明','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (429,'Y','00000447','syw','宋要武','宋要武','','','','哈尔滨','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (430,'Y','00000448','ss','苏胜','苏胜','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (431,'Y','00000449','szl','苏志良','苏志良','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (432,'Y','00000450','scj','孙昌军','孙昌军','','','','长沙','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (433,'Y','00000451','sfs','孙方曙','孙方曙','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (434,'Y','00000452','shw','孙华伟','孙华伟','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (435,'Y','00000453','slh','孙礼海','孙礼海','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (436,'Y','00000454','sns','孙南申','孙南申','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (437,'Y','00000455','ssa','孙圣爱','孙圣爱','','','','广州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (438,'Y','00000456','swl','孙维林','孙维林','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (439,'Y','00000457','sxm','孙晓民','孙晓民','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (440,'Y','00000458','syg','孙永刚','孙永刚','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (441,'Y','00000459','syh','孙佑海','孙佑海','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (442,'Y','00000460','sy','孙渝','孙渝','','','','重庆市','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (443,'Y','00000461','tb','谭兵','谭兵','','','','海口','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (444,'Y','00000462','tjh','谭敬慧','谭敬慧','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (445,'Y','00000463','tj','汤捷','汤捷','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (446,'Y','00000464','tgy','唐功远','唐功远','TANG Gongyuan','中国','China','北京','Beijing','0001,0006,','','信息技术、知识产权、技术转让、计算机软硬件销售、国际贸易','IT, IPR, Technology Transfer, Sales of Computer Hardware and Software, International Trade');
INSERT INTO `arbitman_public` VALUES (447,'Y','00000465','tgl','唐广良','唐广良','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (448,'Y','00000466','tjl','唐金龙','唐金龙','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (449,'Y','00000467','tmh','唐茂恒','唐茂恒','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (450,'Y','00000468','tmh','唐民皓','唐民皓','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (451,'Y','00000469','tqy','唐青阳','唐青阳','','','','重庆市','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (452,'Y','00000470','trm','唐瑞明','唐瑞明','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (453,'Y','00000471','tcm','陶春明','陶春明','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (454,'Y','00000472','thz','陶华祖','陶华祖','TAO Huazu','中国','China','上海','Shanghai','0001,0006,','','合同法、公司法、国际贸易法','Contract Law, Corporate Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (455,'Y','00000473','tj','陶杰','陶杰','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (456,'Y','00000474','txl','陶鑫良','陶鑫良','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (457,'Y','00000475','txm','陶修明','陶修明','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (458,'Y','00000476','tyn','腾亦农','腾亦农','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (459,'Y','00000477','tpa','田平安','田平安','','','','重庆市','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (460,'Y','00000478','tw','田威','田威','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (461,'Y','00000479','tyj','田雨军','田雨军','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (462,'Y','00000480','tzf','田忠法','田忠法','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (463,'Y','00000481','ty','佟英','佟英','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (464,'Y','00000482','tlp','童丽萍','童丽萍','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (465,'Y','00000483','tqk','童全康','童全康','','','','宁波','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (466,'Y','00000484','tyz','童宜中','童宜中','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (467,'Y','00000485','tqb','庹启斌','庹启斌','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (468,'Y','00000486','web','万恩标','万恩标','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (469,'Y','00000487','wm','万猛','万猛','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (470,'Y','00000488','wjx','汪建熙','汪建熙','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (471,'Y','00000489','wkw','汪康武','汪康武','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (472,'Y','00000490','wb','王波','王波','WANG Bo','中国','China','广州','Guangzhou','0006,','','合同法、民商法','Contract Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (473,'Y','00000491','yjs','余劲松','余劲松','YU Jinsong','中国','China','北京','Beijing','0001,0006,','','国际经济法、国际私法','International Economic Law, Private International Law');
INSERT INTO `arbitman_public` VALUES (474,'Y','00000492','yj','杨钧','杨钧','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (475,'Y','00000493','wcn','王超男','王超男','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (476,'Y','00000494','wcg','王晨光','王晨光','WANG Chenguang','中国','China','北京','Beijing','0001,0006,','','比较法、国际贸易法','Comparative Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (477,'Y','00000495','wcj','王承杰','王承杰','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (478,'Y','00000496','wcl','王传丽','王传丽','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (479,'Y','00000497','whm','王海明','王海明','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (480,'Y','00000498','wh','王瀚','王瀚','','','','西安','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (481,'Y','00000499','whj','王贺军','王贺军','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (482,'Y','00000500','wh','王洪','王洪','','','','重庆市','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (483,'Y','00000501','wh','王辉','王辉','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (484,'Y','00000502','wjh','王霁虹','王霁虹','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (485,'Y','00000503','wjf','王家福','王家福','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (486,'Y','00000504','wjl','王家路','王家路','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (487,'Y','00000505','wjj','王嘉杰','王嘉杰','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (488,'Y','00000506','wj','王杰','王杰','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (489,'Y','00000507','wj','王洁','王洁','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (490,'Y','00000508','wj','王军','王军','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (491,'Y','00000509','wjf','王俊峰','王俊峰','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (492,'Y','00000510','wjq','王俊侨','王俊侨','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (493,'Y','00000511','wl','王丽','王丽','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (494,'Y','00000512','wlm','王利民','王利民','WANG Limin','中国','China','深圳','Shenzhen','0001,0006,','','金融法、经济法','Financial Law, Economic Law');
INSERT INTO `arbitman_public` VALUES (495,'Y','00000513','wlj','王令浚','王令浚','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (496,'Y','00000514','wn','王宁','王宁','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (497,'Y','00000515','wq','王琪','王琪','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (498,'Y','00000516','wq','王强','王强','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (499,'Y','00000517','wsm','王淑敏','王淑敏','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (500,'Y','00000518','wwj','王维嘉','王维嘉','','','','济南','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (501,'Y','00000519','wwz','王维众','王维众','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (502,'Y','00000520','wwd','王卫东','王卫东','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (503,'Y','00000521','wwb','王文兵 ','王文兵 ','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (504,'Y','00000522','wwy','王文英','王文英','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (505,'Y','00000523','wwr','王伍仁','王伍仁','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (506,'Y','00000524','wxm','王小咪','王小咪','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (507,'Y','00000525','wxc','王晓川','王晓川','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (508,'Y','00000526','wxc','王晓春','王晓春','','','','深圳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (509,'Y','00000527','rs','RAJOO, Sundra','RAJOO, Sundra','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (510,'Y','00000528','wxj','王晓娟','王晓娟','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (511,'Y','00000529','wxz','王学政','王学政','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (512,'Y','00000530','wxj','王雪江','王雪江','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (513,'Y','00000531','wys','王亚山','王亚山','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (514,'Y','00000532','wyp','王耀平','王耀平','','','','南京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (515,'Y','00000533','wy','王轶','王轶','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (516,'Y','00000534','wyy','王益英','王益英','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (517,'Y','00000535','wyy','王永源','王永源','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (518,'Y','00000536','wyh','王欲红','王欲红','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (519,'Y','00000537','wzs','王早生','王早生','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (520,'Y','00000538','wzf','王正发','王正发','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (521,'Y','00000539','wz','王政','王政','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (522,'Y','00000540','wgx','魏国雄','魏国雄','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (523,'Y','00000541','wjj','魏家驹','魏家驹','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (524,'Y','00000542','wqx','魏启学','魏启学','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (525,'Y','00000543','wyr','魏耀荣','魏耀荣','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (526,'Y','00000544','wxt','温先涛','温先涛','WEN Xiantao','中国','China','北京','Beijing','0001,0006,','','民商法、外商投资法、公司法、国际投资保护法','Civil and Commercial Law, Foreign Investment Law, Corporate Law, International Investment Protection Law');
INSERT INTO `arbitman_public` VALUES (527,'Y','00000545','whx','文海兴','文海兴','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (528,'Y','00000546','wgm','翁国民','翁国民','WENG Guomin','中国','China','杭州','Hangzhou','0001,0006,','','商法、合同法、外商投资法','Commercial Law, Contract Law, Foreign Investment Law');
INSERT INTO `arbitman_public` VALUES (529,'Y','00000547','wah','吴爱红','吴爱红','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (530,'Y','00000548','wcf','吴灿芳','吴灿芳','','','','南京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (531,'Y','00000549','wdh','吴东慧','吴东慧','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (532,'Y','00000550','wgm','吴国民','吴国民','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (533,'Y','00000551','whd','吴汉东','吴汉东','WU Handong','中国','China','武汉','Wuhan','0001,0006,','','民法、知识产权','Civil Law, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (534,'Y','00000552','whn','吴焕宁','吴焕宁','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (535,'Y','00000553','wj','吴军','吴军','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (536,'Y','00000554','wp','吴鹏','吴鹏','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (537,'Y','00000555','wsc','吴胜春','吴胜春','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (538,'Y','00000556','wt','吴涛','吴涛','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (539,'Y','00000557','wxg','吴兴光','吴兴光','','','','广州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (540,'Y','00000558','wzp','吴兆平','吴兆平','WU Zhaoping','中国','China','杭州','Hangzhou','0001,0006,','','知识产权、国际贸易法、投资法、合同法','Intellectual Property, International Trade Law, Investment Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (541,'Y','00000559','wzg','吴振国','吴振国','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (542,'Y','00000560','wzp','吴志攀','吴志攀','WU Zhipan','中国','China','北京','Beijing','0001,0006,','','国际金融法','International Financial Law');
INSERT INTO `arbitman_public` VALUES (543,'Y','00000561','wb','伍斌','伍斌','WU Bin','中国','China','深圳','Shenzhen','0001,0006,','','企业国有资产法、重组、并购、公司法','State-Owned Assets Law, Reorganization, M&A, Corporate Law');
INSERT INTO `arbitman_public` VALUES (544,'Y','00000562','wdr','武德瑞','武德瑞','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (545,'Y','00000563','wfl','武凤玲','武凤玲','','','','武汉','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (546,'Y','00000564','xf','夏芳','夏芳','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (547,'Y','00000565','xj','夏军','夏军','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (548,'Y','00000566','xzh','夏志宏','夏志宏','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (549,'Y','00000567','xw','肖微','肖微','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (550,'Y','00000568','xw','肖伟','肖伟','','','','厦门','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (551,'Y','00000569','xzf','谢增福','谢增福','','','','郑州','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (552,'Y','00000570','xls','邢泸生','邢泸生','','','','成都','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (553,'Y','00000571','xw','邢炜','邢炜','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (554,'Y','00000572','xxs','邢修松','邢修松','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (555,'Y','00000573','xb','徐炳','徐炳','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (556,'Y','00000574','xcl','徐崇利','徐崇利','','','','厦门','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (557,'Y','00000575','xf','徐菲','徐菲','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (558,'Y','00000576','xjg','徐国建','徐国建','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (559,'Y','00000577','xjl','徐家力','徐家力','XU Jiali','中国','China','北京','Beijing','0001,0006,','','知识产权、技术转让、国际贸易、诉讼与仲裁','Intellectual Property, Technology Transfer, International Trade, Litigation and Arbitration');
INSERT INTO `arbitman_public` VALUES (560,'Y','00000578','xjh','徐建华','徐建华','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (561,'Y','00000579','xq','徐强','徐强','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (562,'Y','00000580','xwd','徐卫东','徐卫东','','','','长春','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (563,'Y','00000581','xyj','徐友军','徐友军','XU Youjun','中国','China','深圳','Shenzhen','0001,0006,','','知识产权法','Intellectual Property Law');
INSERT INTO `arbitman_public` VALUES (564,'Y','00000582','xhm','许红明','许红明','XU Hongming','中国','China','香港','Hong Kong','0001,0006,','','公司法、证券法、航运、程序法','Corporate Law, Securities Law, Shipping, Procedure Law');
INSERT INTO `arbitman_public` VALUES (565,'Y','00000583','xlx','许立新','许立新','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (566,'Y','00000584','xmg','许满刚','许满刚','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (567,'Y','00000585','xsd','许善达','许善达','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (568,'Y','00000586','xwh','宣伟华','宣伟华','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (569,'Y','00000587','xh','薛虹','薛虹','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (570,'Y','00000588','ylb','闫立兵','闫立兵','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (571,'Y','00000589','yb','严斌','严斌','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (572,'Y','00000590','ysy','严思忆','严思忆','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (573,'Y','00000591','yl','阎兰','阎兰','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (574,'Y','00000592','ypl','杨蓓伦','杨蓓伦','','','','南京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (575,'Y','00000593','ycl','杨春雷','杨春雷','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (576,'Y','00000594','yg','杨钢','杨钢','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (577,'Y','00000595','ygh','杨国华','杨国华','','','','华盛顿','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (578,'Y','00000596','yhb','杨华柏','杨华柏','YANG Huabai','中国','China','北京','Beijing','0001,0006,','','金融法、保险法、证券法、合同法','Financial Law, Insurance Law, Securities Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (579,'Y','00000597','yjy','杨建勇','杨建勇','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (580,'Y','00000598','yks','杨凯生','杨凯生','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (581,'Y','00000599','yrs','杨润时','杨润时','','','','北京','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (582,'Y','00000600','ysh','杨师华','杨师华','','','','上海','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (583,'Y','00000601','ys','杨松','杨松','','','','沈阳','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (584,'Y','00000602','ywt','杨挽涛','杨挽涛','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (585,'Y','00000603','yxc','杨小川','杨小川','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (586,'Y','00000604','yxf','杨晓峰','杨晓峰','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (587,'Y','00000605','yw','姚望','姚望','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (588,'Y','00000606','yxc','姚新超','姚新超','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (589,'Y','00000607','yl','叶林','叶林','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (590,'Y','00000608','yl','叶渌','叶渌','YE Lu','中国','China','北京','Beijing','0001,0006,','','国际投资法、基础设施、国际贸易法、国际金融法','International Investment Law, Infrastructure, International Trade Law, International Financial Law');
INSERT INTO `arbitman_public` VALUES (591,'Y','00000609','yto','尹铁瓯','尹铁瓯','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (592,'Y','00000610','yqr','游劝荣','游劝荣','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (593,'Y','00000611','yjl','于健龙','于健龙','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (594,'Y','00000612','tm','于莽','于莽','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (595,'Y','00000613','yn','于宁','于宁','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (596,'Y','00000614','ytq','于腾群','于腾群','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (597,'Y','00000615','yq','余奇','余奇','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (598,'Y','00000616','ylm','於乐民','於乐民','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (599,'Y','00000617','yf','俞峰','俞峰','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (600,'Y','00000618','yzm','郁忠民','郁忠民','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (601,'Y','00000619','yby','袁炳玉','袁炳玉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (602,'Y','00000620','ygj','袁古洁','袁古洁','YUAN Gujie','中国','China','广州','Guangzhou','0001,0006,','','民商法、合同法、房地产法、国际经济法','Civil and Commercial Law, Contract Law, Real Estate Law, International Economic Law');
INSERT INTO `arbitman_public` VALUES (603,'Y','00000621','yjg','袁建国','袁建国','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (604,'Y','00000622','yj','岳洁','岳洁','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (605,'Y','00000623','yzy','岳增益','岳增益','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (606,'Y','00000624','zhq','曾华群','曾华群','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (607,'Y','00000625','zjg','曾建国','曾建国','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (608,'Y','00000626','zxz','曾宪章','曾宪章','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (609,'Y','00000627','zh','詹昊','詹昊','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (610,'Y','00000628','zly','詹礼愿','詹礼愿','ZHAN Liyuan','中国','China','广州','Guangzhou','0001,0006,','','房地产法、公司法、国际贸易法','Real Estate Law, Corporate Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (611,'Y','00000629','zn','战宁','战宁','ZHAN Ning','中国','China','北京','Beijing','0001,0006,','','合同法、国际贸易法、房地产法、知识产权','Contract Law, International Trade Law, Real Estate Law, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (612,'Y','00000630','zbs','张斌生','张斌生','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (613,'Y','00000631','zgw','张国伟','张国伟','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (614,'Y','00000632','zgy','张国炎','张国炎','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (615,'Y','00000633','zhl','张汉林','张汉林','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (616,'Y','00000634','zdh','张衡德','张衡德','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (617,'Y','00000635','zhj','张宏久','张宏久','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (618,'Y','00000636','zjx','张吉星','张吉星','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (619,'Y','00000637','zjt','张继涛','张继涛','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (620,'Y','00000638','zjb','张建斌','张建斌','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (621,'Y','00000639','zjg','张建国','张建国','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (622,'Y','00000640','zjg','张剑光','张剑光','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (623,'Y','00000641','zjz','张军洲','张军洲','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (624,'Y','00000642','zlx','张力行','张力行','ZHANG Lixing','中国','China','香港','Hong Kong','0001,0006,','','国际贸易法、海商法、国际投资法、公司法','International Trade Law, Maritime Law, International Investment Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (625,'Y','00000643','zlx','张丽霞','张丽霞','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (626,'Y','00000644','zlb','张利宾','张利宾','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (627,'Y','00000645','zl','张凌','张凌','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (628,'Y','00000646','zl','张龙','张龙','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (629,'Y','00000647','zlm','张鲁民','张鲁民','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (630,'Y','00000648','zm','张萌','张萌','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (631,'Y','00000649','zmj','张明杰','张明杰','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (632,'Y','00000650','zn','张宁','张宁','','','','','','0001,0006,','','','');
INSERT INTO `arbitman_public` VALUES (633,'Y','00000651','zp','张平','张平','ZHANG Ping','中国','China','广州','Guangzhou','0001,0006,','','外商投资、并购、重组、国际贸易','Foreign Investment, M&A, Reorganization, International Trade');
INSERT INTO `arbitman_public` VALUES (634,'Y','00000652','zqk','张旗坤','张旗坤','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (635,'Y','00000653','zqh','张起淮','张起淮','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (636,'Y','00000654','zq','张穹','张穹','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (637,'Y','00000655','zsz','张守志','张守志','ZHANG Shouzhi','中国','China','北京','Beijing','0001,0006,','','金融法、国际贸易法、国际投资法、仲裁法','Financial Law, International Trade Law, International Investment Law, Arbitration Law');
INSERT INTO `arbitman_public` VALUES (638,'Y','00000656','zsb','张水波','张水波','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (639,'Y','00000657','zwm','张万明','张万明','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (640,'Y','00000658','zw','张炜','张炜','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (641,'Y','00000659','zw','张玮','张玮','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (642,'Y','00000660','zwl','张文龙','张文龙','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (643,'Y','00000661','zxb','张学兵','张学兵','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (644,'Y','00000662','zyp','张亚普','张亚普','ZHANG Yapu','中国','China','广州','Guangzhou','0001,0006,','','外商投资法、知识产权、国际贸易法','Foreign Investment Law, Intellectual Property, International Trade Law');
INSERT INTO `arbitman_public` VALUES (645,'Y','00000663','zy','张烨','张烨','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (646,'Y','00000664','zy','张颖','张颖','ZHANG Ying','中国','China','北京','Beijing','0001,0006,','','公司法、证券法','Corporate Law, Securities Law');
INSERT INTO `arbitman_public` VALUES (647,'N','00000665','zy','张勇','张勇','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (648,'Y','00000666','zyl','张玉林','张玉林','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (649,'Y','00000667','zyj','张月姣','张月姣','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (650,'Y','00000668','zy','张悦','张悦','ZHANG Yue','中国','China','上海','Shanghai','0001,0006,','','投资法、国际贸易法','Investment Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (651,'Y','00000669','zyd','张云东','张云东','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (652,'Y','00000670','zyf','张云飞','张云飞','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (653,'Y','00000671','zzz','张在祯','张在祯','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (654,'Y','00000672','zkq','章克勤','章克勤','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (655,'Y','00000673','zzy','章震亚','章震亚','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (656,'Y','00000674','zj','赵菁','赵菁','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (657,'Y','00000675','zb','赵兵','赵兵','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (658,'Y','00000676','zcs','赵长生','赵长生','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (659,'Y','00000677','zcb','赵承壁','赵承壁','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (660,'Y','00000678','zdm','赵德铭','赵德铭','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (661,'Y','00000679','zh','赵杭','赵杭','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (662,'Y','00000680','zj','赵健','赵健','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (663,'Y','00000681','zl','赵莉','赵莉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (664,'Y','00000682','zlg','赵利国','赵利国','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (665,'Y','00000683','zwy','赵万一','赵万一','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (666,'Y','00000684','zxl','赵相林','赵相林','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (667,'Y','00000685','zxw','赵秀文','赵秀文','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (668,'Y','00000686','zxd','赵旭东','赵旭东','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (669,'Y','00000687','zxq','赵学清','赵学清','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (670,'Y','00000688','zyq','赵永清','赵永清','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (671,'Y','00000689','zzd','赵振东','赵振东','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (672,'Y','00000690','zh','郑红','郑红','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (673,'Y','00000691','zy','郑勇','郑勇','ZHENG Yong','中国','China','广州','Guangzhou','0001,0006,','','保险、外商投资、国际贸易、并购','Insurance, Foreign Investment, International Trade, M&A');
INSERT INTO `arbitman_public` VALUES (674,'Y','00000692','zmz','郑孟状','郑孟状','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (675,'Y','00000693','zrg','郑润镐','郑润镐','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (676,'N','00000694','zj','赵健','赵健','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (677,'Y','00000695','zm','钟民','钟民','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (678,'Y','00000696','zw','钟文','钟文','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (679,'Y','00000697','zj','周珏','周珏','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (680,'Y','00000698','zq','周琦','周琦','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (681,'Y','00000699','zw','周雯','周雯','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (682,'Y','00000700','zcl','周长玲','周长玲','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (683,'Y','00000701','zhm','周汉民','周汉民','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (684,'Y','00000702','zhm','周红民','周红民','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (685,'Y','00000703','zlb','周林彬','周林彬','ZHOU Linbin','中国','China','广州','Guangzhou','0001,0006,','','合同法、公司法、物权法、金融法','Contract Law, Corporate Law, Property Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (686,'Y','00000704','zsj','周世俭','周世俭','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (687,'Y','00000705','zxy','周晓燕','周晓燕','ZHOU Xiaoyan','中国','China','北京','Beijing','0001,0006,','','国际货物买卖、国际投资、技术转让、商事合同','International Sales of Goods, International Investment, Technology Transfer, Commercial Contract');
INSERT INTO `arbitman_public` VALUES (688,'Y','00000706','zyb','周渝波','周渝波','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (689,'Y','00000707','zys','周院生','周院生','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (690,'Y','00000708','zqq','周中琦','周中琦','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (691,'Y','00000709','zf','朱峰','朱峰','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (692,'Y','00000710','zg','朱戈','朱戈','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (693,'Y','00000711','zcy','朱慈蕴','朱慈蕴','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (694,'Y','00000712','zdp','朱大鹏','朱大鹏','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (695,'Y','00000713','zhc','朱洪超','朱洪超','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (696,'Y','00000714','zkp','朱克鹏','朱克鹏','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (697,'Y','00000715','zly','朱榄叶','朱榄叶','ZHU Lanye','中国','China','上海','Shanghai','0001,0006,','','国际贸易法、知识产权法','International Trade Law, Intellectual Property Law');
INSERT INTO `arbitman_public` VALUES (698,'Y','00000716','zlm','朱黎明','朱黎明','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (699,'Y','00000718','zsy','朱树英','朱树英','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (700,'Y','00000719','zsd','朱思东','朱思东','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (701,'Y','00000720','zyf','朱月芳','朱月芳','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (702,'Y','00000721','zzhm','朱兆敏','朱兆敏','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (703,'Y','00000722','zzf','朱征夫','朱征夫','ZHU Zhengfu','中国','China','广州','Guangzhou','0001,0006,','','房地产法、国际投资法','Real Estate Law, International Investment Law');
INSERT INTO `arbitman_public` VALUES (704,'Y','00000723','zxy','庄心一','庄心一','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (705,'Y','00000724','zhl','邹海林','邹海林','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (706,'Y','00000725','zzh','邹志洪','邹志洪','ZOU Zhihong','中国','China','北京','Beijing','0001,0006,','','民商法、海商法、国际私法','Civil and Commercial Law, Maritime Law, Private International Law');
INSERT INTO `arbitman_public` VALUES (707,'Y','00000726','zhc','左海聪','左海聪','ZUO Haicong','中国','China','天津','Tianjin','0001,0006,','','国际贸易法、国际投资法、国际金融法、合同法','International Trade Law, International Investment Law, International Financial Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (708,'Y','00000727','cjr','曹家瑞','曹家瑞','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (709,'Y','00000728','cts','曹惕生','曹惕生','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (710,'N','00000729','xqd','谢启大','谢启大','','中国','','台湾','','0006,','','','');
INSERT INTO `arbitman_public` VALUES (711,'Y','00000730','jfy','KAN, Fook Yee 简福饴','KAN, Fook Yee 简福饴','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (712,'Y','00000731','lzg','李志刚','李志刚','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (713,'Y','00000732','','ABDULLAH AL-OUFI, Saleh','ABDULLAH AL-OUFI, Saleh','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (714,'Y','00000733','',' 	ABOUL-ENEIN Mohamed','ABOUL-ENEIN Mohamed','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (715,'Y','00000734','','ADAMS, George B.','ADAMS, George B.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (716,'Y','00000735','','AGLIONBY, Andrew John Lorne','AGLIONBY, Andrew John Lorne','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (717,'Y','00000736','','AI MULLA, Habib','AI MULLA, Habib','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (718,'Y','00000737','','AKSEN, Genald','AKSEN, Genald','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (719,'Y','00000738','','ALFORD, William','ALFORD, William','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (720,'Y','00000739','','ALONSO, José María','ALONSO, José María','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (721,'Y','00000740','','ANG, Yong Tong 洪仰东','ANG, Yong Tong 洪仰东','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (722,'Y','00000741','','ARKIN, Harry L','ARKIN, Harry L','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (723,'Y','00000742','','AZZALI, Stefano','AZZALI, Stefano','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (724,'Y','00000743','bl','BARRINGTON, Louise','BARRINGTON, Louise','BARRINGTON, Louise','加拿大/英国','Canada/U.K.','中国香港','Hong Kong','0006,','','商业、建筑、保险、合资、分销协议','Commercial, Construction, Insurance, Joint Ventures, Distribution Agreements');
INSERT INTO `arbitman_public` VALUES (725,'Y','00000744','','BATESON, David','BATESON, David','','英国','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (726,'Y','00000745','bb','BEAUMONT, Ben','BEAUMONT, Ben','BEAUMONT, Ben','英国','U.K.','英国','U.K.','0001,0006,','','合同、证券、采购、建筑','Contract, Securities, Procurement, Construction');
INSERT INTO `arbitman_public` VALUES (727,'Y','00000746','','BEGLEY, Louis','BEGLEY, Louis','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (728,'Y','00000747','','BELLHOUSE, John M.H. ','BELLHOUSE, John M.H. ','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (729,'Y','00000748','','BERGER, Klaus Peter','BERGER, Klaus Peter','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (730,'Y','00000749','','BERGSTEN, Eric E','BERGSTEN, Eric E','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (731,'Y','00000750','','BERNINI, Giorgio','BERNINI, Giorgio','','','','波伦亚','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (732,'Y','00000751','','BEST, Roger','BEST, Roger','','','','伦敦','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (733,'Y','00000752','','BISHOP, John 庄本信','BISHOP, John 庄本信','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (734,'Y','00000753','','BLACKBURN, Elizabeth','BLACKBURN, Elizabeth','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (735,'Y','00000754','','BLESSING, Marc','BLESSING, Marc','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (736,'Y','00000755','','BOCKSTIEGEL, Karl-Heinz','BOCKSTIEGEL, Karl-Heinz','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (737,'Y','00000756','','BOND, Stephen R.','BOND, Stephen R.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (738,'Y','00000757','','BOO，lawrence 巫昱成','BOO，lawrence 巫昱成','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (739,'Y','00000758','','BRANSON, Cecil O.D.','BRANSON, Cecil O.D.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (740,'Y','00000759','','BRINER, Robert','BRINER, Robert','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (741,'Y','00000760','','BROWN, Neil','BROWN, Neil','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (742,'Y','00000761','','BROWN, Peter Michael','BROWN, Peter Michael','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (743,'Y','00000762','cdd','CARON, David D.','CARON, David D.','CARON, David D.','美国','U.S.A.','伦敦','London','0001,0006,','','建筑、国际商业投资仲裁、海事、环境法','Construction, International Commercial and Investment Arbitration, Maritime/Ocean Boundaries, Environment');
INSERT INTO `arbitman_public` VALUES (744,'Y','00000763','','CASSAN, Maryse','CASSAN, Maryse','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (745,'Y','00000764','cqx','CHAN, Ching Har Eliza 陈清霞','CHAN, Ching Har Eliza 陈清霞','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (746,'Y','00000765','cjt','CHAN,Kin Tin 陈建田','CHAN,Kin Tin 陈建田','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (747,'Y','00000766','cyy','CHAN,Vivien 陈韵云','CHAN,Vivien 陈韵云','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (748,'Y','00000767','','CHANG, Khen Lee Denis 张建利','CHANG, Khen Lee Denis 张建利','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (749,'Y','00000768','','CHAO,Cedric C.赵启民','CHAO,Cedric C.赵启民','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (750,'Y','00000769','','CHAPMAN, Peter H.J.','CHAPMAN, Peter H.J.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (751,'Y','00000770','ccw','CHEN, Charngven 陈长文','CHEN, Charngven 陈长文','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (752,'Y','00000771','cxj','CHEN, Helena 陈希佳','CHEN, Helena 陈希佳','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (753,'Y','00000772','cwj','CHEN, Nicholas Van Gene 陈文俊','CHEN, Nicholas Van Gene 陈文俊','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (754,'Y','00000773','zrh','CHENG，Teresa Y.W.  郑若骅','CHENG，Teresa Y.W.  郑若骅','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (755,'Y','00000774','cdb','CHEN，Thomas T.P. 陈东壁','CHEN，Thomas T.P. 陈东壁','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (756,'Y','00000775','zgj','CHEUNG, Kwok Kit 张国杰','CHEUNG, Kwok Kit 张国杰','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (757,'Y','00000776','zyc','CHEUNG，Wing Choi Franki 张永财','CHEUNG，Wing Choi Franki 张永财','','','','','','0001,0006,','','','');
INSERT INTO `arbitman_public` VALUES (758,'Y','00000777','zlr','CHU, Lillian 朱丽容','CHU, Lillian 朱丽容','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (759,'Y','00000778','zwx','CHU，Steve W. 朱伟雄','CHU，Steve W. 朱伟雄','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (760,'Y','00000779','zll','CHU，Victor 诸立力','CHU，Victor 诸立力','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (761,'Y','00000780','','COLMAN，Anthony','COLMAN，Anthony','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (762,'Y','00000781','','CONNERTY,Anthony 康安东','CONNERTY,Anthony 康安东','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (763,'Y','00000782','','COOMBE, George W.','COOMBE, George W.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (764,'Y','00000783','','COOPER, Charles A.','COOPER, Charles A.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (765,'Y','00000784','cwl','CRAIG, William Laurence','CRAIG, William Laurence','CRAIG, William Laurence','美国','U.S.A.','法国','France','0001,0006,','','投资、能源、建筑、合资、公司','Investment, Energy, Construction, Joint Venture, Corporate');
INSERT INTO `arbitman_public` VALUES (766,'Y','00000785','','CREMADES, Bernardo M.','CREMADES, Bernardo M.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (767,'Y','00000786','','CUTLER, Eliot R.','CUTLER, Eliot R.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (768,'Y','00000787','','DAVIDSON, Robert B.','DAVIDSON, Robert B.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (769,'Y','00000788','db','DEWIT, Bernard ','DEWIT, Bernard ','DEWIT, Bernard','比利时','Belgium','比利时','Belgium','0001,0006,','','国际贸易、投资','International Trade, Investment');
INSERT INTO `arbitman_public` VALUES (770,'Y','00000789','dam','DIXON, Andrew Mark','DIXON, Andrew Mark','DIXON, Andrew Mark','英国','U.K.','英国','U.K.','0001,0006,','','石油与天然气、工程和建设','Oil and Gas Energy, Engineering and Construction');
INSERT INTO `arbitman_public` VALUES (771,'Y','00000790','','DOBASHI，Tadashi 土桥正','DOBASHI，Tadashi 土桥正','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (772,'Y','00000791','','DOWNEY, Martin','DOWNEY, Martin','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (773,'Y','00000792','','DRYMER, Stephen L.','DRYMER, Stephen L.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (774,'Y','00000793','ej','ERAUW, Johan A.','ERAUW, Johan A.','ERAUW, Johan A.','比利时','Belgium','比利时','Belgium','0001,0006,','','国际协议、知识产权、仲裁、艺术与文物法','International Agreement, Intellectual Property, Arbitration, Art and Cultural Objects Law');
INSERT INTO `arbitman_public` VALUES (775,'Y','00000794','','ETGEN, Bjorn','ETGEN, Bjorn','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (776,'Y','00000795','','EVANS，Anthony','EVANS，Anthony','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (777,'Y','00000796','','FABRE，Regis','FABRE，Regis','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (778,'Y','00000797','','FAGAN, Wayne I','FAGAN, Wayne I','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (779,'Y','00000798','','FELICIANO, Florentino P.','FELICIANO, Florentino P.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (780,'Y','00000799','','FERRANT, Mauro','FERRANT, Mauro','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (781,'Y','00000800','','ISHBURNE, Benjamin III','ISHBURNE, Benjamin III','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (782,'Y','00000801','','FITZGERALD, Gerald Edward','FITZGERALD, Gerald Edward','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (783,'Y','00000802','','FORTIER, Yves C.C.','FORTIER, Yves C.C.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (784,'Y','00000803','','FOYLE, Andrew William','FOYLE, Andrew William','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (785,'Y','00000804','','FRANKE, Ulf','FRANKE, Ulf','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (786,'Y','00000805','','FRICK, Georges','FRICK, Georges','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (787,'Y','00000806','','FRIOCOURT, Michel','FRIOCOURT, Michel','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (788,'Y','00000807','fkc','FU, Kuen-chen 傅崐成','FU, Kuen-chen 傅崐成','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (789,'Y','00000808','fhj','FUNG, Daniel R. 冯华健','FUNG, Daniel R. 冯华健','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (790,'Y','00000809','','GAFFNEY, John','GAFFNEY, John','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (791,'Y','00000810','GEBHARDT, ','GEBHARDT, Immanuel 葛毅 ','GEBHARDT, Immanuel 葛毅 ','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (792,'Y','00000811','','GELINAS，Paul-A.','GELINAS，Paul-A.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (793,'Y','00000812','','GERNANDT, Johan','GERNANDT, Johan','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (794,'Y','00000813','','GLATTER，Joachim','GLATTER，Joachim','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (795,'Y','00000814','','GODWIN，William George Henry','GODWIN，William George Henry','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (796,'Y','00000815','','GURRY, Francis','GURRY, Francis','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (797,'Y','00000816','hzx','HALL-JONES, David 贺忠信','HALL-JONES, David 贺忠信','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (798,'Y','00000817','','HANGER, Richard Ian','HANGER, Richard Ian','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (799,'Y','00000818','hb','HANOTIAU, Bernard ','HANOTIAU, Bernard ','HANOTIAU, Bernard','比利时','Belgium','比利时','Belgium','0001,0006,','','能源（石油与天然气）、高新科技、合资、银行与金融','Energy(Oil and Gas), High Tech, Joint Venture, Banking and Finance');
INSERT INTO `arbitman_public` VALUES (800,'Y','00000819','hr','HARPOLE，Sally A. 何蓉','HARPOLE，Sally A. 何蓉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (801,'Y','00000820','hlw','HARROWELL, James Geoffrey Fulton 贺乐为','HARROWELL, James Geoffrey Fulton 贺乐为','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (802,'Y','00000821','','HARTWELL, G.M.Beresford','HARTWELL, G.M.Beresford','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (803,'Y','00000822','','HAUSMANN, Christian','HAUSMANN, Christian','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (804,'Y','00000823','','HAYASAKI, Takuzou  早崎卓三','HAYASAKI, Takuzou  早崎卓三','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (805,'Y','00000824','xtf','HEE, Theng Fong 许廷芳','HEE, Theng Fong 许廷芳','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (806,'Y','00000825','qjx','HEW, Kian Heong 丘健雄','HEW, Kian Heong 丘健雄','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (807,'Y','00000826','hmh','HO, Betty 何美欢','HO, Betty 何美欢','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (808,'Y','00000827','','HOBER, Kaj','HOBER, Kaj','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (809,'Y','00000828','','HOLLOWAY, Julian Pendrill Warner','HOLLOWAY, Julian Pendrill Warner','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (810,'Y','00000829','','HOLMES, Malcolm Fraser','HOLMES, Malcolm Fraser','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (811,'Y','00000830','','HOROWIZ, Donald L.','HOROWIZ, Donald L.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (812,'Y','00000831','','HORTON, William G.','HORTON, William G.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (813,'Y','00000832','ha','HOUGHTON, Anthony ','HOUGHTON, Anthony ','HOUGHTON, Anthony','英国','U.K.','中国香港','China Hong Kong','0001,0006,','','建筑、土木工程、商法','Construction, Civil Engineering, Commercial Law');
INSERT INTO `arbitman_public` VALUES (814,'Y','00000833','','HOWSON, Nicholas C.','HOWSON, Nicholas C.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (815,'Y','00000834','xqd','谢启大','谢启大','XIE, Qi Da','中国','China','台湾','Taiwan','0001,0006,','','民商法、合同法、并购','Civil and Commercial Law, Contract Law, M&A');
INSERT INTO `arbitman_public` VALUES (816,'Y','00000835','xwt','HSIEH, Wen Tien 谢文田','HSIEH, Wen Tien 谢文田','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (817,'Y','00000836','xwc','HSUEH, Robert W. 薛维诚','HSUEH, Robert W. 薛维诚','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (818,'Y','00000837','','HUEBNER, David','HUEBNER, David','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (819,'Y','00000838','','HUGHES, Adrian','HUGHES, Adrian','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (820,'Y','00000839','','HUNTER, J. Martin H.','HUNTER, J. Martin H.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (821,'Y','00000840','hxy','HWAN, Michael 黄锡义','HWAN, Michael 黄锡义','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (822,'Y','00000841','','IDID, Syed Ahmad','IDID, Syed Ahmad','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (823,'Y','00000842','','ITEYA, Yoshio','ITEYA, Yoshio','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (824,'Y','00000843','','JACOBS, Marcus S','JACOBS, Marcus S','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (825,'Y','00000844','','JAFFER, Mahomed J.','JAFFER, Mahomed J.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (826,'Y','00000845','','JAMES,Robert James','JAMES,Robert James','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (827,'Y','00000846','','JARVIN, Sigvard','JARVIN, Sigvard','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (828,'Y','00000847','zrg','JEONG, Yeon Ho 郑然镐','JEONG, Yeon Ho 郑然镐','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (829,'Y','00000848','','JESSE, Franklin C.','JESSE, Franklin C.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (830,'Y','00000849','','JOHNSTON, Graeme James','JOHNSTON, Graeme James','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (831,'N','00000850','jfy','简福饴','简福饴','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (832,'Y','00000851','','KAPLAN, Neil','KAPLAN, Neil','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (833,'Y','00000852','ccm','KAWAMURA, Akira 川村明','KAWAMURA, Akira 川村明','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (834,'Y','00000853','qlf','KHOO, Warren 邱良发','KHOO, Warren 邱良发','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (835,'Y','00000854','jdh','KIM, Dong Huan 金东焕','KIM, Dong Huan 金东焕','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (836,'Y','00000855','','KIM, Jae Hyun','KIM, Jae Hyun','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (837,'Y','00000856','jrh','KIM, Yeon-Ho 金然浩','KIM, Yeon-Ho 金然浩','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (838,'Y','00000857','','KNUTSON, Robert','KNUTSON, Robert','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (839,'Y','00000858','ksc','KO, Patrick S. 柯少诚','KO, Patrick S. 柯少诚','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (840,'Y','00000859','jxz','KOO, Sung Jin 具星镇','KOO, Sung Jin 具星镇','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (841,'Y','00000860','','KREINDLER, Richard H.','KREINDLER, Richard H.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (842,'Y','00000861','','KRONER, Ralph P.','KRONER, Ralph P.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (843,'Y','00000862','','KRONKE, Herbert','KRONKE, Herbert','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (844,'Y','00000863','gjz','KU, Chia-chun 古嘉谆','KU, Chia-chun 古嘉谆','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (845,'Y','00000864','gqb','KUO, Kevin 郭清宝','KUO, Kevin 郭清宝','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (846,'Y','00000865','','KWAN,James Phillip ','KWAN,James Phillip ','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (847,'Y','00000866','','LAEUCHLI, Urs Martin','LAEUCHLI, Urs Martin','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (848,'Y','00000867','lr','LAM, Daniel C. 林睿','LAM, Daniel C. 林睿','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (849,'Y','00000868','',' 	LAPRES, Daniel Arthur ',' 	LAPRES, Daniel Arthur ','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (850,'Y','00000869','','LAZAREFF,Serge','LAZAREFF,Serge','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (851,'Y','00000870','','LEBEDEV, Sergei','LEBEDEV, Sergei','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (852,'Y','00000871','lzh','LEE, Chee Wah Wilfred 李志华','LEE, Chee Wah Wilfred 李志华','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (853,'Y','00000872','ljq','LEE, Chia Ching 李家庆','LEE, Chia Ching 李家庆','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (854,'Y','00000873','lhk','LEE, Hie Kui Eric 李惠魁','LEE, Hie Kui Eric 李惠魁','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (855,'Y','00000874','ljq','LEE, James 李剑强','LEE, James 李剑强','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (856,'Y','00000875','ljl','李钜林','李钜林','LEE, Kui Lam','中国','China','香港','Hong Kong','0001,0006,','','国际贸易、电子商务、建设工程、合资合作','International Trade Law, E-commerce, Construction Engineering, Joint Venture and Cooperation');
INSERT INTO `arbitman_public` VALUES (857,'Y','00000876','lal','LEONARD, David 李安霖','LEONARD, David 李安霖','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (858,'Y','00000877','lxy','LEUNG, Alvin H.Y. 梁享英','LEUNG, Alvin H.Y. 梁享英','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (859,'Y','00000878','lmf','LEUNG, M.F.Priscilla 梁美芬','LEUNG, M.F.Priscilla 梁美芬','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (860,'Y','00000879','lhm','LEUNG,Raymond 梁海明','LEUNG,Raymond 梁海明','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (861,'Y','00000880','las','LEUNG，Oi-sie Elsie 梁爱诗','LEUNG，Oi-sie Elsie 梁爱诗','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (862,'Y','00000881','','LEW, Julian D.M.','LEW, Julian D.M.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (863,'Y','00000882','ljl','LI, Chiang Ling 李江陵','LI, Chiang Ling 李江陵','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (864,'Y','00000883','lfd','LI, Fuldien 李复甸','LI, Fuldien 李复甸','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (865,'Y','00000884','llj','LI, Lian Jun李连君','LI, Lian Jun李连君','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (866,'Y','00000885','lnz','LI, Nien-Tsu 李念祖','LI, Nien-Tsu 李念祖','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (867,'Y','00000886','lyr','LI, Yong Ran 李永然','LI, Yong Ran 李永然','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (868,'Y','00000887','lcc','LIAO, Cheuang Sing Andrew 廖长城','LIAO, Cheuang Sing Andrew 廖长城','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (869,'Y','00000888','lby','LIM, P.G. 林碧颜','LIM, P.G. 林碧颜','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (870,'Y','00000889','lj','LIU, Jing 刘京','LIU, Jing 刘京','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (871,'Y','00000890','lsz','LIU，Shang-Jyh 刘尚志','LIU，Shang-Jyh 刘尚志','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (872,'Y','00000891','lyy','LIVASIRI,Ankana 廖绮云','LIVASIRI,Ankana 廖绮云','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (873,'Y','00000892','','LIVDAHL,David A.','LIVDAHL,David A.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (874,'Y','00000893','lcf','LO, Chang-fa 罗昌发','LO, Chang-fa 罗昌发','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (875,'Y','00000894','','Lord Irvine of Lairg, PC, QC  	','Lord Irvine of Lairg, PC, QC  	','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (876,'Y','00000895','','LOWENFELD, Andreas','LOWENFELD, Andreas','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (877,'Y','00000896','','LUX, Jonathan','LUX, Jonathan','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (878,'Y','00000897','','MAGNUSSON,Staffan','MAGNUSSON,Staffan','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (879,'Y','00000898','','MALANCZUK,Peter','MALANCZUK,Peter','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (880,'Y','00000899','','MCLAUGHLIN, Genald','MCLAUGHLIN, Genald','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (881,'Y','00000900','','MELIN, Noel','MELIN, Noel','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (882,'Y','00000901','mw','MELIS, Werner ','MELIS, Werner ','MELIS, Werner','奥地利','Austria','奥地利','Austria','0001,0006,','','建筑、工程、金融与银行、国际合同、国际贸易','Construction, Engineering, Finance & Banking, International Contract, International Trade');
INSERT INTO `arbitman_public` VALUES (883,'Y','00000902','md','MENARD, Dominique','MENARD, Dominique','MENARD, Dominique','法国','France','法国','France','0001,0006,','','知识产权（主要在制药、化学和高新科技领域）、专利及专有技术','Intellectual Property (Mainly in the Pharmaceutical, Chemical and New Technologies Sectors), Patent and Know-how');
INSERT INTO `arbitman_public` VALUES (884,'Y','00000903','mk','MILLS, Karen ','MILLS, Karen ','MILLS, Karen','美国','U.S.A.','印尼','Indonasia','0001,0006,','','融资、石油、天然气、能源、矿产、投资、贸易、保险','Financing, Oil, Gas, Energy, Mining, Investment, Trade, Insurance');
INSERT INTO `arbitman_public` VALUES (885,'Y','00000904','msj','MO, Shijian (John) 莫世健','MO, Shijian (John) 莫世健','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (886,'N','00000905','','MORTON, Robert B.','MORTON, Robert B.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (887,'Y','00000906','','MOSER, Michael J. 莫石','MOSER, Michael J. 莫石','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (888,'Y','00000907','','MOURRE, Alexis','MOURRE, Alexis','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (889,'Y','00000908','','NAGAHAMA, Tsuyoshi','NAGAHAMA, Tsuyoshi','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (890,'Y','00000909','nzy','NAN,Jae Woo 南在佑','NAN,Jae Woo 南在佑','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (891,'Y','00000910','','NEELMEIER, Axel','NEELMEIER, Axel','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (892,'Y','00000911','ldb','梁定邦','梁定邦','NEOH, Anthony Francis','中国','China','香港','Hong Kong','0001,0006,','','国际经济贸易法','International Economic Trade Law');
INSERT INTO `arbitman_public` VALUES (893,'Y','00000912','','NERZ, Alexander','NERZ, Alexander','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (894,'Y','00000913','','NORONHA GOYOS Jr.,Durval','NORONHA GOYOS Jr.,Durval','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (895,'Y','00000914','np','NOWACZYK, Piotr ','NOWACZYK, Piotr ','NOWACZYK, Piotr','波兰','Poland','波兰','Poland','0001,0006,','','FIDIC合同、投资、能源、技术转让、知识产权、国际贸易','FIDIC Contract, Investment, Energy, Technology Transfer, Intellectual Property, International Trade');
INSERT INTO `arbitman_public` VALUES (896,'Y','00000915','','NUNN, Philip 林菲腊','NUNN, Philip 林菲腊','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (897,'Y','00000916','','O’NEILL, Philip D.','O’NEILL, Philip D.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (898,'Y','00000917','','ONG, Colin Yee Cheng','ONG, Colin Yee Cheng','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (899,'Y','00000918','','OYEKUNLE, Tinuade','OYEKUNLE, Tinuade','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (900,'Y','00000919','','PARK, William W','PARK, William W','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (901,'Y','00000920','','PAULSSON, Jan','PAULSSON, Jan','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (902,'Y','00000921','','PE, Robert San','PE, Robert San','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (903,'Y','00000922','','PEERENBOOM, Randall','PEERENBOOM, Randall','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (904,'Y','00000923','','PERCIVAL, Yvonne','PERCIVAL, Yvonne','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (905,'Y','00000924','','PERRY, Graham','PERRY, Graham','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (906,'Y','00000925','','PINTO, Moragodage Christopher Walter 平托','PINTO, Moragodage Christopher Walter 平托','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (907,'Y','00000926','','POTTER, Pitman B.','POTTER, Pitman B.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (908,'Y','00000927','','POW, Elson JiangWei  鲍江伟	','POW, Elson JiangWei  鲍江伟	','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (909,'Y','00000928','','PRYLES, Michael','PRYLES, Michael','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (910,'Y','00000929','','PUCCI，Adriana Noemi','PUCCI，Adriana Noemi','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (911,'Y','00000930','','PUGLIESE, Adriana Celso Fonseca','PUGLIESE, Adriana Celso Fonseca','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (912,'Y','00000931','qgl','QIAO, Gangliang 乔钢梁','QIAO, Gangliang 乔钢梁','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (913,'Y','00000932','','RAJOO, Sundra','RAJOO, Sundra','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (914,'Y','00000933','','REGHIZZI, Gabriele Crespi','REGHIZZI, Gabriele Crespi','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (915,'Y','00000934','','RIVKIN, David W.','RIVKIN, David W.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (916,'Y','00000935','','ROGERS, Andrew','ROGERS, Andrew','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (917,'Y','00000936','','ROUCHE, Jean','ROUCHE, Jean','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (918,'Y','00000937','','SAGE, Francois','SAGE, Francois','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (919,'Y','00000938','','SAGOT, Jacques','SAGOT, Jacques','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (920,'Y','00000939','','SANDBORG, David','SANDBORG, David','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (921,'Y','00000940','','SAVAGE, John','SAVAGE, John','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (922,'Y','00000941','','SCHWARTZ, Eric Alan','SCHWARTZ, Eric Alan','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (923,'Y','00000942','','SCOGIN, Hugh T. 宋格文','SCOGIN, Hugh T. 宋格文','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (924,'Y','00000943','','SEIFI, Jamal','SEIFI, Jamal','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (925,'Y','00000944','','SHACKLETON, Stewart R.','SHACKLETON, Stewart R.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (926,'Y','00000945','','SHAUGHNESSY, Patricia L.','SHAUGHNESSY, Patricia L.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (927,'Y','00000946','','SHILLINGLAW, Thomas L.','SHILLINGLAW, Thomas L.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (928,'Y','00000947','','SILLS, Robert L.','SILLS, Robert L.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (929,'Y','00000948','','SINGLETON, John Robinson','SINGLETON, John Robinson','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (930,'Y','00000949','xyy','SIU, Wing-Yee Sylvia 萧咏仪','SIU, Wing-Yee Sylvia 萧咏仪','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (931,'Y','00000950','','SLATE II, William K.','SLATE II, William K.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (932,'Y','00000951','','SNODEY, S. Richard','SNODEY, S. Richard','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (933,'Y','00000952','ssc','SO, Shiu Tsung Thomas 苏绍聪','SO, Shiu Tsung Thomas 苏绍聪','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (934,'Y','00000953','','STARR, Paul','STARR, Paul','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (935,'Y','00000954','','STIEBEI, Thomas R.','STIEBEI, Thomas R.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (936,'Y','00000955','','STREET, Laurence','STREET, Laurence','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (937,'Y','00000956','','STRICKER, Sabine H.','STRICKER, Sabine H.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (938,'Y','00000957','','SUMIDA, Gerald A.','SUMIDA, Gerald A.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (939,'Y','00000958','slg','SUNG,Wilson 宋利国','SUNG,Wilson 宋利国','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (940,'Y','00000959','','SUTTON, David St.John','SUTTON, David St.John','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (941,'Y','00000960','','SZURSKI, Habil Tadecsz','SZURSKI, Habil Tadecsz','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (942,'Y','00000961','','TACKABERRY,John A.','TACKABERRY,John A.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (943,'Y','00000962','cwd','TAN, Boon Teik 陈文德','TAN, Boon Teik 陈文德','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (944,'Y','00000963','ccf','TAN, Chong Huat 陈聪发','TAN, Chong Huat 陈聪发','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (945,'Y','00000964','crs','TAN, Johnson 陈仰圣','TAN, Johnson 陈仰圣','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (946,'Y','00000965','dgz','TANG, Ching Robert 邓国桢','TANG, Ching Robert 邓国桢','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (947,'Y','00000966','','TANIGUCHI, Yasuhei 谷口安平','TANIGUCHI, Yasuhei 谷口安平','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (948,'Y','00000967','tjz','TAO, Jingzhou 陶景洲','TAO, Jingzhou 陶景洲','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (949,'Y','00000968','','TERCIER, Pierre','TERCIER, Pierre','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (950,'Y','00000969','','THOMAS，Michael','THOMAS，Michael','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (951,'Y','00000970','','THOMSON, Claude','THOMSON, Claude','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (952,'Y','00000971','','HORP, Peter William 苏秉德','HORP, Peter William 苏秉德','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (953,'Y','00000972','','TO,Wing Christopher 陶荣','TO,Wing Christopher 陶荣','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (954,'Y','00000973','','TRAPPE,Johannes','TRAPPE,Johannes','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (955,'Y','00000974','','TRUFFAUT, Alain','TRUFFAUT, Alain','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (956,'Y','00000975','xfs','TSUI, Fuk Sun Michael 徐福燊','TSUI, Fuk Sun Michael 徐福燊','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (957,'Y','00000976','dgx','TUNG，Kwong Shien R. Terence 董光显','TUNG，Kwong Shien R. Terence 董光显','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (958,'Y','00000977','','VAN DEN BERG, Albert Jan','VAN DEN BERG, Albert Jan','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (959,'Y','00000978','','VEEDER, V.V.','VEEDER, V.V.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (960,'Y','00000979','','VEERARAGHAVAN, Inbavijayan','VEERARAGHAVAN, Inbavijayan','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (961,'Y','00000980','hxh','VONG, Hin Fai 黄显辉','VONG, Hin Fai 黄显辉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (962,'Y','00000981','','WAGONER, David E.','WAGONER, David E.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (963,'Y','00000982','wj','WALKER, Janet','WALKER, Janet','WALKER, Janet','加拿大/英国','Canada/U.K.','加拿大','Canada','0001,0006,','','国际私法、仲裁程序、比较民事诉讼、国际货物销售','Private International Law, Arbitration Procedure, Comparative Civil Procedure, International Sales of Goods');
INSERT INTO `arbitman_public` VALUES (964,'Y','00000983','wwj','WANG, Wen-Chieh 王文杰','WANG, Wen-Chieh 王文杰','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (965,'Y','00000984','','WARREN, Derril T.','WARREN, Derril T.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (966,'Y','00000985','','WERNER, Jacques','WERNER, Jacques','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (967,'Y','00000986','','WILLEMS, Jane 詹薇玲','WILLEMS, Jane 詹薇玲','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (968,'Y','00000987','','WILLIAMS, David A.R.','WILLIAMS, David A.R.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (969,'Y','00000988','','WIRES, David','WIRES, David','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (970,'Y','00000989','','WOLFF, Arthur','WOLFF, Arthur','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (971,'Y','00000990','wgx','WONG, Kwai Huen 王桂埙','WONG, Kwai Huen 王桂埙','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (972,'Y','00000991','wsq','WONG, Leonard 王胜泉','WONG, Leonard 王胜泉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (973,'Y','00000992','wps','WONG, Priscilla 王沛诗','WONG, Priscilla 王沛诗','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (974,'Y','00000993','','WOO, Thin Fook Kevin','WOO, Thin Fook Kevin','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (975,'Y','00000994','ycs','YANG, Chungsen杨崇森','YANG, Chungsen杨崇森','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (976,'Y','00000995','','YANG, Ing Loong 杨应龙 ','YANG, Ing Loong 杨应龙 ','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (977,'Y','00000996','','YANG, Lih Shying杨力行','YANG, Lih Shying杨力行','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (978,'Y','00000997','yly','YANG, Philip Liang-Yee 杨良宜','YANG, Philip Liang-Yee 杨良宜','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (979,'Y','00000998','','YORK, Stephen','YORK, Stephen','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (980,'Y','00000999','','YOUNG, Jack C. 杨泽麟','YOUNG, Jack C. 杨泽麟','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (981,'Y','00001000','yby','YUEN, Phillip P. Y. 阮北耀','YUEN, Phillip P. Y. 阮北耀','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (982,'Y','00001001','','ZELLER, Jacques','ZELLER, Jacques','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (983,'Y','00001002','zxc','ZHANG, Xianchu 张宪初','ZHANG, Xianchu 张宪初','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (984,'Y','00001003','','ZIMMERMAN, James M.','ZIMMERMAN, James M.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (985,'Y','00001004','lzh','刘炤','刘炤','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (986,'Y','00001005','jzy','KONG，Chungyau 江仲有','KONG，Chungyau 江仲有','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (987,'Y','00001006','','FRICK,Georges','FRICK,Georges','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (988,'Y','00001007','','JAMES,Jim','JAMES,Jim','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (989,'Y','00001008','','LWW,Tae Hee 李泰熙','LWW,Tae Hee 李泰熙','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (990,'Y','00001009','','Pitman B. Potter','Pitman B. Potter','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (991,'Y','00001010','','PARK,Wlliam W.','PARK,Wlliam W.','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (992,'Y','00001011','','ZHAO,Hang 赵杭','ZHAO,Hang 赵杭','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (993,'Y','00001012','wgy','王刚毅','王刚毅','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (994,'Y','00001013','wzx','汪祖兴','汪祖兴','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (995,'Y','00001014','','魏润泉','魏润泉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (996,'Y','00001015','','梁仁洁','梁仁洁','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (997,'Y','00001016','','朱建林','朱建林','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (998,'Y','00001017','','杨振山','杨振山','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (999,'Y','00001018','','邱年祝','邱年祝','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1000,'Y','00001019','','周焕东','周焕东','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1001,'Y','00001020','','宋太郎','宋太郎','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1002,'Y','00001021','','刘家兴','刘家兴','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1003,'Y','00001022','','许前飞','许前飞','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1004,'Y','00001023','','赵中孚','赵中孚','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1005,'Y','00001024','','陶正华','陶正华','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1006,'Y','00001025','','潘同龙','潘同龙','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1007,'Y','00001026','','邵景春','邵景春','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1008,'Y','00001027','rjs','任继圣','任继圣','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1009,'Y','00001028','ljl','李钜林','李钜林','','中国','','002','','0001,0006,','','','');
INSERT INTO `arbitman_public` VALUES (1010,'Y','00001029','','符启林','符启林','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1011,'Y','00001030','sxz','孙宪忠','孙宪忠','SUN Xianzhong','中国','China','北京','Beijing','0001,0006,','','物权法、合同法、房地产法','Property Law, Contract Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1012,'Y','00001031','','阮北耀','阮北耀','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1013,'Y','00001032','zyc','张永财','张永财','CHEUNG, Wing Choi Franki','中国','China','香港','Hong Kong','0001,0006,','','商业、外商投资法、合并与收购、特许经营、技术转让','Business Law, Foreign Investment Law, M&A, Franchise, Technology Transfer');
INSERT INTO `arbitman_public` VALUES (1014,'Y','00001033','','沈关生','沈关生','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1015,'Y','00001034','','黎孝先','黎孝先','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1016,'Y','00001035','','周忠海','周忠海','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1017,'N','00001036','ldb','梁定邦','梁定邦','','中国','','002','','','','','');
INSERT INTO `arbitman_public` VALUES (1018,'Y','00001037','','汤礼智','汤礼智','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1019,'Y','00001038','','刘文杰','刘文杰','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1020,'Y','00001039','','戚天常','戚天常','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1021,'Y','00001040','','李志华','李志华','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1022,'Y','00001041','','陈健','陈健','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1023,'Y','00001042','','郭寿康','郭寿康','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1024,'Y','00001043','','魏庆阳','魏庆阳','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1025,'Y','00001044','','冯华健','冯华健','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1026,'Y','00001045','','莫石','莫石','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1027,'Y','00001046','','夏文广','夏文广','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1028,'Y','00001047','zlh','张灵汉','张灵汉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1029,'Y','00001048','wxh','王雪华','王雪华','WANG Xuehua','中国','China','北京','Beijing','0001,0006,','','国际贸易法、外商投资法、特许经营法、合同法','International Trade Law, Foreign Investment Law, Franchise Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1030,'Y','00001049','','邱良发','邱良发','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1031,'Y','00001050','','罗世英','罗世英','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1032,'Y','00001051','','罗利伟','罗利伟','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1033,'Y','00001052','','廖益新','廖益新','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1034,'Y','00001053','','马锐','马锐','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1035,'Y','00001054','','董世忠','董世忠','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1036,'Y','00001055','','黄河','黄河','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1037,'Y','00001056','','张余庆','张余庆','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1038,'Y','00001057','','王生长','王生长','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1039,'Y','00001058','','史书声','史书声','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1040,'Y','00001059','','石畏三','石畏三','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1041,'Y','00001060','','陈泽政','陈泽政','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1042,'Y','00001061','','谭伟男','谭伟男','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1043,'Y','00001062','','华勤增','华勤增','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1044,'Y','00001063','','张松涛','张松涛','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1045,'Y','00001064','','翟玉华','翟玉华','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1046,'Y','00001065','','邹功富','邹功富','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1047,'Y','00001066','','刘慧珊','刘慧珊','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1048,'Y','00001067','','郑淑君','郑淑君','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1049,'Y','00001068','','曾俊伟','曾俊伟','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1050,'Y','00001069','tx','童新','童新','TONG Xin','中国','China','深圳','Shenzhen','0001,0006,','','房地产法、建设工程法、并购、合同法','Real Estate Law, Construction Engineering Law, M&A, Contract Law');
INSERT INTO `arbitman_public` VALUES (1051,'Y','00001070','gf','高峰','高峰','GAO Feng','中国','China','深圳','Shenzhen','0001,0006,','','金融法、建设工程法、公司法、不良资产管理','Finance Law, Construction Engineering Law, Corporate Law, Non-Performing Assets Management');
INSERT INTO `arbitman_public` VALUES (1052,'Y','00001071','gxm','郭小明','郭小明','GUO Xiaoming','中国','China','深圳','Shenzhen','0001,0006,','','民商法、经济法、知识产权','Civil and Commercial Law, Economic Law, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1053,'Y','00001072','zcj','邹灿基(Chow Charn Ki, Kenneth)','邹灿基(Chow Charn Ki, Kenneth)','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1054,'Y','00001073','wwh','王惟鸿','王惟鸿','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1055,'Y','00001074','dty','董铁英','董铁英','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1056,'Y','00001075','jhm','简慧敏','简慧敏','KAN, Wai Mun Carmen','中国','China','香港','Hong Kong','0001,0006,','','银行与融资、金融法、企业/债务重组','Banking and Financing, Financial Law, Enterprise/Debt Restructuring');
INSERT INTO `arbitman_public` VALUES (1057,'Y','00001076','ljw','梁景威','梁景威','LEUNG, King Wai William','中国','China','香港','Hong Kong','0001,0006,','','国际商业投资、国际贸易、航运、企业融资、上市、并购、资本市场、破产重组','International Commercial Investment, International Trade, Shipping, Enterprise Financing, IPO, M&A, Captial Market, Bankruptcy and Reorganization');
INSERT INTO `arbitman_public` VALUES (1058,'Y','00001077','sgl','苏国良','苏国良','SOO, Gary','中国','China','香港','Hong Kong','0001,0006,','','国际贸易、知识产权、合资、技术转让','International Trade, Intellectual Property, Joint Venture, Technology Transfer');
INSERT INTO `arbitman_public` VALUES (1059,'Y','00001078','bt','白涛','白涛','BAI, Tao','中国','China','香港','Hong Kong','0001,0006,','','外商投资法、国际贸易法、合同法、公司法','Foreign Investment Law, International Trade Law, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1060,'Y','00001079','lwb','李伟斌','李伟斌','LI, Wei Bin','中国','China','香港','Hong Kong','0001,0006,','','证券法、投资法、公司法、合同法','Securities Law, Investment Law, Corporate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1061,'Y','00001080','lz','黎哲','黎哲','LI, Zhe','中国','China','香港','Hong Kong','0001,0006,','','合同法、公司法、房地产法、并购与重组、国际投资法','Contract Law, Corporate Law, Real Estate Law, M&A and Restructuring, International Investment Law');
INSERT INTO `arbitman_public` VALUES (1062,'Y','00001081','fbx','冯秉熙','冯秉熙','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1063,'Y','00001082','xyl','谢银玲（HSIEH, Yin-Ling）','谢银玲（HSIEH, Yin-Ling）','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1064,'Y','00001083','wbj','王伯俭（Wang Po-Chien ）','王伯俭（Wang Po-Chien ）','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1065,'Y','00001084','hrc','黄日灿','黄日灿','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1066,'Y','00001085','','Esam Al Tamimi','Esam Al Tamimi','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1067,'Y','00001086','','Intisar UL Hasan','Intisar UL Hasan','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1068,'Y','00001087','','Dr. Mohamed S. ABDEL WAHAB','Dr. Mohamed S. ABDEL WAHAB','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1069,'Y','00001088','','Dr.Mohamed M. GOMAA','Dr.Mohamed M. GOMAA','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1070,'Y','00001089','','Nikolaus Pitkowitz','Nikolaus Pitkowitz','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1071,'Y','00001090','cjf','陈建福（Jianfu Chen)','陈建福（Jianfu Chen)','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1072,'Y','00001091','','Rick LIEW','Rick LIEW','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1073,'Y','00001092','','Rooney, Kim Margaret','Rooney, Kim Margaret','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1074,'Y','00001093','','Ingeborg Schwenzer','Ingeborg Schwenzer','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1075,'Y','00001094','zxq','郑晓青','郑晓青','ZHENG, Xiao Qing','德国','Germany','中国上海','China Shanghai','0001,0006,','','合同法、公司法、产品责任、国际贸易法','Contract Law, Corporate Law, Product Liability, International Trade Law');
INSERT INTO `arbitman_public` VALUES (1076,'Y','00001095','','Olivier Monange','Olivier Monange','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1077,'Y','00001096','','Lester Alvarado Flores','Lester Alvarado Flores','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1078,'Y','00001097','','Byung-Chol Yoon','Byung-Chol Yoon','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1079,'Y','00001098','cry','崔容远(CHOI Yongwon)','崔容远(CHOI Yongwon)','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1080,'Y','00001099','','Jeong-il Suh','Jeong-il Suh','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1081,'Y','00001100','jzj','金钟吉','金钟吉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1082,'Y','00001101','clx','陈凌新(Chan Leng Sun)','陈凌新(Chan Leng Sun)','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1083,'Y','00001102','','Benjamin F. Hughes III ','Benjamin F. Hughes III ','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1084,'Y','00001103','krd','柯瑞德(David Laurence KREIDER )','柯瑞德(David Laurence KREIDER )','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1085,'Y','00001104','','Donald Francis Donovan','Donald Francis Donovan','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1086,'Y','00001105','','George Alan Bermann','George Alan Bermann','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1087,'Y','00001106','','Michael K.Young','Michael K.Young','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1088,'Y','00001107','','William Campbell','William Campbell','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1089,'Y','00001108','crw','蔡荣伟','蔡荣伟','CAI, Rong Wei','美国','U.S.A.','中国上海','China Shanghai','0001,0006,','','银行与金融、并购、媒体娱乐、互联网与电子商务','Banking and Financing, M&A, Media and Entertainment, Internet and E-commerce');
INSERT INTO `arbitman_public` VALUES (1090,'Y','00001109','','Finn Madsen','Finn Madsen','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1091,'Y','00001110','','FOHLIN Johan Paulo','FOHLIN Johan Paulo','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1092,'Y','00001111','','Jakob Ragnwaldh','Jakob Ragnwaldh','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1093,'Y','00001112','','Gabrielle Kaufmann-Kohler','Gabrielle Kaufmann-Kohler','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1094,'Y','00001113','lj','李剑(John (AKA Jean-Christophe) LIEBESKIND)','李剑(John (AKA Jean-Christophe) LIEBESKIND)','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1095,'Y','00001114','','José Félix de Luis y Lorenzo','José Félix de Luis y Lorenzo','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1096,'Y','00001115','','Dr.Mohsen MOHEBI','Dr.Mohsen MOHEBI','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1097,'Y','00001116','','Christopher Richard Derwent Moger','Christopher Richard Derwent Moger','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1098,'Y','00001117','','Michael Tselentis QC','Michael Tselentis QC','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1099,'Y','00001118','','Eliel Hasson Nisis','Eliel Hasson Nisis','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1100,'Y','00001119','','Juan Martin Perrotto','Juan Martin Perrotto','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1101,'Y','00001120','','Teresa Giovannini','Teresa Giovannini','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1102,'Y','00001121','','Martin Rogers','Martin Rogers','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1103,'Y','00001122','','Susan Finder','Susan Finder','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1104,'Y','00001123','scj','史翠君','史翠君','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1105,'Y','00001124','qjr','仇京荣','仇京荣','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1106,'Y','00001125','dhm','丁化美','丁化美','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1107,'Y','00001126','hr','黄瑞','黄瑞','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1108,'Y','00001127','jhs','金海淑','金海淑','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1109,'Y','00001128','lcl','李成林','李成林','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1110,'Y','00001129','lzy','李中根','李中根','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1111,'Y','00001130','lzy','李祝用','李祝用','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1112,'Y','00001131','qc','邱闯','邱闯','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1113,'Y','00001132','sdh','孙大洪','孙大洪','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1114,'Y','00001133','shh','孙含会','孙含会','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1115,'Y','00001134','sh','孙皓','孙皓','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1116,'Y','00001135','whl','王宏力','王宏力','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1117,'Y','00001136','wjg','王甲国','王甲国','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1118,'Y','00001137','wyg','王耀国','王耀国','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1119,'Y','00001138','wyq','王益群','王益群','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1120,'Y','00001139','xzy','徐志远','徐志远','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1121,'Y','00001140','yyt','杨运涛','杨运涛','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1122,'Y','00001141','yy','尤勇','尤勇','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1123,'Y','00001142','zlz','张拉柱','张拉柱','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1124,'Y','00001143','zlm','张立明','张立明','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1125,'Y','00001144','zcw','郑聪伟','郑聪伟','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1126,'Y','00001145','th','田辉','田辉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1127,'Y','00001146','pjz','彭金柱','彭金柱','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1128,'Y','00001147','lgy','刘国元','刘国元','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1129,'Y','00001148','cj','崔军','崔军','CUI Jun','中国','China','深圳','Shenzhen','0001,0006,','','知识产权、国际贸易法、技术转让法、合资与合作','Intellectual Property, International Trade Law, Technology Transfer Law, Equity and Contractual Joint Ventures');
INSERT INTO `arbitman_public` VALUES (1130,'Y','00001149','dd','丁丁','丁丁','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1131,'Y','00001150','dnq','董念清','董念清','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1132,'Y','00001151','dhf','杜焕芳','杜焕芳','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1133,'Y','00001152','hsy','韩世远','韩世远','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1134,'Y','00001153','jdx','蒋大兴','蒋大兴','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1135,'Y','00001154','lsm','李时民','李时民','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1136,'Y','00001155','sxl','史晓丽','史晓丽','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1137,'Y','00001156','shp','苏号朋','苏号朋','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1138,'Y','00001157','wsz','王世洲','王世洲','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1139,'Y','00001158','jrj','姜茹娇','姜茹娇','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1140,'Y','00001159','bt','白涛','白涛','','','','','','','','','');
INSERT INTO `arbitman_public` VALUES (1141,'Y','00001160','cyd','陈耀东','陈耀东','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1142,'Y','00001161','ff','方芳','方芳','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1143,'Y','00001162','gg','郭光','郭光','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1144,'Y','00001163','gxq','郭筱琦','郭筱琦','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1145,'Y','00001164','hcn','韩春宁','韩春宁','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1146,'Y','00001165','hl','花雷','花雷','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1147,'Y','00001166','lyl','李云丽','李云丽','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1148,'Y','00001167','lsh','廖胜辉','廖胜辉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1149,'Y','00001168','lj','刘净','刘净','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1150,'Y','00001169','wh','王慧','王慧','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1151,'Y','00001170','wlh','王丽华','王丽华','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1152,'Y','00001171','wzz','王正志','王正志','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1153,'Y','00001172','xlj','谢利锦','谢利锦','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1154,'Y','00001173','xm','徐猛','徐猛','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1155,'Y','00001174','yg','杨光','杨光','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1156,'Y','00001175','yyh','杨育红','杨育红','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1157,'Y','00001176','zhf','张和伏','张和伏','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1158,'Y','00001177','zxl','郑曦林','郑曦林','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1159,'Y','00001178','zgj','周广俊','周广俊','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1160,'Y','00001179','zhx','周厚兴','周厚兴','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1161,'Y','00001180','cxm','崔新民','崔新民','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1162,'Y','00001181','jyn','焦亚尼','焦亚尼','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1163,'Y','00001182','wy','汪翌','汪翌','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1164,'Y','00001183','wzp','魏子平','魏子平','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1165,'Y','00001184','lyf','林云峰','林云峰','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1166,'Y','00001185','xw','徐伟','徐伟','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1167,'Y','00001186','zlf','张鲁风','张鲁风','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1168,'Y','00001187','jzp','蒋志培','蒋志培','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1169,'Y','00001188','lj','黎军','黎军','LI Jun','中国','China','深圳','Shenzhen','0001,0006,','','合同法、民商法','Contract Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1170,'Y','00001189','lm','李梅','李梅','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1171,'Y','00001190','lyh','李艺虹','李艺虹','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1172,'Y','00001191','llf','刘兰芳','刘兰芳','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1173,'Y','00001192','bjs','巴劲松','巴劲松','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1174,'Y','00001193','cbl','陈百灵','陈百灵','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1175,'Y','00001194','wsm','王世民','王世民','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1176,'Y','00001195','lym','刘玉明','刘玉明','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1177,'Y','00001196','lxg','卢锡光','卢锡光','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1178,'Y','00001197','czq','岑兆琦','岑兆琦','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1179,'Y','00001198','lhh','刘虹环','刘虹环','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1180,'Y','00001199','xy','徐勇','徐勇','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1181,'Y','00001200','mhj','马慧娟','马慧娟','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1182,'Y','00001201','srl','宋瑞霖','宋瑞霖','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1183,'Y','00001202','zxj','赵锡军','赵锡军','ZHAO Xijun','中国','China','南宁','Nanning','0001,0006,','','金融法、银行业监管法、金融衍生品、供应链','Financial Law, Banking Supervision Law, Financial Derivatives, Supply Chain');
INSERT INTO `arbitman_public` VALUES (1184,'Y','00001203','lcl','冷传莉','冷传莉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1185,'Y','00001204','yjm','岳建明','岳建明','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1186,'Y','00001205','xwl','徐文莉','徐文莉','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1187,'Y','00001206','yhx','郁红祥','郁红祥','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1188,'Y','00001207','yb','姚彬','姚彬','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1189,'Y','00001208','jmk','江明开','江明开','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1190,'Y','00001209','hlx','韩立新','韩立新','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1191,'Y','00001210','ljs','李建松','李建松','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1192,'Y','00001211','wq','王强','王强','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1193,'Y','00001212','cxj','陈晓军','陈晓军','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1194,'Y','00001213','wwl','闻万里','闻万里','WEN Wanli','中国','China','上海','Shanghai','0001,0006,','','公司法、金融法、国际经济法','Corporate Law, Financial Law, International Economic Law');
INSERT INTO `arbitman_public` VALUES (1195,'Y','00001214','hsg','胡曙光','胡曙光','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1196,'Y','00001215','mxs','马新生','马新生','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1197,'Y','00001216','xzj','徐志炯','徐志炯','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1198,'Y','00001217','zz','朱珠','朱珠','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1199,'Y','00001218','hxy','贺小勇','贺小勇','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1200,'Y','00001219','cl','陈乐','陈乐','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1201,'Y','00001220','lh','李红','李红','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1202,'Y','00001221','ljh','林建华','林建华','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1203,'Y','00001222','qs','裘索','裘索','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1204,'Y','00001223','gh','顾华','顾华','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1205,'Y','00001224','wwj','王唯骏','王唯骏','WANG Weijun','中国','China','上海','Shanghai','0001,0006,','','国际贸易法、合同法、公司法','International Trade Law, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1206,'Y','00001225','dt','戴涛','戴涛','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1207,'Y','00001226','cc','陈昶','陈昶','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1208,'Y','00001227','lzd','刘忠定','刘忠定','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1209,'Y','00001228','lgq','吕国强','吕国强','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1210,'Y','00001229','zza','张振安','张振安','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1211,'Y','00001230','zz','张哲','张哲','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1212,'Y','00001231','wq','王琼','王琼','WANG Qiong','中国','China','上海','Shanghai','0001,0006,','','合同法、公司法、房地产法、金融法','Contract Law, Corporate Law, Real Estate Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (1213,'Y','00001232','gjx','郭俊秀','郭俊秀','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1214,'Y','00001233','lzd','刘正东','刘正东','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1215,'Y','00001234','hf','黄峰','黄峰','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1216,'Y','00001235','lgp','林国平','林国平','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1217,'Y','00001236','cst','程守太','程守太','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1218,'Y','00001237','yjh','杨建红','杨建红','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1219,'Y','00001238','cwx','崔武学','崔武学','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1220,'Y','00001239','hhf','何红锋','何红锋','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1221,'Y','00001240','bxy','白显月','白显月','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1222,'Y','00001241','hg','韩刚','韩刚','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1223,'Y','00001242','lb','李滨','李滨','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1224,'Y','00001243','swh','单文华','单文华','SHAN Wenhua','中国','China','西安','Xi\'an','0001,0006,','','国际投资法、国际贸易法、国际商法、合同法','International Investment Law, International Trade Law, International Commercial Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1225,'Y','00001244','th','邰红','邰红','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1226,'Y','00001245','hzx','胡志翔','胡志翔','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1227,'Y','00001246','mw','马巍','马巍','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1228,'Y','00001247','zy','赵耀','赵耀','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1229,'Y','00001248','cyd','陈云东','陈云东','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1230,'Y','00001249','wqw','吴清旺','吴清旺','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1231,'Y','00001250','zjz','章靖忠','章靖忠','ZHANG Jingzhong','中国','China','杭州','Hangzhou','0001,0006,','','合同法、房地产法、公司法、融资','Contract Law, Real Estate Law, Corporate Law, Financing');
INSERT INTO `arbitman_public` VALUES (1232,'Y','00001251','hys','华渝生','华渝生','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1233,'Y','00001252','ys','俞舒','俞舒','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1234,'Y','00001253','zyc','张永超','张永超','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1235,'Y','00001254','zxj','张晓君','张晓君','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1236,'Y','00001255','fdq','傅达清','傅达清','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1237,'Y','00001256','ll','李理','李理','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1238,'Y','00001257','yxb','袁小彬','袁小彬','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1239,'Y','00001258','swj','商文江','商文江','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1240,'Y','00001259','wy','吴越','吴越','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1241,'Y','00001260','lxy','刘小勇','刘小勇','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1242,'Y','00001261','hfm','韩方明','韩方明','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1243,'Y','00001262','hs','何山','何山','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1244,'Y','00001263','gps','高晋康','高晋康','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1245,'Y','00001264','tl','田莉','田莉','TIAN Li','中国','China','广州','Guangzhou','0001,0006,','','合同法、银行法、信用证、金融创新','Contract Law, Bank Law, Letter of Credit, Financial Innovation');
INSERT INTO `arbitman_public` VALUES (1246,'Y','00001265','cwb','蔡伟斌','蔡伟斌','CAI Weibin','中国','China','深圳','Shenzhen','0001,0006,','','企业国有资产法、公司法、合同法','State-Owned Assets Law, Corporate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1247,'Y','00001266','cwh','陈威华','陈威华','CHEN Weihua','中国','China','广州','Guangzhou','0001,0006,','','公司法、合同法、民航法、证券法','Corporate Law, Contract Law, Civil Aviation Law, Securities Law');
INSERT INTO `arbitman_public` VALUES (1248,'N','00001267','gxm','郭小明','郭小明','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1249,'Y','00001268','hq','胡芹','胡芹','HU Qin','中国','China','深圳','Shenzhen','0001,0006,','','资产重组、并购、公司法、企业管理','Assets Reorganization, M&A, Corporate Law, Business Management');
INSERT INTO `arbitman_public` VALUES (1250,'Y','00001269','hzh','黄章辉','黄章辉','HUANG Zhanghui','中国','China','深圳','Shenzhen','0001,0006,','','专利、商标、著作权、技术及经济合同','Patent, Trademark, Copyright, Technical and Economic Contract');
INSERT INTO `arbitman_public` VALUES (1251,'Y','00001270','lw','厉伟','厉伟','LI Wei','中国','China','深圳','Shenzhen','0001,0006,','','风险投资','Venture Capital');
INSERT INTO `arbitman_public` VALUES (1252,'Y','00001271','spp','宋萍萍','宋萍萍','SONG Pingping','中国','China','深圳','Shenzhen','0001,0006,','','证券投资基金、产业投资基金、上市、再融资、上市公司重组','Securities Investment Funds, Industry Investment Funds, IPO, Refinancing, Reorganization of Listed Companies');
INSERT INTO `arbitman_public` VALUES (1253,'Y','00001272','lz','刘中','刘中','LIU Zhong','中国','China','深圳','Shenzhen','0001,0006,','','房地产法、建设工程法、合同法、公司法','Real Estate Law, Construction Engineering Law, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1254,'Y','00001273','lf','罗飞','罗飞','LUO Fei','中国','China','深圳','Shenzhen','0001,0006,','','风险投资','Venture Capital');
INSERT INTO `arbitman_public` VALUES (1255,'Y','00001274','pqw','彭庆伟','彭庆伟','PENG Qingwei','中国','China','深圳','Shenzhen','0001,0006,','','公司法、证券法、房地产法、合同法','Corporate Law, Securities Law, Real Estate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1256,'Y','00001275','whx','王宏喜','王宏喜','WANG Hongxi','中国','China','广州','Guangzhou','0001,0006,','','公司法、房地产法、合同法、担保法、民商法','Corporate Law, Real Estate Law, Contract Law, Guaranty Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1257,'Y','00001276','wy','王宇','王宇','WANG Yu','中国','China','深圳','Shenzhen','0001,0006,','','合同法、国际贸易法、公司法、海商法','Contract Law, International Trade Law, Corporate Law, Maritime Law');
INSERT INTO `arbitman_public` VALUES (1258,'Y','00001277','wxh','吴晓晖','吴晓晖','WU Xiaohui','中国','China','广州','Guangzhou','0001,0006,','','公司法、合同法、建设工程法、矿产法律事务','Corporate Law, Contract Law, Construction Engineering Law, Legal Affairs of Minerals');
INSERT INTO `arbitman_public` VALUES (1259,'Y','00001278','yj','姚军','姚军','YAO Jun','中国','China','深圳','Shenzhen','0001,0006,','','公司法、证券法、保险法、民法','Corporate Law, Securities Law, Insurance Law, Civil Law');
INSERT INTO `arbitman_public` VALUES (1260,'Y','00001279','zym','周玉明','周玉明','ZHOU Yuming','中国','China','广州','Guangzhou','0001,0006,','','金融法、税法、企业管理','Financial Law, Tax Law, Business Management');
INSERT INTO `arbitman_public` VALUES (1261,'Y','00001280','myp','慕亚平','慕亚平','MU Yaping','中国','China','广州','Guangzhou','0001,0006,','','国际投资法、合同法、国际贸易法、外商投资法','International Investment Law, Contract Law, International Trade Law, Foreign Investment Law');
INSERT INTO `arbitman_public` VALUES (1262,'Y','00001281','dww','窦文伟','窦文伟','DOU Wenwei','中国','China','深圳','Shenzhen','0001,0006,','','合同法、保险法','Contract Law, Insurance Law');
INSERT INTO `arbitman_public` VALUES (1263,'Y','00001282','ly','刘颖','刘颖','LIU Ying','中国','China','广州','Guangzhou','0001,0006,','','网络与电子商务法、国际经济法、金融法、民商法','Internet and E-Commerce Law, International Economic Law, Financial Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1264,'N','00001283','gf','高峰','高峰','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1265,'Y','00001284','hsz','黄思周','黄思周','HUANG Sizhou','中国','China','深圳','Shenzhen','0001,0006,','','投资法、国际贸易法、房地产法、公司法律业务','Investment Law, International Trade Law, Real Estate Law, Corporate Legal Affairs');
INSERT INTO `arbitman_public` VALUES (1266,'Y','00001285','lcq','刘澄清','刘澄清','LIU Chengqing','中国','China','深圳','Shenzhen','0001,0006,','','公司法、合同法、对外投资法、房地产法','Corporate Law, Contract Law, Foreign Investment Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1267,'Y','00001286','tyq','谭岳奇','谭岳奇','TAN Yueqi','中国','China','深圳','Shenzhen','0001,0006,','','国际货物买卖合同、国际产品质量、知识产权','International Sales of Goods, International Product Liability, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1268,'Y','00001287','oyl','欧永良','欧永良','OU Yongliang','中国','China','广州','Guangzhou','0001,0006,','','公司法、合同法、房地产法、投资法','Corporate Law, Contract Law, Real Estate Law, Investment Law');
INSERT INTO `arbitman_public` VALUES (1269,'Y','00001288','qbm','钱伯明','钱伯明','QIAN Boming','中国','China','深圳','Shenzhen','0001,0006,','','公司法、证券法、房地产和基础建设法律事务','Corporate Law, Securities Law, Legal Affairs Related to Real Estate and Infrastructure Construction');
INSERT INTO `arbitman_public` VALUES (1270,'Y','00001289','tzq','陶章启','陶章启','TAO Zhangqi','中国','China','深圳','Shenzhen','0001,0006,','','房地产法、基础设施建设、合同法、公司法','Real Estate Law, Infrastructure Construction, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1271,'Y','00001290','wym','吴友明','吴友明','WU Youming','中国','China','珠海','Zhuhai','0001,0006,','','公司法、合同法、建设工程法、房地产法、知识产权','Corporate Law, Contract Law, Construction Engineering Law, Real Estate Law, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1272,'Y','00001291','yj','颜俊','颜俊','YAN Jun','中国','China','广州','Guangzhou','0001,0006,','','基础设施投资建设、外资并购、公司法、金融法','Infrastructure Investment and Construction, Foreign Capital M&A, Corporate Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (1273,'Y','00001292','ax','安欣','安欣','AN Xin','中国','China','深圳','Shenzhen','0001,0006,','','仲裁法、合同法、国际贸易','Arbitration Law, Contract Law, International Trade');
INSERT INTO `arbitman_public` VALUES (1274,'Y','00001293','zzy','周子友','周子友','ZHOU Ziyou','中国','China','深圳','Shenzhen','0001,0006,','','市政基础设施、建设工程、房地产','Municipal Infrastructure Facilities, Construction Engineering, Real Estate');
INSERT INTO `arbitman_public` VALUES (1275,'Y','00001294','sx','苏醒','苏醒','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1276,'Y','00001295','wgq','吴国权','吴国权','WU Guoquan','中国','China','广州','Guangzhou','0001,0006,','','外商投资法、融资、贸易法、合同法、知识产权','Foreign Investment Law, Financing, Trade Law, Contract Law, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1277,'N','00001296','tx','童新','童新','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1278,'Y','00001297','jb','江波','江波','JIANG Bo','中国','China','广州','Guangzhou','0001,0006,','','房地产法、建设工程法、国际贸易法、公司法','Real Estate Law, Construction Engineering Law, International Trade Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1279,'Y','00001298','lrj','梁仁洁','梁仁洁','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1280,'Y','00001299','ycd','袁成第','袁成第','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1281,'N','00001300','gzz','高宗泽','高宗泽','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1282,'Y','00001301','pgh','潘戈环','潘戈环','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1283,'Y','00001302','dyg','董有淦','董有淦','','','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1284,'Y','00001303','lk','鲁楷','鲁楷','LU Kai','中国','China','深圳','Shenzhen','0006,','','合同法、公司法、房地产法','Contract Law, Corporate Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1285,'Y','00001304','zxl','赵显龙','赵显龙','ZHAO Xianlong','中国','China','深圳','Shenzhen','0006,','','房地产法、建设工程法、公司法、证券法','Real Estate Law, Construction Engineering Law, Corporate Law, Securities Law');
INSERT INTO `arbitman_public` VALUES (1286,'Y','00001305','hxz','黄祥钊','黄祥钊','HUANG Xiangzhao','中国','China','深圳','Shenzhen','0006,','','仲裁法、民商法、房地产法','Arbitration Law, Civil and Commercial Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1287,'Y','00001306','zjw','张建伟','张建伟','ZHANG Jianwei','中国','China','深圳','Shenzhen','0006,','','公司法、信托、资本市场、金融及贸易','Corporate Law, Trust, Capital Market, Finance and Trade');
INSERT INTO `arbitman_public` VALUES (1288,'Y','00001307','zxh','张新华','张新华','ZHANG Xinhua','中国','China','北京','Beijing','0001,0006,','','期货、证券、基金、创投','Futures, Securities, Funds, Venture Capital');
INSERT INTO `arbitman_public` VALUES (1289,'Y','00001308','wxx','王小夏','王小夏','WANG Xiaoxia','中国','China','深圳','Shenzhen','0006,','','知识产权、电子商务、文化传媒、信息网络','Intellectual Property, E-Commerce, Cultural Media, Information and Internet');
INSERT INTO `arbitman_public` VALUES (1290,'Y','00001309','jxw','蒋小文','蒋小文','JIANG Xiaowen','中国','China','深圳','Shenzhen','0006,','','合同法、房地产法、投资法','Contract Law, Real Estate Law, Investment Law');
INSERT INTO `arbitman_public` VALUES (1291,'Y','00001310','cwm','崔为民','崔为民','CUI Weimin','中国','China','深圳','Shenzhen','0006,','','房地产法、合同法、经济法','Real Estate Law, Contract Law, Economic Law');
INSERT INTO `arbitman_public` VALUES (1292,'Y','00001311','fjh','范剑虹','范剑虹','FAN, Jian Hong','中国','China','澳门','Macau','0006,','','投资法、公司法、合同法、解雇法','Investment Law, Corporate Law, Contract Law, Dismissal Law');
INSERT INTO `arbitman_public` VALUES (1293,'Y','00001312','fjb','冯健埠','冯健埠','FENG, Jian Bu','中国','China','澳门','Macau','0006,','','商事纠纷','Commercial Dispute');
INSERT INTO `arbitman_public` VALUES (1294,'Y','00001313','ltx','冷铁勋','冷铁勋','','中国','','','','0006,','','','');
INSERT INTO `arbitman_public` VALUES (1295,'Y','00001314','lxy','林笑云','林笑云','LIN, Xiao Yun','中国','China','澳门','Macau','0006,','','澳门商法、债法、物权法','Macau Commercial Law, Debt Law, Property Law');
INSERT INTO `arbitman_public` VALUES (1296,'Y','00001315','hxh','黄显辉','黄显辉','VONG, Hin Fai','中国','China','澳门','Macau','0006,','','澳门法、经济法','Macau Law, Economic Law');
INSERT INTO `arbitman_public` VALUES (1297,'Y','00001316','zyf','赵玉阜','赵玉阜','ZHAO, Yu Fu','中国','China','澳门','Macau','0006,','','海事海商、涉外纠纷、合同、公司改制','Maritime and Marine, Foreign Related Dispute, Contract, Corporate Restructure');
INSERT INTO `arbitman_public` VALUES (1298,'Y','00001317','xxj','谢学军','谢学军','XIE Xuejun','中国','China','北京','Beijing','0006,','','风险投资、股权投资、外商投资','Venture Capital, Equity Investment, Foreign Investment');
INSERT INTO `arbitman_public` VALUES (1299,'Y','00001318','yf','余峰','余峰','YU Feng','中国','China','深圳','Shenzhen','0006,','','股权投资、公司法、合同法、金融法','Equity Investment, Coporate Law, Contract Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (1300,'Y','00001319','ccw','陈长文','陈长文','CHEN, Charng-Ven','中国','China','台湾','Taiwan','0006,','','跨国法律问题','Cross-border Legal Issues');
INSERT INTO `arbitman_public` VALUES (1301,'Y','00001320','cxj','陈希佳','陈希佳','CHEN, Helena H.C.','中国','China','台湾','Taiwan','0006,','','建筑工程、跨境投资、并购、国际贸易、合同法','Construction Engineering, International Investment, M&A, International Trade, Contract Law');
INSERT INTO `arbitman_public` VALUES (1302,'Y','00001321','jrh','焦仁和','焦仁和','CHIAO, JEN-HO','中国','China','台湾','Taiwan','0006,','','民法、商法、侵权法、商品责任','Civil Law, Commercial Law, Tort Law, Goods Responsibility');
INSERT INTO `arbitman_public` VALUES (1303,'Y','00001322','zlr','朱丽容','朱丽容','CHU, Lih-Yung','中国','China','台湾','Taiwan','0006,','','经贸投资、公司与商事交易、工程与项目融资、银行与金融','Economic and Trade Investment, Corporate and Commerical Trade, Engineering and Project Financing, Banking and Finance');
INSERT INTO `arbitman_public` VALUES (1304,'Y','00001323','xwt','谢文田','谢文田','HSIEH, Wen Tien','中国','China','台湾','Taiwan','0006,','','商事仲裁、工程仲裁','Commercial Arbitration, Engineering Arbitration');
INSERT INTO `arbitman_public` VALUES (1305,'Y','00001324','gjz','古嘉谆','古嘉谆','KU, Chia-Chun','中国','China','台湾','Taiwan','0006,','','国际贸易法、建筑工程法、合同法、公司法','International Trade Law, Construction Engineering Law, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1306,'Y','00001325','gqb','郭清宝','郭清宝','KUO, Ching -Pao(Kevin Kuo）','中国','China','台湾','Taiwan','0006,','','国际贸易、并购、经济法、合同法、房地产','International Trade, M&A, Economic Law, Contract Law, Real Estate');
INSERT INTO `arbitman_public` VALUES (1307,'Y','00001326','ljq','李家庆','李家庆','LEE, Chia Ching','中国','China','台湾','Taiwan','0006,','','合资合同、知识产权、建筑工程、国际贸易','Joint Venture Contract, Intellectual Property, Cons-truction Engineering, International Trade');
INSERT INTO `arbitman_public` VALUES (1308,'Y','00001327','lnz','李念祖','李念祖','LI, Nien-Tsu(Nigel)','中国','China','台湾','Taiwan','0006,','','争议调解与仲裁、传媒法','Dispute Resolution and Arbitration, Media Law');
INSERT INTO `arbitman_public` VALUES (1309,'Y','00001328','lyr','李永然','李永然','LI, Yong Ran','中国','China','台湾','Taiwan','0006,','','房地产法、知识产权法、大陆投资、政府采购','Real Estate Law, Intellectual Property Law, Investment to Mainland China, Government Procurement');
INSERT INTO `arbitman_public` VALUES (1310,'Y','00001329','lym','刘阳明','刘阳明','LIU, Yang-Min','中国','China','台湾','Taiwan','0006,','','证券金融、公司治理、并购、投资、不良债权处理','Securities and Finance, Corprate Governance, M&A, Investment, Processing in the Non-Performing Loans');
INSERT INTO `arbitman_public` VALUES (1311,'Y','00001330','chl','陈亨利','陈亨利','CHAN, Henry','中国','China','香港','Hong Kong','0006,','','香港法、公司法、商业法、合同法','Hong Kong Law, Corporate Law, Business Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1312,'Y','00001331','cmq','陈曼琪','陈曼琪','CHAN, Man Ki Maggie','中国','China','香港','Hong Kong','0006,','','保险、民商法、物业权益、商业合同','Insurance, Civil and Commercial Law, Property and Commercial Contract');
INSERT INTO `arbitman_public` VALUES (1313,'Y','00001332','cyq','陈耀棋','陈耀棋','CHAN, Yiu Kei','中国','China','香港','Hong Kong','0006,','','海事仲裁、海商法、国际贸易','Maritime Arbitration, Maritime Law, International Trade');
INSERT INTO `arbitman_public` VALUES (1314,'Y','00001333','zgj','张国杰','张国杰','CHEUNG, Kwok Kit','中国','China','香港','Hong Kong','0006,','','建筑法、商业法','Construction Law, Commercial Law');
INSERT INTO `arbitman_public` VALUES (1315,'Y','00001334','zgj','张国钧','张国钧','CHEUNG, Kwok Kwan','中国','China','香港','Hong Kong','0006,','','国际贸易法、民商法、知识产权法、建筑法、房地产法','International Trade Law, Civil and Commercial Law, Intellectual Property Law, Construction Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1316,'Y','00001335','zl','张玲','张玲','CHEUNG, Ling','中国','China','香港','Hong Kong','0006,','','外商投资法、合同法、公司法、担保法','Foreign Investment Law, Contract Law, Corporate Law and Guaranty Law');
INSERT INTO `arbitman_public` VALUES (1317,'Y','00001336','zsk','赵颂凯','赵颂凯','CHIU, Chung Hoi','中国','China','香港','Hong Kong','0006,','','商业法、会计','Commercial Law, Accounting');
INSERT INTO `arbitman_public` VALUES (1318,'Y','00001337','zcj','邹灿基','邹灿基','CHOW, Charn Ki','中国','China','香港','Hong Kong','0006,','','香港内地法律冲突及比较、银行担保及信用证、商务及国际贸易、合同及公司法','Cross-Hong Kong Legal Conflict and Comparison, Bank Guarantees and L/C, Business and International Trade, Contract and Corporate Law');
INSERT INTO `arbitman_public` VALUES (1319,'Y','00001338','zzl','周卓立','周卓立','CHOW, Cheuk Lap','中国','China','香港','Hong Kong','0006,','','金融、公司法、跨境法律','Finance, Corporate Law, Cross-border Law');
INSERT INTO `arbitman_public` VALUES (1320,'Y','00001339','zyj','周永健','周永健','CHOW, Wing Kin Anthony','中国','China','香港','Hong Kong','0006,','','公司法、商业交易、贸易及房地产','Corporate Law, Commercial Transaction, Trading, Real Estate');
INSERT INTO `arbitman_public` VALUES (1321,'Y','00001340','djx','董江雄','董江雄','DONG, Jiang Xiong','中国','China','香港','Hong Kong','0006,','','中国专利法、中国商标法','PRC Patent Law, PRC Trademark Law');
INSERT INTO `arbitman_public` VALUES (1322,'Y','00001341','gmk','顾敏康','顾敏康','GU, Min Kang','中国','China','香港','Hong Kong','0006,','','国际商法、国际经济法','International Commercial Law, International Economic Law');
INSERT INTO `arbitman_public` VALUES (1323,'Y','00001342','hjy','何君尧','何君尧','HO, Kwan Yiu','中国','China','香港','Hong Kong','0006,','','公司法、公司清盘/接管、商业法','Corporate Law, Company Liquidation/Receivership, Commercial Law');
INSERT INTO `arbitman_public` VALUES (1324,'Y','00001343','hbs','黄伯胜','黄伯胜','HUANG, Bo Sheng','中国','China','香港','Hong Kong','0006,','','合同、国际商事、中外投资、房地产','Contract, International Commerce, Sino-foreign Investment, Real Estate');
INSERT INTO `arbitman_public` VALUES (1325,'Y','00001344','kfp','邝凤萍','邝凤萍','KWONG, FungPing Giovanna','中国','China','香港','Hong Kong','0006,','','商业、建筑、金融、保险、药业及生命科学','Commerce, Construction, Finance, Insurance, Pharmaceutical and Life Sciences');
INSERT INTO `arbitman_public` VALUES (1326,'Y','00001345','ljj','林濬浚','林濬浚','LAM, Chun Daniel','中国','China','香港','Hong Kong','0006,','','房地产发展及建筑、铁道沿线及上盖区域发展、商业合约、国际合约','Real Estate Development and Construction, Developments Above and Along Railways, Commercial Contract, International Contract');
INSERT INTO `arbitman_public` VALUES (1327,'Y','00001346','ljq','李剑强','李剑强','LEE, James','中国','China','香港','Hong Kong','0006,','','建筑工程、不动产转让、城镇规划与土地、合同','Construction, Conveyancing, Town Planning & Land, Contract');
INSERT INTO `arbitman_public` VALUES (1328,'Y','00001347','lmf','梁美芬','梁美芬','LEUNG, M.F.Priscilla','中国','China','香港','Hong Kong','0006,','','民法、商法、网络法、国际贸易','Civil Law, Commercial Law, Cyber Law, International Trade');
INSERT INTO `arbitman_public` VALUES (1329,'Y','00001348','las','梁爱诗','梁爱诗','LEUNG, Oi-sie Elsie','中国','China','香港','Hong Kong','0006,','','中国贸易、公共法','Chinese Trade, Public Law');
INSERT INTO `arbitman_public` VALUES (1330,'Y','00001349','lwq','梁伟强','梁伟强','LEUNG, Wai-Keung','中国','China','香港','Hong Kong','0006,','','公司法、建筑工程、商业法、海事法','Corporate Law, Construction, Commercial Law, Maritime Law');
INSERT INTO `arbitman_public` VALUES (1331,'Y','00001350','llj','李连君','李连君','LI, Lian Jun','中国','China','香港','Hong Kong','0006,','','国际贸易法、海商法、国际船舶融资、投资法','International Trade Law, Maritime Law, International Ship Financing, Investment Law');
INSERT INTO `arbitman_public` VALUES (1332,'Y','00001351','lpg','李沛刚','李沛刚','LI, Pui Kwong Raymond','中国','China','香港','Hong Kong','0006,','','海事仲裁','Maritime Arbitration');
INSERT INTO `arbitman_public` VALUES (1333,'Y','00001352','lhp','林和平','林和平','LIN, Ho Ping','中国','China','香港','Hong Kong','0006,','','私募、资本市场、投资、合同及商事','Private Equity, Venture Capital, Investment, Contract and Commerce');
INSERT INTO `arbitman_public` VALUES (1334,'Y','00001353','lyx','卢懿杏','卢懿杏','LO, Yee Hang','中国','China','香港','Hong Kong','0006,','','商业法、信托、民商法','Commercial Law, Trust, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1335,'Y','00001354','myc','麦业成','麦业成','MAK, Yip Shing Andrew','中国','China','香港','Hong Kong','0006,','','民商法','Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1336,'Y','00001355','msj','莫世杰','莫世杰','MOK, Sai Kit, Danny','中国','China','香港','Hong Kong','0006,','','航运、海上保险、国际货物买卖','Shipping, Marine Insurance, International Sales of Goods');
INSERT INTO `arbitman_public` VALUES (1337,'Y','00001356','lmd','林孟达','林孟达','RAMANATHAN, Kumar','中国','China','香港','Hong Kong','0006,','','商业法','Commercial Law');
INSERT INTO `arbitman_public` VALUES (1338,'Y','00001357','xyy','萧咏仪','萧咏仪','SIU, Wing-Yee Sylvia','中国','China','香港','Hong Kong','0006,','','商事、土地、建筑、金融法','Commerce, Land, Construction, Financial Law');
INSERT INTO `arbitman_public` VALUES (1339,'Y','00001358','ssc','苏绍聪','苏绍聪','SO, Shiu Tsung, Thomas','中国','China','香港','Hong Kong','0006,','','国际商法、国际私法、香港法、国际仲裁','International Commercial Law, Private International Law, HK Law, International Arbitration');
INSERT INTO `arbitman_public` VALUES (1340,'Y','00001359','xqp','徐奇鹏','徐奇鹏','TSUI, Kei Pang','中国','China','香港','Hong Kong','0006,','','公司法、证券法、国际贸易法','Corporate Law, Securities Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (1341,'Y','00001360','wy','王燕','王燕','WANG, Yan','中国','China','香港','Hong Kong','0006,','','公司法、并购、商事合同、房地产','Corporate Law, M&A, Commercial Contract, Real Estate');
INSERT INTO `arbitman_public` VALUES (1342,'Y','00001361','wzz','王则左','王则左','WONG, Chat Chor Samuel','中国','China','香港','Hong Kong','0006,','','合同法、国际贸易、股东与公司纠纷、建筑法','Contract Law, International Trade, Shareholders\' and Company Dispute, Construction Law');
INSERT INTO `arbitman_public` VALUES (1343,'Y','00001362','wjx','王吉显','王吉显','WONG, Kit Hin Peter','中国','China','香港','Hong Kong','0006,','','民商法','Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1344,'Y','00001363','wgx','王桂埙','王桂埙','WONG, Kwai Huen','中国','China','香港','Hong Kong','0006,','','商业法、证券法、保险法、建筑法','Commercial Law, Securities Law, Insurance Law, Construction Law');
INSERT INTO `arbitman_public` VALUES (1345,'Y','00001364','hxl','黄旭伦','黄旭伦','WONG, Yuk Lun Horace','中国','China','香港','Hong Kong','0006,','','仲裁、合约、商业、土地法、公司法、银行法','Arbitration, Contract, Commerce, Land Law, Corporate Law, Banking law');
INSERT INTO `arbitman_public` VALUES (1346,'Y','00001365','jzy','江仲有','江仲有','KONG, Chung Yau','中国','China','香港','Hong Kong','0006,','','建筑工程法、合同法、保险法、民商法','Construction Engineering Law, Contract Law, Insurance Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1347,'Y','00001366','yyh','严元浩','严元浩','YEN, Yuen Ho Tony','中国','China','香港','Hong Kong','0006,','','公司法、合同法','Corporate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1348,'Y','00001367','yws','杨文声','杨文声','YEUNG, Man Sing','中国','China','香港','Hong Kong','0006,','','仲裁、建筑、商业、国际贸易','Arbitration, Construction, Commerce, International Trade');
INSERT INTO `arbitman_public` VALUES (1349,'Y','00001368','yld','叶礼德','叶礼德','YIH, Dieter','中国','China','香港','Hong Kong','0006,','','资本市场、 公司融资、私募投资、并购、公司重组、上市公司收购合并','Capital Market, Corporate Finance, Private Equity Investment, M&A, Corporate Restructuring, Listed Company Takeovers');
INSERT INTO `arbitman_public` VALUES (1350,'Y','00001369','zxc','张宪初','张宪初','ZHANG, Xian Chu','中国','China','香港','Hong Kong','0006,','','商事交易、国际贸易投资、英美法、冲突法','Commercial Transaction, International Trade Investment, Common Law, Conflict of Laws');
INSERT INTO `arbitman_public` VALUES (1351,'Y','00001370','zy','赵云','赵云','ZHAO, Yun','中国','China','香港','Hong Kong','0006,','','国际贸易法、电子商务法、电信与外空法、争端解决','International Trade Law, E-commerce Law, Telecom and Outer Space Law, Dispute Resolution');
INSERT INTO `arbitman_public` VALUES (1352,'Y','00001371','zjx','周佳兴','周佳兴','ZHOU, Jia Xing','中国','China','香港','Hong Kong','0006,','','公司商事、公司融资、资本市场、国际贸易和航运','General Corporate and Business, Corporate Finance, Capital Market, International Trade & Shipping');
INSERT INTO `arbitman_public` VALUES (1353,'Y','00001372','ljh','李建辉','李建辉','LI Jianhui','中国','China','深圳','Shenzhen','0006,','','证券与资本市场、并购、私募投资和风险资本、外商直接投资','Securities & Capital Market, M&A, Private Equity and Venture Capital, Foreign Direct Investment');
INSERT INTO `arbitman_public` VALUES (1354,'Y','00001373','atsc','ABRAHAM, Tan Sri Cecil','ABRAHAM, Tan Sri Cecil','ABRAHAM, Tan Sri Cecil','马来西亚','Malaysia','马来西亚','Malaysia','0006,','','商事、投资、合资、海事','Commerce, Investment, Joint Venture, Maritime');
INSERT INTO `arbitman_public` VALUES (1355,'Y','00001374','asf','ALI, Shahla F. ','ALI, Shahla F. ','ALI, Shahla F.','美国','U.S.A.','中国香港','China Hong Kong','0006,','','商法、证券、贸易、合同','Commercial Law, Securities, Trade, Contract');
INSERT INTO `arbitman_public` VALUES (1356,'Y','00001375','aca','ALVAREZ CALDERON, Alfonso ','ALVAREZ CALDERON, Alfonso ','ALVAREZ CALDERON, Alfonso','秘鲁','Peru','秘鲁','Peru','0006,','','矿业、公司法、税收与雇工法','Mining, Corporate Law, Taxation and Labor Law');
INSERT INTO `arbitman_public` VALUES (1357,'Y','00001376','bc','BASRI, Carole','BASRI, Carole','BASRI, Carole','美国','U.S.A.','美国','U.S.A.','0006,','','公司法、合同法','Corporate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1358,'Y','00001377','bj','BEHAN, Joe ','BEHAN, Joe ','BEHAN, Joe','爱尔兰','Ireland','爱尔兰','Ireland','0006,','','建筑、商业与贸易、租赁、土地开发','Construction, Commerce and Trade, Landlord and Tenant, Land and Development');
INSERT INTO `arbitman_public` VALUES (1359,'Y','00001378','bhgm','BERESFORD HARTWELL, Geoffrey Michael ','BERESFORD HARTWELL, Geoffrey Michael ','BERESFORD HARTWELL, Geoffrey Michael','英国','U.K.','英国','U.K.','0006,','','建筑工程、工程科学、能源、水与废弃物、核工程','Contruction Engineering, Engineering Science, Energy, Water & Waste, Nuclear Engineering');
INSERT INTO `arbitman_public` VALUES (1360,'Y','00001379','bkns','BLAY, Kwaw Nyameke Samuel ','BLAY, Kwaw Nyameke Samuel ','BLAY, Kwaw Nyameke Samuel','澳大利亚','Australia','澳大利亚','Australia','0006,','','国际贸易法、银行与金融、合资法','International Trade Law, Banking and Finance, Joint Venture Law');
INSERT INTO `arbitman_public` VALUES (1361,'Y','00001380','bgb','BORN, Gary Brian ','BORN, Gary Brian ','BORN, Gary Brian','美国','U.S.A.','英国','U.K.','0006,','','并购、知识产权、美国证券和反垄断、信息和通讯技术','M&A, Intellectual Property, U.S. Securities and Antitrust, Information and Communication Technologies');
INSERT INTO `arbitman_public` VALUES (1362,'Y','00001381','bd','BROCK, Denis','BROCK, Denis','BROCK, Denis','英国','U.K.','中国香港','China Hong Kong','0006,','','合资、保险、合伙','Joint Venture, Insurance, Partnership');
INSERT INTO `arbitman_public` VALUES (1363,'Y','00001382','cg','CARDUCCI, Guido ','CARDUCCI, Guido ','CARDUCCI, Guido','意大利','Italy','法国','France','0006,','','建筑、国际商事投资、国际投资争端解决中心仲裁、合同','Construction, International Commercial Investment, ICSID Arbitration, Contract');
INSERT INTO `arbitman_public` VALUES (1364,'Y','00001383','csw','CHANG, Seung Wha ','CHANG, Seung Wha ','CHANG, Seung Wha','韩国','Korea','韩国','Korea','0006,','','国际销售、并购、商事、外商投资','International Sales, M&A, General Commercial, Foreign Investment');
INSERT INTO `arbitman_public` VALUES (1365,'Y','00001384','ct','CHENG, Tai-Heng ','CHENG, Tai-Heng ','CHENG, Tai-Heng','新加坡','Singapore','美国','U.S.A.','0006,','','国际仲裁、投资、商事、许可','International Arbitration, Investment, Business, Licensing');
INSERT INTO `arbitman_public` VALUES (1366,'Y','00001385','cr','CHERNICK, Richard ','CHERNICK, Richard ','CHERNICK, Richard','美国','U.S.A.','美国','U.S.A.','0006,','','技术、建筑、保险、特许经营','Technology, Construction, Insurance, Franchise');
INSERT INTO `arbitman_public` VALUES (1367,'Y','00001386','cje','COCK, John Eric','COCK, John Eric','COCK, John Eric','澳大利亚','Australia','中国香港','China Hong Kong','0006,','','建设工程、建筑及设计咨询、商事、国际贸易','Construction and Engineering, Architecture and Design Consultancy, Commerce, International Trade');
INSERT INTO `arbitman_public` VALUES (1368,'Y','00001387','dv','DESMONTS, Vivian','DESMONTS, Vivian','DESMONTS, Vivian','法国','France','中国广州','China Guangzhou','0006,','','建设工程、商事、知识产权、域名争议','Construction and Engineering,Commerce, Intellectual Property, Domain Name Dispute');
INSERT INTO `arbitman_public` VALUES (1369,'Y','00001388','fr','FABRE, Régis','FABRE, Régis','FABRE, Régis','法国','France','法国','France','0006,','','分销、贸易、采购、竞争、广告','Distribution, Trade, Purchase, Competition, Advertising');
INSERT INTO `arbitman_public` VALUES (1370,'Y','00001389','fme','FELDMAN, Mark Ellis ','FELDMAN, Mark Ellis ','FELDMAN, Mark Ellis','美国','U.S.A.','中国深圳','China Shenzhen','0006,','','投资、矿业、环境','Investment, Mining, Environment');
INSERT INTO `arbitman_public` VALUES (1371,'Y','00001390','fsa','FINDER, Susan Ann','FINDER, Susan Ann','FINDER, Susan Ann','美国','U.S.A.','中国香港','China Hong Kong','0006,','','外商直接投资、基建项目、并购、合同法、证券','Foreign Direct Investment, Infrastructure Projects, M&A, Contract Law, Securities');
INSERT INTO `arbitman_public` VALUES (1372,'Y','00001391','ftf','FRISBIE, Teresa F.','FRISBIE, Teresa F.','FRISBIE, Teresa F.','美国','U.S.A.','美国','U.S.A.','0006,','','合同、商业、物权','Contract, Business, Property');
INSERT INTO `arbitman_public` VALUES (1373,'Y','00001392','fd','FRY, Dennis ','FRY, Dennis ','FRY, Dennis','英国','U.K.','英国','U.K.','0006,','','能源、建筑、制造业、海事','Energy, Construction, Manufacturing, Maritime');
INSERT INTO `arbitman_public` VALUES (1374,'Y','00001393','hsa','HARPOLE, Sally A.','HARPOLE, Sally A.','','美国','','','','0001,','','','');
INSERT INTO `arbitman_public` VALUES (1375,'Y','00001394','hcc','HOWSE, Christopher Cruy ','HOWSE, Christopher Cruy ','HOWSE, Christopher Cruy','英国','U.K.','中国香港','China Hong Kong','0006,','','商事、货物销售、海事、保险','Commerce, Sales of Goods, Maritime, Insurance');
INSERT INTO `arbitman_public` VALUES (1376,'Y','00001395','hr','HSUEH, Robert ','HSUEH, Robert ','HSUEH, Robert','美国','U.S.A.','美国','U.S.A.','0006,','','国际商事、衡平法、移民法','International Commerce, Equity, Immigration Law');
INSERT INTO `arbitman_public` VALUES (1377,'Y','00001396','hb','HUGHES, Benjamin','HUGHES, Benjamin','HUGHES, Benjamin','美国','U.S.A.','韩国','Korea','0006,','','商事/合同、知识产权、技术、并购、合资、股东、能源、建筑','Commerce/Contract, Intellectual Property, Technology, M&A, JV, Shareholders, Energy, Construction');
INSERT INTO `arbitman_public` VALUES (1378,'Y','00001397','iv','INBAVIJAYAN, Veeraraghavan','INBAVIJAYAN, Veeraraghavan','INBAVIJAYAN, Veeraraghavan','印度','India','印度','India','0006,','','国际贸易、建设合同、投资法、银行','International Trade, Construction Contract, Investment Law, Banking');
INSERT INTO `arbitman_public` VALUES (1379,'Y','00001398','jv','JAIN, Vijender ','JAIN, Vijender ','JAIN, Vijender','印度','India ','印度','India ','0006,','','印度法律、环境法','Indian Law, Environment Law');
INSERT INTO `arbitman_public` VALUES (1380,'Y','00001399','ks','KACHWAHA, Sumeet','KACHWAHA, Sumeet','KACHWAHA, Sumeet','印度','India','印度','India','0006,','','建设、国际贸易、航运、技术转让','Construction, International Trade, Shipping, Technology Transfer');
INSERT INTO `arbitman_public` VALUES (1381,'Y','00001400','kk(','KIM, Kap-You (Kevin)','KIM, Kap-You (Kevin)','KIM, Kap-You (Kevin)','韩国','Korea','韩国','Korea','0006,','','国际仲裁与诉讼、建设、能源、货物运输','International Arbitration and Litigation, Construction, Energy, Carriage of Goods');
INSERT INTO `arbitman_public` VALUES (1382,'Y','00001401','ksy','KIM, Sae Youn ','KIM, Sae Youn ','KIM, Sae Youn','韩国','Korea','韩国','Korea','0006,','','国际商事、国际建设工程','International Commerce, International Construction');
INSERT INTO `arbitman_public` VALUES (1383,'Y','00001402','lcls','LAU, Christopher Loke Sam','LAU, Christopher Loke Sam','LAU, Christopher Loke Sam','新加坡','Singapore','新加坡','Singapore','0006,','','投资、商事、海事、能源','Investment, Commerce, Maritime, Energy');
INSERT INTO `arbitman_public` VALUES (1384,'Y','00001403','lpd','LE PICHON, Doreen ','LE PICHON, Doreen ','LE PICHON, Doreen','英国','U.K.','中国香港','China Hong Kong','0006,','','公司事务、合同、商事','Company Matters, Contract, Commerce');
INSERT INTO `arbitman_public` VALUES (1385,'Y','00001404','ldb','LEVENE, Douglas B. ','LEVENE, Douglas B. ','LEVENE, Douglas B.','美国','U.S.A.','中国深圳','China Shenzhen','0006,','','公司法、并购、公司融资、租赁、证券','Corporate Law, M&A, Corporate Finance, Leasing, Securities');
INSERT INTO `arbitman_public` VALUES (1386,'Y','00001405','ll','LEVY, Laurent','LEVY, Laurent','LEVY, Laurent','瑞士/巴西','Switzerland/Brazil','瑞士','Switzerland','0006,','','仲裁、公司、石油与天然气、代理与金融','Arbitration, Corporate, Oil and Gas, Agency and Finance');
INSERT INTO `arbitman_public` VALUES (1387,'Y','00001406','ljdm','LEW, Julian David Mathew ','LEW, Julian David Mathew ','LEW, Julian David Mathew','英国','U.K. ','英国','U.K. ','0006,','','国际仲裁、商法、合同法、知识产权','International Arbitration, Commercial Law, Contract Law, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1388,'Y','00001407','ljs','LUX, Jonathan Sidney ','LUX, Jonathan Sidney ','LUX, Jonathan Sidney','英国','U.K.','英国','U.K.','0006,','','航运、国际贸易、保险、近海能源、商事合同','Shipping, International Trade, Insurance, Offshore Energying, Commercial Contract');
INSERT INTO `arbitman_public` VALUES (1389,'Y','00001408','mgsp','MITCHARD, Gerald Steven Paul ','MITCHARD, Gerald Steven Paul ','MITCHARD, Gerald Steven Paul','英国','U.K.','中国香港','China Hong Kong','0006,','','合资、违约索赔、商事、公司、能源','Joint Venture, Breach of Contract Claims, Commerce, Corporate, Energy');
INSERT INTO `arbitman_public` VALUES (1390,'Y','00001409','mgp','MCALINN, Gerald Paul ','MCALINN, Gerald Paul ','MCALINN, Gerald Paul','美国','U.S.A.','日本','Japan','0006,','','合同（买卖、分销,合资及其他）、国际商事交易、外商投资、跨境交易','Contracts (Sales, Distribution, Joint Venture and others), International Commercial Transaction, Foreign Investment, Cross-border Transaction');
INSERT INTO `arbitman_public` VALUES (1391,'Y','00001410','bn','白宁','白宁','BAI Ning','中国','China','深圳','Shenzhen','0006,','','合同法、国际经济法、经济法','Contract Law, International Economic Law, Economic Law');
INSERT INTO `arbitman_public` VALUES (1392,'Y','00001411','mms','MCNEIL, Malcolm Stephen.','MCNEIL, Malcolm Stephen.','MCNEIL, Malcolm Stephen.','美国','U.S.A.','美国','U.S.A.','0006,','','商业、投资、保险','Business, Investment, Commerce, Insurance');
INSERT INTO `arbitman_public` VALUES (1393,'Y','00001412','mc','MOGER, Christopher ','MOGER, Christopher ','MOGER, Christopher','英国','U.K.','英国','U.K.','0006,','','国际商事仲裁、中外合资、保险','International Commercial Arbitration, Sino-foreign Joint Venture, Insurance');
INSERT INTO `arbitman_public` VALUES (1394,'Y','00001413','mm','MOHEBBI, Mohsen','MOHEBBI, Mohsen','MOHEBBI, Mohsen','伊朗','Iran','伊朗','Iran','0006,','','国内外仲裁、银行与经济法、商法、公司法','Domestic and International Arbitration, Banking and Economic Law, Commercial Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1395,'Y','00001414','mrb','MORTON, Robert B.','MORTON, Robert B.','MORTON, Robert B.','美国','U.S.A.','美国','U.S.A.','0001,0006,','','民商事诉讼（初审与上诉）、仲裁','Civil and Commercial Litigation (Trials and Appeals), Arbitration');
INSERT INTO `arbitman_public` VALUES (1396,'Y','00001415','mml','MOSES, Margaret L. ','MOSES, Margaret L. ','MOSES, Margaret L.','美国','U.S.A.','美国','U.S.A.','0006,','','国际商事仲裁、国际合同、国际商业交易','International Commercial Arbitration, International Contract, International Business Transaction');
INSERT INTO `arbitman_public` VALUES (1397,'Y','00001416','nsr','NADARAJAH, Sundra Rajoo','NADARAJAH, Sundra Rajoo','NADARAJAH, Sundra Rajoo','马来西亚','Malaysia','吉隆坡','Kuala Lumpur','0006,','','仲裁、合同、建筑、城市规划','Arbitration, Contract, Construction, Town Planning');
INSERT INTO `arbitman_public` VALUES (1398,'Y','00001417','nd\n','NORONHA, Durval \n','NORONHA, Durval \n','NORONHA, Durval','巴西/意大利','Brazil/Italy','意大利','Italy','0006,','','商业贸易、金融、仲裁','Commercial Trade, Finance, Arbitration');
INSERT INTO `arbitman_public` VALUES (1399,'Y','00001418','opd','O\'NEILL, Philip D. ','O\'NEILL, Philip D. ','O\'NEILL, Philip D.','美国','U.S.A.','美国','U.S.A.','0006,','','复杂合同仲裁、公司、贸易、投资、知识产权','Complex Contract Arbitration, Corporate, Trade, Investment, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1400,'Y','00001419','pm','PALMER, Michael','PALMER, Michael','PALMER, Michael','英国','U.K.','中国汕头','China Shantou','0006,','','替代性争议解决、民法、土地法','ADR, Civil Law, Land Law');
INSERT INTO `arbitman_public` VALUES (1401,'Y','00001420','pi','PENNICOTT, Ian ','PENNICOTT, Ian ','PENNICOTT, Ian','英国','U.K.','中国香港','China Hong Kong','0006,','','建设与基础设施合同、能源合同、环境事务','Construction and Infrastructure Contract, Energy Contract, Environmental Matters');
INSERT INTO `arbitman_public` VALUES (1402,'Y','00001421','pjm','PERROTTO, Juan Martín ','PERROTTO, Juan Martín ','PERROTTO, Juan Martín','阿根廷/意大利','Argentina/Italy','中国北京','China Beijing','0006,','','并购、公司、金融','M&A, Corporate, Finance');
INSERT INTO `arbitman_public` VALUES (1403,'Y','00001422','pw','PETERSON, Wayne','PETERSON, Wayne','PETERSON, Wayne','美国','U.S.A.','美国','U.S.A.','0006,','','国际商事、合资、知识产权','International Commerce, Joint Venture, Intellectural Property');
INSERT INTO `arbitman_public` VALUES (1404,'Y','00001423','pc','PROBST, Christian ','PROBST, Christian ','PROBST, Christian','德国','Germany','德国','Germany','0006,','','国际商法、合同法（大陆法系与普通法系）、投资与合资、德国和欧洲法','International Business Law, Contract Law (Civil and Common Law), Investment and Joint Venture, German, European Law');
INSERT INTO `arbitman_public` VALUES (1405,'Y','00001424','pd','PRUTZMAN, Deborah','PRUTZMAN, Deborah','PRUTZMAN, Deborah','美国','U.S.A.','美国','U.S.A.','0006,','','支付及结算系统、银行业、对冲基金、私募股权基金','Payment and Clearing Systems, Banking, Hedge Funds, Private Equity Funds');
INSERT INTO `arbitman_public` VALUES (1406,'Y','00001425','pmc','PRYLES, Michael Charles  ','PRYLES, Michael Charles  ','PRYLES, Michael Charles','澳大利亚','Australia','澳大利亚','Australia','0006,','','合资、能源、公司法、商法','Joint Venture, Energy, Corporate Law, Commercial Law');
INSERT INTO `arbitman_public` VALUES (1407,'Y','00001426','ra','ROGERS, Anthony','ROGERS, Anthony','ROGERS, Anthony','英国','U.K.','中国香港','China Hong Kong','0006,','','知识产权、公司、商事','Intellectual Property, Corporate, Commerce');
INSERT INTO `arbitman_public` VALUES (1408,'Y','00001427','rc','ROGERS, Catherine','ROGERS, Catherine','ROGERS, Catherine','美国','U.S.A.','美国','U.S.A.','0006,','','知识产权、国际商事','Intellectural Property, International Commerce');
INSERT INTO `arbitman_public` VALUES (1409,'Y','00001428','rjw','RUNDELL, John Warwick','RUNDELL, John Warwick','RUNDELL, John Warwick','澳大利亚/中国香港','Australia/China Hong Kong','澳大利亚/中国香港','Australia/China Hong Kong','0006,','','金融、银行、通信和信息技术、股东','Finance, Banking, Technology-telecommunications and Information Technology, Shareholders');
INSERT INTO `arbitman_public` VALUES (1410,'Y','00001429','ssa','SARWANA, S. Ahmed','SARWANA, S. Ahmed','SARWANA, S. Ahmed','巴基斯坦','Pakistan','巴基斯坦','Pakistan','0006,','','投资、国际贸易、合同及销售、建筑','Investment, International Trade, Contract & Sales, Construction');
INSERT INTO `arbitman_public` VALUES (1411,'Y','00001430','sj','SAUNDERS, John Lonsdale','SAUNDERS, John Lonsdale','SAUNDERS, John Lonsdale','新西兰','New Zealand','澳大利亚','Australia','0006,','','民事诉讼、仲裁、建筑','Civil Litigation, Arbitration, Construction');
INSERT INTO `arbitman_public` VALUES (1412,'Y','00001431','sj','SINGLETON, John ','SINGLETON, John ','SINGLETON, John','加拿大','Canada','加拿大','Canada','0006,','','建筑法、保险法、职业责任、产品责任','Construction Law, Insurance Law, Professional Liability, Product Liability');
INSERT INTO `arbitman_public` VALUES (1413,'Y','00001432','swk','SLATE, William K.II','SLATE, William K.II','SLATE, William K.II','美国','U.S.A.','美国','U.S.A.','0006,','','商事、贸易、专业合伙协议','Commerce, Trade, Professional Partnership Agreement');
INSERT INTO `arbitman_public` VALUES (1414,'Y','00001433','srm','SMITH, Robert M. ','SMITH, Robert M. ','SMITH, Robert M.','美国','U.S.A.','美国','U.S.A.','0006,','','复杂跨境商业纠纷、并购、政府采购','Complex Cross-border Commercial Dispute, M&A, Governmental Purchase');
INSERT INTO `arbitman_public` VALUES (1415,'Y','00001434','svj','SMITH, Victor James','SMITH, Victor James','SMITH, Victor James','英国','U.K.','泰国','Thailand','0006,','','建筑、国际贸易、航运、航空、商事','Construction, International Trade, Shipping, Aviations, Commerce');
INSERT INTO `arbitman_public` VALUES (1416,'Y','00001435','sfg','SNYDER, Francis Gregory ','SNYDER, Francis Gregory ','SNYDER, Francis Gregory','英国','U.K.','中国深圳','China Shenzhen','0006,','','WTO法律、欧盟法、食品安全法、欧盟国际贸易法','WTO Law, European Union Law, Food Safety Law, EU International Trade Law');
INSERT INTO `arbitman_public` VALUES (1417,'Y','00001436','spa','STARR, Paul Anthony','STARR, Paul Anthony','STARR, Paul Anthony','英国','U.K.','中国香港','China Hong Kong','0006,','','基础设施、商事','Infrastructure, Commerce');
INSERT INTO `arbitman_public` VALUES (1418,'Y','00001437','se','SUSSMAN, Edna ','SUSSMAN, Edna ','SUSSMAN, Edna','美国','U.S.A.','美国','U.S.A.','0006,','','商法、并购、金融和银行交易、特许经营/代理','Commercial Law, M&A, Financing and Banking Transaction, Franchise/Dealership');
INSERT INTO `arbitman_public` VALUES (1419,'Y','00001438','tmbl','THOMSON, Mary Bee Lay ','THOMSON, Mary Bee Lay ','THOMSON, Mary Bee Lay','英国','U.K.','中国香港','China Hong Kong','0006,','','商业、保险、国际贸易和银行、能源、破产','Commerce, Insurance, International Trade and Banking, Energy, Insolvency');
INSERT INTO `arbitman_public` VALUES (1420,'Y','00001439','ldp','林东平','林东平','LIN, Dong Ping','美国','U.S.A.','中国深圳','China Shenzhen','0006,','','知识产权、医疗仪器、生物工程、计算机','Intellectual Property, Medical Equipment, Biomedical Engineering, Computer');
INSERT INTO `arbitman_public` VALUES (1421,'Y','00001440','mpd','马培德','马培德','MALANCZUK, Peter','德国/中国香港','Germany/China Hong Kong','中国香港','China Hong Kong','0006,','','国际贸易、投资、国际商事仲裁、国际投资者与国家间争议','International Trade, Investment, International Commercial Arbitration, Dispute between International Investors and Countries');
INSERT INTO `arbitman_public` VALUES (1422,'Y','00001441','plx','朴鲁馨','朴鲁馨','PARK, Nohyoung','韩国','Korea','韩国','Korea','0006,','','国际贸易（世贸组织与自由贸易区）、数据保护、网络安全、调解','International Trade (WTO and FTA), Data Protection, Cyber Security, Mediation');
INSERT INTO `arbitman_public` VALUES (1423,'Y','00001442','qxd','齐晓东','齐晓东','CHI, Chris','新加坡','Singapore','中国北京','China Beijing','0006,','','外商投资、公司法、合同法、石油及天然气','Foreign Investment, Corporate Law, Contract Law, Oil & Gas');
INSERT INTO `arbitman_public` VALUES (1424,'Y','00001443','sbmy','石本茂彦','石本茂彦','ISHIMOTO, Shigehiko','日本','Japan','日本','Japan','0006,','','对华投资、国际交易、公司事务、并购','Investment in PRC, International Transaction, General Corporate, M&A');
INSERT INTO `arbitman_public` VALUES (1425,'Y','00001444','syjtl','松原健太郎','松原健太郎','MATSUBARA, Kentaro','日本','Japan','日本','Japan','0006,','','公司法、物权法','Corporate Law, Property Law');
INSERT INTO `arbitman_public` VALUES (1426,'Y','00001445','tr','陶荣','陶荣','TO, Wing Christopher','英国','U.K.','中国香港','China Hong Kong','0006,','','仲裁、国际贸易、电子工程、知识产权','Arbitration, International Trade, Electronic Engineering, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1427,'Y','00001446','wpz','吴沛镇','吴沛镇','GOH, Phai Cheng','新加坡','Singapore','新加坡','Singapore','0006,','','房屋建造、股东、商事、知识产权','Building Construction, Shareholders, Commerce, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1428,'Y','00001447','xg','徐罡','徐罡','XU, Gang','美国','U.S.A.','中国上海','China Shanghai','0006,','','零售、项目融资、体育娱乐、合同','Retail, Project Finance, Sports and Entertainment,Contract');
INSERT INTO `arbitman_public` VALUES (1429,'Y','00001448','ykh','杨康海','杨康海','YEO,Alvin Khirn Hai','新加坡','Singapore','新加坡','Singapore','0006,','','仲裁、商法、合资、建设工程','Arbitration, Commercial Law, Joint Venture, Construction and Engineering');
INSERT INTO `arbitman_public` VALUES (1430,'Y','00001449','yyl','杨炎龙','杨炎龙','YANG, Ing Loong','新加坡','Singapore','中国香港','China Hong Kong','0006,','','国际贸易、买卖合同、合资、复杂商业纠纷','International Trade, Sales Contract, Joint Venture, Complex Commercial Dispute');
INSERT INTO `arbitman_public` VALUES (1431,'Y','00001450','zfq','曾福庆','曾福庆','CHAN, Hock Keng','新加坡','Singapore ','新加坡','Singapore ','0006,','','中外合资、并购、建筑','Sino-foreign Joint Venture, M&A, Construction');
INSERT INTO `arbitman_public` VALUES (1432,'Y','00001451','zlq','张立群','张立群','CHEUNG, Lawrence Lup-kwan','美国/中国香港','U.S.A./China Hong Kong','中国香港','China Hong Kong','0006,','','民事及商事诉讼、国际商事及商业交易','Civil and Commercial Litigation, International Commerce and Commercial Transaction');
INSERT INTO `arbitman_public` VALUES (1433,'Y','00001452','zt','张涛','张涛','ZHANG, Tao','美国','U.S.A.','美国','U.S.A.','0006,','','知识产权','Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1434,'Y','00001453','zjk','钟建康','钟建康','CHUNG, K.H. Kenneth','加拿大','Canada','中国香港','China Hong Kong','0006,','','建设工程、知识产权、域名争议','Construction and Engineering, Intellectual Property, Domain Name Dispute');
INSERT INTO `arbitman_public` VALUES (1435,'Y','00001454','wfh','WINARTA, Frans Hendrea','WINARTA, Frans Hendrea','WINARTA, Frans Hendrea','印尼','Indonasia','印尼','Indonasia','0006,','','合同法、公司法、保险、天然气与能源','Contract Law, Corporate Law, Insurance, Gas & Energy');
INSERT INTO `arbitman_public` VALUES (1436,'Y','00001455','yst','YANDLE, Stephen Thomas','YANDLE, Stephen Thomas','YANDLE, Stephen Thomas','美国','U.S.A.','中国深圳','China Shenzhen','0006,','','平等机会法、低收入公租','Equal Opportunity Law, Low Income Public Housing');
INSERT INTO `arbitman_public` VALUES (1437,'Y','00001456','awb','艾文博','艾文博','IRVIN, Brent','美国','U.S.A.','中国深圳','China Shenzhen','0006,','','并购、知识产权法、技术转让、国际贸易','M&A, Intellectual Property Law, Technology Transfer, International Trade');
INSERT INTO `arbitman_public` VALUES (1438,'Y','00001457','bjw','鲍江伟','鲍江伟','POW, Elson Jiangwei','澳大利亚','Australia','澳大利亚','Australia','0006,','','国际贸易、投资法、技术转让、工业产权法、反倾销','International Trade, Investment Law, Technology Transfer, Industrial Property Law, Anti-dumping');
INSERT INTO `arbitman_public` VALUES (1439,'Y','00001458','cdb','陈东璧','陈东璧','CHEN,Tung-Pi','加拿大','Canada','加拿大/中国台湾','Canada/China Taiwan','0006,','','国际商事与比较法、加拿大与台湾法','International Commercial and Comparative Law, Law of Canada and Taiwan');
INSERT INTO `arbitman_public` VALUES (1440,'Y','00001459','cqh','陈清海','陈清海','TAN, Johnny Cheng Hye','新加坡','Singapore','新加坡','Singapore','0006,','','建筑、钻机工程、石油和天然气','Construction, Rig Construction, Oil & Gas');
INSERT INTO `arbitman_public` VALUES (1441,'Y','00001460','hxy','黄锡义','黄锡义','HUWANG, Michael','新加坡','Singapore','新加坡','Singapore','0006,','','商法、金融法、物权法、公司法','Commercial Law, Financial Law, Property Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1442,'Y','00001461','jjc','简家聪','简家聪','KAN, Fred','加拿大','Canada','中国香港','China Hong Kong','0006,','','国际贸易、商事合同','International Trade, Commercial Contract');
INSERT INTO `arbitman_public` VALUES (1443,'Y','00001462','jjj','金晙基','金晙基','KIM, Joongi','韩国','Korea','韩国','Korea','0006,','','公司法、银行与金融、造船、外商投资、合资','Corporate Law, Finance & Banking, Shipbuilding, Foreign Investment, Joint Venture');
INSERT INTO `arbitman_public` VALUES (1444,'Y','00001463','krd','柯瑞德','柯瑞德','KREIDER, David Laurence','美国/新西兰','U.S.A/New Zealand','新西兰','New Zealand','0006,','','电信/信息技术、软件授权与许可、证券、衍生品、金融','Telecommunications/Information Technology, Software Authorization and Licensing, Securities, Derivatives, Finance');
INSERT INTO `arbitman_public` VALUES (1445,'Y','00001464','lyw','李玉文','李玉文','LI, Yu Wen','荷兰','Netherlands','荷兰','Netherlands','0006,','','中国和欧洲司法制度比较研究、中国涉外投资法及国际投资法','Judicial System in China and Comparative Study in European Countries, Foreign Investment Law in China and International Investment Law');
INSERT INTO `arbitman_public` VALUES (1446,'Y','00001465','cry','崔容远','崔容远','CHOI, Yong Won','韩国','Korea','中国北京','China Beijing','0006,','','外商投资法、国际贸易、公司法、金融','Foreign Investment Law, International Trade, Corporate Law, Finance');
INSERT INTO `arbitman_public` VALUES (1447,'Y','00001466','dws','邓宛舜','邓宛舜','TANG, Yuen Shun Cynthia','英国','U.K.','中国香港','China Hong Kong','0006,','','公司、交易、监管调查、与中国相关的争议','Corporate, Transaction, Regulatory Investigation, China-related Dispute');
INSERT INTO `arbitman_public` VALUES (1448,'Y','00001467','cwj','陈文俊','陈文俊','CHEN, Nicholas Van Gene','美国','U.S.A.','中国上海/中国台湾','China Shanghai/China Taiwan','0006,','','跨国投资事务、环境/可再生能源/农业事务、拉美/非洲/中东事务','International Cross-border Investment Matters, Environmental/Renewable Energy/Agricultural Matters, Latin American/African/Middle East Matters');
INSERT INTO `arbitman_public` VALUES (1449,'Y','00001468','jjf','计剑锋','计剑锋','JI Jianfeng','中国','China','加拿大','Canada','0006,','','公司法、合同法、外商投资法、破产法','Corporate Law, Contract Law, Foregin Investment Law, Bankruptcy Law');
INSERT INTO `arbitman_public` VALUES (1450,'Y','00001469','lcy','李昌永','李昌永','LI Changyong','中国','China','美国','U.S.A.','0006,','','证券法、公司法、并购、银行法','Securities Law, Corporate Law, M&A, Banking Law');
INSERT INTO `arbitman_public` VALUES (1451,'Y','00001470','fwh','冯卫红','冯卫红','FENG Weihong','中国','China','香港','Hong Kong','0006,','','并购、国际贸易、金融法、房地产法','M&A, International Trade, Financial Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1452,'Y','00001471','hxy','黄笑燕','黄笑燕','HUANG Xiaoyan','中国','China','香港','Hong Kong','0006,','','公司法、合同法、房地产法、保险法','Corporate Law, Contract Law, Real Estate Law, Insurance Law');
INSERT INTO `arbitman_public` VALUES (1453,'Y','00001472','xrg','忻如国','忻如国','XIN Ruguo','中国','China','香港','Hong Kong','0006,','','国际融资、金融投资、银行理财、直接投资','International Financing, Financial Investment, Bank Wealth Management, Direct Investment');
INSERT INTO `arbitman_public` VALUES (1454,'Y','00001473','zgh','张国华','张国华','ZHANG Guohua','中国','China','香港','Hong Kong','0006,','','外商投资、国际贸易、合同法','Foreign Investment, International Trade, Contract Law');
INSERT INTO `arbitman_public` VALUES (1455,'Y','00001474','zzx','庄仲希','庄仲希','ZHUANG Zhongxi','中国','China','香港','Hong Kong','0006,','','合同法、房地产法、知识产权法','Contract Law, Real Estate Law, Intellectual Property Law');
INSERT INTO `arbitman_public` VALUES (1456,'Y','00001475','df','邓峰','邓峰','DENG Feng','中国','China','北京','Beijing','0006,','','公司法、合同法、国际贸易法','Corporate Law, Contract Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (1457,'Y','00001476','gl','谷凌','谷凌','GU Ling','中国','China','北京','Beijing','0006,','','保险法、票据法','Insurance Law, Negotiable Instruments Law');
INSERT INTO `arbitman_public` VALUES (1458,'Y','00001477','gl','郭雳','郭雳','GUO Li','中国','China','北京','Beijing','0006,','','金融法、证券法、公司法、商法','Financial Law, Securities Law, Corporate Law, Commercial Law');
INSERT INTO `arbitman_public` VALUES (1459,'Y','00001478','gpz','甘培忠','甘培忠','GAN Peizhong','中国','China','北京','Beijing','0006,','','投资法、股权转让、并购、证券法','Investment Law, Equity Transfer, M&A, Securities Law');
INSERT INTO `arbitman_public` VALUES (1460,'Y','00001479','hst','胡盛涛','胡盛涛','HU Shengtao','中国','China','北京','Beijing','0006,','','外商投资、并购、国际贸易、国际商事合同','Foreign Investment, M&A, International Trade, International Commercial Contract');
INSERT INTO `arbitman_public` VALUES (1461,'Y','00001480','hyr','洪艳蓉','洪艳蓉','HONG Yanrong','中国','China','北京','Beijing','0006,','','金融法、民商法、房地产法','Financial Law, Civil and Commercial Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1462,'Y','00001481','lxd','李向东','李向东','LI Xiangdong','中国','China','北京','Beijing','0006,','','合同法','Contract Law');
INSERT INTO `arbitman_public` VALUES (1463,'Y','00001482','oyzy','欧阳振远','欧阳振远','OUYANG Zhenyuan','中国','China','北京','Beijing','0006,','','国际贸易、合资合作、证券投资、工程承包','International Trade, Equity and Contractual Joint Ventures, Securities Investment, Engineering Contracting');
INSERT INTO `arbitman_public` VALUES (1464,'Y','00001483','pb','彭冰','彭冰','PENG Bing','中国','China','北京','Beijing','0006,','','金融法、银行法、证券法、公司法','Financial Law, Banking Law, Securities Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1465,'Y','00001484','pjf','潘剑锋','潘剑锋','PAN Jianfeng','中国','China','北京','Beijing','0006,','','国际贸易法、国际投资法','International Trade Law, International Investment Law');
INSERT INTO `arbitman_public` VALUES (1466,'Y','00001485','pxf','彭雪峰','彭雪峰','PENG Xuefeng','中国','China','北京','Beijing','0006,','','合同法、公司法、国际投资法、建设工程法、房地产法','Contract Law, Corporate Law, International Investment Law, Construction Engeneering Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1467,'Y','00001486','wdq','王德全','王德全','WANG Dequan','中国','China','北京','Beijing','0006,','','跨境并购、风险投资、电信传媒互联网及高科技领域、国际贸易与投资','Cross-Border M&A, Venture Capital, Telecom/Media/Internet and High Technology, International Trade and Investment');
INSERT INTO `arbitman_public` VALUES (1468,'Y','00001487','zjy','朱建业','朱建业','ZHU Jianye','中国','China','北京','Beijing','0006,','','军品贸易法律、空间法律','Military Items Trade Law, Space Law');
INSERT INTO `arbitman_public` VALUES (1469,'Y','00001488','zsw','张守文','张守文','ZHANG Shouwen','中国','China','北京','Beijing','0006,','','经济法、财税法','Economic Law, Finance and Tax Law');
INSERT INTO `arbitman_public` VALUES (1470,'Y','00001489','zsy','郑顺炎','郑顺炎','ZHENG Shunyan','中国','China','北京','Beijing','0006,','','金融证券法、公司法、股权投资、信息技术','Finance and Securities Law, Corporate Law, Equity Investment, Information Technology');
INSERT INTO `arbitman_public` VALUES (1471,'Y','00001490','zwd','张卫东','张卫东','ZHANG Weidong','中国','China','北京','Beijing','0006,','','股权投资、并购、金融风险管理、公司法','Equity Investment, M&A, Financial Risk Management, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1472,'Y','00001491','zy','曾怡','曾怡','ZENG Yi','中国','China','北京','Beijing','0006,','','证券法、公司法、合同法','Securities Law, Corporate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1473,'Y','00001492','cwq','陈文卿','陈文卿','CHEN Wenqing','中国','China','大连','Dalian','0006,','','房地产法、建设工程法、公司法','Real Estate Law, Construction Engineering Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1474,'Y','00001493','lh','廖晖','廖晖','LIAO Hui','中国','China','海口','Haikou','0006,','','民商法、房地产法、投资法、银行法','Civil and Commercial Law, Real Estate Law, Investment Law, Banking Law');
INSERT INTO `arbitman_public` VALUES (1475,'Y','00001494','txy','涂显亚','涂显亚','TU Xianya','中国','China','海口','Haikou','0006,','','公司法、房地产法','Corporate Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1476,'Y','00001495','wqp','吴庆平','吴庆平','WU Qingping','中国','China','南宁','Nanning','0006,','','金融法、金融会计、金融监管','Financial Law, Financial Acounting, Financial Supervision');
INSERT INTO `arbitman_public` VALUES (1477,'Y','00001496','cl','陈力','陈力','CHEN Li','中国','China','上海','Shanghai','0006,','','国际私法、国际商事仲裁、国际贸易法','Private International Law, International Commercial Arbitration, International Trade Law');
INSERT INTO `arbitman_public` VALUES (1478,'Y','00001497','fj','冯军','冯军','FENG Jun','中国','China','上海','Shanghai','0006,','','国际贸易法、国际金融法、国际经济法','International Trade Law, International Financial Law, International Economic Law');
INSERT INTO `arbitman_public` VALUES (1479,'Y','00001498','gbh','龚柏华','龚柏华','GONG Baihua','中国','China','上海','Shanghai','0006,','','国际贸易、国际贸易融资、国际合资、并购','International Trade, International Trade Financing, International Joint Venture, M&A');
INSERT INTO `arbitman_public` VALUES (1480,'Y','00001499','hy','何易','何易','HE Yi','中国','China','上海','Shanghai','0006,','','国际贸易、国际投融资','International Trade, International Investment and Financing');
INSERT INTO `arbitman_public` VALUES (1481,'Y','00001500','lpx','罗培新','罗培新','LUO Peixin','中国','China','上海','Shanghai','0006,','','公司法、证券法、金融法','Corporate Law, Securities Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (1482,'Y','00001501','slm','盛雷鸣','盛雷鸣','SHENG Leiming','中国','China','上海','Shanghai','0006,','','房地产法、民商法、公司法、金融法','Real Estate Law, Civil and Commercial Law, Corporate Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (1483,'Y','00001502','cgh','陈国辉','陈国辉','CHEN Guohui','中国','China','东莞','Dongguan','0006,','','公司法、合同法、民商法','Corporate Law, Contract Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1484,'Y','00001503','grh','郭瑞华','郭瑞华','GUO Ruihua','中国','China','东莞','Dongguan','0006,','','合同法、国际贸易法、基建投资法','Contract Law, International Trade Law, Infrastructure Investment Law');
INSERT INTO `arbitman_public` VALUES (1485,'Y','00001504','ljh','李健豪','李健豪','LI Jianhao','中国','China','东莞','Dongguan','0006,','','房地产法、公司法、金融法、破产法','Real Estate Law, Corporate Law, Financial Law, Bankruptcy Law');
INSERT INTO `arbitman_public` VALUES (1486,'Y','00001505','wq','吴青','吴青','WU Qing','中国','China','佛山','Foshan','0006,','','金融法、投融资法、环境保护法','Financial Law, Investment and Financing Law, Environmental Protection Law');
INSERT INTO `arbitman_public` VALUES (1487,'Y','00001506','cd','陈东','陈东','CHEN Dong','中国','China','广州','Guangzhou','0006,','','国际贸易法、公司法、国际投资法、保险法','International Trade Law, Corporate Law, International Investment Law, Insurance Law');
INSERT INTO `arbitman_public` VALUES (1488,'Y','00001507','cky','陈克宇','陈克宇','CHEN Keyu','中国','China','广州','Guangzhou','0006,','','房地产法、合同法、建设工程法','Real Estate Law, Contract Law, Construction Engineering Law');
INSERT INTO `arbitman_public` VALUES (1489,'Y','00001508','clx','陈良贤','陈良贤','CHEN Liangxian','中国','China','广州','Guangzhou','0006,','','公司法、企业国有资产法、合同法、房地产法','Corporate Law, State-Owned Assets Law, Contract Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1490,'Y','00001509','hjs','黄建水','黄建水','HUANG Jianshui','中国','China','广州','Guangzhou','0006,','','经济法、房地产法、建设工程法、合同法','Economic Law, Real Estate Law, Construction Engineering Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1491,'Y','00001510','hph','何培华','何培华','HE Peihua','中国','China','广州','Guangzhou','0006,','','民商法、外商投资法、国际贸易法、房地产法','Civil and Commercial Law, Foreign Investment Law, International Trade Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1492,'Y','00001511','hyd','黄永东','黄永东','HUANG Yongdong','中国','China','广州','Guangzhou','0006,','','合同法、房地产法、建设工程法','Contract Law, Real Estate Law, Construction Engineering Law');
INSERT INTO `arbitman_public` VALUES (1493,'Y','00001512','ldm','刘冬梅','刘冬梅','LIU Dongmei','中国','China','广州','Guangzhou','0006,','','合同法、行政法','Contract Law, Administrative Law');
INSERT INTO `arbitman_public` VALUES (1494,'Y','00001513','lz','梁震','梁震','LIANG Zhen','中国','China','广州','Guangzhou','0006,','','民商法、房地产法、国际贸易法','Civil and Commercial Law, Real Estate Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (1495,'Y','00001514','shy','帅海燕','帅海燕','SHUAI Haiyan','中国','China','广州','Guangzhou','0006,','','国际贸易法、外商投资法、民商法','International Trade Law, Foreign Investment Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1496,'Y','00001515','syq','石佑启','石佑启','SHI Youqi','中国','China','广州','Guangzhou','0006,','','合同法、民商法、行政法','Contract law, Civil and Commercial Law, Administrative Law');
INSERT INTO `arbitman_public` VALUES (1497,'Y','00001516','szy','苏祖耀','苏祖耀','SU Zuyao','中国','China','广州','Guangzhou','0006,','','公司法、合同法、投融资法','Corporate Law, Contract Law, Investment and Financing Law');
INSERT INTO `arbitman_public` VALUES (1498,'Y','00001517','wxh','王晓华','王晓华','WANG Xiaohua','中国','China','广州','Guangzhou','0006,','','经济法、证券法','Economic Law, Securities Law');
INSERT INTO `arbitman_public` VALUES (1499,'Y','00001518','xsf','肖胜方','肖胜方','XIAO Shengfang','中国','China','广州','Guangzhou','0006,','','公司法、房地产法、建设工程法','Corporate Law, Real Estate Law, Construction Engineering Law');
INSERT INTO `arbitman_public` VALUES (1500,'Y','00001519','xyq','邢益强','邢益强','XING Yiqiang','中国','China','广州','Guangzhou','0006,','','民商法、房地产法、公司法、知识产权','Civil and Commercial Law, Real Estate Law, Corporate Law, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1501,'Y','00001520','yg','叶港','叶港','YE Gang','中国','China','广州','Guangzhou','0006,','','民商法','Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1502,'Y','00001521','yzc','严植婵','严植婵','YAN Zhichan','中国','China','广州','Guangzhou','0006,','','合同法、行政法','Contract Law, Administrative Law');
INSERT INTO `arbitman_public` VALUES (1503,'Y','00001522','zbl','朱宝莲','朱宝莲','ZHU Baolian','中国','China','广州','Guangzhou','0006,','','经济法、房地产法、建设工程法、合同法','Economic Law, Real Estate Law, Construction Engineering Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1504,'Y','00001523','zgc','钟国才','钟国才','ZHONG Guocai','中国','China','广州','Guangzhou','0006,','','建设工程法、公司法、合同法、物权法','Construction Engineering Law, Corporate Law, Contract Law, Property Law');
INSERT INTO `arbitman_public` VALUES (1505,'Y','00001524','zh','张珩','张珩','ZHANG Heng','中国','China','广州','Guangzhou','0006,','','金融法、税法','Financial Law, Tax Law');
INSERT INTO `arbitman_public` VALUES (1506,'Y','00001525','zl','张亮','张亮','ZHANG Liang','中国','China','广州','Guangzhou','0006,','','国际贸易法、合同法、金融法、投资法','International Trade Law, Contract Law, Financial Law, Investment Law');
INSERT INTO `arbitman_public` VALUES (1507,'Y','00001526','zly','朱列玉','朱列玉','ZHU Lieyu','中国','China','广州','Guangzhou','0006,','','房地产法、金融法、合同法、上市、并购、重组','Real Estate Law, Financial Law, Contract Law, IPO, M&A, Reorganization');
INSERT INTO `arbitman_public` VALUES (1508,'Y','00001527','zwy','庄伟燕','庄伟燕','ZHUANG Weiyan','中国','China','广州','Guangzhou','0006,','','合同法、公司法、房地产法、外商投资法','Contract Law, Corporate Law, Real Estate Law, Foreign Investment Law');
INSERT INTO `arbitman_public` VALUES (1509,'Y','00001528','zxh','张锡海','张锡海','ZHANG Xihai','中国','China','广州','Guangzhou','0006,','','金融法、建设工程法、房地产法、公司法','Financial Law, Construction Engineering Law, Real Estate Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1510,'Y','00001529','zzl','朱战良','朱战良','ZHU Zhanliang','中国','China','广州','Guangzhou','0006,','','公司法、建设工程法','Corporate Law, Construction Engineering Law');
INSERT INTO `arbitman_public` VALUES (1511,'Y','00001530','cdj','蔡达建','蔡达建','CAI Dajian','中国','China','深圳','Shenzhen','0006,','','创业投资、企业管理、投资咨询、市场营销','Venture Capital, business Management, Investment Consulting, Marketing');
INSERT INTO `arbitman_public` VALUES (1512,'Y','00001531','cgy','陈国尧','陈国尧','CHEN Guoyao','中国','China','深圳','Shenzhen','0006,','','证券法、公司法、投融资法','Securities Law, Corporate Law, Investment and Financing Law');
INSERT INTO `arbitman_public` VALUES (1513,'Y','00001532','chl','曹海雷','曹海雷','CAO Hailei','中国','China','深圳','Shenzhen','0006,','','房地产法、仲裁法、比较法','Real Estate Law, Arbitration Law, Comparative Law');
INSERT INTO `arbitman_public` VALUES (1514,'Y','00001533','cxb','查晓斌','查晓斌','ZHA Xiaobin','中国','China','深圳','Shenzhen','0006,','','房地产法、建设工程法、公司法、合同法','Real Estate Law, Construction Engineering Law, Corporate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1515,'Y','00001534','cxm','陈学明','陈学明','CHEN Xueming','中国','China','深圳','Shenzhen','0006,','','国际贸易法、外商投资法、建设工程法、技术转让法','International Trade Law, Foreign Investment Law, Construction Engineering Law, Technology Transfer Law');
INSERT INTO `arbitman_public` VALUES (1516,'Y','00001535','cyd','产耀东','产耀东','CHAN Yaodong','中国','China','深圳','Shenzhen','0006,','','企业国有资产法、企业产权纠纷解决','State-Owned Assets Law, Corporate Property Right Dispute Resolution');
INSERT INTO `arbitman_public` VALUES (1517,'Y','00001536','cyg','曹永刚','曹永刚','CAO Yonggang','中国','China','深圳','Shenzhen','0006,','','合同法、国际贸易、招投标法','Contract Law, International Trade, Bidding Law');
INSERT INTO `arbitman_public` VALUES (1518,'Y','00001537','czt','陈泽桐','陈泽桐','CHEN Zetong','中国','China','深圳','Shenzhen','0006,','','金融法、公司法、合同法、房地产法','Financial Law, Corporate Law, Contract law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1519,'Y','00001538','dk','笪恺','笪恺','DA Kai','中国','China','深圳','Shenzhen','0006,','','保险法、金融法、合同法、公司法','Insurance Law, Financial Law, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1520,'Y','00001539','fdf','范德繁','范德繁','FAN Defan','中国','China','深圳','Shenzhen','0006,','','金融法、合同法、房地产法、国际贸易法','Financial Law, Contract Law, Real Estate Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (1521,'Y','00001540','fxl','傅曦林','傅曦林','FU Xilin','中国','China','深圳','Shenzhen','0006,','','风险投资、私募基金、上市、并购、文化产业投资','Venture Capital, Private Equity Fund, IPO, M&A, Culture Industry Investment');
INSERT INTO `arbitman_public` VALUES (1522,'Y','00001541','fy','付彦','付彦','FU Yan','中国','China','深圳','Shenzhen','0006,','','公司法、证券法','Corporate Law, Securities Law');
INSERT INTO `arbitman_public` VALUES (1523,'Y','00001542','gmz','郭明忠','郭明忠','GUO Mingzhong','中国','China','深圳','Shenzhen','0006,','','公司法、合同法、金融法、民法','Corporate Law, Contract Law, Financial Law, Civil Law');
INSERT INTO `arbitman_public` VALUES (1524,'Y','00001543','gy','郭原','郭原','GUO Yuan','中国','China','深圳','Shenzhen','0006,','','公司法、合同法、企业国有资产法','Corporate Law, Contract Law, State-Owned Assets Law');
INSERT INTO `arbitman_public` VALUES (1525,'Y','00001544','hgh','贺国虎','贺国虎','HE Guohu','中国','China','深圳','Shenzhen','0006,','','保险法、合同法、国际贸易法','Insurance Law, Contract Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (1526,'Y','00001545','hhb','华宏宾','华宏宾','HUA Hongbin','中国','China','深圳','Shenzhen','0006,','','金融法、担保法、民商法','Financial Law, Guaranty Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1527,'Y','00001546','hjn','胡晋南','胡晋南','HU Jinnan','中国','China','深圳','Shenzhen','0006,','','知识产权、涉外民商法、公司法、房地产法','Intellectual Property, Foreign Civil and Commercial Law, Corporate Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1528,'Y','00001547','hlm','侯黎明','侯黎明','HOU Liming','中国','China','深圳','Shenzhen','0006,','','合同法、房地产法、民商法','Contract Law, Real Estate Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1529,'Y','00001548','hqm','贺倩明','贺倩明','HE Qianming','中国','China','深圳','Shenzhen','0006,','','房地产法、建设工程法、合同法、公司法','Real Estate Law, Construction Engineering Law, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1530,'Y','00001549','hxs','黄新山','黄新山','HUANG Xinshan','中国','China','深圳','Shenzhen','0006,','','房地产法、建设工程法、合同法','Real Estate Law, Construction Engineering Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1531,'Y','00001550','hxw','何学文','何学文','HE Xuewen','中国','China','深圳','Shenzhen','0006,','','经济法、民商法','Economic Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1532,'Y','00001551','hze','胡泽恩','胡泽恩','HU Ze\'en','中国','China','深圳','Shenzhen','0006,','','合同法、金融法','Contract Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (1533,'Y','00001552','hzj','黄至竟','黄至竟','HUANG Zhijing','中国','China','深圳','Shenzhen','0006,','','民商法、国际贸易法','Civil and Commercial Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (1534,'Y','00001553','hzx','胡忠孝','胡忠孝','HU Zhongxiao','中国','China','深圳','Shenzhen','0006,','','证券法、公司法、民事程序规则','Securities Law, Corporate Law, Civil Procedure Rules');
INSERT INTO `arbitman_public` VALUES (1535,'Y','00001554','jcy','靳晨阳','靳晨阳','JIN Chenyang','中国','China','深圳','Shenzhen','0006,','','融资担保、合同法、公司法','Financial Guaranty, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1536,'Y','00001555','jdh','江定航','江定航','JIANG Dinghang','中国','China','深圳','Shenzhen','0006,','','商标法、合同法、公司法','Trademark Law, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1537,'Y','00001556','jyc','蒋玉才','蒋玉才','JIANG Yucai','中国','China','深圳','Shenzhen','0006,','','会计和财务管理、创业投资、计算机技术','Accounting and Financial Management, Venture Capital Investment, Computer Technology');
INSERT INTO `arbitman_public` VALUES (1538,'Y','00001557','jyg','蒋毅刚','蒋毅刚','JIANG Yigang','中国','China','深圳','Shenzhen','0006,','','证券法、外商投资法、融资租赁、房地产法','Securities Law, Foreign Investment Law, Financial Leasing, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1539,'Y','00001558','lc','鲁潮','鲁潮','LU Chao','中国','China','深圳','Shenzhen','0006,','','房地产法、建设工程法、合同法、公司法','Real Estate Law, Construction Engineering Law, Contract Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1540,'Y','00001559','lcy','李春瑜','李春瑜','LI Chunyu','中国','China','深圳','Shenzhen','0006,','','证券法、私募基金','Securities Law, Private Equity Fund');
INSERT INTO `arbitman_public` VALUES (1541,'Y','00001560','ld','李东','李东','LI Dong','中国','China','深圳','Shenzhen','0006,','','房地产法、合同法','Real Estate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1542,'Y','00001561','lh','刘浩','刘浩','LIU Hao','中国','China','深圳','Shenzhen','0006,','','公司法、企业投资和管理','Corporate Law, Enterprise Investment and Management');
INSERT INTO `arbitman_public` VALUES (1543,'Y','00001562','lhc','李红春','李红春','LI Hongchun','中国','China','深圳','Shenzhen','0006,','','保险法','Insurance Law');
INSERT INTO `arbitman_public` VALUES (1544,'Y','00001563','ljh','兰建洪','兰建洪','LAN Jianhong','中国','China','深圳','Shenzhen','0006,','','合同法、经济法、房地产法、国际贸易法','Contract Law, Economic Law, Real Estate Law, International Trade Law');
INSERT INTO `arbitman_public` VALUES (1545,'Y','00001564','lkr','林开榕','林开榕','LIN Kairong','中国','China','深圳','Shenzhen','0006,','','民商法','Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1546,'Y','00001565','llp','罗丽萍','罗丽萍','LUO Liping','中国','China','深圳','Shenzhen','0006,','','企业国有资产法、企业产权纠纷解决','State-Owned Assets Law, Corporate Property Right Dispute Resolution');
INSERT INTO `arbitman_public` VALUES (1547,'Y','00001566','lqx','刘清香','刘清香','LIU Qingxiang','中国','China','深圳','Shenzhen','0006,','','金融法','Financial Law');
INSERT INTO `arbitman_public` VALUES (1548,'Y','00001567','lrh','罗润华','罗润华','LUO Runhua','中国','China','深圳','Shenzhen','0006,','','民商法、合同法','Civil and Commercial Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1549,'Y','00001568','lwj','李文君','李文君','LI Wenjun','中国','China','深圳','Shenzhen','0006,','','民商法、金融法、合同法、投资法','Civil and Commercial Law, Financial Law, Contract Law, Investment Law');
INSERT INTO `arbitman_public` VALUES (1550,'Y','00001569','ly','李扬','李扬','LI Yang','中国','China','深圳','Shenzhen','0006,','','知识产权法、竞争法、合同法、侵权法','Intellectual Property Law, Competition Law, Contract Law, Tort Law');
INSERT INTO `arbitman_public` VALUES (1551,'Y','00001570','ly','刘云','刘云','LIU Yun','中国','China','深圳','Shenzhen','0006,','','金融法、公司法、合同法、民法','Financial Law, Corporate Law, Contract Law, Civil Law');
INSERT INTO `arbitman_public` VALUES (1552,'Y','00001571','lyh','李永海','李永海','LI Yonghai','中国','China','深圳','Shenzhen','0006,','','融资租赁、房地产法','Financial Leasing, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1553,'Y','00001572','lzb','蓝中波','蓝中波','LAN Zhongbo','中国','China','深圳','Shenzhen','0006,','','房地产法、合同法','Real Estate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1554,'Y','00001573','lzm','林正茂','林正茂','LIN Zhengmao','中国','China','深圳','Shenzhen','0006,','','公司法、知识产权、国际经济法、合同法','Corporate Law, Intellectual Property, International Economic Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1555,'Y','00001574','lzx','雷昭新','雷昭新','LEI Zhaoxin','中国','China','深圳','Shenzhen','0006,','','房地产法、物业管理法','Real Estate Law, Regulation on Realty Management');
INSERT INTO `arbitman_public` VALUES (1556,'Y','00001575','myy','麻云燕','麻云燕','MA Yunyan','中国','China','深圳','Shenzhen','0006,','','证券法、公司法、并购、投资','Securities Law, Corporate Law, M&A, Investment');
INSERT INTO `arbitman_public` VALUES (1557,'Y','00001576','qh','秦辉','秦辉','QIN Hui','中国','China','深圳','Shenzhen','0006,','','银行法、国际贸易、公司法、合同法','Banking Law, International Trade, Corporate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1558,'Y','00001577','qsp','秦世平','秦世平','QIN Shiping','中国','China','深圳','Shenzhen','0006,','','民商法','Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1559,'Y','00001578','qyh','邱永红','邱永红','QIU Yonghong','中国','China','深圳','Shenzhen','0006,','','公司法、证券法、合同法、国际金融法','Corporate Law, Securities Law, Contract Law, International Financial Law');
INSERT INTO `arbitman_public` VALUES (1560,'Y','00001579','sb','宋兵','宋兵','SONG Bing','中国','China','深圳','Shenzhen','0006,','','民商法、公司法','Civil and Commercial Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1561,'Y','00001580','sg','石岗','石岗','SHI Gang','中国','China','深圳','Shenzhen','0006,','','国际投资法、国际贸易法、房地产法、技术转让法','International Investment Law, International Trade Law, Real Estate Law, Technology Transfer Law');
INSERT INTO `arbitman_public` VALUES (1562,'Y','00001581','sll','孙莉莉','孙莉莉','SUN Lili','中国','China','深圳','Shenzhen','0006,','','公司法、投资法、税法、金融证券','Corporate Law, Investment Law, Tax Law, Finance and Securities');
INSERT INTO `arbitman_public` VALUES (1563,'Y','00001582','slp','宋柳平','宋柳平','SONG Liuping','中国','China','深圳','Shenzhen','0006,','','公司法、知识产权、专利','Corporate Law, Intellectual Property, Patent');
INSERT INTO `arbitman_public` VALUES (1564,'Y','00001583','sm','苏敏','苏敏','SU Min','中国','China','深圳','Shenzhen','0006,','','公司融资、并购、酒店管理','Corporate Finance, M&A, Hotel Management');
INSERT INTO `arbitman_public` VALUES (1565,'Y','00001584','sqy','苏启云','苏启云','SU Qiyun','中国','China','深圳','Shenzhen','0006,','','境内外上市、并购、重组、债券、经济法','Domestic and Overseas IPO, M&A, Reorganization, Bond, Economic Law');
INSERT INTO `arbitman_public` VALUES (1566,'Y','00001585','sy','孙蕴','孙蕴','SUN Yun','中国','China','深圳','Shenzhen','0006,','','公司法、合同法、房地产法','Corporate Law, Contract Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1567,'Y','00001586','tsl','仝胜利','仝胜利','TONG Shengli','中国','China','深圳','Shenzhen','0006,','','合同法、公司法、证券法、房地产法','Contract Law, Corporate Law, Securities Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1568,'Y','00001587','wcy','王成义','王成义','WANG Chengyi','中国','China','深圳','Shenzhen','0006,','','民商法、国际贸易法、房地产法、建设工程法','Civil and Commercial Law, International Trade Law, Real Estate Law, Construction Engineering Law');
INSERT INTO `arbitman_public` VALUES (1569,'Y','00001588','wjp','文介平','文介平','WEN Jieping','中国','China','深圳','Shenzhen','0006,','','金融法、合同法、担保法、房地产法','Financial Law, Contract Law, Guaranty Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1570,'Y','00001589','wsj','王淑杰','王淑杰','WANG Shujie','中国','China','深圳','Shenzhen','0006,','','公司法、股权','Corporate Law, Equity');
INSERT INTO `arbitman_public` VALUES (1571,'Y','00001590','wss','王苏生','王苏生','WANG Susheng','中国','China','深圳','Shenzhen','0006,','','证券法、税法、公司法、投资法','Securities Law, Tax Law, Corporate Law, Investment Law');
INSERT INTO `arbitman_public` VALUES (1572,'Y','00001591','wtf','汪腾锋','汪腾锋','WANG Tengfeng','中国','China','深圳','Shenzhen','0006,','','国际贸易法、民商法、房地产法、知识产权','International Trade Law, Civil and Commercial Law, Real Estate Law, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1573,'Y','00001592','wxj','汪锡君','汪锡君','WANG Xijun','中国','China','深圳','Shenzhen','0006,','','合同法、外商投资法、国际贸易法、WTO法律','Contract Law, Foreign Investment Law, International Trade Law, WTO Law');
INSERT INTO `arbitman_public` VALUES (1574,'Y','00001593','wzy','王泽云','王泽云','WANG Zeyun','中国','China','深圳','Shenzhen','0006,','','保险法、银行法','Insurance Law, Banking Law');
INSERT INTO `arbitman_public` VALUES (1575,'Y','00001594','xgy','夏桂英','夏桂英','XIA Guiying','中国','China','深圳','Shenzhen','0006,','','合同法、公司法、企业国有资产法','Contract Law, Corporate Law, State-Owned Assets Law');
INSERT INTO `arbitman_public` VALUES (1576,'Y','00001595','xp','徐鹏','徐鹏','XU Peng','中国','China','深圳','Shenzhen','0006,','','房地产法、知识产权、环境保护法','Real Estate Law, Intellectual Property, Environmental Protection Law');
INSERT INTO `arbitman_public` VALUES (1577,'Y','00001596','xq','肖庆','肖庆','XIAO Qing','中国','China','深圳','Shenzhen','0006,','','并购、重组、上市公司治理、上市','M&A, Reorganization, Corporate Governance of Listed Companies, IPO');
INSERT INTO `arbitman_public` VALUES (1578,'Y','00001597','xsm','徐松明','徐松明','XU Songming','中国','China','深圳','Shenzhen','0006,','','房地产法','Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1579,'Y','00001598','xsy','徐绍禹','徐绍禹','XU Shaoyu','中国','China','深圳','Shenzhen','0006,','','信息技术、制造业、软件与互联网','Information Technology, Manufacturing, Software and Internet');
INSERT INTO `arbitman_public` VALUES (1580,'Y','00001599','xzg','徐志光','徐志光','XU Zhiguang','中国','China','深圳','Shenzhen','0006,','','并购、重组、上市、公司法、私募基金投资','M&A, Reorganization, IPO, Corporate Law, Private Equity Investment');
INSERT INTO `arbitman_public` VALUES (1581,'Y','00001600','yjf','余俊福','余俊福','YU Junfu','中国','China','深圳','Shenzhen','0006,','','金融债务清理与重组、公司清算与重整','Disposal and Reconstruction of Monetary Liabilities, Company Liquidation and Reorganization');
INSERT INTO `arbitman_public` VALUES (1582,'Y','00001601','yjz','杨建中','杨建中','YANG Jianzhong','中国','China','深圳','Shenzhen','0006,','','银行法、金融法','Banking Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (1583,'Y','00001602','ysn','杨少南','杨少南','YANG Shaonan','中国','China','深圳','Shenzhen','0006,','','公司法、合同法、房地产法、金融证券法','Corporate Law, Contract Law, Real Estate Law, Financial and Securities Law');
INSERT INTO `arbitman_public` VALUES (1584,'Y','00001603','yxm','颜雪明','颜雪明','YAN Xueming','中国','China','深圳','Shenzhen','0006,','','物权法、房地产法、合同法','Property Law, Real Estate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1585,'Y','00001604','yzy','袁中毅','袁中毅','YUAN Zhongyi','中国','China','深圳','Shenzhen','0006,','','合同法、民商法','Contract Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1586,'Y','00001605','zb','张斌','张斌','ZHANG Bin','中国','China','深圳','Shenzhen','0006,','','公司法、投资法、金融法、保险法','Corporate Law, Investment Law, Financial Law, Insurance Law');
INSERT INTO `arbitman_public` VALUES (1587,'Y','00001606','zcb','邹从兵','邹从兵','ZOU Congbing','中国','China','深圳','Shenzhen','0006,','','民商法','Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1588,'Y','00001607','zcy','郑春阳','郑春阳','ZHENG Chunyang','中国','China','深圳','Shenzhen','0006,','','合同法、投资法、房地产法、公司法','Contract Law, Investment Law, Real Estate Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1589,'Y','00001608','zdm','张德明','张德明','ZHANG Deming','中国','China','深圳','Shenzhen','0006,','','合同法、金融法、房地产法、国际经济法','Contract Law, Financial Law, Real Estate Law, International Economic Law');
INSERT INTO `arbitman_public` VALUES (1590,'Y','00001609','zdy','章杜元','章杜元','ZHANG Duyuan','中国','China','深圳','Shenzhen','0006,','','合同法、国际贸易法、招投标法','Contract Law, International Trade Law, Bidding Law');
INSERT INTO `arbitman_public` VALUES (1591,'Y','00001610','zj','朱捷','朱捷','ZHU Jie','中国','China','深圳','Shenzhen','0006,','','保险法、金融法、海商法、合同法','Insurance Law, Financial Law, Maritime Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1592,'Y','00001611','zjj','郑建江','郑建江','ZHENG Jianjiang','中国','China','深圳','Shenzhen','0006,','','证券及资本市场、公司法、基金','Securities and Capital Market, Corporate Law, Funds');
INSERT INTO `arbitman_public` VALUES (1593,'Y','00001612','zlj','张龙江','张龙江','ZHANG Longjiang','中国','China','深圳','Shenzhen','0006,','','招投标法、合同法、国际贸易','Bidding Law, Contract Law, International Trade');
INSERT INTO `arbitman_public` VALUES (1594,'Y','00001613','zsl','张少林','张少林','ZHANG Shaolin','中国','China','深圳','Shenzhen','0006,','','企业管理、资本运作','Business Management, Capital Operation');
INSERT INTO `arbitman_public` VALUES (1595,'Y','00001614','zss','曾穗生','曾穗生','ZENG Suisheng','中国','China','深圳','Shenzhen','0006,','','房地产法','Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1596,'Y','00001615','ztm','郑坦明','郑坦明','ZHENG Tanming','中国','China','深圳','Shenzhen','0006,','','合同法、金融法、房地产法、公司法','Contract Law, Financial Law, Real Estate Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1597,'Y','00001616','zxj','郑学军','郑学军','ZHENG Xuejun','中国','China','深圳','Shenzhen','0006,','','金融法、民商法','Financial Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1598,'Y','00001617','zxq','朱谢群','朱谢群','ZHU Xiequn','中国','China','深圳','Shenzhen','0006,','','知识产权法、民商法','Intellectual Property Law, Civil and Commercial Law');
INSERT INTO `arbitman_public` VALUES (1599,'Y','00001618','zyd','曾尧东','曾尧东','ZENG Yaodong','中国','China','深圳','Shenzhen','0006,','','合同法、经济法、知识产权法和房地产法','Contract Law, Economic Law, Intellectual Property Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1600,'Y','00001619','zzh','曾正宏','曾正宏','ZENG Zhenghong','中国','China','深圳','Shenzhen','0006,','','民法、经济法、房地产法、知识产权法','Civil Law, Economic Law, Real Estate Law, Intellectual Property Law');
INSERT INTO `arbitman_public` VALUES (1601,'Y','00001620','hlp','胡利平','胡利平','HU Liping','中国','China','珠海','Zhuhai','0006,','','房地产法、合同法、融资','Real Estate Law, Contract Law, Financing');
INSERT INTO `arbitman_public` VALUES (1602,'Y','00001621','qxf','邱小飞','邱小飞','QIU Xiaofei','中国','China','珠海','Zhuhai','0006,','','外商投资法、房地产法、公司法、合同法','Foreign Investment Law, Real Estate Law, Corporate Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1603,'Y','00001622','tf','田丰','田丰','TIAN Feng','中国','China','珠海','Zhuhai','0006,','','城市土地开发、投融资、企业并购、跨国商业合作等法律事务','Urban Land Development; Investment & Finance; Merger & Acquisition; International Business Cooperation.');
INSERT INTO `arbitman_public` VALUES (1604,'Y','00001623','lj','李俊','李俊','LI Jun','中国','China','深圳','Shenzhen','0006,','','专利、商业秘密、著作权、商标','Patent, Trade Secret, Copyright, Trademark');
INSERT INTO `arbitman_public` VALUES (1605,'Y','00001624','wb','王波','王波','WANG Bo','中国','China','广州','Guangzhou','0006,','','民商法、知识产权、金融法、证券法','Civil and Commercial Law, Intellectual Property, Financial Law, Securities Law');
INSERT INTO `arbitman_public` VALUES (1606,'Y','00001625','gjj','耿继进','耿继进','GENG Jijin','中国','China','深圳','Shenzhen','0006,','','房地产法、房地产评估、房地产测绘','Real Estate Law, Real Estate Appraisal, Real Estate Surveying');
INSERT INTO `arbitman_public` VALUES (1607,'Y','00001646','zjc','郑家成','郑家成','CHENG, Kar Shing','中国','China','香港','Hong Kong','0006,','','金融、建筑、房地产','Finance, Architecture, Real Estate');
INSERT INTO `arbitman_public` VALUES (1608,'Y','00001647','lxq','林新强','林新强','LAM, San Keung','中国','China','香港','Hong Kong','0006,','','房地产事务、商法','Conveyancing, Commercial Law');
INSERT INTO `arbitman_public` VALUES (1609,'Y','00001648','wlm','文理明','文理明','MUN, Lee Ming, Catherine','中国','China','香港','Hong Kong','0006,','','国际货物买卖、合资、商事合同、建筑和基础设施','International Sale of Goods, Joint Ventures, Commercial Contracts, Construction and Infrastructure');
INSERT INTO `arbitman_public` VALUES (1610,'Y','00001649','blxe','保罗·希尔','保罗·希尔','THEIL, Paul','中国','China','香港','Hong Kong','0006,','','投资、银行业务、小额信贷、基金管理','Investment, Banking, Microfinance, Funds Management');
INSERT INTO `arbitman_public` VALUES (1611,'Y','00001650','dwq','杜伟强','杜伟强','TO, Wai Keung','中国','China','香港','Hong Kong','0006,','','仲裁与调解、商业及企业、保险、建筑管理、房地产','Arbitration and Mediation, Commercial and Corporate, Insurance, Building Management, Conveyancing');
INSERT INTO `arbitman_public` VALUES (1612,'Y','00001651','hrl','黄仁龙','黄仁龙','WONG, Yan Lung','中国','China','香港','Hong Kong','0006,','','民事法及商法、公法','Civil and Commercial Law, Public Law');
INSERT INTO `arbitman_public` VALUES (1613,'Y','00001652','zd','张冬','张冬','ZHANG Dong','中国','China','哈尔滨','Harbin','0006,','','合同法、知识产权法','Contract Law, Intellectual Property Law');
INSERT INTO `arbitman_public` VALUES (1614,'Y','00001653','cy','陈勇','陈勇','CHEN Yong','中国','China','深圳','Shenzhen','0006,','','公司法、证券法、投融资','Corporate Law, Securities Law, Investment and Financing');
INSERT INTO `arbitman_public` VALUES (1615,'Y','00001654','nwj','牛文婕','牛文婕','NIU Wenjie','中国','China','上海','Shanghai','0006,','','证券法、公司法、证券登记结算法律制度、合同法','Securities Law, Corporate Law, Legal Regime and International Conventions on Securities CSD and Clearing, Contract Law');
INSERT INTO `arbitman_public` VALUES (1616,'Y','00001655','pzj','彭章键','彭章键','PENG Zhangjian','中国','China','深圳','Shenzhen','0006,','','民商法、知识产权法、证券法、房地产法','Civil and Commercial Law, Intellectual Property Law, Securities Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1617,'Y','00001656','wxh','王星辉','王星辉','WANG Xinghui','中国','China','深圳','Shenzhen','0006,','','公司法、合同法、房地产法、知识产权法','Corporate Law, Contract Law, Real Estate Law, Intellectual Property Law');
INSERT INTO `arbitman_public` VALUES (1618,'Y','00001657','xjd','邢建东','邢建东','XING Jiandong','中国','China','广州','Guangzhou','0006,','','外资并购、房地产法、股权投资、公司法、信托法','M&A, Real Estate Law, Equity Investment, Corporate Law, Trust Law');
INSERT INTO `arbitman_public` VALUES (1619,'Y','00001658','yhb','袁红兵  ','袁红兵  ','YUAN Hongbing','中国','China','深圳','Shenzhen','0006,','','经济法、税法','Economic Law, Tax Law');
INSERT INTO `arbitman_public` VALUES (1620,'Y','00001659','lkm','林克敏','林克敏','LIN Kemin','中国','China','深圳','Shenzhen','0006,','','外商直接投资、并购、国际贸易、国际金融','Foreign Direct Investment, M&A, International Trade, International Finance');
INSERT INTO `arbitman_public` VALUES (1621,'Y','00001660','lzr','梁智锐','梁智锐','LIANG Zhirui','中国','China','东莞','Dongguan','0006,','','公司法、涉外融资租赁、投资、建筑','Corporate Law, Foreign Financing Lease, Investment, Construction');
INSERT INTO `arbitman_public` VALUES (1622,'Y','00001661','hp','韩平','韩平','HAN Ping','中国','China','深圳','Shenzhen','0006,','','仲裁法、合同法、国际经济法、国际私法','Arbitration Law, Contract Law, International Economic Law, Private International Law');
INSERT INTO `arbitman_public` VALUES (1623,'Y','00001662','cy','蔡奕','蔡奕','CAI Yi','中国','China','深圳','Shenzhen','0006,','','证券法、公司法、金融法','Securities Law, Corporate Law, Financial Law');
INSERT INTO `arbitman_public` VALUES (1624,'Y','00001663','lzy','李茁英','李茁英','LI Zhuoying','中国','China','深圳','Shenzhen','0006,','','民商事争议解决、知识产权、公司清算及破产清算业务','Civil and Commercial Dispute Resolution, Intellectual Property, Corporate Liquidation');
INSERT INTO `arbitman_public` VALUES (1625,'Y','00001664','xhh','肖黄鹤','肖黄鹤','XIAO Huanghe','中国','China','深圳','Shenzhen','0006,','','公司法、合同法、保险法、国际私法、仲裁法、金融法、外商投资法','Corporate Law, Contract Law, Insurance Law, Private International Law, Arbitration Law, Financial Law, Foreign Investment Law');
INSERT INTO `arbitman_public` VALUES (1626,'Y','00001665','xw','谢伟','谢伟','XIE Wei','中国','China','珠海','Zhuhai','0006,','','金融投资、基金管理、资产管理、金融创新','Financial Investment, Funds Management, Assets Management, Financial Innovation');
INSERT INTO `arbitman_public` VALUES (1627,'Y','00001666','hgb','胡国斌','胡国斌','HU Guobin','中国','China','深圳','Shenzhen','0006,','','金融法、企业国有资产法','Financial Law, State-owned Assets Law');
INSERT INTO `arbitman_public` VALUES (1628,'Y','00001667','zsh','张善华','张善华','ZHANG Shanhua','中国','China','深圳','Shenzhen','0006,','','合同法、房地产法、公司法、经济法','Contract Law, Real Estate Law, Corporate Law, Economic Law');
INSERT INTO `arbitman_public` VALUES (1629,'Y','00001668','wxx','韦小宣','韦小宣','WEI Xiaoxuan','中国','China','深圳','Shenzhen','0006,','','民商事合同、并购与重组、建筑工程','Civil and Commercial Contract, M&A and Reorganization,Construction Engineering');
INSERT INTO `arbitman_public` VALUES (1630,'Y','00001669','zf','张锋','张锋','ZHANG Feng','中国','China','上海','Shanghai','0006,','','企业并购、中外合资、合同法、房地产','M&A, Joint Ventures, Contract Law, Real Estate');
INSERT INTO `arbitman_public` VALUES (1631,'Y','00001670','wyj','王义军','王义军','WANG Yijun','中国','China','广州','Guangzhou','0006,','','房地产法、合同法、公司法、知识产权法','Real Estate Law, Contract Law,Corporate Law, Intellectual Property Law');
INSERT INTO `arbitman_public` VALUES (1632,'Y','00001671','lqz','李庆中','李庆中','LI Qingzhong','中国','China','深圳','Shenzhen','0006,','','证券法、公司法','Securities Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1633,'Y','00001672','fds','傅鼎生','傅鼎生','FU Dingsheng','中国','China','上海','Shanghai','0006,','','合同法、房地产法、股权转让、票据法','Contract Law, Real Estate Law, Equity Transfer, Negotiable Instruments Law');
INSERT INTO `arbitman_public` VALUES (1634,'Y','00001673','zj','周娟','周娟','ZHOU Juan','中国','China','深圳','Shenzhen','0006,','','合同法、国际贸易、公司法','Contract Law, International Trade, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1635,'Y','00001674','wxb','吴学斌','吴学斌','WU Xuebin','中国','China','深圳','Shenzhen','0006,','','民法、商法、合同法','Civil Law, Commercial Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1636,'Y','00001675','gl','郭丽','郭丽','GUO Li','中国','China','深圳','Shenzhen','0006,','','外商投资法、公司法、合同法、房地产法','Foreign Investment Law, Corporate Law, Contract Law, Real Estate Law');
INSERT INTO `arbitman_public` VALUES (1637,'Y','00001676','ywm','鄢维民','鄢维民','YAN Weimin','中国','China','深圳','Shenzhen','0006,','','证券法','Securities Law');
INSERT INTO `arbitman_public` VALUES (1638,'Y','00001677','ldy','刘东耀','刘东耀','LIU Dongyao','中国','China','深圳','Shenzhen','0006,','','金融监管、合规风控、证券基金法规制定','Financial Supervision, Risk Management, Securities Management Regulation');
INSERT INTO `arbitman_public` VALUES (1639,'Y','00001678','gjj','郭建军','郭建军','GUO Jianjun','中国','China','深圳','Shenzhen','0006,','','民商法、知识产权、国际经济法、IT通信','Civil and Commercial Law, Intellectual Property, International Economic Law, IT and Telecom');
INSERT INTO `arbitman_public` VALUES (1640,'Y','00001679','zjs','赵劲松','赵劲松','ZHAO Jinsong','中国','China','上海','Shanghai','0006,','','海商法、航运金融、航海技术','Maritime Law, Shipping Finance, Maritime Studies');
INSERT INTO `arbitman_public` VALUES (1641,'Y','00001680','wxh','吴晓辉','吴晓辉','WU Xiaohui','中国','China','广州','Guangzhou','0006,','','国际贸易法、海商法、合同法、公司法','International Trade Law, Maritime Law, Contract Law,Corporate Law');
INSERT INTO `arbitman_public` VALUES (1642,'Y','00001681','cl','陈磊','陈磊','CHEN Lei','中国','China','香港','Hong Kong','0006,','','国际货物销售、建筑合同、房地产开发、涉港投资','International Sale of Goods, Construction Contracts, Real Estate Development, Investment Related in Hong Kong');
INSERT INTO `arbitman_public` VALUES (1643,'Y','00001682','ckw','程科伟','程科伟','CHENG Kewei','中国','China','深圳','Shenzhen','0006,','','公司法、企业国有资产法、合同法','Corporate Law, State-owned Assets Law, Contract Law');
INSERT INTO `arbitman_public` VALUES (1644,'N','001','','','','','','','','','','','','');
INSERT INTO `arbitman_public` VALUES (1645,'N','002','','','','','','','','','','','','');
INSERT INTO `arbitman_public` VALUES (1646,'Y','00001683','wb','王波','王波','WANG Bo','中国','China','深圳','Shenzhen','0006,','','证券法、公司法','Securities Law, Corporate Law');
INSERT INTO `arbitman_public` VALUES (1647,'Y','00001684','arm','ABDEL RAOUF, Mohamed ','ABDEL RAOUF, Mohamed ','ABDEL RAOUF, Mohamed','埃及','Egypt','开罗','Cairo','0006,','','商法、建筑合同、投资协议、体育纠纷','Commercial Law, Construction Contracts, Investment Agreements, Sports-Related Disputes');
INSERT INTO `arbitman_public` VALUES (1648,'Y','00001685','ate','AL TAMIMI, Essam','AL TAMIMI, Essam','AL TAMIMI, Essam','阿联酋','U.A.E.','沙迦','Sharjah','0006,','','商业纠纷、建筑工程、跨境纠纷、基础设施','Commercial Matters, Construction Engineering,Cross-Border Disputes, Infrastructure Projects');
INSERT INTO `arbitman_public` VALUES (1649,'Y','00001686','ab','AMOS, Bill','AMOS, Bill','AMOS, Bill','英国','U.K.','中国香港','Hong Kong','0006,','','国际贸易及商品、船务、保险、金融','International Trade & Commodities, Shipping, Insurance, Finance');
INSERT INTO `arbitman_public` VALUES (1650,'Y','00001687','bj','BASEDOW, Jürgen ','BASEDOW, Jürgen ','BASEDOW, Jürgen','德国','Germany','汉堡','Hamburg','0006,','','竞争法、保险、海商法、国际私法','Competition Law, Insurance, Maritime Law,Private International Law');
INSERT INTO `arbitman_public` VALUES (1651,'Y','00001688','bhw','BEN HAMIDA, Walid','BEN HAMIDA, Walid','BEN HAMIDA, Walid','法国/突尼斯','Tunis/France','巴黎/突尼斯','Paris and Tunis','0006,','','阿拉伯法、投资法、能源与贸易法','Arab Laws, Investment Law, Energy and Trade Law');
INSERT INTO `arbitman_public` VALUES (1652,'Y','00001689','cf','CHANG, Frederick','CHANG, Frederick','CHANG, Frederick','美国','U.S.A.','中国北京','Beijing','0006,','','并购、融资、私募基金、监管合规审查','M&A, Financing, Private Equity, Regulatory');
INSERT INTO `arbitman_public` VALUES (1653,'Y','00001690','dxh','DANG, Xuan Hop','DANG, Xuan Hop','DANG, Xuan Hop','越南','Vietnam','河内','Hanoi','0006,','','国际货物销售、国际投资、仲裁、合同法、商事纠纷解决','International Sale of Goods, International Investment, Arbitration, Contract Law, Commercial Dispute Resolution');
INSERT INTO `arbitman_public` VALUES (1654,'Y','00001691','dg','DENTON, Gavin ','DENTON, Gavin ','DENTON, Gavin','澳大利亚','Australia','中国香港','China Hong Kong','0006,','','国际货物销售及贸易纠纷、大宗商品及矿业、分销及合资纠纷、广播传媒、建筑','International Sale of Goods/Trade Disputes,Commodities ＆ Mining, Distribution ＆Joint Venture Disputes, Broadcasting/Media, Construction');
INSERT INTO `arbitman_public` VALUES (1655,'Y','00001692','ea','EMMERSON, Alec','EMMERSON, Alec','EMMERSON, Alec','英国','British','迪拜','Dubai','0006,','','航运和船舶建造、保险、国际贸易、能源、合资','Shipping and Ship Building, Insurance, International Trade, Energy, Joint Ventures');
INSERT INTO `arbitman_public` VALUES (1656,'Y','00001693','eb','ETGEN, Bjoern','ETGEN, Bjoern','ETGEN, Bjoern','德国','Germany','普兰奈格','Planegg','0006,','','国际法、国际贸易、建筑法、技术转让法','International Law, International Trade, Construction Law, Technology Transfer Law');
INSERT INTO `arbitman_public` VALUES (1657,'Y','00001694','ga','GALIC, Ales ','GALIC, Ales ','GALIC, Ales','斯洛文尼亚','Slovenia','卢布尔雅娜','Ljubljana','0006,','','仲裁法、国际私法、合同','Arbitration Law, Private International Law, Contracts');
INSERT INTO `arbitman_public` VALUES (1658,'Y','00001695','gh','GE, Huangbin','GE, Huangbin','GE, Huangbin','新加坡','Singapore','新加坡','Singapore','0006,','','国际仲裁、调解、机械工程、计算机及设备','International Arbitration, Mediation, Mechanical Engineering, Computer and Equipment');
INSERT INTO `arbitman_public` VALUES (1659,'Y','00001696','gm','GRECO, Michael','GRECO, Michael','GRECO, Michael','美国','USA','波士顿','Boston','0006,','','知识产权、证券及金融欺诈、制造业欺诈、建筑欺诈','Intellectual Property, Securities/Financial Fraud, Manufacturing Fraud, Construction Fraud');
INSERT INTO `arbitman_public` VALUES (1660,'Y','00001697','hj','HARROWELL, James','HARROWELL, James','HARROWELL, James','澳大利亚','Australia','悉尼','Sydney','0006,','','贸易合同、金融协议、建筑协议','Trade Contracts, Finance Agreements, Construction Agreements');
INSERT INTO `arbitman_public` VALUES (1661,'Y','00001698','hv','HEISKANEN, Veijo','HEISKANEN, Veijo','HEISKANEN, Veijo','芬兰','Finland','日内瓦','Geneva','0006,','','能源、石油、建筑、投资','Energy, Petroleum, Construction, Investment');
INSERT INTO `arbitman_public` VALUES (1662,'Y','00001699','hb','HESS, Burkhard','HESS, Burkhard','HESS, Burkhard','德国','Germany','卢森堡','Luxembourg','0006,','','国际私法、欧盟法、国际公法、规制程序法','Private International Law, European Law, Public International Law, Regulatory Procedural Law');
INSERT INTO `arbitman_public` VALUES (1663,'Y','00001700','ha','HOSSAIN, Ajmalul','HOSSAIN, Ajmalul','HOSSAIN, Ajmalul','英国/孟加拉','UK/Bangal','伦敦/达卡','London/Dacca','0006,','','仲裁及ADR、债务回收、商业和金融合同、规制及受信义务、跨境交易纠纷','Arbitration and ADR, Debt and Security Recovery, Commercial Documents and Financial Contracts, Regulatory and Fiduciary Obligations, Cross-Border Disputes');
INSERT INTO `arbitman_public` VALUES (1664,'Y','00001701','jfdlyl','J. Félix de Luis y Lorenzo','J. Félix de Luis y Lorenzo','J. Félix de Luis y Lorenzo','西班牙','Spain','马德里','Madrid','0006,','','民商事法律、金融、合资、并购、国际贸易','Civil and Commercial Law, Finance, Joint Ventures, M&A, International Trade');
INSERT INTO `arbitman_public` VALUES (1665,'Y','00001702','lvm','LOK, Vi Ming','LOK, Vi Ming','LOK, Vi Ming','新加坡','Singapore','新加坡','Singapore','0006,','','国际仲裁、国际航空、国际保险、医药','International Arbitration, International Aviation, International Insurance, Medical Law');
INSERT INTO `arbitman_public` VALUES (1666,'Y','00001703','la','LOUBIER, Antoine','LOUBIER, Antoine','LOUBIER, Antoine','法国','France','中国广州','China Guangzhou','0006,','','国际货物销售、国际投资、并购、上市、知识产权','International Sale of Goods, International Investment, M&A, IPO, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1667,'Y','00001704','mo','MARTINENKO, Olexander','MARTINENKO, Olexander','MARTINENKO, Olexander','乌克兰','Ukraine','基辅','Kiev','0006,','','石油和天然气纠纷、商业能源项目、并购','Energy Disputes (in particular Oil & Gas), Commercial Energy and Projects, M&A');
INSERT INTO `arbitman_public` VALUES (1668,'Y','00001705','mpj','MCCONNAUGHAY, Philip J.','MCCONNAUGHAY, Philip J.','MCCONNAUGHAY, Philip J.','美国','USA','中国深圳','China Shenzhen','0006,','','仲裁、知识产权、竞争法、复杂商业','Arbitration, Intellectual Property, Competition Law, Complex Commercial');
INSERT INTO `arbitman_public` VALUES (1669,'Y','00001706','nk','NASSIF, Karim ','NASSIF, Karim ','NASSIF, Karim','黎巴嫩','Lebanon','迪拜','Dubai','0006,','','民法及商事合同、房地产和建筑、公司法、并购、银行、上市、伊斯兰金融','Civil Law and Commercial Contracts, Real Estate and Construction, Company Law, Acquisitions, Banking, IPO, Islamic Financing');
INSERT INTO `arbitman_public` VALUES (1670,'Y','00001707','nm','NICOLINI, Marco ','NICOLINI, Marco ','NICOLINI, Marco','意大利','Italy','中国香港','China Hong Kong','0006,','','并购、知识产权、能源','Corporate M&A, Intellectual Property, Energy');
INSERT INTO `arbitman_public` VALUES (1671,'Y','00001708','nbg','NILSSON, Bo G.H.','NILSSON, Bo G.H.','NILSSON, Bo G.H.','瑞典','Sweden','尼雪平','Nykping','0006,','','国际仲裁','International Arbitration');
INSERT INTO `arbitman_public` VALUES (1672,'Y','00001709','ra','REYES, Anselmo','REYES, Anselmo','REYES, Anselmo','加拿大','Canada','中国香港','China Hong Kong','0006,','','商业、航运、公司、建筑','Commercial, Shipping, Companies, Construction');
INSERT INTO `arbitman_public` VALUES (1673,'Y','00001710','racs','RYSSDAL, Anders Chr. Stray','RYSSDAL, Anders Chr. Stray','RYSSDAL, Anders Chr. Stray','挪威','Norway','奥斯陆','Oslo','0006,','','石油和能源、合资、并购','Oil & Energy, Joint Ventures, M&A');
INSERT INTO `arbitman_public` VALUES (1674,'Y','00001711','sg','SACERDOTI, Giorgio','SACERDOTI, Giorgio','SACERDOTI, Giorgio','意大利','Italy','米兰','Milano','0006,','','国际合同、投资、建设、保险、欧盟法、国际贸易、仲裁','International Contracts, Investment, Construction, Insurance, European Law, International Trade, Arbitration');
INSERT INTO `arbitman_public` VALUES (1675,'Y','00001712','srp','SCHEPARD, Richard Paul ','SCHEPARD, Richard Paul ','SCHEPARD, Richard Paul','美国/法国','America/France','巴黎','Paris','0006,','','商业交易法律、国际商事协议、诉讼及仲裁、诉前策略','Transactional Law, International Commercial Agreements, Litigation and Arbitration, Pre-litigation Strategy');
INSERT INTO `arbitman_public` VALUES (1676,'Y','00001713','sm','SCOTT, Martin ','SCOTT, Martin ','SCOTT, Martin','澳大利亚','Australia','墨尔本','Melbourne','0006,','','商业、海事、基础设施、工程','Commerce, Maritime, Infrastructure, Engineering');
INSERT INTO `arbitman_public` VALUES (1677,'Y','00001714','st','SLIPACHUK, Tatyana','SLIPACHUK, Tatyana','SLIPACHUK, Tatyana','乌克兰','Ukraine','基辅','Kiev','0006,','','民法、海商法、贸易法、商法','Civil Law, Maritime Law, Trade Law, Commercial Law');
INSERT INTO `arbitman_public` VALUES (1678,'Y','00001715','st','STIPANOWICH, Thomas','STIPANOWICH, Thomas','STIPANOWICH, Thomas','美国','USA','马里布','Malibu','0006,','','建筑工程、商业、合同','Construction and Engineering, Commercial, Contract');
INSERT INTO `arbitman_public` VALUES (1679,'Y','00001716','vdbk','VAN DER BORGHT, Kim','VAN DER BORGHT, Kim','VAN DER BORGHT, Kim','比利时','Belgium','布鲁塞尔','Brussels','0006,','','国际贸易法、国际商法、国际经济法','International Trade Law, International Commercial Law,International Economic Law');
INSERT INTO `arbitman_public` VALUES (1680,'Y','00001717','vhh','VAN HOUTTE, Hans','VAN HOUTTE, Hans','VAN HOUTTE, Hans','比利时','Belgium','海牙','The Hague','0006,','','国际合同、合资、投资、并购','International Contracts, Joint Ventures, Investment, M&A');
INSERT INTO `arbitman_public` VALUES (1681,'Y','00001718','vn','VILKOVA, Nina','VILKOVA, Nina','VILKOVA, Nina','俄罗斯','Russia','莫斯科','Moscow','0006,','','国际私法、国际合同、国际仲裁、货物销售、代理、建设、投资','Private International Law, International Contracts, International Arbitration, Sale of Goods, Agency, Construction, Investment');
INSERT INTO `arbitman_public` VALUES (1682,'Y','00001719','vsg','VON SEGESSER, Georg','VON SEGESSER, Georg','VON SEGESSER, Georg','瑞士','Switzeland','Zumikon','Zumikon','0006,','','公司法和合同法、并购、石油与天然气、销售、股东协议和合资、分销与服务','Corporate and General Contract Law, M&A, Oil & Gas, Sales & Purchase-Supply, Shareholders\' Agreement and Joint Ventures, Distribution and Service Agreements');
INSERT INTO `arbitman_public` VALUES (1683,'Y','00001720','wt','WANG, Tong','WANG, Tong','WANG, Tong','美国','U.S.A','纽约','New York','0006,','','公司法、商事合同、信息科技/网上商业、并购、知识产权、私募股权投资','Corporate Law, Commercial Contracts, IT/E-Commerce, M&A, Intellectual Property, Private Equity');
INSERT INTO `arbitman_public` VALUES (1684,'Y','00001721','wr','WERBICKI, Raymond','WERBICKI, Raymond','WERBICKI, Raymond','加拿大/英国','Canada/U.K.','伦敦','London','0006,','','与制造有关的商业投资仲裁、分销、通信、信息技术、能源、矿产及建设','Commercial and Investment Arbitration in Manufacturing, Distribution, Tele-communications, IT, Energy, Mining & Construction Industries');
INSERT INTO `arbitman_public` VALUES (1685,'Y','00001722','yd','YVES, Derains','YVES, Derains','YVES, Derains','法国','France','巴黎','Paris','0006,','','国际仲裁、国际私法','International Arbitration, Private International Law');
INSERT INTO `arbitman_public` VALUES (1686,'Y','00001723','ei','EHIRIBE, Ike ','EHIRIBE, Ike ','EHIRIBE, Ike','英国/尼日利亚','British/Nigeria','伦敦','London','0006,','','国际贸易法、国际商事合同、合资、石油与天然气、国际投资','International Trade Law, International Commercial Contracts, Joint Venture Projects, Oil & Gas, International Investment');
INSERT INTO `arbitman_public` VALUES (1687,'Y','00001724','mmj','MOSER, Michael Joseph','MOSER, Michael Joseph','MOSER, Michael Joseph','奥地利','Austria','中国香港','China Hong Kong','0006,','','国际仲裁、合资、石油与天然气、直接投资、技术许可','International Arbitration, Joint Ventures, Oil & Gas, Direct Investment, Technology Licensing');
INSERT INTO `arbitman_public` VALUES (1688,'Y','00001725','rm','RHODES, James M.','RHODES, James M.','RHODES, M.James','美国','U.S.A','纽约','New York','0006,','','合同、APA和SPA协议争议解决、建筑、证券、房地产、知识产权','Contract Actions, Disputes under APA and SPA Agreements, Construction, Securities, Real Estate, Intellectual Property');
INSERT INTO `arbitman_public` VALUES (1689,'Y','00001726','rk','ROONEY, Kim ','ROONEY, Kim ','ROONEY, Kim','澳大利亚','Australia','中国香港','China Hong Kong','0006,','','商业纠纷、基础设施、能源、智能技术','Commercial Disputes, Infrastructure, Energy, Intellectual Technology');
INSERT INTO `arbitman_public` VALUES (1690,'Y','00001727','wcw','WONG, Chao Wai','WONG, Chao Wai','WONG, Chao Wai','英国','U.K.','中国香港','China Hong Kong','0006,','','法律、商业合同、运输（包括货运）、保险','Law, Contract Actions, Transportation, Insurance');
INSERT INTO `arbitman_public` VALUES (1691,'N','00001728','cjy','陈纪元','陈纪元','','','','','','0006,','','','');
INSERT INTO `arbitman_public` VALUES (1692,'N','00001729','gzz','高宗泽','高宗泽','','','','','','','','','');
INSERT INTO `arbitman_public` VALUES (1693,'Y','a115','','李四','李四','李四','国籍(中文)','国籍(英文)','所在地(中文)','所在地(英文)','','01,02','专长(中文)','专长(英文');
INSERT INTO `arbitman_public` VALUES (1694,'Y','a116','','李小四','李小四','李小四','','','','','','01,02','','');
INSERT INTO `arbitman_public` VALUES (1695,'Y','a114','','李生','李生','李生','','','','','','','','');
INSERT INTO `arbitman_public` VALUES (1696,'Y','a125','','123456789','123456789','123456789','afa','adfa','dasfa','dafa','','','dfafadf','afa');
INSERT INTO `arbitman_public` VALUES (1697,'Y','a126','','平平','平平','平平','dfas','adsfadsf','dsf','sdfas','','','d','daf');
INSERT INTO `arbitman_public` VALUES (1698,'Y','a128','','测试仲裁员','测试仲裁员','测试仲裁员','国籍(中文)','国籍(英文)','所在地(中文)','所在地(英文)','','01,02','专长(中文','专长(英文');
INSERT INTO `arbitman_public` VALUES (1699,'N','a135','','王海平','王海平','王海平','','','','','','','','');

--
-- Table structure for table `arbitman_public_now`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arbitman_public_now` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inside_id` int(11) DEFAULT NULL COMMENT '内网id(对应tb_arbitmannows的id)',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `arbitman_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仲裁员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1467 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='在聘仲裁员信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbitman_public_now`
--

INSERT INTO `arbitman_public_now` VALUES (1,1,'N','001');
INSERT INTO `arbitman_public_now` VALUES (2,2,'N','002');
INSERT INTO `arbitman_public_now` VALUES (3,4,'Y','00000014');
INSERT INTO `arbitman_public_now` VALUES (4,5,'Y','00000015');
INSERT INTO `arbitman_public_now` VALUES (5,6,'Y','00000016');
INSERT INTO `arbitman_public_now` VALUES (6,7,'Y','00000017');
INSERT INTO `arbitman_public_now` VALUES (7,8,'Y','00000018');
INSERT INTO `arbitman_public_now` VALUES (8,9,'Y','00000019');
INSERT INTO `arbitman_public_now` VALUES (9,10,'Y','00000020');
INSERT INTO `arbitman_public_now` VALUES (10,11,'Y','00000021');
INSERT INTO `arbitman_public_now` VALUES (11,12,'Y','00000022');
INSERT INTO `arbitman_public_now` VALUES (12,13,'Y','00000023');
INSERT INTO `arbitman_public_now` VALUES (13,15,'Y','00000025');
INSERT INTO `arbitman_public_now` VALUES (14,16,'Y','00000026');
INSERT INTO `arbitman_public_now` VALUES (15,17,'Y','00000027');
INSERT INTO `arbitman_public_now` VALUES (16,18,'Y','00000028');
INSERT INTO `arbitman_public_now` VALUES (17,19,'Y','00000029');
INSERT INTO `arbitman_public_now` VALUES (18,20,'Y','00000030');
INSERT INTO `arbitman_public_now` VALUES (19,22,'Y','00000033');
INSERT INTO `arbitman_public_now` VALUES (20,23,'Y','00000034');
INSERT INTO `arbitman_public_now` VALUES (21,24,'Y','00000035');
INSERT INTO `arbitman_public_now` VALUES (22,26,'Y','00000032');
INSERT INTO `arbitman_public_now` VALUES (23,27,'Y','00000043');
INSERT INTO `arbitman_public_now` VALUES (24,28,'Y','00000044');
INSERT INTO `arbitman_public_now` VALUES (25,29,'Y','00000045');
INSERT INTO `arbitman_public_now` VALUES (26,30,'Y','00000046');
INSERT INTO `arbitman_public_now` VALUES (27,31,'Y','00000047');
INSERT INTO `arbitman_public_now` VALUES (28,32,'Y','00000048');
INSERT INTO `arbitman_public_now` VALUES (29,35,'Y','00000051');
INSERT INTO `arbitman_public_now` VALUES (30,36,'Y','00000052');
INSERT INTO `arbitman_public_now` VALUES (31,37,'Y','00000053');
INSERT INTO `arbitman_public_now` VALUES (32,38,'Y','00000055');
INSERT INTO `arbitman_public_now` VALUES (33,39,'Y','00000056');
INSERT INTO `arbitman_public_now` VALUES (34,40,'Y','00000057');
INSERT INTO `arbitman_public_now` VALUES (35,41,'Y','00000058');
INSERT INTO `arbitman_public_now` VALUES (36,43,'Y','00000062');
INSERT INTO `arbitman_public_now` VALUES (37,47,'Y','00000066');
INSERT INTO `arbitman_public_now` VALUES (38,49,'Y','00000068');
INSERT INTO `arbitman_public_now` VALUES (39,51,'Y','00000071');
INSERT INTO `arbitman_public_now` VALUES (40,52,'Y','00000072');
INSERT INTO `arbitman_public_now` VALUES (41,53,'Y','00000073');
INSERT INTO `arbitman_public_now` VALUES (42,54,'Y','00000074');
INSERT INTO `arbitman_public_now` VALUES (43,55,'Y','00000075');
INSERT INTO `arbitman_public_now` VALUES (44,56,'Y','00000076');
INSERT INTO `arbitman_public_now` VALUES (45,57,'Y','00000077');
INSERT INTO `arbitman_public_now` VALUES (46,58,'Y','00000079');
INSERT INTO `arbitman_public_now` VALUES (47,59,'Y','00000078');
INSERT INTO `arbitman_public_now` VALUES (48,61,'Y','00000081');
INSERT INTO `arbitman_public_now` VALUES (49,63,'Y','00000083');
INSERT INTO `arbitman_public_now` VALUES (50,64,'Y','00000084');
INSERT INTO `arbitman_public_now` VALUES (51,65,'Y','00000040');
INSERT INTO `arbitman_public_now` VALUES (52,67,'Y','00000087');
INSERT INTO `arbitman_public_now` VALUES (53,68,'Y','00000089');
INSERT INTO `arbitman_public_now` VALUES (54,69,'Y','00000095');
INSERT INTO `arbitman_public_now` VALUES (55,70,'Y','00000106');
INSERT INTO `arbitman_public_now` VALUES (56,71,'Y','00000107');
INSERT INTO `arbitman_public_now` VALUES (57,73,'Y','00000109');
INSERT INTO `arbitman_public_now` VALUES (58,74,'Y','00000110');
INSERT INTO `arbitman_public_now` VALUES (59,75,'Y','00000112');
INSERT INTO `arbitman_public_now` VALUES (60,76,'Y','00000111');
INSERT INTO `arbitman_public_now` VALUES (61,77,'Y','00000113');
INSERT INTO `arbitman_public_now` VALUES (62,78,'Y','00000114');
INSERT INTO `arbitman_public_now` VALUES (63,79,'Y','00000115');
INSERT INTO `arbitman_public_now` VALUES (64,80,'Y','00000116');
INSERT INTO `arbitman_public_now` VALUES (65,81,'Y','00000117');
INSERT INTO `arbitman_public_now` VALUES (66,82,'Y','00000118');
INSERT INTO `arbitman_public_now` VALUES (67,84,'Y','00000192');
INSERT INTO `arbitman_public_now` VALUES (68,86,'Y','00000039');
INSERT INTO `arbitman_public_now` VALUES (69,87,'Y','00000059');
INSERT INTO `arbitman_public_now` VALUES (70,88,'Y','00000061');
INSERT INTO `arbitman_public_now` VALUES (71,89,'Y','00000069');
INSERT INTO `arbitman_public_now` VALUES (72,90,'Y','00000090');
INSERT INTO `arbitman_public_now` VALUES (73,91,'Y','00000091');
INSERT INTO `arbitman_public_now` VALUES (74,92,'Y','00000092');
INSERT INTO `arbitman_public_now` VALUES (75,93,'Y','00000093');
INSERT INTO `arbitman_public_now` VALUES (76,94,'Y','00000094');
INSERT INTO `arbitman_public_now` VALUES (77,95,'Y','00000096');
INSERT INTO `arbitman_public_now` VALUES (78,96,'Y','00000097');
INSERT INTO `arbitman_public_now` VALUES (79,98,'Y','00000099');
INSERT INTO `arbitman_public_now` VALUES (80,99,'Y','00000100');
INSERT INTO `arbitman_public_now` VALUES (81,100,'Y','00000101');
INSERT INTO `arbitman_public_now` VALUES (82,101,'Y','00000102');
INSERT INTO `arbitman_public_now` VALUES (83,102,'Y','00000103');
INSERT INTO `arbitman_public_now` VALUES (84,103,'Y','00000104');
INSERT INTO `arbitman_public_now` VALUES (85,104,'Y','00000105');
INSERT INTO `arbitman_public_now` VALUES (86,106,'Y','00000120');
INSERT INTO `arbitman_public_now` VALUES (87,107,'Y','00000121');
INSERT INTO `arbitman_public_now` VALUES (88,108,'Y','00000122');
INSERT INTO `arbitman_public_now` VALUES (89,109,'Y','00000123');
INSERT INTO `arbitman_public_now` VALUES (90,111,'Y','00000125');
INSERT INTO `arbitman_public_now` VALUES (91,112,'Y','00000126');
INSERT INTO `arbitman_public_now` VALUES (92,113,'Y','00000127');
INSERT INTO `arbitman_public_now` VALUES (93,116,'Y','00000130');
INSERT INTO `arbitman_public_now` VALUES (94,117,'Y','00000131');
INSERT INTO `arbitman_public_now` VALUES (95,118,'Y','00000132');
INSERT INTO `arbitman_public_now` VALUES (96,119,'Y','00000133');
INSERT INTO `arbitman_public_now` VALUES (97,120,'Y','00000134');
INSERT INTO `arbitman_public_now` VALUES (98,121,'Y','00000135');
INSERT INTO `arbitman_public_now` VALUES (99,122,'Y','00000136');
INSERT INTO `arbitman_public_now` VALUES (100,123,'Y','00000137');
INSERT INTO `arbitman_public_now` VALUES (101,124,'Y','00000138');
INSERT INTO `arbitman_public_now` VALUES (102,126,'Y','00000140');
INSERT INTO `arbitman_public_now` VALUES (103,128,'Y','00000142');
INSERT INTO `arbitman_public_now` VALUES (104,129,'Y','00000143');
INSERT INTO `arbitman_public_now` VALUES (105,131,'Y','00000145');
INSERT INTO `arbitman_public_now` VALUES (106,132,'Y','00000146');
INSERT INTO `arbitman_public_now` VALUES (107,133,'Y','00000147');
INSERT INTO `arbitman_public_now` VALUES (108,134,'Y','00000148');
INSERT INTO `arbitman_public_now` VALUES (109,135,'Y','00000149');
INSERT INTO `arbitman_public_now` VALUES (110,137,'Y','00000151');
INSERT INTO `arbitman_public_now` VALUES (111,138,'Y','00000152');
INSERT INTO `arbitman_public_now` VALUES (112,139,'Y','00000153');
INSERT INTO `arbitman_public_now` VALUES (113,140,'Y','00000154');
INSERT INTO `arbitman_public_now` VALUES (114,141,'Y','00000155');
INSERT INTO `arbitman_public_now` VALUES (115,142,'Y','00000156');
INSERT INTO `arbitman_public_now` VALUES (116,143,'Y','00000157');
INSERT INTO `arbitman_public_now` VALUES (117,144,'Y','00000158');
INSERT INTO `arbitman_public_now` VALUES (118,145,'Y','00000159');
INSERT INTO `arbitman_public_now` VALUES (119,146,'Y','00000160');
INSERT INTO `arbitman_public_now` VALUES (120,147,'Y','00000161');
INSERT INTO `arbitman_public_now` VALUES (121,148,'Y','00000162');
INSERT INTO `arbitman_public_now` VALUES (122,149,'Y','00000163');
INSERT INTO `arbitman_public_now` VALUES (123,152,'Y','00000166');
INSERT INTO `arbitman_public_now` VALUES (124,153,'Y','00000167');
INSERT INTO `arbitman_public_now` VALUES (125,154,'Y','00000168');
INSERT INTO `arbitman_public_now` VALUES (126,155,'Y','00000169');
INSERT INTO `arbitman_public_now` VALUES (127,156,'Y','00000170');
INSERT INTO `arbitman_public_now` VALUES (128,157,'Y','00000171');
INSERT INTO `arbitman_public_now` VALUES (129,158,'Y','00000172');
INSERT INTO `arbitman_public_now` VALUES (130,159,'Y','00000173');
INSERT INTO `arbitman_public_now` VALUES (131,161,'Y','00000175');
INSERT INTO `arbitman_public_now` VALUES (132,162,'Y','00000177');
INSERT INTO `arbitman_public_now` VALUES (133,163,'Y','00000178');
INSERT INTO `arbitman_public_now` VALUES (134,164,'Y','00000179');
INSERT INTO `arbitman_public_now` VALUES (135,165,'Y','00000180');
INSERT INTO `arbitman_public_now` VALUES (136,166,'Y','00000181');
INSERT INTO `arbitman_public_now` VALUES (137,168,'Y','00000183');
INSERT INTO `arbitman_public_now` VALUES (138,169,'Y','00000184');
INSERT INTO `arbitman_public_now` VALUES (139,171,'Y','00000186');
INSERT INTO `arbitman_public_now` VALUES (140,172,'Y','00000187');
INSERT INTO `arbitman_public_now` VALUES (141,173,'Y','00000188');
INSERT INTO `arbitman_public_now` VALUES (142,174,'Y','00000189');
INSERT INTO `arbitman_public_now` VALUES (143,175,'Y','00000190');
INSERT INTO `arbitman_public_now` VALUES (144,178,'Y','00000195');
INSERT INTO `arbitman_public_now` VALUES (145,180,'Y','00000197');
INSERT INTO `arbitman_public_now` VALUES (146,181,'Y','00000198');
INSERT INTO `arbitman_public_now` VALUES (147,182,'Y','00000199');
INSERT INTO `arbitman_public_now` VALUES (148,183,'Y','00000200');
INSERT INTO `arbitman_public_now` VALUES (149,184,'Y','00000201');
INSERT INTO `arbitman_public_now` VALUES (150,186,'Y','00000203');
INSERT INTO `arbitman_public_now` VALUES (151,187,'Y','00000204');
INSERT INTO `arbitman_public_now` VALUES (152,188,'Y','00000205');
INSERT INTO `arbitman_public_now` VALUES (153,189,'Y','00000206');
INSERT INTO `arbitman_public_now` VALUES (154,190,'Y','00000207');
INSERT INTO `arbitman_public_now` VALUES (155,191,'Y','00000208');
INSERT INTO `arbitman_public_now` VALUES (156,192,'Y','00000209');
INSERT INTO `arbitman_public_now` VALUES (157,193,'Y','00000210');
INSERT INTO `arbitman_public_now` VALUES (158,195,'Y','00000212');
INSERT INTO `arbitman_public_now` VALUES (159,196,'Y','00000213');
INSERT INTO `arbitman_public_now` VALUES (160,197,'Y','00000214');
INSERT INTO `arbitman_public_now` VALUES (161,198,'Y','00000215');
INSERT INTO `arbitman_public_now` VALUES (162,199,'Y','00000216');
INSERT INTO `arbitman_public_now` VALUES (163,201,'Y','00000218');
INSERT INTO `arbitman_public_now` VALUES (164,202,'Y','00000219');
INSERT INTO `arbitman_public_now` VALUES (165,203,'Y','00000220');
INSERT INTO `arbitman_public_now` VALUES (166,204,'Y','00000221');
INSERT INTO `arbitman_public_now` VALUES (167,205,'Y','00000222');
INSERT INTO `arbitman_public_now` VALUES (168,206,'Y','00000223');
INSERT INTO `arbitman_public_now` VALUES (169,207,'Y','00000224');
INSERT INTO `arbitman_public_now` VALUES (170,209,'Y','00000226');
INSERT INTO `arbitman_public_now` VALUES (171,210,'Y','00000227');
INSERT INTO `arbitman_public_now` VALUES (172,211,'Y','00000228');
INSERT INTO `arbitman_public_now` VALUES (173,212,'Y','00000229');
INSERT INTO `arbitman_public_now` VALUES (174,214,'Y','00000231');
INSERT INTO `arbitman_public_now` VALUES (175,217,'Y','00000234');
INSERT INTO `arbitman_public_now` VALUES (176,218,'Y','00000235');
INSERT INTO `arbitman_public_now` VALUES (177,219,'Y','00000236');
INSERT INTO `arbitman_public_now` VALUES (178,220,'Y','00000237');
INSERT INTO `arbitman_public_now` VALUES (179,221,'Y','00000238');
INSERT INTO `arbitman_public_now` VALUES (180,222,'Y','00000239');
INSERT INTO `arbitman_public_now` VALUES (181,223,'Y','00000240');
INSERT INTO `arbitman_public_now` VALUES (182,224,'Y','00000241');
INSERT INTO `arbitman_public_now` VALUES (183,225,'Y','00000242');
INSERT INTO `arbitman_public_now` VALUES (184,226,'Y','00000243');
INSERT INTO `arbitman_public_now` VALUES (185,228,'Y','00000245');
INSERT INTO `arbitman_public_now` VALUES (186,230,'Y','00000247');
INSERT INTO `arbitman_public_now` VALUES (187,231,'Y','00000248');
INSERT INTO `arbitman_public_now` VALUES (188,233,'Y','00000250');
INSERT INTO `arbitman_public_now` VALUES (189,235,'Y','00000252');
INSERT INTO `arbitman_public_now` VALUES (190,237,'Y','00000254');
INSERT INTO `arbitman_public_now` VALUES (191,239,'Y','00000256');
INSERT INTO `arbitman_public_now` VALUES (192,240,'Y','00000257');
INSERT INTO `arbitman_public_now` VALUES (193,241,'Y','00000258');
INSERT INTO `arbitman_public_now` VALUES (194,242,'Y','00000259');
INSERT INTO `arbitman_public_now` VALUES (195,243,'Y','00000260');
INSERT INTO `arbitman_public_now` VALUES (196,244,'Y','00000261');
INSERT INTO `arbitman_public_now` VALUES (197,246,'Y','00000263');
INSERT INTO `arbitman_public_now` VALUES (198,247,'Y','00000264');
INSERT INTO `arbitman_public_now` VALUES (199,248,'Y','00000265');
INSERT INTO `arbitman_public_now` VALUES (200,249,'Y','00000266');
INSERT INTO `arbitman_public_now` VALUES (201,250,'Y','00000267');
INSERT INTO `arbitman_public_now` VALUES (202,252,'Y','00000269');
INSERT INTO `arbitman_public_now` VALUES (203,254,'Y','00000271');
INSERT INTO `arbitman_public_now` VALUES (204,255,'Y','00000272');
INSERT INTO `arbitman_public_now` VALUES (205,257,'Y','00000274');
INSERT INTO `arbitman_public_now` VALUES (206,258,'Y','00000275');
INSERT INTO `arbitman_public_now` VALUES (207,259,'Y','00000276');
INSERT INTO `arbitman_public_now` VALUES (208,260,'Y','00000277');
INSERT INTO `arbitman_public_now` VALUES (209,261,'Y','00000278');
INSERT INTO `arbitman_public_now` VALUES (210,262,'Y','00000279');
INSERT INTO `arbitman_public_now` VALUES (211,263,'Y','00000280');
INSERT INTO `arbitman_public_now` VALUES (212,264,'Y','00000281');
INSERT INTO `arbitman_public_now` VALUES (213,265,'Y','00000282');
INSERT INTO `arbitman_public_now` VALUES (214,266,'Y','00000283');
INSERT INTO `arbitman_public_now` VALUES (215,267,'Y','00000284');
INSERT INTO `arbitman_public_now` VALUES (216,268,'Y','00000285');
INSERT INTO `arbitman_public_now` VALUES (217,269,'Y','00000286');
INSERT INTO `arbitman_public_now` VALUES (218,270,'Y','00000287');
INSERT INTO `arbitman_public_now` VALUES (219,271,'Y','00000288');
INSERT INTO `arbitman_public_now` VALUES (220,273,'Y','00000290');
INSERT INTO `arbitman_public_now` VALUES (221,274,'Y','00000291');
INSERT INTO `arbitman_public_now` VALUES (222,277,'Y','00000294');
INSERT INTO `arbitman_public_now` VALUES (223,278,'Y','00000295');
INSERT INTO `arbitman_public_now` VALUES (224,280,'Y','00000297');
INSERT INTO `arbitman_public_now` VALUES (225,281,'Y','00000298');
INSERT INTO `arbitman_public_now` VALUES (226,282,'Y','00000299');
INSERT INTO `arbitman_public_now` VALUES (227,283,'Y','00000300');
INSERT INTO `arbitman_public_now` VALUES (228,284,'Y','00000301');
INSERT INTO `arbitman_public_now` VALUES (229,285,'Y','00000302');
INSERT INTO `arbitman_public_now` VALUES (230,286,'Y','00000303');
INSERT INTO `arbitman_public_now` VALUES (231,287,'Y','00000304');
INSERT INTO `arbitman_public_now` VALUES (232,288,'Y','00000305');
INSERT INTO `arbitman_public_now` VALUES (233,289,'Y','00000306');
INSERT INTO `arbitman_public_now` VALUES (234,290,'Y','00000307');
INSERT INTO `arbitman_public_now` VALUES (235,292,'Y','00000309');
INSERT INTO `arbitman_public_now` VALUES (236,293,'Y','00000310');
INSERT INTO `arbitman_public_now` VALUES (237,294,'Y','00000311');
INSERT INTO `arbitman_public_now` VALUES (238,296,'Y','00000313');
INSERT INTO `arbitman_public_now` VALUES (239,297,'Y','00000314');
INSERT INTO `arbitman_public_now` VALUES (240,298,'Y','00000315');
INSERT INTO `arbitman_public_now` VALUES (241,299,'Y','00000316');
INSERT INTO `arbitman_public_now` VALUES (242,301,'Y','00000318');
INSERT INTO `arbitman_public_now` VALUES (243,302,'Y','00000321');
INSERT INTO `arbitman_public_now` VALUES (244,304,'Y','00000323');
INSERT INTO `arbitman_public_now` VALUES (245,306,'Y','00000325');
INSERT INTO `arbitman_public_now` VALUES (246,307,'Y','00000326');
INSERT INTO `arbitman_public_now` VALUES (247,309,'Y','00000328');
INSERT INTO `arbitman_public_now` VALUES (248,310,'Y','00000329');
INSERT INTO `arbitman_public_now` VALUES (249,311,'Y','00000330');
INSERT INTO `arbitman_public_now` VALUES (250,312,'Y','00000331');
INSERT INTO `arbitman_public_now` VALUES (251,313,'Y','00000332');
INSERT INTO `arbitman_public_now` VALUES (252,314,'Y','00000333');
INSERT INTO `arbitman_public_now` VALUES (253,315,'Y','00000334');
INSERT INTO `arbitman_public_now` VALUES (254,316,'Y','00000335');
INSERT INTO `arbitman_public_now` VALUES (255,317,'Y','00000336');
INSERT INTO `arbitman_public_now` VALUES (256,318,'Y','00000337');
INSERT INTO `arbitman_public_now` VALUES (257,320,'Y','00000341');
INSERT INTO `arbitman_public_now` VALUES (258,321,'Y','00000342');
INSERT INTO `arbitman_public_now` VALUES (259,322,'Y','00000343');
INSERT INTO `arbitman_public_now` VALUES (260,323,'Y','00000344');
INSERT INTO `arbitman_public_now` VALUES (261,325,'Y','00000346');
INSERT INTO `arbitman_public_now` VALUES (262,326,'Y','00000347');
INSERT INTO `arbitman_public_now` VALUES (263,328,'Y','00000351');
INSERT INTO `arbitman_public_now` VALUES (264,329,'Y','00000352');
INSERT INTO `arbitman_public_now` VALUES (265,330,'Y','00000339');
INSERT INTO `arbitman_public_now` VALUES (266,331,'Y','00000340');
INSERT INTO `arbitman_public_now` VALUES (267,332,'Y','00000349');
INSERT INTO `arbitman_public_now` VALUES (268,333,'Y','00000350');
INSERT INTO `arbitman_public_now` VALUES (269,334,'Y','00000353');
INSERT INTO `arbitman_public_now` VALUES (270,335,'Y','00000354');
INSERT INTO `arbitman_public_now` VALUES (271,338,'Y','00000357');
INSERT INTO `arbitman_public_now` VALUES (272,340,'Y','00000359');
INSERT INTO `arbitman_public_now` VALUES (273,341,'Y','00000360');
INSERT INTO `arbitman_public_now` VALUES (274,342,'Y','00000361');
INSERT INTO `arbitman_public_now` VALUES (275,343,'Y','00000362');
INSERT INTO `arbitman_public_now` VALUES (276,344,'Y','00000363');
INSERT INTO `arbitman_public_now` VALUES (277,345,'Y','00000364');
INSERT INTO `arbitman_public_now` VALUES (278,349,'Y','00000368');
INSERT INTO `arbitman_public_now` VALUES (279,350,'Y','00000369');
INSERT INTO `arbitman_public_now` VALUES (280,351,'Y','00000370');
INSERT INTO `arbitman_public_now` VALUES (281,352,'Y','00000371');
INSERT INTO `arbitman_public_now` VALUES (282,353,'Y','00000372');
INSERT INTO `arbitman_public_now` VALUES (283,354,'Y','00000373');
INSERT INTO `arbitman_public_now` VALUES (284,355,'Y','00000374');
INSERT INTO `arbitman_public_now` VALUES (285,356,'Y','00000375');
INSERT INTO `arbitman_public_now` VALUES (286,357,'Y','00000376');
INSERT INTO `arbitman_public_now` VALUES (287,358,'Y','00000377');
INSERT INTO `arbitman_public_now` VALUES (288,359,'Y','00000378');
INSERT INTO `arbitman_public_now` VALUES (289,364,'Y','00000383');
INSERT INTO `arbitman_public_now` VALUES (290,365,'Y','00000384');
INSERT INTO `arbitman_public_now` VALUES (291,366,'Y','00000385');
INSERT INTO `arbitman_public_now` VALUES (292,368,'Y','00000387');
INSERT INTO `arbitman_public_now` VALUES (293,369,'Y','00000388');
INSERT INTO `arbitman_public_now` VALUES (294,370,'Y','00000389');
INSERT INTO `arbitman_public_now` VALUES (295,371,'Y','00000390');
INSERT INTO `arbitman_public_now` VALUES (296,372,'Y','00000391');
INSERT INTO `arbitman_public_now` VALUES (297,373,'Y','00000392');
INSERT INTO `arbitman_public_now` VALUES (298,375,'Y','00000394');
INSERT INTO `arbitman_public_now` VALUES (299,376,'Y','00000395');
INSERT INTO `arbitman_public_now` VALUES (300,377,'Y','00000396');
INSERT INTO `arbitman_public_now` VALUES (301,379,'Y','00000398');
INSERT INTO `arbitman_public_now` VALUES (302,380,'Y','00000399');
INSERT INTO `arbitman_public_now` VALUES (303,381,'Y','00000400');
INSERT INTO `arbitman_public_now` VALUES (304,383,'Y','00000402');
INSERT INTO `arbitman_public_now` VALUES (305,384,'Y','00000403');
INSERT INTO `arbitman_public_now` VALUES (306,385,'Y','00000404');
INSERT INTO `arbitman_public_now` VALUES (307,386,'Y','00000405');
INSERT INTO `arbitman_public_now` VALUES (308,387,'Y','00000406');
INSERT INTO `arbitman_public_now` VALUES (309,388,'Y','00000407');
INSERT INTO `arbitman_public_now` VALUES (310,389,'Y','00000408');
INSERT INTO `arbitman_public_now` VALUES (311,390,'Y','00000409');
INSERT INTO `arbitman_public_now` VALUES (312,391,'Y','00000410');
INSERT INTO `arbitman_public_now` VALUES (313,392,'Y','00000411');
INSERT INTO `arbitman_public_now` VALUES (314,393,'Y','00000412');
INSERT INTO `arbitman_public_now` VALUES (315,395,'Y','00000414');
INSERT INTO `arbitman_public_now` VALUES (316,396,'Y','00000415');
INSERT INTO `arbitman_public_now` VALUES (317,397,'Y','00000416');
INSERT INTO `arbitman_public_now` VALUES (318,398,'Y','00000417');
INSERT INTO `arbitman_public_now` VALUES (319,399,'Y','00000418');
INSERT INTO `arbitman_public_now` VALUES (320,400,'Y','00000419');
INSERT INTO `arbitman_public_now` VALUES (321,401,'Y','00000420');
INSERT INTO `arbitman_public_now` VALUES (322,403,'Y','00000422');
INSERT INTO `arbitman_public_now` VALUES (323,406,'Y','00000425');
INSERT INTO `arbitman_public_now` VALUES (324,407,'Y','00000426');
INSERT INTO `arbitman_public_now` VALUES (325,408,'Y','00000427');
INSERT INTO `arbitman_public_now` VALUES (326,410,'Y','00000429');
INSERT INTO `arbitman_public_now` VALUES (327,411,'Y','00000430');
INSERT INTO `arbitman_public_now` VALUES (328,412,'Y','00000431');
INSERT INTO `arbitman_public_now` VALUES (329,413,'Y','00000432');
INSERT INTO `arbitman_public_now` VALUES (330,414,'Y','00000433');
INSERT INTO `arbitman_public_now` VALUES (331,415,'Y','00000434');
INSERT INTO `arbitman_public_now` VALUES (332,416,'Y','00000435');
INSERT INTO `arbitman_public_now` VALUES (333,418,'Y','00000437');
INSERT INTO `arbitman_public_now` VALUES (334,419,'Y','00000438');
INSERT INTO `arbitman_public_now` VALUES (335,420,'Y','00000439');
INSERT INTO `arbitman_public_now` VALUES (336,421,'Y','00000440');
INSERT INTO `arbitman_public_now` VALUES (337,422,'Y','00000441');
INSERT INTO `arbitman_public_now` VALUES (338,423,'Y','00000442');
INSERT INTO `arbitman_public_now` VALUES (339,424,'Y','00000443');
INSERT INTO `arbitman_public_now` VALUES (340,425,'Y','00000444');
INSERT INTO `arbitman_public_now` VALUES (341,426,'Y','00000445');
INSERT INTO `arbitman_public_now` VALUES (342,428,'Y','00000447');
INSERT INTO `arbitman_public_now` VALUES (343,429,'Y','00000448');
INSERT INTO `arbitman_public_now` VALUES (344,430,'Y','00000449');
INSERT INTO `arbitman_public_now` VALUES (345,433,'Y','00000452');
INSERT INTO `arbitman_public_now` VALUES (346,434,'Y','00000453');
INSERT INTO `arbitman_public_now` VALUES (347,435,'Y','00000454');
INSERT INTO `arbitman_public_now` VALUES (348,438,'Y','00000457');
INSERT INTO `arbitman_public_now` VALUES (349,439,'Y','00000458');
INSERT INTO `arbitman_public_now` VALUES (350,441,'Y','00000460');
INSERT INTO `arbitman_public_now` VALUES (351,442,'Y','00000461');
INSERT INTO `arbitman_public_now` VALUES (352,444,'Y','00000463');
INSERT INTO `arbitman_public_now` VALUES (353,445,'Y','00000464');
INSERT INTO `arbitman_public_now` VALUES (354,448,'Y','00000467');
INSERT INTO `arbitman_public_now` VALUES (355,449,'Y','00000468');
INSERT INTO `arbitman_public_now` VALUES (356,450,'Y','00000469');
INSERT INTO `arbitman_public_now` VALUES (357,452,'Y','00000471');
INSERT INTO `arbitman_public_now` VALUES (358,453,'Y','00000472');
INSERT INTO `arbitman_public_now` VALUES (359,454,'Y','00000473');
INSERT INTO `arbitman_public_now` VALUES (360,455,'Y','00000474');
INSERT INTO `arbitman_public_now` VALUES (361,456,'Y','00000475');
INSERT INTO `arbitman_public_now` VALUES (362,457,'Y','00000476');
INSERT INTO `arbitman_public_now` VALUES (363,458,'Y','00000477');
INSERT INTO `arbitman_public_now` VALUES (364,459,'Y','00000478');
INSERT INTO `arbitman_public_now` VALUES (365,461,'Y','00000480');
INSERT INTO `arbitman_public_now` VALUES (366,463,'Y','00000482');
INSERT INTO `arbitman_public_now` VALUES (367,464,'Y','00000483');
INSERT INTO `arbitman_public_now` VALUES (368,465,'Y','00000484');
INSERT INTO `arbitman_public_now` VALUES (369,467,'Y','00000486');
INSERT INTO `arbitman_public_now` VALUES (370,468,'Y','00000487');
INSERT INTO `arbitman_public_now` VALUES (371,470,'Y','00000489');
INSERT INTO `arbitman_public_now` VALUES (372,472,'Y','00000491');
INSERT INTO `arbitman_public_now` VALUES (373,473,'Y','00000492');
INSERT INTO `arbitman_public_now` VALUES (374,474,'Y','00000527');
INSERT INTO `arbitman_public_now` VALUES (375,475,'Y','00000493');
INSERT INTO `arbitman_public_now` VALUES (376,476,'Y','00000494');
INSERT INTO `arbitman_public_now` VALUES (377,477,'Y','00000495');
INSERT INTO `arbitman_public_now` VALUES (378,478,'Y','00000496');
INSERT INTO `arbitman_public_now` VALUES (379,479,'Y','00000497');
INSERT INTO `arbitman_public_now` VALUES (380,480,'Y','00000498');
INSERT INTO `arbitman_public_now` VALUES (381,482,'Y','00000500');
INSERT INTO `arbitman_public_now` VALUES (382,483,'Y','00000501');
INSERT INTO `arbitman_public_now` VALUES (383,484,'Y','00000502');
INSERT INTO `arbitman_public_now` VALUES (384,486,'Y','00000504');
INSERT INTO `arbitman_public_now` VALUES (385,487,'Y','00000505');
INSERT INTO `arbitman_public_now` VALUES (386,488,'Y','00000506');
INSERT INTO `arbitman_public_now` VALUES (387,489,'Y','00000507');
INSERT INTO `arbitman_public_now` VALUES (388,490,'Y','00000508');
INSERT INTO `arbitman_public_now` VALUES (389,491,'Y','00000509');
INSERT INTO `arbitman_public_now` VALUES (390,492,'Y','00000510');
INSERT INTO `arbitman_public_now` VALUES (391,493,'Y','00000511');
INSERT INTO `arbitman_public_now` VALUES (392,494,'Y','00000512');
INSERT INTO `arbitman_public_now` VALUES (393,495,'Y','00000513');
INSERT INTO `arbitman_public_now` VALUES (394,496,'Y','00000514');
INSERT INTO `arbitman_public_now` VALUES (395,497,'Y','00000515');
INSERT INTO `arbitman_public_now` VALUES (396,498,'Y','00000516');
INSERT INTO `arbitman_public_now` VALUES (397,499,'Y','00000517');
INSERT INTO `arbitman_public_now` VALUES (398,501,'Y','00000519');
INSERT INTO `arbitman_public_now` VALUES (399,502,'Y','00000520');
INSERT INTO `arbitman_public_now` VALUES (400,503,'Y','00000521');
INSERT INTO `arbitman_public_now` VALUES (401,504,'Y','00000522');
INSERT INTO `arbitman_public_now` VALUES (402,507,'Y','00000525');
INSERT INTO `arbitman_public_now` VALUES (403,508,'Y','00000526');
INSERT INTO `arbitman_public_now` VALUES (404,510,'Y','00000529');
INSERT INTO `arbitman_public_now` VALUES (405,514,'Y','00000533');
INSERT INTO `arbitman_public_now` VALUES (406,516,'Y','00000535');
INSERT INTO `arbitman_public_now` VALUES (407,518,'Y','00000537');
INSERT INTO `arbitman_public_now` VALUES (408,520,'Y','00000539');
INSERT INTO `arbitman_public_now` VALUES (409,523,'Y','00000542');
INSERT INTO `arbitman_public_now` VALUES (410,525,'Y','00000544');
INSERT INTO `arbitman_public_now` VALUES (411,526,'Y','00000545');
INSERT INTO `arbitman_public_now` VALUES (412,527,'Y','00000546');
INSERT INTO `arbitman_public_now` VALUES (413,529,'Y','00000548');
INSERT INTO `arbitman_public_now` VALUES (414,530,'Y','00000549');
INSERT INTO `arbitman_public_now` VALUES (415,532,'Y','00000551');
INSERT INTO `arbitman_public_now` VALUES (416,535,'Y','00000554');
INSERT INTO `arbitman_public_now` VALUES (417,536,'Y','00000555');
INSERT INTO `arbitman_public_now` VALUES (418,539,'Y','00000558');
INSERT INTO `arbitman_public_now` VALUES (419,540,'Y','00000559');
INSERT INTO `arbitman_public_now` VALUES (420,541,'Y','00000560');
INSERT INTO `arbitman_public_now` VALUES (421,542,'Y','00000561');
INSERT INTO `arbitman_public_now` VALUES (422,543,'Y','00000562');
INSERT INTO `arbitman_public_now` VALUES (423,544,'Y','00000563');
INSERT INTO `arbitman_public_now` VALUES (424,545,'Y','00000564');
INSERT INTO `arbitman_public_now` VALUES (425,546,'Y','00000565');
INSERT INTO `arbitman_public_now` VALUES (426,547,'Y','00000566');
INSERT INTO `arbitman_public_now` VALUES (427,548,'Y','00000567');
INSERT INTO `arbitman_public_now` VALUES (428,550,'Y','00000569');
INSERT INTO `arbitman_public_now` VALUES (429,551,'Y','00000570');
INSERT INTO `arbitman_public_now` VALUES (430,552,'Y','00000571');
INSERT INTO `arbitman_public_now` VALUES (431,553,'Y','00000572');
INSERT INTO `arbitman_public_now` VALUES (432,554,'Y','00000573');
INSERT INTO `arbitman_public_now` VALUES (433,555,'Y','00000574');
INSERT INTO `arbitman_public_now` VALUES (434,556,'Y','00000575');
INSERT INTO `arbitman_public_now` VALUES (435,557,'Y','00000576');
INSERT INTO `arbitman_public_now` VALUES (436,559,'Y','00000578');
INSERT INTO `arbitman_public_now` VALUES (437,561,'Y','00000580');
INSERT INTO `arbitman_public_now` VALUES (438,562,'Y','00000581');
INSERT INTO `arbitman_public_now` VALUES (439,563,'Y','00000582');
INSERT INTO `arbitman_public_now` VALUES (440,564,'Y','00000583');
INSERT INTO `arbitman_public_now` VALUES (441,567,'Y','00000586');
INSERT INTO `arbitman_public_now` VALUES (442,568,'Y','00000587');
INSERT INTO `arbitman_public_now` VALUES (443,569,'Y','00000588');
INSERT INTO `arbitman_public_now` VALUES (444,570,'Y','00000589');
INSERT INTO `arbitman_public_now` VALUES (445,571,'Y','00000590');
INSERT INTO `arbitman_public_now` VALUES (446,573,'Y','00000592');
INSERT INTO `arbitman_public_now` VALUES (447,574,'Y','00000593');
INSERT INTO `arbitman_public_now` VALUES (448,575,'Y','00000594');
INSERT INTO `arbitman_public_now` VALUES (449,576,'Y','00000595');
INSERT INTO `arbitman_public_now` VALUES (450,577,'Y','00000596');
INSERT INTO `arbitman_public_now` VALUES (451,578,'Y','00000597');
INSERT INTO `arbitman_public_now` VALUES (452,579,'Y','00000598');
INSERT INTO `arbitman_public_now` VALUES (453,581,'Y','00000600');
INSERT INTO `arbitman_public_now` VALUES (454,582,'Y','00000601');
INSERT INTO `arbitman_public_now` VALUES (455,583,'Y','00000604');
INSERT INTO `arbitman_public_now` VALUES (456,584,'Y','00000605');
INSERT INTO `arbitman_public_now` VALUES (457,585,'Y','00000606');
INSERT INTO `arbitman_public_now` VALUES (458,586,'Y','00000607');
INSERT INTO `arbitman_public_now` VALUES (459,587,'Y','00000608');
INSERT INTO `arbitman_public_now` VALUES (460,590,'Y','00000611');
INSERT INTO `arbitman_public_now` VALUES (461,592,'Y','00000613');
INSERT INTO `arbitman_public_now` VALUES (462,595,'Y','00000616');
INSERT INTO `arbitman_public_now` VALUES (463,596,'Y','00000617');
INSERT INTO `arbitman_public_now` VALUES (464,597,'Y','00000618');
INSERT INTO `arbitman_public_now` VALUES (465,598,'Y','00000619');
INSERT INTO `arbitman_public_now` VALUES (466,599,'Y','00000620');
INSERT INTO `arbitman_public_now` VALUES (467,600,'Y','00000621');
INSERT INTO `arbitman_public_now` VALUES (468,601,'Y','00000622');
INSERT INTO `arbitman_public_now` VALUES (469,603,'Y','00000624');
INSERT INTO `arbitman_public_now` VALUES (470,604,'Y','00000625');
INSERT INTO `arbitman_public_now` VALUES (471,605,'Y','00000626');
INSERT INTO `arbitman_public_now` VALUES (472,606,'Y','00000627');
INSERT INTO `arbitman_public_now` VALUES (473,607,'Y','00000628');
INSERT INTO `arbitman_public_now` VALUES (474,610,'Y','00000631');
INSERT INTO `arbitman_public_now` VALUES (475,611,'Y','00000632');
INSERT INTO `arbitman_public_now` VALUES (476,612,'Y','00000633');
INSERT INTO `arbitman_public_now` VALUES (477,613,'Y','00000634');
INSERT INTO `arbitman_public_now` VALUES (478,614,'Y','00000635');
INSERT INTO `arbitman_public_now` VALUES (479,615,'Y','00000636');
INSERT INTO `arbitman_public_now` VALUES (480,617,'Y','00000638');
INSERT INTO `arbitman_public_now` VALUES (481,618,'Y','00000639');
INSERT INTO `arbitman_public_now` VALUES (482,619,'Y','00000640');
INSERT INTO `arbitman_public_now` VALUES (483,621,'Y','00000642');
INSERT INTO `arbitman_public_now` VALUES (484,622,'Y','00000643');
INSERT INTO `arbitman_public_now` VALUES (485,623,'Y','00000644');
INSERT INTO `arbitman_public_now` VALUES (486,624,'Y','00000645');
INSERT INTO `arbitman_public_now` VALUES (487,626,'Y','00000647');
INSERT INTO `arbitman_public_now` VALUES (488,627,'Y','00000648');
INSERT INTO `arbitman_public_now` VALUES (489,628,'Y','00000649');
INSERT INTO `arbitman_public_now` VALUES (490,630,'Y','00000651');
INSERT INTO `arbitman_public_now` VALUES (491,631,'Y','00000652');
INSERT INTO `arbitman_public_now` VALUES (492,632,'Y','00000653');
INSERT INTO `arbitman_public_now` VALUES (493,633,'Y','00000654');
INSERT INTO `arbitman_public_now` VALUES (494,634,'Y','00000655');
INSERT INTO `arbitman_public_now` VALUES (495,635,'Y','00000656');
INSERT INTO `arbitman_public_now` VALUES (496,636,'Y','00000657');
INSERT INTO `arbitman_public_now` VALUES (497,638,'Y','00000659');
INSERT INTO `arbitman_public_now` VALUES (498,640,'Y','00000661');
INSERT INTO `arbitman_public_now` VALUES (499,641,'Y','00000662');
INSERT INTO `arbitman_public_now` VALUES (500,642,'Y','00000663');
INSERT INTO `arbitman_public_now` VALUES (501,643,'Y','00000664');
INSERT INTO `arbitman_public_now` VALUES (502,644,'N','00000665');
INSERT INTO `arbitman_public_now` VALUES (503,645,'Y','00000666');
INSERT INTO `arbitman_public_now` VALUES (504,646,'Y','00000667');
INSERT INTO `arbitman_public_now` VALUES (505,647,'Y','00000668');
INSERT INTO `arbitman_public_now` VALUES (506,650,'Y','00000671');
INSERT INTO `arbitman_public_now` VALUES (507,653,'Y','00000674');
INSERT INTO `arbitman_public_now` VALUES (508,654,'Y','00000675');
INSERT INTO `arbitman_public_now` VALUES (509,656,'Y','00000677');
INSERT INTO `arbitman_public_now` VALUES (510,659,'Y','00000680');
INSERT INTO `arbitman_public_now` VALUES (511,660,'Y','00000681');
INSERT INTO `arbitman_public_now` VALUES (512,661,'Y','00000682');
INSERT INTO `arbitman_public_now` VALUES (513,662,'Y','00000683');
INSERT INTO `arbitman_public_now` VALUES (514,663,'Y','00000684');
INSERT INTO `arbitman_public_now` VALUES (515,664,'Y','00000685');
INSERT INTO `arbitman_public_now` VALUES (516,665,'Y','00000686');
INSERT INTO `arbitman_public_now` VALUES (517,666,'Y','00000687');
INSERT INTO `arbitman_public_now` VALUES (518,667,'Y','00000688');
INSERT INTO `arbitman_public_now` VALUES (519,670,'Y','00000691');
INSERT INTO `arbitman_public_now` VALUES (520,671,'Y','00000692');
INSERT INTO `arbitman_public_now` VALUES (521,672,'Y','00000693');
INSERT INTO `arbitman_public_now` VALUES (522,673,'Y','00000694');
INSERT INTO `arbitman_public_now` VALUES (523,674,'Y','00000695');
INSERT INTO `arbitman_public_now` VALUES (524,677,'Y','00000698');
INSERT INTO `arbitman_public_now` VALUES (525,678,'Y','00000699');
INSERT INTO `arbitman_public_now` VALUES (526,679,'Y','00000700');
INSERT INTO `arbitman_public_now` VALUES (527,680,'Y','00000701');
INSERT INTO `arbitman_public_now` VALUES (528,681,'Y','00000702');
INSERT INTO `arbitman_public_now` VALUES (529,682,'Y','00000703');
INSERT INTO `arbitman_public_now` VALUES (530,684,'Y','00000705');
INSERT INTO `arbitman_public_now` VALUES (531,685,'Y','00000706');
INSERT INTO `arbitman_public_now` VALUES (532,686,'Y','00000707');
INSERT INTO `arbitman_public_now` VALUES (533,687,'Y','00000708');
INSERT INTO `arbitman_public_now` VALUES (534,688,'Y','00000709');
INSERT INTO `arbitman_public_now` VALUES (535,689,'Y','00000710');
INSERT INTO `arbitman_public_now` VALUES (536,690,'Y','00000711');
INSERT INTO `arbitman_public_now` VALUES (537,691,'Y','00000712');
INSERT INTO `arbitman_public_now` VALUES (538,692,'Y','00000713');
INSERT INTO `arbitman_public_now` VALUES (539,693,'Y','00000714');
INSERT INTO `arbitman_public_now` VALUES (540,694,'Y','00000715');
INSERT INTO `arbitman_public_now` VALUES (541,697,'Y','00000719');
INSERT INTO `arbitman_public_now` VALUES (542,698,'Y','00000720');
INSERT INTO `arbitman_public_now` VALUES (543,699,'Y','00000721');
INSERT INTO `arbitman_public_now` VALUES (544,700,'Y','00000722');
INSERT INTO `arbitman_public_now` VALUES (545,703,'Y','00000725');
INSERT INTO `arbitman_public_now` VALUES (546,704,'Y','00000726');
INSERT INTO `arbitman_public_now` VALUES (547,706,'Y','00000730');
INSERT INTO `arbitman_public_now` VALUES (548,708,'Y','00000732');
INSERT INTO `arbitman_public_now` VALUES (549,709,'Y','00000733');
INSERT INTO `arbitman_public_now` VALUES (550,710,'Y','00000734');
INSERT INTO `arbitman_public_now` VALUES (551,711,'Y','00000735');
INSERT INTO `arbitman_public_now` VALUES (552,712,'Y','00000736');
INSERT INTO `arbitman_public_now` VALUES (553,713,'Y','00000737');
INSERT INTO `arbitman_public_now` VALUES (554,714,'Y','00000738');
INSERT INTO `arbitman_public_now` VALUES (555,715,'Y','00000739');
INSERT INTO `arbitman_public_now` VALUES (556,716,'Y','00000740');
INSERT INTO `arbitman_public_now` VALUES (557,717,'Y','00000741');
INSERT INTO `arbitman_public_now` VALUES (558,718,'Y','00000742');
INSERT INTO `arbitman_public_now` VALUES (559,719,'Y','00000743');
INSERT INTO `arbitman_public_now` VALUES (560,720,'Y','00000744');
INSERT INTO `arbitman_public_now` VALUES (561,721,'Y','00000745');
INSERT INTO `arbitman_public_now` VALUES (562,722,'Y','00000746');
INSERT INTO `arbitman_public_now` VALUES (563,723,'Y','00000747');
INSERT INTO `arbitman_public_now` VALUES (564,724,'Y','00000748');
INSERT INTO `arbitman_public_now` VALUES (565,725,'Y','00000749');
INSERT INTO `arbitman_public_now` VALUES (566,726,'Y','00000750');
INSERT INTO `arbitman_public_now` VALUES (567,727,'Y','00000751');
INSERT INTO `arbitman_public_now` VALUES (568,728,'Y','00000752');
INSERT INTO `arbitman_public_now` VALUES (569,729,'Y','00000753');
INSERT INTO `arbitman_public_now` VALUES (570,730,'Y','00000754');
INSERT INTO `arbitman_public_now` VALUES (571,731,'Y','00000755');
INSERT INTO `arbitman_public_now` VALUES (572,732,'Y','00000756');
INSERT INTO `arbitman_public_now` VALUES (573,733,'Y','00000757');
INSERT INTO `arbitman_public_now` VALUES (574,734,'Y','00000758');
INSERT INTO `arbitman_public_now` VALUES (575,735,'Y','00000759');
INSERT INTO `arbitman_public_now` VALUES (576,736,'Y','00000760');
INSERT INTO `arbitman_public_now` VALUES (577,737,'Y','00000761');
INSERT INTO `arbitman_public_now` VALUES (578,738,'Y','00000762');
INSERT INTO `arbitman_public_now` VALUES (579,739,'Y','00000763');
INSERT INTO `arbitman_public_now` VALUES (580,740,'Y','00000764');
INSERT INTO `arbitman_public_now` VALUES (581,741,'Y','00000765');
INSERT INTO `arbitman_public_now` VALUES (582,742,'Y','00000766');
INSERT INTO `arbitman_public_now` VALUES (583,743,'Y','00000767');
INSERT INTO `arbitman_public_now` VALUES (584,744,'Y','00000768');
INSERT INTO `arbitman_public_now` VALUES (585,745,'Y','00000769');
INSERT INTO `arbitman_public_now` VALUES (586,746,'Y','00000770');
INSERT INTO `arbitman_public_now` VALUES (587,747,'Y','00000771');
INSERT INTO `arbitman_public_now` VALUES (588,748,'Y','00000772');
INSERT INTO `arbitman_public_now` VALUES (589,749,'Y','00000773');
INSERT INTO `arbitman_public_now` VALUES (590,750,'Y','00000774');
INSERT INTO `arbitman_public_now` VALUES (591,751,'Y','00000775');
INSERT INTO `arbitman_public_now` VALUES (592,753,'Y','00000777');
INSERT INTO `arbitman_public_now` VALUES (593,754,'Y','00000778');
INSERT INTO `arbitman_public_now` VALUES (594,755,'Y','00000779');
INSERT INTO `arbitman_public_now` VALUES (595,756,'Y','00000780');
INSERT INTO `arbitman_public_now` VALUES (596,757,'Y','00000781');
INSERT INTO `arbitman_public_now` VALUES (597,758,'Y','00000782');
INSERT INTO `arbitman_public_now` VALUES (598,759,'Y','00000783');
INSERT INTO `arbitman_public_now` VALUES (599,760,'Y','00000784');
INSERT INTO `arbitman_public_now` VALUES (600,761,'Y','00000785');
INSERT INTO `arbitman_public_now` VALUES (601,762,'Y','00000786');
INSERT INTO `arbitman_public_now` VALUES (602,763,'Y','00000787');
INSERT INTO `arbitman_public_now` VALUES (603,764,'Y','00000788');
INSERT INTO `arbitman_public_now` VALUES (604,765,'Y','00000789');
INSERT INTO `arbitman_public_now` VALUES (605,766,'Y','00000790');
INSERT INTO `arbitman_public_now` VALUES (606,767,'Y','00000791');
INSERT INTO `arbitman_public_now` VALUES (607,768,'Y','00000792');
INSERT INTO `arbitman_public_now` VALUES (608,769,'Y','00000793');
INSERT INTO `arbitman_public_now` VALUES (609,770,'Y','00000794');
INSERT INTO `arbitman_public_now` VALUES (610,771,'Y','00000795');
INSERT INTO `arbitman_public_now` VALUES (611,772,'Y','00000796');
INSERT INTO `arbitman_public_now` VALUES (612,773,'Y','00000797');
INSERT INTO `arbitman_public_now` VALUES (613,774,'Y','00000798');
INSERT INTO `arbitman_public_now` VALUES (614,775,'Y','00000799');
INSERT INTO `arbitman_public_now` VALUES (615,776,'Y','00000800');
INSERT INTO `arbitman_public_now` VALUES (616,777,'Y','00000801');
INSERT INTO `arbitman_public_now` VALUES (617,778,'Y','00000802');
INSERT INTO `arbitman_public_now` VALUES (618,779,'Y','00000803');
INSERT INTO `arbitman_public_now` VALUES (619,780,'Y','00000804');
INSERT INTO `arbitman_public_now` VALUES (620,781,'Y','00000805');
INSERT INTO `arbitman_public_now` VALUES (621,782,'Y','00000806');
INSERT INTO `arbitman_public_now` VALUES (622,783,'Y','00000807');
INSERT INTO `arbitman_public_now` VALUES (623,784,'Y','00000808');
INSERT INTO `arbitman_public_now` VALUES (624,785,'Y','00000809');
INSERT INTO `arbitman_public_now` VALUES (625,786,'Y','00000810');
INSERT INTO `arbitman_public_now` VALUES (626,787,'Y','00000811');
INSERT INTO `arbitman_public_now` VALUES (627,788,'Y','00000812');
INSERT INTO `arbitman_public_now` VALUES (628,789,'Y','00000813');
INSERT INTO `arbitman_public_now` VALUES (629,790,'Y','00000814');
INSERT INTO `arbitman_public_now` VALUES (630,791,'Y','00000815');
INSERT INTO `arbitman_public_now` VALUES (631,792,'Y','00000816');
INSERT INTO `arbitman_public_now` VALUES (632,793,'Y','00000817');
INSERT INTO `arbitman_public_now` VALUES (633,794,'Y','00000818');
INSERT INTO `arbitman_public_now` VALUES (634,795,'Y','00000819');
INSERT INTO `arbitman_public_now` VALUES (635,796,'Y','00000820');
INSERT INTO `arbitman_public_now` VALUES (636,797,'Y','00000821');
INSERT INTO `arbitman_public_now` VALUES (637,798,'Y','00000822');
INSERT INTO `arbitman_public_now` VALUES (638,799,'Y','00000823');
INSERT INTO `arbitman_public_now` VALUES (639,800,'Y','00000824');
INSERT INTO `arbitman_public_now` VALUES (640,801,'Y','00000825');
INSERT INTO `arbitman_public_now` VALUES (641,802,'Y','00000826');
INSERT INTO `arbitman_public_now` VALUES (642,803,'Y','00000827');
INSERT INTO `arbitman_public_now` VALUES (643,804,'Y','00000828');
INSERT INTO `arbitman_public_now` VALUES (644,805,'Y','00000829');
INSERT INTO `arbitman_public_now` VALUES (645,806,'Y','00000830');
INSERT INTO `arbitman_public_now` VALUES (646,807,'Y','00000831');
INSERT INTO `arbitman_public_now` VALUES (647,808,'Y','00000832');
INSERT INTO `arbitman_public_now` VALUES (648,809,'Y','00000833');
INSERT INTO `arbitman_public_now` VALUES (649,810,'Y','00000834');
INSERT INTO `arbitman_public_now` VALUES (650,811,'Y','00000835');
INSERT INTO `arbitman_public_now` VALUES (651,812,'Y','00000836');
INSERT INTO `arbitman_public_now` VALUES (652,813,'Y','00000837');
INSERT INTO `arbitman_public_now` VALUES (653,814,'Y','00000838');
INSERT INTO `arbitman_public_now` VALUES (654,815,'Y','00000839');
INSERT INTO `arbitman_public_now` VALUES (655,816,'Y','00000840');
INSERT INTO `arbitman_public_now` VALUES (656,817,'Y','00000841');
INSERT INTO `arbitman_public_now` VALUES (657,818,'Y','00000842');
INSERT INTO `arbitman_public_now` VALUES (658,819,'Y','00000843');
INSERT INTO `arbitman_public_now` VALUES (659,820,'Y','00000844');
INSERT INTO `arbitman_public_now` VALUES (660,821,'Y','00000845');
INSERT INTO `arbitman_public_now` VALUES (661,822,'Y','00000846');
INSERT INTO `arbitman_public_now` VALUES (662,823,'Y','00000847');
INSERT INTO `arbitman_public_now` VALUES (663,824,'Y','00000848');
INSERT INTO `arbitman_public_now` VALUES (664,825,'Y','00000849');
INSERT INTO `arbitman_public_now` VALUES (665,826,'Y','00000851');
INSERT INTO `arbitman_public_now` VALUES (666,827,'Y','00000852');
INSERT INTO `arbitman_public_now` VALUES (667,828,'Y','00000853');
INSERT INTO `arbitman_public_now` VALUES (668,829,'Y','00000854');
INSERT INTO `arbitman_public_now` VALUES (669,830,'Y','00000855');
INSERT INTO `arbitman_public_now` VALUES (670,831,'Y','00000856');
INSERT INTO `arbitman_public_now` VALUES (671,832,'Y','00000857');
INSERT INTO `arbitman_public_now` VALUES (672,833,'Y','00000858');
INSERT INTO `arbitman_public_now` VALUES (673,834,'Y','00000859');
INSERT INTO `arbitman_public_now` VALUES (674,835,'Y','00000860');
INSERT INTO `arbitman_public_now` VALUES (675,836,'Y','00000861');
INSERT INTO `arbitman_public_now` VALUES (676,837,'Y','00000862');
INSERT INTO `arbitman_public_now` VALUES (677,838,'Y','00000863');
INSERT INTO `arbitman_public_now` VALUES (678,839,'Y','00000864');
INSERT INTO `arbitman_public_now` VALUES (679,840,'Y','00000865');
INSERT INTO `arbitman_public_now` VALUES (680,841,'Y','00000866');
INSERT INTO `arbitman_public_now` VALUES (681,842,'Y','00000867');
INSERT INTO `arbitman_public_now` VALUES (682,843,'Y','00000868');
INSERT INTO `arbitman_public_now` VALUES (683,844,'Y','00000869');
INSERT INTO `arbitman_public_now` VALUES (684,845,'Y','00000870');
INSERT INTO `arbitman_public_now` VALUES (685,846,'Y','00000871');
INSERT INTO `arbitman_public_now` VALUES (686,847,'Y','00000872');
INSERT INTO `arbitman_public_now` VALUES (687,848,'Y','00000873');
INSERT INTO `arbitman_public_now` VALUES (688,849,'Y','00000874');
INSERT INTO `arbitman_public_now` VALUES (689,850,'Y','00000875');
INSERT INTO `arbitman_public_now` VALUES (690,851,'Y','00000876');
INSERT INTO `arbitman_public_now` VALUES (691,852,'Y','00000877');
INSERT INTO `arbitman_public_now` VALUES (692,853,'Y','00000878');
INSERT INTO `arbitman_public_now` VALUES (693,854,'Y','00000879');
INSERT INTO `arbitman_public_now` VALUES (694,855,'Y','00000880');
INSERT INTO `arbitman_public_now` VALUES (695,856,'Y','00000881');
INSERT INTO `arbitman_public_now` VALUES (696,857,'Y','00000882');
INSERT INTO `arbitman_public_now` VALUES (697,858,'Y','00000883');
INSERT INTO `arbitman_public_now` VALUES (698,859,'Y','00000884');
INSERT INTO `arbitman_public_now` VALUES (699,860,'Y','00000885');
INSERT INTO `arbitman_public_now` VALUES (700,861,'Y','00000886');
INSERT INTO `arbitman_public_now` VALUES (701,862,'Y','00000887');
INSERT INTO `arbitman_public_now` VALUES (702,863,'Y','00000888');
INSERT INTO `arbitman_public_now` VALUES (703,864,'Y','00000889');
INSERT INTO `arbitman_public_now` VALUES (704,865,'Y','00000890');
INSERT INTO `arbitman_public_now` VALUES (705,866,'Y','00000891');
INSERT INTO `arbitman_public_now` VALUES (706,867,'Y','00000892');
INSERT INTO `arbitman_public_now` VALUES (707,868,'Y','00000893');
INSERT INTO `arbitman_public_now` VALUES (708,869,'Y','00000894');
INSERT INTO `arbitman_public_now` VALUES (709,870,'Y','00000895');
INSERT INTO `arbitman_public_now` VALUES (710,871,'Y','00000896');
INSERT INTO `arbitman_public_now` VALUES (711,872,'Y','00000897');
INSERT INTO `arbitman_public_now` VALUES (712,873,'Y','00000898');
INSERT INTO `arbitman_public_now` VALUES (713,874,'Y','00000899');
INSERT INTO `arbitman_public_now` VALUES (714,875,'Y','00000900');
INSERT INTO `arbitman_public_now` VALUES (715,876,'Y','00000901');
INSERT INTO `arbitman_public_now` VALUES (716,877,'Y','00000902');
INSERT INTO `arbitman_public_now` VALUES (717,878,'Y','00000903');
INSERT INTO `arbitman_public_now` VALUES (718,879,'Y','00000904');
INSERT INTO `arbitman_public_now` VALUES (719,880,'Y','00000905');
INSERT INTO `arbitman_public_now` VALUES (720,881,'Y','00000906');
INSERT INTO `arbitman_public_now` VALUES (721,882,'Y','00000907');
INSERT INTO `arbitman_public_now` VALUES (722,883,'Y','00000908');
INSERT INTO `arbitman_public_now` VALUES (723,884,'Y','00000909');
INSERT INTO `arbitman_public_now` VALUES (724,885,'Y','00000910');
INSERT INTO `arbitman_public_now` VALUES (725,886,'Y','00000911');
INSERT INTO `arbitman_public_now` VALUES (726,887,'Y','00000912');
INSERT INTO `arbitman_public_now` VALUES (727,888,'Y','00000913');
INSERT INTO `arbitman_public_now` VALUES (728,889,'Y','00000914');
INSERT INTO `arbitman_public_now` VALUES (729,890,'Y','00000915');
INSERT INTO `arbitman_public_now` VALUES (730,891,'Y','00000916');
INSERT INTO `arbitman_public_now` VALUES (731,892,'Y','00000917');
INSERT INTO `arbitman_public_now` VALUES (732,893,'Y','00000918');
INSERT INTO `arbitman_public_now` VALUES (733,894,'Y','00000919');
INSERT INTO `arbitman_public_now` VALUES (734,895,'Y','00000920');
INSERT INTO `arbitman_public_now` VALUES (735,896,'Y','00000921');
INSERT INTO `arbitman_public_now` VALUES (736,897,'Y','00000922');
INSERT INTO `arbitman_public_now` VALUES (737,898,'Y','00000923');
INSERT INTO `arbitman_public_now` VALUES (738,899,'Y','00000924');
INSERT INTO `arbitman_public_now` VALUES (739,900,'Y','00000925');
INSERT INTO `arbitman_public_now` VALUES (740,902,'Y','00000927');
INSERT INTO `arbitman_public_now` VALUES (741,903,'Y','00000928');
INSERT INTO `arbitman_public_now` VALUES (742,904,'Y','00000929');
INSERT INTO `arbitman_public_now` VALUES (743,905,'Y','00000930');
INSERT INTO `arbitman_public_now` VALUES (744,906,'Y','00000931');
INSERT INTO `arbitman_public_now` VALUES (745,908,'Y','00000933');
INSERT INTO `arbitman_public_now` VALUES (746,909,'Y','00000934');
INSERT INTO `arbitman_public_now` VALUES (747,910,'Y','00000935');
INSERT INTO `arbitman_public_now` VALUES (748,911,'Y','00000936');
INSERT INTO `arbitman_public_now` VALUES (749,912,'Y','00000937');
INSERT INTO `arbitman_public_now` VALUES (750,913,'Y','00000938');
INSERT INTO `arbitman_public_now` VALUES (751,914,'Y','00000939');
INSERT INTO `arbitman_public_now` VALUES (752,915,'Y','00000940');
INSERT INTO `arbitman_public_now` VALUES (753,916,'Y','00000941');
INSERT INTO `arbitman_public_now` VALUES (754,917,'Y','00000942');
INSERT INTO `arbitman_public_now` VALUES (755,918,'Y','00000943');
INSERT INTO `arbitman_public_now` VALUES (756,919,'Y','00000944');
INSERT INTO `arbitman_public_now` VALUES (757,920,'Y','00000945');
INSERT INTO `arbitman_public_now` VALUES (758,921,'Y','00000946');
INSERT INTO `arbitman_public_now` VALUES (759,922,'Y','00000947');
INSERT INTO `arbitman_public_now` VALUES (760,923,'Y','00000948');
INSERT INTO `arbitman_public_now` VALUES (761,924,'Y','00000949');
INSERT INTO `arbitman_public_now` VALUES (762,925,'Y','00000950');
INSERT INTO `arbitman_public_now` VALUES (763,926,'Y','00000951');
INSERT INTO `arbitman_public_now` VALUES (764,927,'Y','00000952');
INSERT INTO `arbitman_public_now` VALUES (765,928,'Y','00000953');
INSERT INTO `arbitman_public_now` VALUES (766,929,'Y','00000954');
INSERT INTO `arbitman_public_now` VALUES (767,930,'Y','00000955');
INSERT INTO `arbitman_public_now` VALUES (768,931,'Y','00000956');
INSERT INTO `arbitman_public_now` VALUES (769,932,'Y','00000957');
INSERT INTO `arbitman_public_now` VALUES (770,933,'Y','00000958');
INSERT INTO `arbitman_public_now` VALUES (771,934,'Y','00000959');
INSERT INTO `arbitman_public_now` VALUES (772,935,'Y','00000960');
INSERT INTO `arbitman_public_now` VALUES (773,936,'Y','00000961');
INSERT INTO `arbitman_public_now` VALUES (774,937,'Y','00000962');
INSERT INTO `arbitman_public_now` VALUES (775,938,'Y','00000963');
INSERT INTO `arbitman_public_now` VALUES (776,939,'Y','00000964');
INSERT INTO `arbitman_public_now` VALUES (777,940,'Y','00000965');
INSERT INTO `arbitman_public_now` VALUES (778,941,'Y','00000966');
INSERT INTO `arbitman_public_now` VALUES (779,942,'Y','00000967');
INSERT INTO `arbitman_public_now` VALUES (780,943,'Y','00000968');
INSERT INTO `arbitman_public_now` VALUES (781,944,'Y','00000969');
INSERT INTO `arbitman_public_now` VALUES (782,945,'Y','00000970');
INSERT INTO `arbitman_public_now` VALUES (783,947,'Y','00000972');
INSERT INTO `arbitman_public_now` VALUES (784,948,'Y','00000973');
INSERT INTO `arbitman_public_now` VALUES (785,949,'Y','00000974');
INSERT INTO `arbitman_public_now` VALUES (786,950,'Y','00000975');
INSERT INTO `arbitman_public_now` VALUES (787,951,'Y','00000976');
INSERT INTO `arbitman_public_now` VALUES (788,952,'Y','00000977');
INSERT INTO `arbitman_public_now` VALUES (789,953,'Y','00000978');
INSERT INTO `arbitman_public_now` VALUES (790,954,'Y','00000979');
INSERT INTO `arbitman_public_now` VALUES (791,955,'Y','00000980');
INSERT INTO `arbitman_public_now` VALUES (792,956,'Y','00000981');
INSERT INTO `arbitman_public_now` VALUES (793,957,'Y','00000982');
INSERT INTO `arbitman_public_now` VALUES (794,958,'Y','00000983');
INSERT INTO `arbitman_public_now` VALUES (795,959,'Y','00000984');
INSERT INTO `arbitman_public_now` VALUES (796,960,'Y','00000985');
INSERT INTO `arbitman_public_now` VALUES (797,961,'Y','00000986');
INSERT INTO `arbitman_public_now` VALUES (798,962,'Y','00000987');
INSERT INTO `arbitman_public_now` VALUES (799,963,'Y','00000988');
INSERT INTO `arbitman_public_now` VALUES (800,964,'Y','00000989');
INSERT INTO `arbitman_public_now` VALUES (801,965,'Y','00000990');
INSERT INTO `arbitman_public_now` VALUES (802,966,'Y','00000991');
INSERT INTO `arbitman_public_now` VALUES (803,967,'Y','00000992');
INSERT INTO `arbitman_public_now` VALUES (804,968,'Y','00000993');
INSERT INTO `arbitman_public_now` VALUES (805,969,'Y','00000994');
INSERT INTO `arbitman_public_now` VALUES (806,970,'Y','00000995');
INSERT INTO `arbitman_public_now` VALUES (807,971,'Y','00000996');
INSERT INTO `arbitman_public_now` VALUES (808,972,'Y','00000997');
INSERT INTO `arbitman_public_now` VALUES (809,973,'Y','00000998');
INSERT INTO `arbitman_public_now` VALUES (810,974,'Y','00000999');
INSERT INTO `arbitman_public_now` VALUES (811,975,'Y','00001000');
INSERT INTO `arbitman_public_now` VALUES (812,976,'Y','00001001');
INSERT INTO `arbitman_public_now` VALUES (813,977,'Y','00001002');
INSERT INTO `arbitman_public_now` VALUES (814,978,'Y','00001003');
INSERT INTO `arbitman_public_now` VALUES (815,979,'Y','00000319');
INSERT INTO `arbitman_public_now` VALUES (816,980,'Y','00001004');
INSERT INTO `arbitman_public_now` VALUES (817,981,'Y','00001005');
INSERT INTO `arbitman_public_now` VALUES (818,982,'Y','00000602');
INSERT INTO `arbitman_public_now` VALUES (819,983,'Y','00000603');
INSERT INTO `arbitman_public_now` VALUES (820,984,'Y','00000320');
INSERT INTO `arbitman_public_now` VALUES (821,985,'Y','00001006');
INSERT INTO `arbitman_public_now` VALUES (822,986,'Y','00001007');
INSERT INTO `arbitman_public_now` VALUES (823,987,'Y','00001008');
INSERT INTO `arbitman_public_now` VALUES (824,988,'Y','00001009');
INSERT INTO `arbitman_public_now` VALUES (825,989,'Y','00001010');
INSERT INTO `arbitman_public_now` VALUES (826,990,'Y','00001011');
INSERT INTO `arbitman_public_now` VALUES (827,993,'Y','00001069');
INSERT INTO `arbitman_public_now` VALUES (828,994,'Y','00001070');
INSERT INTO `arbitman_public_now` VALUES (829,995,'Y','00001071');
INSERT INTO `arbitman_public_now` VALUES (830,996,'Y','00001188');
INSERT INTO `arbitman_public_now` VALUES (831,997,'Y','00001072');
INSERT INTO `arbitman_public_now` VALUES (832,998,'Y','00001073');
INSERT INTO `arbitman_public_now` VALUES (833,999,'Y','00001074');
INSERT INTO `arbitman_public_now` VALUES (834,1000,'Y','00001075');
INSERT INTO `arbitman_public_now` VALUES (835,1001,'Y','00001076');
INSERT INTO `arbitman_public_now` VALUES (836,1002,'Y','00001077');
INSERT INTO `arbitman_public_now` VALUES (837,1003,'Y','00001078');
INSERT INTO `arbitman_public_now` VALUES (838,1004,'Y','00001079');
INSERT INTO `arbitman_public_now` VALUES (839,1005,'Y','00001080');
INSERT INTO `arbitman_public_now` VALUES (840,1006,'Y','00001081');
INSERT INTO `arbitman_public_now` VALUES (841,1007,'Y','00001082');
INSERT INTO `arbitman_public_now` VALUES (842,1008,'Y','00001083');
INSERT INTO `arbitman_public_now` VALUES (843,1009,'Y','00001084');
INSERT INTO `arbitman_public_now` VALUES (844,1010,'Y','00001085');
INSERT INTO `arbitman_public_now` VALUES (845,1011,'Y','00001086');
INSERT INTO `arbitman_public_now` VALUES (846,1012,'Y','00001087');
INSERT INTO `arbitman_public_now` VALUES (847,1013,'Y','00001088');
INSERT INTO `arbitman_public_now` VALUES (848,1014,'Y','00001089');
INSERT INTO `arbitman_public_now` VALUES (849,1015,'Y','00001090');
INSERT INTO `arbitman_public_now` VALUES (850,1016,'Y','00001091');
INSERT INTO `arbitman_public_now` VALUES (851,1017,'Y','00001092');
INSERT INTO `arbitman_public_now` VALUES (852,1018,'Y','00001093');
INSERT INTO `arbitman_public_now` VALUES (853,1019,'Y','00001094');
INSERT INTO `arbitman_public_now` VALUES (854,1020,'Y','00001095');
INSERT INTO `arbitman_public_now` VALUES (855,1021,'Y','00001096');
INSERT INTO `arbitman_public_now` VALUES (856,1022,'Y','00001097');
INSERT INTO `arbitman_public_now` VALUES (857,1023,'Y','00001098');
INSERT INTO `arbitman_public_now` VALUES (858,1024,'Y','00001099');
INSERT INTO `arbitman_public_now` VALUES (859,1025,'Y','00001100');
INSERT INTO `arbitman_public_now` VALUES (860,1026,'Y','00001101');
INSERT INTO `arbitman_public_now` VALUES (861,1027,'Y','00001102');
INSERT INTO `arbitman_public_now` VALUES (862,1028,'Y','00001103');
INSERT INTO `arbitman_public_now` VALUES (863,1029,'Y','00001104');
INSERT INTO `arbitman_public_now` VALUES (864,1030,'Y','00001105');
INSERT INTO `arbitman_public_now` VALUES (865,1031,'Y','00001106');
INSERT INTO `arbitman_public_now` VALUES (866,1032,'Y','00001107');
INSERT INTO `arbitman_public_now` VALUES (867,1033,'Y','00001108');
INSERT INTO `arbitman_public_now` VALUES (868,1034,'Y','00001109');
INSERT INTO `arbitman_public_now` VALUES (869,1035,'Y','00001110');
INSERT INTO `arbitman_public_now` VALUES (870,1036,'Y','00001111');
INSERT INTO `arbitman_public_now` VALUES (871,1037,'Y','00001112');
INSERT INTO `arbitman_public_now` VALUES (872,1038,'Y','00001113');
INSERT INTO `arbitman_public_now` VALUES (873,1039,'Y','00001114');
INSERT INTO `arbitman_public_now` VALUES (874,1040,'Y','00001115');
INSERT INTO `arbitman_public_now` VALUES (875,1041,'Y','00001116');
INSERT INTO `arbitman_public_now` VALUES (876,1042,'Y','00001117');
INSERT INTO `arbitman_public_now` VALUES (877,1043,'Y','00001118');
INSERT INTO `arbitman_public_now` VALUES (878,1044,'Y','00001119');
INSERT INTO `arbitman_public_now` VALUES (879,1045,'Y','00001120');
INSERT INTO `arbitman_public_now` VALUES (880,1046,'Y','00001121');
INSERT INTO `arbitman_public_now` VALUES (881,1047,'Y','00001122');
INSERT INTO `arbitman_public_now` VALUES (882,1048,'Y','00001123');
INSERT INTO `arbitman_public_now` VALUES (883,1049,'Y','00001124');
INSERT INTO `arbitman_public_now` VALUES (884,1050,'Y','00001125');
INSERT INTO `arbitman_public_now` VALUES (885,1051,'Y','00001126');
INSERT INTO `arbitman_public_now` VALUES (886,1052,'Y','00001127');
INSERT INTO `arbitman_public_now` VALUES (887,1053,'Y','00001128');
INSERT INTO `arbitman_public_now` VALUES (888,1054,'Y','00001129');
INSERT INTO `arbitman_public_now` VALUES (889,1055,'Y','00001130');
INSERT INTO `arbitman_public_now` VALUES (890,1056,'Y','00001131');
INSERT INTO `arbitman_public_now` VALUES (891,1057,'Y','00001132');
INSERT INTO `arbitman_public_now` VALUES (892,1058,'Y','00001133');
INSERT INTO `arbitman_public_now` VALUES (893,1059,'Y','00001134');
INSERT INTO `arbitman_public_now` VALUES (894,1060,'Y','00001135');
INSERT INTO `arbitman_public_now` VALUES (895,1061,'Y','00001136');
INSERT INTO `arbitman_public_now` VALUES (896,1062,'Y','00001137');
INSERT INTO `arbitman_public_now` VALUES (897,1063,'Y','00001138');
INSERT INTO `arbitman_public_now` VALUES (898,1064,'Y','00001139');
INSERT INTO `arbitman_public_now` VALUES (899,1065,'Y','00001140');
INSERT INTO `arbitman_public_now` VALUES (900,1066,'Y','00001141');
INSERT INTO `arbitman_public_now` VALUES (901,1067,'Y','00001142');
INSERT INTO `arbitman_public_now` VALUES (902,1068,'Y','00001143');
INSERT INTO `arbitman_public_now` VALUES (903,1069,'Y','00001144');
INSERT INTO `arbitman_public_now` VALUES (904,1070,'Y','00001145');
INSERT INTO `arbitman_public_now` VALUES (905,1071,'Y','00001146');
INSERT INTO `arbitman_public_now` VALUES (906,1072,'Y','00001147');
INSERT INTO `arbitman_public_now` VALUES (907,1073,'Y','00001148');
INSERT INTO `arbitman_public_now` VALUES (908,1074,'Y','00001149');
INSERT INTO `arbitman_public_now` VALUES (909,1075,'Y','00001150');
INSERT INTO `arbitman_public_now` VALUES (910,1076,'Y','00001151');
INSERT INTO `arbitman_public_now` VALUES (911,1077,'Y','00001152');
INSERT INTO `arbitman_public_now` VALUES (912,1078,'Y','00001153');
INSERT INTO `arbitman_public_now` VALUES (913,1079,'Y','00001154');
INSERT INTO `arbitman_public_now` VALUES (914,1080,'Y','00001155');
INSERT INTO `arbitman_public_now` VALUES (915,1081,'Y','00001156');
INSERT INTO `arbitman_public_now` VALUES (916,1082,'Y','00001157');
INSERT INTO `arbitman_public_now` VALUES (917,1083,'Y','00001158');
INSERT INTO `arbitman_public_now` VALUES (918,1084,'Y','00001159');
INSERT INTO `arbitman_public_now` VALUES (919,1085,'Y','00001160');
INSERT INTO `arbitman_public_now` VALUES (920,1086,'Y','00001161');
INSERT INTO `arbitman_public_now` VALUES (921,1087,'Y','00001162');
INSERT INTO `arbitman_public_now` VALUES (922,1088,'Y','00001163');
INSERT INTO `arbitman_public_now` VALUES (923,1089,'Y','00001164');
INSERT INTO `arbitman_public_now` VALUES (924,1090,'Y','00001165');
INSERT INTO `arbitman_public_now` VALUES (925,1091,'Y','00001166');
INSERT INTO `arbitman_public_now` VALUES (926,1092,'Y','00001167');
INSERT INTO `arbitman_public_now` VALUES (927,1093,'Y','00001168');
INSERT INTO `arbitman_public_now` VALUES (928,1094,'Y','00001169');
INSERT INTO `arbitman_public_now` VALUES (929,1095,'Y','00001170');
INSERT INTO `arbitman_public_now` VALUES (930,1096,'Y','00001171');
INSERT INTO `arbitman_public_now` VALUES (931,1097,'Y','00001172');
INSERT INTO `arbitman_public_now` VALUES (932,1098,'Y','00001173');
INSERT INTO `arbitman_public_now` VALUES (933,1099,'Y','00001174');
INSERT INTO `arbitman_public_now` VALUES (934,1100,'Y','00001175');
INSERT INTO `arbitman_public_now` VALUES (935,1101,'Y','00001176');
INSERT INTO `arbitman_public_now` VALUES (936,1102,'Y','00001177');
INSERT INTO `arbitman_public_now` VALUES (937,1103,'Y','00001178');
INSERT INTO `arbitman_public_now` VALUES (938,1104,'Y','00001179');
INSERT INTO `arbitman_public_now` VALUES (939,1105,'Y','00001180');
INSERT INTO `arbitman_public_now` VALUES (940,1106,'Y','00001181');
INSERT INTO `arbitman_public_now` VALUES (941,1107,'Y','00001182');
INSERT INTO `arbitman_public_now` VALUES (942,1108,'Y','00001183');
INSERT INTO `arbitman_public_now` VALUES (943,1109,'Y','00001184');
INSERT INTO `arbitman_public_now` VALUES (944,1110,'Y','00001185');
INSERT INTO `arbitman_public_now` VALUES (945,1111,'Y','00001186');
INSERT INTO `arbitman_public_now` VALUES (946,1112,'Y','00001187');
INSERT INTO `arbitman_public_now` VALUES (947,1114,'Y','00001190');
INSERT INTO `arbitman_public_now` VALUES (948,1115,'Y','00001191');
INSERT INTO `arbitman_public_now` VALUES (949,1116,'Y','00001192');
INSERT INTO `arbitman_public_now` VALUES (950,1117,'Y','00001193');
INSERT INTO `arbitman_public_now` VALUES (951,1118,'Y','00001194');
INSERT INTO `arbitman_public_now` VALUES (952,1119,'Y','00001195');
INSERT INTO `arbitman_public_now` VALUES (953,1120,'Y','00001196');
INSERT INTO `arbitman_public_now` VALUES (954,1121,'Y','00001197');
INSERT INTO `arbitman_public_now` VALUES (955,1122,'Y','00001198');
INSERT INTO `arbitman_public_now` VALUES (956,1123,'Y','00001199');
INSERT INTO `arbitman_public_now` VALUES (957,1124,'Y','00001200');
INSERT INTO `arbitman_public_now` VALUES (958,1125,'Y','00001201');
INSERT INTO `arbitman_public_now` VALUES (959,1126,'Y','00001202');
INSERT INTO `arbitman_public_now` VALUES (960,1127,'Y','00001203');
INSERT INTO `arbitman_public_now` VALUES (961,1128,'Y','00001204');
INSERT INTO `arbitman_public_now` VALUES (962,1129,'Y','00001205');
INSERT INTO `arbitman_public_now` VALUES (963,1130,'Y','00001206');
INSERT INTO `arbitman_public_now` VALUES (964,1131,'Y','00001207');
INSERT INTO `arbitman_public_now` VALUES (965,1132,'Y','00001208');
INSERT INTO `arbitman_public_now` VALUES (966,1133,'Y','00001209');
INSERT INTO `arbitman_public_now` VALUES (967,1134,'Y','00001210');
INSERT INTO `arbitman_public_now` VALUES (968,1135,'Y','00001211');
INSERT INTO `arbitman_public_now` VALUES (969,1136,'Y','00001212');
INSERT INTO `arbitman_public_now` VALUES (970,1137,'Y','00001213');
INSERT INTO `arbitman_public_now` VALUES (971,1138,'Y','00001214');
INSERT INTO `arbitman_public_now` VALUES (972,1139,'Y','00001215');
INSERT INTO `arbitman_public_now` VALUES (973,1140,'Y','00001216');
INSERT INTO `arbitman_public_now` VALUES (974,1141,'Y','00001217');
INSERT INTO `arbitman_public_now` VALUES (975,1142,'Y','00001218');
INSERT INTO `arbitman_public_now` VALUES (976,1143,'Y','00001219');
INSERT INTO `arbitman_public_now` VALUES (977,1144,'Y','00001220');
INSERT INTO `arbitman_public_now` VALUES (978,1145,'Y','00001221');
INSERT INTO `arbitman_public_now` VALUES (979,1146,'Y','00001222');
INSERT INTO `arbitman_public_now` VALUES (980,1147,'Y','00001223');
INSERT INTO `arbitman_public_now` VALUES (981,1148,'Y','00001224');
INSERT INTO `arbitman_public_now` VALUES (982,1149,'Y','00001225');
INSERT INTO `arbitman_public_now` VALUES (983,1150,'Y','00001226');
INSERT INTO `arbitman_public_now` VALUES (984,1151,'Y','00001227');
INSERT INTO `arbitman_public_now` VALUES (985,1152,'Y','00001228');
INSERT INTO `arbitman_public_now` VALUES (986,1153,'Y','00001229');
INSERT INTO `arbitman_public_now` VALUES (987,1154,'Y','00001230');
INSERT INTO `arbitman_public_now` VALUES (988,1155,'Y','00001231');
INSERT INTO `arbitman_public_now` VALUES (989,1156,'Y','00001232');
INSERT INTO `arbitman_public_now` VALUES (990,1157,'Y','00001233');
INSERT INTO `arbitman_public_now` VALUES (991,1158,'Y','00001234');
INSERT INTO `arbitman_public_now` VALUES (992,1159,'Y','00001235');
INSERT INTO `arbitman_public_now` VALUES (993,1160,'Y','00001236');
INSERT INTO `arbitman_public_now` VALUES (994,1161,'Y','00001237');
INSERT INTO `arbitman_public_now` VALUES (995,1162,'Y','00001238');
INSERT INTO `arbitman_public_now` VALUES (996,1163,'Y','00001239');
INSERT INTO `arbitman_public_now` VALUES (997,1164,'Y','00001240');
INSERT INTO `arbitman_public_now` VALUES (998,1165,'Y','00001241');
INSERT INTO `arbitman_public_now` VALUES (999,1166,'Y','00001242');
INSERT INTO `arbitman_public_now` VALUES (1000,1167,'Y','00001243');
INSERT INTO `arbitman_public_now` VALUES (1001,1168,'Y','00001244');
INSERT INTO `arbitman_public_now` VALUES (1002,1169,'Y','00001245');
INSERT INTO `arbitman_public_now` VALUES (1003,1170,'Y','00001246');
INSERT INTO `arbitman_public_now` VALUES (1004,1171,'Y','00001247');
INSERT INTO `arbitman_public_now` VALUES (1005,1172,'Y','00001248');
INSERT INTO `arbitman_public_now` VALUES (1006,1173,'Y','00001249');
INSERT INTO `arbitman_public_now` VALUES (1007,1174,'Y','00001250');
INSERT INTO `arbitman_public_now` VALUES (1008,1175,'Y','00001251');
INSERT INTO `arbitman_public_now` VALUES (1009,1176,'Y','00001252');
INSERT INTO `arbitman_public_now` VALUES (1010,1177,'Y','00001253');
INSERT INTO `arbitman_public_now` VALUES (1011,1178,'Y','00001254');
INSERT INTO `arbitman_public_now` VALUES (1012,1179,'Y','00001255');
INSERT INTO `arbitman_public_now` VALUES (1013,1180,'Y','00001256');
INSERT INTO `arbitman_public_now` VALUES (1014,1181,'Y','00001257');
INSERT INTO `arbitman_public_now` VALUES (1015,1182,'Y','00001258');
INSERT INTO `arbitman_public_now` VALUES (1016,1183,'Y','00001259');
INSERT INTO `arbitman_public_now` VALUES (1017,1184,'Y','00001260');
INSERT INTO `arbitman_public_now` VALUES (1018,1185,'Y','00001261');
INSERT INTO `arbitman_public_now` VALUES (1019,1186,'Y','00001262');
INSERT INTO `arbitman_public_now` VALUES (1020,1187,'Y','00001263');
INSERT INTO `arbitman_public_now` VALUES (1021,1188,'Y','00001264');
INSERT INTO `arbitman_public_now` VALUES (1022,1189,'Y','00001265');
INSERT INTO `arbitman_public_now` VALUES (1023,1190,'Y','00001266');
INSERT INTO `arbitman_public_now` VALUES (1024,1191,'Y','00001268');
INSERT INTO `arbitman_public_now` VALUES (1025,1192,'Y','00001269');
INSERT INTO `arbitman_public_now` VALUES (1026,1193,'Y','00001270');
INSERT INTO `arbitman_public_now` VALUES (1027,1194,'Y','00001271');
INSERT INTO `arbitman_public_now` VALUES (1028,1195,'Y','00001272');
INSERT INTO `arbitman_public_now` VALUES (1029,1196,'Y','00001273');
INSERT INTO `arbitman_public_now` VALUES (1030,1197,'Y','00001274');
INSERT INTO `arbitman_public_now` VALUES (1031,1198,'Y','00001275');
INSERT INTO `arbitman_public_now` VALUES (1032,1199,'Y','00001276');
INSERT INTO `arbitman_public_now` VALUES (1033,1200,'Y','00001277');
INSERT INTO `arbitman_public_now` VALUES (1034,1201,'Y','00001278');
INSERT INTO `arbitman_public_now` VALUES (1035,1202,'Y','00001279');
INSERT INTO `arbitman_public_now` VALUES (1036,1203,'Y','00001280');
INSERT INTO `arbitman_public_now` VALUES (1037,1204,'Y','00001281');
INSERT INTO `arbitman_public_now` VALUES (1038,1205,'Y','00001282');
INSERT INTO `arbitman_public_now` VALUES (1039,1206,'Y','00001284');
INSERT INTO `arbitman_public_now` VALUES (1040,1207,'Y','00001285');
INSERT INTO `arbitman_public_now` VALUES (1041,1208,'Y','00001286');
INSERT INTO `arbitman_public_now` VALUES (1042,1209,'Y','00001287');
INSERT INTO `arbitman_public_now` VALUES (1043,1210,'Y','00001288');
INSERT INTO `arbitman_public_now` VALUES (1044,1211,'Y','00001289');
INSERT INTO `arbitman_public_now` VALUES (1045,1212,'Y','00001290');
INSERT INTO `arbitman_public_now` VALUES (1046,1213,'Y','00001291');
INSERT INTO `arbitman_public_now` VALUES (1047,1214,'Y','00001292');
INSERT INTO `arbitman_public_now` VALUES (1048,1215,'Y','00001293');
INSERT INTO `arbitman_public_now` VALUES (1049,1216,'Y','00001294');
INSERT INTO `arbitman_public_now` VALUES (1050,1217,'Y','00001295');
INSERT INTO `arbitman_public_now` VALUES (1051,1218,'Y','00001297');
INSERT INTO `arbitman_public_now` VALUES (1052,1232,'Y','00001303');
INSERT INTO `arbitman_public_now` VALUES (1053,1233,'Y','00001304');
INSERT INTO `arbitman_public_now` VALUES (1054,1234,'Y','00001305');
INSERT INTO `arbitman_public_now` VALUES (1055,1235,'Y','00001306');
INSERT INTO `arbitman_public_now` VALUES (1056,1236,'Y','00001307');
INSERT INTO `arbitman_public_now` VALUES (1057,1237,'Y','00001308');
INSERT INTO `arbitman_public_now` VALUES (1058,1238,'Y','00001309');
INSERT INTO `arbitman_public_now` VALUES (1059,1239,'Y','00001310');
INSERT INTO `arbitman_public_now` VALUES (1060,1240,'Y','00001311');
INSERT INTO `arbitman_public_now` VALUES (1061,1241,'Y','00001312');
INSERT INTO `arbitman_public_now` VALUES (1062,1243,'Y','00001314');
INSERT INTO `arbitman_public_now` VALUES (1063,1244,'Y','00001315');
INSERT INTO `arbitman_public_now` VALUES (1064,1245,'Y','00001316');
INSERT INTO `arbitman_public_now` VALUES (1065,1246,'Y','00001317');
INSERT INTO `arbitman_public_now` VALUES (1066,1247,'Y','00001318');
INSERT INTO `arbitman_public_now` VALUES (1067,1248,'Y','00001319');
INSERT INTO `arbitman_public_now` VALUES (1068,1249,'Y','00001320');
INSERT INTO `arbitman_public_now` VALUES (1069,1250,'Y','00001321');
INSERT INTO `arbitman_public_now` VALUES (1070,1251,'Y','00001322');
INSERT INTO `arbitman_public_now` VALUES (1071,1252,'Y','00001323');
INSERT INTO `arbitman_public_now` VALUES (1072,1253,'Y','00001324');
INSERT INTO `arbitman_public_now` VALUES (1073,1254,'Y','00001325');
INSERT INTO `arbitman_public_now` VALUES (1074,1255,'Y','00001326');
INSERT INTO `arbitman_public_now` VALUES (1075,1256,'Y','00001327');
INSERT INTO `arbitman_public_now` VALUES (1076,1257,'Y','00001328');
INSERT INTO `arbitman_public_now` VALUES (1077,1258,'Y','00001329');
INSERT INTO `arbitman_public_now` VALUES (1078,1259,'Y','00001330');
INSERT INTO `arbitman_public_now` VALUES (1079,1260,'Y','00001331');
INSERT INTO `arbitman_public_now` VALUES (1080,1261,'Y','00001332');
INSERT INTO `arbitman_public_now` VALUES (1081,1262,'Y','00001333');
INSERT INTO `arbitman_public_now` VALUES (1082,1263,'Y','00001334');
INSERT INTO `arbitman_public_now` VALUES (1083,1264,'Y','00001335');
INSERT INTO `arbitman_public_now` VALUES (1084,1265,'Y','00001336');
INSERT INTO `arbitman_public_now` VALUES (1085,1266,'Y','00001337');
INSERT INTO `arbitman_public_now` VALUES (1086,1267,'Y','00001338');
INSERT INTO `arbitman_public_now` VALUES (1087,1268,'Y','00001339');
INSERT INTO `arbitman_public_now` VALUES (1088,1269,'Y','00001340');
INSERT INTO `arbitman_public_now` VALUES (1089,1270,'Y','00001341');
INSERT INTO `arbitman_public_now` VALUES (1090,1271,'Y','00001342');
INSERT INTO `arbitman_public_now` VALUES (1091,1272,'Y','00001343');
INSERT INTO `arbitman_public_now` VALUES (1092,1273,'Y','00001344');
INSERT INTO `arbitman_public_now` VALUES (1093,1274,'Y','00001345');
INSERT INTO `arbitman_public_now` VALUES (1094,1275,'Y','00001346');
INSERT INTO `arbitman_public_now` VALUES (1095,1276,'Y','00001347');
INSERT INTO `arbitman_public_now` VALUES (1096,1277,'Y','00001348');
INSERT INTO `arbitman_public_now` VALUES (1097,1278,'Y','00001349');
INSERT INTO `arbitman_public_now` VALUES (1098,1279,'Y','00001350');
INSERT INTO `arbitman_public_now` VALUES (1099,1280,'Y','00001351');
INSERT INTO `arbitman_public_now` VALUES (1100,1281,'Y','00001352');
INSERT INTO `arbitman_public_now` VALUES (1101,1282,'Y','00001353');
INSERT INTO `arbitman_public_now` VALUES (1102,1283,'Y','00001354');
INSERT INTO `arbitman_public_now` VALUES (1103,1284,'Y','00001355');
INSERT INTO `arbitman_public_now` VALUES (1104,1285,'Y','00001356');
INSERT INTO `arbitman_public_now` VALUES (1105,1286,'Y','00001357');
INSERT INTO `arbitman_public_now` VALUES (1106,1287,'Y','00001358');
INSERT INTO `arbitman_public_now` VALUES (1107,1288,'Y','00001359');
INSERT INTO `arbitman_public_now` VALUES (1108,1289,'Y','00001360');
INSERT INTO `arbitman_public_now` VALUES (1109,1290,'Y','00001361');
INSERT INTO `arbitman_public_now` VALUES (1110,1291,'Y','00001362');
INSERT INTO `arbitman_public_now` VALUES (1111,1292,'Y','00001363');
INSERT INTO `arbitman_public_now` VALUES (1112,1293,'Y','00001364');
INSERT INTO `arbitman_public_now` VALUES (1113,1294,'Y','00001365');
INSERT INTO `arbitman_public_now` VALUES (1114,1295,'Y','00001366');
INSERT INTO `arbitman_public_now` VALUES (1115,1296,'Y','00001367');
INSERT INTO `arbitman_public_now` VALUES (1116,1297,'Y','00001368');
INSERT INTO `arbitman_public_now` VALUES (1117,1298,'Y','00001369');
INSERT INTO `arbitman_public_now` VALUES (1118,1299,'Y','00001370');
INSERT INTO `arbitman_public_now` VALUES (1119,1300,'Y','00001371');
INSERT INTO `arbitman_public_now` VALUES (1120,1301,'Y','00001372');
INSERT INTO `arbitman_public_now` VALUES (1121,1302,'Y','00001373');
INSERT INTO `arbitman_public_now` VALUES (1122,1303,'Y','00001374');
INSERT INTO `arbitman_public_now` VALUES (1123,1304,'Y','00001375');
INSERT INTO `arbitman_public_now` VALUES (1124,1305,'Y','00001376');
INSERT INTO `arbitman_public_now` VALUES (1125,1306,'Y','00001377');
INSERT INTO `arbitman_public_now` VALUES (1126,1307,'Y','00001378');
INSERT INTO `arbitman_public_now` VALUES (1127,1308,'Y','00001379');
INSERT INTO `arbitman_public_now` VALUES (1128,1309,'Y','00001380');
INSERT INTO `arbitman_public_now` VALUES (1129,1310,'Y','00001381');
INSERT INTO `arbitman_public_now` VALUES (1130,1311,'Y','00001382');
INSERT INTO `arbitman_public_now` VALUES (1131,1312,'Y','00001383');
INSERT INTO `arbitman_public_now` VALUES (1132,1313,'Y','00001384');
INSERT INTO `arbitman_public_now` VALUES (1133,1314,'Y','00001385');
INSERT INTO `arbitman_public_now` VALUES (1134,1315,'Y','00001386');
INSERT INTO `arbitman_public_now` VALUES (1135,1316,'Y','00001387');
INSERT INTO `arbitman_public_now` VALUES (1136,1317,'Y','00001388');
INSERT INTO `arbitman_public_now` VALUES (1137,1318,'Y','00001389');
INSERT INTO `arbitman_public_now` VALUES (1138,1319,'Y','00001390');
INSERT INTO `arbitman_public_now` VALUES (1139,1320,'Y','00001391');
INSERT INTO `arbitman_public_now` VALUES (1140,1321,'Y','00001392');
INSERT INTO `arbitman_public_now` VALUES (1141,1322,'Y','00001393');
INSERT INTO `arbitman_public_now` VALUES (1142,1323,'Y','00001394');
INSERT INTO `arbitman_public_now` VALUES (1143,1324,'Y','00001395');
INSERT INTO `arbitman_public_now` VALUES (1144,1325,'Y','00001396');
INSERT INTO `arbitman_public_now` VALUES (1145,1326,'Y','00001397');
INSERT INTO `arbitman_public_now` VALUES (1146,1327,'Y','00001398');
INSERT INTO `arbitman_public_now` VALUES (1147,1328,'Y','00001399');
INSERT INTO `arbitman_public_now` VALUES (1148,1329,'Y','00001400');
INSERT INTO `arbitman_public_now` VALUES (1149,1330,'Y','00001401');
INSERT INTO `arbitman_public_now` VALUES (1150,1331,'Y','00001402');
INSERT INTO `arbitman_public_now` VALUES (1151,1332,'Y','00001403');
INSERT INTO `arbitman_public_now` VALUES (1152,1333,'Y','00001404');
INSERT INTO `arbitman_public_now` VALUES (1153,1334,'Y','00001405');
INSERT INTO `arbitman_public_now` VALUES (1154,1335,'Y','00001406');
INSERT INTO `arbitman_public_now` VALUES (1155,1336,'Y','00001407');
INSERT INTO `arbitman_public_now` VALUES (1156,1337,'Y','00001408');
INSERT INTO `arbitman_public_now` VALUES (1157,1338,'Y','00001409');
INSERT INTO `arbitman_public_now` VALUES (1158,1339,'Y','00001410');
INSERT INTO `arbitman_public_now` VALUES (1159,1340,'Y','00001411');
INSERT INTO `arbitman_public_now` VALUES (1160,1341,'Y','00001412');
INSERT INTO `arbitman_public_now` VALUES (1161,1342,'Y','00001413');
INSERT INTO `arbitman_public_now` VALUES (1162,1343,'Y','00001414');
INSERT INTO `arbitman_public_now` VALUES (1163,1344,'Y','00001415');
INSERT INTO `arbitman_public_now` VALUES (1164,1345,'Y','00001416');
INSERT INTO `arbitman_public_now` VALUES (1165,1346,'Y','00001417');
INSERT INTO `arbitman_public_now` VALUES (1166,1347,'Y','00001418');
INSERT INTO `arbitman_public_now` VALUES (1167,1348,'Y','00001419');
INSERT INTO `arbitman_public_now` VALUES (1168,1349,'Y','00001420');
INSERT INTO `arbitman_public_now` VALUES (1169,1350,'Y','00001421');
INSERT INTO `arbitman_public_now` VALUES (1170,1351,'Y','00001422');
INSERT INTO `arbitman_public_now` VALUES (1171,1352,'Y','00001423');
INSERT INTO `arbitman_public_now` VALUES (1172,1353,'Y','00001424');
INSERT INTO `arbitman_public_now` VALUES (1173,1354,'Y','00001425');
INSERT INTO `arbitman_public_now` VALUES (1174,1355,'Y','00001426');
INSERT INTO `arbitman_public_now` VALUES (1175,1356,'Y','00001427');
INSERT INTO `arbitman_public_now` VALUES (1176,1357,'Y','00001428');
INSERT INTO `arbitman_public_now` VALUES (1177,1358,'Y','00001429');
INSERT INTO `arbitman_public_now` VALUES (1178,1359,'Y','00001430');
INSERT INTO `arbitman_public_now` VALUES (1179,1360,'Y','00001431');
INSERT INTO `arbitman_public_now` VALUES (1180,1361,'Y','00001432');
INSERT INTO `arbitman_public_now` VALUES (1181,1362,'Y','00001433');
INSERT INTO `arbitman_public_now` VALUES (1182,1363,'Y','00001434');
INSERT INTO `arbitman_public_now` VALUES (1183,1364,'Y','00001435');
INSERT INTO `arbitman_public_now` VALUES (1184,1365,'Y','00001436');
INSERT INTO `arbitman_public_now` VALUES (1185,1366,'Y','00001437');
INSERT INTO `arbitman_public_now` VALUES (1186,1367,'Y','00001438');
INSERT INTO `arbitman_public_now` VALUES (1187,1368,'Y','00001439');
INSERT INTO `arbitman_public_now` VALUES (1188,1369,'Y','00001440');
INSERT INTO `arbitman_public_now` VALUES (1189,1370,'Y','00001441');
INSERT INTO `arbitman_public_now` VALUES (1190,1371,'Y','00001442');
INSERT INTO `arbitman_public_now` VALUES (1191,1372,'Y','00001443');
INSERT INTO `arbitman_public_now` VALUES (1192,1373,'Y','00001444');
INSERT INTO `arbitman_public_now` VALUES (1193,1374,'Y','00001445');
INSERT INTO `arbitman_public_now` VALUES (1194,1375,'Y','00001446');
INSERT INTO `arbitman_public_now` VALUES (1195,1376,'Y','00001447');
INSERT INTO `arbitman_public_now` VALUES (1196,1377,'Y','00001448');
INSERT INTO `arbitman_public_now` VALUES (1197,1378,'Y','00001449');
INSERT INTO `arbitman_public_now` VALUES (1198,1379,'Y','00001450');
INSERT INTO `arbitman_public_now` VALUES (1199,1380,'Y','00001451');
INSERT INTO `arbitman_public_now` VALUES (1200,1381,'Y','00001452');
INSERT INTO `arbitman_public_now` VALUES (1201,1382,'Y','00001453');
INSERT INTO `arbitman_public_now` VALUES (1202,1383,'Y','00001454');
INSERT INTO `arbitman_public_now` VALUES (1203,1384,'Y','00001455');
INSERT INTO `arbitman_public_now` VALUES (1204,1385,'Y','00001456');
INSERT INTO `arbitman_public_now` VALUES (1205,1386,'Y','00001457');
INSERT INTO `arbitman_public_now` VALUES (1206,1387,'Y','00001458');
INSERT INTO `arbitman_public_now` VALUES (1207,1388,'Y','00001459');
INSERT INTO `arbitman_public_now` VALUES (1208,1389,'Y','00001460');
INSERT INTO `arbitman_public_now` VALUES (1209,1390,'Y','00001461');
INSERT INTO `arbitman_public_now` VALUES (1210,1391,'Y','00001462');
INSERT INTO `arbitman_public_now` VALUES (1211,1392,'Y','00001463');
INSERT INTO `arbitman_public_now` VALUES (1212,1393,'Y','00001464');
INSERT INTO `arbitman_public_now` VALUES (1213,1394,'Y','00001465');
INSERT INTO `arbitman_public_now` VALUES (1214,1395,'Y','00001466');
INSERT INTO `arbitman_public_now` VALUES (1215,1396,'Y','00001467');
INSERT INTO `arbitman_public_now` VALUES (1216,1397,'Y','00001468');
INSERT INTO `arbitman_public_now` VALUES (1217,1398,'Y','00001469');
INSERT INTO `arbitman_public_now` VALUES (1218,1399,'Y','00001470');
INSERT INTO `arbitman_public_now` VALUES (1219,1400,'Y','00001471');
INSERT INTO `arbitman_public_now` VALUES (1220,1401,'Y','00001472');
INSERT INTO `arbitman_public_now` VALUES (1221,1402,'Y','00001473');
INSERT INTO `arbitman_public_now` VALUES (1222,1403,'Y','00001474');
INSERT INTO `arbitman_public_now` VALUES (1223,1404,'Y','00001475');
INSERT INTO `arbitman_public_now` VALUES (1224,1405,'Y','00001476');
INSERT INTO `arbitman_public_now` VALUES (1225,1406,'Y','00001477');
INSERT INTO `arbitman_public_now` VALUES (1226,1407,'Y','00001478');
INSERT INTO `arbitman_public_now` VALUES (1227,1408,'Y','00001479');
INSERT INTO `arbitman_public_now` VALUES (1228,1409,'Y','00001480');
INSERT INTO `arbitman_public_now` VALUES (1229,1410,'Y','00001481');
INSERT INTO `arbitman_public_now` VALUES (1230,1411,'Y','00001482');
INSERT INTO `arbitman_public_now` VALUES (1231,1412,'Y','00001483');
INSERT INTO `arbitman_public_now` VALUES (1232,1413,'Y','00001484');
INSERT INTO `arbitman_public_now` VALUES (1233,1414,'Y','00001485');
INSERT INTO `arbitman_public_now` VALUES (1234,1415,'Y','00001486');
INSERT INTO `arbitman_public_now` VALUES (1235,1416,'Y','00001487');
INSERT INTO `arbitman_public_now` VALUES (1236,1417,'Y','00001488');
INSERT INTO `arbitman_public_now` VALUES (1237,1418,'Y','00001489');
INSERT INTO `arbitman_public_now` VALUES (1238,1419,'Y','00001490');
INSERT INTO `arbitman_public_now` VALUES (1239,1420,'Y','00001491');
INSERT INTO `arbitman_public_now` VALUES (1240,1421,'Y','00001492');
INSERT INTO `arbitman_public_now` VALUES (1241,1422,'Y','00001493');
INSERT INTO `arbitman_public_now` VALUES (1242,1423,'Y','00001494');
INSERT INTO `arbitman_public_now` VALUES (1243,1424,'Y','00001495');
INSERT INTO `arbitman_public_now` VALUES (1244,1425,'Y','00001496');
INSERT INTO `arbitman_public_now` VALUES (1245,1426,'Y','00001497');
INSERT INTO `arbitman_public_now` VALUES (1246,1427,'Y','00001498');
INSERT INTO `arbitman_public_now` VALUES (1247,1428,'Y','00001499');
INSERT INTO `arbitman_public_now` VALUES (1248,1429,'Y','00001500');
INSERT INTO `arbitman_public_now` VALUES (1249,1430,'Y','00001501');
INSERT INTO `arbitman_public_now` VALUES (1250,1431,'Y','00001502');
INSERT INTO `arbitman_public_now` VALUES (1251,1432,'Y','00001503');
INSERT INTO `arbitman_public_now` VALUES (1252,1433,'Y','00001504');
INSERT INTO `arbitman_public_now` VALUES (1253,1434,'Y','00001505');
INSERT INTO `arbitman_public_now` VALUES (1254,1435,'Y','00001506');
INSERT INTO `arbitman_public_now` VALUES (1255,1436,'Y','00001507');
INSERT INTO `arbitman_public_now` VALUES (1256,1437,'Y','00001508');
INSERT INTO `arbitman_public_now` VALUES (1257,1438,'Y','00001509');
INSERT INTO `arbitman_public_now` VALUES (1258,1439,'Y','00001510');
INSERT INTO `arbitman_public_now` VALUES (1259,1440,'Y','00001511');
INSERT INTO `arbitman_public_now` VALUES (1260,1441,'Y','00001512');
INSERT INTO `arbitman_public_now` VALUES (1261,1442,'Y','00001513');
INSERT INTO `arbitman_public_now` VALUES (1262,1443,'Y','00001514');
INSERT INTO `arbitman_public_now` VALUES (1263,1444,'Y','00001515');
INSERT INTO `arbitman_public_now` VALUES (1264,1445,'Y','00001516');
INSERT INTO `arbitman_public_now` VALUES (1265,1446,'Y','00001517');
INSERT INTO `arbitman_public_now` VALUES (1266,1447,'Y','00001518');
INSERT INTO `arbitman_public_now` VALUES (1267,1448,'Y','00001519');
INSERT INTO `arbitman_public_now` VALUES (1268,1449,'Y','00001520');
INSERT INTO `arbitman_public_now` VALUES (1269,1450,'Y','00001521');
INSERT INTO `arbitman_public_now` VALUES (1270,1451,'Y','00001522');
INSERT INTO `arbitman_public_now` VALUES (1271,1452,'Y','00001523');
INSERT INTO `arbitman_public_now` VALUES (1272,1453,'Y','00001524');
INSERT INTO `arbitman_public_now` VALUES (1273,1454,'Y','00001525');
INSERT INTO `arbitman_public_now` VALUES (1274,1455,'Y','00001526');
INSERT INTO `arbitman_public_now` VALUES (1275,1456,'Y','00001527');
INSERT INTO `arbitman_public_now` VALUES (1276,1457,'Y','00001528');
INSERT INTO `arbitman_public_now` VALUES (1277,1458,'Y','00001529');
INSERT INTO `arbitman_public_now` VALUES (1278,1459,'Y','00001530');
INSERT INTO `arbitman_public_now` VALUES (1279,1460,'Y','00001531');
INSERT INTO `arbitman_public_now` VALUES (1280,1461,'Y','00001532');
INSERT INTO `arbitman_public_now` VALUES (1281,1462,'Y','00001533');
INSERT INTO `arbitman_public_now` VALUES (1282,1463,'Y','00001534');
INSERT INTO `arbitman_public_now` VALUES (1283,1464,'Y','00001535');
INSERT INTO `arbitman_public_now` VALUES (1284,1465,'Y','00001536');
INSERT INTO `arbitman_public_now` VALUES (1285,1466,'Y','00001537');
INSERT INTO `arbitman_public_now` VALUES (1286,1467,'Y','00001538');
INSERT INTO `arbitman_public_now` VALUES (1287,1468,'Y','00001539');
INSERT INTO `arbitman_public_now` VALUES (1288,1469,'Y','00001540');
INSERT INTO `arbitman_public_now` VALUES (1289,1470,'Y','00001541');
INSERT INTO `arbitman_public_now` VALUES (1290,1471,'Y','00001542');
INSERT INTO `arbitman_public_now` VALUES (1291,1472,'Y','00001543');
INSERT INTO `arbitman_public_now` VALUES (1292,1473,'Y','00001544');
INSERT INTO `arbitman_public_now` VALUES (1293,1474,'Y','00001545');
INSERT INTO `arbitman_public_now` VALUES (1294,1475,'Y','00001546');
INSERT INTO `arbitman_public_now` VALUES (1295,1476,'Y','00001547');
INSERT INTO `arbitman_public_now` VALUES (1296,1477,'Y','00001548');
INSERT INTO `arbitman_public_now` VALUES (1297,1478,'Y','00001549');
INSERT INTO `arbitman_public_now` VALUES (1298,1479,'Y','00001550');
INSERT INTO `arbitman_public_now` VALUES (1299,1480,'Y','00001551');
INSERT INTO `arbitman_public_now` VALUES (1300,1481,'Y','00001552');
INSERT INTO `arbitman_public_now` VALUES (1301,1482,'Y','00001553');
INSERT INTO `arbitman_public_now` VALUES (1302,1483,'Y','00001554');
INSERT INTO `arbitman_public_now` VALUES (1303,1484,'Y','00001555');
INSERT INTO `arbitman_public_now` VALUES (1304,1485,'Y','00001556');
INSERT INTO `arbitman_public_now` VALUES (1305,1486,'Y','00001557');
INSERT INTO `arbitman_public_now` VALUES (1306,1487,'Y','00001558');
INSERT INTO `arbitman_public_now` VALUES (1307,1488,'Y','00001559');
INSERT INTO `arbitman_public_now` VALUES (1308,1489,'Y','00001560');
INSERT INTO `arbitman_public_now` VALUES (1309,1490,'Y','00001561');
INSERT INTO `arbitman_public_now` VALUES (1310,1491,'Y','00001562');
INSERT INTO `arbitman_public_now` VALUES (1311,1492,'Y','00001563');
INSERT INTO `arbitman_public_now` VALUES (1312,1493,'Y','00001564');
INSERT INTO `arbitman_public_now` VALUES (1313,1494,'Y','00001565');
INSERT INTO `arbitman_public_now` VALUES (1314,1495,'Y','00001566');
INSERT INTO `arbitman_public_now` VALUES (1315,1496,'Y','00001567');
INSERT INTO `arbitman_public_now` VALUES (1316,1497,'Y','00001568');
INSERT INTO `arbitman_public_now` VALUES (1317,1498,'Y','00001569');
INSERT INTO `arbitman_public_now` VALUES (1318,1499,'Y','00001570');
INSERT INTO `arbitman_public_now` VALUES (1319,1500,'Y','00001571');
INSERT INTO `arbitman_public_now` VALUES (1320,1501,'Y','00001572');
INSERT INTO `arbitman_public_now` VALUES (1321,1502,'Y','00001573');
INSERT INTO `arbitman_public_now` VALUES (1322,1503,'Y','00001574');
INSERT INTO `arbitman_public_now` VALUES (1323,1504,'Y','00001575');
INSERT INTO `arbitman_public_now` VALUES (1324,1505,'Y','00001576');
INSERT INTO `arbitman_public_now` VALUES (1325,1506,'Y','00001577');
INSERT INTO `arbitman_public_now` VALUES (1326,1507,'Y','00001578');
INSERT INTO `arbitman_public_now` VALUES (1327,1508,'Y','00001579');
INSERT INTO `arbitman_public_now` VALUES (1328,1509,'Y','00001580');
INSERT INTO `arbitman_public_now` VALUES (1329,1510,'Y','00001581');
INSERT INTO `arbitman_public_now` VALUES (1330,1511,'Y','00001582');
INSERT INTO `arbitman_public_now` VALUES (1331,1512,'Y','00001583');
INSERT INTO `arbitman_public_now` VALUES (1332,1513,'Y','00001584');
INSERT INTO `arbitman_public_now` VALUES (1333,1514,'Y','00001585');
INSERT INTO `arbitman_public_now` VALUES (1334,1515,'Y','00001586');
INSERT INTO `arbitman_public_now` VALUES (1335,1516,'Y','00001587');
INSERT INTO `arbitman_public_now` VALUES (1336,1517,'Y','00001588');
INSERT INTO `arbitman_public_now` VALUES (1337,1518,'Y','00001589');
INSERT INTO `arbitman_public_now` VALUES (1338,1519,'Y','00001590');
INSERT INTO `arbitman_public_now` VALUES (1339,1520,'Y','00001591');
INSERT INTO `arbitman_public_now` VALUES (1340,1521,'Y','00001592');
INSERT INTO `arbitman_public_now` VALUES (1341,1522,'Y','00001593');
INSERT INTO `arbitman_public_now` VALUES (1342,1523,'Y','00001594');
INSERT INTO `arbitman_public_now` VALUES (1343,1524,'Y','00001595');
INSERT INTO `arbitman_public_now` VALUES (1344,1525,'Y','00001596');
INSERT INTO `arbitman_public_now` VALUES (1345,1526,'Y','00001597');
INSERT INTO `arbitman_public_now` VALUES (1346,1527,'Y','00001598');
INSERT INTO `arbitman_public_now` VALUES (1347,1528,'Y','00001599');
INSERT INTO `arbitman_public_now` VALUES (1348,1529,'Y','00001600');
INSERT INTO `arbitman_public_now` VALUES (1349,1530,'Y','00001601');
INSERT INTO `arbitman_public_now` VALUES (1350,1531,'Y','00001602');
INSERT INTO `arbitman_public_now` VALUES (1351,1532,'Y','00001603');
INSERT INTO `arbitman_public_now` VALUES (1352,1533,'Y','00001604');
INSERT INTO `arbitman_public_now` VALUES (1353,1534,'Y','00001605');
INSERT INTO `arbitman_public_now` VALUES (1354,1535,'Y','00001606');
INSERT INTO `arbitman_public_now` VALUES (1355,1536,'Y','00001607');
INSERT INTO `arbitman_public_now` VALUES (1356,1537,'Y','00001608');
INSERT INTO `arbitman_public_now` VALUES (1357,1538,'Y','00001609');
INSERT INTO `arbitman_public_now` VALUES (1358,1539,'Y','00001610');
INSERT INTO `arbitman_public_now` VALUES (1359,1540,'Y','00001611');
INSERT INTO `arbitman_public_now` VALUES (1360,1541,'Y','00001612');
INSERT INTO `arbitman_public_now` VALUES (1361,1542,'Y','00001613');
INSERT INTO `arbitman_public_now` VALUES (1362,1543,'Y','00001614');
INSERT INTO `arbitman_public_now` VALUES (1363,1544,'Y','00001615');
INSERT INTO `arbitman_public_now` VALUES (1364,1545,'Y','00001616');
INSERT INTO `arbitman_public_now` VALUES (1365,1546,'Y','00001617');
INSERT INTO `arbitman_public_now` VALUES (1366,1547,'Y','00001618');
INSERT INTO `arbitman_public_now` VALUES (1367,1548,'Y','00001619');
INSERT INTO `arbitman_public_now` VALUES (1368,1549,'Y','00001620');
INSERT INTO `arbitman_public_now` VALUES (1369,1550,'Y','00001621');
INSERT INTO `arbitman_public_now` VALUES (1370,1551,'Y','00001622');
INSERT INTO `arbitman_public_now` VALUES (1371,1552,'Y','00000490');
INSERT INTO `arbitman_public_now` VALUES (1372,1553,'Y','00001624');
INSERT INTO `arbitman_public_now` VALUES (1373,1554,'Y','00001623');
INSERT INTO `arbitman_public_now` VALUES (1374,1555,'Y','00000024');
INSERT INTO `arbitman_public_now` VALUES (1375,1556,'Y','00001030');
INSERT INTO `arbitman_public_now` VALUES (1376,1557,'Y','00000060');
INSERT INTO `arbitman_public_now` VALUES (1377,1558,'Y','00001048');
INSERT INTO `arbitman_public_now` VALUES (1378,1559,'Y','00001625');
INSERT INTO `arbitman_public_now` VALUES (1379,1560,'Y','00001646');
INSERT INTO `arbitman_public_now` VALUES (1380,1561,'Y','00001647');
INSERT INTO `arbitman_public_now` VALUES (1381,1562,'Y','00001648');
INSERT INTO `arbitman_public_now` VALUES (1382,1563,'Y','00001649');
INSERT INTO `arbitman_public_now` VALUES (1383,1564,'Y','00001650');
INSERT INTO `arbitman_public_now` VALUES (1384,1565,'Y','00001651');
INSERT INTO `arbitman_public_now` VALUES (1385,1566,'Y','00001652');
INSERT INTO `arbitman_public_now` VALUES (1386,1567,'Y','00001653');
INSERT INTO `arbitman_public_now` VALUES (1387,1568,'Y','00001654');
INSERT INTO `arbitman_public_now` VALUES (1388,1569,'Y','00001655');
INSERT INTO `arbitman_public_now` VALUES (1389,1570,'Y','00001656');
INSERT INTO `arbitman_public_now` VALUES (1390,1571,'Y','00001657');
INSERT INTO `arbitman_public_now` VALUES (1391,1572,'Y','00001658');
INSERT INTO `arbitman_public_now` VALUES (1392,1573,'Y','00001659');
INSERT INTO `arbitman_public_now` VALUES (1393,1574,'Y','00001660');
INSERT INTO `arbitman_public_now` VALUES (1394,1575,'Y','00001661');
INSERT INTO `arbitman_public_now` VALUES (1395,1576,'Y','00001662');
INSERT INTO `arbitman_public_now` VALUES (1396,1577,'Y','00001663');
INSERT INTO `arbitman_public_now` VALUES (1397,1578,'Y','00001664');
INSERT INTO `arbitman_public_now` VALUES (1398,1579,'Y','00001665');
INSERT INTO `arbitman_public_now` VALUES (1399,1580,'Y','00001666');
INSERT INTO `arbitman_public_now` VALUES (1400,1581,'Y','00001667');
INSERT INTO `arbitman_public_now` VALUES (1401,1582,'Y','00001668');
INSERT INTO `arbitman_public_now` VALUES (1402,1583,'Y','00001669');
INSERT INTO `arbitman_public_now` VALUES (1403,1584,'Y','00001670');
INSERT INTO `arbitman_public_now` VALUES (1404,1585,'Y','00001671');
INSERT INTO `arbitman_public_now` VALUES (1405,1586,'Y','00001672');
INSERT INTO `arbitman_public_now` VALUES (1406,1587,'Y','00001673');
INSERT INTO `arbitman_public_now` VALUES (1407,1588,'Y','00001674');
INSERT INTO `arbitman_public_now` VALUES (1408,1589,'Y','00001675');
INSERT INTO `arbitman_public_now` VALUES (1409,1590,'Y','00001676');
INSERT INTO `arbitman_public_now` VALUES (1410,1591,'Y','00001677');
INSERT INTO `arbitman_public_now` VALUES (1411,1592,'Y','00001678');
INSERT INTO `arbitman_public_now` VALUES (1412,1593,'Y','00001679');
INSERT INTO `arbitman_public_now` VALUES (1413,1594,'Y','00001680');
INSERT INTO `arbitman_public_now` VALUES (1414,1595,'Y','00001681');
INSERT INTO `arbitman_public_now` VALUES (1415,1596,'Y','00001682');
INSERT INTO `arbitman_public_now` VALUES (1416,1597,'Y','00001683');
INSERT INTO `arbitman_public_now` VALUES (1417,1598,'Y','00001684');
INSERT INTO `arbitman_public_now` VALUES (1418,1599,'Y','00001685');
INSERT INTO `arbitman_public_now` VALUES (1419,1600,'Y','00001686');
INSERT INTO `arbitman_public_now` VALUES (1420,1601,'Y','00001687');
INSERT INTO `arbitman_public_now` VALUES (1421,1602,'Y','00001688');
INSERT INTO `arbitman_public_now` VALUES (1422,1603,'Y','00001689');
INSERT INTO `arbitman_public_now` VALUES (1423,1604,'Y','00001690');
INSERT INTO `arbitman_public_now` VALUES (1424,1605,'Y','00001691');
INSERT INTO `arbitman_public_now` VALUES (1425,1606,'Y','00001692');
INSERT INTO `arbitman_public_now` VALUES (1426,1607,'Y','00001693');
INSERT INTO `arbitman_public_now` VALUES (1427,1608,'Y','00001694');
INSERT INTO `arbitman_public_now` VALUES (1428,1609,'Y','00001695');
INSERT INTO `arbitman_public_now` VALUES (1429,1610,'Y','00001696');
INSERT INTO `arbitman_public_now` VALUES (1430,1611,'Y','00001697');
INSERT INTO `arbitman_public_now` VALUES (1431,1612,'Y','00001698');
INSERT INTO `arbitman_public_now` VALUES (1432,1613,'Y','00001699');
INSERT INTO `arbitman_public_now` VALUES (1433,1614,'Y','00001700');
INSERT INTO `arbitman_public_now` VALUES (1434,1615,'Y','00001701');
INSERT INTO `arbitman_public_now` VALUES (1435,1616,'Y','00001702');
INSERT INTO `arbitman_public_now` VALUES (1436,1617,'Y','00001703');
INSERT INTO `arbitman_public_now` VALUES (1437,1618,'Y','00001704');
INSERT INTO `arbitman_public_now` VALUES (1438,1619,'Y','00001705');
INSERT INTO `arbitman_public_now` VALUES (1439,1620,'Y','00001706');
INSERT INTO `arbitman_public_now` VALUES (1440,1621,'Y','00001707');
INSERT INTO `arbitman_public_now` VALUES (1441,1622,'Y','00001708');
INSERT INTO `arbitman_public_now` VALUES (1442,1623,'Y','00001709');
INSERT INTO `arbitman_public_now` VALUES (1443,1624,'Y','00001710');
INSERT INTO `arbitman_public_now` VALUES (1444,1625,'Y','00001711');
INSERT INTO `arbitman_public_now` VALUES (1445,1626,'Y','00001712');
INSERT INTO `arbitman_public_now` VALUES (1446,1627,'Y','00001713');
INSERT INTO `arbitman_public_now` VALUES (1447,1628,'Y','00001714');
INSERT INTO `arbitman_public_now` VALUES (1448,1629,'Y','00001715');
INSERT INTO `arbitman_public_now` VALUES (1449,1630,'Y','00001716');
INSERT INTO `arbitman_public_now` VALUES (1450,1631,'Y','00001717');
INSERT INTO `arbitman_public_now` VALUES (1451,1632,'Y','00001718');
INSERT INTO `arbitman_public_now` VALUES (1452,1633,'Y','00001719');
INSERT INTO `arbitman_public_now` VALUES (1453,1634,'Y','00001720');
INSERT INTO `arbitman_public_now` VALUES (1454,1635,'Y','00001721');
INSERT INTO `arbitman_public_now` VALUES (1455,1636,'Y','00001722');
INSERT INTO `arbitman_public_now` VALUES (1456,1637,'Y','00001723');
INSERT INTO `arbitman_public_now` VALUES (1457,1638,'Y','00001724');
INSERT INTO `arbitman_public_now` VALUES (1458,1639,'Y','00001725');
INSERT INTO `arbitman_public_now` VALUES (1459,1640,'Y','00001726');
INSERT INTO `arbitman_public_now` VALUES (1460,1641,'Y','00001727');
INSERT INTO `arbitman_public_now` VALUES (1461,1642,'Y','00000217');
INSERT INTO `arbitman_public_now` VALUES (1462,1643,'Y','00000139');
INSERT INTO `arbitman_public_now` VALUES (1463,1645,'Y','00000577');
INSERT INTO `arbitman_public_now` VALUES (1464,1647,'Y','00000629');
INSERT INTO `arbitman_public_now` VALUES (1465,1648,'Y','00001032');
INSERT INTO `arbitman_public_now` VALUES (1466,1649,'Y','a128');

--
-- Table structure for table `attachment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'guid',
  `category` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件类别',
  `up_time` datetime DEFAULT NULL COMMENT '上传时间',
  `file_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件名称',
  `content_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件类型',
  `remark` text COLLATE utf8_unicode_ci COMMENT '备注',
  `ext_file_path` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外网文件路径',
  `ext_file_url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外网url',
  `file_path` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内网文件路径',
  `file_url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内网url',
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='外网附件信息表(用于存放内网确认之前的当事人、仲裁员、案件等附件)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

INSERT INTO `attachment` VALUES (1,'ee29875d-92d4-432a-abb4-a325282df934','1001','2014-08-29 14:52:59','正卷目录D109正卷.doc','application/msword',NULL,'/2014/7/29/14/52/ee29875d-92d4-432a-abb4-a325282df934.doc','/2014/7/29/14/52/ee29875d-92d4-432a-abb4-a325282df934.doc',NULL,NULL,'');
INSERT INTO `attachment` VALUES (2,'c82dffc5-5cb3-4158-b9e6-fc6a7180dad8','1001','2014-09-01 09:36:39','Koala.jpg','image/jpeg',NULL,'/2014/8/1/9/36/c82dffc5-5cb3-4158-b9e6-fc6a7180dad8.jpg','/2014/8/1/9/36/c82dffc5-5cb3-4158-b9e6-fc6a7180dad8.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (3,'ee5a27b1-93f1-445e-8b0d-1117573dbce7','0003','2014-09-01 10:29:22','Lighthouse.jpg','image/pjpeg',NULL,'/2014/8/1/10/29/ee5a27b1-93f1-445e-8b0d-1117573dbce7.jpg','/2014/8/1/10/29/ee5a27b1-93f1-445e-8b0d-1117573dbce7.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (4,'a4c8a25f-40dd-4a53-9f3c-beda5ed08174','1001','2014-09-01 11:03:22','Lighthouse.jpg','image/jpeg',NULL,'/2014/8/1/11/3/a4c8a25f-40dd-4a53-9f3c-beda5ed08174.jpg','/2014/8/1/11/3/a4c8a25f-40dd-4a53-9f3c-beda5ed08174.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (5,'dee3127b-77b4-4b1d-91b9-ae11cfc11ed5','1001','2014-09-02 02:42:21','Desert.jpg','image/jpeg',NULL,'/2014/8/2/14/42/dee3127b-77b4-4b1d-91b9-ae11cfc11ed5.jpg','/2014/8/2/14/42/dee3127b-77b4-4b1d-91b9-ae11cfc11ed5.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (6,'6495192a-f6bd-43a7-9764-53ff77a51d07','0003','2014-09-03 10:45:15','Desert.jpg','image/pjpeg','身份证',NULL,NULL,'/2014/8/3/10/45/6495192a-f6bd-43a7-9764-53ff77a51d07.jpg','/2014/8/3/10/45/6495192a-f6bd-43a7-9764-53ff77a51d07.jpg','');
INSERT INTO `attachment` VALUES (7,'47355cc0-b867-4590-aa7f-1c9313d4e0d5','0001','2014-09-04 03:12:23','Hydrangeas.jpg','image/pjpeg','',NULL,NULL,'/2014/8/4/15/12/47355cc0-b867-4590-aa7f-1c9313d4e0d5.jpg','/2014/8/4/15/12/47355cc0-b867-4590-aa7f-1c9313d4e0d5.jpg','');
INSERT INTO `attachment` VALUES (8,'e5076c15-2241-496e-9c5a-755dfe0bba19','0002','2014-09-04 04:28:38','Tulips.jpg','image/pjpeg','','/2014/8/4/16/28/e5076c15-2241-496e-9c5a-755dfe0bba19.jpg','/2014/8/4/16/28/e5076c15-2241-496e-9c5a-755dfe0bba19.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (9,'f7139bd6-f7d7-4df6-a469-c9966921ddf5','0001','2014-09-04 04:40:21','Desert.jpg','image/pjpeg','','/2014/8/4/16/40/f7139bd6-f7d7-4df6-a469-c9966921ddf5.jpg','/2014/8/4/16/40/f7139bd6-f7d7-4df6-a469-c9966921ddf5.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (10,'5839d9da-546d-4e60-8eeb-23004226d282','0001','2014-09-04 04:47:50','Chrysanthemum.jpg','image/pjpeg','','/2014/8/4/16/47/5839d9da-546d-4e60-8eeb-23004226d282.jpg','/2014/8/4/16/47/5839d9da-546d-4e60-8eeb-23004226d282.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (11,'4a2a3da2-2e70-490b-aecc-a844c09f2f44','0002','2014-09-04 04:48:08','Lighthouse.jpg','image/pjpeg','','/2014/8/4/16/48/4a2a3da2-2e70-490b-aecc-a844c09f2f44.jpg','/2014/8/4/16/48/4a2a3da2-2e70-490b-aecc-a844c09f2f44.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (12,'d8d6f0cf-3575-43a1-b162-55d81d8aecd7','0001','2014-09-05 02:56:55','Desert.jpg','image/pjpeg','','/2014/8/5/14/56/d8d6f0cf-3575-43a1-b162-55d81d8aecd7.jpg','/2014/8/5/14/56/d8d6f0cf-3575-43a1-b162-55d81d8aecd7.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (13,'2f5607ea-75aa-49cb-83fb-60f47c213f41','1001','2014-09-10 10:43:26','新建 文本文档.txt','text/plain',NULL,'/2014/8/10/10/43/2f5607ea-75aa-49cb-83fb-60f47c213f41.txt','/2014/8/10/10/43/2f5607ea-75aa-49cb-83fb-60f47c213f41.txt',NULL,NULL,'');
INSERT INTO `attachment` VALUES (14,'cc0f1e84-a7b2-45f2-8da5-03716e382d42','1001','2014-09-10 04:36:39','空白.doc','application/msword',NULL,'/2014/8/10/16/36/cc0f1e84-a7b2-45f2-8da5-03716e382d42.doc','/2014/8/10/16/36/cc0f1e84-a7b2-45f2-8da5-03716e382d42.doc',NULL,NULL,'');
INSERT INTO `attachment` VALUES (15,'ddb59fcf-8c7c-4526-b2a2-5e08eff78fe6','0001','2014-09-11 09:24:19','空白.doc','application/msword','','/2014/8/11/9/24/ddb59fcf-8c7c-4526-b2a2-5e08eff78fe6.doc','/2014/8/11/9/24/ddb59fcf-8c7c-4526-b2a2-5e08eff78fe6.doc',NULL,NULL,'');
INSERT INTO `attachment` VALUES (16,'23143b9c-4c49-4e88-b4fd-d5b80fc765f9','1001','2014-09-11 10:38:34','QQ截图20140910095547.png','image/x-png',NULL,'/2014/8/11/10/38/23143b9c-4c49-4e88-b4fd-d5b80fc765f9.png','/2014/8/11/10/38/23143b9c-4c49-4e88-b4fd-d5b80fc765f9.png',NULL,NULL,'');
INSERT INTO `attachment` VALUES (17,'584b185f-d34c-4252-bca6-bd926bef2982','1001','2014-09-12 01:46:35','Desert.jpg','image/jpeg',NULL,'/2014/8/12/13/46/584b185f-d34c-4252-bca6-bd926bef2982.jpg','/2014/8/12/13/46/584b185f-d34c-4252-bca6-bd926bef2982.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (18,'df63cb07-f9f6-4670-9f00-0f7f47658015','0001','2014-10-09 10:12:28','服务器配置表.jpg','image/pjpeg','','/2014/9/9/10/12/df63cb07-f9f6-4670-9f00-0f7f47658015.jpg','/2014/9/9/10/12/df63cb07-f9f6-4670-9f00-0f7f47658015.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (19,'2f0b5d3f-3f28-440f-9bc8-3dc478cb67ed','1001','2014-10-09 03:27:33','Lighthouse.jpg','image/jpeg',NULL,'/2014/9/9/15/27/2f0b5d3f-3f28-440f-9bc8-3dc478cb67ed.jpg','/2014/9/9/15/27/2f0b5d3f-3f28-440f-9bc8-3dc478cb67ed.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (20,'6eaabd91-188a-4b0b-8d1c-acb21e8c982a','0001','2014-10-09 03:33:35','Tulips.jpg','image/pjpeg','','/2014/9/9/15/33/6eaabd91-188a-4b0b-8d1c-acb21e8c982a.jpg','/2014/9/9/15/33/6eaabd91-188a-4b0b-8d1c-acb21e8c982a.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (21,'c0d299de-0a39-44b1-b50b-840f6f71936f','1001','2014-10-23 05:31:50','QQ图片20141023115322.jpg','image/pjpeg',NULL,'/2014/9/23/17/31/c0d299de-0a39-44b1-b50b-840f6f71936f.jpg','/2014/9/23/17/31/c0d299de-0a39-44b1-b50b-840f6f71936f.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (22,'58235057-ce1f-47de-a182-eeea493d668a','1001','2014-10-24 10:11:45','Koala.jpg','image/pjpeg',NULL,'/2014/9/24/10/11/58235057-ce1f-47de-a182-eeea493d668a.jpg','/2014/9/24/10/11/58235057-ce1f-47de-a182-eeea493d668a.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (23,'a23da97c-abe6-4470-93cc-8a87b8a55ae2','1001','2014-10-24 11:48:54','Koala.jpg','image/jpeg',NULL,'/2014/9/24/11/48/a23da97c-abe6-4470-93cc-8a87b8a55ae2.jpg','/2014/9/24/11/48/a23da97c-abe6-4470-93cc-8a87b8a55ae2.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (24,'4c406786-65a7-4c79-aa59-acbce3114d59','0001','2014-10-24 03:33:59','Lighthouse.jpg','image/pjpeg','','/2014/9/24/15/33/4c406786-65a7-4c79-aa59-acbce3114d59.jpg','/2014/9/24/15/33/4c406786-65a7-4c79-aa59-acbce3114d59.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (25,'7e0df3c6-8adc-455e-b33a-a0b0f511be86','1001','2014-10-28 09:58:18','21.bmp','image/bmp',NULL,'/2014/9/28/9/58/7e0df3c6-8adc-455e-b33a-a0b0f511be86.bmp','/2014/9/28/9/58/7e0df3c6-8adc-455e-b33a-a0b0f511be86.bmp',NULL,NULL,'');
INSERT INTO `attachment` VALUES (26,'1173bfc4-e5a4-46d6-bf5c-4bbacc005af2','1001','2014-10-28 10:14:34','21.bmp','image/bmp',NULL,'/2014/9/28/10/14/1173bfc4-e5a4-46d6-bf5c-4bbacc005af2.bmp','/2014/9/28/10/14/1173bfc4-e5a4-46d6-bf5c-4bbacc005af2.bmp',NULL,NULL,'');
INSERT INTO `attachment` VALUES (27,'b4e85f4e-b18a-477b-bb24-3c86431f12f9','0002','2014-10-28 10:38:52','环球网.doc','application/msword','','/2014/9/28/10/38/b4e85f4e-b18a-477b-bb24-3c86431f12f9.doc','/2014/9/28/10/38/b4e85f4e-b18a-477b-bb24-3c86431f12f9.doc',NULL,NULL,'');
INSERT INTO `attachment` VALUES (28,'f7e54bce-f647-4fff-a042-c8e5d6f63b02','0003','2014-10-28 11:16:28','1.bmp','image/bmp',NULL,'/2014/9/28/11/16/f7e54bce-f647-4fff-a042-c8e5d6f63b02.bmp','/2014/9/28/11/16/f7e54bce-f647-4fff-a042-c8e5d6f63b02.bmp',NULL,NULL,'');
INSERT INTO `attachment` VALUES (29,'f74ca880-2e59-440d-b49a-cc2b245b25e4','1001','2014-10-30 03:39:23','QQ图片20141023115322.jpg','image/jpeg',NULL,'/2014/9/30/15/39/f74ca880-2e59-440d-b49a-cc2b245b25e4.jpg','/2014/9/30/15/39/f74ca880-2e59-440d-b49a-cc2b245b25e4.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (30,'2a0fbe37-2270-4da4-9597-21b5765ab58b','0002','2014-10-31 11:49:32','QQ图片20141023115322.jpg','image/jpeg','发','/2014/9/31/11/49/2a0fbe37-2270-4da4-9597-21b5765ab58b.jpg','/2014/9/31/11/49/2a0fbe37-2270-4da4-9597-21b5765ab58b.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (31,'adb10d68-d418-4e6b-950d-c350e8564a5b','0003','2014-10-31 11:50:20','华仲外网系统未完成部分20141009.docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document','','/2014/9/31/11/50/adb10d68-d418-4e6b-950d-c350e8564a5b.docx','/2014/9/31/11/50/adb10d68-d418-4e6b-950d-c350e8564a5b.docx',NULL,NULL,'');
INSERT INTO `attachment` VALUES (32,'2d7a2582-991d-4712-a6e7-4915304a1c89','0001','2014-10-31 06:33:09','QQ图片20141008170240.jpg','image/jpeg','ewraer','/2014/9/31/18/33/2d7a2582-991d-4712-a6e7-4915304a1c89.jpg','/2014/9/31/18/33/2d7a2582-991d-4712-a6e7-4915304a1c89.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (33,'744fbb72-e352-4d89-8b65-f6adde5124ab','1001','2014-11-01 03:07:55','QQ图片20141023115322.jpg','image/jpeg',NULL,'/2014/10/1/15/7/744fbb72-e352-4d89-8b65-f6adde5124ab.jpg','/2014/10/1/15/7/744fbb72-e352-4d89-8b65-f6adde5124ab.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (34,'5f8fa933-1f73-4f7e-b876-24c36c5f613e','1001','2014-11-05 02:55:09','QQ图片20141023115322.jpg','image/jpeg',NULL,'/2014/10/5/14/55/5f8fa933-1f73-4f7e-b876-24c36c5f613e.jpg','/2014/10/5/14/55/5f8fa933-1f73-4f7e-b876-24c36c5f613e.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (35,'8a8ccd1a-3811-41c6-a579-37961b92ea5d','0003','2014-11-05 03:07:27','电信申请单.tif','image/tiff','','/2014/10/5/15/7/8a8ccd1a-3811-41c6-a579-37961b92ea5d.tif','/2014/10/5/15/7/8a8ccd1a-3811-41c6-a579-37961b92ea5d.tif',NULL,NULL,'');
INSERT INTO `attachment` VALUES (36,'cdd635e3-ae1b-47b7-bf55-bc873707aac4','1001','2014-11-11 04:28:39','1.txt','text/plain',NULL,'/2014/10/11/16/28/cdd635e3-ae1b-47b7-bf55-bc873707aac4.txt','/2014/10/11/16/28/cdd635e3-ae1b-47b7-bf55-bc873707aac4.txt',NULL,NULL,'');
INSERT INTO `attachment` VALUES (37,'741fa3a8-f0f8-49f0-98e6-6a265f8f1206','0001','2014-11-12 04:33:13','t.txt','text/plain','','/2014/10/12/16/33/741fa3a8-f0f8-49f0-98e6-6a265f8f1206.txt','/2014/10/12/16/33/741fa3a8-f0f8-49f0-98e6-6a265f8f1206.txt',NULL,NULL,'');
INSERT INTO `attachment` VALUES (38,'f43dc01d-ca26-44d4-849e-a9aa7963a044','1001','2014-11-26 09:32:11','Koala.jpg','image/jpeg',NULL,'/2014/10/26/9/32/f43dc01d-ca26-44d4-849e-a9aa7963a044.jpg','/2014/10/26/9/32/f43dc01d-ca26-44d4-849e-a9aa7963a044.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (39,'27c58fdc-2da0-486a-ae66-7d0dbcc860bb','1001','2014-12-04 10:15:23','Koala.jpg','image/jpeg',NULL,'/2014/11/4/10/15/27c58fdc-2da0-486a-ae66-7d0dbcc860bb.jpg','/2014/11/4/10/15/27c58fdc-2da0-486a-ae66-7d0dbcc860bb.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (40,'1232fceb-ff97-4341-88a7-311664e63391','1001','2014-12-08 02:13:46','Chrysanthemum.jpg','image/jpeg',NULL,'/2014/11/8/14/13/1232fceb-ff97-4341-88a7-311664e63391.jpg','/2014/11/8/14/13/1232fceb-ff97-4341-88a7-311664e63391.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (41,'b0baa454-502f-4061-9b29-82e87a5b3481','1001','2014-12-08 04:11:25','Koala.jpg','image/jpeg',NULL,'/2014/11/8/16/11/b0baa454-502f-4061-9b29-82e87a5b3481.jpg','/2014/11/8/16/11/b0baa454-502f-4061-9b29-82e87a5b3481.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (42,'aa119116-bf1b-4d71-9e93-afa92c84b761','1001','2014-12-08 04:11:27','t2.txt','text/plain',NULL,'/2014/11/8/16/11/aa119116-bf1b-4d71-9e93-afa92c84b761.txt','/2014/11/8/16/11/aa119116-bf1b-4d71-9e93-afa92c84b761.txt',NULL,NULL,'');
INSERT INTO `attachment` VALUES (43,'fbd97844-f8ae-42dd-931b-9441e9c57bf6','1001','2014-12-09 08:02:55','Koala.jpg','image/pjpeg',NULL,'/2014/11/9/20/2/fbd97844-f8ae-42dd-931b-9441e9c57bf6.jpg','/2014/11/9/20/2/fbd97844-f8ae-42dd-931b-9441e9c57bf6.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (44,'8fe17c96-7232-4cab-9337-2616a82aad09','1002','2014-12-15 12:30:30','Koala.jpg','image/jpeg',NULL,'/2014/11/15/12/30/8fe17c96-7232-4cab-9337-2616a82aad09.jpg','/2014/11/15/12/30/8fe17c96-7232-4cab-9337-2616a82aad09.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (45,'e6f908a1-0d10-4bfa-b646-463d34cb04e5','1001','2014-12-15 12:32:21','Penguins.jpg','image/pjpeg',NULL,'/2014/11/15/12/32/e6f908a1-0d10-4bfa-b646-463d34cb04e5.jpg','/2014/11/15/12/32/e6f908a1-0d10-4bfa-b646-463d34cb04e5.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (46,'73be0c64-72fe-4e2c-b0cb-e2d308bb670f','0003','2014-12-15 04:58:43','Desert.jpg','image/pjpeg','我省份证，哈哈','/2014/11/15/16/58/73be0c64-72fe-4e2c-b0cb-e2d308bb670f.jpg','/2014/11/15/16/58/73be0c64-72fe-4e2c-b0cb-e2d308bb670f.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (47,'beef62e2-66f2-41d4-b879-523b0fcc8d3a','0003','2014-12-16 09:50:07','Koala.jpg','image/pjpeg',NULL,'/2014/11/16/9/50/beef62e2-66f2-41d4-b879-523b0fcc8d3a.jpg','/2014/11/16/9/50/beef62e2-66f2-41d4-b879-523b0fcc8d3a.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (48,'79d7222d-d89f-4a29-815c-ee28474cf491','0003','2014-12-16 09:55:36','Desert.jpg','image/pjpeg',NULL,'/2014/11/16/9/55/79d7222d-d89f-4a29-815c-ee28474cf491.jpg','/2014/11/16/9/55/79d7222d-d89f-4a29-815c-ee28474cf491.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (49,'2d2ba1eb-289f-4ee1-af2f-f596c5bc6ba3','0003','2014-12-16 10:00:38','Lighthouse.jpg','image/pjpeg',NULL,'/2014/11/16/10/0/2d2ba1eb-289f-4ee1-af2f-f596c5bc6ba3.jpg','/2014/11/16/10/0/2d2ba1eb-289f-4ee1-af2f-f596c5bc6ba3.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (50,'9ef3370d-d94a-4cef-b2e3-74fe17cc4bfc','0001','2014-12-16 05:25:03','QQ图片20141216172439.png','image/png','阿道夫噶','/2014/11/16/17/25/9ef3370d-d94a-4cef-b2e3-74fe17cc4bfc.png','/2014/11/16/17/25/9ef3370d-d94a-4cef-b2e3-74fe17cc4bfc.png',NULL,NULL,'');
INSERT INTO `attachment` VALUES (51,'2d750444-23ec-4e59-912f-77857c59fbe5','0001','2015-01-27 11:43:17','扫描0001.jpg','image/jpeg','','/2015/0/27/11/43/2d750444-23ec-4e59-912f-77857c59fbe5.jpg','/2015/0/27/11/43/2d750444-23ec-4e59-912f-77857c59fbe5.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (52,'2851268a-f957-4a72-8b69-f5d9082bfa45','1001','2015-01-30 10:48:45','张金梅身份证.pdf','application/pdf',NULL,'/2015/0/30/10/48/2851268a-f957-4a72-8b69-f5d9082bfa45.pdf','/2015/0/30/10/48/2851268a-f957-4a72-8b69-f5d9082bfa45.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (53,'8cd8840b-4d8a-4890-bd5b-e342896addd2','0001','2015-01-30 11:23:44','营业执照（副本）2014-10-24.pdf','application/pdf','','/2015/0/30/11/23/8cd8840b-4d8a-4890-bd5b-e342896addd2.pdf','/2015/0/30/11/23/8cd8840b-4d8a-4890-bd5b-e342896addd2.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (54,'4e2e5e70-8113-4047-ad1d-2ee19cae0728','0001','2015-01-30 11:52:48','名称、经营范围变更、章程备案通知书2014-10-24.pdf','application/pdf','','/2015/0/30/11/52/4e2e5e70-8113-4047-ad1d-2ee19cae0728.pdf','/2015/0/30/11/52/4e2e5e70-8113-4047-ad1d-2ee19cae0728.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (55,'e7cbaf33-808e-4d09-b9c4-426babe91d9e','0001','2015-01-30 11:58:16','SZGC组代码副本20121109.pdf','application/pdf','','/2015/0/30/11/58/e7cbaf33-808e-4d09-b9c4-426babe91d9e.pdf','/2015/0/30/11/58/e7cbaf33-808e-4d09-b9c4-426babe91d9e.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (56,'ec3d71e0-2d5f-450d-9632-c6b62c35ef90','0001','2015-01-30 12:03:00','被申请人身份证（汪小松）.pdf','application/pdf','','/2015/0/30/12/3/ec3d71e0-2d5f-450d-9632-c6b62c35ef90.pdf','/2015/0/30/12/3/ec3d71e0-2d5f-450d-9632-c6b62c35ef90.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (57,'020efefd-5b6b-4644-85b8-e24186fdae50','0003','2015-01-30 12:03:55','证据清单及材料（汪小松）.pdf','application/pdf','','/2015/0/30/12/3/020efefd-5b6b-4644-85b8-e24186fdae50.pdf','/2015/0/30/12/3/020efefd-5b6b-4644-85b8-e24186fdae50.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (58,'f5f63b6c-e05e-4d64-912e-30e9e3a6ace2','0001','2015-01-30 04:46:07','深圳捷信一号咨询有限公司营业执照扫描件.pdf','application/pdf','','/2015/0/30/16/46/f5f63b6c-e05e-4d64-912e-30e9e3a6ace2.pdf','/2015/0/30/16/46/f5f63b6c-e05e-4d64-912e-30e9e3a6ace2.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (59,'0d006adb-072b-4575-93e1-f00af5b826cc','0001','2015-01-30 04:46:43','深圳捷信担保有限公司变更为深圳捷信一号咨询有限公司通知书.pdf','application/pdf','','/2015/0/30/16/46/0d006adb-072b-4575-93e1-f00af5b826cc.pdf','/2015/0/30/16/46/0d006adb-072b-4575-93e1-f00af5b826cc.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (60,'1f76b25f-9cc8-4d36-b07b-d518704c4a95','0001','2015-01-30 04:46:55','深圳捷信担保有限公司营业执照扫描件.pdf','application/pdf','','/2015/0/30/16/46/1f76b25f-9cc8-4d36-b07b-d518704c4a95.pdf','/2015/0/30/16/46/1f76b25f-9cc8-4d36-b07b-d518704c4a95.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (61,'1216d9ad-fa62-46ed-b582-e2983a175fec','0003','2015-01-30 04:47:27','代理人张金梅身份证.pdf','application/pdf','','/2015/0/30/16/47/1216d9ad-fa62-46ed-b582-e2983a175fec.pdf','/2015/0/30/16/47/1216d9ad-fa62-46ed-b582-e2983a175fec.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (62,'faaf67b0-2f79-401c-8812-3242165e4833','0003','2015-01-30 04:47:43','被申请人身份证（汪小松）.pdf','application/pdf','','/2015/0/30/16/47/faaf67b0-2f79-401c-8812-3242165e4833.pdf','/2015/0/30/16/47/faaf67b0-2f79-401c-8812-3242165e4833.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (63,'70f85ac9-612b-481f-a6ec-be7a378e3920','0001','2015-02-02 10:04:54','广东捷信融资担保有限公司 营业执照扫描件.pdf','application/pdf','','/2015/1/2/10/4/70f85ac9-612b-481f-a6ec-be7a378e3920.pdf','/2015/1/2/10/4/70f85ac9-612b-481f-a6ec-be7a378e3920.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (64,'5dae8585-7baf-41eb-bb47-027623fb1056','0001','2015-02-02 10:06:41','广东捷信融资担保有限公司 组织机构代码扫描件.pdf','application/pdf','','/2015/1/2/10/6/5dae8585-7baf-41eb-bb47-027623fb1056.pdf','/2015/1/2/10/6/5dae8585-7baf-41eb-bb47-027623fb1056.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (65,'32f3d609-7a9d-4c31-aa04-568b779c4eea','0001','2015-02-02 10:08:18','法定代表人   Rader Bedner护照扫描件.pdf','application/pdf','','/2015/1/2/10/8/32f3d609-7a9d-4c31-aa04-568b779c4eea.pdf','/2015/1/2/10/8/32f3d609-7a9d-4c31-aa04-568b779c4eea.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (66,'50cd6f46-aa02-419d-847d-bdeb5590c470','0003','2015-02-02 10:09:07','代理人张金梅身份证.pdf','application/pdf','','/2015/1/2/10/9/50cd6f46-aa02-419d-847d-bdeb5590c470.pdf','/2015/1/2/10/9/50cd6f46-aa02-419d-847d-bdeb5590c470.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (67,'7861cebb-d95a-46ef-9980-9e4d71fa3c31','0001','2015-02-02 10:09:44','广东捷信融资担保有限公司 营业执照扫描件.pdf','application/pdf','','/2015/1/2/10/9/7861cebb-d95a-46ef-9980-9e4d71fa3c31.pdf','/2015/1/2/10/9/7861cebb-d95a-46ef-9980-9e4d71fa3c31.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (68,'23b642d5-afd4-4969-9ccf-0efd7328c8a7','0001','2015-02-02 10:10:01','广东捷信融资担保有限公司 组织机构代码扫描件.pdf','application/pdf','','/2015/1/2/10/10/23b642d5-afd4-4969-9ccf-0efd7328c8a7.pdf','/2015/1/2/10/10/23b642d5-afd4-4969-9ccf-0efd7328c8a7.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (69,'6352bb5b-5f37-485a-9e0e-6178225d6b18','0001','2015-02-02 10:11:11','法定代表人   Rader Bedner护照扫描件.pdf','application/pdf','','/2015/1/2/10/11/6352bb5b-5f37-485a-9e0e-6178225d6b18.pdf','/2015/1/2/10/11/6352bb5b-5f37-485a-9e0e-6178225d6b18.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (70,'8691bd3e-419d-45ed-a20f-594790afccb3','0003','2015-02-02 10:15:00','代理人张金梅身份证.pdf','application/pdf','','/2015/1/2/10/15/8691bd3e-419d-45ed-a20f-594790afccb3.pdf','/2015/1/2/10/15/8691bd3e-419d-45ed-a20f-594790afccb3.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (71,'50d116c3-dc64-4049-bd3c-6cf6e79369d3','0001','2015-02-02 10:20:55','深圳捷信一号咨询有限公司营业执照扫描件.pdf','application/pdf','','/2015/1/2/10/20/50d116c3-dc64-4049-bd3c-6cf6e79369d3.pdf','/2015/1/2/10/20/50d116c3-dc64-4049-bd3c-6cf6e79369d3.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (72,'09aaf815-4465-47f1-90ef-86777bc7cc0f','0001','2015-02-02 10:47:02','深圳捷信一号咨询有限公司组织机构代码证扫描件.pdf','application/pdf','','/2015/1/2/10/47/09aaf815-4465-47f1-90ef-86777bc7cc0f.pdf','/2015/1/2/10/47/09aaf815-4465-47f1-90ef-86777bc7cc0f.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (73,'bf98377f-acb8-4ce1-8bdd-12c69fbed0a1','0001','2015-02-02 10:59:59','深圳捷信担保有限公司变更为深圳捷信一号咨询有限公司通知书.pdf','application/pdf','','/2015/1/2/10/59/bf98377f-acb8-4ce1-8bdd-12c69fbed0a1.pdf','/2015/1/2/10/59/bf98377f-acb8-4ce1-8bdd-12c69fbed0a1.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (74,'0882b7e8-eb54-4f32-ac0f-9b8b6dd292db','0001','2015-02-02 11:01:32','深圳捷信担保有限公司组织机构代码扫描件.pdf','application/pdf','','/2015/1/2/11/1/0882b7e8-eb54-4f32-ac0f-9b8b6dd292db.pdf','/2015/1/2/11/1/0882b7e8-eb54-4f32-ac0f-9b8b6dd292db.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (75,'0d205668-0891-4cdd-a796-48bd92c08159','0001','2015-02-02 11:02:07','法定代表人Dusan Malota护照扫描件.pdf','application/pdf','','/2015/1/2/11/2/0d205668-0891-4cdd-a796-48bd92c08159.pdf','/2015/1/2/11/2/0d205668-0891-4cdd-a796-48bd92c08159.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (76,'210bf63e-7436-4dfa-8a40-4efef9941ec3','0001','2015-02-02 11:02:54','代理人张金梅身份证.pdf','application/pdf','','/2015/1/2/11/2/210bf63e-7436-4dfa-8a40-4efef9941ec3.pdf','/2015/1/2/11/2/210bf63e-7436-4dfa-8a40-4efef9941ec3.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (77,'96fd4393-7c78-4d9a-bb27-7326b659c4a6','0001','2015-02-02 11:06:09','深圳捷信一号咨询有限公司营业执照扫描件.pdf','application/pdf','','/2015/1/2/11/6/96fd4393-7c78-4d9a-bb27-7326b659c4a6.pdf','/2015/1/2/11/6/96fd4393-7c78-4d9a-bb27-7326b659c4a6.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (78,'df5158f2-001d-40c7-ae2e-1076748894e8','0001','2015-02-02 11:09:43','深圳捷信一号咨询有限公司组织机构代码证扫描件.pdf','application/pdf','','/2015/1/2/11/9/df5158f2-001d-40c7-ae2e-1076748894e8.pdf','/2015/1/2/11/9/df5158f2-001d-40c7-ae2e-1076748894e8.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (79,'2de19b2f-d40b-40a3-a22f-bdcf6c9efe65','0001','2015-02-02 11:10:52','深圳捷信担保有限公司变更为深圳捷信一号咨询有限公司通知书.pdf','application/pdf','','/2015/1/2/11/10/2de19b2f-d40b-40a3-a22f-bdcf6c9efe65.pdf','/2015/1/2/11/10/2de19b2f-d40b-40a3-a22f-bdcf6c9efe65.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (80,'f5c0d1cc-a670-4d8d-92e5-a128e7b0de74','0001','2015-02-02 11:11:08','深圳捷信担保有限公司组织机构代码扫描件.pdf','application/pdf','','/2015/1/2/11/11/f5c0d1cc-a670-4d8d-92e5-a128e7b0de74.pdf','/2015/1/2/11/11/f5c0d1cc-a670-4d8d-92e5-a128e7b0de74.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (81,'3a58f9a6-78b1-419b-9632-a6ea91c872cd','0001','2015-02-02 11:12:04','法定代表人Dusan Malota护照扫描件.pdf','application/pdf','','/2015/1/2/11/12/3a58f9a6-78b1-419b-9632-a6ea91c872cd.pdf','/2015/1/2/11/12/3a58f9a6-78b1-419b-9632-a6ea91c872cd.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (82,'79678edc-8b76-4c7f-91cd-04b15b8492e9','0001','2015-02-02 11:12:17','代理人张金梅身份证.pdf','application/pdf','','/2015/1/2/11/12/79678edc-8b76-4c7f-91cd-04b15b8492e9.pdf','/2015/1/2/11/12/79678edc-8b76-4c7f-91cd-04b15b8492e9.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (83,'3db419ba-73e0-4f11-a903-65d769e5f865','0001','2015-02-02 11:12:55','深圳捷信一号咨询有限公司营业执照扫描件.pdf','application/pdf','','/2015/1/2/11/12/3db419ba-73e0-4f11-a903-65d769e5f865.pdf','/2015/1/2/11/12/3db419ba-73e0-4f11-a903-65d769e5f865.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (84,'ef510ec3-b2bb-4b5c-a85e-c053c394955a','0001','2015-02-02 11:13:12','深圳捷信一号咨询有限公司组织机构代码证扫描件.pdf','application/pdf','','/2015/1/2/11/13/ef510ec3-b2bb-4b5c-a85e-c053c394955a.pdf','/2015/1/2/11/13/ef510ec3-b2bb-4b5c-a85e-c053c394955a.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (85,'2df1d0bb-c072-4d4b-8e3a-e4fa8fb50b79','0001','2015-02-02 11:13:32','深圳捷信担保有限公司变更为深圳捷信一号咨询有限公司通知书.pdf','application/pdf','','/2015/1/2/11/13/2df1d0bb-c072-4d4b-8e3a-e4fa8fb50b79.pdf','/2015/1/2/11/13/2df1d0bb-c072-4d4b-8e3a-e4fa8fb50b79.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (86,'190a6a8f-6420-4122-8b2f-2145895c0f14','0001','2015-02-02 11:13:46','深圳捷信担保有限公司组织机构代码扫描件.pdf','application/pdf','','/2015/1/2/11/13/190a6a8f-6420-4122-8b2f-2145895c0f14.pdf','/2015/1/2/11/13/190a6a8f-6420-4122-8b2f-2145895c0f14.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (87,'0c7c27d4-d4e0-4e9a-a35e-f461e219a8ec','0001','2015-02-02 11:14:03','法定代表人Dusan Malota护照扫描件.pdf','application/pdf','','/2015/1/2/11/14/0c7c27d4-d4e0-4e9a-a35e-f461e219a8ec.pdf','/2015/1/2/11/14/0c7c27d4-d4e0-4e9a-a35e-f461e219a8ec.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (88,'70341649-54e2-4ac7-bbc5-ddc80a1b972c','0001','2015-02-02 11:14:18','代理人张金梅身份证.pdf','application/pdf','','/2015/1/2/11/14/70341649-54e2-4ac7-bbc5-ddc80a1b972c.pdf','/2015/1/2/11/14/70341649-54e2-4ac7-bbc5-ddc80a1b972c.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (89,'319020f7-0876-4ef4-a7a4-a66c5abd024d','0001','2015-02-02 11:15:04','深圳捷信一号咨询有限公司营业执照扫描件.pdf','application/pdf','','/2015/1/2/11/15/319020f7-0876-4ef4-a7a4-a66c5abd024d.pdf','/2015/1/2/11/15/319020f7-0876-4ef4-a7a4-a66c5abd024d.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (90,'793086de-6cdc-4f87-a1d4-3cf7c59a1b90','0001','2015-02-02 11:15:19','深圳捷信一号咨询有限公司组织机构代码证扫描件.pdf','application/pdf','','/2015/1/2/11/15/793086de-6cdc-4f87-a1d4-3cf7c59a1b90.pdf','/2015/1/2/11/15/793086de-6cdc-4f87-a1d4-3cf7c59a1b90.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (91,'97fb72cd-7fac-43a0-9683-3dd9b0777b9f','0001','2015-02-02 11:15:32','深圳捷信担保有限公司变更为深圳捷信一号咨询有限公司通知书.pdf','application/pdf','','/2015/1/2/11/15/97fb72cd-7fac-43a0-9683-3dd9b0777b9f.pdf','/2015/1/2/11/15/97fb72cd-7fac-43a0-9683-3dd9b0777b9f.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (92,'5ae139ea-ed87-4c33-856e-6ab3d9783708','0001','2015-02-02 11:15:57','深圳捷信担保有限公司组织机构代码扫描件.pdf','application/pdf','','/2015/1/2/11/15/5ae139ea-ed87-4c33-856e-6ab3d9783708.pdf','/2015/1/2/11/15/5ae139ea-ed87-4c33-856e-6ab3d9783708.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (93,'f2992e6f-692d-4b77-914d-1f2098094958','0001','2015-02-02 11:16:12','法定代表人Dusan Malota护照扫描件.pdf','application/pdf','','/2015/1/2/11/16/f2992e6f-692d-4b77-914d-1f2098094958.pdf','/2015/1/2/11/16/f2992e6f-692d-4b77-914d-1f2098094958.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (94,'1ea97f63-9e59-430c-9194-05e9750810f7','0001','2015-02-02 11:16:24','代理人张金梅身份证.pdf','application/pdf','','/2015/1/2/11/16/1ea97f63-9e59-430c-9194-05e9750810f7.pdf','/2015/1/2/11/16/1ea97f63-9e59-430c-9194-05e9750810f7.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (95,'7c6d80f5-2726-47bd-8c37-010bb131daba','0001','2015-02-02 11:17:27','法定代表人Dusan Malota护照扫描件.pdf','application/pdf','','/2015/1/2/11/17/7c6d80f5-2726-47bd-8c37-010bb131daba.pdf','/2015/1/2/11/17/7c6d80f5-2726-47bd-8c37-010bb131daba.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (96,'330b9b73-c26f-4091-9c9d-609bc7674c5a','0001','2015-02-02 11:18:15','深圳捷信一号咨询有限公司组织机构代码证扫描件.pdf','application/pdf','','/2015/1/2/11/18/330b9b73-c26f-4091-9c9d-609bc7674c5a.pdf','/2015/1/2/11/18/330b9b73-c26f-4091-9c9d-609bc7674c5a.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (97,'f4bdf4dc-b584-4192-81b5-36937ee2541e','0001','2015-02-02 11:18:55','广东捷信融资担保有限公司 营业执照扫描件.pdf','application/pdf','','/2015/1/2/11/18/f4bdf4dc-b584-4192-81b5-36937ee2541e.pdf','/2015/1/2/11/18/f4bdf4dc-b584-4192-81b5-36937ee2541e.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (98,'bcd0956f-069d-4186-a849-17dfcda37d46','0001','2015-02-02 11:19:06','广东捷信融资担保有限公司 组织机构代码扫描件.pdf','application/pdf','','/2015/1/2/11/19/bcd0956f-069d-4186-a849-17dfcda37d46.pdf','/2015/1/2/11/19/bcd0956f-069d-4186-a849-17dfcda37d46.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (99,'da9a5c0e-fdbd-4cda-a0c9-1ec1efe08d21','0001','2015-02-02 11:19:46','法定代表人   Rader Bedner护照扫描件.pdf','application/pdf','','/2015/1/2/11/19/da9a5c0e-fdbd-4cda-a0c9-1ec1efe08d21.pdf','/2015/1/2/11/19/da9a5c0e-fdbd-4cda-a0c9-1ec1efe08d21.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (100,'d185c929-eb7d-4b92-9e47-fb6542ae15ea','0003','2015-02-02 11:20:02','代理人张金梅身份证.pdf','application/pdf','','/2015/1/2/11/20/d185c929-eb7d-4b92-9e47-fb6542ae15ea.pdf','/2015/1/2/11/20/d185c929-eb7d-4b92-9e47-fb6542ae15ea.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (101,'511bb705-24ed-4d35-8479-7958ed294352','0001','2015-02-02 11:20:24','广东捷信融资担保有限公司 营业执照扫描件.pdf','application/pdf','','/2015/1/2/11/20/511bb705-24ed-4d35-8479-7958ed294352.pdf','/2015/1/2/11/20/511bb705-24ed-4d35-8479-7958ed294352.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (102,'52d9244e-3deb-4c5b-8b91-3efa69fe5628','0001','2015-02-02 11:35:58','深圳捷信一号咨询有限公司营业执照扫描件.pdf','application/pdf','','/2015/1/2/11/35/52d9244e-3deb-4c5b-8b91-3efa69fe5628.pdf','/2015/1/2/11/35/52d9244e-3deb-4c5b-8b91-3efa69fe5628.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (103,'7c22ac31-a681-4732-8680-521282e96879','0001','2015-02-02 11:58:05','广东捷信融资担保有限公司 营业执照扫描件.pdf','application/pdf','','/2015/1/2/11/58/7c22ac31-a681-4732-8680-521282e96879.pdf','/2015/1/2/11/58/7c22ac31-a681-4732-8680-521282e96879.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (104,'e83d813e-debd-4434-a190-15c8be88e4e4','0001','2015-02-02 11:58:20','广东捷信融资担保有限公司 组织机构代码扫描件.pdf','application/pdf','','/2015/1/2/11/58/e83d813e-debd-4434-a190-15c8be88e4e4.pdf','/2015/1/2/11/58/e83d813e-debd-4434-a190-15c8be88e4e4.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (105,'b2afa0af-3052-4a86-9f05-287cba47b4d6','0001','2015-02-02 11:58:36','法定代表人   Rader Bedner护照扫描件.pdf','application/pdf','','/2015/1/2/11/58/b2afa0af-3052-4a86-9f05-287cba47b4d6.pdf','/2015/1/2/11/58/b2afa0af-3052-4a86-9f05-287cba47b4d6.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (106,'6c181e65-e4e6-4185-8a04-9fc19f455234','0001','2015-02-02 11:58:54','代理人张金梅身份证.pdf','application/pdf','','/2015/1/2/11/58/6c181e65-e4e6-4185-8a04-9fc19f455234.pdf','/2015/1/2/11/58/6c181e65-e4e6-4185-8a04-9fc19f455234.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (107,'e87483e7-aa8d-42db-baa7-736e503bdf2f','0003','2015-02-02 12:00:32','被申请人柯道来身份证扫描件.pdf','application/pdf','','/2015/1/2/12/0/e87483e7-aa8d-42db-baa7-736e503bdf2f.pdf','/2015/1/2/12/0/e87483e7-aa8d-42db-baa7-736e503bdf2f.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (108,'77be76ae-330c-4447-a9f3-082d9296547d','0003','2015-02-02 12:01:12','被申请人曾海珠身份证扫描件.pdf','application/pdf','','/2015/1/2/12/1/77be76ae-330c-4447-a9f3-082d9296547d.pdf','/2015/1/2/12/1/77be76ae-330c-4447-a9f3-082d9296547d.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (109,'c00ecd6e-1459-43e8-a321-cc8a6a7fe368','0003','2015-02-02 12:01:46','被申请人许明法身份证扫描件.pdf','application/pdf','','/2015/1/2/12/1/c00ecd6e-1459-43e8-a321-cc8a6a7fe368.pdf','/2015/1/2/12/1/c00ecd6e-1459-43e8-a321-cc8a6a7fe368.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (110,'7b75a8b5-c4c2-4a38-be87-95362b29d78c','0003','2015-02-02 12:03:09','被申请人许明海身份证扫描件.pdf','application/pdf','','/2015/1/2/12/3/7b75a8b5-c4c2-4a38-be87-95362b29d78c.pdf','/2015/1/2/12/3/7b75a8b5-c4c2-4a38-be87-95362b29d78c.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (111,'672a4689-2ec0-4d8e-9f63-d900321e846d','0003','2015-02-02 12:04:32','被申请人肖达一身份证扫描件.pdf','application/pdf','','/2015/1/2/12/4/672a4689-2ec0-4d8e-9f63-d900321e846d.pdf','/2015/1/2/12/4/672a4689-2ec0-4d8e-9f63-d900321e846d.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (112,'bf6132ec-0338-4ff8-ad37-13595f8e3a2b','0001','2015-02-02 12:05:03','广东捷信融资担保有限公司 组织机构代码扫描件.pdf','application/pdf','','/2015/1/2/12/5/bf6132ec-0338-4ff8-ad37-13595f8e3a2b.pdf','/2015/1/2/12/5/bf6132ec-0338-4ff8-ad37-13595f8e3a2b.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (113,'3b7482f0-f073-42df-8b2c-57d9a9a354bc','0001','2015-02-02 12:05:51','法定代表人   Rader Bedner护照扫描件.pdf','application/pdf','','/2015/1/2/12/5/3b7482f0-f073-42df-8b2c-57d9a9a354bc.pdf','/2015/1/2/12/5/3b7482f0-f073-42df-8b2c-57d9a9a354bc.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (114,'2fec8e6a-1df8-4546-bbfb-b570ba43a68d','0003','2015-02-02 12:06:17','代理人张金梅身份证.pdf','application/pdf','','/2015/1/2/12/6/2fec8e6a-1df8-4546-bbfb-b570ba43a68d.pdf','/2015/1/2/12/6/2fec8e6a-1df8-4546-bbfb-b570ba43a68d.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (115,'cc010dc0-ae2c-46dc-81ac-6eca5ccf4500','0003','2015-02-02 12:55:40','被申请人王关强身份证扫描件.pdf','application/pdf','','/2015/1/2/12/55/cc010dc0-ae2c-46dc-81ac-6eca5ccf4500.pdf','/2015/1/2/12/55/cc010dc0-ae2c-46dc-81ac-6eca5ccf4500.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (116,'79f1b010-86b7-48a1-9772-471fc1c91b10','0003','2015-02-02 12:56:54','被申请人唐雄身份证扫描件.pdf','application/pdf','','/2015/1/2/12/56/79f1b010-86b7-48a1-9772-471fc1c91b10.pdf','/2015/1/2/12/56/79f1b010-86b7-48a1-9772-471fc1c91b10.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (117,'5001e404-a7f7-444b-bb08-e02bde3657ea','0003','2015-02-02 12:57:19','被申请人梁昌远身份证扫描件.pdf','application/pdf','','/2015/1/2/12/57/5001e404-a7f7-444b-bb08-e02bde3657ea.pdf','/2015/1/2/12/57/5001e404-a7f7-444b-bb08-e02bde3657ea.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (118,'09bf70c7-f75d-403a-8519-ac81240af8ff','0003','2015-02-02 12:57:41','被申请人张兴涛身份证扫描件.pdf','application/pdf','','/2015/1/2/12/57/09bf70c7-f75d-403a-8519-ac81240af8ff.pdf','/2015/1/2/12/57/09bf70c7-f75d-403a-8519-ac81240af8ff.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (119,'31af3250-6cd8-4736-a5a3-b95f7dcafeee','0001','2015-02-02 05:38:51','深圳捷信一号咨询有限公司营业执照（副本）2015-01-23.pdf','application/pdf','深圳捷信一号咨询有限公司营业执照扫描件','/2015/1/2/17/38/31af3250-6cd8-4736-a5a3-b95f7dcafeee.pdf','/2015/1/2/17/38/31af3250-6cd8-4736-a5a3-b95f7dcafeee.pdf',NULL,NULL,'');
INSERT INTO `attachment` VALUES (120,'a2566a85-7420-4c9e-ae51-6e0e9f79f2c8','1001','2015-02-10 12:18:06','11.jpg','image/jpeg',NULL,'/2015/1/10/12/18/a2566a85-7420-4c9e-ae51-6e0e9f79f2c8.jpg','/2015/1/10/12/18/a2566a85-7420-4c9e-ae51-6e0e9f79f2c8.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (121,'19868ed4-4cf8-4245-81e4-04c1d3f437ba','0201','2015-03-02 11:26:14','Koala.jpg','image/pjpeg','asdsa','/2015/2/2/11/26/19868ed4-4cf8-4245-81e4-04c1d3f437ba.jpg','/2015/2/2/11/26/19868ed4-4cf8-4245-81e4-04c1d3f437ba.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (122,'9164d4b1-f3ce-4a7b-9cff-d052447db7a1','0202','2015-03-02 11:34:44','Lighthouse.jpg','image/pjpeg','sda','/2015/2/2/11/34/9164d4b1-f3ce-4a7b-9cff-d052447db7a1.jpg','/2015/2/2/11/34/9164d4b1-f3ce-4a7b-9cff-d052447db7a1.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (123,'230db0f1-f60e-441f-9946-48198873385a','0203','2015-03-02 11:35:04','Jellyfish.jpg','image/pjpeg','sadsda','/2015/2/2/11/35/230db0f1-f60e-441f-9946-48198873385a.jpg','/2015/2/2/11/35/230db0f1-f60e-441f-9946-48198873385a.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (124,'e8da0a52-0b4e-48ba-8fc2-c80edc50f362','0201','2015-03-02 11:37:18','Penguins.jpg','image/pjpeg','adsfdas','/2015/2/2/11/37/e8da0a52-0b4e-48ba-8fc2-c80edc50f362.jpg','/2015/2/2/11/37/e8da0a52-0b4e-48ba-8fc2-c80edc50f362.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (125,'06cf3f96-ff47-4833-aa15-667a8eaa1a19','0201','2015-03-02 11:38:36','Hydrangeas.jpg','image/pjpeg','asfad','/2015/2/2/11/38/06cf3f96-ff47-4833-aa15-667a8eaa1a19.jpg','/2015/2/2/11/38/06cf3f96-ff47-4833-aa15-667a8eaa1a19.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (126,'00df80f1-fbe0-4f00-957b-26ad4f648aa1','0202','2015-03-02 11:39:44','page-0001.tif','image/tiff','','/2015/2/2/11/39/00df80f1-fbe0-4f00-957b-26ad4f648aa1.tif','/2015/2/2/11/39/00df80f1-fbe0-4f00-957b-26ad4f648aa1.tif',NULL,NULL,'');
INSERT INTO `attachment` VALUES (127,'918130c0-98c0-4133-893a-8a32a640c273','0201','2015-03-02 11:57:06','Koala.jpg','image/pjpeg','xzca','/2015/2/2/11/57/918130c0-98c0-4133-893a-8a32a640c273.jpg','/2015/2/2/11/57/918130c0-98c0-4133-893a-8a32a640c273.jpg',NULL,NULL,'');
INSERT INTO `attachment` VALUES (128,'1c1ada7c-cf8c-4915-833e-9adbfcffaf0c','0201','2015-03-18 10:50:09','仲裁申请书.doc','application/msword','','/2015/2/18/10/50/1c1ada7c-cf8c-4915-833e-9adbfcffaf0c.doc','/2015/2/18/10/50/1c1ada7c-cf8c-4915-833e-9adbfcffaf0c.doc',NULL,NULL,'[申请方 赵越 上传]');
INSERT INTO `attachment` VALUES (129,'fa39f9ab-380b-4a81-8fd3-7742d9d5ea58','0203','2015-03-19 04:09:35','xnsjxjsx.txt','text/plain','','/2015/2/19/16/9/fa39f9ab-380b-4a81-8fd3-7742d9d5ea58.txt','/2015/2/19/16/9/fa39f9ab-380b-4a81-8fd3-7742d9d5ea58.txt',NULL,NULL,'[申请方 董佳豪 上传]');
INSERT INTO `attachment` VALUES (130,'294676fb-3630-4080-b738-c4b6b787921a','0202','2015-03-24 11:31:52','仲裁证据清单.doc','application/msword','','/2015/2/24/11/31/294676fb-3630-4080-b738-c4b6b787921a.doc','/2015/2/24/11/31/294676fb-3630-4080-b738-c4b6b787921a.doc',NULL,NULL,'[申请方 赵越 上传]');
INSERT INTO `attachment` VALUES (131,'de739dc7-f7d0-4667-9e34-884d633af842','0202','2015-06-09 02:39:12','外网立案系统测试.pdf','application/pdf','','/2015/5/9/14/39/de739dc7-f7d0-4667-9e34-884d633af842.pdf','/2015/5/9/14/39/de739dc7-f7d0-4667-9e34-884d633af842.pdf',NULL,NULL,'[申请方  上传]');
INSERT INTO `attachment` VALUES (132,'b34b247c-777b-454c-a63f-d6fabae81756','0202','2015-06-19 11:08:50','03-1.证 据 目 录（华润深圳湾VS正雅公司）.doc','application/octet-stream','','/2015/5/19/11/8/b34b247c-777b-454c-a63f-d6fabae81756.doc','/2015/5/19/11/8/b34b247c-777b-454c-a63f-d6fabae81756.doc',NULL,NULL,'[申请方 廖文静 上传]');
INSERT INTO `attachment` VALUES (133,'fd78df9d-5c15-43d6-bfd2-16f5b673d41a','0201','2015-07-06 04:15:50','2014年8月29日（庭后合议）.html','text/html','','/2015/6/6/16/15/fd78df9d-5c15-43d6-bfd2-16f5b673d41a.html','/2015/6/6/16/15/fd78df9d-5c15-43d6-bfd2-16f5b673d41a.html',NULL,NULL,'[申请方 dd 上传]');
INSERT INTO `attachment` VALUES (134,'cb1c3911-3938-419f-a085-8871d0f0d6f8','0202','2015-07-06 04:17:38','2014年8月29日（庭前合议）.html','text/html','','/2015/6/6/16/17/cb1c3911-3938-419f-a085-8871d0f0d6f8.html','/2015/6/6/16/17/cb1c3911-3938-419f-a085-8871d0f0d6f8.html',NULL,NULL,'[申请方 dd 上传]');
INSERT INTO `attachment` VALUES (135,'67847054-d9cb-41fb-a6b1-3482bac01720','0203','2015-07-06 04:17:51','2014年8月29日（庭后合议）.html','text/html','','/2015/6/6/16/17/67847054-d9cb-41fb-a6b1-3482bac01720.html','/2015/6/6/16/17/67847054-d9cb-41fb-a6b1-3482bac01720.html',NULL,NULL,'[申请方 dd 上传]');
INSERT INTO `attachment` VALUES (136,'e79bc34c-264a-4fcc-b62a-4afefe3f7739','0201','2015-07-06 04:18:01','2014年8月29日（庭前合议）.txt','text/plain','','/2015/6/6/16/18/e79bc34c-264a-4fcc-b62a-4afefe3f7739.txt','/2015/6/6/16/18/e79bc34c-264a-4fcc-b62a-4afefe3f7739.txt',NULL,NULL,'[申请方 dd 上传]');
INSERT INTO `attachment` VALUES (137,'4b3eb002-9897-499e-9083-49e8ca2a8677','0203','2015-07-06 04:18:30','2014年8月29日（庭前合议）.txt','text/plain','','/2015/6/6/16/18/4b3eb002-9897-499e-9083-49e8ca2a8677.txt','/2015/6/6/16/18/4b3eb002-9897-499e-9083-49e8ca2a8677.txt',NULL,NULL,'[申请方 dd 上传]');
INSERT INTO `attachment` VALUES (138,'d4483e86-0440-46ab-ae1a-4c66d98c5da5','0201','2015-07-07 10:29:27','仲裁申请书.doc','application/msword','','/2015/6/7/10/29/d4483e86-0440-46ab-ae1a-4c66d98c5da5.doc','/2015/6/7/10/29/d4483e86-0440-46ab-ae1a-4c66d98c5da5.doc',NULL,NULL,'[申请方 彭艳林 上传]');
INSERT INTO `attachment` VALUES (139,'5e58bc1d-b281-4244-8979-cee4b80937de','0201','2015-07-07 10:30:19','授权委托书.docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document','','/2015/6/7/10/30/5e58bc1d-b281-4244-8979-cee4b80937de.docx','/2015/6/7/10/30/5e58bc1d-b281-4244-8979-cee4b80937de.docx',NULL,NULL,'[申请方 彭艳林 上传]');
INSERT INTO `attachment` VALUES (140,'22e214b6-a6f8-4560-b2f4-1122a3c7f4bf','0203','2015-07-08 10:07:08','销售总合同00003.pdf','application/pdf','','/2015/6/8/10/7/22e214b6-a6f8-4560-b2f4-1122a3c7f4bf.pdf','/2015/6/8/10/7/22e214b6-a6f8-4560-b2f4-1122a3c7f4bf.pdf',NULL,NULL,'[申请方 彭艳林 上传]');
INSERT INTO `attachment` VALUES (141,'21f0b52b-381f-4332-973c-9cc105e0e5e7','0203','2015-07-08 10:22:01','X0D1V04013销售合同.pdf','application/pdf','','/2015/6/8/10/22/21f0b52b-381f-4332-973c-9cc105e0e5e7.pdf','/2015/6/8/10/22/21f0b52b-381f-4332-973c-9cc105e0e5e7.pdf',NULL,NULL,'[申请方 彭艳林 上传]');
INSERT INTO `attachment` VALUES (142,'f8912e9f-11d8-49e2-8b48-8c080d35f85d','0203','2015-07-08 10:22:16','X0D1V04025销售合同.pdf','application/pdf','','/2015/6/8/10/22/f8912e9f-11d8-49e2-8b48-8c080d35f85d.pdf','/2015/6/8/10/22/f8912e9f-11d8-49e2-8b48-8c080d35f85d.pdf',NULL,NULL,'[申请方 彭艳林 上传]');
INSERT INTO `attachment` VALUES (143,'4485b854-2e2d-41f9-888f-0c7aa457b3e6','0203','2015-07-08 10:22:28','X0D1V04055销售合同.pdf','application/pdf','','/2015/6/8/10/22/4485b854-2e2d-41f9-888f-0c7aa457b3e6.pdf','/2015/6/8/10/22/4485b854-2e2d-41f9-888f-0c7aa457b3e6.pdf',NULL,NULL,'[申请方 彭艳林 上传]');
INSERT INTO `attachment` VALUES (144,'08bf0889-2e38-41d6-84f5-f16ce758f136','0203','2015-07-08 10:22:41','X0D1V05007销售合同.pdf','application/pdf','','/2015/6/8/10/22/08bf0889-2e38-41d6-84f5-f16ce758f136.pdf','/2015/6/8/10/22/08bf0889-2e38-41d6-84f5-f16ce758f136.pdf',NULL,NULL,'[申请方 彭艳林 上传]');
INSERT INTO `attachment` VALUES (145,'9f728374-aa36-47fc-9db3-cadf2f1f0152','0203','2015-07-08 10:22:56','X0D1V05009销售合同.pdf','application/pdf','','/2015/6/8/10/22/9f728374-aa36-47fc-9db3-cadf2f1f0152.pdf','/2015/6/8/10/22/9f728374-aa36-47fc-9db3-cadf2f1f0152.pdf',NULL,NULL,'[申请方 彭艳林 上传]');
INSERT INTO `attachment` VALUES (146,'6b8f6a74-76c2-46fe-a1e7-c2e1d590a550','0203','2015-07-08 10:23:07','X0D1V05036销售合同.pdf','application/pdf','','/2015/6/8/10/23/6b8f6a74-76c2-46fe-a1e7-c2e1d590a550.pdf','/2015/6/8/10/23/6b8f6a74-76c2-46fe-a1e7-c2e1d590a550.pdf',NULL,NULL,'[申请方 彭艳林 上传]');
INSERT INTO `attachment` VALUES (147,'f3b445f2-840b-4791-965a-4350a54dd549','0201','2015-07-08 04:27:32','住房公积金业务自助办理服务协议.pdf','application/pdf','','/2015/6/8/16/27/f3b445f2-840b-4791-965a-4350a54dd549.pdf','/2015/6/8/16/27/f3b445f2-840b-4791-965a-4350a54dd549.pdf',NULL,NULL,'[申请方 dsr1 上传]');
INSERT INTO `attachment` VALUES (148,'31ed7a80-28b2-48ff-b743-0419d4dcf095','0201','2015-07-08 04:36:41','住房公积金业务自助办理服务协议.pdf','application/pdf','','/2015/6/8/16/36/31ed7a80-28b2-48ff-b743-0419d4dcf095.pdf','/2015/6/8/16/36/31ed7a80-28b2-48ff-b743-0419d4dcf095.pdf',NULL,NULL,'[申请方 dsr 上传]');
INSERT INTO `attachment` VALUES (149,'01ebc55f-d559-431b-b6b6-2a9fa0f242e9','0202','2015-07-10 10:57:24','systemInfo.png','image/png','','/2015/6/10/10/57/01ebc55f-d559-431b-b6b6-2a9fa0f242e9.png','/2015/6/10/10/57/01ebc55f-d559-431b-b6b6-2a9fa0f242e9.png',NULL,NULL,'[申请方 dsr1 上传]');
INSERT INTO `attachment` VALUES (150,'7e951471-f32a-43ad-ba14-bc749c2012ba','0201','2015-07-10 11:00:28','深圳市华方信息产业有限公司方案.doc','application/msword','','/2015/6/10/11/0/7e951471-f32a-43ad-ba14-bc749c2012ba.doc','/2015/6/10/11/0/7e951471-f32a-43ad-ba14-bc749c2012ba.doc',NULL,NULL,'[申请方 dsr1 上传]');
INSERT INTO `attachment` VALUES (151,'678175b9-908a-43b1-87ac-d7ead1b66631','0201','2015-07-10 11:01:04','内外网系统相关配置信息汇总','application/octet-stream','','/2015/6/10/11/1/678175b9-908a-43b1-87ac-d7ead1b66631','/2015/6/10/11/1/678175b9-908a-43b1-87ac-d7ead1b66631',NULL,NULL,'[申请方 dsr1 上传]');
INSERT INTO `attachment` VALUES (152,'8f898282-494c-4777-97d1-6f80be19eacc','1001','2015-07-14 03:22:42','Koala.jpg','image/pjpeg',NULL,'/2015/6/14/15/22/8f898282-494c-4777-97d1-6f80be19eacc.jpg','/2015/6/14/15/22/8f898282-494c-4777-97d1-6f80be19eacc.jpg',NULL,NULL,NULL);
INSERT INTO `attachment` VALUES (153,'9a8bed01-174d-4f46-8c86-e03bba614fec','1001','2015-07-14 03:23:17','Lighthouse.jpg','image/pjpeg',NULL,'/2015/6/14/15/23/9a8bed01-174d-4f46-8c86-e03bba614fec.jpg','/2015/6/14/15/23/9a8bed01-174d-4f46-8c86-e03bba614fec.jpg',NULL,NULL,NULL);
INSERT INTO `attachment` VALUES (154,'eb13e4ab-d9e5-4536-be86-84e48020b92d','1001','2015-07-14 03:29:14','Desert.jpg','image/pjpeg',NULL,'/2015/6/14/15/29/eb13e4ab-d9e5-4536-be86-84e48020b92d.jpg','/2015/6/14/15/29/eb13e4ab-d9e5-4536-be86-84e48020b92d.jpg',NULL,NULL,NULL);
INSERT INTO `attachment` VALUES (155,'b70e6c71-72db-4677-b20a-b77b81dac72e','1001','2015-07-14 06:19:24','u=1300512617,2882179074&fm=21&gp=0.jpg','image/jpeg',NULL,'/2015/6/14/18/19/b70e6c71-72db-4677-b20a-b77b81dac72e.jpg','/2015/6/14/18/19/b70e6c71-72db-4677-b20a-b77b81dac72e.jpg',NULL,NULL,NULL);
INSERT INTO `attachment` VALUES (156,'1673b79d-61ca-45dc-82ad-c2d1f6f687b7','1002','2015-07-14 06:21:14','Jellyfish.jpg','image/jpeg',NULL,'/2015/6/14/18/21/1673b79d-61ca-45dc-82ad-c2d1f6f687b7.jpg','/2015/6/14/18/21/1673b79d-61ca-45dc-82ad-c2d1f6f687b7.jpg',NULL,NULL,NULL);
INSERT INTO `attachment` VALUES (157,'281f2b22-3353-4ac0-948e-7ca7946487e3','0003','2015-07-14 06:22:41','Tulips.jpg','image/jpeg',NULL,'/2015/6/14/18/22/281f2b22-3353-4ac0-948e-7ca7946487e3.jpg','/2015/6/14/18/22/281f2b22-3353-4ac0-948e-7ca7946487e3.jpg',NULL,NULL,NULL);
INSERT INTO `attachment` VALUES (158,'4339a7d2-22bd-41f7-933a-3dc7fc656968','0003','2015-07-14 06:23:49','Lighthouse.jpg','image/jpeg','','/2015/6/14/18/23/4339a7d2-22bd-41f7-933a-3dc7fc656968.jpg','/2015/6/14/18/23/4339a7d2-22bd-41f7-933a-3dc7fc656968.jpg',NULL,NULL,NULL);
INSERT INTO `attachment` VALUES (159,'a5764e5b-40d2-4bad-84e3-52a4ca801303','1001','2015-07-31 03:54:29','仲裁.jpg','image/pjpeg',NULL,'/2015/6/31/15/54/a5764e5b-40d2-4bad-84e3-52a4ca801303.jpg','/2015/6/31/15/54/a5764e5b-40d2-4bad-84e3-52a4ca801303.jpg',NULL,NULL,NULL);
INSERT INTO `attachment` VALUES (160,'69c96042-73d0-4e5f-8f12-0dc1e7b59689','1001','2015-08-04 04:26:09','u=1300512617,2882179074&fm=21&gp=0.jpg','image/jpeg',NULL,'/2015/7/4/16/26/69c96042-73d0-4e5f-8f12-0dc1e7b59689.jpg','/2015/7/4/16/26/69c96042-73d0-4e5f-8f12-0dc1e7b59689.jpg',NULL,NULL,NULL);

--
-- Table structure for table `attachment_config`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '编码',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '名称',
  `network_dir` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内网的根目录',
  `extranet_dir` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外网的根目录',
  `remark` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='附件信息配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment_config`
--

INSERT INTO `attachment_config` VALUES (1,'0001','证书','/usr/local/zc_att/upload_a','/usr/local/zc_att/upload_1','仲裁员个人证书');
INSERT INTO `attachment_config` VALUES (2,'0002','保密协议','/usr/local/zc_att/upload_b','/usr/local/zc_att/upload_2','仲裁员保密协议');
INSERT INTO `attachment_config` VALUES (3,'0003','身份证复印件(请个人签字)','/usr/local/zc_att/upload_h','/usr/local/zc_att/upload_8','仲裁员身份证复印件(请个人签字)');
INSERT INTO `attachment_config` VALUES (4,'0101','裁决书','/usr/local/zc_att/upload_e','/usr/local/zc_att/upload_5','案件裁决书（仲裁员外网上传）');
INSERT INTO `attachment_config` VALUES (5,'0102','调解书','/usr/local/zc_att/upload_f','/usr/local/zc_att/upload_6','案件调解书（仲裁员外网上传）');
INSERT INTO `attachment_config` VALUES (6,'0103','书面意见','/usr/local/zc_att/upload_g','/usr/local/zc_att/upload_7','书面意见（仲裁员外网上传）');
INSERT INTO `attachment_config` VALUES (7,'1001','身份证','/usr/local/zc_att/upload_c','/usr/local/zc_att/upload_3','当事方身份证');
INSERT INTO `attachment_config` VALUES (8,'1002','律师证','/usr/local/zc_att/upload_d','/usr/local/zc_att/upload_4','当事方律师证');
INSERT INTO `attachment_config` VALUES (9,'0201','申请书','/usr/local/zc_att/upload_0201','/usr/local/zc_att/upload_0201','案件申请的申请书');
INSERT INTO `attachment_config` VALUES (10,'0202','证据清单','/usr/local/zc_att/upload_0202','/usr/local/zc_att/upload_0202','案件申请的证据清单');
INSERT INTO `attachment_config` VALUES (11,'0203','证据内容','/usr/local/zc_att/upload_0203','/usr/local/zc_att/upload_0203','案件申请的证据内容');
INSERT INTO `attachment_config` VALUES (12,'0301','书面意见','/usr/local/zc_att/upload_0301','/usr/local/zc_att/upload_0301','当事方上传在办案件的附件');
INSERT INTO `attachment_config` VALUES (13,'0302','证据材料','/usr/local/zc_att/upload_0302','/usr/local/zc_att/upload_0302','当事方上传在办案件的附件');

--
-- Table structure for table `case_apply_base`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_apply_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '1' COMMENT '状态：0是删除，1未确认，2已确认',
  `apply_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '申请号',
  `recevice_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `casereason` text COLLATE utf8_unicode_ci COMMENT '案由',
  `remark` text COLLATE utf8_unicode_ci COMMENT '备注',
  `runstyle` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '案件执行情况',
  `runremark` text COLLATE utf8_unicode_ci COMMENT '执行情况说明',
  `run_fill_t` datetime DEFAULT NULL COMMENT '运行情况填写时间',
  `u` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户编码',
  `u_t` datetime DEFAULT NULL COMMENT '修改时间',
  `u_typ` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户类别 party 或',
  `create_t` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='案件基本信息（申请件案）; InnoDB free: 350208 kB; InnoDB free: 350208 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_apply_base`
--

INSERT INTO `case_apply_base` VALUES (1,0,'20140829-1',NULL,'《采购合同》','',NULL,NULL,NULL,'a179','2014-08-29 15:12:04','party','2014-08-29 15:12:04');
INSERT INTO `case_apply_base` VALUES (2,1,'20140829-2',NULL,'《煤炭买卖框架合同》','2014--5-26',NULL,NULL,NULL,'a179','2014-08-29 15:31:33','party','2014-08-29 15:13:49');
INSERT INTO `case_apply_base` VALUES (3,1,'20140901-1',NULL,'不爽了','就是不爽',NULL,NULL,NULL,'a180','2014-09-01 09:37:08','party','2014-09-01 09:37:08');
INSERT INTO `case_apply_base` VALUES (4,1,'20140901-2',NULL,'sfd','dsafadsf',NULL,NULL,NULL,'a181','2014-09-01 11:26:12','party','2014-09-01 11:26:12');
INSERT INTO `case_apply_base` VALUES (5,2,'20140902-1','','没理由','不备注',NULL,NULL,NULL,'a182','2014-09-03 12:21:57','party','2014-09-02 04:16:44');
INSERT INTO `case_apply_base` VALUES (6,0,'20140903-1','','的算法第三方','圣达菲',NULL,NULL,NULL,'a182','2014-09-03 02:54:44','party','2014-09-03 02:54:44');
INSERT INTO `case_apply_base` VALUES (7,2,'20140903-2','','分导师工读生发给','高富帅都刚',NULL,NULL,NULL,'a182','2014-09-03 06:21:44','party','2014-09-03 06:21:44');
INSERT INTO `case_apply_base` VALUES (8,2,'20140910-1','','合同编号为业16F的《中港城商品房产买卖合同》\r\n','',NULL,NULL,NULL,'a184','2014-09-10 04:44:22','party','2014-09-10 04:44:22');
INSERT INTO `case_apply_base` VALUES (9,2,'20140911-1','','申请人与被申请人','申请人、被申请人',NULL,NULL,NULL,'a185','2014-09-11 11:40:44','party','2014-09-11 11:40:33');
INSERT INTO `case_apply_base` VALUES (10,2,'20140911-2','','货款纠纷','货物买卖纠纷',NULL,NULL,NULL,'a185','2014-09-11 03:47:56','party','2014-09-11 03:03:50');
INSERT INTO `case_apply_base` VALUES (11,1,'20140911-3','','案由案由案由案由','备注备注备注备注',NULL,NULL,NULL,'a182','2014-09-11 05:37:50','party','2014-09-11 05:37:50');
INSERT INTO `case_apply_base` VALUES (12,1,'20140911-4','','df','dasfadsf',NULL,NULL,NULL,'a182','2014-09-11 06:22:11','party','2014-09-11 06:22:11');
INSERT INTO `case_apply_base` VALUES (13,1,'20140911-5','','dfa','fasfa',NULL,NULL,NULL,'a182','2014-09-11 06:43:30','party','2014-09-11 06:43:30');
INSERT INTO `case_apply_base` VALUES (14,0,'20140912-1','','xsxsjs20140912','货款纠纷',NULL,NULL,NULL,'a185','2014-09-12 10:39:15','party','2014-09-12 10:39:15');
INSERT INTO `case_apply_base` VALUES (15,2,'20141009-1','','案由案由案由','备注备注备注备注备注备注',NULL,NULL,NULL,'a187','2014-10-09 03:30:10','party','2014-10-09 03:30:10');
INSERT INTO `case_apply_base` VALUES (16,1,'20141009-2','','dasf','dasdfas',NULL,NULL,NULL,'lizhi','2014-10-09 04:13:30','assistant','2014-10-09 04:13:30');
INSERT INTO `case_apply_base` VALUES (17,1,'20141024-1','','','',NULL,NULL,NULL,'a188','2014-10-24 09:19:45','party','2014-10-24 09:19:45');
INSERT INTO `case_apply_base` VALUES (18,2,'20141024-2','','合同编号：城23D的争议','',NULL,NULL,NULL,'a189','2014-10-24 11:19:13','party','2014-10-24 10:19:29');
INSERT INTO `case_apply_base` VALUES (19,1,'20141024-3','','小李子','罚站',NULL,NULL,NULL,'a190','2014-10-24 02:24:57','party','2014-10-24 02:24:57');
INSERT INTO `case_apply_base` VALUES (20,0,'20141028-1','','下进地蟛','',NULL,NULL,NULL,'a192','2014-10-28 10:19:06','party','2014-10-28 10:19:06');
INSERT INTO `case_apply_base` VALUES (21,1,'20141028-2','','经济纠纷','',NULL,NULL,NULL,'a192','2014-10-28 10:39:10','party','2014-10-28 10:27:11');
INSERT INTO `case_apply_base` VALUES (22,2,'20141031-1','','经济纠纷','经济纠纷',NULL,NULL,NULL,'a193','2014-10-31 11:19:55','party','2014-10-31 11:19:55');
INSERT INTO `case_apply_base` VALUES (23,2,'20141105-1','','经济纠纷，','经济纠纷',NULL,NULL,NULL,'a196','2014-11-05 03:05:03','party','2014-11-05 03:05:03');
INSERT INTO `case_apply_base` VALUES (24,1,'20141111-1','','dfd','fdf',NULL,NULL,NULL,'a197','2014-11-11 04:28:46','party','2014-11-11 04:28:46');
INSERT INTO `case_apply_base` VALUES (25,1,'20141112-1','','111','111',NULL,NULL,NULL,'a196','2014-11-12 04:31:33','party','2014-11-12 04:31:33');
INSERT INTO `case_apply_base` VALUES (26,1,'20141208-1','','aaa','bbbbb',NULL,NULL,NULL,'lizhi800','2014-12-08 04:15:17','party','2014-12-08 04:15:17');
INSERT INTO `case_apply_base` VALUES (27,1,'20141208-2','','fggh','',NULL,NULL,NULL,'abc1','2014-12-08 04:16:19','party','2014-12-08 04:16:19');
INSERT INTO `case_apply_base` VALUES (28,1,'20141209-1','','','',NULL,NULL,NULL,'todaypresent1','2014-12-09 08:03:43','party','2014-12-09 08:03:43');
INSERT INTO `case_apply_base` VALUES (29,1,'20141209-2','','例：编号为XX22X的《YY合同》','',NULL,NULL,NULL,'todaypresent1','2014-12-09 08:09:26','party','2014-12-09 08:09:26');
INSERT INTO `case_apply_base` VALUES (30,2,'20141215-1','','测试案由','测试备注',NULL,NULL,NULL,'cheshi0001','2014-12-15 02:45:52','party','2014-12-15 02:45:52');
INSERT INTO `case_apply_base` VALUES (31,0,'20141215-2','','案由案由案由案由案由','备注备注备注备注备注备注',NULL,NULL,NULL,'cheshi0001','2014-12-15 04:59:49','party','2014-12-15 04:59:49');
INSERT INTO `case_apply_base` VALUES (32,2,'20141216-1','','欠款','归还欠款',NULL,NULL,NULL,'wanghaipinping','2014-12-19 12:08:02','party','2014-12-16 05:21:29');
INSERT INTO `case_apply_base` VALUES (33,2,'20141217-1','','《租赁合同》','第三项请求包含第一项请求',NULL,NULL,NULL,'amy_wang7','2014-12-17 03:17:47','party','2014-12-17 03:17:47');
INSERT INTO `case_apply_base` VALUES (34,2,'20141217-2','','《采购框架》合同','1.当事人申请财产保全,保全费用未明确,待明确后补缴仲裁费用\r\n2.约定仲裁机构是旧条款华南分会',NULL,NULL,NULL,'todaypresent','2014-12-17 03:50:13','party','2014-12-17 03:50:13');
INSERT INTO `case_apply_base` VALUES (35,2,'20141226-1','','编号为JK78211209014的《流动资金贷款合同》、《保证合同》、《抵押合同》、《质押合同》及《应收账款质押登记协议》','2012-12-17',NULL,NULL,NULL,'linxiao','2014-12-26 04:10:00','party','2014-12-26 03:56:39');
INSERT INTO `case_apply_base` VALUES (36,2,'20141230-1','','《中外合作经营企业广州市金恒房地产开发有限公司》','',NULL,NULL,NULL,'linxiao','2014-12-30 02:33:31','party','2014-12-30 02:25:32');
INSERT INTO `case_apply_base` VALUES (37,1,'20150108-1','','','',NULL,NULL,NULL,'qq','2015-01-08 04:32:54','party','2015-01-08 04:32:54');
INSERT INTO `case_apply_base` VALUES (38,2,'20150109-1','','合同编号为H201400188的《销货合同》','',NULL,NULL,NULL,'linxiao','2015-01-09 03:57:15','party','2015-01-09 03:08:57');
INSERT INTO `case_apply_base` VALUES (39,1,'20150114-1','','《借款及担保合同》','',NULL,NULL,NULL,'MCT_791213','2015-01-14 11:05:23','party','2015-01-14 11:05:23');
INSERT INTO `case_apply_base` VALUES (40,2,'20150115-1','','合同编号为XSXS20101212-36-04的《合伙协议》','',NULL,NULL,NULL,'北京市东元（深圳）律师事务所','2015-01-15 10:02:03','party','2015-01-15 10:00:07');
INSERT INTO `case_apply_base` VALUES (41,1,'20150119-1','','<房屋买卖合同>','',NULL,NULL,NULL,'xuduo','2015-01-19 04:48:04','party','2015-01-19 04:48:04');
INSERT INTO `case_apply_base` VALUES (42,1,'20150121-1','','1111','',NULL,NULL,NULL,'testvk','2015-01-21 03:08:09','party','2015-01-21 03:08:09');
INSERT INTO `case_apply_base` VALUES (43,1,'20150127-1','','NO.2114206《移动顶告服务购买合同》','',NULL,NULL,NULL,'ajing_wu','2015-01-27 10:04:39','party','2015-01-27 10:04:39');
INSERT INTO `case_apply_base` VALUES (44,2,'20150127-2','','2015.01.27','仲裁',NULL,NULL,NULL,'wanghaipinping','2015-01-27 11:30:13','party','2015-01-27 11:27:49');
INSERT INTO `case_apply_base` VALUES (45,2,'20150127-3','','赔款','',NULL,NULL,NULL,'wanghaipinping','2015-01-27 11:43:23','party','2015-01-27 11:38:40');
INSERT INTO `case_apply_base` VALUES (46,0,'20150127-4','','合同','   ',NULL,NULL,NULL,'wanghaipinping','2015-01-27 03:24:40','party','2015-01-27 03:24:40');
INSERT INTO `case_apply_base` VALUES (47,2,'20150128-1','','合同编号为XSXS20101212-36-24的《合伙协议》 ','',NULL,NULL,NULL,'北京市东元（深圳）律师事务所','2015-01-28 10:36:38','party','2015-01-28 10:13:07');
INSERT INTO `case_apply_base` VALUES (48,0,'20150128-2','','fa','afa',NULL,NULL,NULL,'wanghaipinping','2015-01-28 05:41:14','party','2015-01-28 05:41:14');
INSERT INTO `case_apply_base` VALUES (49,0,'20150128-3','','gs','fsg ',NULL,NULL,NULL,'wanghaipinping','2015-01-28 05:42:45','party','2015-01-28 05:42:45');
INSERT INTO `case_apply_base` VALUES (50,2,'20150130-1','','合同编号为2014080160的《委托代理进口协议》','2014.12.28',NULL,NULL,NULL,'ycjn21','2015-01-30 10:28:15','party','2015-01-30 10:16:26');
INSERT INTO `case_apply_base` VALUES (51,0,'20150130-2','','3411423930《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 12:06:38','party','2015-01-30 10:52:57');
INSERT INTO `case_apply_base` VALUES (52,2,'20150130-3','','3411423930《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:59:08','party','2015-01-30 01:16:13');
INSERT INTO `case_apply_base` VALUES (53,2,'20150130-4','','3412274285《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 11:16:38','party','2015-01-30 02:21:02');
INSERT INTO `case_apply_base` VALUES (54,2,'20150130-5','','3413632466《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:33:12','party','2015-01-30 02:32:54');
INSERT INTO `case_apply_base` VALUES (55,2,'20150130-6','','3414719915《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 02:42:35','party','2015-01-30 02:39:57');
INSERT INTO `case_apply_base` VALUES (56,2,'20150130-7','','3415917639《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 12:06:49','party','2015-01-30 02:50:11');
INSERT INTO `case_apply_base` VALUES (57,2,'20150130-8','','3417541228《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 10:18:44','party','2015-01-30 03:09:12');
INSERT INTO `case_apply_base` VALUES (58,2,'20150130-9','','3418563964《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 10:05:00','party','2015-01-30 03:34:45');
INSERT INTO `case_apply_base` VALUES (59,0,'20150130-10','','3417960614《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 10:02:15','party','2015-01-30 03:51:05');
INSERT INTO `case_apply_base` VALUES (60,2,'20150130-11','','3418554878《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 04:11:02','party','2015-01-30 04:03:51');
INSERT INTO `case_apply_base` VALUES (61,2,'20150130-12','','3418082934《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 11:20:07','party','2015-01-30 04:11:52');
INSERT INTO `case_apply_base` VALUES (62,2,'20150130-13','','efa','fa',NULL,NULL,NULL,'wanghaipinping','2015-01-30 05:25:23','party','2015-01-30 05:25:23');
INSERT INTO `case_apply_base` VALUES (63,2,'20150202-1','','3417960614《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 11:49:50','party','2015-02-02 11:49:50');
INSERT INTO `case_apply_base` VALUES (64,2,'20150202-2','','房屋租赁合同及租赁合同补充条款','（2015）深罗法民三初字第317号民事裁定书（管辖权异议）',NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:15:58','party','2015-02-02 03:14:42');
INSERT INTO `case_apply_base` VALUES (65,2,'20150202-3','','合同编号为00.013.242的《设备购销合同》','2012年11月1日',NULL,NULL,NULL,'xierongqiang','2015-02-02 03:37:39','party','2015-02-02 03:30:10');
INSERT INTO `case_apply_base` VALUES (66,2,'20150202-4','','《房屋租赁合同》及《写字楼租赁合同补充条款》','（2015）深罗法民三初字第317号《民事裁定书》（管辖权异议）',NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:41:44','party','2015-02-02 03:41:44');
INSERT INTO `case_apply_base` VALUES (67,2,'20150202-5','','《住宅物业租赁合同》','',NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:47:14','party','2015-02-02 03:47:14');
INSERT INTO `case_apply_base` VALUES (68,2,'20150202-6','','3411677953《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 05:12:29','party','2015-02-02 05:12:29');
INSERT INTO `case_apply_base` VALUES (69,2,'20150203-1','','3414030237《消费信贷合同》','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 10:52:36','party','2015-02-03 10:52:36');
INSERT INTO `case_apply_base` VALUES (70,2,'20150203-2','','3414045010《消费信贷合同》\r\n','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:16:15','party','2015-02-03 11:16:15');
INSERT INTO `case_apply_base` VALUES (71,2,'20150203-3','','3414783704《消费信贷合同》 \r\n\r\n','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:27:02','party','2015-02-03 11:27:02');
INSERT INTO `case_apply_base` VALUES (72,1,'20150203-4','','3417693160《消费信贷合同》 \r\n\r\n','',NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:35:25','party','2015-02-03 11:35:25');
INSERT INTO `case_apply_base` VALUES (73,0,'20150203-5','','','',NULL,NULL,NULL,'广东泽康律师事务所','2015-02-03 04:47:57','party','2015-02-03 04:47:57');
INSERT INTO `case_apply_base` VALUES (74,2,'20150203-6','','合同编号为FSSHN05#10133-04-01401《合同书》及合同编号为10133-014-0504的《四方协议》','2015.05.14',NULL,NULL,NULL,'yoyosee123','2015-02-03 05:20:43','party','2015-02-03 05:09:35');
INSERT INTO `case_apply_base` VALUES (75,2,'20150204-1','','<深圳市房地产买卖合同(预售)>,备案编号为深(罗)网预买字(2014)4145号等26份合同','双方已签订和解协议',NULL,NULL,NULL,'linxiajuan','2015-02-04 10:13:14','party','2015-02-04 09:55:10');
INSERT INTO `case_apply_base` VALUES (76,2,'20150204-2','','根据2015年1月29日签署的《协议》第九条申请','适用简易程序独任仲裁',NULL,NULL,NULL,'lipeiran','2015-02-04 10:40:07','party','2015-02-04 10:14:50');
INSERT INTO `case_apply_base` VALUES (77,1,'20150204-3','','编号为《12345》的示范合同','双方约定使用新条款',NULL,NULL,NULL,'todaypresent1','2015-02-04 03:32:45','party','2015-02-04 03:32:45');
INSERT INTO `case_apply_base` VALUES (78,2,'20150204-4','','2014001《固定资产采购合约》','仲裁地在深圳。',NULL,NULL,NULL,'chchkf','2015-02-04 04:25:33','party','2015-02-04 04:03:54');
INSERT INTO `case_apply_base` VALUES (79,2,'20150205-1','','','',NULL,NULL,NULL,'广东泽康律师事务所','2015-02-05 02:21:10','party','2015-02-05 09:08:24');
INSERT INTO `case_apply_base` VALUES (80,2,'20150206-1','','合同编号为（2013）雅专字第（2012）号','',NULL,NULL,NULL,'zhaojun','2015-02-06 10:48:38','party','2015-02-06 10:41:11');
INSERT INTO `case_apply_base` VALUES (81,0,'20150207-1','','','',NULL,NULL,NULL,'guqianqiu','2015-02-07 09:26:58','party','2015-02-07 09:26:58');
INSERT INTO `case_apply_base` VALUES (82,2,'20150210-1','','','',NULL,NULL,NULL,'arlin','2015-02-10 11:10:13','party','2015-02-10 10:54:08');
INSERT INTO `case_apply_base` VALUES (83,2,'20150210-2','','仲裁申请书\r\n\r\n申  请  人：空气化工产品（广州）有限公司\r\n法定代表人：LINDA MARIE SVOBODA 董事长\r\n住      所：广州经济技术开发区东区骏达路10\r\n\r\n被申 请 人：清远市清城区远达电子器材厂\r\n法定代表人： 沈兴波\r\n住      所：广东省清远市清城区横荷新城西E46号区旺达制衣厂内\r\n\r\n提交仲裁依据：\r\n\r\n    根据申请人和被申请人签订的合同生效日2012年11月27日《快易冷气体供应服务合同》第12条仲裁条款约定 ：“双方因本合同产生的未能解决的争议，应仅提交中国国际经济贸易仲裁委员会华南分会，根据该仲裁委员会的规规则和程序最终解决。” \r\n\r\n仲裁请求事项：\r\n  \r\n1．要求被申请人立即支付欠款人民币146849.86元（其中：月度服务费自2014年6月-2014年10月；共计人民币15000元和货款人民币131849.86元）；\r\n2  要求被申请人归还所有权属于申请人氮气储罐设备1套和氧气储罐设备1套（包括规格3000LVHP；产品编号：PC3000VHPGBCS1131-05  ；资产编号：CN-3000VHP0260的储罐一只；规格450L,产品编号： NCTE11V02042，资产编号：CN-C455HP0094的储罐一只。不锈钢管20米；铜管20米，不锈钢活接12个，不锈钢球阀 1个，铜球阀1个）价值人民币178974.62元；\r\n3．要求被申请人按合同规定承担整个合同首期剩余期间内（合同约定的首期是，自2012年11月27日起至2017年11月27日，2014年10月21日合同解除，剩余37个月的全部储罐系统月度服务费111000元；\r\n\r\n4．要求被申请人支付储罐系统安装和拆除费用人民币15000 元； \r\n5. 要求被申请人补偿申请人因为仲裁而支出的律师费人民币31109元和出差费用人民币4000元（暂估，以最后提交出差凭证为准）；\r\n\r\n6. 要求被申请人承担全部仲裁费用。\r\n\r\n事实和理由：\r\n\r\n2012年11月27日，申请人和被申请人签订了《快易冷气体供应服务合同》一份，由被申请人向申请人购买氮气和氧气产品，其中氮气和氧气储罐系统各1套由申请人提供，双方约定了储罐系统每月服务费和产品单价。合同首期期限为5年，并且约定了违约赔偿等条款（附件一）\r\n\r\n合同签订后，申请人按照合同规定，向被申请人提供氮气和氧气储罐系统各1套并且安装在被申请人的指定区域开始向被申请人提供产品（附件二）。但是自2014年7月开始，被申请人开始拒绝履行双方约定的最低购买量，使用第三方产品并且拖欠款项共计人民币146849.86元（附件三），之后，申请人委托律师发函进行催讨并告知继续违约的后果（附件四），但是被申请人拒绝付款使得申请人无法实现合同目的。2014年10月21日，申请人向被申请人发出解除合同通知书（附件五），但是被申请人仍然拒绝付款和归还储罐设备。\r\n\r\n申请人认为，申请人和被申请人之间所签订的合同，系双方真实意思的表示，合法有效，双方理应按合同的约定履行。由于被申请人自身的违约行为导致合同被提前提终止的责任在被申请人。因此，要求被申请人承担付款义务和拆除费用及按照合同约定赔偿金外，还应该按照仲裁规则的规定，承担因仲裁而使申请人支出的律师费和出差费用（附件六）的补偿责任。申请人为保护自身的合法权益不受侵犯，依据与被申请人所签订的合同中仲裁条款的规定，向贵会提出仲裁。请求贵会支持申请人的仲裁请求事项。\r\n\r\n华南国际经济贸易仲裁委员会\r\n\r\n申请人：空气化工产品（广州）有限公司\r\n                         \r\n                                      2015年2月 15日\r\n附件：详见《证据清单》\r\n','',NULL,NULL,NULL,'chunqiang_0404','2015-02-15 12:34:42','party','2015-02-10 12:21:21');
INSERT INTO `case_apply_base` VALUES (84,2,'20150210-3','','YY-C094B001C《设备供应合同书》','',NULL,NULL,NULL,'smiles','2015-02-10 03:51:26','party','2015-02-10 03:26:36');
INSERT INTO `case_apply_base` VALUES (85,2,'20150210-4','','《内蒙古奈伦农业科技股份有限公司2012 年中小企业私募债券募集说明书》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券担保函》、佑瑞持20141128-1《债权转让确认书》、《债权转让确认书》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议》、《土地他项权证书》、《股权出质设立登记通知书》、《房产整体转让协议》、《委托代理合同》、《律师服务费发票》','',NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:45:09','party','2015-02-10 06:09:19');
INSERT INTO `case_apply_base` VALUES (86,2,'20150210-5','','《内蒙古奈伦农业科技股份有限公司2012 年中小企业私募债券募集说明书》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券担保函》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券持有人的确认说明》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议》、《土地他项权证书》、《股权出质设立登记通知书》、《房产整体转让协议》、《委托代理合同》、《律师服务费发票》','',NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:55:25','party','2015-02-10 06:55:25');
INSERT INTO `case_apply_base` VALUES (87,2,'20150210-6','','《内蒙古奈伦农业科技股份有限公司2012 年中小企业私募债券募集说明书》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券担保函》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券认购协议》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议》、《土地他项权证书》、《股权出质设立登记通知书》、《房产整体转让协议》、《委托代理合同》、《律师服务费发票》','',NULL,NULL,NULL,'liruizhi0755','2015-03-02 04:44:15','party','2015-02-10 07:26:55');
INSERT INTO `case_apply_base` VALUES (88,2,'20150212-1','','','',NULL,NULL,NULL,'chowfang','2015-02-12 03:27:49','party','2015-02-12 03:08:43');
INSERT INTO `case_apply_base` VALUES (89,2,'20150212-2','','合同编号为沃信股转字0001号的《股权转让协议书》','2012-06-21',NULL,NULL,NULL,'menglijia','2015-02-12 04:26:41','party','2015-02-12 04:18:14');
INSERT INTO `case_apply_base` VALUES (90,2,'20150213-1','','','',NULL,NULL,NULL,'huangguiyong','2015-02-13 12:16:28','party','2015-02-13 12:00:30');
INSERT INTO `case_apply_base` VALUES (91,2,'20150214-1','','《内蒙古奈伦农业科技股份有限公司2012 年中小企业私募债券募集说明书》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券担保函》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券持有人的确认说明》及第一被申请人的确认回函》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券持有人的确认说明》及第一被申请人的确认回函、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议》、《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议》、《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议》、《土地他项权证书》、《股权出质设立登记通知书》、《房产整体转让协议》、《委托代理合同》','',NULL,NULL,NULL,'liruizhi0755','2015-02-14 04:48:05','party','2015-02-14 04:48:05');
INSERT INTO `case_apply_base` VALUES (92,2,'20150215-1','','TRB02-20140102号《企业资产收益权转让与回购协议》','',NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:21:18','party','2015-02-15 01:53:06');
INSERT INTO `case_apply_base` VALUES (93,2,'20150215-2','','TRB05-20140216-X号《企业资产收益权转让与回购协议》','',NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:19:38','party','2015-02-15 02:08:12');
INSERT INTO `case_apply_base` VALUES (94,2,'20150301-1','','李剑波、陈佩仪、于建平、顾千秋、王利杰、上海镭厉科技创业投资中心（有限合伙）、深圳市光启松禾超材料创业投资合伙企业、上海吾游信息技术有限公司等八方签订了关于上海吾游信息技术有限公司之增资扩股协议书（附件1）中第二十条第二款约定：本协议各方因本协议引起的或与本协议有关的任何争议，均应首先通过友好协商解决，协商不成的，任一方均应将争议提交华南国际经济贸易仲裁委员（会），按照申请仲裁时该会事实的仲裁规则进行仲裁。仲裁裁决是终局的，对各方具有约束力。','',NULL,NULL,NULL,'guqianqiu','2015-03-01 12:12:12','party','2015-03-01 12:12:12');
INSERT INTO `case_apply_base` VALUES (95,1,'20150304-1','','YY-C094B001C《设备供应合同书》','此案已于2015年2月10日提起仲裁，现需作如下变更：\r\n1、仲裁请求第二项变更为：裁决被申请人向申请人支付违约金69.8万元；\r\n2、新增证据材料（见证据清单证据三，其他不变）\r\n\r\n',NULL,NULL,NULL,'smiles','2015-03-04 08:06:36','party','2015-03-04 07:51:07');
INSERT INTO `case_apply_base` VALUES (96,2,'20150305-1','','深圳中南海滨大酒店有限公司之实际控制人陈祝新、深圳市中南酒店管理有限公司与上海境泽股权投资基金合伙企业（有限合伙）关于深圳中南海滨大酒店有限公司之股权回购协议书','',NULL,NULL,NULL,'wxj2520068','2015-03-05 03:18:30','party','2015-03-05 03:18:30');
INSERT INTO `case_apply_base` VALUES (97,0,'20150306-1','','dsa','sda',NULL,NULL,NULL,'linxiao','2015-03-06 09:25:48','party','2015-03-06 09:25:48');
INSERT INTO `case_apply_base` VALUES (98,0,'20150306-2','','','',NULL,NULL,NULL,'ymchen','2015-03-06 11:31:09','assistant','2015-03-06 11:31:09');
INSERT INTO `case_apply_base` VALUES (99,1,'20150309-1','','房屋租赁合同','租客无理要求租约未规定事项，并对业主威胁。',NULL,NULL,NULL,'tig_ho','2015-03-09 09:32:09','party','2015-03-09 09:32:09');
INSERT INTO `case_apply_base` VALUES (100,1,'20150311-1','','<深圳市房地产买卖合同(预售)>,备案编号为深（福）网预买字（2014）5165号等103份合同；','双方已签订和解协议。',NULL,NULL,NULL,'linxiajuan','2015-03-11 03:35:51','party','2015-03-11 03:05:37');
INSERT INTO `case_apply_base` VALUES (101,2,'20150313-1','','编号为JJ2014801001的《居间合同》','',NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:00:00','party','2015-03-13 05:00:00');
INSERT INTO `case_apply_base` VALUES (102,2,'20150313-2','','合同编号为JK201401001的《借款合同》、合同编号为DB20140801001的《担保合同》','2014.08.01',NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:28:37','party','2015-03-13 05:28:37');
INSERT INTO `case_apply_base` VALUES (103,2,'20150318-1','','YHGF-DX141017《购销合同》','',NULL,NULL,NULL,'dexin','2015-03-18 10:40:35','party','2015-03-18 10:40:35');
INSERT INTO `case_apply_base` VALUES (104,2,'20150318-2','','合同编号为数字社区（2011）001号的《数字社区之“贵阳金福佳苑”项目合作建设合同》\r\n2011年7月8日签订的两份《保证函》\r\n2011年7月14日签订的两份《股权质押合同》','”履行本合同所产生的，以及与本合同有关的一切争议，双方应当首先协商解决，协商期为一方要求协商解决的通知送达对方后起算60天后，若协商期满双方仍未能协商解决，任何一方可向中国国际经济贸易仲裁委员会华南分会申请仲裁。“',NULL,NULL,NULL,'黄霁','2015-03-18 05:13:00','party','2015-03-18 05:13:00');
INSERT INTO `case_apply_base` VALUES (105,2,'20150319-1','','合同编号为（借）字130925001的《借款合同》','2013.9.25',NULL,NULL,NULL,'chzfzx','2015-03-19 11:11:50','party','2015-03-19 10:58:44');
INSERT INTO `case_apply_base` VALUES (106,2,'20150319-2','','编号为IFLX—1300446的《销售总合同》、合同号为XJE9F06001的《销售合同》、合同号为XJE9F06002的《销售合同》、合同号为XJE9F06003的《销售合同》、合同号为XJE9F07001的《销售合同》、合同号为XJE9F07004的《销售合同》、合同号为XJE9F07005的《销售合同》','',NULL,NULL,NULL,'shengyikeji','2015-03-19 02:22:48','party','2015-03-19 02:22:48');
INSERT INTO `case_apply_base` VALUES (107,0,'20150319-3','','wwwwwwwwww','www',NULL,NULL,NULL,'help','2015-03-19 04:02:38','party','2015-03-19 04:02:38');
INSERT INTO `case_apply_base` VALUES (108,0,'20150319-4','','','',NULL,NULL,NULL,'help','2015-03-19 04:06:02','party','2015-03-19 04:06:02');
INSERT INTO `case_apply_base` VALUES (109,1,'20150319-5','','','',NULL,NULL,NULL,'help','2015-03-19 04:08:14','party','2015-03-19 04:06:17');
INSERT INTO `case_apply_base` VALUES (110,1,'20150320-1','','','',NULL,NULL,NULL,'help','2015-03-20 10:21:08','party','2015-03-20 10:21:08');
INSERT INTO `case_apply_base` VALUES (111,2,'20150324-1','','合同编号为FS1405090199的《委托代理进口协议》','',NULL,NULL,NULL,'vic_gyw','2015-03-24 09:53:01','party','2015-03-24 09:47:14');
INSERT INTO `case_apply_base` VALUES (112,2,'20150409-1','','《深圳市房地产买卖合同》预售合同编号为：深（福）网预买字（2014）第594号、深（福）网预买字（2014）第587号','',NULL,NULL,NULL,'linxiajuan','2015-04-09 11:57:39','party','2015-04-09 11:34:24');
INSERT INTO `case_apply_base` VALUES (113,1,'20150416-1','','《深圳市房地产买卖合同（预售）》','备案编号为：深（罗）网预买字（2014）第2722号',NULL,NULL,NULL,'linxiajuan','2015-04-16 01:56:46','party','2015-04-16 01:49:51');
INSERT INTO `case_apply_base` VALUES (114,1,'20150418-1','','XX号《YY合同》 ','',NULL,NULL,NULL,'oo990','2015-04-18 09:34:38','party','2015-04-18 09:34:38');
INSERT INTO `case_apply_base` VALUES (115,1,'20150505-1','','XX号《YY合同》','1',NULL,NULL,NULL,'oopp0','2015-05-05 07:42:53','party','2015-05-05 07:42:49');
INSERT INTO `case_apply_base` VALUES (116,2,'20150506-1','','《贵州金冠幕墙项目合作协议》、《项目管理监管协议》、《补充监管协议》、两份《保证书》','',NULL,NULL,NULL,'林婷兰','2015-05-06 10:34:37','party','2015-05-06 10:04:15');
INSERT INTO `case_apply_base` VALUES (117,2,'20150506-2','','合同编号为01-13/12-14/Golden Shine《维修服务合约》','2013年1月1日',NULL,NULL,NULL,'crucychen','2015-05-06 04:47:21','party','2015-05-06 04:39:50');
INSERT INTO `case_apply_base` VALUES (118,2,'20150513-1','','《贵州金冠幕墙项目合作协议》(14A07E14)、《项目管理监管协议》(14A07E14)、《补充监管协议》(14A07E14）、《保证书》两份','',NULL,NULL,NULL,'林婷兰','2015-05-13 10:40:45','party','2015-05-13 09:57:26');
INSERT INTO `case_apply_base` VALUES (119,2,'20150513-2','','1、《正兴基础建筑项目合作协议》（14A09E09）；\r\n2、融资凭据\r\n3、《项目管理监管协议》（14A09E09）、《补充监管协议（14A09E09）\r\n4、段能超与王楚琴出具的《保证书》（14A09E09）\r\n5、深圳市宏昌达投资有限公司与深圳市昌达建筑工程有限公司出具的股东会决议及《保证书》（14A09E09）','',NULL,NULL,NULL,'李玉艳','2015-05-13 02:30:22','party','2015-05-13 02:04:27');
INSERT INTO `case_apply_base` VALUES (120,1,'20150515-1','','da','dfa',NULL,NULL,NULL,'linxiao','2015-05-15 09:26:04','party','2015-05-15 09:26:04');
INSERT INTO `case_apply_base` VALUES (121,2,'20150522-1','','TRB19JL-2014005号《企业资产收益权转让与回购协议》及股东会决议；2014（金）保第1005号深圳市金融联融资担保有限公司《担保函》及《支付转让价款通知书》；唐木养、刘香萍签字的两份《个人无限连带责任保证函》及协议面签见证承诺函；MYSJ15-20150428号《债权转让协议书》及债权转让通知书','',NULL,NULL,NULL,'李玉艳','2015-05-22 09:51:57','party','2015-05-22 09:30:32');
INSERT INTO `case_apply_base` VALUES (122,0,'20150530-1','','测试','测试\r\n',NULL,NULL,NULL,'llcai ','2015-05-30 03:18:50','assistant','2015-05-30 03:18:50');
INSERT INTO `case_apply_base` VALUES (123,2,'20150619-1','','CRSZB12-LA032-(06.06)<华润深圳湾体育中心商铺租赁合同》','',NULL,NULL,NULL,'lwj','2015-06-19 03:09:06','party','2015-06-19 10:56:30');
INSERT INTO `case_apply_base` VALUES (124,1,'20150706-1','','001号《00合同》','',NULL,NULL,NULL,'houlibao','2015-07-06 04:18:14','party','2015-07-06 04:13:51');
INSERT INTO `case_apply_base` VALUES (125,1,'20150707-1','','SYX-1300235《销售总合同》、X0D1V04013《销售合同》、X0D1V04025《销售合同》、X0D1V04055《销售合同》、X0D1V05007《销售合同》、X0D1V05009《销售合同》、X0D1V05035《销售合同》','',NULL,NULL,NULL,'shengyikeji','2015-07-07 09:23:13','party','2015-07-07 09:23:13');
INSERT INTO `case_apply_base` VALUES (126,1,'20150707-2','','借款合同','',NULL,NULL,NULL,'jessie_fan','2015-07-07 02:33:50','party','2015-07-07 02:33:50');
INSERT INTO `case_apply_base` VALUES (127,1,'20150708-1','','XX号《YY合同》 ','',NULL,NULL,NULL,'dsr1','2015-07-08 04:26:21','party','2015-07-08 04:26:21');
INSERT INTO `case_apply_base` VALUES (128,1,'20150708-2','','：XX号《YY合同》\r\n备注： 	','：XX号《YY合同》\r\n备注： 	',NULL,NULL,NULL,'dsr2','2015-07-08 04:34:30','party','2015-07-08 04:34:30');
INSERT INTO `case_apply_base` VALUES (129,1,'20150708-3','','：XX号《YY合同》 ','',NULL,NULL,NULL,'wscao','2015-07-08 05:25:37','assistant','2015-07-08 05:25:37');
INSERT INTO `case_apply_base` VALUES (130,1,'20150708-4','','：XX号《YY合同》 ','',NULL,NULL,NULL,'wscao','2015-07-08 06:24:46','assistant','2015-07-08 06:24:46');
INSERT INTO `case_apply_base` VALUES (131,1,'20150708-5','','二 如图所示：\r\n \r\n当事人提交仲裁申请，“复制新建”报如下错误：\r\n \r\n三 “常用功能”下，几个模块分页显示不正确，请确认，如图下所示：\r\n','',NULL,NULL,NULL,'wscao','2015-07-08 06:27:31','assistant','2015-07-08 06:27:31');
INSERT INTO `case_apply_base` VALUES (132,0,'20150709-1','','1','2',NULL,NULL,NULL,'wanghaipinping','2015-07-09 11:55:14','party','2015-07-09 11:55:14');
INSERT INTO `case_apply_base` VALUES (133,2,'20150709-2','','总合同编号为SYX-1300235的《销售总合同》及六份《销售合同》','',NULL,NULL,NULL,'zhongqianyi','2015-07-09 02:16:07','party','2015-07-09 02:16:07');
INSERT INTO `case_apply_base` VALUES (134,1,'20150709-3','','','',NULL,NULL,NULL,'王明月','2015-07-09 06:55:12','party','2015-07-09 06:55:12');
INSERT INTO `case_apply_base` VALUES (135,1,'20150710-1','','ABCDEFGHIJK','ABCDEF',NULL,NULL,NULL,'dsr1','2015-07-10 10:29:03','party','2015-07-10 10:28:57');
INSERT INTO `case_apply_base` VALUES (136,1,'20150716-1','','10-12《维修服务合约》\r\n10-14《维修服务合约》','',NULL,NULL,NULL,'crucychen','2015-07-17 11:00:49','party','2015-07-16 06:17:14');
INSERT INTO `case_apply_base` VALUES (137,0,'20150716-2','','《售后维修服务合同》','',NULL,NULL,NULL,'crucychen','2015-07-16 06:17:14','party','2015-07-16 06:17:14');
INSERT INTO `case_apply_base` VALUES (138,1,'20150721-1','','xx号合同','',NULL,NULL,NULL,'linxiao','2015-07-21 03:29:30','party','2015-07-21 03:29:13');
INSERT INTO `case_apply_base` VALUES (139,1,'20150728-1','','','',NULL,NULL,NULL,'wanghaipinping','2015-07-28 09:27:45','party','2015-07-28 09:27:45');
INSERT INTO `case_apply_base` VALUES (140,1,'20150730-1','','gd','gdgd',NULL,NULL,NULL,'ruby','2015-07-30 04:16:28','party','2015-07-30 04:16:28');
INSERT INTO `case_apply_base` VALUES (141,0,'20150730-2','','20150730号《股权转让合同》','',NULL,NULL,NULL,'zhongqianyi0','2015-07-30 05:54:18','party','2015-07-30 05:54:18');
INSERT INTO `case_apply_base` VALUES (142,2,'20150803-1','','合同编号为DLGD2012-02的《合同》','',NULL,NULL,NULL,'lianhefazhan','2015-08-03 10:46:03','party','2015-08-03 10:36:28');
INSERT INTO `case_apply_base` VALUES (143,1,'20150804-1','','1','1',NULL,NULL,NULL,'tanyuan','2015-08-04 04:26:46','party','2015-08-04 04:26:37');

--
-- Table structure for table `case_att`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_att` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL COMMENT '状态：1已确认，0新建',
  `apply_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请号',
  `att_id` int(11) DEFAULT NULL,
  `u_typ` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户类型',
  `u` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '维护用户',
  `u_t` datetime DEFAULT NULL COMMENT '维护时间',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='案件附件表（外网存放）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_att`
--

INSERT INTO `case_att` VALUES (1,0,'20140902-1',10,'party','a182','2014-09-04 04:47:50','Y');
INSERT INTO `case_att` VALUES (2,0,'20140902-1',11,'party','a182','2014-09-04 04:48:08','Y');
INSERT INTO `case_att` VALUES (3,0,'20140903-1',12,'party','a182','2014-09-05 02:56:55','Y');
INSERT INTO `case_att` VALUES (4,0,'20140910-1',15,'party','a184','2014-09-11 09:24:19','Y');
INSERT INTO `case_att` VALUES (5,0,'20141009-1',20,'party','a187','2014-10-09 03:33:35','Y');
INSERT INTO `case_att` VALUES (6,0,'20141024-3',24,'party','a190','2014-10-24 03:33:59','Y');
INSERT INTO `case_att` VALUES (7,0,'20141028-2',27,'party','a192','2014-10-28 10:38:52','Y');
INSERT INTO `case_att` VALUES (8,0,'20141031-1',30,'party','a193','2014-10-31 11:49:32','Y');
INSERT INTO `case_att` VALUES (9,0,'20141031-1',31,'party','a193','2014-10-31 11:50:20','Y');
INSERT INTO `case_att` VALUES (10,0,'20141105-1',35,'party','a196','2014-11-05 03:07:27','Y');
INSERT INTO `case_att` VALUES (11,0,'20141112-1',37,'party','a196','2014-11-12 04:33:13','Y');
INSERT INTO `case_att` VALUES (12,0,'20141215-1',46,'party','cheshi0001','2014-12-15 04:58:43','Y');
INSERT INTO `case_att` VALUES (13,0,'20141216-1',50,'party','wanghaipinping','2014-12-16 05:25:03','Y');
INSERT INTO `case_att` VALUES (14,0,'20150127-3',51,'party','wanghaipinping','2015-01-27 11:43:17','Y');
INSERT INTO `case_att` VALUES (15,0,'20150130-2',53,'party','Kimberly ZHANG','2015-01-30 11:23:44','Y');
INSERT INTO `case_att` VALUES (16,0,'20150130-2',54,'party','Kimberly ZHANG','2015-01-30 11:52:48','Y');
INSERT INTO `case_att` VALUES (17,0,'20150130-2',55,'party','Kimberly ZHANG','2015-01-30 11:58:16','Y');
INSERT INTO `case_att` VALUES (18,0,'20150130-2',56,'party','Kimberly ZHANG','2015-01-30 12:03:00','Y');
INSERT INTO `case_att` VALUES (19,0,'20150130-2',57,'party','Kimberly ZHANG','2015-01-30 12:03:55','Y');
INSERT INTO `case_att` VALUES (20,0,'20150130-3',58,'party','Kimberly ZHANG','2015-01-30 04:46:07','Y');
INSERT INTO `case_att` VALUES (21,0,'20150130-3',59,'party','Kimberly ZHANG','2015-01-30 04:46:43','Y');
INSERT INTO `case_att` VALUES (22,0,'20150130-3',60,'party','Kimberly ZHANG','2015-01-30 04:46:55','Y');
INSERT INTO `case_att` VALUES (23,0,'20150130-3',61,'party','Kimberly ZHANG','2015-01-30 04:47:27','Y');
INSERT INTO `case_att` VALUES (24,0,'20150130-3',62,'party','Kimberly ZHANG','2015-01-30 04:47:43','Y');
INSERT INTO `case_att` VALUES (25,0,'20150130-9',63,'party','Kimberly ZHANG','2015-02-02 10:04:54','Y');
INSERT INTO `case_att` VALUES (26,0,'20150130-9',64,'party','Kimberly ZHANG','2015-02-02 10:06:41','Y');
INSERT INTO `case_att` VALUES (27,0,'20150130-9',65,'party','Kimberly ZHANG','2015-02-02 10:08:18','Y');
INSERT INTO `case_att` VALUES (28,0,'20150130-9',66,'party','Kimberly ZHANG','2015-02-02 10:09:07','Y');
INSERT INTO `case_att` VALUES (29,0,'20150130-8',67,'party','Kimberly ZHANG','2015-02-02 10:09:45','Y');
INSERT INTO `case_att` VALUES (30,0,'20150130-8',68,'party','Kimberly ZHANG','2015-02-02 10:10:01','Y');
INSERT INTO `case_att` VALUES (31,0,'20150130-8',69,'party','Kimberly ZHANG','2015-02-02 10:11:11','Y');
INSERT INTO `case_att` VALUES (32,0,'20150130-8',70,'party','Kimberly ZHANG','2015-02-02 10:15:00','Y');
INSERT INTO `case_att` VALUES (33,0,'20150130-7',71,'party','Kimberly ZHANG','2015-02-02 10:20:55','Y');
INSERT INTO `case_att` VALUES (34,0,'20150130-7',72,'party','Kimberly ZHANG','2015-02-02 10:47:02','Y');
INSERT INTO `case_att` VALUES (35,0,'20150130-7',73,'party','Kimberly ZHANG','2015-02-02 10:59:59','Y');
INSERT INTO `case_att` VALUES (36,0,'20150130-7',74,'party','Kimberly ZHANG','2015-02-02 11:01:32','Y');
INSERT INTO `case_att` VALUES (37,0,'20150130-7',75,'party','Kimberly ZHANG','2015-02-02 11:02:07','Y');
INSERT INTO `case_att` VALUES (38,0,'20150130-7',76,'party','Kimberly ZHANG','2015-02-02 11:02:54','Y');
INSERT INTO `case_att` VALUES (39,0,'20150130-6',77,'party','Kimberly ZHANG','2015-02-02 11:06:09','Y');
INSERT INTO `case_att` VALUES (40,0,'20150130-6',78,'party','Kimberly ZHANG','2015-02-02 11:09:44','Y');
INSERT INTO `case_att` VALUES (41,0,'20150130-6',79,'party','Kimberly ZHANG','2015-02-02 11:10:52','Y');
INSERT INTO `case_att` VALUES (42,0,'20150130-6',80,'party','Kimberly ZHANG','2015-02-02 11:11:08','Y');
INSERT INTO `case_att` VALUES (43,0,'20150130-6',81,'party','Kimberly ZHANG','2015-02-02 11:12:04','Y');
INSERT INTO `case_att` VALUES (44,0,'20150130-6',82,'party','Kimberly ZHANG','2015-02-02 11:12:17','Y');
INSERT INTO `case_att` VALUES (45,0,'20150130-5',83,'party','Kimberly ZHANG','2015-02-02 11:12:55','Y');
INSERT INTO `case_att` VALUES (46,0,'20150130-5',84,'party','Kimberly ZHANG','2015-02-02 11:13:12','Y');
INSERT INTO `case_att` VALUES (47,0,'20150130-5',85,'party','Kimberly ZHANG','2015-02-02 11:13:32','Y');
INSERT INTO `case_att` VALUES (48,0,'20150130-5',86,'party','Kimberly ZHANG','2015-02-02 11:13:46','Y');
INSERT INTO `case_att` VALUES (49,0,'20150130-5',87,'party','Kimberly ZHANG','2015-02-02 11:14:03','Y');
INSERT INTO `case_att` VALUES (50,0,'20150130-5',88,'party','Kimberly ZHANG','2015-02-02 11:14:18','Y');
INSERT INTO `case_att` VALUES (51,0,'20150130-4',89,'party','Kimberly ZHANG','2015-02-02 11:15:04','Y');
INSERT INTO `case_att` VALUES (52,0,'20150130-4',90,'party','Kimberly ZHANG','2015-02-02 11:15:19','Y');
INSERT INTO `case_att` VALUES (53,0,'20150130-4',91,'party','Kimberly ZHANG','2015-02-02 11:15:32','Y');
INSERT INTO `case_att` VALUES (54,0,'20150130-4',92,'party','Kimberly ZHANG','2015-02-02 11:15:57','Y');
INSERT INTO `case_att` VALUES (55,0,'20150130-4',93,'party','Kimberly ZHANG','2015-02-02 11:16:12','Y');
INSERT INTO `case_att` VALUES (56,0,'20150130-4',94,'party','Kimberly ZHANG','2015-02-02 11:16:24','Y');
INSERT INTO `case_att` VALUES (57,0,'20150130-3',95,'party','Kimberly ZHANG','2015-02-02 11:17:27','Y');
INSERT INTO `case_att` VALUES (58,0,'20150130-3',96,'party','Kimberly ZHANG','2015-02-02 11:18:15','Y');
INSERT INTO `case_att` VALUES (59,0,'20150130-12',97,'party','Kimberly ZHANG','2015-02-02 11:18:55','Y');
INSERT INTO `case_att` VALUES (60,0,'20150130-12',98,'party','Kimberly ZHANG','2015-02-02 11:19:06','Y');
INSERT INTO `case_att` VALUES (61,0,'20150130-12',99,'party','Kimberly ZHANG','2015-02-02 11:19:46','Y');
INSERT INTO `case_att` VALUES (62,0,'20150130-12',100,'party','Kimberly ZHANG','2015-02-02 11:20:02','Y');
INSERT INTO `case_att` VALUES (63,0,'20150130-11',101,'party','Kimberly ZHANG','2015-02-02 11:20:24','Y');
INSERT INTO `case_att` VALUES (64,0,'20150130-10',102,'party','Kimberly ZHANG','2015-02-02 11:35:58','Y');
INSERT INTO `case_att` VALUES (65,0,'20150202-1',103,'party','Kimberly ZHANG','2015-02-02 11:58:05','Y');
INSERT INTO `case_att` VALUES (66,0,'20150202-1',104,'party','Kimberly ZHANG','2015-02-02 11:58:20','Y');
INSERT INTO `case_att` VALUES (67,0,'20150202-1',105,'party','Kimberly ZHANG','2015-02-02 11:58:36','Y');
INSERT INTO `case_att` VALUES (68,0,'20150202-1',106,'party','Kimberly ZHANG','2015-02-02 11:58:54','Y');
INSERT INTO `case_att` VALUES (69,0,'20150202-1',107,'party','Kimberly ZHANG','2015-02-02 12:00:32','Y');
INSERT INTO `case_att` VALUES (70,0,'20150130-9',108,'party','Kimberly ZHANG','2015-02-02 12:01:12','Y');
INSERT INTO `case_att` VALUES (71,0,'20150130-8',109,'party','Kimberly ZHANG','2015-02-02 12:01:46','Y');
INSERT INTO `case_att` VALUES (72,0,'20150130-12',110,'party','Kimberly ZHANG','2015-02-02 12:03:09','Y');
INSERT INTO `case_att` VALUES (73,0,'20150130-11',111,'party','Kimberly ZHANG','2015-02-02 12:04:32','Y');
INSERT INTO `case_att` VALUES (74,0,'20150130-11',112,'party','Kimberly ZHANG','2015-02-02 12:05:03','Y');
INSERT INTO `case_att` VALUES (75,0,'20150130-11',113,'party','Kimberly ZHANG','2015-02-02 12:05:51','Y');
INSERT INTO `case_att` VALUES (76,0,'20150130-11',114,'party','Kimberly ZHANG','2015-02-02 12:06:17','Y');
INSERT INTO `case_att` VALUES (77,0,'20150130-7',115,'party','Kimberly ZHANG','2015-02-02 12:55:40','Y');
INSERT INTO `case_att` VALUES (78,0,'20150130-6',116,'party','Kimberly ZHANG','2015-02-02 12:56:54','Y');
INSERT INTO `case_att` VALUES (79,0,'20150130-5',117,'party','Kimberly ZHANG','2015-02-02 12:57:19','Y');
INSERT INTO `case_att` VALUES (80,0,'20150130-4',118,'party','Kimberly ZHANG','2015-02-02 12:57:41','Y');
INSERT INTO `case_att` VALUES (81,0,'20150202-6',119,'party','Kimberly ZHANG','2015-02-02 05:38:51','Y');
INSERT INTO `case_att` VALUES (82,0,'20150130-13',121,'party','wanghaipinping','2015-03-02 11:26:14','Y');
INSERT INTO `case_att` VALUES (83,0,'20150130-13',122,'party','wanghaipinping','2015-03-02 11:34:44','Y');
INSERT INTO `case_att` VALUES (84,0,'20150130-13',123,'party','wanghaipinping','2015-03-02 11:35:04','Y');
INSERT INTO `case_att` VALUES (85,0,'20150130-13',124,'party','wanghaipinping','2015-03-02 11:37:18','Y');
INSERT INTO `case_att` VALUES (86,0,'20150130-13',125,'party','wanghaipinping','2015-03-02 11:38:36','Y');
INSERT INTO `case_att` VALUES (87,0,'20150130-13',126,'party','wanghaipinping','2015-03-02 11:39:44','Y');
INSERT INTO `case_att` VALUES (88,0,'20150130-13',127,'party','wanghaipinping','2015-03-02 11:57:07','Y');
INSERT INTO `case_att` VALUES (89,0,'20150318-1',128,'party','dexin','2015-03-18 10:50:09','Y');
INSERT INTO `case_att` VALUES (90,0,'20150319-5',129,'party','help','2015-03-19 04:09:35','Y');
INSERT INTO `case_att` VALUES (91,0,'20150318-1',130,'party','dexin','2015-03-24 11:31:53','Y');
INSERT INTO `case_att` VALUES (92,0,'20150130-13',131,'party','wanghaipinping','2015-06-09 02:39:12','Y');
INSERT INTO `case_att` VALUES (93,0,'20150619-1',132,'party','lwj','2015-06-19 11:08:50','Y');
INSERT INTO `case_att` VALUES (94,0,'20150706-1',133,'party','houlibao','2015-07-06 04:15:50','Y');
INSERT INTO `case_att` VALUES (95,0,'20150706-1',134,'party','houlibao','2015-07-06 04:17:38','Y');
INSERT INTO `case_att` VALUES (96,0,'20150706-1',135,'party','houlibao','2015-07-06 04:17:51','Y');
INSERT INTO `case_att` VALUES (97,0,'20150706-1',136,'party','houlibao','2015-07-06 04:18:01','Y');
INSERT INTO `case_att` VALUES (98,0,'20150706-1',137,'party','houlibao','2015-07-06 04:18:30','Y');
INSERT INTO `case_att` VALUES (99,0,'20150707-1',138,'party','shengyikeji','2015-07-07 10:29:27','Y');
INSERT INTO `case_att` VALUES (100,0,'20150707-1',139,'party','shengyikeji','2015-07-07 10:30:19','Y');
INSERT INTO `case_att` VALUES (101,0,'20150707-1',140,'party','shengyikeji','2015-07-08 10:07:08','Y');
INSERT INTO `case_att` VALUES (102,0,'20150707-1',141,'party','shengyikeji','2015-07-08 10:22:01','Y');
INSERT INTO `case_att` VALUES (103,0,'20150707-1',142,'party','shengyikeji','2015-07-08 10:22:16','Y');
INSERT INTO `case_att` VALUES (104,0,'20150707-1',143,'party','shengyikeji','2015-07-08 10:22:28','Y');
INSERT INTO `case_att` VALUES (105,0,'20150707-1',144,'party','shengyikeji','2015-07-08 10:22:41','Y');
INSERT INTO `case_att` VALUES (106,0,'20150707-1',145,'party','shengyikeji','2015-07-08 10:22:56','Y');
INSERT INTO `case_att` VALUES (107,0,'20150707-1',146,'party','shengyikeji','2015-07-08 10:23:07','Y');
INSERT INTO `case_att` VALUES (108,0,'20150708-1',147,'party','dsr1','2015-07-08 04:27:32','Y');
INSERT INTO `case_att` VALUES (109,0,'20150708-2',148,'party','dsr2','2015-07-08 04:36:41','Y');
INSERT INTO `case_att` VALUES (110,0,'20150710-1',149,'party','dsr1','2015-07-10 10:57:24','Y');
INSERT INTO `case_att` VALUES (111,0,'20150710-1',150,'party','dsr1','2015-07-10 11:00:28','Y');
INSERT INTO `case_att` VALUES (112,0,'20150710-1',151,'party','dsr1','2015-07-10 11:01:04','Y');

--
-- Table structure for table `contractsign`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contractsign` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `status` int(11) DEFAULT NULL COMMENT '状态：1已确认，0新建',
  `apply_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '申请号',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '咨询号',
  `contractdate` date DEFAULT NULL COMMENT '签订日期',
  `pactname` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '合同名称',
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '备注',
  `u` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '维护用户',
  `u_t` datetime DEFAULT NULL COMMENT '维护时间',
  PRIMARY KEY (`id`),
  KEY `contractsigns_recevice_code` (`recevice_code`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='合同签定表(案件申请)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contractsign`
--

INSERT INTO `contractsign` VALUES (1,NULL,'20140902-1','Y',NULL,'2014-09-09','111','xsasdsa','a182','2014-09-03 12:21:34');
INSERT INTO `contractsign` VALUES (2,NULL,'20140910-1','Y',NULL,'1992-06-30','合同编号为业16F的《中港城商品房产买卖合同》','','a184','2014-09-10 05:00:41');
INSERT INTO `contractsign` VALUES (3,NULL,'20140911-2','Y',NULL,'2014-01-08','《商品房买卖合同》','','a185','2014-09-11 03:47:27');
INSERT INTO `contractsign` VALUES (4,NULL,'20140912-1','Y',NULL,'2014-09-03','xsxsjs20140912','','a185','2014-09-12 10:44:15');
INSERT INTO `contractsign` VALUES (5,NULL,'20141009-1','Y',NULL,'2014-10-08','dsafads','','a187','2014-10-09 03:32:47');
INSERT INTO `contractsign` VALUES (6,NULL,'20141024-2','Y',NULL,'1992-07-10','编号为城23D的中港城商品房产买卖合同','1992年申请人与被申请人签订的《中港城商品房产买卖合同》为达成合同目的。申请人向被申请人支付购房款及订金330900元及律师费、手续费6980元。被申请人收到款项后一直未向原告交付房产，并且拒绝退款，怠于建设，楼房至今仍未完工。      \r\n \r\n','a189','2014-10-24 10:58:43');
INSERT INTO `contractsign` VALUES (7,NULL,'20141024-3','Y',NULL,'2014-10-08','扯皮专业户。','扯。。。扯。。。扯个大气球。','a190','2014-10-24 03:06:26');
INSERT INTO `contractsign` VALUES (8,NULL,'20141024-3','N',NULL,'2014-10-16','的萨菲','','a190','2014-10-24 03:37:26');
INSERT INTO `contractsign` VALUES (9,NULL,'20141028-2','Y',NULL,'2013-08-05','20130012','','a192','2014-10-28 10:33:52');
INSERT INTO `contractsign` VALUES (10,NULL,'20141031-1','Y',NULL,'2014-09-30','10023303工程合同','短发发阿发的发生阿斯发','a193','2014-10-31 11:38:18');
INSERT INTO `contractsign` VALUES (11,NULL,'20141031-1','Y',NULL,'2014-10-13','人娃儿额我','惹我 ','a193','2014-10-31 11:46:30');
INSERT INTO `contractsign` VALUES (12,NULL,'20141105-1','Y',NULL,'2014-09-08','123456','ghhdghgdhdfhdf','a196','2014-11-05 03:06:39');
INSERT INTO `contractsign` VALUES (13,NULL,'20141208-1','Y',NULL,'2014-12-10','qaaa','','lizhi800','2014-12-08 04:15:50');
INSERT INTO `contractsign` VALUES (14,NULL,'20141215-1','Y',NULL,'2014-12-12','123455','您好您好','cheshi0001','2014-12-15 04:57:59');
INSERT INTO `contractsign` VALUES (15,NULL,'20141216-1','Y',NULL,'2014-12-09','2014-03650','wefwa','wanghaipinping','2014-12-16 05:23:41');
INSERT INTO `contractsign` VALUES (16,NULL,'20141217-1','Y',NULL,'2013-05-01','《租赁合同》','','amy_wang7','2014-12-17 03:26:44');
INSERT INTO `contractsign` VALUES (17,NULL,'20141217-2','Y',NULL,'2012-05-31','《采购框架》合同','','todaypresent','2014-12-17 04:01:17');
INSERT INTO `contractsign` VALUES (18,NULL,'20141226-1','Y',NULL,'2012-12-17','合同编号为JK78211209014《流动资金贷款合同》','','linxiao','2014-12-26 04:07:07');
INSERT INTO `contractsign` VALUES (19,NULL,'20141230-1','Y',NULL,'1994-10-08','《中外合作经营企业广州市金恒房地产开发有限公司合同》','','linxiao','2014-12-30 02:33:23');
INSERT INTO `contractsign` VALUES (20,NULL,'20150109-1','Y',NULL,'2014-05-20','合同编号为H201400188的《销货合同》','','linxiao','2015-01-09 03:18:07');
INSERT INTO `contractsign` VALUES (21,NULL,'20150115-1','Y',NULL,'2010-12-12','XSXS20101212-36-04的《合伙协议》','','北京市东元（深圳）律师事务所','2015-01-15 10:09:05');
INSERT INTO `contractsign` VALUES (22,NULL,'20150127-3','Y',NULL,'2014-12-29','415156465','','wanghaipinping','2015-01-27 11:42:55');
INSERT INTO `contractsign` VALUES (23,NULL,'20150128-1','Y',NULL,'2010-12-12','XSXS20101212-36-24的《合伙协议》','','北京市东元（深圳）律师事务所','2015-01-28 10:31:49');
INSERT INTO `contractsign` VALUES (24,NULL,'20150130-1','Y',NULL,'2014-12-28','合同编号为2014080160的《委托代理进口协议》','','ycjn21','2015-01-30 10:28:09');
INSERT INTO `contractsign` VALUES (25,NULL,'20150130-2','Y',NULL,'2014-04-19','3411423930《消费信贷合同》','','Kimberly ZHANG','2015-01-30 11:11:08');
INSERT INTO `contractsign` VALUES (26,NULL,'20150130-3','Y',NULL,'2014-04-19','3411423930《消费信贷合同》','','Kimberly ZHANG','2015-01-30 01:21:49');
INSERT INTO `contractsign` VALUES (27,NULL,'20150130-4','Y',NULL,'2014-04-26','3412274285《消费信贷合同》','','Kimberly ZHANG','2015-01-30 02:29:06');
INSERT INTO `contractsign` VALUES (28,NULL,'20150130-5','Y',NULL,'2014-05-04','3413632466《消费信贷合同》','','Kimberly ZHANG','2015-01-30 02:38:06');
INSERT INTO `contractsign` VALUES (29,NULL,'20150130-6','Y',NULL,'2014-05-14','3414719915《消费信贷合同》','','Kimberly ZHANG','2015-01-30 02:44:17');
INSERT INTO `contractsign` VALUES (30,NULL,'20150130-7','Y',NULL,'2014-05-23','3415917639《消费信贷合同》','','Kimberly ZHANG','2015-01-30 02:54:49');
INSERT INTO `contractsign` VALUES (31,NULL,'20150130-8','Y',NULL,'2014-06-04','3417541228《消费信贷合同》','','Kimberly ZHANG','2015-01-30 03:27:35');
INSERT INTO `contractsign` VALUES (32,NULL,'20150130-9','Y',NULL,'2014-06-13','3418563964《消费信贷合同》','','Kimberly ZHANG','2015-01-30 03:48:13');
INSERT INTO `contractsign` VALUES (33,NULL,'20150130-10','Y',NULL,'2014-06-08','3417960614《消费信贷合同》','','Kimberly ZHANG','2015-01-30 04:02:15');
INSERT INTO `contractsign` VALUES (34,NULL,'20150130-11','Y',NULL,'2014-06-13','3418554878《消费信贷合同》','','Kimberly ZHANG','2015-01-30 04:09:53');
INSERT INTO `contractsign` VALUES (35,NULL,'20150130-12','Y',NULL,'2014-06-09','3418082934','','Kimberly ZHANG','2015-01-30 04:17:28');
INSERT INTO `contractsign` VALUES (36,NULL,'20150202-1','Y',NULL,'2014-06-08','3417960614《消费信贷合同》','','Kimberly ZHANG','2015-02-02 11:55:57');
INSERT INTO `contractsign` VALUES (37,NULL,'20150202-2','Y',NULL,'2010-08-30','深圳市房屋租赁合同书','','rongfanxun2015','2015-02-02 03:32:21');
INSERT INTO `contractsign` VALUES (38,NULL,'20150202-3','Y',NULL,'2012-11-09','00.013.242《设备购销合同》','','xierongqiang','2015-02-02 03:37:23');
INSERT INTO `contractsign` VALUES (39,NULL,'20150202-4','Y',NULL,'2011-03-08','《房屋租赁合同》及《写字楼租赁合同补充条款》','','rongfanxun2015','2015-02-02 03:44:40');
INSERT INTO `contractsign` VALUES (40,NULL,'20150202-5','Y',NULL,'2011-08-18','《住宅物业租赁合同》','','rongfanxun2015','2015-02-02 03:51:17');
INSERT INTO `contractsign` VALUES (41,NULL,'20150202-6','Y',NULL,'2014-04-22','3411677953《消费信贷合同》','','Kimberly ZHANG','2015-02-02 05:23:58');
INSERT INTO `contractsign` VALUES (42,NULL,'20150203-1','Y',NULL,'2014-05-09','3414030237《消费信贷合同》','','Kimberly ZHANG','2015-02-03 11:08:32');
INSERT INTO `contractsign` VALUES (43,NULL,'20150203-2','Y',NULL,'2014-05-09','3414045010《消费信贷合同》 ','','Kimberly ZHANG','2015-02-03 11:22:42');
INSERT INTO `contractsign` VALUES (44,NULL,'20150203-3','Y',NULL,'2014-05-15','3414783704《消费信贷合同》 ','','Kimberly ZHANG','2015-02-03 11:32:38');
INSERT INTO `contractsign` VALUES (45,NULL,'20150203-4','Y',NULL,'2014-06-07','3417693160《消费信贷合同》 ','','Kimberly ZHANG','2015-02-03 11:39:58');
INSERT INTO `contractsign` VALUES (46,NULL,'20150204-1','Y',NULL,'2014-12-27','<深圳市房地产买卖合同(预售)>','买卖合同共26份,且已备案','linxiajuan','2015-02-04 10:08:14');
INSERT INTO `contractsign` VALUES (47,NULL,'20150204-2','Y',NULL,'2015-01-29','协议','《协议》第九条约定：“凡因本协议引起的或与本协议有关的任何争议，均应提交华南国际经济贸易仲裁委员会进行仲裁且适用简易程序，并共同委托华南国际经济贸易仲裁委员会主任指定独任仲裁员。仲裁裁决是终局的，对本协议各方均有约束力。”','lipeiran','2015-02-04 10:31:40');
INSERT INTO `contractsign` VALUES (48,NULL,'20150204-4','Y',NULL,'2013-08-09','2014001 《固定资产采购合约》','','chchkf','2015-02-04 04:17:23');
INSERT INTO `contractsign` VALUES (49,NULL,'20150205-1','Y',NULL,'2014-01-02','协议书（HC-MB2014）','该协议为反映双方合作模式的框架协议，双方之间具体每一笔货物代理出口交易均另签订书面购销合同。','广东泽康律师事务所','2015-02-05 09:24:18');
INSERT INTO `contractsign` VALUES (50,NULL,'20150205-1','Y',NULL,'2014-01-05','出口商品收购合同（HC2014-25）','宏长公司向美邦公司采购办公转椅一批合计255,328.92元，该合同尚余29,415.42元货款未支付。','广东泽康律师事务所','2015-02-05 09:32:25');
INSERT INTO `contractsign` VALUES (51,NULL,'20150205-1','Y',NULL,'2014-01-28','出口商品收购合同（HC2014-28）','宏长公司向美邦公司采购办公转椅一批合计221,295.28元,尚余29,558.86元货款未支付','广东泽康律师事务所','2015-02-05 09:28:22');
INSERT INTO `contractsign` VALUES (52,NULL,'20150205-1','Y',NULL,'2014-02-10','出口商品收购合同（HC2014-56）','宏长公司向美邦公司采购办公转椅、会议椅一批合计122,038.38元,尚余15,509.2元货款未支付。','广东泽康律师事务所','2015-02-05 09:29:38');
INSERT INTO `contractsign` VALUES (53,NULL,'20150205-1','Y',NULL,'2014-02-15','出口商品收购合同（HC2014-64）','宏长公司向美邦公司采购办公转椅一批合计112,026.26元,尚余14,755.66元货款未支付。','广东泽康律师事务所','2015-02-05 09:30:54');
INSERT INTO `contractsign` VALUES (54,NULL,'20150205-1','Y',NULL,'2014-02-25','出口商品收购合同（HC2014-35）','宏长公司向美邦公司采购办公转椅一批合计99,505.07元，尚余12,897.27元货款未支付。','广东泽康律师事务所','2015-02-05 09:32:39');
INSERT INTO `contractsign` VALUES (55,NULL,'20150205-1','Y',NULL,'2014-03-10','出口商品收购合同（HC2014-59）','宏长公司向美邦公司采购办公转椅、会议椅一批合计121,014.9元，尚余15,911.9元货款未支付。','广东泽康律师事务所','2015-02-05 09:35:03');
INSERT INTO `contractsign` VALUES (56,NULL,'20150205-1','Y',NULL,'2014-03-25','出口商品收购合同（HC2014-45）','宏长公司向美邦公司采购办公沙发、办公转椅、会议椅一批合计193,357.39元，尚余58,852.39元货款未支付。','广东泽康律师事务所','2015-02-05 09:38:50');
INSERT INTO `contractsign` VALUES (57,NULL,'20150205-1','Y',NULL,'2014-04-18','出口商品收购合同（HC2014-134）','宏长公司向美邦公司采购办公转椅一批合计117,273.76元，尚余15,173.18元货款未支付。','广东泽康律师事务所','2015-02-05 09:41:09');
INSERT INTO `contractsign` VALUES (58,NULL,'20150205-1','Y',NULL,'2014-05-05','出口商品收购合同（HC2014-157）','宏长公司向美邦公司采购办公转椅一批合计133,173.59元，尚余43,337.67元货款未支付。','广东泽康律师事务所','2015-02-05 09:42:29');
INSERT INTO `contractsign` VALUES (59,NULL,'20150205-1','Y',NULL,'2014-05-05','出口商品收购合同（HC2014-135）','宏长公司向美邦公司采购办公转椅、会议椅一批合计173,940.19元，尚余货款14,772.89元未支付。','广东泽康律师事务所','2015-02-05 09:44:05');
INSERT INTO `contractsign` VALUES (60,NULL,'20150205-1','Y',NULL,'2014-05-08','出口商品收购合同（HC2014-58）','宏长公司向美邦公司采购办公转椅一批合计127,242.44元，尚余货款16,756.18元未支付。','广东泽康律师事务所','2015-02-05 09:46:14');
INSERT INTO `contractsign` VALUES (61,NULL,'20150205-1','Y',NULL,'2014-05-19','出口商品收购合同（HC2014-175）','宏长公司向美邦公司采购办公转椅一批合计283,741.31元，尚余货款35,977.61元未支付。','广东泽康律师事务所','2015-02-05 09:49:27');
INSERT INTO `contractsign` VALUES (62,NULL,'20150205-1','Y',NULL,'2014-05-20','出口商品收购合同（HC2014-118）','宏长公司向美邦公司采购办公转椅、会议椅一批合计236,740.3元，尚余货款32,054.8元未支付。','广东泽康律师事务所','2015-02-05 09:51:34');
INSERT INTO `contractsign` VALUES (63,NULL,'20150205-1','Y',NULL,'2014-05-20','出口商品收购合同（HC2014-60）','宏长公司向美邦公司采购办公转椅、会议椅一批合计150,895.03元，尚余货款20,005.07元未支付。','广东泽康律师事务所','2015-02-05 09:53:06');
INSERT INTO `contractsign` VALUES (64,NULL,'20150205-1','Y',NULL,'2014-07-01','出口商品收购合同（HC2014-164）','宏长公司向美邦公司采购办公转椅一批合计197,654.8元，尚余货款25,464元未支付。','广东泽康律师事务所','2015-02-05 09:54:08');
INSERT INTO `contractsign` VALUES (65,NULL,'20150206-1','Y',NULL,'2013-10-27','合同编号为（2013）雅专字第（2012）号的《专项委托代理合同》','','zhaojun','2015-02-06 10:48:35');
INSERT INTO `contractsign` VALUES (66,NULL,'20150210-1','Y',NULL,'2014-08-26','合同编号为TRB05-20140152-X的《企业资产收益权转让与回购协议》','','arlin','2015-02-10 11:06:10');
INSERT INTO `contractsign` VALUES (67,NULL,'20150210-2','Y',NULL,'2012-11-27','《快易冷气体供应服务合同》','','chunqiang_0404','2015-02-10 12:27:17');
INSERT INTO `contractsign` VALUES (68,NULL,'20150210-3','Y',NULL,'2013-12-30','YY-C094B001C《设备供应合同书》','1、合同中第七条“设备的验收”对有关验收程序和条件进行了约定；2、合同中第九条“设备的价款及支付方式”，对设备价款进行约定。3、合同中第9.3条对被申请人迟延付款之违约责任进行约定；据此，申请人有权据此请求被申请人支付违约金34.9万元。4、合同中第十四条约定“合同纠纷解决方式”，据此，申请人有权向华南国际经济贸易仲裁委员会提起仲裁。','smiles','2015-02-10 03:47:34');
INSERT INTO `contractsign` VALUES (69,NULL,'20150210-4','Y',NULL,'2012-08-30','内蒙古奈伦农业科技股份有限公司2012 年中小企业私募债券募集说明书','','liruizhi0755','2015-02-10 06:24:17');
INSERT INTO `contractsign` VALUES (70,NULL,'20150210-4','Y',NULL,'2012-08-27','内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券担保函','','liruizhi0755','2015-02-10 06:25:27');
INSERT INTO `contractsign` VALUES (71,NULL,'20150210-4','Y',NULL,'2014-11-28','佑瑞持20141128-1《债权转让确认书》','','liruizhi0755','2015-02-10 06:27:04');
INSERT INTO `contractsign` VALUES (72,NULL,'20150210-4','Y',NULL,'2015-01-01','《债权转让确认书》','','liruizhi0755','2015-02-10 06:27:25');
INSERT INTO `contractsign` VALUES (73,NULL,'20150210-4','Y',NULL,'2014-11-07','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议','','liruizhi0755','2015-02-10 06:28:55');
INSERT INTO `contractsign` VALUES (74,NULL,'20150210-4','Y',NULL,'2014-11-07','内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函','','liruizhi0755','2015-02-10 06:29:40');
INSERT INTO `contractsign` VALUES (75,NULL,'20150210-4','Y',NULL,'2014-11-07','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告','','liruizhi0755','2015-02-10 06:30:32');
INSERT INTO `contractsign` VALUES (76,NULL,'20150210-4','Y',NULL,'2014-12-02','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议','','liruizhi0755','2015-02-10 06:32:50');
INSERT INTO `contractsign` VALUES (77,NULL,'20150210-4','Y',NULL,'2014-12-31','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议','','liruizhi0755','2015-02-10 06:34:53');
INSERT INTO `contractsign` VALUES (78,NULL,'20150210-4','Y',NULL,'2014-12-25','土地他项权证书','','liruizhi0755','2015-02-10 06:36:41');
INSERT INTO `contractsign` VALUES (79,NULL,'20150210-4','Y',NULL,'2014-12-03','股权出质设立登记通知书','','liruizhi0755','2015-02-10 06:40:38');
INSERT INTO `contractsign` VALUES (80,NULL,'20150210-4','Y',NULL,'2014-12-31','房产整体转让协议','','liruizhi0755','2015-02-10 06:41:10');
INSERT INTO `contractsign` VALUES (81,NULL,'20150210-4','Y',NULL,'2015-01-31','委托代理合同','','liruizhi0755','2015-02-10 06:41:41');
INSERT INTO `contractsign` VALUES (82,NULL,'20150210-4','Y',NULL,'2015-02-09','律师服务费发票','','liruizhi0755','2015-02-10 06:42:22');
INSERT INTO `contractsign` VALUES (83,NULL,'20150210-5','Y',NULL,'2012-08-30','内蒙古奈伦农业科技股份有限公司2012 年中小企业私募债券募集说明书','','liruizhi0755','2015-02-10 07:01:50');
INSERT INTO `contractsign` VALUES (84,NULL,'20150210-5','Y',NULL,'2012-08-27','内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券担保函','','liruizhi0755','2015-02-10 07:02:12');
INSERT INTO `contractsign` VALUES (85,NULL,'20150210-5','Y',NULL,'2014-11-08','内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券持有人的确认说明','','liruizhi0755','2015-02-10 07:02:46');
INSERT INTO `contractsign` VALUES (86,NULL,'20150210-5','Y',NULL,'2014-11-07','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议   ','','liruizhi0755','2015-02-10 07:03:08');
INSERT INTO `contractsign` VALUES (87,NULL,'20150210-5','Y',NULL,'2014-11-07','内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函','','liruizhi0755','2015-02-10 07:03:25');
INSERT INTO `contractsign` VALUES (88,NULL,'20150210-5','Y',NULL,'2014-11-07','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告   ','','liruizhi0755','2015-02-10 07:03:42');
INSERT INTO `contractsign` VALUES (89,NULL,'20150210-5','Y',NULL,'2014-12-02','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议 ','','liruizhi0755','2015-02-10 07:04:02');
INSERT INTO `contractsign` VALUES (90,NULL,'20150210-5','Y',NULL,'2014-12-31','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议','','liruizhi0755','2015-02-10 07:04:16');
INSERT INTO `contractsign` VALUES (91,NULL,'20150210-5','Y',NULL,'2014-12-25','土地他项权证书','','liruizhi0755','2015-02-10 07:04:31');
INSERT INTO `contractsign` VALUES (92,NULL,'20150210-5','Y',NULL,'2014-12-03','股权出质设立登记通知书','','liruizhi0755','2015-02-10 07:04:48');
INSERT INTO `contractsign` VALUES (93,NULL,'20150210-5','Y',NULL,'2014-12-31','房产整体转让协议','','liruizhi0755','2015-02-10 07:05:05');
INSERT INTO `contractsign` VALUES (94,NULL,'20150210-5','Y',NULL,'2015-01-31','委托代理合同','','liruizhi0755','2015-02-10 07:05:34');
INSERT INTO `contractsign` VALUES (95,NULL,'20150210-5','Y',NULL,'2015-02-06','律师服务费发票','','liruizhi0755','2015-02-10 07:06:16');
INSERT INTO `contractsign` VALUES (96,NULL,'20150210-6','Y',NULL,'2012-08-30','内蒙古奈伦农业科技股份有限公司2012 年中小企业私募债券募集说明书','','liruizhi0755','2015-02-10 07:31:26');
INSERT INTO `contractsign` VALUES (97,NULL,'20150210-6','Y',NULL,'2012-08-27','内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券担保函','','liruizhi0755','2015-02-10 07:31:43');
INSERT INTO `contractsign` VALUES (98,NULL,'20150210-6','Y',NULL,'2012-11-09','内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券认购协议','','liruizhi0755','2015-02-10 07:32:27');
INSERT INTO `contractsign` VALUES (99,NULL,'20150210-6','Y',NULL,'2014-11-07','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议 ','','liruizhi0755','2015-02-10 07:32:51');
INSERT INTO `contractsign` VALUES (100,NULL,'20150210-6','Y',NULL,'2014-11-07','内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函','','liruizhi0755','2015-02-10 07:33:09');
INSERT INTO `contractsign` VALUES (101,NULL,'20150210-6','Y',NULL,'2014-11-07','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告','','liruizhi0755','2015-02-10 07:33:23');
INSERT INTO `contractsign` VALUES (102,NULL,'20150210-6','Y',NULL,'2014-12-02','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议','','liruizhi0755','2015-02-10 07:33:35');
INSERT INTO `contractsign` VALUES (103,NULL,'20150210-6','Y',NULL,'2014-12-31','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议','','liruizhi0755','2015-02-10 07:33:55');
INSERT INTO `contractsign` VALUES (104,NULL,'20150210-6','Y',NULL,'2014-12-25','土地他项权证书','','liruizhi0755','2015-02-10 07:34:10');
INSERT INTO `contractsign` VALUES (105,NULL,'20150210-6','Y',NULL,'2014-12-03','股权出质设立登记通知书 ','','liruizhi0755','2015-02-10 07:34:24');
INSERT INTO `contractsign` VALUES (106,NULL,'20150210-6','Y',NULL,'2014-12-31','房产整体转让协议','','liruizhi0755','2015-02-10 07:39:37');
INSERT INTO `contractsign` VALUES (107,NULL,'20150214-1','Y',NULL,'2012-08-30','内蒙古奈伦农业科技股份有限公司2012 年中小企业私募债券募集说明书','','liruizhi0755','2015-02-14 05:17:02');
INSERT INTO `contractsign` VALUES (108,NULL,'20150214-1','Y',NULL,'2012-08-27','内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券担保函','','liruizhi0755','2015-02-14 05:17:20');
INSERT INTO `contractsign` VALUES (109,NULL,'20150214-1','Y',NULL,'2015-01-13','《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券持有人的确认说明》及第一被申请人的确认回函','','liruizhi0755','2015-02-14 05:18:36');
INSERT INTO `contractsign` VALUES (110,NULL,'20150214-1','Y',NULL,'2015-01-23','《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券持有人的确认说明》及第一被申请人的确认回函','','liruizhi0755','2015-02-14 05:18:47');
INSERT INTO `contractsign` VALUES (111,NULL,'20150214-1','Y',NULL,'2014-11-07','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议','','liruizhi0755','2015-02-14 05:19:12');
INSERT INTO `contractsign` VALUES (112,NULL,'20150214-1','Y',NULL,'2014-11-07','内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函','','liruizhi0755','2015-02-14 05:19:28');
INSERT INTO `contractsign` VALUES (113,NULL,'20150214-1','Y',NULL,'2014-11-07','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告','','liruizhi0755','2015-02-14 05:19:47');
INSERT INTO `contractsign` VALUES (114,NULL,'20150214-1','Y',NULL,'2014-12-02','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议','','liruizhi0755','2015-02-14 05:20:05');
INSERT INTO `contractsign` VALUES (115,NULL,'20150214-1','Y',NULL,'2014-12-31','关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议','','liruizhi0755','2015-02-14 05:20:22');
INSERT INTO `contractsign` VALUES (116,NULL,'20150214-1','Y',NULL,'2014-12-25','土地他项权证书','','liruizhi0755','2015-02-14 05:20:42');
INSERT INTO `contractsign` VALUES (117,NULL,'20150214-1','Y',NULL,'2014-12-03','股权出质设立登记通知书','','liruizhi0755','2015-02-14 05:20:57');
INSERT INTO `contractsign` VALUES (118,NULL,'20150214-1','Y',NULL,'2014-12-31','房产整体转让协议','','liruizhi0755','2015-02-14 05:21:16');
INSERT INTO `contractsign` VALUES (119,NULL,'20150214-1','Y',NULL,'2015-01-31','委托代理合同','','liruizhi0755','2015-02-14 05:21:29');
INSERT INTO `contractsign` VALUES (120,NULL,'20150301-1','Y',NULL,'2013-10-01','李剑波、陈佩仪、于建平、顾千秋、王利杰、上海镭厉科技创业投资中心（有限合伙）、深圳市光启松禾超材料创业投资合伙企业、上海吾游信息技术有限公司关于上海吾游信息技术有限公司之增资扩股协议书','','guqianqiu','2015-03-01 12:17:09');
INSERT INTO `contractsign` VALUES (121,NULL,'20150130-13','Y',NULL,'2015-03-10','fasf','','wanghaipinping','2015-03-02 10:21:22');
INSERT INTO `contractsign` VALUES (122,NULL,'20150210-6','Y',NULL,'2015-03-02','律师服务费发票','','liruizhi0755','2015-03-02 04:44:38');
INSERT INTO `contractsign` VALUES (123,NULL,'20150304-1','Y',NULL,'2013-12-30','YY-C094B001C《设备供应合同书》','1、合同中第七条“设备的验收”对有关验收程序和条件进行了约定；2、合同中第九条“设备的价款及支付方式”，对设备价款进行约定。3、合同中第9.3条对被申请人迟延付款之违约责任进行约定；据此，申请人有权据此请求被申请人支付违约金34.9万元。4、合同中第十四条约定“合同纠纷解决方式”，据此，申请人有权向华南国际经济贸易仲裁委员会提起仲裁。','smiles','2015-03-04 08:01:37');
INSERT INTO `contractsign` VALUES (124,NULL,'20150305-1','Y',NULL,'2014-04-18','深圳中南海滨大酒店有限公司之实际控制人陈祝新、深圳市中南酒店管理有限公司与上海境泽股权投资基金合伙企业（有限合伙）关于深圳中南海滨大酒店有限公司之股权回购协议书','','wxj2520068','2015-03-05 03:24:43');
INSERT INTO `contractsign` VALUES (125,NULL,'20150309-1','Y',NULL,'2013-07-15','房屋租赁合同','合同约定租期从2013年7月15号到2015年2月14号。','tig_ho','2015-03-09 09:45:40');
INSERT INTO `contractsign` VALUES (126,NULL,'20150311-1','Y',NULL,'2014-12-27','<深圳市房地产买卖合同(预售)> ，备案编号为深（福）网预买字（2014）5165号等103份','以上合同共计103份，且已完成备案','linxiajuan','2015-03-11 03:23:56');
INSERT INTO `contractsign` VALUES (127,NULL,'20150313-1','Y',NULL,'2014-08-01','合同编号为JJ20140801001的《居间合同》','','qiuxia.xu','2015-03-13 05:07:52');
INSERT INTO `contractsign` VALUES (128,NULL,'20150318-2','Y',NULL,'2011-07-08','数字社区（2011）001号  《数字社区之”贵阳金福佳苑“项目合作建设合同》','','黄霁','2015-03-18 05:36:39');
INSERT INTO `contractsign` VALUES (129,NULL,'20150318-2','Y',NULL,'2011-07-08','保证函','','黄霁','2015-03-18 05:37:05');
INSERT INTO `contractsign` VALUES (130,NULL,'20150318-2','Y',NULL,'2011-07-14','股权质押合同','','黄霁','2015-03-18 05:37:21');
INSERT INTO `contractsign` VALUES (131,NULL,'20150319-2','Y',NULL,'2014-05-27','IFLX-1300446的《销售总合同》','','shengyikeji','2015-03-19 02:31:24');
INSERT INTO `contractsign` VALUES (132,NULL,'20150319-2','Y',NULL,'2014-06-04','XJE9F06001的《销售合同》','','shengyikeji','2015-03-19 02:32:15');
INSERT INTO `contractsign` VALUES (133,NULL,'20150319-2','Y',NULL,'2014-06-05','XJE9F06002的《销售合同》','','shengyikeji','2015-03-19 02:32:46');
INSERT INTO `contractsign` VALUES (134,NULL,'20150319-2','Y',NULL,'2014-06-19','XJE9F06003的《销售合同》','','shengyikeji','2015-03-19 02:33:17');
INSERT INTO `contractsign` VALUES (135,NULL,'20150319-2','Y',NULL,'2014-06-30','XJE9F07001的《销售合同》','','shengyikeji','2015-03-19 02:33:49');
INSERT INTO `contractsign` VALUES (136,NULL,'20150319-2','Y',NULL,'2014-07-17','XJE9F07004的《销售合同》','','shengyikeji','2015-03-19 02:34:17');
INSERT INTO `contractsign` VALUES (137,NULL,'20150319-2','Y',NULL,'2014-07-28','XJE9F07005的《销售合同》','','shengyikeji','2015-03-19 02:34:39');
INSERT INTO `contractsign` VALUES (138,NULL,'20150319-5','Y',NULL,'2015-03-17','f','','help','2015-03-19 04:09:54');
INSERT INTO `contractsign` VALUES (139,NULL,'20150409-1','Y',NULL,'2014-02-28','两份《深圳市房地产买卖合同（预售）》，合同编号：深（福）网预买字（2014）第594号、深（福）网预买字（2014）第587号','','linxiajuan','2015-04-09 11:52:26');
INSERT INTO `contractsign` VALUES (140,NULL,'20150409-1','Y',NULL,'2015-04-02','和解协议','','linxiajuan','2015-04-09 11:52:39');
INSERT INTO `contractsign` VALUES (141,NULL,'20150416-1','Y',NULL,'2014-10-22','《深圳市房地产买卖合同（预售）》深（罗）网预买字（2014）第2722号','已签署','linxiajuan','2015-04-16 01:55:42');
INSERT INTO `contractsign` VALUES (142,NULL,'20150416-1','Y',NULL,'2015-04-07','和解协议','','linxiajuan','2015-04-16 01:55:05');
INSERT INTO `contractsign` VALUES (143,NULL,'20150505-1','Y',NULL,'2015-05-14','11','11','oopp0','2015-05-05 07:44:38');
INSERT INTO `contractsign` VALUES (144,NULL,'20150506-1','Y',NULL,'2014-09-30','贵州金冠幕墙项目合作协议（14A09E27）','','林婷兰','2015-05-06 10:36:57');
INSERT INTO `contractsign` VALUES (145,NULL,'20150506-1','Y',NULL,'2014-09-23','项目管理监管协议（14A09E27)','','林婷兰','2015-05-06 10:38:47');
INSERT INTO `contractsign` VALUES (146,NULL,'20150506-1','Y',NULL,'2014-09-23','补充监管协议（14A09E27)','','林婷兰','2015-05-06 10:39:49');
INSERT INTO `contractsign` VALUES (147,NULL,'20150506-1','Y',NULL,'2014-09-23','保证书（14A09E27)','','林婷兰','2015-05-06 10:41:15');
INSERT INTO `contractsign` VALUES (148,NULL,'20150506-1','Y',NULL,'2014-09-23','保证书（14A09E27)','','林婷兰','2015-05-06 10:41:42');
INSERT INTO `contractsign` VALUES (149,NULL,'20150506-2','Y',NULL,'2013-01-01','合同编号为01-13/12-14/Golden Shine《维修服务合约》','','crucychen','2015-05-06 04:47:17');
INSERT INTO `contractsign` VALUES (150,NULL,'20150513-1','Y',NULL,'2014-09-19','《贵州金冠幕墙项目合作协议》（14A07E14）','','林婷兰','2015-05-13 10:03:57');
INSERT INTO `contractsign` VALUES (151,NULL,'20150513-1','Y',NULL,'2014-07-14','《项目管理监管协议》（14A07E14）','','林婷兰','2015-05-13 10:13:30');
INSERT INTO `contractsign` VALUES (152,NULL,'20150513-1','Y',NULL,'2014-07-14','两份《保证书》（14A07E14）','被申请人四、被申请人五、被申请人六出具了两份《保证书》，愿意以保证人的身份为被申请人一签署的借款合同项下的借款本金、利息、实现债权的费用、违约金等相关费用提供无限连带责任保证，保证期间为自主债务履行期届满之日起两年','林婷兰','2015-05-13 10:25:43');
INSERT INTO `contractsign` VALUES (153,NULL,'20150513-2','Y',NULL,'2014-10-10','《正兴基础建筑项目合作协议》（14A09E09）','','李玉艳','2015-05-13 02:10:37');
INSERT INTO `contractsign` VALUES (154,NULL,'20150513-2','Y',NULL,'2014-09-12','《项目管理监管协议》（14A09E09）','','李玉艳','2015-05-13 02:13:10');
INSERT INTO `contractsign` VALUES (155,NULL,'20150513-2','Y',NULL,'2014-09-12','《补充监管协议》（14A09E09）','','李玉艳','2015-05-13 02:14:11');
INSERT INTO `contractsign` VALUES (156,NULL,'20150513-2','Y',NULL,'2014-09-12','段能超、王楚琴出具的《保证书》（14A09E09)','','李玉艳','2015-05-13 02:15:23');
INSERT INTO `contractsign` VALUES (157,NULL,'20150513-2','Y',NULL,'2014-09-12','深圳市宏昌达投资有限公司、深圳市昌达建筑工程有限公司出具的《保证书》（14A09E09）','','李玉艳','2015-05-13 02:17:29');
INSERT INTO `contractsign` VALUES (158,NULL,'20150522-1','Y',NULL,'2014-09-29','TRB19JL-2014005号《企业资产收益权转让与回购协议》及股东会决议、公司章程','','李玉艳','2015-05-22 09:40:41');
INSERT INTO `contractsign` VALUES (159,NULL,'20150522-1','Y',NULL,'2014-09-29','深圳市金融联融资担保有限公司出具的2014（金）保第1005号《担保函》','2014（金）保第1005号','李玉艳','2015-05-22 09:43:17');
INSERT INTO `contractsign` VALUES (160,NULL,'20150522-1','Y',NULL,'2014-09-29','唐木养、刘香萍出具的两份《个人无限连带责任保证函》','','李玉艳','2015-05-22 09:44:41');
INSERT INTO `contractsign` VALUES (161,NULL,'20150522-1','Y',NULL,'2014-10-21','深圳市金融联融资担保有限公司出具的《支付转让价款通知书》','','李玉艳','2015-05-22 09:46:19');
INSERT INTO `contractsign` VALUES (162,NULL,'20150522-1','Y',NULL,'2014-10-22','前海股权交易中心（深圳）有限公司支付转让借款凭证','','李玉艳','2015-05-22 09:47:27');
INSERT INTO `contractsign` VALUES (163,NULL,'20150522-1','Y',NULL,'2015-05-04','《回购逾期催收通知书》及邮寄凭证','','李玉艳','2015-05-22 09:48:31');
INSERT INTO `contractsign` VALUES (164,NULL,'20150522-1','Y',NULL,'2015-05-12','MYSJ15-20150428号《债权转让协议书》、《债权转让通知书》及邮寄凭证','','李玉艳','2015-05-22 09:49:52');
INSERT INTO `contractsign` VALUES (165,NULL,'20150619-1','Y',NULL,'2012-07-04','CRSZB12-LA032-(06.06)《华润深圳湾体育中心商铺租赁合同》','','lwj','2015-06-19 11:07:28');
INSERT INTO `contractsign` VALUES (166,NULL,'20150707-1','Y',NULL,'2009-04-15','SYX-1300235《销售总合同》','无','shengyikeji','2015-07-07 09:41:17');
INSERT INTO `contractsign` VALUES (167,NULL,'20150707-1','Y',NULL,'2013-04-02','X0D1V04013《销售合同》','无','shengyikeji','2015-07-07 09:42:26');
INSERT INTO `contractsign` VALUES (168,NULL,'20150707-1','Y',NULL,'2013-04-11','X0D1V04025《销售合同》','无','shengyikeji','2015-07-07 09:43:16');
INSERT INTO `contractsign` VALUES (169,NULL,'20150707-1','Y',NULL,'2013-04-19','X0D1V04055《销售合同》','无','shengyikeji','2015-07-07 09:43:55');
INSERT INTO `contractsign` VALUES (170,NULL,'20150707-1','Y',NULL,'2013-05-02','X0D1V05007《销售合同》','无','shengyikeji','2015-07-07 09:45:18');
INSERT INTO `contractsign` VALUES (171,NULL,'20150707-1','Y',NULL,'2013-05-02','X0D1V05009《销售合同》','无','shengyikeji','2015-07-07 09:46:01');
INSERT INTO `contractsign` VALUES (172,NULL,'20150707-1','Y',NULL,'2013-05-14','X0D1V05036《销售合同》','无','shengyikeji','2015-07-07 10:04:10');
INSERT INTO `contractsign` VALUES (173,NULL,'20150708-1','Y',NULL,'2015-07-14','555555555555','','dsr1','2015-07-08 04:27:14');
INSERT INTO `contractsign` VALUES (174,NULL,'20150708-2','Y',NULL,'2015-07-05','y','yyyyyy','dsr2','2015-07-08 04:36:56');
INSERT INTO `contractsign` VALUES (175,NULL,'20150709-2','Y',NULL,'2013-04-02','X0D1V04013《销售合同》','','zhongqianyi','2015-07-09 02:28:49');
INSERT INTO `contractsign` VALUES (176,NULL,'20150716-1','Y',NULL,'2012-09-19','10-12《维修服务合约》','','crucychen','2015-07-17 10:58:56');
INSERT INTO `contractsign` VALUES (177,NULL,'20150716-1','Y',NULL,'2014-09-16','10-14《维修服务合约》','两份合约','crucychen','2015-07-17 11:04:13');
INSERT INTO `contractsign` VALUES (178,NULL,'20150803-1','Y',NULL,'2012-10-02','合同编号为DLGD2012-02的《合同》','','lianhefazhan','2015-08-03 10:45:53');

--
-- Table structure for table `dictionary`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typ_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别编码',
  `data_val` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '参数值',
  `data_text` text COLLATE utf8_unicode_ci COMMENT '参数显示',
  `data_describe` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '注释',
  `data_parent` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '参数的父参数',
  `ind` int(11) DEFAULT '0',
  `state` varchar(1) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '参数状态  Y:使用   N:停用',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `data_text_tw` text COLLATE utf8_unicode_ci,
  `data_text_en` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `tb_dictionaries_index_1` (`typ_code`,`data_val`)
) ENGINE=MyISAM AUTO_INCREMENT=1365 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='数据字典';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictionary`
--

INSERT INTO `dictionary` VALUES (1,'0001','0000','仲裁程序','','',0,'N','Y','仲裁程序','');
INSERT INTO `dictionary` VALUES (2,'0001','0001','国内普通','','',0,'Y','Y','國內普通','');
INSERT INTO `dictionary` VALUES (3,'0001','0002','国内简易','','',0,'Y','Y','國內簡易','');
INSERT INTO `dictionary` VALUES (4,'0001','0003','涉外普通','','',0,'Y','Y','涉外普通','');
INSERT INTO `dictionary` VALUES (5,'0001','0004','涉外简易','','',0,'Y','Y','涉外簡易','');
INSERT INTO `dictionary` VALUES (6,'0001','0005','国内金融金融规则3人','','',0,'Y','Y','國內金融金融規則3人','');
INSERT INTO `dictionary` VALUES (7,'0001','0006','国内金融金融规则1人','','',0,'Y','Y','國內金融金融規則1人','');
INSERT INTO `dictionary` VALUES (8,'0001','0007','涉外金融规则3人','','',0,'Y','Y','涉外金融規則3人','');
INSERT INTO `dictionary` VALUES (9,'0001','0008','涉外金融规则1人','','',0,'Y','Y','涉外金融規則1人','');
INSERT INTO `dictionary` VALUES (10,'0002','0000','案件分类','','',0,'N','Y','案件分類','');
INSERT INTO `dictionary` VALUES (11,'0002','0001','货物买卖合同','','',0,'Y','Y','貨物買賣合同','');
INSERT INTO `dictionary` VALUES (12,'0002','00010001','机电设备（机电产品、仪器设备、生产线、部件）','','0001',0,'Y','Y','機電設備（機電產品、儀器設備、生產線、部件）','');
INSERT INTO `dictionary` VALUES (13,'0002','00010002','工业原材料（五矿、冶金、化工原料、建筑原材料等）','','0001',0,'Y','Y','工業原材料（五礦。煉金、化工原料、建築原材料等）','');
INSERT INTO `dictionary` VALUES (14,'0002','00010003','一般货物（不属于机电产品、工业原材料类的产品：轻工、工艺、纺织、粮油、土畜、医药等）','','0001',0,'Y','Y','一般貨物（不屬于機電產品、工业原材料类的产品：轻工、工藝、紡織、糧油、土畜、医药等）','');
INSERT INTO `dictionary` VALUES (15,'0002','00010004','其他货物买卖合同','','0001',0,'Y','Y','其他貨物買賣合同','');
INSERT INTO `dictionary` VALUES (16,'0002','0002','公司、企业类','','',0,'Y','Y','公司、企業類','');
INSERT INTO `dictionary` VALUES (17,'0002','00020001','股权转让合同','','0002',0,'Y','Y','股權轉讓和容','');
INSERT INTO `dictionary` VALUES (18,'0002','00020002','公司增资合同','','0002',0,'Y','Y','公司贈資合同','');
INSERT INTO `dictionary` VALUES (19,'0002','00020003','三资企业经营合同','','0002',0,'Y','Y','三資企業經營合同','');
INSERT INTO `dictionary` VALUES (20,'0002','00020004','企业承包经营合同','','0002',0,'Y','Y','企業承包經營合同','');
INSERT INTO `dictionary` VALUES (21,'0002','00020005','企业并购合同','','0002',0,'Y','Y','企業並購合同','');
INSERT INTO `dictionary` VALUES (22,'0002','00020006','公司章程纠纷','','0002',0,'Y','Y','公司章程糾紛','');
INSERT INTO `dictionary` VALUES (23,'0002','00020007','其他与公司经营有关的合同','','0002',0,'Y','Y','其他与公司經營有關的合同','');
INSERT INTO `dictionary` VALUES (24,'0002','0003','房地产类','','',0,'Y','Y','房地產類','');
INSERT INTO `dictionary` VALUES (25,'0002','00030001','商品房买卖合同','','0003',0,'Y','Y','商品房買賣合同','');
INSERT INTO `dictionary` VALUES (26,'0002','00030002','房屋租赁合同','','0003',0,'Y','Y','房屋租賃合同','');
INSERT INTO `dictionary` VALUES (27,'0002','00030003','商品房委托代理销售合同','','0003',0,'Y','Y','商品房委託代理銷售合同','');
INSERT INTO `dictionary` VALUES (28,'0002','00030004','土地使用权出让合同','','0003',0,'Y','Y','土地使用權出讓合同','');
INSERT INTO `dictionary` VALUES (29,'0002','00030005','土地租赁合同','','0003',0,'Y','Y','土地租賃合同','');
INSERT INTO `dictionary` VALUES (30,'0002','00030006','临时用地合同','','0003',0,'Y','Y','臨時用地合同','');
INSERT INTO `dictionary` VALUES (31,'0002','00030007','合资、合作开发房地产合同','','0003',0,'Y','Y','合資、合作開發房地產合同','');
INSERT INTO `dictionary` VALUES (32,'0002','00030008','房地产项目转让合同','','0003',0,'Y','Y','房地產項目轉讓合同','');
INSERT INTO `dictionary` VALUES (33,'0002','00030009','其他房地产类合同','','0003',0,'Y','Y','其他房地產類合同','   ');
INSERT INTO `dictionary` VALUES (34,'0002','0004','建设工程类','','',0,'Y','Y','建設工程類','');
INSERT INTO `dictionary` VALUES (35,'0002','00040001','建设工程勘察合同','','0004',0,'Y','Y','建設工程勘察合同','');
INSERT INTO `dictionary` VALUES (36,'0002','00040002','建设工程设计合同','','0004',0,'Y','Y','建設工程設計合同','');
INSERT INTO `dictionary` VALUES (37,'0002','00040003','建设工程监理合同','','0004',0,'Y','Y','建設工程監理合同','');
INSERT INTO `dictionary` VALUES (38,'0002','00040004','建设工程施工合同','','0004',0,'Y','Y','建設工程施工合同','');
INSERT INTO `dictionary` VALUES (39,'0002','00040005','建设工程承包合同','','0004',0,'Y','Y','建設工程承包合同','');
INSERT INTO `dictionary` VALUES (40,'0002','00040006','建设工程装饰装修合同','','0004',0,'Y','Y','建設工程裝飾裝修合同','');
INSERT INTO `dictionary` VALUES (41,'0002','00040007','其他建设工程类合同','','0004',0,'Y','Y','其他建設工程類合同','');
INSERT INTO `dictionary` VALUES (42,'0002','0005','金融类','','',0,'Y','Y','金融類','');
INSERT INTO `dictionary` VALUES (43,'0002','00050001','借款合同','','0005',0,'Y','Y','借款合同','');
INSERT INTO `dictionary` VALUES (44,'0002','00050002','委托理财合同','','0005',0,'Y','Y','委託理財合同','');
INSERT INTO `dictionary` VALUES (45,'0002','00050003','信用卡合同','','0005',0,'Y','Y','信用卡合同','');
INSERT INTO `dictionary` VALUES (46,'0002','00050004','证券类合同','','0005',0,'Y','Y','證劵類合同','');
INSERT INTO `dictionary` VALUES (47,'0002','00050005','基金类合同','','0005',0,'Y','Y','基金類合同','');
INSERT INTO `dictionary` VALUES (48,'0002','00050006','期货类合同','','0005',0,'Y','Y','期貨類合同','');
INSERT INTO `dictionary` VALUES (49,'0002','00050007','信托类合同','','0005',0,'Y','Y','信託類合同','');
INSERT INTO `dictionary` VALUES (50,'0002','00050008','票据类合同','','0005',0,'Y','Y','票據類合同','');
INSERT INTO `dictionary` VALUES (51,'0002','00050009','财产保险合同','','0005',0,'Y','Y','財產保險合同','');
INSERT INTO `dictionary` VALUES (52,'0002','00050010','人身保险合同','','0005',0,'Y','Y','人身保險合同','');
INSERT INTO `dictionary` VALUES (53,'0002','00050011','保证保险合同','','0005',0,'Y','Y','保證保險合同','');
INSERT INTO `dictionary` VALUES (54,'0002','00050012','再保险合同','','0005',0,'Y','Y','再保險合同','');
INSERT INTO `dictionary` VALUES (55,'0002','00050013','其他金融类合同','','0005',0,'Y','Y','其他金融類合同','');
INSERT INTO `dictionary` VALUES (56,'0002','0006','服务合同','','',0,'Y','Y','服務合同','');
INSERT INTO `dictionary` VALUES (57,'0002','00060001','电信服务合同','','0006',0,'Y','Y','電信服務合同','');
INSERT INTO `dictionary` VALUES (58,'0002','00060002','物流服务合同','','0006',0,'Y','Y','物流服務合同','');
INSERT INTO `dictionary` VALUES (59,'0002','00060003','医疗服务合同','','0006',0,'Y','Y','醫療服務合同','');
INSERT INTO `dictionary` VALUES (60,'0002','00060004','法律服务合同（诉讼、仲裁、调解代理合同等）','','0006',0,'Y','Y','法律服務合同（訴訟、仲裁、調解代理合同等','');
INSERT INTO `dictionary` VALUES (61,'0002','00060005','旅游合同','','0006',0,'Y','Y','旅遊合同','');
INSERT INTO `dictionary` VALUES (62,'0002','00060006','财会服务合同','','0006',0,'Y','Y','財會服務合同','');
INSERT INTO `dictionary` VALUES (63,'0002','00060007','娱乐服务合同','','0006',0,'Y','Y','娛樂服務合同','');
INSERT INTO `dictionary` VALUES (64,'0002','00060008','教育培训合同','','0006',0,'Y','Y','教育培訓合同','');
INSERT INTO `dictionary` VALUES (65,'0002','00060009','物业服务合同','','0006',0,'Y','Y','物業服務合同','');
INSERT INTO `dictionary` VALUES (66,'0002','00060010','其他服务合同','','0006',0,'Y','Y','其他服務合同','');
INSERT INTO `dictionary` VALUES (67,'0002','0007','担保合同类','','',0,'Y','Y','擔保合同類','');
INSERT INTO `dictionary` VALUES (68,'0002','00070001','保证合同','','0007',0,'Y','Y','保證合同','');
INSERT INTO `dictionary` VALUES (69,'0002','00070002','抵押合同','','0007',0,'Y','Y','抵押合同','');
INSERT INTO `dictionary` VALUES (70,'0002','00070003','质押合同','','0007',0,'Y','Y','質押合同','');
INSERT INTO `dictionary` VALUES (71,'0002','00070004','其他担保合同','','0007',0,'Y','Y','其他擔保合同','');
INSERT INTO `dictionary` VALUES (72,'0002','0008','知识产权类','','',0,'Y','Y','知識產權類','');
INSERT INTO `dictionary` VALUES (73,'0002','00080001','著作权合同','','0008',0,'Y','Y','著作權合同','');
INSERT INTO `dictionary` VALUES (74,'0002','00080002','商标合同','','0008',0,'Y','Y','商標合同','');
INSERT INTO `dictionary` VALUES (75,'0002','00080003','专利合同','','0008',0,'Y','Y','專利合同','');
INSERT INTO `dictionary` VALUES (76,'0002','00080004','商业秘密合同','','0008',0,'Y','Y','商業秘密合同','');
INSERT INTO `dictionary` VALUES (77,'0002','00080005','非专利技术合同','','0008',0,'Y','Y','非專利技術合同','');
INSERT INTO `dictionary` VALUES (78,'0002','00080006','特许经营合同','','0008',0,'Y','Y','特許經營合同','');
INSERT INTO `dictionary` VALUES (79,'0002','00080007','其他知识产权类合同','','0008',0,'Y','Y','其他知識產權類合同','');
INSERT INTO `dictionary` VALUES (80,'0002','0009','其他常用合同类','','',0,'Y','Y','其他常用合同類','');
INSERT INTO `dictionary` VALUES (81,'0002','00090001','一般租赁合同（非房地产类租赁）','','0009',0,'Y','Y','一般租賃合同（非房地產類租賃）','');
INSERT INTO `dictionary` VALUES (82,'0002','00090002','融资租赁合同','','0009',0,'Y','Y','融資租賃合同','');
INSERT INTO `dictionary` VALUES (83,'0002','00090003','借款合同（非金融类）','','0009',0,'Y','Y','借款合同（非金融類）','');
INSERT INTO `dictionary` VALUES (84,'0002','00090004','承揽合同','','0009',0,'Y','Y','承攬合同','');
INSERT INTO `dictionary` VALUES (85,'0002','00090005','运输合同','','0009',0,'Y','Y','運輸合同','');
INSERT INTO `dictionary` VALUES (86,'0002','00090006','保管、仓储合同','','0009',0,'Y','Y','保管、倉儲合同','');
INSERT INTO `dictionary` VALUES (87,'0002','00090007','行纪、居间合同','','0009',0,'Y','Y','行記、居間合同','');
INSERT INTO `dictionary` VALUES (88,'0002','00090008','委托合同','','0009',0,'Y','Y','委託合同','');
INSERT INTO `dictionary` VALUES (89,'0002','00090009','展览合同','','0009',0,'Y','Y','展覽合同','');
INSERT INTO `dictionary` VALUES (90,'0002','00090010','劳务（雇佣）合同','','0009',0,'Y','Y','鬧無（雇傭）合同','');
INSERT INTO `dictionary` VALUES (91,'0002','00090011','拍卖合同','','0009',0,'Y','Y','拍賣合同','');
INSERT INTO `dictionary` VALUES (92,'0002','00090012','典当合同','','0009',0,'Y','Y','典當合同','');
INSERT INTO `dictionary` VALUES (93,'0002','00090013','其他常用合同','','0009',0,'Y','Y','其他常用合同','');
INSERT INTO `dictionary` VALUES (94,'0003','0000','仲裁协议类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (95,'0003','0001','合同中的仲裁条款 ','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (96,'0003','0002','仲裁协议','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (97,'0004','0000','仲裁机构','','',0,'N','Y','仲裁機構','');
INSERT INTO `dictionary` VALUES (98,'0004','0001','华南分会','','',0,'Y','Y','華南分會','');
INSERT INTO `dictionary` VALUES (99,'0004','0002','深圳分会','','',2,'Y','Y','深圳分會','');
INSERT INTO `dictionary` VALUES (100,'0004','0003','通用条款','','',2,'Y','Y','通用條款','');
INSERT INTO `dictionary` VALUES (101,'0004','0004','贸促会','','',100,'N','Y','貿促會','');
INSERT INTO `dictionary` VALUES (102,'0004','0005','其它','','',10,'Y','Y','其他','');
INSERT INTO `dictionary` VALUES (103,'0004','0006','深圳国际仲裁院','','',1,'Y','Y','深圳國際仲裁院','');
INSERT INTO `dictionary` VALUES (104,'0004','0007','华南国仲','','',1,'Y','Y','華南國仲','');
INSERT INTO `dictionary` VALUES (105,'0005','0000','交寄方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (106,'0005','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (107,'0005','0002','来人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (108,'0006','0000','仲裁协议类项','','',0,'N','Y','仲裁協議類項','');
INSERT INTO `dictionary` VALUES (109,'0006','0001','示范格式条款','','',0,'Y','Y','示範格式條款','');
INSERT INTO `dictionary` VALUES (110,'0006','0002','自行拟定条款','','',0,'Y','Y','自行擬定條款','');
INSERT INTO `dictionary` VALUES (111,'0006','0003','事后达成的仲裁协议','','',0,'Y','Y','事後達成的仲裁協議','');
INSERT INTO `dictionary` VALUES (112,'0007','0000','代理人身份','','',0,'N','Y','代理人身份','');
INSERT INTO `dictionary` VALUES (113,'0007','0001','律师','','',0,'Y','Y','律師','');
INSERT INTO `dictionary` VALUES (114,'0007','0002','职员','','',0,'Y','Y','職員','');
INSERT INTO `dictionary` VALUES (115,'0007','0003','实习律师','','',0,'Y','Y','實習律師','');
INSERT INTO `dictionary` VALUES (116,'0007','0004','律师助理','','',0,'Y','Y','律師助理','');
INSERT INTO `dictionary` VALUES (117,'0008','0000','仲裁请求提交方式（送来）','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (118,'0008','0001','交来','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (119,'0008','0002','寄来','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (120,'0009','0000','仲裁请求送交对方当事人方式（送去）','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (121,'0009','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (122,'0009','0002','直接','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (123,'0009','0003','公证','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (124,'0009','0004','委托','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (125,'0009','0005','公告','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (126,'0010','0000','反请求提交方式（送来）','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (127,'0010','0001','交来','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (128,'0010','0002','寄来','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (129,'0011','0000','反请求送交对方当事人方式（送去）','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (130,'0011','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (131,'0011','0002','直接','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (132,'0011','0003','公证','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (133,'0011','0004','委托','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (134,'0013','0000','组庭信息送达方式（送去）','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (135,'0013','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (136,'0013','0002','直接','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (137,'0013','0003','公证','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (138,'0013','0004','委托','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (139,'0014','0000','组庭仲裁员类型','','',0,'N','Y','組廳仲裁員類型','');
INSERT INTO `dictionary` VALUES (140,'0014','0001','独任仲裁员','','',0,'Y','Y','獨任仲裁員','');
INSERT INTO `dictionary` VALUES (141,'0014','0002','首席仲裁员','','',0,'Y','Y','首席仲裁員','');
INSERT INTO `dictionary` VALUES (142,'0014','0003','仲裁员（申请人）','','',0,'Y','Y','仲裁員（申請人）','');
INSERT INTO `dictionary` VALUES (143,'0014','0004','仲裁员（被申请人）','','',0,'Y','Y','仲裁員（被申請人）','');
INSERT INTO `dictionary` VALUES (144,'0015','0000','组庭仲裁员选定方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (145,'0015','0001','选定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (146,'0015','0002','共同选定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (147,'0015','0003','委托','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (148,'0015','0004','共同委托','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (149,'0015','0005','代指定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (150,'0015','0006','按《仲裁规则》第三十条和第二十九条规定选定','','',6,'Y','Y','','');
INSERT INTO `dictionary` VALUES (151,'0016','0000','仲裁员回避者的身份','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (152,'0016','0001','身份1','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (153,'0016','0002','身份2','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (154,'0016','0003','身份3','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (155,'0016','0004','身份4','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (156,'0017','0000','仲裁员披露信息送交申请人的方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (157,'0017','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (158,'0017','0002','直接','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (159,'0017','0003','公证','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (160,'0017','0004','委托','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (161,'0017','0005','公告','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (162,'0018','0000','仲裁员披露信息送交被申请人的方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (163,'0018','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (164,'0018','0002','直接','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (165,'0018','0003','公证','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (166,'0018','0004','委托','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (167,'0018','0005','公告','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (168,'0019','0000','仲裁员更换选定方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (169,'0019','0001','申请人选定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (170,'0019','0002','被申请人选定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (171,'0019','0003','双方共同选定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (172,'0019','0004','本会主任选定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (173,'0020','0000','仲裁员提出更换人','','',0,'N','Y','仲裁员提出更換人','');
INSERT INTO `dictionary` VALUES (174,'0020','0001','申请人','','',0,'Y','Y','申請人','');
INSERT INTO `dictionary` VALUES (175,'0020','0002','被申请人','','',0,'Y','Y','被申請人','');
INSERT INTO `dictionary` VALUES (176,'0020','0003','双方当事人','','',0,'Y','Y','雙方當事人','');
INSERT INTO `dictionary` VALUES (177,'0020','0004','本会','','',0,'Y','Y','本會','');
INSERT INTO `dictionary` VALUES (178,'0020','0005','仲裁员本人','','',0,'Y','Y','仲裁員本人','');
INSERT INTO `dictionary` VALUES (179,'0021','0000','仲裁员更换理由','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (180,'0021','0001','仲裁员因死亡或健康原因不能从事仲裁工作','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (181,'0021','0002','仲裁员主动退出案件审理','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (182,'0021','0003','主任决定其回避','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (183,'0021','0004','双方当事人一致要求其退出案件审理','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (184,'0021','0005','本会认为仲裁员在法律上或事实上不能履行职责或者没有按照本规则的','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (185,'0021','0006','仲裁员本人','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (186,'0022','0000','仲裁员更换意见类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (187,'0022','0001','申请人意见','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (188,'0022','0002','被申请人意见','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (189,'0022','0003','首席仲裁员意见','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (190,'0022','0004','仲裁员(申)意见','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (191,'0022','0005','仲裁员(被)意见','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (192,'0023','0000','仲裁庭','','',0,'N','Y','仲裁庭','');
INSERT INTO `dictionary` VALUES (193,'0023','0001','第一仲裁庭','','',0,'Y','Y','第一仲裁廳','');
INSERT INTO `dictionary` VALUES (194,'0023','0002','第二仲裁庭','','',0,'Y','Y','第二仲裁廳','');
INSERT INTO `dictionary` VALUES (195,'0023','0003','第三仲裁庭','','',0,'Y','Y','第三仲裁廳','');
INSERT INTO `dictionary` VALUES (196,'0023','0004','多功能厅','','',0,'Y','Y','多功能廳','');
INSERT INTO `dictionary` VALUES (197,'0023','0005','前海仲裁庭','','',5,'Y','Y','前海仲裁廳','');
INSERT INTO `dictionary` VALUES (198,'0023','0006','证券仲裁庭','','',6,'Y','Y','證劵仲裁庭','');
INSERT INTO `dictionary` VALUES (199,'0024','0000','开闭庭时间','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (200,'0024','0001','08:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (201,'0024','0002','08:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (202,'0024','0003','09:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (203,'0024','0004','09:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (204,'0024','0005','10:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (205,'0024','0006','10:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (206,'0024','0007','11:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (207,'0024','0008','11:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (208,'0024','0009','12:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (209,'0024','0010','12:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (210,'0024','0011','13:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (211,'0024','0012','13:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (212,'0024','0013','14:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (213,'0024','0014','14:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (214,'0024','0015','15:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (215,'0024','0016','15:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (216,'0024','0017','16:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (217,'0024','0018','16:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (218,'0024','0019','17:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (219,'0024','0020','17:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (220,'0024','0021','18:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (221,'0024','0022','18:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (222,'0024','0023','19:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (223,'0024','0024','19:30','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (224,'0024','0025','20:00','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (225,'0025','0000','开庭通知送交申请人的方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (226,'0025','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (227,'0025','0002','直接','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (228,'0025','0003','公证','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (229,'0025','0004','委托','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (230,'0025','0005','公告','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (231,'0026','0000','开庭通知送交被申请人的方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (232,'0026','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (233,'0026','0002','直接','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (234,'0026','0003','公证','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (235,'0026','0004','委托','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (236,'0026','0005','公告','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (237,'0027','0000','出庭身份','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (238,'0027','0001','申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (239,'0027','0002','被申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (240,'0027','0003','申请人法定代表人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (241,'0027','0004','被申请人法定代表人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (242,'0027','0005','申请方委托代理人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (243,'0027','0006','被申请方委托代理人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (244,'0027','0007','申请方证人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (245,'0027','0008','被申请方证人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (246,'0028','0000','仲裁庭使用类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (247,'0028','0001','仲裁','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (248,'0028','0002','案件合议','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (249,'0028','0003','会议2','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (250,'0028','0004','会议3','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (251,'0028','0005','会议4','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (252,'0028','0006','会议5','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (253,'0028','0007','会议6','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (254,'0028','0008','会议7','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (255,'0029','0000','订房类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (256,'0029','0001','仲裁员订房（开庭）','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (257,'0029','0002','订房类型2','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (258,'0029','0003','订房类型3','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (259,'0029','0004','订房类型4','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (260,'0029','0005','订房类型5','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (261,'0029','0006','订房类型6','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (262,'0029','0007','订房类型7','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (263,'0030','0000','案件延期的提出人','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (264,'0030','0001','申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (265,'0030','0002','被申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (266,'0030','0003','仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (267,'0031','0000','费用类型(应收/应退)','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (268,'0031','0001','案件收费（争议金额）','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (269,'0031','0002','立案费、受理费','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (270,'0031','0003','仲裁费、处理费','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (271,'0031','0004','案件收费（无明确争议金额）','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (272,'0031','0005','立案费/受理费（无明确争议金额）','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (273,'0031','0006','仲裁费/处理费（无明确争议金额）','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (274,'0031','0007','代收代支费用','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (275,'0031','0008','仲裁员实际开支费','','',1,'Y','Y','','');
INSERT INTO `dictionary` VALUES (276,'0031','0009','当事人多交仲裁费','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (277,'0031','0010','其他实际开支费用','','',2,'Y','Y','','');
INSERT INTO `dictionary` VALUES (278,'0032','0000','费用交款方(应收/应退)','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (279,'0032','0001','申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (280,'0032','0002','被申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (281,'0033','0000','出纳收款时录入的付款方','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (282,'0033','0001','申请人方','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (283,'0033','0002','被申请方','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (284,'0034','0000','付款方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (285,'0034','0001','转账','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (286,'0034','0002','现金','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (287,'0034','0003','POS机','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (288,'0034','0004','付款方式4','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (289,'0035','0000','代收代支费用支出类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (290,'0035','0001','差旅费','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (291,'0035','0002','审计、鉴定费','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (292,'0035','0003','仲裁员特殊报酬','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (293,'0035','0004','翻译费','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (294,'0036','0000','仲裁员费用支出类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (295,'0036','0002','差旅','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (296,'0036','0003','补助','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (297,'0036','0011','住宿','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (298,'0037','0000','案件仲裁庭费用支出类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (299,'0037','0001','工作餐','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (300,'0037','0002','助理外地开庭费用','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (301,'0037','0003','支出类型3','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (302,'0037','0004','支出类型4','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (303,'0038','0000','案件其他费用支出类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (304,'0038','0001','审计、鉴定费','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (305,'0038','0002','其他费用支出类型2','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (306,'0038','0003','其他费用支出类型3','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (307,'0038','0004','其他费用支出类型4','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (308,'0039','0000','裁决书和管辖决定等的起草和修改的事项','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (309,'0039','0001','①撰写案情的','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (310,'0039','0002','②撰写完整裁决书的','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (311,'0039','0003','③撰写仲裁庭意见的','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (312,'0039','0004','④撰写案情复杂、难度大的中间裁决、部分裁决，提出实质性修改意见的','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (313,'0039','0005','⑤撰写案情一般、难度小的中间裁决、部分裁决，提出较好修改意见的','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (314,'0039','0006','⑥撰写和解裁决书的','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (315,'0039','0007','⑦撰写管辖权/仲裁员回避决定的','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (316,'0039','0008','⑧撰写撤案决定书的','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (317,'0039','0009','⑨对裁决作一般文字修改或校核的','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (318,'0039','0010','⑩只在裁决书上签字的','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (319,'0040','0000','校核类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (320,'0040','0001','裁决书/撤案决定书 审核','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (321,'0040','0002','管辖/回避/主体资格决定/程序令 审核','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (322,'0041','0000','格式函适用的案件类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (323,'0041','0001','国内案件','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (324,'0041','0002','涉外案件','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (325,'0041','0003','金融案件','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (326,'0041','0004','国内普通','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (327,'0041','0005','国内简易','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (328,'0041','0006','涉外普通','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (329,'0041','0007','涉外简易','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (330,'0041','0008','所有案件类型','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (331,'0041','0009','金融规则3人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (332,'0041','0010','金融规则1人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (333,'0042','0000','选择条件','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (334,'0042','0001','申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (335,'0042','0002','被申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (336,'0042','0003','双方','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (337,'0042','0004','送达了《仲裁规则》和《仲裁员名册》','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (338,'0042','0005','未送达《仲裁规则》和《仲裁员名册》','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (339,'0042','0006','申请人方仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (340,'0042','0007','被申请人方仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (341,'0042','0008','首席仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (342,'0042','0100','无','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (343,'0043','0000','案件大类','','',0,'N','Y','案件大類','');
INSERT INTO `dictionary` VALUES (344,'0043','C','三来一补','','',0,'Y','Y','三來壹補','');
INSERT INTO `dictionary` VALUES (345,'0043','F','金融交易纠纷','','',0,'Y','Y','金融交易糾紛','');
INSERT INTO `dictionary` VALUES (346,'0043','G','一般货物（民用产品及不属M、R类的产品）','','',0,'Y','Y','一般貨物（民用產品及不屬M、R類的產品）','');
INSERT INTO `dictionary` VALUES (347,'0043','H','房屋出售、租赁、土地使用权纠纷、商品房预售合同纠纷','','',0,'Y','Y','房屋出售、租賃、土地使用權糾紛、商品房預售合同糾紛','');
INSERT INTO `dictionary` VALUES (348,'0043','L','专卖店、专营店许可、知识产权许可','','',0,'Y','Y','專賣店、專營店許可、知識產權許可','');
INSERT INTO `dictionary` VALUES (349,'0043','M','机电设备（机电产品、仪器设备、生产线、部件和租赁）','','',0,'Y','Y','機電設備（機電產品、儀器設備、生產線、部件和租賃)','');
INSERT INTO `dictionary` VALUES (350,'0043','P','建筑、装修工程、承包工程','','',0,'Y','Y','建築、裝修工程、承包工程','');
INSERT INTO `dictionary` VALUES (351,'0043','R','工业原材料（五矿、冶金、化工原材料、建筑原材料等）','','',0,'Y','Y','工業原材料(五矿、治金、化工原材料、建築原材料等）','');
INSERT INTO `dictionary` VALUES (352,'0043','S','证券争议','','',0,'Y','Y','證劵爭議','');
INSERT INTO `dictionary` VALUES (353,'0043','T','股权转让','','',0,'Y','Y','股權轉讓','');
INSERT INTO `dictionary` VALUES (354,'0043','V','三资企业','','',0,'Y','Y','三資企業','');
INSERT INTO `dictionary` VALUES (355,'0043','X','其他（贷款、担保、代理、易货、租船等）','','',0,'Y','Y','其他（貸款、擔保、代理、易貨、租船等)','');
INSERT INTO `dictionary` VALUES (356,'0043','ZZZ','无','','',0,'Y','Y','無','');
INSERT INTO `dictionary` VALUES (357,'0044','0000','办理案件的语言','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (358,'0044','0001','中文','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (359,'0044','0002','英文','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (360,'0044','0003','日文','','',0,'N','N','','');
INSERT INTO `dictionary` VALUES (361,'0045','0000','立案后删除的原因','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (362,'0045','0001','原因1','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (363,'0045','0002','原因2','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (364,'0046','0000','案件审理方式','','',0,'N','Y','案件審理方式','');
INSERT INTO `dictionary` VALUES (365,'0046','0001','开庭','','',0,'Y','Y','開庭','');
INSERT INTO `dictionary` VALUES (366,'0046','0002','书面','','',0,'Y','Y','書面','');
INSERT INTO `dictionary` VALUES (367,'0047','0000','归档类别','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (368,'0047','0001','撤案','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (369,'0047','0002','裁决','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (370,'0048','0000','助理发文语言类别','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (371,'0048','0001','中文份数','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (372,'0048','0002','英文份数','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (373,'0049','0000','仲裁员和助理的其它报酬类别','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (374,'0049','0001','类型一','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (375,'0049','0002','类型二','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (376,'0050','0000','办案其它报酬','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (377,'0050','0001','报酬','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (378,'0050','0091','出差补助合计','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (379,'0050','0092','出差','','0091',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (380,'0050','0093','补助','','0091',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (381,'0050','9203','机票_开庭','','0092',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (382,'0050','9205','交通费_开庭','','0092',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (383,'0050','9207','火车_开庭','','0092',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (384,'0050','9209','市内交通_开庭','','0092',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (385,'0050','9215','其他_开庭','','0092',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (386,'0050','9253','机票_开庭返程','','0092',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (387,'0050','9255','交通费_开庭返程','','0092',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (388,'0050','9257','火车_开庭返程','','0092',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (389,'0050','9259','市内交通_开庭返程','','0092',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (390,'0051','0','','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (391,'0051','1000','仲裁员h 1000','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (392,'0051','1100','首席/独任仲裁员H 1100','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (393,'0051','1200','首席/独任仲裁员I 1200','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (394,'0051','1300','首席/独任仲裁员J 1300','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (395,'0051','1400','首席/独任仲裁员K 1400','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (396,'0051','1500','首席/独任仲裁员L 1500','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (397,'0051','300','仲裁员a 300','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (398,'0051','400','仲裁员b 400','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (399,'0051','500','仲裁员c 500','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (400,'0051','600','仲裁员d 600','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (401,'0051','700','仲裁员e 700','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (402,'0051','800','仲裁员f 800','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (403,'0051','900','仲裁员g 900','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (404,'0052','0','','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (405,'0052','100','A 100','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (406,'0052','1000','G 1000','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (407,'0052','1150','H 1150','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (408,'0052','250','B 250','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (409,'0052','400','C 400','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (410,'0052','550','D 550','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (411,'0052','700','E 700','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (412,'0052','850','F 850','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (413,'0053','0','','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (414,'0053','1000','A 1000','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (415,'0053','2000','B 2000','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (416,'0053','3000','C 3000','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (417,'0053','4000','D 4000','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (418,'0053','5000','E 5000','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (419,'0054','0','','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (420,'0054','1100','E 1100','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (421,'0054','1300','F 1300','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (422,'0054','1500','G 1500','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (423,'0054','200','A 200','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (424,'0054','500','B 500','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (425,'0054','750','C 750','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (426,'0054','950','D 950','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (427,'0055','0','','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (428,'0055','100','助理G1 100','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (429,'0055','1000','仲裁员E4 1000','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (430,'0055','10000','仲裁员B10 10000','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (431,'0055','1050','助理A6 1050','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (432,'0055','11000','仲裁员B11 11000','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (433,'0055','1200','仲裁员E5 1200','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (434,'0055','12000','仲裁员B12 12000','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (435,'0055','13000','仲裁员A12 13000','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (436,'0055','14000','仲裁员A13 14000','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (437,'0055','1500','仲裁员E6 1500','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (438,'0055','15000','仲裁员A14 15000','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (439,'0055','1600','助理E6 1600','','0007',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (440,'0055','16000','仲裁员A15 16000','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (441,'0055','17000','仲裁员A16 17000','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (442,'0055','1800','仲裁员E7 1800','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (443,'0055','18000','仲裁员A17 18000','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (444,'0055','200','助理G2 200','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (445,'0055','2000','仲裁员D08 2000','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (446,'0055','2200','仲裁员D09 2200','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (447,'0055','2400','仲裁员D10 2400','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (448,'0055','250','助理D1 250','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (449,'0055','2500','助理E8 2500','','0007',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (450,'0055','2600','仲裁员D11 2600','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (451,'0055','2800','仲裁员D12 2800','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (452,'0055','300','助理G3 300','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (453,'0055','3000','仲裁员D13 3000','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (454,'0055','3200','仲裁员C12 3200','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (455,'0055','3500','仲裁员C13 3500','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (456,'0055','3800','仲裁员C14 3800','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (457,'0055','400','助理G4 400','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (458,'0055','4000','仲裁员C15 4000','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (459,'0055','450','助理A2 450','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (460,'0055','500','助理G5 500','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (461,'0055','5000','仲裁员B05 5000','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (462,'0055','600','助理F5 600','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (463,'0055','6000','仲裁员B06 6000','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (464,'0055','650','助理D3 650','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (465,'0055','700','仲裁员D03 700','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (466,'0055','7000','仲裁员B07 7000','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (467,'0055','750','助理A4 750','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (468,'0055','800','仲裁员E3 800','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (469,'0055','8000','仲裁员B08 8000','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (470,'0055','900','助理A5 900','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (471,'0055','9000','仲裁员B09 9000','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (472,'0056','0','','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (473,'0056','100','文件校对A 100','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (474,'0056','1000','形式内容主校/复校D 1000','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (475,'0056','1200','形式内容主校/复校E 1200','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (476,'0056','1500','形式内容主校/复校F 1500','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (477,'0056','200','复校a 200','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (478,'0056','300','复校b 300','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (479,'0056','400','复校c 400','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (480,'0056','500','复校d 500','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (481,'0056','600','主校D 600','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (482,'0057','0000','机构选定方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (483,'0057','0001','仲裁庭指定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (484,'0057','0002','当事人协商指定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (485,'0057','0003','仲裁庭授权秘书指定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (486,'0058','0000','裁决类型（裁决书管理）','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (487,'0058','0001','一般裁决','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (488,'0058','0002','多数/首仲裁决','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (489,'0058','0003','和解裁决','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (490,'0058','0004','撤案','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (491,'0059','0000','裁决书起草类型--裁决书管理','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (492,'0059','0001','起草案情','','',2,'Y','Y','','');
INSERT INTO `dictionary` VALUES (493,'0059','0002','仲裁庭意见','','',1,'Y','Y','','');
INSERT INTO `dictionary` VALUES (494,'0059','0003','完整裁决书','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (495,'0059','0004','撤案决定书','','',4,'Y','Y','','');
INSERT INTO `dictionary` VALUES (496,'0059','0005','中间裁决、部分裁决','','',3,'Y','Y','','');
INSERT INTO `dictionary` VALUES (497,'0060','0000','开票类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (498,'0060','0001','收据','','',1,'Y','Y','','');
INSERT INTO `dictionary` VALUES (499,'0060','0002','专票','','',2,'Y','Y','','');
INSERT INTO `dictionary` VALUES (500,'0060','0003','普票','','',3,'Y','Y','','');
INSERT INTO `dictionary` VALUES (501,'0100','0000','案件仲裁程序类型','','',0,'N','Y','案件仲裁程序類型','');
INSERT INTO `dictionary` VALUES (502,'0100','0001','类型一','','',0,'Y','Y','類型一','');
INSERT INTO `dictionary` VALUES (503,'0100','0002','类型二','','',0,'Y','Y','類型二','');
INSERT INTO `dictionary` VALUES (504,'0101','0000','案件重要程序提出方','','',0,'N','Y','案件重要程序提出方','');
INSERT INTO `dictionary` VALUES (505,'0101','0001','类型一','','',0,'Y','Y','類型一','');
INSERT INTO `dictionary` VALUES (506,'0101','类型二','类型二','','',0,'Y','Y','類型二','');
INSERT INTO `dictionary` VALUES (507,'8101','0000','合议时间','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (508,'8101','0001','上午','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (509,'8101','0002','下午','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (510,'8102','0000','保全类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (511,'8102','0001','证据保全','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (512,'8102','0002','财产保全','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (513,'8103','0000','申请保全人','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (514,'8103','0001','申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (515,'8103','0002','被申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (516,'8104','0000','保全法院地区','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (517,'8104','0001','深圳','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (518,'8104','0002','北京','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (519,'8104','0003','外地','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (520,'8104','0004','港澳台','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (521,'8104','0005','国外','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (522,'8106','0000','要求终止方','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (523,'8106','0001','法院','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (524,'8106','0002','当事人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (525,'8107','0000','原因','','',0,'N','Y','原因','');
INSERT INTO `dictionary` VALUES (526,'8107','0001','等待法院诉讼结果','','',0,'Y','Y','等待法院訴訟結果','');
INSERT INTO `dictionary` VALUES (527,'8107','0002','一方当事人因不可抗拒的事由，不能参加仲裁','','',0,'Y','Y','一方當事人因不可抗拒的事由，不能參加仲裁','');
INSERT INTO `dictionary` VALUES (528,'8107','0003','本案必须以另一案的审理结果为依据，而另一案尚未审结的','','',0,'Y','Y','本案必須以另一案的審理結果為依據，而另一案尚為結束的','');
INSERT INTO `dictionary` VALUES (529,'8107','0004','一方当事人死亡或终止，需要等待确定权利义务承受人的','','',0,'Y','Y','一方當事人死亡或終止，需要等待確定權利義務承受人的','');
INSERT INTO `dictionary` VALUES (530,'8107','0005','当事人向法院申请确认仲裁条款无效','','',0,'Y','Y','當事人向法院申請確認仲裁條款無效','');
INSERT INTO `dictionary` VALUES (531,'8107','0006','其他','','',0,'Y','Y','其他','');
INSERT INTO `dictionary` VALUES (532,'8108','0000','是否有特殊情况','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (533,'8108','0001','是','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (534,'8108','0002','否','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (535,'8109','0000','检测类型（仲裁庭决定，鉴定或审计）','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (536,'8109','0001','审计','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (537,'8109','0002','鉴定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (538,'8109','0003','评估','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (539,'8110','0000','案件延期提出人类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (540,'8110','0001','仲裁庭','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (541,'8110','0002','办案助理','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (542,'8110','0003','当事人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (543,'8111','0000','咨询记录咨询方','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (544,'8111','0001','申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (545,'8111','0002','被申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (546,'8111','0003','申请方代理人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (547,'8111','0004','申请方代理人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (548,'8112','0000','内容分类','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (549,'8112','0001','实体','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (550,'8112','0002','程序','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (551,'8112','0003','仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (552,'8113','0000','提出方','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (553,'8113','0001','当事人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (554,'8113','0002','仲裁庭','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (555,'8114','0000','裁决类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (556,'8114','0001','中间','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (557,'8114','0002','部分','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (558,'8115','0000','送交申请人方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (559,'8115','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (560,'8115','0002','直接','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (561,'8115','0003','公证','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (562,'8115','0004','委托','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (563,'8115','0005','公告','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (564,'8116','0000','送交被申请人方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (565,'8116','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (566,'8116','0002','直接','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (567,'8116','0003','公证','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (568,'8116','0004','委托','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (569,'8116','0005','公告','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (570,'8117','0000','结案方式','','',0,'N','Y','結案方式','');
INSERT INTO `dictionary` VALUES (571,'8117','0001','一般裁决','','',0,'Y','Y','一般裁決','');
INSERT INTO `dictionary` VALUES (572,'8117','0002','和解裁决','','',0,'Y','Y','和解裁決','');
INSERT INTO `dictionary` VALUES (573,'8117','0003','撤案','','',0,'Y','Y','撤案','');
INSERT INTO `dictionary` VALUES (574,'8118','0000','送交方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (575,'8118','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (576,'8118','0002','直接','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (577,'8119','0000','送交方式','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (578,'8119','0001','邮寄','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (579,'8119','0002','直接','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (580,'8120','0000','裁决书类别','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (581,'8120','0001','裁决书','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (582,'8120','0002','和裁裁决书','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (583,'8120','0003','撤案决定书','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (584,'8120','0004','裁决书更正','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (585,'8120','0005','补充裁决','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (586,'8121','0000','仲裁庭决定','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (587,'8121','0001','是','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (588,'8121','0002','否','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (589,'8122','0000','补正类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (590,'8122','0001','书写错误','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (591,'8122','0002','计算错误','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (592,'8122','0003','打印错误','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (593,'8122','0004','漏裁','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (594,'8122','0005','其它','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (595,'8123','0000','拟稿人','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (596,'8123','0001','秘书','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (597,'8123','0002','陈博生','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (598,'8123','0003','陈桂明','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (599,'8123','0004','陈洪武','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (600,'8124','0000','电脑录入是否完成','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (601,'8124','0001','是','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (602,'8124','0002','否','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (603,'8125','0000','录入人','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (604,'8125','0001','秘书','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (605,'8125','0002','助理','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (606,'8126','0000','审批决定','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (607,'8126','0001','已报批','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (608,'8126','0002','已报批未审','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (609,'8126','0003','需要修改','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (610,'8126','0004','通过','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (611,'8126','0005','不通过','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (612,'8127','0000','是否需要最后合议','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (613,'8127','0001','是','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (614,'8127','0002','否','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (615,'8128','0000','会议是否达成一致','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (616,'8128','0001','是','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (617,'8128','0002','否','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (618,'8129','0000','咨询类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (619,'8129','0001','电话咨询','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (620,'8129','0002','在线咨询','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (621,'8129','0003','来人咨询','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (622,'8133','0000','受理机构','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (623,'8133','0001','中国国际经济贸易仲裁委员会华南分会','','',3,'Y','Y','','');
INSERT INTO `dictionary` VALUES (624,'8133','0002','法院','','',2,'Y','Y','','');
INSERT INTO `dictionary` VALUES (625,'8133','0003','华南国际经济贸易仲裁委员会','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (626,'8133','0004','深圳国际仲裁院','','',1,'Y','Y','','');
INSERT INTO `dictionary` VALUES (627,'8134','0000','异议类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (628,'8134','0001','仲裁协议效力','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (629,'8134','0002','对主体的异议','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (630,'8135','0000','文书类别','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (631,'8135','0001','裁决书','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (632,'8135','0002','撤案裁决书','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (633,'8135','0003','中间裁决','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (634,'8135','0004','部分裁决','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (635,'8135','0005','程序上的决定','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (636,'8136','0000','评价内容','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (637,'8136','0001','1.你对该仲裁员在接受选定或指定时披露的认真程度及寄回声明书情况的评价？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (638,'8136','00010001','非常认真，很快寄回','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (639,'8136','00010002','一般','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (640,'8136','00010003','非常差','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (641,'8136','0002','2.该仲裁员是否存在隐瞒应予披露或回避事由的情形？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (642,'8136','00020001','不存在','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (643,'8136','00020002','存在','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (644,'8136','00020003','说不清','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (645,'8136','0003','3.已安排好的开庭或合议，是否因该仲裁员的个人原因而延期或延时？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (646,'8136','00030001','未发生该情况','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (647,'8136','00030002','发生过该情况','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (648,'8136','0004','4.仲裁员是否预留足够庭审时间？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (649,'8136','00040001','预留足够时间爱你','','0004',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (650,'8136','00040002','未预留足够时间，开庭提前结束','','0004',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (651,'8136','0005','5.从合议及开庭情况看，你对该仲裁员查阅案件资料，了解案情的评价是：','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (652,'8136','00050001','非常熟悉案情','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (653,'8136','00050002','一般','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (654,'8136','00050003','对案情了解不多','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (655,'8136','0006','6.首席/独任仲裁员是否就庭审做了精心安排，庭审秩序节奏把握 的是否得当？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (656,'8136','00060001','精心安排，庭审附有效率','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (657,'8136','00060002','一般','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (658,'8136','00060003','准备不充分，庭审一团糟','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (659,'8136','0007','7.你认为该案的首席/独任仲裁员具备当首席/独任的足够能力吗？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (660,'8136','00070001','足够','','0007',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (661,'8136','00070002','不够','','0007',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (662,'8136','0008','8.庭审时仲裁员是否有接收机、发短信、随意离开开庭室等不当行为？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (663,'8136','00080001','有','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (664,'8136','00080002','没有','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (665,'8136','0009','9.通过开庭及合议，你感觉该仲裁员是否表现出有不当的偏袒情形？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (666,'8136','00090001','没有该情形','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (667,'8136','00090002','有，无原则偏袒一方','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (668,'8136','00090003','有倾向意见，但在正常范围内','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (669,'8136','00090004','说不清','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (670,'8136','0010','10.该案是否发生过仲裁庭意见被当事人提前获悉的情形？如有，可能是该仲裁员吗？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (671,'8136','00100001','未发生过','','0010',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (672,'8136','00100002','发生过，可可能是该仲裁员','','0010',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (673,'8136','00100003','发生过，不知是谁','','0010',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (674,'8136','0011','11.该仲裁员如果草拟了裁决书，你认为写作水平如何？如果未草拟裁决书，该仲裁员对裁决书提出的修改意见时表现\r\n\r\n的态度和水平如何？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (675,'8136','00110001','非常好','','0011',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (676,'8136','00110002','水平一般','','0011',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (677,'8136','00110003','非常差，草稿没法用','','0011',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (678,'8136','0012','12.如果首席起草裁决书，其草拟的时间是否及时？如果该仲裁员是边裁，其对裁决书提出修改意见是否及时？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (679,'8136','00120001','非常及时，未造成迟延','','0012',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (680,'8136','00120002','不及时，裁决因此而延迟','','0012',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (681,'8136','0013','13.如果该仲裁员对裁决草案有不同意见，其提出不同意见时是否附有理由？','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (682,'8136','00130001','一味不同意，提不出任何合理理由','','0013',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (683,'8136','00130002','持不同意见，但可以提出喜爱能供应的理由','','0013',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (684,'8137','0000','费用类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (685,'8137','0001','国内案件仲裁费用','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (686,'8137','0002','涉外案件仲裁费用','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (687,'8137','0003','金融争议案件仲裁费用','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (688,'8138','0000','材料类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (689,'8138','0001','答辩书及证据','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (690,'8138','0002','反请求及证据材料','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (691,'8138','0003','代理词','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (692,'8138','0004','质证意见','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (693,'8138','0005','证据','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (694,'8138','0006','补充证据材料','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (695,'8138','0007','主体资格证明','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (696,'8139','0000','提交人','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (697,'8139','0001','申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (698,'8139','0002','被申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (699,'8140','0000','案件主体类型','','',0,'N','Y','案件主体類型','');
INSERT INTO `dictionary` VALUES (700,'8140','0001','中诉中','','',0,'Y','Y','中訴中','');
INSERT INTO `dictionary` VALUES (701,'8140','0002','中诉外','','',0,'Y','Y','中訴外','');
INSERT INTO `dictionary` VALUES (702,'8140','0003','中诉中＋外','','',0,'Y','Y','中訴中+外','');
INSERT INTO `dictionary` VALUES (703,'8140','0004','外诉中','','',0,'Y','Y','外訴中','');
INSERT INTO `dictionary` VALUES (704,'8140','0005','外诉外','','',0,'Y','Y','外訴外','');
INSERT INTO `dictionary` VALUES (705,'8140','0006','外诉中＋外','','',0,'Y','Y','外訴中+外','');
INSERT INTO `dictionary` VALUES (706,'8140','0007','中＋外诉中','','',0,'Y','Y','中+外訴中','');
INSERT INTO `dictionary` VALUES (707,'8140','0008','中＋外诉外','','',0,'Y','Y','中+外訴外','');
INSERT INTO `dictionary` VALUES (708,'8140','0009','中＋外诉中＋外','','',0,'Y','Y','中+外訴中+外','');
INSERT INTO `dictionary` VALUES (709,'8141','0000','当事人职务','','',0,'N','Y','當事人職務','');
INSERT INTO `dictionary` VALUES (710,'8141','0001','董事长','','',0,'Y','Y','董事長','');
INSERT INTO `dictionary` VALUES (711,'8141','0002','律师','','',0,'Y','Y','律師','');
INSERT INTO `dictionary` VALUES (712,'8141','0003','副董事长','','',0,'Y','Y','副董事長','');
INSERT INTO `dictionary` VALUES (713,'8141','0004','总经理','','',0,'Y','Y','總經理','');
INSERT INTO `dictionary` VALUES (714,'8141','0005','副总经理','','',0,'Y','Y','副總經理','');
INSERT INTO `dictionary` VALUES (715,'8141','0006','经理','','',0,'Y','Y','經理','');
INSERT INTO `dictionary` VALUES (716,'8141','0007','副经理','','',0,'Y','Y','副經理','');
INSERT INTO `dictionary` VALUES (717,'8141','0008','经理助理','','',0,'Y','Y','經理助理','');
INSERT INTO `dictionary` VALUES (718,'8141','0009','厂长','','',0,'Y','Y','廠長','');
INSERT INTO `dictionary` VALUES (719,'8141','0010','副厂长','','',0,'Y','Y','副廠長','');
INSERT INTO `dictionary` VALUES (720,'8141','0011','职员','','',0,'Y','Y','職員','');
INSERT INTO `dictionary` VALUES (721,'8141','0012','主任','','',0,'Y','Y','主任','');
INSERT INTO `dictionary` VALUES (722,'8142','0000','处理结果项目','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (723,'8142','0001','实际开支','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (724,'8142','0100','抹零','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (725,'8143','0000','适用规则项目','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (726,'8143','0001','CIETAC规则','','',3,'Y','Y','','');
INSERT INTO `dictionary` VALUES (727,'8143','0002','CIETAC(修改)','','',1,'Y','Y','','');
INSERT INTO `dictionary` VALUES (728,'8143','0003','ICC规则','','',1,'Y','Y','','');
INSERT INTO `dictionary` VALUES (729,'8143','0004','UNCITRAL Rules','','',1,'Y','Y','','');
INSERT INTO `dictionary` VALUES (730,'8143','0005','其他','','',1,'Y','Y','','');
INSERT INTO `dictionary` VALUES (731,'8143','0006','SCIA规则','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (732,'8144','0000','特殊约定','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (733,'8144','0001','无','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (734,'8144','0002','简易程序约定三人仲裁庭','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (735,'8144','0003','普通程序约定独任仲裁庭','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (736,'8159','0000','仲裁员类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (737,'8159','0001','独任仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (738,'8159','0002','申请人方仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (739,'8159','0003','被申请人方仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (740,'8160','0000','助理评价仲裁员','','',0,'N','Y','助理評價仲裁員','');
INSERT INTO `dictionary` VALUES (741,'8160','0001','庭审前','','',0,'Y','Y','廳審前','');
INSERT INTO `dictionary` VALUES (742,'8160','00010001','1、接受选定或指定时披露得不认真或寄回声明书不及时（扣1--3分）；','','0001',0,'Y','Y','1、接受選定或者指定時披露得不認證或寄回聲明書不及時(扣0-3分）','');
INSERT INTO `dictionary` VALUES (743,'8160','00010002','2、存在隐瞒应予披露或回避事由的情形（扣1--3分）；','','0001',0,'Y','Y','2、存在隐瞒应予披露或迴避事由得情形（扣1-3分）','');
INSERT INTO `dictionary` VALUES (744,'8160','00010003','3、由于个人原因推迟确定开庭时间、未预留开庭时间、已安排好的开庭或合议因个人原因延期或延时（造成严重后果的，如其他外地仲裁员已发生实际开支费用，酌情多扣分）（扣1--6分）；','','0001',0,'Y','Y','3、由于個人原因推遲確定開庭時間、未預留開庭時間、 以安排好的開庭或合議因個人原因延期或延時（造成嚴重後果的，如其外地仲裁員一發生實際開支費用酌情多扣分）（扣1-6分）','');
INSERT INTO `dictionary` VALUES (745,'8160','00010004','4、忘记开庭时间的（扣1--3分）；开庭忘记带材料的（扣1―5分）；','','0001',0,'Y','Y','4、忘記開庭時間的（扣1-3分）；開庭忘帶材料的（扣1-5分）','');
INSERT INTO `dictionary` VALUES (746,'8160','00010005','5、主动打电话询问案件程序情况的（加1--3分）；','','0001',0,'Y','Y','5、主動打電話詢問案件程序情況的（加1-3分）;','');
INSERT INTO `dictionary` VALUES (747,'8160','00010006','6、对案情熟悉，庭前合议时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；对案情不熟悉，庭前合议时未能提出初步意见或能提出拟调查事项的，导致庭审效率不高（扣1--5分）；庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。','','0001',0,'Y','Y','6、对案情熟悉，庭前合議时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；对案情不熟悉，庭前合议时未能提出初步意見或能提出拟調查事项的，导致庭审效率不高（扣1--5分）；庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。','');
INSERT INTO `dictionary` VALUES (748,'8160','0002','庭审中','','',0,'Y','Y','廳審中','');
INSERT INTO `dictionary` VALUES (749,'8160','00020001','7、开庭因非正当原因迟到（扣1--3分）；','','0002',0,'Y','Y','7、開庭因非正當原因推遲（扣1-3分）；','');
INSERT INTO `dictionary` VALUES (750,'8160','00020002','8、开庭着装太随意或开庭发言太随意引起当事人不满的（扣1--3分）；','','0002',0,'Y','Y','8、開庭著裝太隨意或開庭發言太隨意引起當時人不滿（扣1-3分）','');
INSERT INTO `dictionary` VALUES (751,'8160','00020003','9、没有预留足够庭审时间和合议时间（扣1--3分）；','','0002',0,'Y','Y','9、沒有預留足夠廳審時間和合議時間（扣1-3分）','');
INSERT INTO `dictionary` VALUES (752,'8160','00020004','10、庭审时仲裁员有接手机、发短信、随意离开开庭室等不当行为（扣1--3分）；','','0002',0,'Y','Y','10、廳審時仲裁員有接手機、發短線、隨意離開開庭室等不當行為（扣1-3分);','');
INSERT INTO `dictionary` VALUES (753,'8160','00020005','11、在开庭审理及仲裁程序中，表现出偏袒倾向，包括代替或变相代替一方向另一方质证、辩论、提出请求或明显具有诱导性问题的（该考察点请谨慎评价）（扣1--10分）；','','0002',0,'Y','Y','11、在开庭審理及仲裁程序中，表現出偏袒傾向，包括代替或變相代替一方項另一方質證、辯論、提出請求或明顯具有誘導性問題的（該考察請謹慎評價）（扣1-10分）','');
INSERT INTO `dictionary` VALUES (754,'8160','00020006','12、庭审时心不在焉或打瞌睡（扣1--5分）；','','0002',0,'Y','Y','12、庭審時心不在焉或打瞌睡（扣1-5分）；','');
INSERT INTO `dictionary` VALUES (755,'8160','00020007','13、不能控制庭审节奏，导致开庭时间拖延（扣1--5分）；','','0002',0,'Y','Y','13、不能控制庭審節奏，導致開庭時間拖延（扣1-5分）','');
INSERT INTO `dictionary` VALUES (756,'8160','00020008','14、不能抓住案件实质问题进行调查的（扣1--5分）；','','0002',0,'Y','Y','14、不能抓住案件實質問題進行調查的（扣1-5分）','');
INSERT INTO `dictionary` VALUES (757,'8160','00020009','15、对仲裁程序和庭审程序不熟悉，引起当事人不满的（扣1--5分）；','','0002',0,'Y','Y','15、對仲裁程序和庭審程序不熟悉，引起當時人不滿的（扣1-5分）','');
INSERT INTO `dictionary` VALUES (758,'8160','00020010','16、不和其他两位仲裁员沟通，独断专行的（扣1－5分）；','','0002',0,'Y','Y','16、不和其他兩位仲裁員溝通，獨斷轉行的（扣1-5分）','');
INSERT INTO `dictionary` VALUES (759,'8160','00020011','17、仲裁员掌握庭审水平和技巧的（可以加分或减分，分值在－5至5分之间）；','','0002',0,'Y','Y','17、仲裁員掌握庭審水平和技巧的（可以加分或減分，分值在-5到5分之間）','');
INSERT INTO `dictionary` VALUES (760,'8160','00020012','18、调解时能促成当事人和解的（加1--5分并标注）。','','0002',0,'Y','Y','18、調解時能促成當時人和解的（加1-5分并標注）','');
INSERT INTO `dictionary` VALUES (761,'8160','0003','庭审后','','',0,'Y','Y','廳審后','');
INSERT INTO `dictionary` VALUES (762,'8160','00030001','19、在未经仲裁委员会同意，擅自对外发表关于仲裁案件的不当言论的（扣1--5分）；','','0003',0,'Y','Y','19、在未經仲裁委員會同意，擅自對外發表關於案件不當言論的（扣1-5分）','');
INSERT INTO `dictionary` VALUES (763,'8160','00030002','20、不愿意起草裁决书又没有正当理由的（首席扣1--5分，边裁不扣分）；','','0003',0,'Y','Y','20、不願意起草裁決書又沒有正當理由的（首席扣1-5分，邊裁不扣分）','');
INSERT INTO `dictionary` VALUES (764,'8160','00030003','21、在首席不写裁决书时主动承揽起草裁决书任务的（边裁加1--10分，首席不加分）；','','0003',0,'Y','Y','21、在首席不寫裁決書時主動承攬起草裁決書任務的（邊裁加1-10分，首席不加分)','');
INSERT INTO `dictionary` VALUES (765,'8160','00030004','22、对别人写的裁决书稿发表意见不及时（收到裁决书稿一个星期内没有发表意见的）或不负责（提不出任何理由，一味地附和）（扣1--10分）；','','0003',0,'Y','Y','22、對別人寫的裁決書稿發表意見不及時（收到裁決書稿一個星期內沒發表意見的）或不負責任（提不出任何理由，一味的附和)（扣1-10分）','');
INSERT INTO `dictionary` VALUES (766,'8160','00030005','23、起草裁决书时间不算快（未因此导致裁决延期的）但质量高，无需作较大改动的（不加分也不扣分）；起草裁决书时间太晚，导致裁决延期的（扣1--10分）；起草裁决书时间太晚，导致裁决延期的，且质量不高的（扣1--15分）；起草裁决书时间快，但质量不高（扣1--5分）；承担起草裁决书的任务，但是找人代写（扣1--10分）；对秘书起草的裁决书没有认真审阅的（扣1--5分）；没有正当理由导致对裁决书核校意见反馈不及时的（收到核校意见一星期后才反馈）（扣1--5分）；对他人的中肯意见没有理由一味地不接受的（扣1--5分）。','','0003',0,'Y','Y','23、起草裁决书時間不算快（未因此导致裁决延期的）但质量高，无需作較大改動的（不加分也不扣分）； 起草裁决书时间太晚，導致裁决延期的（扣1--10分）； 起草裁决书時間太晚，導致裁决延期的，且質量不高的（扣1--15分）； 起草裁决书时间快，但質量不高（扣1--5分）；承擔起草裁决书的任务，但是找人代寫（扣1--10分）； 对秘書起草的裁决书没有認真審閱的（扣1--5分）； 没有正当理由導致对裁决书核校意见反馈不及时的（收到核校意見一星期后才反饋）（扣1--5分）； 对他人的中肯意見没有理由一味地不接受的（扣1--5分）。','');
INSERT INTO `dictionary` VALUES (767,'8160','00030006','24、裁决书发出去后由于仲裁员的过错产生偏差导致社会效果不好的（扣1--10分）。','','0003',0,'Y','Y','24、裁決書發出去后由於仲裁員的過錯產生偏差導致社會效果不好的（扣1-10分）','');
INSERT INTO `dictionary` VALUES (768,'8161','0000','仲裁员评价仲裁员','','',0,'N','Y','仲裁員評價仲裁員','');
INSERT INTO `dictionary` VALUES (769,'8161','0001','庭审前（仲裁员评价仲裁员）','','',0,'Y','Y','庭審前（仲裁員評價仲裁員）	','');
INSERT INTO `dictionary` VALUES (770,'8161','00010001','1、仲裁员评价仲裁员内容。','','0001',0,'Y','Y','1、仲裁員評價仲裁員內容。','');
INSERT INTO `dictionary` VALUES (1341,'9100','003','行业测试3','','',0,'Y','Y','行業測試3','');
INSERT INTO `dictionary` VALUES (771,'8161','00010002','2、存在隐瞒应予披露或回避事由的情形（扣1--3分）；','','0001',0,'Y','Y','2、存在隱瞞應予披露或回避事由的情形（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (772,'8161','00010003','3、由于个人原因推迟确定开庭时间、未预留开庭时间、已安排好的开庭或合议因个人原因延期或延时（造成严重后果的，如其他外地仲裁员已发生实际开支费用，酌情多扣分）（扣1--6分）；','','0001',0,'Y','Y','3、由于個人原因推遲確定開庭時間、未預留開庭時間、已安排好的開庭或合議因個人原因延期或延時（造成嚴重后果的，如其他外地仲裁員已發生實際開支費用，酌情多扣分）（扣1--6分）；','');
INSERT INTO `dictionary` VALUES (773,'8161','00010004','4、忘记开庭时间的（扣1--3分）；开庭忘记带材料的（扣1―5分）；','','0001',0,'Y','Y','4、忘記開庭時間的（扣1--3分）；開庭忘記帶材料的（扣1―5分）；6分）；','');
INSERT INTO `dictionary` VALUES (774,'8161','00010005','5、主动打电话询问案件程序情况的（加1--3分）；','','0001',0,'Y','Y','5、主動打電話詢問案件程序情況的（加1--3分）；','');
INSERT INTO `dictionary` VALUES (775,'8161','00010006','6、对案情熟悉，庭前合议时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；对案情不熟悉，庭前合议时未能提出初步意见或能提出拟调查事项的，导致庭审效率不高（扣1--5分）；庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。','','0001',0,'Y','Y','6、對案情熟悉，庭前合議時能夠提出初步意見或能提出擬調查事項的（不加分也不扣分）；對案情不熟悉，庭前合議時未能提出初步意見或能提出擬調查事項的，導致庭審效率不高（扣1--5分）；庭前能做好審理計劃書或歸納爭議點或作其他能提高庭審效率工作的（加1--10分并標注）；庭前沒有認真閱卷，合議時一味附和，提不出自己意見的（扣1--10分）。','');
INSERT INTO `dictionary` VALUES (776,'8161','0002','庭审中','','',0,'Y','Y','庭審中','');
INSERT INTO `dictionary` VALUES (777,'8161','00020001','7、开庭因非正当原因迟到（扣1--3分）；','','0002',0,'Y','Y','7、開庭因非正當原因遲到（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (778,'8161','00020002','8、开庭着装太随意或开庭发言太随意引起当事人不满的（扣1--3分）；','','0002',0,'Y','Y','8、開庭著裝太隨意或開庭發言太隨意引起當事人不滿的（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (779,'8161','00020003','9、没有预留足够庭审时间和合议时间（扣1--3分）；','','0002',0,'Y','Y','9、沒有預留足夠庭審時間和合議時間（扣1--3分）；）；','');
INSERT INTO `dictionary` VALUES (780,'8161','00020004','10、庭审时仲裁员有接手机、发短信、随意离开开庭室等不当行为（扣1--3分）；','','0002',0,'Y','Y','10、庭審時仲裁員有接手機、發短信、隨意離開開庭室等不當行為（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (781,'8161','00020005','11、在开庭审理及仲裁程序中，表现出偏袒倾向，包括代替或变相代替一方向另一方质证、辩论、提出请求或明显具有诱导性问题的（该考察点请谨慎评价）（扣1--10分）；','','0002',0,'Y','Y','11、在開庭審理及仲裁程序中，表現出偏袒傾向，包括代替或變相代替一方向另一方質證、辯論、提出請求或明顯具有誘導性問題的（該考察點請謹慎評價）（扣1--10分）；','');
INSERT INTO `dictionary` VALUES (782,'8161','00020006','12、庭审时心不在焉或打瞌睡（扣1--5分）；','','0002',0,'Y','Y','12、庭審時心不在焉或打瞌睡（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (783,'8161','00020007','13、不能控制庭审节奏，导致开庭时间拖延（扣1--5分）；','','0002',0,'Y','Y','13、不能控制庭審節奏，導致開庭時間拖延（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (784,'8161','00020008','14、不能抓住案件实质问题进行调查的（扣1--5分）；','','0002',0,'Y','Y','14、不能抓住案件實質問題進行調查的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (785,'8161','00020009','15、对仲裁程序和庭审程序不熟悉，引起当事人不满的（扣1--5分）；','','0002',0,'Y','Y','15、對仲裁程序和庭審程序不熟悉，引起當事人不滿的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (786,'8161','00020010','16、不和其他两位仲裁员沟通，独断专行的（扣1－5分）；','','0002',0,'Y','Y','16、不和其他兩位仲裁員溝通，獨斷專行的（扣1－5分）；；','');
INSERT INTO `dictionary` VALUES (787,'8161','00020011','17、仲裁员掌握庭审水平和技巧的（可以加分或减分，分值在－5至5分之间）；','','0002',0,'Y','Y','17、仲裁員掌握庭審水平和技巧的（可以加分或減分，分值在－5至5分之間）；','');
INSERT INTO `dictionary` VALUES (788,'8161','00020012','18、调解时能促成当事人和解的（加1--5分并标注）。','','0002',0,'Y','Y','18、調解時能促成當事人和解的（加1--5分并標注）。','');
INSERT INTO `dictionary` VALUES (789,'8161','0003','庭审后','','',0,'Y','Y','庭審后','');
INSERT INTO `dictionary` VALUES (790,'8161','00030001','19、在未经仲裁委员会同意，擅自对外发表关于仲裁案件的不当言论的（扣1--5分）；','','0003',0,'Y','Y','19、在未經仲裁委員會同意，擅自對外發表關于仲裁案件的不當言論的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (791,'8161','00030002','20、不愿意起草裁决书又没有正当理由的（首席扣1--5分，边裁不扣分）；','','0003',0,'Y','Y','20、不愿意起草裁決書又沒有正當理由的（首席扣1--5分，邊裁不扣分）；','');
INSERT INTO `dictionary` VALUES (792,'8161','00030003','21、在首席不写裁决书时主动承揽起草裁决书任务的（边裁加1--10分，首席不加分）；','','0003',0,'Y','Y','21、在首席不寫裁決書時主動承攬起草裁決書任務的（邊裁加1--10分，首席不加分）；','');
INSERT INTO `dictionary` VALUES (793,'8161','00030004','22、对别人写的裁决书稿发表意见不及时（收到裁决书稿一个星期内没有发表意见的）或不负责（提不出任何理由，一味地附和）（扣1--10分）；','','0003',0,'Y','Y','22、對別人寫的裁決書稿發表意見不及時（收到裁決書稿一個星期內沒有發表意見的）或不負責（提不出任何理由，一味地附和）（扣1--10分）；','');
INSERT INTO `dictionary` VALUES (794,'8161','00030005','23、起草裁决书时间不算快（未因此导致裁决延期的）但质量高，无需作较大改动的（不加分也不扣分）；起草裁决书时间太晚，导致裁决延期的（扣1--10分）；起草裁决书时间太晚，导致裁决延期的，且质量不高的（扣1--15分）；起草裁决书时间快，但质量不高（扣1--5分）；承担起草裁决书的任务，但是找人代写（扣1--10分）；对秘书起草的裁决书没有认真审阅的（扣1--5分）；没有正当理由导致对裁决书核校意见反馈不及时的（收到核校意见一星期后才反馈）（扣1--5分）；对他人的中肯意见没有理由一味地不接受的（扣1--5分）。','','0003',0,'Y','Y','23、起草裁決書時間不算快（未因此導致裁決延期的）但質量高，無需作較大改動的（不加分也不扣分）；起草裁決書時間太晚，導致裁決延期的（扣1--10分）；起草裁決書時間太晚，導致裁決延期的，且質量不高的（扣1--15分）；起草裁決書時間快，但質量不高（扣1--5分）；承擔起草裁決書的任務，但是找人代寫（扣1--10分）；對秘書起草的裁決書沒有認真審閱的（扣1--5分）；沒有正當理由導致對裁決書核校意見反饋不及時的（收到核校意見一星期后才反饋）（扣1--5分）；對他人的中肯意見沒有理由一味地不接受的（扣1--5分）。','');
INSERT INTO `dictionary` VALUES (795,'8161','00030006','24、裁决书发出去后由于仲裁员的过错产生偏差导致社会效果不好的（扣1--10分）。','','0003',0,'Y','Y','24、裁決書發出去后由于仲裁員的過錯產生偏差導致社會效果不好的（扣1--10分）。','');
INSERT INTO `dictionary` VALUES (796,'8162','0000','仲裁员评价助理','','',0,'N','Y','仲裁員評價助理','');
INSERT INTO `dictionary` VALUES (797,'8162','0001','庭审前（当事人评价仲裁员）','','',0,'Y','Y','庭審前（當事人評價仲裁員）','');
INSERT INTO `dictionary` VALUES (798,'8162','00010001','1、接受选定或指定时披露得不认真或寄回声明书不及时（扣1--3分）；','','0001',0,'Y','Y','1、接受選定或指定時披露得不認真或寄回聲明書不及時（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (799,'8162','00010002','2、存在隐瞒应予披露或回避事由的情形（扣1--3分）；','','0001',0,'Y','Y','2、存在隱瞞應予披露或回避事由的情形（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (800,'8162','00010003','3、由于个人原因推迟确定开庭时间、未预留开庭时间、已安排好的开庭或合议因个人原因延期或延时（造成严重后果的，如其他外地仲裁员已发生实际开支费用，酌情多扣分）（扣1--6分）；','','0001',0,'Y','Y','3、由于個人原因推遲確定開庭時間、未預留開庭時間、已安排好的開庭或合議因個人原因延期或延時（造成嚴重后果的，如其他外地仲裁員已發生實際開支費用，酌情多扣分）（扣1--6分）；','');
INSERT INTO `dictionary` VALUES (801,'8162','00010004','4、忘记开庭时间的（扣1--3分）；开庭忘记带材料的（扣1―5分）；','','0001',0,'Y','Y','4、忘記開庭時間的（扣1--3分）；開庭忘記帶材料的（扣1―5分）；','');
INSERT INTO `dictionary` VALUES (802,'8162','00010005','5、主动打电话询问案件程序情况的（加1--3分）；','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (803,'8162','00010006','6、对案情熟悉，庭前合议时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；对案情不熟悉，庭前合议时未能提出初步意见或能提出拟调查事项的，导致庭审效率不高（扣1--5分）；庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。','','0001',0,'Y','Y','6、對案情熟悉，庭前合議時能夠提出初步意見或能提出擬調查事項的（不加分也不扣分）；對案情不熟悉，庭前合議時未能提出初步意見或能提出擬調查事項的，導致庭審效率不高（扣1--5分）；庭前能做好審理計劃書或歸納爭議點或作其他能提高庭審效率工作的（加1--10分并標注）；庭前沒有認真閱卷，合議時一味附和，提不出自己意見的（扣1--10分）。','');
INSERT INTO `dictionary` VALUES (804,'8162','0002','庭审中','','',0,'Y','Y','庭審中','');
INSERT INTO `dictionary` VALUES (805,'8162','00020001','7、开庭因非正当原因迟到（扣1--3分）；','','0002',0,'Y','Y','7、開庭因非正當原因遲到（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (806,'8162','00020002','8、开庭着装太随意或开庭发言太随意引起当事人不满的（扣1--3分）；','','0002',0,'Y','Y','8、開庭著裝太隨意或開庭發言太隨意引起當事人不滿的（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (807,'8162','00020003','9、没有预留足够庭审时间和合议时间（扣1--3分）；','','0002',0,'Y','Y','9、沒有預留足夠庭審時間和合議時間（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (808,'8162','00020004','10、庭审时仲裁员有接手机、发短信、随意离开开庭室等不当行为（扣1--3分）；','','0002',0,'Y','Y','10、庭審時仲裁員有接手機、發短信、隨意離開開庭室等不當行為（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (809,'8162','00020005','11、在开庭审理及仲裁程序中，表现出偏袒倾向，包括代替或变相代替一方向另一方质证、辩论、提出请求或明显具有诱导性问题的（该考察点请谨慎评价）（扣1--10分）；','','0002',0,'Y','Y','11、在開庭審理及仲裁程序中，表現出偏袒傾向，包括代替或變相代替一方向另一方質證、辯論、提出請求或明顯具有誘導性問題的（該考察點請謹慎評價）（扣1--10分）；','');
INSERT INTO `dictionary` VALUES (810,'8162','00020006','12、庭审时心不在焉或打瞌睡（扣1--5分）；','','0002',0,'Y','Y','12、庭審時心不在焉或打瞌睡（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (811,'8162','00020007','13、不能控制庭审节奏，导致开庭时间拖延（扣1--5分）；','','0002',0,'Y','Y','13、不能控制庭審節奏，導致開庭時間拖延（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (812,'8162','00020008','14、不能抓住案件实质问题进行调查的（扣1--5分）；','','0002',0,'Y','Y','14、不能抓住案件實質問題進行調查的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (813,'8162','00020009','15、对仲裁程序和庭审程序不熟悉，引起当事人不满的（扣1--5分）；','','0002',0,'Y','Y','15、對仲裁程序和庭審程序不熟悉，引起當事人不滿的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (814,'8162','00020010','16、不和其他两位仲裁员沟通，独断专行的（扣1－5分）；','','0002',0,'Y','Y','16、不和其他兩位仲裁員溝通，獨斷專行的（扣1－5分）；','');
INSERT INTO `dictionary` VALUES (815,'8162','00020011','17、仲裁员掌握庭审水平和技巧的（可以加分或减分，分值在－5至5分之间）；','','0002',0,'Y','Y','17、仲裁員掌握庭審水平和技巧的（可以加分或減分，分值在－5至5分之間）；','');
INSERT INTO `dictionary` VALUES (816,'8162','00020012','18、调解时能促成当事人和解的（加1--5分并标注）。','','0002',0,'Y','Y','18、調解時能促成當事人和解的（加1--5分并標注）。','');
INSERT INTO `dictionary` VALUES (817,'8162','0003','庭审后','','',0,'Y','Y','庭審后','');
INSERT INTO `dictionary` VALUES (818,'8162','00030001','19、在未经仲裁委员会同意，擅自对外发表关于仲裁案件的不当言论的（扣1--5分）；','','0003',0,'Y','Y','19、在未經仲裁委員會同意，擅自對外發表關于仲裁案件的不當言論的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (819,'8162','00030002','20、不愿意起草裁决书又没有正当理由的（首席扣1--5分，边裁不扣分）；','','0003',0,'Y','Y','20、不愿意起草裁決書又沒有正當理由的（首席扣1--5分，邊裁不扣分）；','');
INSERT INTO `dictionary` VALUES (820,'8162','00030003','21、在首席不写裁决书时主动承揽起草裁决书任务的（边裁加1--10分，首席不加分）；','','0003',0,'Y','Y','21、在首席不寫裁決書時主動承攬起草裁決書任務的（邊裁加1--10分，首席不加分）；','');
INSERT INTO `dictionary` VALUES (821,'8162','00030004','22、对别人写的裁决书稿发表意见不及时（收到裁决书稿一个星期内没有发表意见的）或不负责（提不出任何理由，一味地附和）（扣1--10分）；','','0003',0,'Y','Y','22、對別人寫的裁決書稿發表意見不及時（收到裁決書稿一個星期內沒有發表意見的）或不負責（提不出任何理由，一味地附和）（扣1--10分）；','');
INSERT INTO `dictionary` VALUES (822,'8162','00030005','23、起草裁决书时间不算快（未因此导致裁决延期的）但质量高，无需作较大改动的（不加分也不扣分）；起草裁决书时间太晚，导致裁决延期的（扣1--10分）；起草裁决书时间太晚，导致裁决延期的，且质量不高的（扣1--15分）；起草裁决书时间快，但质量不高（扣1--5分）；承担起草裁决书的任务，但是找人代写（扣1--10分）；对秘书起草的裁决书没有认真审阅的（扣1--5分）；没有正当理由导致对裁决书核校意见反馈不及时的（收到核校意见一星期后才反馈）（扣1--5分）；对他人的中肯意见没有理由一味地不接受的（扣1--5分）。','','0003',0,'Y','Y','23、起草裁決書時間不算快（未因此導致裁決延期的）但質量高，無需作較大改動的（不加分也不扣分）；起草裁決書時間太晚，導致裁決延期的（扣1--10分）；起草裁決書時間太晚，導致裁決延期的，且質量不高的（扣1--15分）；起草裁決書時間快，但質量不高（扣1--5分）；承擔起草裁決書的任務，但是找人代寫（扣1--10分）；對秘書起草的裁決書沒有認真審閱的（扣1--5分）；沒有正當理由導致對裁決書核校意見反饋不及時的（收到核校意見一星期后才反饋）（扣1--5分）；對他人的中肯意見沒有理由一味地不接受的（扣1--5分）。','');
INSERT INTO `dictionary` VALUES (823,'8162','00030006','24、裁决书发出去后由于仲裁员的过错产生偏差导致社会效果不好的（扣1--10分）。','','0003',0,'Y','Y','24、裁決書發出去后由于仲裁員的過錯產生偏差導致社會效果不好的（扣1--10分）。','');
INSERT INTO `dictionary` VALUES (824,'8163','0000','当事人评价仲裁员','','',0,'N','Y','當事人評價仲裁員','');
INSERT INTO `dictionary` VALUES (825,'8163','0001','庭审前（当事人评价仲裁员）','','',0,'Y','Y','庭審前（當事人評價仲裁員）','');
INSERT INTO `dictionary` VALUES (826,'8163','00010001','1、接受选定或指定时披露得不认真或寄回声明书不及时（扣1--3分）；','','0001',0,'Y','Y','1、接受選定或指定時披露得不認真或寄回聲明書不及時（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (827,'8163','00010002','2、存在隐瞒应予披露或回避事由的情形（扣1--3分）；','','0001',0,'Y','Y','2、存在隱瞞應予披露或回避事由的情形（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (828,'8163','00010003','3、由于个人原因推迟确定开庭时间、未预留开庭时间、已安排好的开庭或合议因个人原因延期或延时（造成严重后果的，如其他外地仲裁员已发生实际开支费用，酌情多扣分）（扣1--6分）；','','0001',0,'Y','Y','3、由于個人原因推遲確定開庭時間、未預留開庭時間、已安排好的開庭或合議因個人原因延期或延時（造成嚴重后果的，如其他外地仲裁員已發生實際開支費用，酌情多扣分）（扣1--6分）；','');
INSERT INTO `dictionary` VALUES (829,'8163','00010004','4、忘记开庭时间的（扣1--3分）；开庭忘记带材料的（扣1―5分）；','','0001',0,'Y','Y','4、忘記開庭時間的（扣1--3分）；開庭忘記帶材料的（扣1―5分）；','');
INSERT INTO `dictionary` VALUES (830,'8163','00010005','5、主动打电话询问案件程序情况的（加1--3分）；','','0001',0,'Y','Y','5、主動打電話詢問案件程序情況的（加1--3分）；','');
INSERT INTO `dictionary` VALUES (831,'8163','00010006','6、对案情熟悉，庭前合议时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；对案情不熟悉，庭前合议时未能提出初步意见或能提出拟调查事项的，导致庭审效率不高（扣1--5分）；庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。','','0001',0,'Y','Y','6、對案情熟悉，庭前合議時能夠提出初步意見或能提出擬調查事項的（不加分也不扣分）；對案情不熟悉，庭前合議時未能提出初步意見或能提出擬調查事項的，導致庭審效率不高（扣1--5分）；庭前能做好審理計劃書或歸納爭議點或作其他能提高庭審效率工作的（加1--10分并標注）；庭前沒有認真閱卷，合議時一味附和，提不出自己意見的（扣1--10分）。','');
INSERT INTO `dictionary` VALUES (832,'8163','0002','庭审中','','',0,'Y','Y','庭審中','');
INSERT INTO `dictionary` VALUES (833,'8163','00020001','7、开庭因非正当原因迟到（扣1--3分）；','','0002',0,'Y','Y','7、開庭因非正當原因遲到（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (834,'8163','00020002','8、开庭着装太随意或开庭发言太随意引起当事人不满的（扣1--3分）；','','0002',0,'Y','Y','8、開庭著裝太隨意或開庭發言太隨意引起當事人不滿的（扣1--3分）；；','');
INSERT INTO `dictionary` VALUES (835,'8163','00020003','9、没有预留足够庭审时间和合议时间（扣1--3分）；','','0002',0,'Y','Y','9、沒有預留足夠庭審時間和合議時間（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (836,'8163','00020004','10、庭审时仲裁员有接手机、发短信、随意离开开庭室等不当行为（扣1--3分）；','','0002',0,'Y','Y','10、庭審時仲裁員有接手機、發短信、隨意離開開庭室等不當行為（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (837,'8163','00020005','11、在开庭审理及仲裁程序中，表现出偏袒倾向，包括代替或变相代替一方向另一方质证、辩论、提出请求或明显具有诱导性问题的（该考察点请谨慎评价）（扣1--10分）；','','0002',0,'Y','Y','11、在開庭審理及仲裁程序中，表現出偏袒傾向，包括代替或變相代替一方向另一方質證、辯論、提出請求或明顯具有誘導性問題的（該考察點請謹慎評價）（扣1--10分）；','');
INSERT INTO `dictionary` VALUES (838,'8163','00020006','12、庭审时心不在焉或打瞌睡（扣1--5分）；','','0002',0,'Y','Y','12、庭審時心不在焉或打瞌睡（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (839,'8163','00020007','13、不能控制庭审节奏，导致开庭时间拖延（扣1--5分）；','','0002',0,'Y','Y','13、不能控制庭審節奏，導致開庭時間拖延（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (840,'8163','00020008','14、不能抓住案件实质问题进行调查的（扣1--5分）；','','0002',0,'Y','Y','14、不能抓住案件實質問題進行調查的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (841,'8163','00020009','15、对仲裁程序和庭审程序不熟悉，引起当事人不满的（扣1--5分）；','','0002',0,'Y','Y','15、對仲裁程序和庭審程序不熟悉，引起當事人不滿的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (842,'8163','00020010','16、不和其他两位仲裁员沟通，独断专行的（扣1－5分）；','','0002',0,'Y','Y','6、不和其他兩位仲裁員溝通，獨斷專行的（扣1－5分）；','');
INSERT INTO `dictionary` VALUES (843,'8163','00020011','17、仲裁员掌握庭审水平和技巧的（可以加分或减分，分值在－5至5分之间）；','','0002',0,'Y','Y','17、仲裁員掌握庭審水平和技巧的（可以加分或減分，分值在－5至5分之間）；','');
INSERT INTO `dictionary` VALUES (844,'8163','00020012','18、调解时能促成当事人和解的（加1--5分并标注）。','','0002',0,'Y','Y','18、調解時能促成當事人和解的（加1--5分并標注）。','');
INSERT INTO `dictionary` VALUES (845,'8163','0003','庭审后','','',0,'Y','Y','庭審后','');
INSERT INTO `dictionary` VALUES (846,'8163','00030001','19、在未经仲裁委员会同意，擅自对外发表关于仲裁案件的不当言论的（扣1--5分）；','','0003',0,'Y','Y','19、在未經仲裁委員會同意，擅自對外發表關于仲裁案件的不當言論的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (847,'8163','00030002','20、不愿意起草裁决书又没有正当理由的（首席扣1--5分，边裁不扣分）；','','0003',0,'Y','Y','20、不愿意起草裁決書又沒有正當理由的（首席扣1--5分，邊裁不扣分）；；','');
INSERT INTO `dictionary` VALUES (848,'8163','00030003','21、在首席不写裁决书时主动承揽起草裁决书任务的（边裁加1--10分，首席不加分）；','','0003',0,'Y','Y','21、在首席不寫裁決書時主動承攬起草裁決書任務的（邊裁加1--10分，首席不加分）；','');
INSERT INTO `dictionary` VALUES (849,'8163','00030004','22、对别人写的裁决书稿发表意见不及时（收到裁决书稿一个星期内没有发表意见的）或不负责（提不出任何理由，一味地附和）（扣1--10分）；','','0003',0,'Y','Y','22、對別人寫的裁決書稿發表意見不及時（收到裁決書稿一個星期內沒有發表意見的）或不負責（提不出任何理由，一味地附和）（扣1--10分）；','');
INSERT INTO `dictionary` VALUES (850,'8163','00030005','23、起草裁决书时间不算快（未因此导致裁决延期的）但质量高，无需作较大改动的（不加分也不扣分）；起草裁决书时间太晚，导致裁决延期的（扣1--10分）；起草裁决书时间太晚，导致裁决延期的，且质量不高的（扣1--15分）；起草裁决书时间快，但质量不高（扣1--5分）；承担起草裁决书的任务，但是找人代写（扣1--10分）；对秘书起草的裁决书没有认真审阅的（扣1--5分）；没有正当理由导致对裁决书核校意见反馈不及时的（收到核校意见一星期后才反馈）（扣1--5分）；对他人的中肯意见没有理由一味地不接受的（扣1--5分）。','','0003',0,'Y','Y','23、起草裁決書時間不算快（未因此導致裁決延期的）但質量高，無需作較大改動的（不加分也不扣分）；起草裁決書時間太晚，導致裁決延期的（扣1--10分）；起草裁決書時間太晚，導致裁決延期的，且質量不高的（扣1--15分）；起草裁決書時間快，但質量不高（扣1--5分）；承擔起草裁決書的任務，但是找人代寫（扣1--10分）；對秘書起草的裁決書沒有認真審閱的（扣1--5分）；沒有正當理由導致對裁決書核校意見反饋不及時的（收到核校意見一星期后才反饋）（扣1--5分）；對他人的中肯意見沒有理由一味地不接受的（扣1--5分）。','');
INSERT INTO `dictionary` VALUES (851,'8163','00030006','24、裁决书发出去后由于仲裁员的过错产生偏差导致社会效果不好的（扣1--10分）。','','0003',0,'Y','Y','24、裁決書發出去后由于仲裁員的過錯產生偏差導致社會效果不好的（扣1--10分）。','');
INSERT INTO `dictionary` VALUES (852,'8164','0000','当事人评价助理','','',0,'N','Y','當事人評價助理','');
INSERT INTO `dictionary` VALUES (853,'8164','0001','庭审前（当事人评价助理）','','',0,'Y','Y','庭審前（當事人評價助理）','');
INSERT INTO `dictionary` VALUES (854,'8164','00010001','1、接受选定或指定时披露得不认真或寄回声明书不及时（扣1--3分）；','','0001',0,'Y','Y','1、接受選定或指定時披露得不認真或寄回聲明書不及時（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (855,'8164','00010002','2、存在隐瞒应予披露或回避事由的情形（扣1--3分）；','','0001',0,'Y','Y','2、存在隱瞞應予披露或回避事由的情形（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (856,'8164','00010003','3、由于个人原因推迟确定开庭时间、未预留开庭时间、已安排好的开庭或合议因个人原因延期或延时（造成严重后果的，如其他外地仲裁员已发生实际开支费用，酌情多扣分）（扣1--6分）；','','0001',0,'Y','Y','3、由于個人原因推遲確定開庭時間、未預留開庭時間、已安排好的開庭或合議因個人原因延期或延時（造成嚴重后果的，如其他外地仲裁員已發生實際開支費用，酌情多扣分）（扣1--6分）；','');
INSERT INTO `dictionary` VALUES (857,'8164','00010004','4、忘记开庭时间的（扣1--3分）；开庭忘记带材料的（扣1―5分）；','','0001',0,'Y','Y','4、忘記開庭時間的（扣1--3分）；開庭忘記帶材料的（扣1―5分）；','');
INSERT INTO `dictionary` VALUES (858,'8164','00010005','5、主动打电话询问案件程序情况的（加1--3分）；','','0001',0,'Y','Y','5、主動打電話詢問案件程序情況的（加1--3分）；','');
INSERT INTO `dictionary` VALUES (859,'8164','00010006','6、对案情熟悉，庭前合议时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；对案情不熟悉，庭前合议时未能提出初步意见或能提出拟调查事项的，导致庭审效率不高（扣1--5分）；庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。','','0001',0,'Y','Y','6、對案情熟悉，庭前合議時能夠提出初步意見或能提出擬調查事項的（不加分也不扣分）；對案情不熟悉，庭前合議時未能提出初步意見或能提出擬調查事項的，導致庭審效率不高（扣1--5分）；庭前能做好審理計劃書或歸納爭議點或作其他能提高庭審效率工作的（加1--10分并標注）；庭前沒有認真閱卷，合議時一味附和，提不出自己意見的（扣1--10分）。','');
INSERT INTO `dictionary` VALUES (860,'8164','0002','庭审中','','',0,'Y','Y','庭審中','');
INSERT INTO `dictionary` VALUES (861,'8164','00020001','7、开庭因非正当原因迟到（扣1--3分）；','','0002',0,'Y','Y','7、開庭因非正當原因遲到（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (862,'8164','00020002','8、开庭着装太随意或开庭发言太随意引起当事人不满的（扣1--3分）；','','0002',0,'Y','Y','8、開庭著裝太隨意或開庭發言太隨意引起當事人不滿的（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (863,'8164','00020003','9、没有预留足够庭审时间和合议时间（扣1--3分）；','','0002',0,'Y','Y','9、沒有預留足夠庭審時間和合議時間（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (864,'8164','00020004','10、庭审时仲裁员有接手机、发短信、随意离开开庭室等不当行为（扣1--3分）；','','0002',0,'Y','Y','10、庭審時仲裁員有接手機、發短信、隨意離開開庭室等不當行為（扣1--3分）；','');
INSERT INTO `dictionary` VALUES (865,'8164','00020005','11、在开庭审理及仲裁程序中，表现出偏袒倾向，包括代替或变相代替一方向另一方质证、辩论、提出请求或明显具有诱导性问题的（该考察点请谨慎评价）（扣1--10分）；','','0002',0,'Y','Y','11、在開庭審理及仲裁程序中，表現出偏袒傾向，包括代替或變相代替一方向另一方質證、辯論、提出請求或明顯具有誘導性問題的（該考察點請謹慎評價）（扣1--10分）；','');
INSERT INTO `dictionary` VALUES (866,'8164','00020006','12、庭审时心不在焉或打瞌睡（扣1--5分）；','','0002',0,'Y','Y','12、庭審時心不在焉或打瞌睡（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (867,'8164','00020007','13、不能控制庭审节奏，导致开庭时间拖延（扣1--5分）；','','0002',0,'Y','Y','13、不能控制庭審節奏，導致開庭時間拖延（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (868,'8164','00020008','14、不能抓住案件实质问题进行调查的（扣1--5分）；','','0002',0,'Y','Y','14、不能抓住案件實質問題進行調查的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (869,'8164','00020009','15、对仲裁程序和庭审程序不熟悉，引起当事人不满的（扣1--5分）；','','0002',0,'Y','Y','15、對仲裁程序和庭審程序不熟悉，引起當事人不滿的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (870,'8164','00020010','16、不和其他两位仲裁员沟通，独断专行的（扣1－5分）；','','0002',0,'Y','Y','16、不和其他兩位仲裁員溝通，獨斷專行的（扣1－5分）；','');
INSERT INTO `dictionary` VALUES (871,'8164','00020011','17、仲裁员掌握庭审水平和技巧的（可以加分或减分，分值在－5至5分之间）；','','0002',0,'Y','Y','17、仲裁員掌握庭審水平和技巧的（可以加分或減分，分值在－5至5分之間）；','');
INSERT INTO `dictionary` VALUES (872,'8164','00020012','18、调解时能促成当事人和解的（加1--5分并标注）。','','0002',0,'Y','Y','18、調解時能促成當事人和解的（加1--5分并標注）。','');
INSERT INTO `dictionary` VALUES (873,'8164','0003','庭审后','','',0,'Y','Y','庭審后','');
INSERT INTO `dictionary` VALUES (874,'8164','00030001','19、在未经仲裁委员会同意，擅自对外发表关于仲裁案件的不当言论的（扣1--5分）；','','0003',0,'Y','Y','19、在未經仲裁委員會同意，擅自對外發表關于仲裁案件的不當言論的（扣1--5分）；','');
INSERT INTO `dictionary` VALUES (875,'8164','00030002','20、不愿意起草裁决书又没有正当理由的（首席扣1--5分，边裁不扣分）；','','0003',0,'Y','Y','20、不愿意起草裁決書又沒有正當理由的（首席扣1--5分，邊裁不扣分）；','');
INSERT INTO `dictionary` VALUES (876,'8164','00030003','21、在首席不写裁决书时主动承揽起草裁决书任务的（边裁加1--10分，首席不加分）；','','0003',0,'Y','Y','21、在首席不寫裁決書時主動承攬起草裁決書任務的（邊裁加1--10分，首席不加分）；','');
INSERT INTO `dictionary` VALUES (877,'8164','00030004','22、对别人写的裁决书稿发表意见不及时（收到裁决书稿一个星期内没有发表意见的）或不负责（提不出任何理由，一味地附和）（扣1--10分）；','','0003',0,'Y','Y','22、對別人寫的裁決書稿發表意見不及時（收到裁決書稿一個星期內沒有發表意見的）或不負責（提不出任何理由，一味地附和）（扣1--10分）；','');
INSERT INTO `dictionary` VALUES (878,'8164','00030005','23、起草裁决书时间不算快（未因此导致裁决延期的）但质量高，无需作较大改动的（不加分也不扣分）；起草裁决书时间太晚，导致裁决延期的（扣1--10分）；起草裁决书时间太晚，导致裁决延期的，且质量不高的（扣1--15分）；起草裁决书时间快，但质量不高（扣1--5分）；承担起草裁决书的任务，但是找人代写（扣1--10分）；对秘书起草的裁决书没有认真审阅的（扣1--5分）；没有正当理由导致对裁决书核校意见反馈不及时的（收到核校意见一星期后才反馈）（扣1--5分）；对他人的中肯意见没有理由一味地不接受的（扣1--5分）。','','0003',0,'Y','Y','23、起草裁決書時間不算快（未因此導致裁決延期的）但質量高，無需作較大改動的（不加分也不扣分）；起草裁決書時間太晚，導致裁決延期的（扣1--10分）；起草裁決書時間太晚，導致裁決延期的，且質量不高的（扣1--15分）；起草裁決書時間快，但質量不高（扣1--5分）；承擔起草裁決書的任務，但是找人代寫（扣1--10分）；對秘書起草的裁決書沒有認真審閱的（扣1--5分）；沒有正當理由導致對裁決書核校意見反饋不及時的（收到核校意見一星期后才反饋）（扣1--5分）；對他人的中肯意見沒有理由一味地不接受的（扣1--5分）。','');
INSERT INTO `dictionary` VALUES (879,'8164','00030006','24、裁决书发出去后由于仲裁员的过错产生偏差导致社会效果不好的（扣1--10分）。','','0003',0,'Y','Y','24、裁決書發出去后由于仲裁員的過錯產生偏差導致社會效果不好的（扣1--10分）。','');
INSERT INTO `dictionary` VALUES (880,'8170','0000','仲裁员类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (881,'8170','0001','首席仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (882,'8170','0002','独任仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (883,'8175','0000','格式函对外开放','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (884,'8175','0001','仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (885,'8175','0002','当事方','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (886,'8201','0000','银行类别','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (887,'8201','0001','本地','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (888,'8201','0002','外地','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (889,'8201','0003','中行本地','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (890,'8201','0004','中行外地','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (891,'8201','0005','非中国银行','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (892,'8202','0000','其它报酬发放类别','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (893,'8202','0001','发放','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (894,'9000','0000','仲裁员参与活动情况','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (895,'9000','0001','参与','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (896,'9000','0002','请假','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (897,'9000','0003','无故不参与','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (898,'9001','0000','活动类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (899,'9001','0001','综合','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (900,'9001','0002','培训','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (901,'9001','0003','研讨','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (902,'9001','0004','沙龙','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (903,'9001','0005','问卷调查','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (904,'9001','0006','其他','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (905,'9002','0000','职业分类','','',0,'N','Y','職業分類','');
INSERT INTO `dictionary` VALUES (906,'9002','0001','从事法律研究、教学工作的','','',0,'Y','Y','從事法律研究、教學工作的','');
INSERT INTO `dictionary` VALUES (907,'9002','0002','从事经济贸易等专业工作的','','',0,'Y','Y','從事經濟貿易等專業工作的','');
INSERT INTO `dictionary` VALUES (908,'9002','0003','曾任审判员的','','',0,'Y','Y','曾任審判員的','');
INSERT INTO `dictionary` VALUES (909,'9002','0004','律师','','',0,'Y','Y','律師','');
INSERT INTO `dictionary` VALUES (910,'9002','0005','从事立法、执法、法律事物工作的','','',0,'Y','Y','從事立法、執法、法律事物工作的','');
INSERT INTO `dictionary` VALUES (911,'9003','0000','民族','','',0,'N','Y','民族','');
INSERT INTO `dictionary` VALUES (912,'9003','0001','汉','','',0,'Y','Y','漢','');
INSERT INTO `dictionary` VALUES (913,'9003','0002','满','','',0,'Y','Y','滿','');
INSERT INTO `dictionary` VALUES (914,'9003','0003','蒙','','',0,'Y','Y','蒙','');
INSERT INTO `dictionary` VALUES (915,'9003','0004','藏','','',0,'Y','Y','藏','');
INSERT INTO `dictionary` VALUES (916,'9003','0005','壮','','',0,'Y','Y','壯','');
INSERT INTO `dictionary` VALUES (917,'9003','0006','回','','',0,'Y','Y','回','');
INSERT INTO `dictionary` VALUES (918,'9003','0007','苗','','',0,'Y','Y','苗','');
INSERT INTO `dictionary` VALUES (919,'9003','0008','彝','','',0,'Y','Y','彝','');
INSERT INTO `dictionary` VALUES (920,'9003','0009','土家','','',0,'Y','Y','土家','');
INSERT INTO `dictionary` VALUES (921,'9003','0010','朝鲜','','',0,'Y','Y','朝鮮','');
INSERT INTO `dictionary` VALUES (922,'9003','0011','维吾尔','','',0,'Y','Y','維吾爾','');
INSERT INTO `dictionary` VALUES (923,'9003','0012','赫哲族','','',0,'Y','Y','赫哲族','');
INSERT INTO `dictionary` VALUES (924,'9003','0013','傣族','','',0,'Y','Y','傣族','');
INSERT INTO `dictionary` VALUES (925,'9003','0014','白族','','',0,'Y','Y','白族','');
INSERT INTO `dictionary` VALUES (926,'9003','0015','其他','','',0,'Y','Y','其他','');
INSERT INTO `dictionary` VALUES (927,'9004','0000','身份类型','','',0,'N','Y','身份類型','');
INSERT INTO `dictionary` VALUES (928,'9004','0001','教授及研究员','','',0,'Y','Y','教授及研究員','');
INSERT INTO `dictionary` VALUES (929,'9004','0002','副教授及副研究员','','',0,'Y','Y','副教授及副研究員','');
INSERT INTO `dictionary` VALUES (930,'9004','0003','高级工程师','','',0,'Y','Y','高級工程師','');
INSERT INTO `dictionary` VALUES (931,'9004','0004','高级经济师','','',0,'Y','Y','高級經濟師','');
INSERT INTO `dictionary` VALUES (932,'9004','0005','律师','','',0,'Y','Y','律師','');
INSERT INTO `dictionary` VALUES (933,'9004','0006','行政法官','','',0,'Y','Y','行政法官','');
INSERT INTO `dictionary` VALUES (934,'9004','0007','其他身份','','',0,'Y','Y','其他身份','');
INSERT INTO `dictionary` VALUES (935,'9004','0008','退休法官','','',0,'Y','Y','退休法官','');
INSERT INTO `dictionary` VALUES (936,'9005','0000','单位类型','','',0,'N','Y','單位類型','');
INSERT INTO `dictionary` VALUES (937,'9005','0001','大专院校','','',0,'Y','Y','大專院校','');
INSERT INTO `dictionary` VALUES (938,'9005','0002','研究机构','','',0,'Y','Y','研究機構','');
INSERT INTO `dictionary` VALUES (939,'9005','0003','政府部门','','',0,'Y','Y','政府部門','');
INSERT INTO `dictionary` VALUES (940,'9005','0004','律师事务所','','',0,'Y','Y','律師事務所','');
INSERT INTO `dictionary` VALUES (941,'9005','0005','其他类型单位','','',0,'Y','Y','其他類型單位','');
INSERT INTO `dictionary` VALUES (942,'9006','0000','学历','','',0,'N','Y','學歷','');
INSERT INTO `dictionary` VALUES (943,'9006','0001','博士后','','',0,'Y','Y','博士后','');
INSERT INTO `dictionary` VALUES (944,'9006','0002','博士研究生','','',0,'Y','Y','博士研究生','');
INSERT INTO `dictionary` VALUES (945,'9006','0003','硕士研究生','','',0,'Y','Y','碩士研究生','');
INSERT INTO `dictionary` VALUES (946,'9006','0004','本科','','',0,'Y','Y','本科','');
INSERT INTO `dictionary` VALUES (947,'9006','0005','不详','','',0,'Y','Y','不詳','');
INSERT INTO `dictionary` VALUES (948,'9006','0006','为空','','',0,'Y','Y','為空','');
INSERT INTO `dictionary` VALUES (949,'9007','0000','学位','','',0,'N','Y','學位','');
INSERT INTO `dictionary` VALUES (950,'9007','0001','博士','','',0,'Y','Y','博士','');
INSERT INTO `dictionary` VALUES (951,'9007','0002','硕士','','',0,'Y','Y','碩士','');
INSERT INTO `dictionary` VALUES (952,'9007','0003','学士','','',0,'Y','Y','學士','');
INSERT INTO `dictionary` VALUES (953,'9007','0004','不详','','',0,'Y','Y','不詳','');
INSERT INTO `dictionary` VALUES (954,'9007','0005','为空','','',0,'Y','Y','為空','');
INSERT INTO `dictionary` VALUES (955,'9008','0000','语种','','',0,'N','Y','語種','');
INSERT INTO `dictionary` VALUES (956,'9008','0001','英语','','',0,'Y','Y','英語','');
INSERT INTO `dictionary` VALUES (957,'9008','0002','法语','','',0,'Y','Y','法語','');
INSERT INTO `dictionary` VALUES (958,'9008','0003','德语','','',0,'Y','Y','德語','');
INSERT INTO `dictionary` VALUES (959,'9008','0004','日语','','',0,'Y','Y','日語','');
INSERT INTO `dictionary` VALUES (960,'9008','0005','俄语','','',0,'Y','Y','俄語','');
INSERT INTO `dictionary` VALUES (961,'9008','0006','阿拉伯语','','',0,'Y','Y','阿拉伯語','');
INSERT INTO `dictionary` VALUES (962,'9008','0007','朝鲜语','','',0,'Y','Y','朝鮮語','');
INSERT INTO `dictionary` VALUES (963,'9008','0008','意大利语','','',0,'Y','Y','意大利語','');
INSERT INTO `dictionary` VALUES (964,'9008','0009','拉丁文','','',0,'Y','Y','拉丁文','');
INSERT INTO `dictionary` VALUES (965,'9008','0010','塞-克','','',0,'Y','Y','塞-克','');
INSERT INTO `dictionary` VALUES (966,'9009','0000','听说能力','','',0,'N','Y','聽說能力','');
INSERT INTO `dictionary` VALUES (967,'9009','0001','普通','','',0,'Y','Y','普通','');
INSERT INTO `dictionary` VALUES (968,'9009','0002','精通','','',0,'Y','Y','精通','');
INSERT INTO `dictionary` VALUES (969,'9010','0000','读写能力','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (970,'9010','0001','普通','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (971,'9010','0002','精通','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (972,'9011','0000','仲裁员类别','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (973,'9011','0001','首席仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (974,'9011','0002','第一仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (975,'9011','0003','第二仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (976,'9011','0004','独任仲裁员','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (977,'9012','0000','精通专业','','',0,'N','Y','精通專業','');
INSERT INTO `dictionary` VALUES (978,'9012','0001','国际冲突法','','',0,'Y','Y','國際沖突法','');
INSERT INTO `dictionary` VALUES (979,'9012','0002','合同','','',0,'Y','Y','合同','');
INSERT INTO `dictionary` VALUES (980,'9012','0003','技术合同','','',0,'Y','Y','技術合同','');
INSERT INTO `dictionary` VALUES (981,'9012','0004','房地产','','',0,'Y','Y','房地產','');
INSERT INTO `dictionary` VALUES (982,'9012','0005','工程建筑','','',0,'Y','Y','工程建筑','');
INSERT INTO `dictionary` VALUES (983,'9012','0006','信贷','','',0,'Y','Y','信貸','');
INSERT INTO `dictionary` VALUES (984,'9012','0007','保险','','',0,'Y','Y','保險','');
INSERT INTO `dictionary` VALUES (985,'9012','0008','股票证券','','',0,'Y','Y','股票證券','');
INSERT INTO `dictionary` VALUES (986,'9012','0009','期货','','',0,'Y','Y','期貨','');
INSERT INTO `dictionary` VALUES (987,'9012','0010','投资','','',0,'Y','Y','投資','');
INSERT INTO `dictionary` VALUES (988,'9012','0011','国际贸易','','',0,'Y','Y','國際貿易','');
INSERT INTO `dictionary` VALUES (989,'9012','0012','侵权','','',0,'Y','Y','侵權','');
INSERT INTO `dictionary` VALUES (990,'9012','0013','专利','','',0,'Y','Y','專利','');
INSERT INTO `dictionary` VALUES (991,'9012','0014','商标','','',0,'Y','Y','商標','');
INSERT INTO `dictionary` VALUES (992,'9012','0015','版权','','',0,'Y','Y','版權','');
INSERT INTO `dictionary` VALUES (993,'9012','0016','中介服务合同','','',0,'Y','Y','中介服務合同','');
INSERT INTO `dictionary` VALUES (994,'9012','0017','广告代理合同','','',0,'Y','Y','廣告代理合同','');
INSERT INTO `dictionary` VALUES (995,'9012','0018','城市污水处理','','',0,'Y','Y','城市污水處理','');
INSERT INTO `dictionary` VALUES (996,'9012','0019','房屋租赁','','',0,'Y','Y','房屋租賃','');
INSERT INTO `dictionary` VALUES (997,'9012','0020','联营','','',0,'Y','Y','聯營','');
INSERT INTO `dictionary` VALUES (998,'9012','0021','给水排水工程','','',0,'Y','Y','給水排水工程','');
INSERT INTO `dictionary` VALUES (999,'9012','0022','知识产权','','',0,'Y','Y','知識產權','');
INSERT INTO `dictionary` VALUES (1000,'9012','0023','环境工程','','',0,'Y','Y','環境工程','');
INSERT INTO `dictionary` VALUES (1001,'9012','0024','商贸','','',0,'Y','Y','商貿','');
INSERT INTO `dictionary` VALUES (1002,'9012','0025','票据法','','',0,'Y','Y','票據法','');
INSERT INTO `dictionary` VALUES (1003,'9012','0026','国际工程','','',0,'Y','Y','國際工程','');
INSERT INTO `dictionary` VALUES (1004,'9012','0027','海商法','','',0,'Y','Y','海商法','');
INSERT INTO `dictionary` VALUES (1005,'9012','0028','地下工程','','',0,'Y','Y','地下工程','');
INSERT INTO `dictionary` VALUES (1006,'9012','0029','隧道工程','','',0,'Y','Y','隧道工程','');
INSERT INTO `dictionary` VALUES (1007,'9012','0030','金融','','',0,'Y','Y','金融	','');
INSERT INTO `dictionary` VALUES (1008,'9012','0031','基础工程','','',0,'Y','Y','基礎工程','');
INSERT INTO `dictionary` VALUES (1009,'9012','0032','著作权','','',0,'Y','Y','著作權	','');
INSERT INTO `dictionary` VALUES (1010,'9012','0033','发电厂建筑与结构','','',0,'Y','Y','發電廠建筑與結構','');
INSERT INTO `dictionary` VALUES (1011,'9012','0034','国际商法','','',0,'Y','Y',' 國際商法','');
INSERT INTO `dictionary` VALUES (1012,'9012','0035','工业与民用建筑','','',0,'Y','Y','工業與民用建筑','');
INSERT INTO `dictionary` VALUES (1013,'9012','0036','交通管理','','',0,'Y','Y',' 交通管理','');
INSERT INTO `dictionary` VALUES (1014,'9012','0037','计算机软件','','',0,'Y','Y','計算機軟件','');
INSERT INTO `dictionary` VALUES (1015,'9012','0038','水利工程','','',0,'Y','Y','水利工程','');
INSERT INTO `dictionary` VALUES (1016,'9012','0039','市政工程规划','','',0,'Y','Y','市政工程規劃','');
INSERT INTO `dictionary` VALUES (1017,'9012','0040','建筑结构','','',0,'Y','Y','建筑結構','');
INSERT INTO `dictionary` VALUES (1018,'9012','0041','道路工程','','',0,'Y','Y',' 道路工程','');
INSERT INTO `dictionary` VALUES (1019,'9012','0042','工程经济与管理','','',0,'Y','Y','工程經濟與管理','');
INSERT INTO `dictionary` VALUES (1020,'9012','0043','FIDIC及FIDIC条款','','',0,'Y','Y','FIDIC及FIDIC條款','');
INSERT INTO `dictionary` VALUES (1021,'9012','0044','水工抗震','','',0,'Y','Y','水工抗震','');
INSERT INTO `dictionary` VALUES (1022,'9012','0045','建设工程合同','','',0,'Y','Y','建設工程合同','');
INSERT INTO `dictionary` VALUES (1023,'9012','0046','海洋工程','','',0,'Y','Y','海洋工程','');
INSERT INTO `dictionary` VALUES (1024,'9012','0047','国际经济合作实务','','',0,'Y','Y','國際經濟合作實務','');
INSERT INTO `dictionary` VALUES (1025,'9012','0048','公司收购兼并','','',0,'Y','Y','公司收購兼并','');
INSERT INTO `dictionary` VALUES (1026,'9012','0049','土地管理','','',0,'Y','Y','土地管理','');
INSERT INTO `dictionary` VALUES (1027,'9012','0050','房屋管理','','',0,'Y','Y','房屋管理','');
INSERT INTO `dictionary` VALUES (1028,'9012','0051','外商投资法','','',0,'Y','Y','外商投資法','');
INSERT INTO `dictionary` VALUES (1029,'9012','0052','土地评估','','',0,'Y','Y','土地評估','');
INSERT INTO `dictionary` VALUES (1030,'9012','0053','土地出让转让','','',0,'Y','Y','土地出讓轉讓	','');
INSERT INTO `dictionary` VALUES (1031,'9012','0054','土地资产管理与经营','','',0,'Y','Y','土地資產管理與經營','');
INSERT INTO `dictionary` VALUES (1032,'9012','0055','土地开发','','',0,'Y','Y','土地開發','');
INSERT INTO `dictionary` VALUES (1033,'9012','0056','土地产权','','',0,'Y','Y','土地產權','');
INSERT INTO `dictionary` VALUES (1034,'9012','0057','外商投资','','',0,'Y','Y','外商投資','');
INSERT INTO `dictionary` VALUES (1035,'9012','0058','超高压输变电工程设计','','',0,'Y','Y','超高壓輸變電工程設計','');
INSERT INTO `dictionary` VALUES (1036,'9012','0059','市政管网','','',0,'Y','Y','市政管網','');
INSERT INTO `dictionary` VALUES (1037,'9012','0060','买卖合同','','',0,'Y','Y','買賣合同','');
INSERT INTO `dictionary` VALUES (1038,'9012','0061','供电、水、气、热水合同','','',0,'Y','Y','供電、水、氣、熱水合同','');
INSERT INTO `dictionary` VALUES (1039,'9012','0062','咨询建设','','',0,'Y','Y','咨詢建設','');
INSERT INTO `dictionary` VALUES (1040,'9012','0063','借款合同','','',0,'Y','Y','借款合同','');
INSERT INTO `dictionary` VALUES (1041,'9012','0064','租赁合同','','',0,'Y','Y','租賃合同','');
INSERT INTO `dictionary` VALUES (1042,'9012','0065','道路与交通工程','','',0,'Y','Y','道路與交通工程','');
INSERT INTO `dictionary` VALUES (1043,'9012','0066','承揽合同','','',0,'Y','Y','承攬合同','');
INSERT INTO `dictionary` VALUES (1044,'9012','0067','运输合同','','',0,'Y','Y','運輸合同','');
INSERT INTO `dictionary` VALUES (1045,'9012','0068','砼结构腐蚀','','',0,'Y','Y','砼結構腐蝕','');
INSERT INTO `dictionary` VALUES (1046,'9012','0069','保管合同','','',0,'Y','Y','保管合同','');
INSERT INTO `dictionary` VALUES (1047,'9012','0070','仓储合同','','',0,'Y','Y','倉儲合同','');
INSERT INTO `dictionary` VALUES (1048,'9012','0071','委托合同','','',0,'Y','Y','委托合同','');
INSERT INTO `dictionary` VALUES (1049,'9012','0072','行纪合同','','',0,'Y','Y','行紀合同','');
INSERT INTO `dictionary` VALUES (1050,'9012','0073','居间合同','','',0,'Y','Y','居間合同','');
INSERT INTO `dictionary` VALUES (1051,'9012','0074','合作合同','','',0,'Y','Y','合作合同','');
INSERT INTO `dictionary` VALUES (1052,'9012','0075','广告合同','','',0,'Y','Y','廣告合同','');
INSERT INTO `dictionary` VALUES (1053,'9012','0076','标准管理','','',0,'Y','Y','標準管理','');
INSERT INTO `dictionary` VALUES (1054,'9012','0077','桥梁设计','','',0,'Y','Y','橋梁設計','');
INSERT INTO `dictionary` VALUES (1055,'9012','0078','国际商事仲裁','','',0,'Y','Y','國際商事仲裁','');
INSERT INTO `dictionary` VALUES (1056,'9012','0079','土地使用权转让','','',0,'Y','Y','土地使用權轉讓','');
INSERT INTO `dictionary` VALUES (1057,'9012','0080','商品房买卖','','',0,'Y','Y','商品房買賣','');
INSERT INTO `dictionary` VALUES (1058,'9012','0081','房地产联建、开发','','',0,'Y','Y','房地產聯建、開發','');
INSERT INTO `dictionary` VALUES (1059,'9012','0082','拆迁补偿','','',0,'Y','Y','拆遷補償','');
INSERT INTO `dictionary` VALUES (1060,'9012','0083','物业管理','','',0,'Y','Y','物業管理','');
INSERT INTO `dictionary` VALUES (1061,'9012','0084','公司','','',0,'Y','Y','公司','');
INSERT INTO `dictionary` VALUES (1062,'9012','0085','公司设立','','',0,'Y','Y','公司設立','');
INSERT INTO `dictionary` VALUES (1063,'9012','0086','股东权益','','',0,'Y','Y','股東權益','');
INSERT INTO `dictionary` VALUES (1064,'9012','0087','公司分立、合并','','',0,'Y','Y','公司分立、合并','');
INSERT INTO `dictionary` VALUES (1065,'9012','0088','公司清算','','',0,'Y','Y','公司清算','');
INSERT INTO `dictionary` VALUES (1066,'9012','0089','银行业务','','',0,'Y','Y','銀行業務','');
INSERT INTO `dictionary` VALUES (1067,'9012','0090','工程营造','','',0,'Y','Y','工程營造','');
INSERT INTO `dictionary` VALUES (1068,'9012','0091','证券','','',0,'Y','Y','證券','');
INSERT INTO `dictionary` VALUES (1069,'9012','0092','建筑工程','','',0,'Y','Y','建筑工程','');
INSERT INTO `dictionary` VALUES (1070,'9012','0093','国际商务','','',0,'Y','Y','國際商務','');
INSERT INTO `dictionary` VALUES (1071,'9012','0094','担保','','',0,'Y','Y','擔保','');
INSERT INTO `dictionary` VALUES (1072,'9012','0095','国际金融','','',0,'Y','Y','國際金融','');
INSERT INTO `dictionary` VALUES (1073,'9012','0096','计算机信息技术','','',0,'Y','Y','計算機信息技術	','');
INSERT INTO `dictionary` VALUES (1074,'9012','0097','其它','','',0,'Y','Y','其它','');
INSERT INTO `dictionary` VALUES (1075,'9012','0098','国际私法','','',0,'Y','Y','國際私法','');
INSERT INTO `dictionary` VALUES (1076,'9013','0000','法院意见','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1077,'9013','0001','驳回','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1078,'9013','0002','撤销','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1079,'9013','0003','不予执行','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1080,'9013','0004','建议重审','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1081,'9014','0000','执行情况','','',0,'N','Y','執行情況','');
INSERT INTO `dictionary` VALUES (1082,'9014','0001','自动全部执行','','',0,'Y','Y','自動全部執行','');
INSERT INTO `dictionary` VALUES (1083,'9014','0002','自动部分执行','','',0,'Y','Y','自動部分執行','');
INSERT INTO `dictionary` VALUES (1084,'9014','0003','强制全部执行','','',0,'Y','Y',' 強制全部執行','');
INSERT INTO `dictionary` VALUES (1085,'9014','0004','强制部分执行','','',0,'Y','Y','強制部分執行','');
INSERT INTO `dictionary` VALUES (1086,'9014','0005','没有执行','','',0,'Y','Y','沒有執行','');
INSERT INTO `dictionary` VALUES (1087,'9014','0006','因撤案等原因无需执行','','',0,'Y','Y','因撤案等原因無需執行','');
INSERT INTO `dictionary` VALUES (1088,'9015','0000','反馈意见类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1089,'9015','0001','表扬','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1090,'9015','0002','批评','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1091,'9015','0003','表扬+批评','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1092,'9015','0004','请求','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1093,'9015','0005','表扬+请求','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1094,'9015','0006','批评+请求','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1095,'9015','0007','表扬+批评+请求','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1096,'9016','0000','反馈涉及类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1097,'9016','0001','仲裁员评价','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1098,'9016','0002','对裁决书的评价','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1099,'9016','0003','对助理的评价','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1100,'9016','0004','其它','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1101,'9017','0000','反馈信息人','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1102,'9017','0001','当事人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1103,'9017','0002','代理人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1104,'9017','0003','其他','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1105,'9018','0000','月份','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1106,'9018','0001','一月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1107,'9018','0002','二月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1108,'9018','0003','三月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1109,'9018','0004','四月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1110,'9018','0005','五月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1111,'9018','0006','六月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1112,'9018','0007','七月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1113,'9018','0008','八月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1114,'9018','0009','九月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1115,'9018','0010','十月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1116,'9018','0011','十一月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1117,'9018','0012','十二月','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1118,'9019','0000','行业','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1119,'9019','0001','农林牧渔业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1120,'9019','00010001','农林牧渔业','','0001',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1121,'9019','00010002','小学','','0001',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1122,'9019','0002','采矿和采石业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1123,'9019','00020001','采矿和采石业','','0002',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1124,'9019','0003','制造业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1125,'9019','00030001','食品、饮料制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1126,'9019','00030002','烟草制品制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1127,'9019','00030003','纺织品、服装制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1128,'9019','00030004','皮革和相关产品制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1129,'9019','00030005','木材、木材制品及软木制品的制造(包括家具)、草编制品及编织材料物品的制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1130,'9019','00030006','纸和纸制品制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1131,'9019','00030007','印刷及与印刷相关服务','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1132,'9019','00030008','焦炭和精炼石油产品制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1133,'9019','00030009','化学品及化学制品制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1134,'9019','00030010','基本医药产品和医药制剂制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1135,'9019','00030011','橡胶和塑料制品制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1136,'9019','00030012','钢铁、有色金属制造与铸造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1137,'9019','00030013','其他金属制品制造（机械设备除外）','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1138,'9019','00030014','计算机、电子产品和光学产品的制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1139,'9019','00030015','电力设备的制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1140,'9019','00030016','汽车、挂车、半挂车等运输设备制造','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1141,'9019','00030017','机械和设备的修理和安装','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1142,'9019','00030018','其他制造业','','0003',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1143,'9019','0004','电、煤气、蒸汽供应','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1144,'9019','00040001','电、煤气、蒸汽供应','','0004',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1145,'9019','0005','供水、污水处理、废物回收处理','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1146,'9019','00050001','供水、污水处理、废物回收处理','','0005',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1147,'9019','0006','建筑业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1148,'9019','00060001','房屋及土木工程建设','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1149,'9019','00060002','建筑设备安装','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1150,'9019','00060003','建筑装修和装饰','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1151,'9019','00060004','其他建筑业','','0006',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1152,'9019','0007','批发和零售业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1153,'9019','00070001','汽车销售、修理与保养','','0007',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1154,'9019','00070002','批发贸易（汽车除外）','','0007',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1155,'9019','00070003','店铺零售贸易（汽车除外）','','0007',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1156,'9019','00070004','通过邮购和因特网进行的零售','','0007',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1157,'9019','00070005','其他批发和零售业','','0007',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1158,'9019','0008','运输、储存和邮政业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1159,'9019','00080001','海陆空运输','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1160,'9019','00080002','邮政和邮递','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1161,'9019','00080003','运输与仓储等附属活动','','0008',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1162,'9019','0009','酒店与餐饮业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1163,'9019','00090001','酒店与餐饮业','','0009',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1164,'9019','0010','信息和通信业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1165,'9019','00100001','出版活动','','0010',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1166,'9019','00100002','影视作品制作与出品','','0010',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1167,'9019','00100003','广播电视','','0010',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1168,'9019','00100004','电信服务','','0010',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1169,'9019','00100005','门户网站等信息服务','','0010',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1170,'9019','00100006','计算机软件设计及服务','','0010',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1171,'9019','00100007','其他信息和通信业','','0010',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1172,'9019','0011','金融业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1173,'9019','00110001','银行','','0011',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1174,'9019','00110002','证券','','0011',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1175,'9019','00110003','保险','','0011',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1176,'9019','00110004','信托','','0011',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1177,'9019','00110005','基金','','0011',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1178,'9019','00110006','期货','','0011',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1179,'9019','00110007','金融租赁','','0011',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1180,'9019','00110008','金融混业经营','','0011',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1181,'9019','0012','房地产业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1182,'9019','00120001','房地产开发经营','','0012',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1183,'9019','00120002','物业管理','','0012',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1184,'9019','00120003','房地产销售中介','','0012',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1185,'9019','0013','专业服务、科学和技术活动','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1186,'9019','00130001','法律、会计及管理等专业服务','','0013',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1187,'9019','00130002','建筑工程技术咨询服务','','0013',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1188,'9019','00130003','科学研究与发展','','0013',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1189,'9019','00130004','广告业和市场调研','','0013',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1190,'9019','00130005','其他专业、科学和技术活动','','0013',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1191,'9019','0014','商务辅助活动','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1192,'9019','00140001','出租和租赁活动','','0014',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1193,'9019','00140002','就业活动','','0014',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1194,'9019','00140003','旅行社、旅游经营者、预订服务及相关活动','','0014',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1195,'9019','00140004','调查和安全保卫活动','','0014',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1196,'9019','00140005','为楼宇和院落景观活动提供的服务','','0014',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1197,'9019','00140006','办公室行政管理、办公支持和其他企业辅助活动','','0014',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1198,'9019','00140007','其他商务辅助服务活动','','0014',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1199,'9019','0015','教育','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1200,'9019','00150001','教育','','0015',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1201,'9019','0016','医疗与护理','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1202,'9019','00160001','医疗与护理','','0015',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1203,'9019','0017','文化艺术、体育和娱乐业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1204,'9019','00170001','文化艺术、体育和娱乐业','','0015',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1205,'9019','0018','其他服务业','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1206,'9019','00180001','其他服务业','','0018',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1207,'9019','9999','自然人','','',9999,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1208,'9019','999901','自然人','','9999',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1209,'9020','0000','合同类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1210,'9020','0001','合同类型一','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1211,'9020','0002','合同类型二','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1212,'9021','0000','仲裁员报酬调整系数','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1213,'9021','0001','1.3','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1214,'9021','0002','1.2','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1215,'9021','0003','1.1','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1216,'9021','0004','1','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1217,'9021','0005','0.9','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1218,'9021','0006','0.8','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1219,'9021','0007','0.7','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1220,'9022','0000','仲裁员报酬——裁决书类型','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1221,'9022','0001','完整裁决书','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1222,'9022','0002','仲裁庭意见','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1223,'9022','0003','中间裁决、部分裁决','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1224,'9023','0000','裁决书评价','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1225,'9023','0001','A  很好','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1226,'9023','0002','B  较好','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1227,'9023','0003','C  一般','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1228,'9023','0004','D  差','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1229,'9024','0000','因仲裁员原因延长裁限情况','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1230,'9024','0001','B  一次','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1231,'9024','0002','C  两次','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1232,'9024','0003','D  三次','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1233,'9024','0004','E  三次以上','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1234,'9025','0000','仲裁员违反《仲裁员行为考察规定》第十条任一款','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1235,'9025','0001','C  情节较轻，未造成较大影响','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1236,'9025','0002','D  情节较重，造成较大影响','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1237,'9025','0003','E  情节特别严重，造成恶劣影响，完全扣除绩效考核报酬。','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1238,'9026','0000','仲裁员绩效报酬评价','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1239,'9026','0001','A  100%','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1240,'9026','0002','B  75%','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1241,'9026','0003','C  50%','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1242,'9026','0004','D  25%','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1243,'9026','0005','E  0%','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1244,'90270000','0000','报酬发放税种','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1245,'90270001','0.05','营业税5%(0.05)','','',2,'N','Y','營業稅5%(0.05)','');
INSERT INTO `dictionary` VALUES (1246,'90270002','0.033','个人所得税2%(0.033)','','',9,'N','N','','');
INSERT INTO `dictionary` VALUES (1247,'90270003','0.015','个人所得税(0.015)','','',8,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1248,'90270004','0.006','营业税附加12% (0.006)','','',3,'N','N','','');
INSERT INTO `dictionary` VALUES (1249,'90270005','0.005','营业税附加12%(0.005)','','',4,'N','N','','');
INSERT INTO `dictionary` VALUES (1250,'90270006','0.03*0.07','城建税','','',5,'Y','Y','城建稅','');
INSERT INTO `dictionary` VALUES (1251,'90270007','0.03*0.03','教育费附加','','',6,'Y','Y','教育費附加','');
INSERT INTO `dictionary` VALUES (1252,'90270008','0.03*0.02','地方教育费附加2%','','',7,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1253,'90270009','0.03','增值税3%','','',1,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1254,'9028','0000','仲裁员所在地类别','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1255,'9028','0001','中国内地','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1256,'9028','0002','香港','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1257,'9028','0003','澳门','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1258,'9028','0004','台湾','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1259,'9028','0005','外籍','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1260,'9029','0000','外网公告类型','','',0,'N','Y','外網公告類型','');
INSERT INTO `dictionary` VALUES (1261,'9029','0001','公告类型一','','',0,'Y','Y','公告類型一','');
INSERT INTO `dictionary` VALUES (1262,'9029','0002','公告类型2','','',0,'Y','Y','公告類型2','');
INSERT INTO `dictionary` VALUES (1263,'9030','0000','仲裁员兼职情况','','',0,'N','Y','仲裁員兼職情況	','');
INSERT INTO `dictionary` VALUES (1264,'9030','h','在本会兼职','','',0,'Y','Y','在本會兼職','');
INSERT INTO `dictionary` VALUES (1265,'9030','w','在其它会兼职','','',0,'Y','Y','在其它會兼職','');
INSERT INTO `dictionary` VALUES (1266,'9031','0','非在职','','',0,'Y','Y','非在職	','');
INSERT INTO `dictionary` VALUES (1267,'9031','0000','工作状况','','',0,'N','Y','工作狀況','');
INSERT INTO `dictionary` VALUES (1268,'9031','1','在职','','',0,'Y','Y','在職','');
INSERT INTO `dictionary` VALUES (1269,'9032','0','不能','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1270,'9032','0000','仲裁员能否处理涉外案件','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1271,'9032','1','能','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1272,'9033','0','无','','',0,'Y','Y','無','');
INSERT INTO `dictionary` VALUES (1273,'9033','0000','仲裁员有无高职','','',0,'N','Y','仲裁員有無高職','');
INSERT INTO `dictionary` VALUES (1274,'9033','1','有','','',0,'Y','Y','有','');
INSERT INTO `dictionary` VALUES (1275,'9100','0000','仲裁员行业信息','','',0,'N','Y','仲裁員行業信息			','');
INSERT INTO `dictionary` VALUES (1276,'9100','0001','行业1','','',0,'Y','Y','行業1','');
INSERT INTO `dictionary` VALUES (1277,'9100','0002','行业2','','',0,'Y','Y','行業2','');
INSERT INTO `dictionary` VALUES (1278,'9101','0000','仲裁员附件','','',0,'N','Y','仲裁員附件','');
INSERT INTO `dictionary` VALUES (1279,'9101','0001','证书','','',0,'Y','Y','證書','');
INSERT INTO `dictionary` VALUES (1280,'9101','0002','保密协议','','',0,'Y','Y','保密協議','');
INSERT INTO `dictionary` VALUES (1281,'9101','0003','身份证复印件+个人签字','','',0,'Y','Y','身份證復印件+個人簽字	','');
INSERT INTO `dictionary` VALUES (1282,'9102','0000','当事人证件','','',0,'N','Y','當事人證件','');
INSERT INTO `dictionary` VALUES (1283,'9102','1001','身份证','','',0,'Y','Y','身份證	','');
INSERT INTO `dictionary` VALUES (1284,'9102','1002','律师证','','',0,'Y','Y','律師證','');
INSERT INTO `dictionary` VALUES (1285,'9103','0000','案件附件（内外网）','','',0,'N','Y','案件附件（內外網）','');
INSERT INTO `dictionary` VALUES (1286,'9103','0101','裁决书','','',0,'Y','Y','裁決書','');
INSERT INTO `dictionary` VALUES (1287,'9103','0102','调解书','','',0,'Y','Y','調解書','');
INSERT INTO `dictionary` VALUES (1288,'9103','0103','书面意见','','',0,'Y','Y','書面意見','');
INSERT INTO `dictionary` VALUES (1289,'9801','0000','当事人类型','','',0,'N','Y','当事人类型','');
INSERT INTO `dictionary` VALUES (1290,'9801','1','申请方','','',0,'Y','Y','申請方	','');
INSERT INTO `dictionary` VALUES (1291,'9801','2','被申请方','','',0,'Y','Y','被申請方','');
INSERT INTO `dictionary` VALUES (1292,'9901','0000','布尔值 Y是 N否','','',0,'N','Y','布爾值 Y是 N否','');
INSERT INTO `dictionary` VALUES (1293,'9901','N','否','','',2,'Y','Y','否','');
INSERT INTO `dictionary` VALUES (1294,'9901','Y','是','','',1,'Y','Y','是','');
INSERT INTO `dictionary` VALUES (1295,'9902','0','否','','',2,'Y','Y','否','');
INSERT INTO `dictionary` VALUES (1296,'9902','0000','布尔值 1是 0否','','',0,'N','Y','布爾值 1是 0否','');
INSERT INTO `dictionary` VALUES (1297,'9902','1','是','','',1,'Y','Y','是','');
INSERT INTO `dictionary` VALUES (1298,'9903','0000','布尔值  Y能 N否','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1299,'9903','N','否','','',2,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1300,'9903','Y','能','','',1,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1301,'9904','0','否','','',2,'Y','Y','否','');
INSERT INTO `dictionary` VALUES (1302,'9904','0000','布尔值  1能 0否','','',0,'N','Y','布爾值 1是 0否','');
INSERT INTO `dictionary` VALUES (1303,'9904','1','能','','',1,'Y','Y','能','');
INSERT INTO `dictionary` VALUES (1304,'9905','0000','是否1、2','','',0,'N','Y','是否1、2','');
INSERT INTO `dictionary` VALUES (1305,'9905','1','是','','',0,'Y','Y','是','');
INSERT INTO `dictionary` VALUES (1306,'9905','2','否','','',0,'Y','Y','否','');
INSERT INTO `dictionary` VALUES (1307,'9802','0000','报酬类别1：报酬，2：奖励，3：扣减，4：案件其他报酬','','',0,'N','Y','報酬類別1：報酬，2：獎勵，3：扣減，4：案件其他報酬','');
INSERT INTO `dictionary` VALUES (1308,'9802','1','报酬','','',0,'Y','Y',' 報酬','');
INSERT INTO `dictionary` VALUES (1309,'9802','2','奖励','','',0,'Y','Y','獎勵','');
INSERT INTO `dictionary` VALUES (1310,'9802','3','扣减','','',0,'Y','Y','扣減','');
INSERT INTO `dictionary` VALUES (1311,'9802','4','报 酬','','',0,'Y','Y','報 酬','');
INSERT INTO `dictionary` VALUES (1312,'9906','0000','案件文档类型 文书类别，0001：开庭文书，0002：结案文书，0003：法院裁定文件序号，0004：秘书处例会纪要，0005：合同，0006：管辖权决定,0007:仲裁员回避','','',0,'N','Y','案件文檔類型 文書類別，0001：開庭文書，0002：結案文書，0003：法院裁定文件序號，0004：秘書處例會紀要，0005：合同，0006：管轄權決定,0007:仲裁員回避	','');
INSERT INTO `dictionary` VALUES (1313,'9906','0001','开庭文书','','',0,'Y','Y','開庭文書','');
INSERT INTO `dictionary` VALUES (1314,'9906','0002','结案文书','','',0,'Y','Y','結案文書','');
INSERT INTO `dictionary` VALUES (1315,'9906','0003','法院裁定文件序号','','',0,'Y','Y','法院裁定文件序號','');
INSERT INTO `dictionary` VALUES (1316,'9906','0004','秘书处例会纪要','','',0,'Y','Y','秘書處例會紀要','');
INSERT INTO `dictionary` VALUES (1317,'9906','0005','合同','','',0,'Y','Y','合同','');
INSERT INTO `dictionary` VALUES (1318,'9906','0006','管辖权决定','','',0,'Y','Y','管轄權決定','');
INSERT INTO `dictionary` VALUES (1319,'9906','0007','仲裁员回避','','',0,'Y','Y','仲裁員回避','');
INSERT INTO `dictionary` VALUES (1320,'9034','0000','交款当事方','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1321,'9034','0001','申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1322,'9034','0002','被申请人','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1323,'9908','0000','仲裁员身份','','',0,'N','Y','仲裁員身份','');
INSERT INTO `dictionary` VALUES (1324,'9908','01','仲裁员','','',0,'Y','Y','仲裁員','');
INSERT INTO `dictionary` VALUES (1325,'9908','02','调解员','','',0,'Y','Y','調解員','');
INSERT INTO `dictionary` VALUES (1326,'9909','0000','审限到期天数(外网使用)','','',0,'N','Y','審限到期天數(外網使用)','');
INSERT INTO `dictionary` VALUES (1327,'9909','0001','15以下','','',0,'Y','Y','15以下','');
INSERT INTO `dictionary` VALUES (1328,'9909','0002','15-30','','',0,'Y','Y','15-30','');
INSERT INTO `dictionary` VALUES (1329,'9909','0003','30-60','','',0,'Y','Y','30-60','');
INSERT INTO `dictionary` VALUES (1330,'9909','0004','60以上','','',0,'Y','Y','60以上','');
INSERT INTO `dictionary` VALUES (1331,'9910','0000','案件状态-外网系统案件查询下拉框','','在办案件',0,'N','Y','案件狀態-外網系統案件查詢下拉框','');
INSERT INTO `dictionary` VALUES (1332,'9910','1','在办案件','','',1,'Y','Y','在辦案件','');
INSERT INTO `dictionary` VALUES (1333,'9910','2','已结案件','','',2,'Y','Y','已結案件','');
INSERT INTO `dictionary` VALUES (1334,'9911','0000','费用类型—案件收费快算','','',0,'N','Y','費用類型—案件收費快算','');
INSERT INTO `dictionary` VALUES (1360,'9105','0301','书面意见','','',0,'Y','Y','書面意見','');
INSERT INTO `dictionary` VALUES (1359,'9105','0000','当事方上传案件附件（内外网） ','','',0,'N','Y','','');
INSERT INTO `dictionary` VALUES (1338,'9907','0000','仲裁员性别','','',0,'N','Y','仲裁員性別','');
INSERT INTO `dictionary` VALUES (1339,'9907','男','男','','',0,'Y','Y','男','');
INSERT INTO `dictionary` VALUES (1340,'9907','女','女','','',0,'Y','Y','女','');
INSERT INTO `dictionary` VALUES (1342,'9912','1','自然人','','',1,'Y','Y','自然人','');
INSERT INTO `dictionary` VALUES (1343,'9912','2','法人','','',2,'Y','Y','法人','');
INSERT INTO `dictionary` VALUES (1344,'9912','3','非法人组织','','',3,'Y','Y','非法人組織','');
INSERT INTO `dictionary` VALUES (1345,'9912','0000','外网当事人类型','','',0,'N','Y','外網當事人類型	','');
INSERT INTO `dictionary` VALUES (1346,'9906','0008','专家会议','','',0,'Y','Y','專家會議','');
INSERT INTO `dictionary` VALUES (1347,'9035','0000','办案指南类别','','',0,'N','Y','辦案指南類別','');
INSERT INTO `dictionary` VALUES (1348,'9035','0001','办案指南类别一','','',0,'Y','Y',' 辦案指南類別一	','');
INSERT INTO `dictionary` VALUES (1349,'9035','0002','办案指南类别二','','',0,'Y','Y',' 辦案指南類別二','');
INSERT INTO `dictionary` VALUES (1350,'9036','0000','培训类型（外网）','','',0,'N','Y','培訓類型（外網）','');
INSERT INTO `dictionary` VALUES (1351,'9036 ','0001','培训类型一','','',0,'Y','Y','培訓類型一','');
INSERT INTO `dictionary` VALUES (1352,'9036 ','0002','培训类型二','','',0,'Y','Y','培訓類型二','');
INSERT INTO `dictionary` VALUES (1353,'9911','0004','SCIA规则 国内案件仲裁费用 ','','',0,'Y','Y','SCIA規則 國內案件仲裁費用','');
INSERT INTO `dictionary` VALUES (1354,'9911','0005','SCIA规则 涉外案件仲裁费用 ','','',0,'Y','Y','SCIA規則 涉外案件仲裁費用','');
INSERT INTO `dictionary` VALUES (1355,'9104','0000','案件申请信息的附件类别','','',0,'N','Y','案件申請信息的附件類別','');
INSERT INTO `dictionary` VALUES (1356,'9104','0201','申请书','','',0,'Y','Y','申請書','');
INSERT INTO `dictionary` VALUES (1357,'9104','0202','证据清单','','',0,'Y','Y','證據清單','');
INSERT INTO `dictionary` VALUES (1358,'9104','0203','证据内容','','',0,'Y','Y','證據內容','');
INSERT INTO `dictionary` VALUES (1361,'9105','0302','证据材料','','',0,'Y','Y','證據材料','');
INSERT INTO `dictionary` VALUES (1362,'','','','','',0,'','Y','','');
INSERT INTO `dictionary` VALUES (1363,'9022','0004','起草案情','','',0,'Y','Y','','');
INSERT INTO `dictionary` VALUES (1364,'9022','0005','撤案决定书','','',0,'Y','Y','','');

--
-- Table structure for table `doc_format`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_format` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `used` varchar(1) CHARACTER SET gbk DEFAULT 'Y' COMMENT 'Y:使用、N：不使用',
  `code` varchar(6) CHARACTER SET gbk DEFAULT NULL COMMENT '编码',
  `name` varchar(100) CHARACTER SET gbk DEFAULT '' COMMENT '名称(简体中文)',
  `name_tw` varchar(100) CHARACTER SET gbk DEFAULT '' COMMENT '名称(繁体中文)',
  `name_en` varchar(100) CHARACTER SET gbk DEFAULT '' COMMENT '英文',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='格式函信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_format`
--

INSERT INTO `doc_format` VALUES (1,'Y','0001','仲裁申请受理通知书','','');
INSERT INTO `doc_format` VALUES (2,'Y','00011','仲裁申请受理通知书','','');
INSERT INTO `doc_format` VALUES (3,'Y','0002','仲裁申请受理通知书','','');
INSERT INTO `doc_format` VALUES (4,'Y','000201','仲裁申请受理通知书','','');
INSERT INTO `doc_format` VALUES (5,'Y','00021','仲裁申请受理通知书','','');
INSERT INTO `doc_format` VALUES (6,'Y','0003','审批格式函','','');
INSERT INTO `doc_format` VALUES (7,'Y','0004','审批格式函','','');
INSERT INTO `doc_format` VALUES (8,'Y','00041','审批格式函','','');
INSERT INTO `doc_format` VALUES (9,'Y','0005','仲裁通知（申请人）','','');
INSERT INTO `doc_format` VALUES (10,'Y','000501','仲裁通知（申请人）','','');
INSERT INTO `doc_format` VALUES (11,'Y','0006','仲裁通知（申请人）','','');
INSERT INTO `doc_format` VALUES (12,'Y','000601','仲裁通知（申请人）','','');
INSERT INTO `doc_format` VALUES (13,'Y','0007','仲裁通知（申请人）','','');
INSERT INTO `doc_format` VALUES (14,'Y','000701','仲裁通知（申请人）','','');
INSERT INTO `doc_format` VALUES (15,'Y','0008','仲裁通知（申请人）','','');
INSERT INTO `doc_format` VALUES (16,'Y','000801','仲裁通知（申请人）','','');
INSERT INTO `doc_format` VALUES (17,'Y','00081','仲裁通知（申请人）','','');
INSERT INTO `doc_format` VALUES (18,'Y','00082','仲裁通知（申请人）','','');
INSERT INTO `doc_format` VALUES (19,'Y','0009','仲裁通知（被申请人）','','');
INSERT INTO `doc_format` VALUES (20,'Y','000901','仲裁通知（被申请人）','','');
INSERT INTO `doc_format` VALUES (21,'Y','0010','仲裁通知（被申请人）','','');
INSERT INTO `doc_format` VALUES (22,'Y','001001','仲裁通知（被申请人）','','');
INSERT INTO `doc_format` VALUES (23,'Y','0011','仲裁通知（被申请人）','','');
INSERT INTO `doc_format` VALUES (24,'Y','001101','仲裁通知（被申请人）','','');
INSERT INTO `doc_format` VALUES (25,'Y','0012','仲裁通知（被申请人）','','');
INSERT INTO `doc_format` VALUES (26,'Y','001201','仲裁通知（被申请人）','','');
INSERT INTO `doc_format` VALUES (27,'Y','001202','仲裁通知（被申请人）','','');
INSERT INTO `doc_format` VALUES (28,'Y','001203','仲裁通知（被申请人）','','');
INSERT INTO `doc_format` VALUES (29,'Y','0013','财产保全申请','','');
INSERT INTO `doc_format` VALUES (30,'Y','001301','通知财产保全法院已经结案的函','','');
INSERT INTO `doc_format` VALUES (31,'Y','0014','证据保全申请','','');
INSERT INTO `doc_format` VALUES (32,'Y','0015','提供最后注册地址的通知','','');
INSERT INTO `doc_format` VALUES (33,'Y','0016','转函(当事人/双方)','','');
INSERT INTO `doc_format` VALUES (34,'Y','0017','空白函','','');
INSERT INTO `doc_format` VALUES (35,'Y','0018','转反请求函','','');
INSERT INTO `doc_format` VALUES (36,'Y','00191','反请求审批表（国内）','','');
INSERT INTO `doc_format` VALUES (37,'Y','00192','反请求审批表（涉外）','','');
INSERT INTO `doc_format` VALUES (38,'Y','0020','预缴反请求费用通知单','','');
INSERT INTO `doc_format` VALUES (39,'Y','002001','预缴反请求费用通知单','','');
INSERT INTO `doc_format` VALUES (40,'Y','0021','预缴反请求费用通知单','','');
INSERT INTO `doc_format` VALUES (41,'Y','002101','预缴反请求费用通知单','','');
INSERT INTO `doc_format` VALUES (42,'Y','0022','代指定仲裁员人选的报告','','');
INSERT INTO `doc_format` VALUES (43,'Y','002201','代指定仲裁员人选的报告','','');
INSERT INTO `doc_format` VALUES (44,'Y','0023','仲裁员是否接受选（指）定的征询函','','');
INSERT INTO `doc_format` VALUES (45,'Y','002301','仲裁员是否接受选（指）定的征询函','','');
INSERT INTO `doc_format` VALUES (46,'Y','002302','仲裁员是否接受选（指）定的征询函','','');
INSERT INTO `doc_format` VALUES (47,'Y','002303','仲裁员是否接受选（指）定的征询函','','');
INSERT INTO `doc_format` VALUES (48,'Y','0024','仲裁员声明书','','');
INSERT INTO `doc_format` VALUES (49,'Y','002401','仲裁员声明书','','');
INSERT INTO `doc_format` VALUES (50,'Y','002402','仲裁员声明书','','');
INSERT INTO `doc_format` VALUES (51,'Y','002403','仲裁员声明书','','');
INSERT INTO `doc_format` VALUES (52,'Y','002404','仲裁员声明书','','');
INSERT INTO `doc_format` VALUES (53,'Y','002405','仲裁员声明书','','');
INSERT INTO `doc_format` VALUES (54,'Y','00241','仲裁员声明书','','');
INSERT INTO `doc_format` VALUES (55,'Y','00242','仲裁员声明书','','');
INSERT INTO `doc_format` VALUES (56,'Y','0025','预缴实际开支费用通知单','','');
INSERT INTO `doc_format` VALUES (57,'Y','002502','预缴实际开支费用通知单','','');
INSERT INTO `doc_format` VALUES (58,'Y','002503','预缴实际开支费用通知单','','');
INSERT INTO `doc_format` VALUES (59,'Y','002504','预缴实际开支费用通知单','','');
INSERT INTO `doc_format` VALUES (60,'Y','0026','仲裁庭组成及开庭通知','','');
INSERT INTO `doc_format` VALUES (61,'Y','002601','仲裁庭组成及开庭通知','','');
INSERT INTO `doc_format` VALUES (62,'Y','0027','仲裁庭组成及开庭通知','','');
INSERT INTO `doc_format` VALUES (63,'Y','00271','仲裁庭组成及开庭通知','','');
INSERT INTO `doc_format` VALUES (64,'Y','0028','组庭通知(当事人)','','');
INSERT INTO `doc_format` VALUES (65,'Y','002801','组庭通知(当事人)','','');
INSERT INTO `doc_format` VALUES (66,'Y','0029','组庭通知(当事人)','','');
INSERT INTO `doc_format` VALUES (67,'Y','002901','组庭通知(当事人)','','');
INSERT INTO `doc_format` VALUES (68,'Y','002902','组庭通知','','');
INSERT INTO `doc_format` VALUES (69,'Y','002903','组庭通知','','');
INSERT INTO `doc_format` VALUES (70,'Y','002904','组庭通知','','');
INSERT INTO `doc_format` VALUES (71,'Y','002905','组庭通知','','');
INSERT INTO `doc_format` VALUES (72,'Y','0030','开庭通知（当事人）','','');
INSERT INTO `doc_format` VALUES (73,'Y','003001','开庭通知（当事人）','','');
INSERT INTO `doc_format` VALUES (74,'Y','0031','开庭通知（当事人）','','');
INSERT INTO `doc_format` VALUES (75,'Y','003101','开庭通知','','');
INSERT INTO `doc_format` VALUES (76,'Y','003102','开庭通知','','');
INSERT INTO `doc_format` VALUES (77,'Y','003103','开庭通知','','');
INSERT INTO `doc_format` VALUES (78,'Y','003104','开庭通知','','');
INSERT INTO `doc_format` VALUES (79,'Y','0032','开庭通知(仲裁员)','','');
INSERT INTO `doc_format` VALUES (80,'Y','0033','开庭通知(仲裁员)','','');
INSERT INTO `doc_format` VALUES (81,'Y','003301','开庭通知（仲裁员）','','');
INSERT INTO `doc_format` VALUES (82,'Y','0034','目录（仲裁员签收单）','','');
INSERT INTO `doc_format` VALUES (83,'Y','0035','庭审要点','','');
INSERT INTO `doc_format` VALUES (84,'Y','003501','庭审要点','','');
INSERT INTO `doc_format` VALUES (85,'Y','003502','庭审要点','','');
INSERT INTO `doc_format` VALUES (86,'Y','003503','庭审要点与调解确认书','','');
INSERT INTO `doc_format` VALUES (87,'Y','00351','程序报告及庭后时间安排表','','');
INSERT INTO `doc_format` VALUES (88,'Y','0036','开庭签到表','','');
INSERT INTO `doc_format` VALUES (89,'Y','0037','延期裁决决定','','');
INSERT INTO `doc_format` VALUES (90,'Y','003701','延期裁决决定','','');
INSERT INTO `doc_format` VALUES (91,'Y','003702','延期裁决决定','','');
INSERT INTO `doc_format` VALUES (92,'Y','003703','延期裁决决定','','');
INSERT INTO `doc_format` VALUES (93,'Y','0038','核校表（新）','','');
INSERT INTO `doc_format` VALUES (94,'Y','0039','分会裁决书草案报送单','','');
INSERT INTO `doc_format` VALUES (95,'N','0040','裁决书报总会函','','');
INSERT INTO `doc_format` VALUES (96,'Y','0041','函寄裁决书','','');
INSERT INTO `doc_format` VALUES (97,'Y','0042','催稿函','','');
INSERT INTO `doc_format` VALUES (98,'Y','0043','催稿函','','');
INSERT INTO `doc_format` VALUES (99,'Y','0044','仲裁员办案和相关办案报酬稿酬信息表','','');
INSERT INTO `doc_format` VALUES (100,'Y','0045','仲裁员评价表','','');
INSERT INTO `doc_format` VALUES (101,'Y','0046','关于规范执行情况的信息收集','','');
INSERT INTO `doc_format` VALUES (102,'Y','0047','送达回证','','');
INSERT INTO `doc_format` VALUES (103,'Y','004701','案卷封面','','');
INSERT INTO `doc_format` VALUES (104,'Y','004702','卷宗白页','','');
INSERT INTO `doc_format` VALUES (105,'Y','004703','卷宗白页','','');
INSERT INTO `doc_format` VALUES (106,'Y','004704','卷宗白页','','');
INSERT INTO `doc_format` VALUES (107,'Y','004705','卷宗白页','','');
INSERT INTO `doc_format` VALUES (108,'Y','004706','卷宗白页','','');
INSERT INTO `doc_format` VALUES (109,'Y','004707','卷宗白页','','');
INSERT INTO `doc_format` VALUES (110,'Y','0048','再次指定仲裁员函','','');
INSERT INTO `doc_format` VALUES (111,'Y','004801','再次指定仲裁员函','','');
INSERT INTO `doc_format` VALUES (112,'Y','004802','再次指定仲裁员函','','');
INSERT INTO `doc_format` VALUES (113,'Y','004803','再次指定仲裁员函','','');
INSERT INTO `doc_format` VALUES (114,'Y','0049','仲裁裁决发生法律效力证明书','','');
INSERT INTO `doc_format` VALUES (115,'Y','0050','管辖权决定、回避决定核阅单','','');
INSERT INTO `doc_format` VALUES (116,'Y','0051','核校表（裁决书补充）','','');
INSERT INTO `doc_format` VALUES (117,'Y','0052','核校表（裁决书更正）','','');
INSERT INTO `doc_format` VALUES (118,'Y','0053','核校表（其他仲裁文书）','','');
INSERT INTO `doc_format` VALUES (119,'Y','005301','报校核函','','');
INSERT INTO `doc_format` VALUES (120,'Y','005302','签发表','','');
INSERT INTO `doc_format` VALUES (121,'Y','0054','外出报告表','','');
INSERT INTO `doc_format` VALUES (122,'Y','0055','寄送材料目录','','');
INSERT INTO `doc_format` VALUES (123,'Y','0056','补缴仲裁费用通知单','','');
INSERT INTO `doc_format` VALUES (124,'Y','0057','书面审理通知','','');
INSERT INTO `doc_format` VALUES (125,'Y','0058','委托律师行调查函','','');
INSERT INTO `doc_format` VALUES (126,'Y','0059','委托财务审计协议书','','');
INSERT INTO `doc_format` VALUES (127,'Y','0060','预缴财务审计费用通知','','');
INSERT INTO `doc_format` VALUES (128,'Y','0061','仲裁员声明书（英文）','','');
INSERT INTO `doc_format` VALUES (129,'Y','006101','仲裁员声明书（英文）','','');
INSERT INTO `doc_format` VALUES (130,'Y','0062','材料清单','','');
INSERT INTO `doc_format` VALUES (131,'Y','006301','本（反）请求增（减）审批表','','');
INSERT INTO `doc_format` VALUES (132,'Y','0064','案外第三人申请参加仲裁的回复函','','');
INSERT INTO `doc_format` VALUES (133,'Y','0065','变更当事人审批表','','');
INSERT INTO `doc_format` VALUES (134,'Y','0066','关于中止仲裁程序通知的格式函','','');
INSERT INTO `doc_format` VALUES (135,'Y','0067','受案减免费用审批表','','');
INSERT INTO `doc_format` VALUES (136,'Y','0068','退费审批表','','');
INSERT INTO `doc_format` VALUES (137,'Y','0069','争议金额不明确','','');
INSERT INTO `doc_format` VALUES (138,'Y','0070','裁决模板','','');
INSERT INTO `doc_format` VALUES (139,'Y','0090','庭审笔录（独任）','','');
INSERT INTO `doc_format` VALUES (140,'Y','0091','庭审笔录（非独任）','','');
INSERT INTO `doc_format` VALUES (141,'Y','0092','合议笔录','','');
INSERT INTO `doc_format` VALUES (142,'Y','0093','缺席审理函','','');
INSERT INTO `doc_format` VALUES (143,'Y','0101','减免费用审批表','','');
INSERT INTO `doc_format` VALUES (144,'Y','0102','结案感谢函（独）','','');
INSERT INTO `doc_format` VALUES (145,'Y','0103','结案感谢函（三人）','','');
INSERT INTO `doc_format` VALUES (146,'Y','0104','管辖权决定校核表','','');
INSERT INTO `doc_format` VALUES (147,'Y','0105','仲裁员报酬预通知函（独任）','','');
INSERT INTO `doc_format` VALUES (148,'Y','0106','仲裁员报酬预通知函（三人）','','');
INSERT INTO `doc_format` VALUES (149,'Y','0159','档案袋封面','','');
INSERT INTO `doc_format` VALUES (150,'Y','0160','档案袋封面(三人)','','');
INSERT INTO `doc_format` VALUES (151,'Y','0161','支出费用审批表','','');
INSERT INTO `doc_format` VALUES (152,'Y','0162','生效证明（秘字号发文）','','');
INSERT INTO `doc_format` VALUES (153,'Y','0163','空白函（秘字号发文）','','');

--
-- Table structure for table `down_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `down_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户类别',
  `user_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户编号',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ip地址',
  `down_time` datetime DEFAULT NULL COMMENT '下载时间',
  `down_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下载类型',
  `file_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件名称',
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下载路径',
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `down_log`
--

INSERT INTO `down_log` VALUES (1,'arbitman','00000023','114.249.236.97','2014-12-23 09:14:14','专家会议','专家会议','3729','案件咨询流水号：20140690,文件类别：专家会议');
INSERT INTO `down_log` VALUES (2,'arbitman','00000023','114.249.236.97','2014-12-23 09:38:54','专家会议','专家会议','3729','案件号：,案件咨询流水号：20140690,文件类别：专家会议');
INSERT INTO `down_log` VALUES (3,'arbitman','00000023','114.249.236.97','2014-12-23 09:41:15','专家会议','专家会议','3742','案件号：,案件咨询流水号：20140703,文件类别：专家会议');
INSERT INTO `down_log` VALUES (4,'arbitman','00000023','114.249.236.97','2014-12-23 09:46:52','专家会议','专家会议','674','案件号：,案件咨询流水号：20100241,文件类别：专家会议');
INSERT INTO `down_log` VALUES (5,'arbitman','00000023','114.249.236.97','2014-12-23 09:46:57','开庭文书','开庭文书','669','案件号：SHEN R2010140,案件咨询流水号：20100241,文件类别：开庭文书');
INSERT INTO `down_log` VALUES (6,'arbitman','00000023','114.249.236.97','2014-12-23 09:47:01','结案文书','结案文书','428','案件号：SHEN R2010140,案件咨询流水号：20100241,文件类别：结案文书');
INSERT INTO `down_log` VALUES (7,'arbitman','00000023','114.249.236.97','2014-12-23 09:47:49','专家会议','专家会议','3729','案件号：,案件咨询流水号：20140690,文件类别：专家会议');
INSERT INTO `down_log` VALUES (8,'arbitman','00000023','114.249.236.97','2014-12-23 10:03:56','合同','合同','3729','案件号：,案件咨询流水号：20140690,文件类别：合同');
INSERT INTO `down_log` VALUES (9,'party','linxiao','203.91.45.18','2015-03-05 02:51:51','结案文书','结案文书','4762','案件号：SHEN DG20150025,案件咨询流水号：20150021,文件类别：结案文书');
INSERT INTO `down_log` VALUES (10,'party','linxiao','203.91.45.18','2015-03-05 02:52:01','结案文书','结案文书','4762','案件号：SHEN DG20150025,案件咨询流水号：20150021,文件类别：结案文书');
INSERT INTO `down_log` VALUES (11,'party','linxiao','203.91.45.18','2015-03-06 09:24:23','结案文书','结案文书','4741','案件号：SHEN T20150007,案件咨询流水号：20140999,文件类别：结案文书');
INSERT INTO `down_log` VALUES (12,'arbitman','00000048','120.210.177.231','2015-05-06 12:07:24','结案文书','结案文书','1324','案件号：SHEN X2011154,案件咨询流水号：20110176,文件类别：结案文书');
INSERT INTO `down_log` VALUES (13,'arbitman','00001659','119.236.164.232','2015-05-06 08:27:47','开庭文书','开庭文书','4420','案件号：SHEN G2014175,案件咨询流水号：20140211,文件类别：开庭文书');
INSERT INTO `down_log` VALUES (14,'arbitman','00001659','119.236.164.232','2015-05-06 08:28:08','结案文书','结案文书','3932','案件号：SHEN G2014175,案件咨询流水号：20140211,文件类别：结案文书');
INSERT INTO `down_log` VALUES (15,'arbitman','00001659','119.236.164.232','2015-05-06 08:29:09','合同','合同','4045','案件号：,案件咨询流水号：20140211,文件类别：合同');
INSERT INTO `down_log` VALUES (16,'arbitman','00001659','119.236.164.232','2015-05-06 08:29:51','结案文书','结案文书','3932','案件号：SHEN G2014175,案件咨询流水号：20140211,文件类别：结案文书');
INSERT INTO `down_log` VALUES (17,'arbitman','00001280','113.108.133.49','2015-05-08 06:35:01','开庭文书','开庭文书','4830','案件号：SHEN G2014835,案件咨询流水号：20140953,文件类别：开庭文书');
INSERT INTO `down_log` VALUES (18,'party','linxiao','203.91.45.18','2015-05-15 09:29:00','结案文书','结案文书','4762','案件号：SHEN DG20150025,案件咨询流水号：20150021,文件类别：结案文书');
INSERT INTO `down_log` VALUES (19,'party','linxiao','203.91.45.18','2015-05-15 09:29:20','合同','合同','4831','案件号：,案件咨询流水号：20150021,文件类别：合同');
INSERT INTO `down_log` VALUES (20,'arbitman','00001562','113.116.232.51','2015-05-27 04:17:03','开庭文书','开庭文书','4961','案件号：SHEN DX20150107,案件咨询流水号：20150115,文件类别：开庭文书');
INSERT INTO `down_log` VALUES (21,'arbitman','00001562','113.116.232.51','2015-05-27 04:17:18','合同','合同','4803','案件号：,案件咨询流水号：20150115,文件类别：合同');
INSERT INTO `down_log` VALUES (22,'party','linxiao','113.116.166.172','2015-05-30 02:56:43','结案文书','结案文书','4741','案件号：SHEN T20150007,案件咨询流水号：20140999,文件类别：结案文书');
INSERT INTO `down_log` VALUES (23,'party','linxiao','113.116.166.172','2015-05-30 02:57:31','合同','合同','4777','案件号：,案件咨询流水号：20140999,文件类别：合同');
INSERT INTO `down_log` VALUES (24,'arbitman','00001272','112.95.159.158','2015-06-01 03:41:43','结案文书','结案文书','5084','案件号：SHEN DH20150138,案件咨询流水号：20150151,文件类别：结案文书');
INSERT INTO `down_log` VALUES (25,'arbitman','00001272','112.95.159.158','2015-06-01 03:42:59','合同','合同','5110','案件号：,案件咨询流水号：20150150,文件类别：合同');
INSERT INTO `down_log` VALUES (26,'arbitman','00001272','112.95.159.158','2015-06-01 03:43:28','合同','合同','5110','案件号：,案件咨询流水号：20150150,文件类别：合同');
INSERT INTO `down_log` VALUES (27,'party','linxiao','113.116.167.231','2015-07-06 12:54:10','开庭文书','开庭文书','4778','案件号：SHEN T20150007,案件咨询流水号：20140999,文件类别：开庭文书');
INSERT INTO `down_log` VALUES (28,'arbitman','00000023','113.116.167.231','2015-07-06 04:46:17','合同','合同','3708','案件号：,案件咨询流水号：20140669,文件类别：合同');
INSERT INTO `down_log` VALUES (29,'arbitman','00000023','203.91.45.19','2015-07-06 04:46:40','合同','合同','3711','案件号：,案件咨询流水号：20140672,文件类别：合同');
INSERT INTO `down_log` VALUES (30,'arbitman','00000023','203.91.45.19','2015-07-06 04:47:52','合同','合同','3724','案件号：,案件咨询流水号：20140685,文件类别：合同');
INSERT INTO `down_log` VALUES (31,'arbitman','00000023','203.91.45.19','2015-07-06 04:48:30','合同','合同','3487','案件号：,案件咨询流水号：20140137,文件类别：合同');
INSERT INTO `down_log` VALUES (32,'party','shengyikeji','221.4.139.219','2015-07-07 09:07:34','开庭文书','开庭文书','5247','案件号：SHEN DG20150128,案件咨询流水号：20150149,文件类别：开庭文书');
INSERT INTO `down_log` VALUES (33,'party','shengyikeji','221.4.139.219','2015-07-07 09:07:46','合同','合同','5169','案件号：,案件咨询流水号：20150149,文件类别：合同');
INSERT INTO `down_log` VALUES (34,'party','shengyikeji','221.4.139.219','2015-07-07 09:07:57','结案文书','结案文书','5026','案件号：SHEN DG20150128,案件咨询流水号：20150149,文件类别：结案文书');
INSERT INTO `down_log` VALUES (35,'arbitman','00000023','113.116.167.231','2015-07-07 03:53:06','结案文书','结案文书','3097','案件号：SHEN X2014113,案件咨询流水号：20140137,文件类别：结案文书');
INSERT INTO `down_log` VALUES (36,'arbitman','00000023','113.116.167.231','2015-07-07 03:53:11','合同','合同','3103','案件号：,案件咨询流水号：20140137,文件类别：合同');
INSERT INTO `down_log` VALUES (37,'arbitman','00000023','113.116.167.231','2015-07-07 03:53:14','合同','合同','3487','案件号：,案件咨询流水号：20140137,文件类别：合同');
INSERT INTO `down_log` VALUES (38,'party','wanghaipinping','114.249.224.167','2015-07-14 04:28:31','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (39,'party','wanghaipinping','114.249.224.167','2015-07-14 04:28:36','案件附件 书面意见','内外网系统相关配置信息汇总','163','该文件 2015-07-10 04:46:55上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (40,'party','wanghaipinping','114.249.224.167','2015-07-14 04:28:51','案件附件 书面意见','适用于VMwareWorkstation11永久注册码','158','该文件 2015-07-10 04:34:16上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (41,'party','wanghaipinping','114.249.224.167','2015-07-14 04:28:57','案件附件 证据材料','建议详情页面.png','152','该文件 2015-07-07 04:46:38上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (42,'party','wanghaipinping','114.249.224.167','2015-07-14 04:29:10','案件附件 书面意见','mongrel服务器介绍.png','162','该文件 2015-07-10 04:41:58上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (43,'party','wanghaipinping','203.91.45.19','2015-07-14 18:07:42','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (44,'party','wanghaipinping','203.91.45.19','2015-07-14 18:07:49','案件附件 书面意见','mongrel服务器介绍.png','162','该文件 2015-07-10 04:41:58上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (45,'party','wanghaipinping','203.91.45.19','2015-07-14 18:08:02','案件附件 证据材料','建议详情页面.png','152','该文件 2015-07-07 04:46:38上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (46,'party','wanghaipinping','203.91.45.19','2015-07-14 18:08:10','案件附件 书面意见','内外网系统相关配置信息汇总','163','该文件 2015-07-10 04:46:55上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (47,'party','wanghaipinping','203.91.45.19','2015-07-14 18:08:16','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (48,'party','wanghaipinping','203.91.45.19','2015-07-14 18:08:25','案件附件 书面意见','适用于VMwareWorkstation11永久注册码','159','该文件 2015-07-10 04:39:56上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (49,'party','wanghaipinping','203.91.45.19','2015-07-14 18:08:33','案件附件 书面意见','内外网系统相关配置信息汇总','163','该文件 2015-07-10 04:46:55上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (50,'party','wanghaipinping','203.91.45.19','2015-07-14 18:08:37','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (51,'party','wanghaipinping','203.91.45.19','2015-07-14 18:08:41','案件附件 书面意见','mongrel服务器介绍.png','162','该文件 2015-07-10 04:41:58上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (52,'party','wanghaipinping','203.91.45.19','2015-07-14 18:09:16','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (53,'party','wanghaipinping','203.91.45.19','2015-07-14 18:09:24','案件附件 书面意见','内外网系统相关配置信息汇总','163','该文件 2015-07-10 04:46:55上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (54,'party','wanghaipinping','203.91.45.19','2015-07-14 18:09:29','案件附件 书面意见','内外网系统相关配置信息汇总','163','该文件 2015-07-10 04:46:55上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (55,'party','wanghaipinping','203.91.45.19','2015-07-14 18:10:44','案件附件 书面意见','适用于VMwareWorkstation11永久注册码','158','该文件 2015-07-10 04:34:16上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (56,'party','wanghaipinping','203.91.45.19','2015-07-14 18:10:51','案件附件 书面意见','内外网系统相关配置信息汇总','163','该文件 2015-07-10 04:46:55上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (57,'party','wanghaipinping','203.91.45.19','2015-07-14 18:10:58','案件附件 书面意见','mongrel服务器介绍.png','162','该文件 2015-07-10 04:41:58上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (58,'party','wanghaipinping','203.91.45.19','2015-07-14 18:11:10','案件附件 证据材料','建议详情页面.png','152','该文件 2015-07-07 04:46:38上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (59,'party','wanghaipinping','203.91.45.19','2015-07-14 18:11:15','案件附件 书面意见','适用于VMwareWorkstation11永久注册码','159','该文件 2015-07-10 04:39:56上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (60,'party','wanghaipinping','203.91.45.18','2015-07-14 18:12:33','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (61,'party','wanghaipinping','203.91.45.18','2015-07-14 18:12:40','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (62,'party','wanghaipinping','203.91.45.19','2015-07-14 18:12:44','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (63,'party','wanghaipinping','203.91.45.18','2015-07-14 18:12:51','案件附件 书面意见','mongrel服务器介绍.png','162','该文件 2015-07-10 04:41:58上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (64,'party','wanghaipinping','203.91.45.19','2015-07-14 18:13:00','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (65,'party','wanghaipinping','203.91.45.18','2015-07-14 18:13:00','案件附件 证据材料','适用于VMwareWorkstation11永久注册码','160','该文件 2015-07-10 04:40:51上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (66,'party','wanghaipinping','203.91.45.18','2015-07-14 18:13:01','案件附件 证据材料','适用于VMwareWorkstation11永久注册码','160','该文件 2015-07-10 04:40:51上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (67,'party','wanghaipinping','203.91.45.19','2015-07-14 18:17:40','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (68,'party','wanghaipinping','203.91.45.19','2015-07-14 18:17:51','案件附件 证据材料','建议详情页面.png','152','该文件 2015-07-07 04:46:38上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (69,'party','linxiao','121.34.101.223','2015-07-15 10:21:07','案件附件 证据材料','region_controller.rb','167','该文件 2015-07-15 10:19:18上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (70,'party','linxiao','203.91.45.19','2015-07-15 10:26:17','案件附件 书面意见','region_select_controller.rb','168','该文件 2015-07-15 10:21:25上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (71,'party','linxiao','203.91.45.19','2015-07-15 10:29:55','案件附件 书面意见','list13.rhtml','169','该文件 2015-07-15 10:29:00上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (72,'party','wanghaipinping','114.249.209.108','2015-07-16 05:27:18','管辖权决定','管辖权决定','2916','案件号：,案件咨询流水号：20120120,文件类别：管辖权决定');
INSERT INTO `down_log` VALUES (73,'party','wanghaipinping','114.249.209.108','2015-07-16 17:27:50','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (74,'party','wanghaipinping','114.249.209.108','2015-07-16 17:28:00','案件附件 证据材料','建议详情页面.png','152','该文件 2015-07-07 04:46:38上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (75,'party','wanghaipinping','114.249.209.108','2015-07-16 17:30:18','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (76,'party','wanghaipinping','114.249.209.108','2015-07-16 17:32:18','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (77,'party','wanghaipinping','114.249.209.108','2015-07-16 17:32:31','案件附件 书面意见','光盘说明.txt','164','该文件 2015-07-13 02:31:22上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (78,'party','wanghaipinping','114.249.209.108','2015-07-16 17:32:37','案件附件 证据材料','内外网系统相关配置信息汇总','157','该文件 2015-07-10 11:25:09上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (79,'party','wanghaipinping','114.249.209.108','2015-07-16 17:32:42','案件附件 证据材料','region_controller.rb','167','该文件 2015-07-15 10:19:18上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (80,'party','wanghaipinping','114.249.209.108','2015-07-16 17:33:53','案件附件 书面意见','list13.rhtml','170','该文件 2015-07-15 10:32:14上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (81,'party','wanghaipinping','114.249.209.108','2015-07-16 17:34:07','案件附件 书面意见','list13.rhtml','169','该文件 2015-07-15 10:29:00上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (82,'party','wanghaipinping','114.249.209.108','2015-07-16 17:34:19','案件附件 书面意见','list13.rhtml','169','该文件 2015-07-15 10:29:00上传,[被申请方 林晓 上传]');
INSERT INTO `down_log` VALUES (83,'party','wanghaipinping','114.249.209.108','2015-07-16 17:34:47','案件附件 证据材料','建议详情页面.png','152','该文件 2015-07-07 04:46:38上传,[申请方 王海平 上传]');
INSERT INTO `down_log` VALUES (84,'party','wanghaipinping','113.116.167.110','2015-07-24 09:30:47','开庭文书','开庭文书','2913','案件号：SHEN DX2012112,案件咨询流水号：20120120,文件类别：开庭文书');

--
-- Table structure for table `duties`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '编码',
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '名称',
  `describ` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '注释',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户职务信息字典表，该表数据用户不可修改';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duties`
--

INSERT INTO `duties` VALUES (1,'0001','办案秘书','');
INSERT INTO `duties` VALUES (2,'0002','处长','');
INSERT INTO `duties` VALUES (3,'0003','秘书长','');

--
-- Table structure for table `educate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `status` int(11) DEFAULT NULL COMMENT '状态：1新建未同步，2已同步',
  `arbitman` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仲裁员编号',
  `studycalendar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学历',
  `degree` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学位',
  `specialty` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所学专业',
  `graduatedate` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '毕业或结业时间',
  `school` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '毕业院校',
  `degreeletter` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '证书编号',
  `lawyercalendar` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否法学,1：是/0：否',
  `foreignlearn` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否国外,1：是/0：否',
  `testdate` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_time` datetime DEFAULT NULL,
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='仲裁员教育（仲裁员申请）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educate`
--

INSERT INTO `educate` VALUES (1,1,'a116','0001','0001','a','2014-09-04','a','a','1','1',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (2,1,'a115','0001','0001','所学专业','2014-09-02','毕业院校','证书编号','1','1',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (3,1,'a118','0001','0001','aaa','2014-10-24','aa','','1','1',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (4,1,'a121','0004','0003','法学','2012-06-26','中山大学','12580','1','0',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (5,1,'a121','0003','0002','国际法','2014-07-30','英国布里斯托大学','12530','1','1',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (6,1,'a122','0004','0003','法学','2012-06-27','中山大学','','1','0',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (7,1,'a122','0004','0002','国际法','2014-07-27','英国布里斯托大学','','1','1',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (8,1,'a124','0003','0002','法律','1985-08-06','政法大学','22333333','1','0',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (9,1,'a125','0001','0001','afdaf','2014-09-30','afafda','adfadsfasd','1','1',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (10,1,'a128','0003','0002','软件开发','2012-11-28','北京大学1','123','0','0',NULL,NULL,NULL,'N');
INSERT INTO `educate` VALUES (11,1,'a128','0004','0003','软件','2011-12-16','清华','1111','0','0',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (12,1,'a132','0002','0001','民商法学','2012-06-30','武汉大学','1048622012000252','1','0',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (13,1,'a132','0003','0002','法律','2005-06-30','中山大学','','1','0',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (14,1,'a132','0004','0003','法学','1992-06-30','中国政法大学','','1','0',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (15,1,'a138','0004','0003','法律','1988-06-07','兰州大学法律系 法学学士','','1','1',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (16,1,'a145','0001','0001','5','2015-07-01','5','','1','1',NULL,NULL,NULL,'Y');
INSERT INTO `educate` VALUES (17,1,'a146','0002','0001','ddddddddddd','2015-06-29','dddddddddddd','dddddddddddddddd','0','1',NULL,NULL,NULL,'Y');

--
-- Table structure for table `evaluate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `recevice_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '咨询号',
  `u` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '维护用户',
  `u_t` datetime DEFAULT NULL COMMENT '维护时间',
  `user_type` varchar(4) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '被评价用户类型',
  `user_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '被评价用户编码',
  `user_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '被评价用户类别',
  `parent_val` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评分项类别',
  `data_val` varchar(8) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '评分项编码',
  `data_text` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评价项内容',
  `score` int(20) DEFAULT '0' COMMENT '评分',
  `remark` varchar(250) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `tb_evaluates_index1` (`recevice_code`),
  KEY `tb_evaluates_index2` (`recevice_code`,`user_code`),
  KEY `tb_evaluates_index3` (`recevice_code`,`user_type`,`user_code`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='评价信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluate`
--

INSERT INTO `evaluate` VALUES (1,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','','0001','庭审前（当事人评价助理）',0,'');
INSERT INTO `evaluate` VALUES (2,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0001','00010001','1、接受选定或指定时披露得不认真或寄回声明书不及时（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (3,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0001','00010002','2、存在隐瞒应予披露或回避事由的情形（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (4,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0001','00010003','3、由于个人原因推迟确定开庭时间、未预留开庭时间、已安排好的开庭或合议因个人原因延期或延时（造成严重后果的，如其他外地仲裁员已发生实际开支费用，酌情多扣分）（扣1--6分）；',10,'');
INSERT INTO `evaluate` VALUES (5,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0001','00010004','4、忘记开庭时间的（扣1--3分）；开庭忘记带材料的（扣1―5分）；',10,'');
INSERT INTO `evaluate` VALUES (6,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0001','00010005','5、主动打电话询问案件程序情况的（加1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (7,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0001','00010006','6、对案情熟悉，庭前合议时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；对案情不熟悉，庭前合议时未能提出初步意见或能提出拟调查事项的，导致庭审效率不高（扣1--5分）；庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。',10,'');
INSERT INTO `evaluate` VALUES (8,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','','0002','庭审中',0,'');
INSERT INTO `evaluate` VALUES (9,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020001','7、开庭因非正当原因迟到（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (10,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020002','8、开庭着装太随意或开庭发言太随意引起当事人不满的（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (11,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020003','9、没有预留足够庭审时间和合议时间（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (12,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020004','10、庭审时仲裁员有接手机、发短信、随意离开开庭室等不当行为（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (13,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020005','11、在开庭审理及仲裁程序中，表现出偏袒倾向，包括代替或变相代替一方向另一方质证、辩论、提出请求或明显具有诱导性问题的（该考察点请谨慎评价）（扣1--10分）；',10,'');
INSERT INTO `evaluate` VALUES (14,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020006','12、庭审时心不在焉或打瞌睡（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (15,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020007','13、不能控制庭审节奏，导致开庭时间拖延（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (16,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020008','14、不能抓住案件实质问题进行调查的（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (17,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020009','15、对仲裁程序和庭审程序不熟悉，引起当事人不满的（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (18,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020010','16、不和其他两位仲裁员沟通，独断专行的（扣1－5分）；',10,'');
INSERT INTO `evaluate` VALUES (19,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020011','17、仲裁员掌握庭审水平和技巧的（可以加分或减分，分值在－5至5分之间）；',10,'');
INSERT INTO `evaluate` VALUES (20,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0002','00020012','18、调解时能促成当事人和解的（加1--5分并标注）。',10,'');
INSERT INTO `evaluate` VALUES (21,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','','0003','庭审后',0,'');
INSERT INTO `evaluate` VALUES (22,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0003','00030001','19、在未经仲裁委员会同意，擅自对外发表关于仲裁案件的不当言论的（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (23,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0003','00030002','20、不愿意起草裁决书又没有正当理由的（首席扣1--5分，边裁不扣分）；',1,'');
INSERT INTO `evaluate` VALUES (24,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0003','00030003','21、在首席不写裁决书时主动承揽起草裁决书任务的（边裁加1--10分，首席不加分）；',10,'');
INSERT INTO `evaluate` VALUES (25,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0003','00030004','22、对别人写的裁决书稿发表意见不及时（收到裁决书稿一个星期内没有发表意见的）或不负责（提不出任何理由，一味地附和）（扣1--10分）；',10,'');
INSERT INTO `evaluate` VALUES (26,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0003','00030005','23、起草裁决书时间不算快（未因此导致裁决延期的）但质量高，无需作较大改动的（不加分也不扣分）；起草裁决书时间太晚，导致裁决延期的（扣1--10分）；起草裁决书时间太晚，导致裁决延期的，且质量不高的（扣1--15分）；起草裁决书时间快，但质量不高（扣1--5分）；承担起草裁决书的任务，但是找人代写（扣1--10分）；对秘书起草的裁决书没有认真审阅的（扣1--5分）；没有正当理由导致对裁决书核校意见反馈不及时的（收到核校意见一星期后才反馈）（扣1--5分）；对他人的中肯意见没有理由一味地不接受的（扣1--5分）。',10,'');
INSERT INTO `evaluate` VALUES (27,'party_to_assistant_1','Y','20140999','linxiao','2015-05-19 16:42:35','1','llcai','蔡璐璐','0003','00030006','24、裁决书发出去后由于仲裁员的过错产生偏差导致社会效果不好的（扣1--10分）。',10,'');
INSERT INTO `evaluate` VALUES (28,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','','0001','庭审前（当事人评价仲裁员）',0,'');
INSERT INTO `evaluate` VALUES (29,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0001','00010001','1、接受选定或指定时披露得不认真或寄回声明书不及时（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (30,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0001','00010002','2、存在隐瞒应予披露或回避事由的情形（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (31,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0001','00010003','3、由于个人原因推迟确定开庭时间、未预留开庭时间、已安排好的开庭或合议因个人原因延期或延时（造成严重后果的，如其他外地仲裁员已发生实际开支费用，酌情多扣分）（扣1--6分）；',10,'');
INSERT INTO `evaluate` VALUES (32,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0001','00010004','4、忘记开庭时间的（扣1--3分）；开庭忘记带材料的（扣1―5分）；',10,'');
INSERT INTO `evaluate` VALUES (33,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0001','00010005','5、主动打电话询问案件程序情况的（加1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (34,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0001','00010006','6、对案情熟悉，庭前合议时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；对案情不熟悉，庭前合议时未能提出初步意见或能提出拟调查事项的，导致庭审效率不高（扣1--5分）；庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。',10,'');
INSERT INTO `evaluate` VALUES (35,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','','0002','庭审中',0,'');
INSERT INTO `evaluate` VALUES (36,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020001','7、开庭因非正当原因迟到（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (37,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020002','8、开庭着装太随意或开庭发言太随意引起当事人不满的（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (38,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020003','9、没有预留足够庭审时间和合议时间（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (39,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020004','10、庭审时仲裁员有接手机、发短信、随意离开开庭室等不当行为（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (40,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020005','11、在开庭审理及仲裁程序中，表现出偏袒倾向，包括代替或变相代替一方向另一方质证、辩论、提出请求或明显具有诱导性问题的（该考察点请谨慎评价）（扣1--10分）；',10,'');
INSERT INTO `evaluate` VALUES (41,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020006','12、庭审时心不在焉或打瞌睡（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (42,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020007','13、不能控制庭审节奏，导致开庭时间拖延（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (43,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020008','14、不能抓住案件实质问题进行调查的（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (44,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020009','15、对仲裁程序和庭审程序不熟悉，引起当事人不满的（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (45,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020010','16、不和其他两位仲裁员沟通，独断专行的（扣1－5分）；',10,'');
INSERT INTO `evaluate` VALUES (46,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020011','17、仲裁员掌握庭审水平和技巧的（可以加分或减分，分值在－5至5分之间）；',10,'');
INSERT INTO `evaluate` VALUES (47,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0002','00020012','18、调解时能促成当事人和解的（加1--5分并标注）。',10,'');
INSERT INTO `evaluate` VALUES (48,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','','0003','庭审后',0,'');
INSERT INTO `evaluate` VALUES (49,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0003','00030001','19、在未经仲裁委员会同意，擅自对外发表关于仲裁案件的不当言论的（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (50,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0003','00030002','20、不愿意起草裁决书又没有正当理由的（首席扣1--5分，边裁不扣分）；',10,'');
INSERT INTO `evaluate` VALUES (51,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0003','00030003','21、在首席不写裁决书时主动承揽起草裁决书任务的（边裁加1--10分，首席不加分）；',10,'');
INSERT INTO `evaluate` VALUES (52,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0003','00030004','22、对别人写的裁决书稿发表意见不及时（收到裁决书稿一个星期内没有发表意见的）或不负责（提不出任何理由，一味地附和）（扣1--10分）；',10,'');
INSERT INTO `evaluate` VALUES (53,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0003','00030005','23、起草裁决书时间不算快（未因此导致裁决延期的）但质量高，无需作较大改动的（不加分也不扣分）；起草裁决书时间太晚，导致裁决延期的（扣1--10分）；起草裁决书时间太晚，导致裁决延期的，且质量不高的（扣1--15分）；起草裁决书时间快，但质量不高（扣1--5分）；承担起草裁决书的任务，但是找人代写（扣1--10分）；对秘书起草的裁决书没有认真审阅的（扣1--5分）；没有正当理由导致对裁决书核校意见反馈不及时的（收到核校意见一星期后才反馈）（扣1--5分）；对他人的中肯意见没有理由一味地不接受的（扣1--5分）。',10,'');
INSERT INTO `evaluate` VALUES (54,'party_to_arbitman_1','Y','20140999','linxiao','2015-05-18 16:37:17','0001','00001510','何培华HE Peihua','0003','00030006','24、裁决书发出去后由于仲裁员的过错产生偏差导致社会效果不好的（扣1--10分）。',10,'');
INSERT INTO `evaluate` VALUES (55,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:29','1','llcai','蔡璐璐','','0001','庭审前（当事人评价仲裁员）',0,'');
INSERT INTO `evaluate` VALUES (56,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:29','1','llcai','蔡璐璐','0001','00010001','1、接受选定或指定时披露得不认真或寄回声明书不及时（扣1--3分）；',1,'');
INSERT INTO `evaluate` VALUES (57,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:29','1','llcai','蔡璐璐','0001','00010002','2、存在隐瞒应予披露或回避事由的情形（扣1--3分）；',2,'');
INSERT INTO `evaluate` VALUES (58,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:29','1','llcai','蔡璐璐','0001','00010003','3、由于个人原因推迟确定开庭时间、未预留开庭时间、已安排好的开庭或合议因个人原因延期或延时（造成严重后果的，如其他外地仲裁员已发生实际开支费用，酌情多扣分）（扣1--6分）；',2,'');
INSERT INTO `evaluate` VALUES (59,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:29','1','llcai','蔡璐璐','0001','00010004','4、忘记开庭时间的（扣1--3分）；开庭忘记带材料的（扣1―5分）；',5,'');
INSERT INTO `evaluate` VALUES (60,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:29','1','llcai','蔡璐璐','0001','00010005','5、主动打电话询问案件程序情况的（加1--3分）；',3,'');
INSERT INTO `evaluate` VALUES (61,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0001','00010006','6、对案情熟悉，庭前合议时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；对案情不熟悉，庭前合议时未能提出初步意见或能提出拟调查事项的，导致庭审效率不高（扣1--5分）；庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。',5,'');
INSERT INTO `evaluate` VALUES (62,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','','0002','庭审中',0,'');
INSERT INTO `evaluate` VALUES (63,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020001','7、开庭因非正当原因迟到（扣1--3分）；',3,'');
INSERT INTO `evaluate` VALUES (64,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020002','8、开庭着装太随意或开庭发言太随意引起当事人不满的（扣1--3分）；',5,'');
INSERT INTO `evaluate` VALUES (65,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020003','9、没有预留足够庭审时间和合议时间（扣1--3分）；',3,'');
INSERT INTO `evaluate` VALUES (66,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020004','10、庭审时仲裁员有接手机、发短信、随意离开开庭室等不当行为（扣1--3分）；',3,'');
INSERT INTO `evaluate` VALUES (67,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020005','11、在开庭审理及仲裁程序中，表现出偏袒倾向，包括代替或变相代替一方向另一方质证、辩论、提出请求或明显具有诱导性问题的（该考察点请谨慎评价）（扣1--10分）；',3,'');
INSERT INTO `evaluate` VALUES (68,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020006','12、庭审时心不在焉或打瞌睡（扣1--5分）；',5,'');
INSERT INTO `evaluate` VALUES (69,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020007','13、不能控制庭审节奏，导致开庭时间拖延（扣1--5分）；',5,'');
INSERT INTO `evaluate` VALUES (70,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020008','14、不能抓住案件实质问题进行调查的（扣1--5分）；',5,'');
INSERT INTO `evaluate` VALUES (71,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020009','15、对仲裁程序和庭审程序不熟悉，引起当事人不满的（扣1--5分）；',5,'');
INSERT INTO `evaluate` VALUES (72,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020010','16、不和其他两位仲裁员沟通，独断专行的（扣1－5分）；',5,'');
INSERT INTO `evaluate` VALUES (73,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020011','17、仲裁员掌握庭审水平和技巧的（可以加分或减分，分值在－5至5分之间）；',5,'');
INSERT INTO `evaluate` VALUES (74,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0002','00020012','18、调解时能促成当事人和解的（加1--5分并标注）。',5,'');
INSERT INTO `evaluate` VALUES (75,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','','0003','庭审后',0,'');
INSERT INTO `evaluate` VALUES (76,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0003','00030001','19、在未经仲裁委员会同意，擅自对外发表关于仲裁案件的不当言论的（扣1--5分）；',5,'');
INSERT INTO `evaluate` VALUES (77,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0003','00030002','20、不愿意起草裁决书又没有正当理由的（首席扣1--5分，边裁不扣分）；',5,'');
INSERT INTO `evaluate` VALUES (78,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0003','00030003','21、在首席不写裁决书时主动承揽起草裁决书任务的（边裁加1--10分，首席不加分）；',5,'');
INSERT INTO `evaluate` VALUES (79,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0003','00030004','22、对别人写的裁决书稿发表意见不及时（收到裁决书稿一个星期内没有发表意见的）或不负责（提不出任何理由，一味地附和）（扣1--10分）；',5,'');
INSERT INTO `evaluate` VALUES (80,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0003','00030005','23、起草裁决书时间不算快（未因此导致裁决延期的）但质量高，无需作较大改动的（不加分也不扣分）；起草裁决书时间太晚，导致裁决延期的（扣1--10分）；起草裁决书时间太晚，导致裁决延期的，且质量不高的（扣1--15分）；起草裁决书时间快，但质量不高（扣1--5分）；承担起草裁决书的任务，但是找人代写（扣1--10分）；对秘书起草的裁决书没有认真审阅的（扣1--5分）；没有正当理由导致对裁决书核校意见反馈不及时的（收到核校意见一星期后才反馈）（扣1--5分）；对他人的中肯意见没有理由一味地不接受的（扣1--5分）。',5,'');
INSERT INTO `evaluate` VALUES (81,'arbitman_to_assistant','Y','20140999','00001510','2015-05-19 04:55:30','1','llcai','蔡璐璐','0003','00030006','24、裁决书发出去后由于仲裁员的过错产生偏差导致社会效果不好的（扣1--10分）。',5,'');
INSERT INTO `evaluate` VALUES (82,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','','0001','庭审前（当事人评价助理）',0,'');
INSERT INTO `evaluate` VALUES (83,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0001','00010001','1、接受选定或指定时披露得不认真或寄回声明书不及时（扣1--3分）；',10,'10');
INSERT INTO `evaluate` VALUES (84,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0001','00010002','2、存在隐瞒应予披露或回避事由的情形（扣1--3分）；',10,'10');
INSERT INTO `evaluate` VALUES (85,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0001','00010003','3、由于个人原因推迟确定开庭时间、未预留开庭时间、已安排好的开庭或合议因个人原因延期或延时（造成严重后果的，如其他外地仲裁员已发生实际开支费用，酌情多扣分）（扣1--6分）；',10,'10');
INSERT INTO `evaluate` VALUES (86,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0001','00010004','4、忘记开庭时间的（扣1--3分）；开庭忘记带材料的（扣1―5分）；',100,'10');
INSERT INTO `evaluate` VALUES (87,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0001','00010005','5、主动打电话询问案件程序情况的（加1--3分）；',10,'10');
INSERT INTO `evaluate` VALUES (88,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0001','00010006','6、对案情熟悉，庭前合议时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；对案情不熟悉，庭前合议时未能提出初步意见或能提出拟调查事项的，导致庭审效率不高（扣1--5分）；庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。',10,'10');
INSERT INTO `evaluate` VALUES (89,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','','0002','庭审中',0,'');
INSERT INTO `evaluate` VALUES (90,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020001','7、开庭因非正当原因迟到（扣1--3分）；',10,'10');
INSERT INTO `evaluate` VALUES (91,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020002','8、开庭着装太随意或开庭发言太随意引起当事人不满的（扣1--3分）；',1010,'10');
INSERT INTO `evaluate` VALUES (92,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020003','9、没有预留足够庭审时间和合议时间（扣1--3分）；',10,'10');
INSERT INTO `evaluate` VALUES (93,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020004','10、庭审时仲裁员有接手机、发短信、随意离开开庭室等不当行为（扣1--3分）；',10,'10');
INSERT INTO `evaluate` VALUES (94,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020005','11、在开庭审理及仲裁程序中，表现出偏袒倾向，包括代替或变相代替一方向另一方质证、辩论、提出请求或明显具有诱导性问题的（该考察点请谨慎评价）（扣1--10分）；',10,'10');
INSERT INTO `evaluate` VALUES (95,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020006','12、庭审时心不在焉或打瞌睡（扣1--5分）；',10,'10');
INSERT INTO `evaluate` VALUES (96,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020007','13、不能控制庭审节奏，导致开庭时间拖延（扣1--5分）；',10,'10');
INSERT INTO `evaluate` VALUES (97,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020008','14、不能抓住案件实质问题进行调查的（扣1--5分）；',1010,'10');
INSERT INTO `evaluate` VALUES (98,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020009','15、对仲裁程序和庭审程序不熟悉，引起当事人不满的（扣1--5分）；',10,'10');
INSERT INTO `evaluate` VALUES (99,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020010','16、不和其他两位仲裁员沟通，独断专行的（扣1－5分）；',10,'10');
INSERT INTO `evaluate` VALUES (100,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020011','17、仲裁员掌握庭审水平和技巧的（可以加分或减分，分值在－5至5分之间）；',1010,'10');
INSERT INTO `evaluate` VALUES (101,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0002','00020012','18、调解时能促成当事人和解的（加1--5分并标注）。',10,'10');
INSERT INTO `evaluate` VALUES (102,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','','0003','庭审后',0,'');
INSERT INTO `evaluate` VALUES (103,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0003','00030001','19、在未经仲裁委员会同意，擅自对外发表关于仲裁案件的不当言论的（扣1--5分）；',10,'10');
INSERT INTO `evaluate` VALUES (104,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0003','00030002','20、不愿意起草裁决书又没有正当理由的（首席扣1--5分，边裁不扣分）；',10,'10');
INSERT INTO `evaluate` VALUES (105,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0003','00030003','21、在首席不写裁决书时主动承揽起草裁决书任务的（边裁加1--10分，首席不加分）；',10,'10');
INSERT INTO `evaluate` VALUES (106,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0003','00030004','22、对别人写的裁决书稿发表意见不及时（收到裁决书稿一个星期内没有发表意见的）或不负责（提不出任何理由，一味地附和）（扣1--10分）；',1010,'10');
INSERT INTO `evaluate` VALUES (107,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0003','00030005','23、起草裁决书时间不算快（未因此导致裁决延期的）但质量高，无需作较大改动的（不加分也不扣分）；起草裁决书时间太晚，导致裁决延期的（扣1--10分）；起草裁决书时间太晚，导致裁决延期的，且质量不高的（扣1--15分）；起草裁决书时间快，但质量不高（扣1--5分）；承担起草裁决书的任务，但是找人代写（扣1--10分）；对秘书起草的裁决书没有认真审阅的（扣1--5分）；没有正当理由导致对裁决书核校意见反馈不及时的（收到核校意见一星期后才反馈）（扣1--5分）；对他人的中肯意见没有理由一味地不接受的（扣1--5分）。',10,'10');
INSERT INTO `evaluate` VALUES (108,'party_to_assistant_1','Y','20150021','linxiao','2015-05-30 15:03:59','1','gjyin','尹冠军','0003','00030006','24、裁决书发出去后由于仲裁员的过错产生偏差导致社会效果不好的（扣1--10分）。',10,'');
INSERT INTO `evaluate` VALUES (109,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','','0001','庭审前',0,'');
INSERT INTO `evaluate` VALUES (110,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0001','00010001','1、接受选定或指定时披露得不认真或寄回声明书不及时（扣1--3分）；',10,'10');
INSERT INTO `evaluate` VALUES (111,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0001','00010002','2、存在隐瞒应予披露或回避事由的情形（扣1--3分）；',10,'10');
INSERT INTO `evaluate` VALUES (112,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0001','00010003','3、由于个人原因推迟确定开庭时间、未预留开庭时间、已安排好的开庭或合议因个人原因延期或延时（造成严重后果的，如其他外地仲裁员已发生实际开支费用，酌情多扣分）（扣1--6分）；',10,'');
INSERT INTO `evaluate` VALUES (113,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0001','00010004','4、忘记开庭时间的（扣1--3分）；开庭忘记带材料的（扣1―5分）；',10,'');
INSERT INTO `evaluate` VALUES (114,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0001','00010005','5、主动打电话询问案件程序情况的（加1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (115,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0001','00010006','6、对案情熟悉，庭前合议时能够提出初步意见或能提出拟调查事项的（不加分也不扣分）；对案情不熟悉，庭前合议时未能提出初步意见或能提出拟调查事项的，导致庭审效率不高（扣1--5分）；庭前能做好审理计划书或归纳争议点或作其他能提高庭审效率工作的（加1--10分并标注）；庭前没有认真阅卷，合议时一味附和，提不出自己意见的（扣1--10分）。',10,'');
INSERT INTO `evaluate` VALUES (116,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','','0002','庭审中',0,'');
INSERT INTO `evaluate` VALUES (117,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020001','7、开庭因非正当原因迟到（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (118,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020002','8、开庭着装太随意或开庭发言太随意引起当事人不满的（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (119,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020003','9、没有预留足够庭审时间和合议时间（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (120,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020004','10、庭审时仲裁员有接手机、发短信、随意离开开庭室等不当行为（扣1--3分）；',10,'');
INSERT INTO `evaluate` VALUES (121,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020005','11、在开庭审理及仲裁程序中，表现出偏袒倾向，包括代替或变相代替一方向另一方质证、辩论、提出请求或明显具有诱导性问题的（该考察点请谨慎评价）（扣1--10分）；',10,'');
INSERT INTO `evaluate` VALUES (122,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020006','12、庭审时心不在焉或打瞌睡（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (123,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020007','13、不能控制庭审节奏，导致开庭时间拖延（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (124,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020008','14、不能抓住案件实质问题进行调查的（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (125,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020009','15、对仲裁程序和庭审程序不熟悉，引起当事人不满的（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (126,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020010','16、不和其他两位仲裁员沟通，独断专行的（扣1－5分）；',10,'');
INSERT INTO `evaluate` VALUES (127,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020011','17、仲裁员掌握庭审水平和技巧的（可以加分或减分，分值在－5至5分之间）；',10,'');
INSERT INTO `evaluate` VALUES (128,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0002','00020012','18、调解时能促成当事人和解的（加1--5分并标注）。',10,'');
INSERT INTO `evaluate` VALUES (129,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','','0003','庭审后',0,'');
INSERT INTO `evaluate` VALUES (130,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0003','00030001','19、在未经仲裁委员会同意，擅自对外发表关于仲裁案件的不当言论的（扣1--5分）；',10,'');
INSERT INTO `evaluate` VALUES (131,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0003','00030002','20、不愿意起草裁决书又没有正当理由的（首席扣1--5分，边裁不扣分）；',10,'');
INSERT INTO `evaluate` VALUES (132,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0003','00030003','21、在首席不写裁决书时主动承揽起草裁决书任务的（边裁加1--10分，首席不加分）；',10,'');
INSERT INTO `evaluate` VALUES (133,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0003','00030004','22、对别人写的裁决书稿发表意见不及时（收到裁决书稿一个星期内没有发表意见的）或不负责（提不出任何理由，一味地附和）（扣1--10分）；',10,'10');
INSERT INTO `evaluate` VALUES (134,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0003','00030005','23、起草裁决书时间不算快（未因此导致裁决延期的）但质量高，无需作较大改动的（不加分也不扣分）；起草裁决书时间太晚，导致裁决延期的（扣1--10分）；起草裁决书时间太晚，导致裁决延期的，且质量不高的（扣1--15分）；起草裁决书时间快，但质量不高（扣1--5分）；承担起草裁决书的任务，但是找人代写（扣1--10分）；对秘书起草的裁决书没有认真审阅的（扣1--5分）；没有正当理由导致对裁决书核校意见反馈不及时的（收到核校意见一星期后才反馈）（扣1--5分）；对他人的中肯意见没有理由一味地不接受的（扣1--5分）。',10,'10');
INSERT INTO `evaluate` VALUES (135,'assistant_to_arbitman','Y','20150161','llcai ','2015-05-30 03:20:42','0001','00001592','汪锡君WANG Xijun','0003','00030006','24、裁决书发出去后由于仲裁员的过错产生偏差导致社会效果不好的（扣1--10分）。',10,'10');

--
-- Table structure for table `handbook`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `handbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL COMMENT '状态：1发布，0未发布',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  `category` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别',
  `ranges` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发布范围',
  `put_date` datetime DEFAULT NULL COMMENT '发布时间',
  `num` int(11) DEFAULT '0' COMMENT '序号',
  `hits` int(11) DEFAULT '0' COMMENT '点击量',
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发布人，最后修改时间',
  `edit_time` datetime DEFAULT NULL,
  `edit_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发布人，最后修改时间',
  `active` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1为在用，0为逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='案办指南\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handbook`
--

INSERT INTO `handbook` VALUES (1,1,'sdf','','0001','1,2','2014-12-31 00:00:00',1,0,'2015-01-04 11:48:38','','2015-05-30 02:39:05','admin','1');
INSERT INTO `handbook` VALUES (2,1,'qaaq','dsf','0001','1','2015-01-06 00:00:00',1,0,'2015-01-04 04:17:14','','2015-01-04 04:17:14','','1');
INSERT INTO `handbook` VALUES (3,0,'aaa','','0001','','2015-01-05 00:00:00',0,0,'2015-01-04 04:26:54','','2015-01-04 04:27:00','admin','1');
INSERT INTO `handbook` VALUES (4,1,'',NULL,'0001','',NULL,0,0,'2015-01-19 02:49:49','','2015-01-19 02:49:49','','1');
INSERT INTO `handbook` VALUES (5,1,'',NULL,'0001','',NULL,0,0,'2015-01-19 02:58:53','','2015-01-19 02:58:53','','1');
INSERT INTO `handbook` VALUES (6,1,'测试','<p>测试系统给您带来不便敬请谅解。</p>','0002','1,2,3',NULL,2,0,'2015-05-30 02:38:08','','2015-05-30 04:43:35','admin','1');
INSERT INTO `handbook` VALUES (7,1,'测试','<p>测试系统，给您带来不便敬请原谅。</p>','0002','1,2,3','2015-06-03 00:00:00',3,0,'2015-06-03 03:08:25','','2015-06-03 03:08:25','','1');

--
-- Table structure for table `industry`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL COMMENT '状态：1新建未同步，2已同步',
  `arbitman_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '裁员仲编码',
  `industry_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '行业编码',
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_time` datetime DEFAULT NULL,
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='仲裁员行业信息表（仲裁员申请）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` VALUES (1,1,'a115','0001',NULL,NULL,'N');
INSERT INTO `industry` VALUES (2,1,'a118','0001',NULL,NULL,'Y');
INSERT INTO `industry` VALUES (3,1,'a124','0001',NULL,NULL,'Y');
INSERT INTO `industry` VALUES (4,1,'a125','0001',NULL,NULL,'N');
INSERT INTO `industry` VALUES (5,1,'a125','0001',NULL,NULL,'N');
INSERT INTO `industry` VALUES (6,1,'a125','0002',NULL,NULL,'N');
INSERT INTO `industry` VALUES (7,1,'a125','0001',NULL,NULL,'N');
INSERT INTO `industry` VALUES (8,1,'a125','0001',NULL,NULL,'Y');
INSERT INTO `industry` VALUES (9,1,'a128','0001',NULL,NULL,'N');
INSERT INTO `industry` VALUES (10,1,'a128','0002',NULL,NULL,'Y');
INSERT INTO `industry` VALUES (11,1,'a132','0001',NULL,NULL,'N');
INSERT INTO `industry` VALUES (12,1,'a132','003',NULL,NULL,'N');
INSERT INTO `industry` VALUES (13,1,'a136','003',NULL,NULL,'Y');
INSERT INTO `industry` VALUES (14,1,'a138','0001',NULL,NULL,'Y');
INSERT INTO `industry` VALUES (15,1,'a138','0001',NULL,NULL,'Y');
INSERT INTO `industry` VALUES (16,1,'a141','003',NULL,NULL,'Y');
INSERT INTO `industry` VALUES (17,1,'a145','0001',NULL,NULL,'Y');
INSERT INTO `industry` VALUES (18,1,'a145','003',NULL,NULL,'Y');

--
-- Table structure for table `jrdbs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jrdbs` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jrdbs`
--


--
-- Table structure for table `language`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `status` int(11) DEFAULT NULL COMMENT '状态：1新建未同步，2已同步',
  `arbitman` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仲裁员ID',
  `lannum` smallint(6) DEFAULT NULL COMMENT '语言序号',
  `language` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '语种,读取系统基本字典表中条目代码前缀为“  WY ”的数据',
  `ability` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '听说能力,读取系统基本字典表中条目代码前缀为“  NL ”的数据',
  `literacy` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '读写能力,读取系统基本字典表中条目代码前缀为“  NL ”的数据',
  `remark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_time` datetime DEFAULT NULL,
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='仲裁员外语语种表（仲裁员申请）; InnoDB free: 351232 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

INSERT INTO `language` VALUES (1,1,'a115',NULL,'0001','0001','0001','备',NULL,NULL,'Y');
INSERT INTO `language` VALUES (2,1,'a118',NULL,'0003','0002','0002','',NULL,NULL,'Y');
INSERT INTO `language` VALUES (3,1,'a121',NULL,'0001','0002','0001','',NULL,NULL,'Y');
INSERT INTO `language` VALUES (4,1,'a124',NULL,'0001','0001','0001','',NULL,NULL,'Y');
INSERT INTO `language` VALUES (5,1,'a125',NULL,'0002','0002','0002','faf',NULL,NULL,'N');
INSERT INTO `language` VALUES (6,1,'a125',NULL,'0001','0002','0001','fasfa',NULL,NULL,'Y');
INSERT INTO `language` VALUES (7,1,'a125',NULL,'0007','0002','0001','faeaf',NULL,NULL,'Y');
INSERT INTO `language` VALUES (8,1,'a128',NULL,'0001','0001','0001','aa',NULL,NULL,'N');
INSERT INTO `language` VALUES (9,1,'a128',NULL,'0005','0002','0002','aaa',NULL,NULL,'N');
INSERT INTO `language` VALUES (10,1,'a128',NULL,'0002','0001','0002','aa',NULL,NULL,'Y');
INSERT INTO `language` VALUES (11,1,'a132',NULL,'0001','0002','0002','',NULL,NULL,'Y');
INSERT INTO `language` VALUES (12,1,'a138',NULL,'0001','0002','0002','',NULL,NULL,'Y');
INSERT INTO `language` VALUES (13,1,'a145',NULL,'0001','0001','0001','',NULL,NULL,'Y');
INSERT INTO `language` VALUES (14,1,'a146',NULL,'0001','0001','0001','',NULL,NULL,'Y');

--
-- Table structure for table `menus`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '角色编码',
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '菜单编码',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '菜单名称',
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '页面url',
  `controllers` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '控制器列表用 | 分割',
  `actions` varchar(500) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'action全路径列表，用 | 分割',
  `parent` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '父节点编码，根节点的父节点为0',
  `name_tw` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `name_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='菜单信息表的父子关系存储';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` VALUES (1,'0001','001','系统管理','','','','0','','');
INSERT INTO `menus` VALUES (4,'0001','001001','系统参数','/sysArg/findSysArgList.do','|sysArg|','','001','','');
INSERT INTO `menus` VALUES (5,'0001','001002','系统权限管理','/page/findPageList.do','|page|','|page/findPageList|','001','','');
INSERT INTO `menus` VALUES (6,'0001','001003','角色管理','/role/findRoleList.do','|role|menu|','|page/page_select|','001','','');
INSERT INTO `menus` VALUES (7,'0001','001004','用户信息管理','/user/findUserList.do','|user|ur|ud|','','001','','');
INSERT INTO `menus` VALUES (8,'0001','001005','当事方外网用户信息','/wuser/findWuserList.do','|wuser|','','001','','');
INSERT INTO `menus` VALUES (9,'0001','001006','文件下载记录','/downlog/findDownlogList.do','|downlog|','','001','','');
INSERT INTO `menus` VALUES (10,'0001','002','内容管理','','','','0','','');
INSERT INTO `menus` VALUES (11,'0001','002001','公告信息管理','/notify/findNotifyList.do','|notify|','','002','','');
INSERT INTO `menus` VALUES (12,'0001','002002','建议信息管理','/propose/findProposeList.do','|propose|','','002','','');
INSERT INTO `menus` VALUES (13,'0102','001','仲裁员个人信息管理','','','','0','','');
INSERT INTO `menus` VALUES (14,'0102','002','办理案件','','','','0','','');
INSERT INTO `menus` VALUES (16,'0102','001001','仲裁员个人信息','/arbitman/me.do','|arbitman|arbitmanIn|arbitmanSub|educate|educateIn|educateSub|industry|industryIn|industrySub|resume|resumeIn|resumeSub|language|languageIn|languageSub|arbitmanAtt|arbitmanAttIn|','|dictionary/select_1|','001','','');
INSERT INTO `menus` VALUES (19,'0001','001007','附件配置信息','/attachmentConfig/findAttachmentConfigList.do','|attachmentConfig|','','001','','');
INSERT INTO `menus` VALUES (20,'0101','001','申请提交案件信息','','','','0','','');
INSERT INTO `menus` VALUES (21,'0101','001001','申请提交案件信息','/caseApply/findCaseApplyList.do','|caseApply|party|party2|agent|partyRequest|contractsign|caseAtt|region|','','001','','');
INSERT INTO `menus` VALUES (22,'0101','005','常用功能','','','','0','','');
INSERT INTO `menus` VALUES (23,'0101','005001','公告信息','/myNotify/findMyNotifyList.do','|myNotify|','','005','','');
INSERT INTO `menus` VALUES (24,'0101','005002','我的建议信息','/myPropose/findMyProposeList.do','|myPropose|','','005','','');
INSERT INTO `menus` VALUES (25,'0102','002001','选择案件','/arbitmanCaseIn/findArbitmanCaseInList.do','|arbitmanCaseIn|caseDocIn|caseBookIn|fileDown|','','002','','');
INSERT INTO `menus` VALUES (26,'0102','002003','案件附件管理','/arbitmanCaseAttIn/findArbitmanCaseAttInList.do','|arbitmanCaseIn|arbitmanCaseAttIn|','','002','','');
INSERT INTO `menus` VALUES (27,'0102','002002','案件基本信息','/arbitmanCaseIn/showArbitmanCaseIn.do','|arbitmanCaseIn|','','002','','');
INSERT INTO `menus` VALUES (28,'0102','002014','评价其它仲裁员','/evaluateArbitmanToArbitman/findEvaluateArbitmanToArbitmanList.do','|evaluateArbitmanToArbitman|','','002','','');
INSERT INTO `menus` VALUES (29,'0102','002015','评价办案助理','/evaluateArbitmanToAssistant/findEvaluateArbitmanToAssistantList.do ','|evaluateArbitmanToAssistant|','','002','','');
INSERT INTO `menus` VALUES (31,'0101','002001','选择案件','/partyCaseIn/findPartyCaseInList.do ','|partyCaseIn|caseDocIn|caseBookIn|fileDown|','','002','','');
INSERT INTO `menus` VALUES (32,'0101','002011','评价仲裁委办案助理','/evaluatePartyToAssistant/findEvaluatePartyToAssistantList.do ','|evaluatePartyToAssistant|partyCaseIn|','','002','','');
INSERT INTO `menus` VALUES (33,'0101','002012','评价仲裁员','/evaluatePartyToArbitman/findEvaluatePartyToArbitmanList.do ','|evaluatePartyToArbitman|partyCaseIn|','','002','','');
INSERT INTO `menus` VALUES (34,'0103','001','助理案件','','','','0','','');
INSERT INTO `menus` VALUES (36,'0103','001001','选择案件','/assistantCaseIn/findAssistantCaseInList.do','|assistantCaseIn|','','001','','');
INSERT INTO `menus` VALUES (38,'0102','003','案件报酬','','','','0','','');
INSERT INTO `menus` VALUES (37,'0103','001005','评价仲裁员','/evaluateAssistantToArbitman/findEvaluateAssistantToArbitmanList.do','|evaluateAssistantToArbitman|AssistantCaseInAction|','','001','','');
INSERT INTO `menus` VALUES (39,'0102','003001','在办案件报酬','/arbitmanRewardBeforeIn/findArbitmanRewardBeforeInList.do','|arbitmanRewardBeforeIn|','','003','','');
INSERT INTO `menus` VALUES (40,'0102','003001','已结案件报酬','/arbitmanRewardAfterIn/findArbitmanRewardAfterInList.do ','|arbitmanRewardAfterIn|','','003','','');
INSERT INTO `menus` VALUES (41,'0102','007','常用功能','','','','0','','');
INSERT INTO `menus` VALUES (42,'0102','004003','我的消息','/remindIn/findRemindBeforeInList.do ','|remindIn|','','004','','');
INSERT INTO `menus` VALUES (43,'0103','001009','仲裁员信息查询','/searchArbitmanInForAssistant/findArbitmanInForAssistantList.do','|searchArbitmanInForAssistant|showArbitmanIn|','','001','','');
INSERT INTO `menus` VALUES (45,'0001','001000','刷新系统缓存','/sysUp/list.do','|sysUp|','','001','','');
INSERT INTO `menus` VALUES (74,'0101','005201','仲裁员信息查询','/searchArbitmanInForUser/findArbitmanInForUserList.do','|searchArbitmanInForUser|','','005','','');
INSERT INTO `menus` VALUES (72,'0103','003001','申请提交案件信息','/caseApply/findCaseApplyList.do','|caseApply|party|party2|agent|partyRequest|contractsign|caseAtt|region|','','003','','');
INSERT INTO `menus` VALUES (48,'0001','001008','仲裁员信息下载更新','/arbitmanPublicUp/list.do','|arbitmanPublicUp|','','001','','');
INSERT INTO `menus` VALUES (50,'0101','009001','个人信息','/wuser/myInfo.do ','','|wuser/myInfo|wuser/updateMyInfo|wuser/updateMyInfoSub|','009','','');
INSERT INTO `menus` VALUES (52,'0101','002','案件信息','','','','0','','');
INSERT INTO `menus` VALUES (53,'0101','002001','案件基本信息','/partyCaseIn/showPartyCaseIn.do ','|partyCaseIn|caseDocIn|caseBookIn|fileDown|','','002','','');
INSERT INTO `menus` VALUES (55,'0102','002021','查看对自己的评价','/arbitmanEvaluateInfo/show.do','|arbitmanEvaluateInfo|','','002','','');
INSERT INTO `menus` VALUES (56,'0103','001002','案件基本信息','/assistantCaseIn/showAssistantCaseIn.do','|assistantCaseIn|','','001','','');
INSERT INTO `menus` VALUES (57,'0101','005003','我的消息','/remindIn/findRemindBeforeInList.do ','|remindIn|','','005','','');
INSERT INTO `menus` VALUES (58,'0102','007001','公告信息','/myNotify/findMyNotifyList.do','|myNotify|','','007','','');
INSERT INTO `menus` VALUES (59,'0102','007002','我的建议','/myPropose/findMyProposeList.do','|myPropose|','','007','','');
INSERT INTO `menus` VALUES (60,'0103','001008','查看对自己的评价','/assistantEvaluateInfo/show.do','|assistantEvaluateInfo|','','001','','');
INSERT INTO `menus` VALUES (61,'0102','005','查询','','','','0','','');
INSERT INTO `menus` VALUES (62,'0102','005005','审限到期案件查询','/arbitmanCaseTerm/list.do ','|arbitmanCaseTerm|','','005','','');
INSERT INTO `menus` VALUES (63,'0103','005','查询','','','','0','','');
INSERT INTO `menus` VALUES (64,'0103','005001','审限到期案件查询','/assistantCaseTerm/list.do','|assistantCaseTerm|','','005','','');
INSERT INTO `menus` VALUES (65,'0102','005002','仲裁员结案案件的立结审时间统计（独任和首席）','/arbitmanCaseTime/list.do?category=a','|arbitmanCaseTime|','','005','','');
INSERT INTO `menus` VALUES (66,'0102','005003','仲裁员结案案件的立结审时间统计（边裁）','/arbitmanCaseTime/list.do?category=b','|arbitmanCaseTime|','','005','','');
INSERT INTO `menus` VALUES (67,'0101','005101','仲裁费用计算','/cost/list.do','|cost|','','005','','');
INSERT INTO `menus` VALUES (68,'0001','009','公共功能','','','','0','','');
INSERT INTO `menus` VALUES (69,'0001','009001','仲裁员公共信息查询','/arbitmanPublic/list.do','','','009','','');
INSERT INTO `menus` VALUES (70,'0001','009005','仲裁费用计算','/cost/list.do','|cost|','','009','','');
INSERT INTO `menus` VALUES (71,'0103','003','申请提交案件信息','','','','0','','');
INSERT INTO `menus` VALUES (73,'0102','007002','我的消息','/remindIn/findRemindBeforeInList.do ','|remindIn|','','007','','');
INSERT INTO `menus` VALUES (78,'0101','005000','网上沟通互动','/tqMessage/index.do','|tqMessage|','','005','','');
INSERT INTO `menus` VALUES (77,'0102','007000','网上沟通互动','/tqMessage/index.do','|tqMessage|','','007','','');
INSERT INTO `menus` VALUES (79,'0101','002009','案件留言','/partyCaseMessage/list.do','|partyCaseMessage|','','002','','');
INSERT INTO `menus` VALUES (81,'0101','005006','我的文件下载记录','/myDownlog/list.do','|myDownlog|','','005','','');
INSERT INTO `menus` VALUES (82,'0102','007006','我的文件下载记录','/myDownlog/list.do','|myDownlog|','','007','','');
INSERT INTO `menus` VALUES (101,'0101','0004444','培训信息','/myTrain/myRegList.do ','|myTrain|','','','','myTrain');
INSERT INTO `menus` VALUES (84,'0102','007051','办案指南','/myHandbook/list.do','|myHandbook|','','007','','');
INSERT INTO `menus` VALUES (85,'0001','002101','办案指南信息管理','/handbook/list.do','|handbook|','','002','','');
INSERT INTO `menus` VALUES (86,'0101','005301','办案指南','/myHandbook/list.do','|myHandbook|','','005','','');
INSERT INTO `menus` VALUES (87,'0102','007502','培训信息','/myTrain/list.do ','|myTrain|','','007','','');
INSERT INTO `menus` VALUES (88,'0001','002012','培训信息管理','/train/list.do ','|train|','searchArbitmanInForUser/select|','002','','');
INSERT INTO `menus` VALUES (89,'0102','007503','我的培训记录','/myTrain/myRegList.do ','|myTrain|','','007','','');
INSERT INTO `menus` VALUES (93,'0101','002003','案件附件管理','/partyCaseAttIn/list.do ','|partyCaseAttIn|','','002','案件附件管理','');
INSERT INTO `menus` VALUES (91,'0101','005303','我的培训记录','/myTrain/myRegList.do ','|myTrain|','','005','','');
INSERT INTO `menus` VALUES (92,'0101','005302','培训信息','/myTrain/list.do ','|myTrain|','','005','','');
INSERT INTO `menus` VALUES (94,'0101','002004','选择案件仲裁员','/partyAppointArbitman/assistantCaseTerm/list.do ','|partyAppointArbitman|selectArbitmanInForUser|','','002','选择案件仲裁员','');
INSERT INTO `menus` VALUES (95,'0102','007007','法律链接库','/lawLink/list.do','|lawLink|','','007','','');
INSERT INTO `menus` VALUES (103,'0103','004','常用功能','','','','0','','');
INSERT INTO `menus` VALUES (104,'0103','004001','法律连接库','/lawLink/list.do','|lawLink|','','004','','');
INSERT INTO `menus` VALUES (99,'0101','','','33535','3535','35353','009001','','');
INSERT INTO `menus` VALUES (100,'0101','','','/tqMessage/index.do','|tqMessage|','','009','','');
INSERT INTO `menus` VALUES (102,'0101','TEST','测试','/sysArg/findSysArgList.do','|sysArg|','','009','','TEST');
INSERT INTO `menus` VALUES (108,'0101','006','个人信息','','','','0','','');
INSERT INTO `menus` VALUES (109,'0101','006001','个人信息','/wuser/myInfo.do ','','|wuser/myInfo|wuser/updateMyInfo|wuser/updateMyInfoSub|','006','','');

--
-- Table structure for table `notifiy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifiy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL COMMENT '状态：1发布，0未发布',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  `category` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别',
  `ranges` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发布范围',
  `put_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发布时间',
  `num` int(11) DEFAULT '0' COMMENT '序号',
  `hits` int(11) DEFAULT '0' COMMENT '点击量',
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发布人，最后修改时间',
  `edit_time` datetime DEFAULT NULL,
  `edit_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发布人，最后修改时间',
  `active` varchar(1) COLLATE utf8_unicode_ci DEFAULT '1' COMMENT '1为在用，0为逻辑删除',
  `place` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifiy`
--

INSERT INTO `notifiy` VALUES (1,1,'test','testtest一下bghgfggfhgfhfaf','0002','1,2,3','2014-10-09',1,NULL,NULL,NULL,'2014-11-11 03:16:10','admin','1',NULL);
INSERT INTO `notifiy` VALUES (2,1,'测试','测试gfhgfhgfdsafafasdfawqerwe','0001','1,2,3','2014-11-01',123,NULL,NULL,NULL,'2014-11-11 03:16:16','admin','1',NULL);
INSERT INTO `notifiy` VALUES (3,1,'123','123fd ','0001','1','2014-11-11',123,NULL,NULL,NULL,'2014-11-11 04:38:03','admin','1',NULL);
INSERT INTO `notifiy` VALUES (4,1,'',NULL,'0001','3',NULL,0,0,'2015-01-19 02:48:30','','2015-06-10 15:57:57','admin','1','');
INSERT INTO `notifiy` VALUES (5,1,'测试','<p>测试，不必回复。</p>','0001','1,2,3',NULL,1,0,'2015-05-18 11:00:43','','2015-06-10 15:58:03','admin','1','');
INSERT INTO `notifiy` VALUES (6,1,'测试','<p>测试</p>','0001','1,2,3',NULL,1,0,'2015-05-18 12:06:40','','2015-06-10 15:58:07','admin','1','');
INSERT INTO `notifiy` VALUES (7,1,'测试，，，','<p>测试，，，测试，，，</p>','0001','1,2,3',NULL,1,0,'2015-05-18 12:07:51','','2015-06-10 15:58:12','admin','1','');
INSERT INTO `notifiy` VALUES (8,1,'测试','<p>系统测试，带来不便敬请谅解</p>','0001','1,2,3','2015-06-26',1,0,'2015-06-03 15:03:16','admin','2015-06-03 15:03:16','admin','1','深圳');

--
-- Table structure for table `pages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '页面编码，只用于排序。',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '页面名称',
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '页面url',
  `controllers` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '控制器列表用 | 分割',
  `actions` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '状态，Y可用，N弃用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=597 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='菜单项对应的页面信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` VALUES (530,'001','系统管理','','','','Y');
INSERT INTO `pages` VALUES (536,'001002','系统权限管理','/page/findPageList.do','|page|','|page/findPageList|','Y');
INSERT INTO `pages` VALUES (535,'003001','仲裁员信息管理（仲裁员自己维护）','/arbitman/me.do','|arbitman|arbitmanIn|arbitmanSub|educate|educateIn|educateSub|industry|industryIn|industrySub|resume|resumeIn|resumeSub|language|languageIn|languageSub|arbitmanAtt|arbitmanAttIn|','|dictionary/select_1|','Y');
INSERT INTO `pages` VALUES (533,'003','仲裁员信息管理','','','','Y');
INSERT INTO `pages` VALUES (537,'001003','角色管理','/role/findRoleList.do','|role|menu|','|page/page_select|','Y');
INSERT INTO `pages` VALUES (538,'001004','用户信息管理','/user/findUserList.do','|user|ur|ud|','','Y');
INSERT INTO `pages` VALUES (539,'001001','系统参数','/sysArg/findSysArgList.do','|sysArg|','','Y');
INSERT INTO `pages` VALUES (540,'001005','当事方外网用户信息','/wuser/findWuserList.do','|wuser|','','Y');
INSERT INTO `pages` VALUES (541,'001006','文件下载记录','/downlog/findDownlogList.do','|downlog|','','Y');
INSERT INTO `pages` VALUES (542,'002','内容管理','','','','Y');
INSERT INTO `pages` VALUES (543,'002001','公告信息管理','/notify/findNotifyList.do','|notify|','','Y');
INSERT INTO `pages` VALUES (544,'002002','建议信息管理','/propose/findProposeList.do','|propose|','','Y');
INSERT INTO `pages` VALUES (546,'001007','附件配置信息','/attachmentConfig/findAttachmentConfigList.do','|attachmentConfig|','','Y');
INSERT INTO `pages` VALUES (547,'005','当事方案件信息维护','','','','Y');
INSERT INTO `pages` VALUES (548,'005001','案件申请(当事方和助理使用同一个程序)','/caseApply/findCaseApplyList.do','|caseApply|party|party2|agent|partyRequest|contractsign|caseAtt|region|','','Y');
INSERT INTO `pages` VALUES (549,'090001','公告信息','/myNotify/findMyNotifyList.do','|myNotify|','','Y');
INSERT INTO `pages` VALUES (550,'090','系统公共功能','','','','Y');
INSERT INTO `pages` VALUES (551,'090002','我的建议','/myPropose/findMyProposeList.do','|myPropose|','','Y');
INSERT INTO `pages` VALUES (552,'003002','仲裁员选择案件','/arbitmanCaseIn/findArbitmanCaseInList.do','|arbitmanCaseIn|caseDocIn|caseBookIn|fileDown|','','Y');
INSERT INTO `pages` VALUES (553,'003004','案件附件管理','/arbitmanCaseAttIn/findArbitmanCaseAttInList.do','|arbitmanCaseIn|arbitmanCaseAttIn|','','Y');
INSERT INTO `pages` VALUES (554,'003003','案件基本信息','/arbitmanCaseIn/showArbitmanCaseIn.do','|arbitmanCaseIn|','','Y');
INSERT INTO `pages` VALUES (555,'003005','评价其它仲裁员','/evaluateArbitmanToArbitman/findEvaluateArbitmanToArbitmanList.do','|evaluateArbitmanToArbitman|','','Y');
INSERT INTO `pages` VALUES (556,'003006','评价办案助理','/evaluateArbitmanToAssistant/findEvaluateArbitmanToAssistantList.do ','|evaluateArbitmanToAssistant|','','Y');
INSERT INTO `pages` VALUES (557,'005002','当事方选择案件','/partyCaseIn/findPartyCaseInList.do ','|partyCaseIn|caseDocIn|caseBookIn|fileDown|','','Y');
INSERT INTO `pages` VALUES (558,'005005','评价仲裁委办案助理','/evaluatePartyToAssistant/findEvaluatePartyToAssistantList.do ','|evaluatePartyToAssistant|partyCaseIn|','','Y');
INSERT INTO `pages` VALUES (559,'005004','评价仲裁员','/evaluatePartyToArbitman/findEvaluatePartyToArbitmanList.do ','|evaluatePartyToArbitman|partyCaseIn|','','Y');
INSERT INTO `pages` VALUES (560,'006','办案助理','','','','Y');
INSERT INTO `pages` VALUES (561,'006001','助理选择案件','/assistantCaseIn/findAssistantCaseInList.do','|assistantCaseIn|','','Y');
INSERT INTO `pages` VALUES (562,'006005','助理评价仲裁员','/evaluateAssistantToArbitman/findEvaluateAssistantToArbitmanList.do','|evaluateAssistantToArbitman|AssistantCaseInAction|','','Y');
INSERT INTO `pages` VALUES (563,'003011','仲裁员在办案件报酬','/arbitmanRewardBeforeIn/findArbitmanRewardBeforeInList.do','|arbitmanRewardBeforeIn|','','Y');
INSERT INTO `pages` VALUES (564,'003012','仲裁员结案后案件报酬','/arbitmanRewardAfterIn/findArbitmanRewardAfterInList.do ','|arbitmanRewardAfterIn|','','Y');
INSERT INTO `pages` VALUES (565,'090003','我的消息','/remindIn/findRemindBeforeInList.do ','|remindIn|','','Y');
INSERT INTO `pages` VALUES (566,'006009','仲裁员信息查询','/searchArbitmanInForAssistant/findArbitmanInForAssistantList.do','|searchArbitmanInForAssistant|showArbitmanIn|','','Y');
INSERT INTO `pages` VALUES (568,'001000','刷新系统缓存','/sysUp/list.do','|sysUp|','','Y');
INSERT INTO `pages` VALUES (574,'005003','案件基本信息','/partyCaseIn/showPartyCaseIn.do ','|partyCaseIn|caseDocIn|caseBookIn|fileDown|','','Y');
INSERT INTO `pages` VALUES (572,'001201','仲裁员公共信息查询','/arbitmanPublic/list.do','','','Y');
INSERT INTO `pages` VALUES (570,'001008','仲裁员信息下载更新','/arbitmanPublicUp/list.do','|arbitmanPublicUp|','','Y');
INSERT INTO `pages` VALUES (571,'005201','当事方个人信息','/wuser/myInfo.do ','','|wuser/myInfo|wuser/updateMyInfo|wuser/updateMyInfoSub|','Y');
INSERT INTO `pages` VALUES (573,'003200','案件文档','/caseBookIn/list.do','|caseBookIn|','','Y');
INSERT INTO `pages` VALUES (575,'003007','查看对自己的评价','/arbitmanEvaluateInfo/show.do','|arbitmanEvaluateInfo|','','Y');
INSERT INTO `pages` VALUES (576,'006002','案件基本信息','/assistantCaseIn/showAssistantCaseIn.do','|assistantCaseIn|','','Y');
INSERT INTO `pages` VALUES (577,'006006','查看对自己的评价','/assistantEvaluateInfo/show.do','|assistantEvaluateInfo|','','Y');
INSERT INTO `pages` VALUES (578,'003020','审限到期案件查询','/arbitmanCaseTerm/list.do ','|arbitmanCaseTerm|','','Y');
INSERT INTO `pages` VALUES (579,'006020','审限到期案件查询','/assistantCaseTerm/list.do','|assistantCaseTerm|','','Y');
INSERT INTO `pages` VALUES (580,'003051','仲裁员结案案件的立结审时间统计（独任和首席）','/arbitmanCaseTime/list.do?category=a','|arbitmanCaseTime|','','Y');
INSERT INTO `pages` VALUES (581,'003052','仲裁员结案案件的立结审时间统计（边裁）','/arbitmanCaseTime/list.do?category=b','|arbitmanCaseTime|','','Y');
INSERT INTO `pages` VALUES (582,'090101','仲裁费用计算','/cost/list.do','|cost|','','Y');
INSERT INTO `pages` VALUES (583,'005301','当事方查询仲裁员信息','/searchArbitmanInForUser/findArbitmanInForUserList.do','|searchArbitmanInForUser|','','Y');
INSERT INTO `pages` VALUES (584,'090201','网上沟通互动','/tqMessage/index.do','|tqMessage|','','Y');
INSERT INTO `pages` VALUES (585,'005101','案件留言','/partyCaseMessage/list.do','|partyCaseMessage|','','Y');
INSERT INTO `pages` VALUES (587,'001202','我的文件下载记录','/myDownlog/list.do','|myDownlog|','','Y');
INSERT INTO `pages` VALUES (588,'090205','法律链接库','/lawLink/list.do','|lawLink|','','Y');
INSERT INTO `pages` VALUES (589,'002201','办案指南信息管理','/handbook/list.do','|handbook|','','Y');
INSERT INTO `pages` VALUES (590,'090231','办案指南','/myHandbook/list.do','|myHandbook|','','Y');
INSERT INTO `pages` VALUES (591,'002202','培训信息管理','/train/list.do ','|train|','|searchArbitmanInForUser/select|','Y');
INSERT INTO `pages` VALUES (592,'090232','培训信息','/myTrain/list.do ','|myTrain|','','Y');
INSERT INTO `pages` VALUES (593,'002203','我的培训记录','/myTrain/myRegList.do ','|myTrain|','','Y');
INSERT INTO `pages` VALUES (594,'005006','案件附件管理（当事方）','/partyCaseAttIn/list.do ','|partyCaseAttIn|','','Y');
INSERT INTO `pages` VALUES (595,'005007','选择案件仲裁员','/partyAppointArbitman/assistantCaseTerm/list.do ','|partyAppointArbitman|selectArbitmanInForUser|','','Y');
INSERT INTO `pages` VALUES (596,'999999','TEST','','','','N');

--
-- Table structure for table `party`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `status` int(11) DEFAULT NULL COMMENT '状态：1已确认，0新建',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `apply_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请号',
  `recevice_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `partytype` int(1) DEFAULT NULL COMMENT '当事人类型， 1：申请人 2：被申请人',
  `commissary` varchar(30) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '法定代表人',
  `isperson` int(1) DEFAULT NULL COMMENT '申请人类型，1：个人 2：单位',
  `partyname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当事人名称',
  `dutyname` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职务',
  `mobiletel` varchar(40) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '手机',
  `email` varchar(40) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'Email',
  `idnum` varchar(40) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '身份证号',
  `addr` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '联系地址',
  `tel` varchar(40) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '联系电话',
  `postcode` varchar(6) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '邮编',
  `post_tel_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '传真电话',
  `profession` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '行业',
  `Duty` varchar(12) COLLATE utf8_unicode_ci DEFAULT '',
  `area` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地区',
  `AcceptSendDate` datetime DEFAULT NULL,
  `AcceptSignDate` datetime DEFAULT NULL,
  `SuitSignDate` datetime DEFAULT NULL,
  `SuitSendDate` datetime DEFAULT NULL,
  `ArbitBookSendDate` datetime DEFAULT NULL,
  `u` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '维护用户',
  `u_t` datetime DEFAULT NULL COMMENT '维护时间',
  `subprofession` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '行业子分类',
  PRIMARY KEY (`id`),
  KEY `tb_parties_recevice_code` (`apply_code`),
  KEY `tb_parties_partyname` (`partyname`),
  KEY `tb_parties_area` (`area`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='当事人信息表(案件申请)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

INSERT INTO `party` VALUES (1,NULL,'Y','20140829-2',NULL,1,'卢龙',0,'深圳市银沃投资有限公司','0001',' ',' ',NULL,'广东省深圳市福田区深南大道7008号阳光高尔夫大厦2711号。',' ','','','0011',NULL,'001001001',NULL,NULL,NULL,NULL,NULL,'a179','2014-08-29 15:16:38','00110002');
INSERT INTO `party` VALUES (2,NULL,'Y','20140829-2',NULL,2,'刘涛',0,'内蒙古普盛能源有限公司','0001',' ','  ',NULL,'内蒙古自治区巴彦淖尔市临河区八一街','',' ',' ','0004',NULL,'001006',NULL,NULL,NULL,NULL,NULL,'a179','2014-08-29 15:45:17','00040001');
INSERT INTO `party` VALUES (3,NULL,'Y','20140902-1','',1,'张小千',1,'张大千','0002','123','a@126.com','','上地7街','123213','10000','1111','0003','','001005',NULL,NULL,NULL,NULL,NULL,'a182','2014-09-03 10:10:41','00030002');
INSERT INTO `party` VALUES (4,NULL,'Y','20140902-1','',1,'小老李',0,'大老李','0003','123','1@126.com','','清河大楼','456','2000','2222','0010','','001001021',NULL,NULL,NULL,NULL,NULL,'a182','2014-09-03 10:13:04','00100005');
INSERT INTO `party` VALUES (5,NULL,'Y','20140902-1','',2,'花街大少',0,'华海集团','0003','888','333@126.com','','西直门','999','222','111','0014','','001002',NULL,NULL,NULL,NULL,NULL,'a182','2014-09-03 10:43:28','00140003');
INSERT INTO `party` VALUES (6,NULL,'Y','20140903-1','',1,'小武生',1,'大武生','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'a182','2014-09-03 02:55:15','00010001');
INSERT INTO `party` VALUES (7,NULL,'Y','20140902-1','',1,'a',1,'aaa','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'a182','2014-09-03 04:06:48','00010001');
INSERT INTO `party` VALUES (8,NULL,'Y','20140903-1','',1,'神烦大叔',1,'阿斯顿撒','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'a182','2014-09-03 04:09:54','00010001');
INSERT INTO `party` VALUES (9,NULL,'Y','20140903-2','',1,'aa',1,'aaa','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'a182','2014-09-03 06:21:57','00010001');
INSERT INTO `party` VALUES (10,NULL,'Y','20140910-1','',1,' 张少明',1,'张少明（CHEUNG, Siu Ming）','0001','','','','','','','','9999','','001',NULL,NULL,NULL,NULL,NULL,'a184','2014-09-10 04:52:54','');
INSERT INTO `party` VALUES (11,NULL,'Y','20140910-1','',2,'陈达辉',1,'祥辉置业有限公司（CHEUNG FAI LAND LIMITED）','0001','','','','','',' ',' ','0012','','001',NULL,NULL,NULL,NULL,NULL,'a184','2014-09-11 09:14:50','00120001');
INSERT INTO `party` VALUES (12,NULL,'Y','20140911-1','',1,'江霞',1,'江霞','0001','','','','','','','','9999','','002',NULL,NULL,NULL,NULL,NULL,'a185','2014-09-11 11:43:34','');
INSERT INTO `party` VALUES (13,NULL,'Y','20140911-1','',1,'江伟强',1,'江伟强','0001','','','','','','','','9999','','002',NULL,NULL,NULL,NULL,NULL,'a185','2014-09-11 11:44:35','');
INSERT INTO `party` VALUES (14,NULL,'Y','20140911-2','',1,'郑景堂',1,'郑景堂','0001','','','','','','','','9999','','002',NULL,NULL,NULL,NULL,NULL,'a185','2014-09-11 03:44:37','');
INSERT INTO `party` VALUES (15,NULL,'Y','20140911-2','',2,'陈达辉',0,'祥辉置业有限公司','0001','','','','','','','','0012','','002',NULL,NULL,NULL,NULL,NULL,'a185','2014-09-11 03:45:35','00120001');
INSERT INTO `party` VALUES (16,NULL,'Y','20140911-2','',2,'李少珍',0,'祥辉建筑工程公司','0001','','','','','','','','0012','','002',NULL,NULL,NULL,NULL,NULL,'a185','2014-09-11 03:46:38','00120001');
INSERT INTO `party` VALUES (17,NULL,'Y','20140912-1','',1,'bbb',1,'aaa','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'a185','2014-09-12 10:39:53','00010001');
INSERT INTO `party` VALUES (18,NULL,'Y','20140912-1','',2,'ggg',1,'fff','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'a185','2014-09-12 10:44:35','00010001');
INSERT INTO `party` VALUES (19,NULL,'Y','20141009-1','',1,'zxvczxcvcxzv ',1,'xzc','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'a187','2014-10-09 03:32:21','00010001');
INSERT INTO `party` VALUES (20,NULL,'Y','20141009-1','',2,'fdsafsa',1,'safdas','0001','','','','','','1111','dfdsa','0001','','001001015',NULL,NULL,NULL,NULL,NULL,'a187','2014-10-09 03:32:59','00010001');
INSERT INTO `party` VALUES (21,NULL,'Y','20141024-2','',1,'无',1,'张淑贞','0001','13602421752','','','','5616721','','','9999','','002',NULL,NULL,NULL,NULL,NULL,'a189','2014-10-24 10:32:09','');
INSERT INTO `party` VALUES (22,NULL,'Y','20141024-2','',2,'陈达辉',0,'祥辉置业有限公司(CHEUNG FAI LAND LIMITED)','0001','','','','40 shan Tungstreet, Mongkok, Kowloon, Hong Kong','','','','0012','','002',NULL,NULL,NULL,NULL,NULL,'a189','2014-10-24 11:10:41','00120001');
INSERT INTO `party` VALUES (23,NULL,'Y','20141024-2','',2,'李少珍',0,'祥辉建筑工程公司（CHEUNG FAI CONSTRUCTION CO)','0001','','','','FLAT/RM1123 11/F LANDMARK NORTH 39 LUNG SUN AVENUE SHEUNG SHUI','','','','0012','','002',NULL,NULL,NULL,NULL,NULL,'a189','2014-10-24 11:17:32','00120001');
INSERT INTO `party` VALUES (24,NULL,'Y','20141024-2','',2,'周伟辉',0,'惠州市惠阳区淡水房地产开发总公司（前称：惠阳县淡水房地产开发公司）','0001','','','','惠阳区淡水镇物业城13栋203、204号','','','','0012','','001',NULL,NULL,NULL,NULL,NULL,'a189','2014-10-24 11:19:06','00120001');
INSERT INTO `party` VALUES (25,NULL,'Y','20141024-3','',1,'张小贤.',1,'王小贱.','0003','153.','1@126.com.','','通州.','111.','11.','.','0011','','001002',NULL,NULL,NULL,NULL,NULL,'a190','2014-10-24 02:47:18','00110003');
INSERT INTO `party` VALUES (26,NULL,'Y','20141024-3','',2,'汤二虎',1,'张是非','0003','555','100@126.com','','333','666','222','111','0007','','001003',NULL,NULL,NULL,NULL,NULL,'a190','2014-10-24 03:21:46','00070003');
INSERT INTO `party` VALUES (27,NULL,'N','20141024-3','',2,'是范德萨发',1,'撒旦法都','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'a190','2014-10-24 03:37:16','00010001');
INSERT INTO `party` VALUES (28,NULL,'Y','20141028-2','',1,'负责人',1,'刘一','0001','12345678901','','','北京襄渝路3号','','','','0010','','001',NULL,NULL,NULL,NULL,NULL,'a192','2014-10-28 10:28:55','00100004');
INSERT INTO `party` VALUES (29,NULL,'Y','20141028-2','',2,'负责人',1,'吴占二','0001','13456789021','','','','','','','0010','','001',NULL,NULL,NULL,NULL,NULL,'a192','2014-10-28 10:34:54','00100004');
INSERT INTO `party` VALUES (30,NULL,'Y','20141031-1','',1,'张三',1,'张三','0001','','','','','','1111','111111','0001','','001',NULL,NULL,NULL,NULL,NULL,'a193','2014-10-31 11:21:31','00010001');
INSERT INTO `party` VALUES (31,NULL,'Y','20141031-1','',2,'发发发',1,'王二','0001','23423','','','','','43242','发发1232','0001','','001',NULL,NULL,NULL,NULL,NULL,'a193','2014-10-31 11:43:58','00010001');
INSERT INTO `party` VALUES (32,NULL,'Y','20141031-1','',2,'发 ',1,'麻子','0001','2414','','','134213 42314','14143132','4134','啊发','0001','','001',NULL,NULL,NULL,NULL,NULL,'a193','2014-10-31 11:44:32','00010001');
INSERT INTO `party` VALUES (33,NULL,'Y','20141105-1','',1,'赵四',1,'赵四','0001','weqr','','','rqr','','qr','erw','0001','','001',NULL,NULL,NULL,NULL,NULL,'a196','2014-11-05 03:05:32','00010001');
INSERT INTO `party` VALUES (34,NULL,'Y','20141105-1','',2,'李三',1,'李三','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'a196','2014-11-05 03:06:59','00010001');
INSERT INTO `party` VALUES (35,NULL,'Y','20141215-1','',1,'1',1,'测试申请人','0001','12323','1@126.com','','上地','33333','2222','111','0002','','001001011',NULL,NULL,NULL,NULL,NULL,'cheshi0001','2014-12-15 04:12:17','00020001');
INSERT INTO `party` VALUES (36,NULL,'Y','20141215-1','',1,'老张',2,'测试测试','0004','222','2@126.com','','海淀','33333','111111','22222222','0007','','001009',NULL,NULL,NULL,NULL,NULL,'cheshi0001','2014-12-15 07:54:54','00070001');
INSERT INTO `party` VALUES (37,NULL,'Y','20141215-1','',2,'111',2,'小呗','0002','123','3@126.com','','清河','135','333333','3333333','0003','','001001002',NULL,NULL,NULL,NULL,NULL,'cheshi0001','2014-12-15 07:54:48','00030002');
INSERT INTO `party` VALUES (38,NULL,'Y','20141216-1','',1,'张三',1,'张三','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2014-12-16 05:21:56','00010001');
INSERT INTO `party` VALUES (39,NULL,'Y','20141216-1','',2,'',1,'麻子','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2014-12-16 05:24:04','00010001');
INSERT INTO `party` VALUES (40,NULL,'Y','20141217-1','',1,'孙浩栋',2,'湖北黄冈伊利乳业有限责任公司新余分公司','0004','13760356820','','','新余市渝水区水北镇','13590329426','','','0009','','001013',NULL,NULL,NULL,NULL,NULL,'amy_wang7','2014-12-17 03:23:44','00090001');
INSERT INTO `party` VALUES (41,NULL,'Y','20141217-1','',2,'胡芳芽',2,'新余市天凯乐冷饮食品厂','0001','15607902928','','','江西省新余市渝水区水北镇','','','','0009','','001013',NULL,NULL,NULL,NULL,NULL,'amy_wang7','2014-12-17 03:22:34','00090001');
INSERT INTO `party` VALUES (42,NULL,'Y','20141217-2','',1,'吴世均',2,'苏州瑞可达连接系统股份有限公司','0001',' ',' ','','江苏省苏州市吴中区越溪街道北官渡路7号3幢',' ','','','0003','','001012',NULL,NULL,NULL,NULL,NULL,'todaypresent','2014-12-17 03:52:44','00030014');
INSERT INTO `party` VALUES (43,NULL,'Y','20141217-2','',2,'高英杰',2,'深圳市国人射频通信有限公司','0001','','','','广东省深圳市南山区高新区中区科技中三路国人大厦B栋7F','','','','0003','','001001001',NULL,NULL,NULL,NULL,NULL,'todaypresent','2014-12-17 03:55:15','00030014');
INSERT INTO `party` VALUES (44,NULL,'Y','20141226-1','',1,'刘科',2,'中国光大银行股份有限公司深圳深南东路支行','0001','','','','深圳市罗湖区深南东路86号广深宾馆首层1002、1003中','','','','0011','','001001001',NULL,NULL,NULL,NULL,NULL,'linxiao','2014-12-26 04:02:40','00110001');
INSERT INTO `party` VALUES (45,NULL,'Y','20141226-1','',2,'任祥林',2,'深圳市华江科技有限公司','0001','','','','深圳市福田区泰然九路211栋315室内','83570698','','','0010','','001001001',NULL,NULL,NULL,NULL,NULL,'linxiao','2014-12-26 04:02:28','00100006');
INSERT INTO `party` VALUES (46,NULL,'Y','20141226-1','',2,'',1,'任祥林','0001','','','','四川省西充县晋城镇晋城大道一段310号4楼','','','','9999','','001020',NULL,NULL,NULL,NULL,NULL,'linxiao','2014-12-26 04:04:08','');
INSERT INTO `party` VALUES (47,NULL,'Y','20141226-1','',2,'',1,'梁戈西','0001','','','','广东省深圳市福田区园岭东路2号园岭新村18栋506','','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'linxiao','2014-12-26 04:05:50','');
INSERT INTO `party` VALUES (48,NULL,'Y','20141230-1','',1,'陈乐田',2,'禾田投资集团有限公司（原名“广州市豪邦工贸发展有限公司”）','0001','','','','广州市天河区科韵路16号B栋自编2栋1201','','','','0012','','001001002',NULL,NULL,NULL,NULL,NULL,'linxiao','2014-12-30 02:27:31','00120001');
INSERT INTO `party` VALUES (49,NULL,'Y','20141230-1','',1,'陈乐田',2,'广州市禾田实业发展有限公司','0001','','','','广州市天河区科韵路16号B栋自编2栋1201','','','','0012','','001',NULL,NULL,NULL,NULL,NULL,'linxiao','2014-12-30 02:28:37','00120001');
INSERT INTO `party` VALUES (50,NULL,'Y','20141230-1','',2,'罗耀均',2,'广州中联置业有限公司','0001','13602767000','','','广州市越秀区先烈中路82号翰林阁2803室','','','','0012','','001',NULL,NULL,NULL,NULL,NULL,'linxiao','2014-12-30 02:29:47','00120001');
INSERT INTO `party` VALUES (51,NULL,'Y','20150109-1','',1,'',2,'东莞鹏远塑胶有限公司','0001','','','','广东省东莞市黄江镇长龙工业区','0769-83638000、0769-8368863','','','0003','','001001017',NULL,NULL,NULL,NULL,NULL,'linxiao','2015-01-09 03:15:10','00030011');
INSERT INTO `party` VALUES (52,NULL,'Y','20150109-1','',2,'陈君奕',2,'惠州宝田塑胶包装有限公司','0001','','','','广东省惠州市惠环镇工业区','86-752-2630003、2630008','','86-752-2630023','0001','','001001011',NULL,NULL,NULL,NULL,NULL,'linxiao','2015-01-09 03:16:41','00010001');
INSERT INTO `party` VALUES (53,NULL,'Y','20150114-1','',1,'',1,'李文国','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'MCT_791213','2015-01-14 11:06:10','00010001');
INSERT INTO `party` VALUES (54,NULL,'Y','20150115-1','',1,'',1,'杨善增','0001','','','','广东省深圳市南山区蔚蓝海岸D17-10A','','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'北京市东元（深圳）律师事务所','2015-01-15 10:03:22','');
INSERT INTO `party` VALUES (55,NULL,'Y','20150115-1','',2,'徐永斌',1,'深圳杏石投资管理有限公司','0001','','','','深圳市南山区科发路8号金融服务技术创新基地1栋4楼A','','','','0001','','001001001',NULL,NULL,NULL,NULL,NULL,'北京市东元（深圳）律师事务所','2015-01-15 10:10:19','00010001');
INSERT INTO `party` VALUES (56,NULL,'Y','20150115-1','',2,'',1,'徐永斌','0001','','','','山东省潍坊市奎文区潍州路676号1单元101号','','','','9999','','001014',NULL,NULL,NULL,NULL,NULL,'北京市东元（深圳）律师事务所','2015-01-15 10:11:28','');
INSERT INTO `party` VALUES (57,NULL,'Y','20150127-2','',1,'小灰灰',1,'小灰灰','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-01-27 11:28:23','00010001');
INSERT INTO `party` VALUES (58,NULL,'Y','20150127-3','',1,'阿凡达',1,'的萨芬','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-01-27 11:39:00','00010001');
INSERT INTO `party` VALUES (59,NULL,'Y','20150127-3','',2,' 二大',1,'额发','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-01-27 11:43:02','00010001');
INSERT INTO `party` VALUES (60,NULL,'Y','20150127-4','',1,'',1,'安防发','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-01-27 03:24:58','00010001');
INSERT INTO `party` VALUES (61,NULL,'Y','20150128-1','',1,'',1,'李曼丹','0001','','','','天津市南开区华苑东路莹华里13号楼1门202号','','','','9999','','001003',NULL,NULL,NULL,NULL,NULL,'北京市东元（深圳）律师事务所','2015-01-28 10:16:14','');
INSERT INTO `party` VALUES (62,NULL,'Y','20150128-1','',2,'徐永斌',2,'深圳杏石投资管理有限公司','0001','','','','深圳市南山区科发路8号金融服务技术创新基地1栋4楼A','','','','0011','','001001001',NULL,NULL,NULL,NULL,NULL,'北京市东元（深圳）律师事务所','2015-01-28 10:39:08','00110005');
INSERT INTO `party` VALUES (63,NULL,'Y','20150128-1','',2,'',1,'徐永斌','0001','','','','山东省潍坊市奎文区潍州路676号1单元101号','','','','9999','','001014',NULL,NULL,NULL,NULL,NULL,'北京市东元（深圳）律师事务所','2015-01-28 10:39:20','');
INSERT INTO `party` VALUES (64,NULL,'Y','20150130-1','',1,'陈少青',2,'深圳市信利康供应链管理有限公司','0001',' ',' ','','深圳市深南中路6011号NEO（A座）36楼，',' ','','','0008','','001',NULL,NULL,NULL,NULL,NULL,'ycjn21','2015-01-30 10:17:26','00080003');
INSERT INTO `party` VALUES (65,NULL,'Y','20150130-1','',2,'THAM KUOK HAU',2,'佳也瑞吉科技（深圳）有限公司','0001',' ',' ','','深圳市福田区滨河大道上沙创新科技园13栋1楼103','0755—88398450','','','0010','','001001001',NULL,NULL,NULL,NULL,NULL,'ycjn21','2015-01-30 10:19:32','00100006');
INSERT INTO `party` VALUES (66,NULL,'Y','20150130-1','',2,'',1,'THAM KUOK HAU','0001','','','','深圳市南山区松坪山路五号嘉达研发大楼B座三楼','0755—88398450','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'ycjn21','2015-01-30 10:19:24','');
INSERT INTO `party` VALUES (67,NULL,'Y','20150130-1','',2,'',1,'叶春芳','0001','','','','深圳市南山区松坪山路五号嘉达研发大楼B座三楼','0755—88398450','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'ycjn21','2015-01-30 10:20:08','');
INSERT INTO `party` VALUES (68,NULL,'Y','20150130-1','',2,'',1,'李小媚','0001','13725588903','','','深圳市龙岗区五和大道万科第五园','0755—88398450','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'ycjn21','2015-01-30 10:20:55','');
INSERT INTO `party` VALUES (69,NULL,'Y','20150130-1','',2,'',1,'LEE KIM YONG','0001','13603097492','','','深圳南山松坪山路五号嘉达研发大楼B座三楼','0755—88398450','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'ycjn21','2015-01-30 10:21:44','');
INSERT INTO `party` VALUES (70,NULL,'Y','20150130-1','',2,'',1,'YONG GUAN JER','0001','13902272772','','','深圳南山松坪山路五号嘉达研发大楼B座三楼','0755—88398450','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'ycjn21','2015-01-30 10:22:17','');
INSERT INTO `party` VALUES (71,NULL,'Y','20150130-2','',1,'郭剑霓',2,'深圳捷信一号咨询有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','深圳市福田区益田路免税商务大厦塔楼10楼1单元','0755-21515960 ext.3799','518000','0755-28973391','0018','','001001001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 11:02:47','00180001');
INSERT INTO `party` VALUES (72,NULL,'Y','20150130-2','',2,'',1,'汪小松','0001','13723441919','1797755840@qq.com','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 11:16:53','00010001');
INSERT INTO `party` VALUES (73,NULL,'Y','20150130-3','',1,'Dusan Malota',2,'深圳捷信一号咨询有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','深圳市福田区益田路免税商务大厦塔楼10楼1单元','0755-21515960 ext.3799','518000','0755-33912897','0018','','001001001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:34:43','00180001');
INSERT INTO `party` VALUES (74,NULL,'Y','20150130-3','',2,'',1,'汪小松','0001','13723441919','1797755840@qq.com','','深圳市龙岗区南湾街道办下李南路42号集体宿舍204房 ','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 02:31:29','00010001');
INSERT INTO `party` VALUES (75,NULL,'Y','20150130-4','',1,'Dusan Malota',2,'深圳捷信一号咨询有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','深圳市福田区益田路免税商务大厦塔楼10楼1单元','0755-21515960 ext.3799','518000','0755-33912897','0018','','001001001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:33:49','00180001');
INSERT INTO `party` VALUES (76,NULL,'Y','20150130-4','',2,'',1,'张兴涛','0001','13632856107 ','956787940@qq.com','','深圳市宝安区西乡街道西乡立交旁西城丰和花园A28C ','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 02:30:36','00010001');
INSERT INTO `party` VALUES (77,NULL,'Y','20150130-5','',1,'Dusan Malota',2,'深圳捷信一号咨询有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','深圳市福田区益田路免税商务大厦塔楼10楼1单元','0755-21515960 ext.3799','518000','0755-33912897','0018','','001001001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:32:38','00180001');
INSERT INTO `party` VALUES (78,NULL,'Y','20150130-5','',2,'',1,'梁昌远','0001','13590491982','550820812@qq.com','','深圳市龙岗区平湖镇何包围路25号402房 ','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 02:38:57','00010001');
INSERT INTO `party` VALUES (79,NULL,'Y','20150130-6','',1,'Dusan Malota',2,'深圳捷信一号咨询有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','深圳市福田区益田路免税商务大厦塔楼10楼1单元','0755-21515960 ext.3799','518000','0755-33912897','0018','','001001001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:31:33','00180001');
INSERT INTO `party` VALUES (80,NULL,'Y','20150130-6','',2,'',1,'唐雄','0001','15902021742','726940210@qq.com','','深圳市宝安区西乡前进二路航城工业区公司宿舍729房','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 02:45:08','00010001');
INSERT INTO `party` VALUES (81,NULL,'Y','20150130-7','',1,'Dusan Malota',2,'深圳捷信一号咨询有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','深圳市福田区益田路免税商务大厦塔楼10楼1单元','0755-21515960 ext.3799','518000','0755-33912897','0018','','001001001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:30:26','00180001');
INSERT INTO `party` VALUES (82,NULL,'Y','20150130-7','',2,'',1,'王关强','0001','1307888946','287207147@qq.com','','深圳市宝安区西乡宝民二路臣田村中区28号605房','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 02:55:41','00010001');
INSERT INTO `party` VALUES (83,NULL,'Y','20150130-8','',1,'Rader Bedner',2,'广东捷信融资担保有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','广州市越秀区环市东路417号东方广场12楼H-K房','0755-21515960 ext.3799','510000','0755-33912897','0018','','001001002',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:24:54','00180001');
INSERT INTO `party` VALUES (84,NULL,'N','20150130-8','',1,'Rader Bedner',2,'广东捷信融资担保有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','广州市越秀区环市东路417号东方广场12楼H-K房','0755-21515960 ext.3799','510000','0755-28973391','0018','','001001002',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 03:14:15','00180001');
INSERT INTO `party` VALUES (85,NULL,'Y','20150130-8','',2,'',1,'许明法','0001','13531063188','13531063188@139.com','','广东省雷州市雷城镇雷湖中路昌和居小区208房 ','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 03:33:08','00010001');
INSERT INTO `party` VALUES (86,NULL,'Y','20150130-9','',1,'Rader Bedner',2,'广东捷信融资担保有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','广州市越秀区环市东路417号东方广场12楼H-K房','0755-21515960  ext.3799','510000','0755-33912897','0018','','001001002',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:23:06','00180001');
INSERT INTO `party` VALUES (87,NULL,'Y','20150130-9','',2,'',1,'曾海珠','0001','13729110625','13729110625@139.com','','广东省雷州市雷城镇后营巷6号之47 ','','','','0018','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 03:49:10','00180001');
INSERT INTO `party` VALUES (88,NULL,'Y','20150130-10','',1,'Rader Bedner',2,'广东捷信融资担保有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','广州市越秀区环市东路417号东方广场12楼H-K房','0755-33912897','510000','0755-33912897','0018','','001001002',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 11:41:55','00180001');
INSERT INTO `party` VALUES (89,NULL,'Y','20150130-10','',2,'',1,'柯道来','0001','15975922388','15975922388@139.com','','广东省雷州市附城镇东田村006号','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 11:49:29','00010001');
INSERT INTO `party` VALUES (90,NULL,'Y','20150130-11','',1,'Rader Bedner',2,'广东捷信融资担保有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','广州市越秀区环市东路417号东方广场12楼H-K房','0755-21515960  ext.3799','510000','0755-33912897','0018','','001001002',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 10:01:18','00180001');
INSERT INTO `party` VALUES (91,NULL,'Y','20150130-11','',2,'',2,'肖达一','0001','13414867227','13414867227@139.com','','广东省雷州市雷城镇角村183号','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 04:10:58','00010001');
INSERT INTO `party` VALUES (92,NULL,'Y','20150130-12','',1,'Rader Bedner',2,'广东捷信融资担保有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','广州市越秀区环市东路417号东方广场12楼H-K房','0755-21515960  ext.3799','510000','0755-33912897','0018','','001001002',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 09:59:45','00180001');
INSERT INTO `party` VALUES (93,NULL,'Y','20150130-12','',2,'',1,'许明海','0001','13692450099','13692450099@139.com','','广东省雷州市阳城镇山甘仔许宅村52号','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-01-30 04:18:09','00010001');
INSERT INTO `party` VALUES (94,NULL,'Y','20150202-1','',1,'Rader Bedner',2,'广东捷信融资担保有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','广州市越秀区环市东路417号东方广场12楼H-K房','0755-21515960  ext.3799','510000','0755-33912897','0018','','001001002',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 11:51:43','00180001');
INSERT INTO `party` VALUES (95,NULL,'Y','20150202-1','',2,'',1,'柯道来','0001','15975922388','15975922388@139.com','','广东省雷州市附城镇东田村006号','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 11:57:49','00010001');
INSERT INTO `party` VALUES (96,NULL,'Y','20150202-2','',1,'栾秀菊',2,'中粮集团（深圳）有限公司','0001','','','','深圳市罗湖区清水河三路中粮冷库','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:18:52','00010001');
INSERT INTO `party` VALUES (97,NULL,'Y','20150202-3','',1,'金福礼',2,'深圳市金凯博电子有限公司','0001','','','','深圳市福田区车公庙深南大道南江西世纪豪庭29A','','','','0010','','001001001',NULL,NULL,NULL,NULL,NULL,'xierongqiang','2015-02-02 03:31:44','00100007');
INSERT INTO `party` VALUES (98,NULL,'Y','20150202-3','',2,'孙雄',2,'江苏华爵检测技术股份有限公司','0001','','','','南京麒麟科技创新园（生态科技城）东麟路666号','','','','0010','','001',NULL,NULL,NULL,NULL,NULL,'xierongqiang','2015-02-02 03:33:30','00100007');
INSERT INTO `party` VALUES (99,NULL,'Y','20150202-2','',2,'',1,'方锐','0001','13926588592','','','广东省深圳市福田区侨香四道2号香阁丽苑A栋1102','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:34:13','00010001');
INSERT INTO `party` VALUES (100,NULL,'Y','20150202-4','',1,'栾秀菊',2,'中粮集团（深圳）有限公司','0001','','','','深圳市罗湖区清水河三路中粮冷库','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:42:13','00010001');
INSERT INTO `party` VALUES (101,NULL,'Y','20150202-4','',2,'',1,'彭永鹤','0001','13714602466','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:45:12','00010001');
INSERT INTO `party` VALUES (102,NULL,'Y','20150202-5','',1,'栾秀菊',2,'中粮集团（深圳）有限公司','0001','','','','深圳市罗湖区清水河三路中粮冷库','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:48:20','00010001');
INSERT INTO `party` VALUES (103,NULL,'Y','20150202-5','',2,'俞培海',2,'深圳市罗湖区倒流时光保健按摩中心','0006','13500056499','','','深圳市罗湖区东门南路1094号瑞鹏大厦一层、三层','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'rongfanxun2015','2015-02-02 03:53:19','00010001');
INSERT INTO `party` VALUES (104,NULL,'Y','20150202-6','',1,'Dusan Malota    ',2,'深圳捷信一号咨询有限公司','0001','15976876865','Kimberly.ZHANG@homecredit.cn','','深圳市福田区益田路免税商务大厦塔楼10楼','0755-21515960 ext .3799','518000','0755-33912897','0018','','001001001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 05:18:17','00180001');
INSERT INTO `party` VALUES (105,NULL,'Y','20150202-6','',2,'',1,'姚鹏亮','0001','13689597086','1362244903@qq.com','','深圳市南山区白石洲御景东方118号1栋18号房','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-02 05:32:22','00010001');
INSERT INTO `party` VALUES (106,NULL,'Y','20150203-1','',1,'Dusan Malota',2,'深圳捷信一号咨询有限公司 ','0001','15976876865  ','Kimberly.zhang@homecredit.cn','','深圳市福田区益田路免税商务大厦塔楼10楼1单元','0755-21515960 ext 3799','518000','0755-33912897','0018','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:25:47','00180001');
INSERT INTO `party` VALUES (107,NULL,'Y','20150203-1','',2,'',1,'徐平宇','0011','15013443731','148324723@qq.com','','深圳市龙华新区观澜大水坑三村浪漫新城117栋1022室','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:12:21','00010001');
INSERT INTO `party` VALUES (108,NULL,'Y','20150203-2','',1,'Dusan Malota',2,'深圳捷信一号咨询有限公司','0001','15976876865 ','Kimberly.zhang@homecredit.cn','','深圳市福田区益田路免税商务大厦塔楼10楼1单元','0755-21515960 ext 3799','518000','0755-33912897','0018','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:25:08','00180001');
INSERT INTO `party` VALUES (109,NULL,'Y','20150203-2','',2,'',1,'蒋宏','0011','13430801472','86731699@qq.com','','深圳市福田区梅林路下梅林围面村72A栋302室','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:24:38','00010001');
INSERT INTO `party` VALUES (110,NULL,'Y','20150203-3','',1,'Dusan Malota ',2,'深圳捷信一号咨询有限公司','0001','15976876865  ','Kimberly.zhang@homecredit.cn','','深圳市福田区益田路免税商务大厦塔楼10楼1单元','0755-21515960 ext 3799','518000','0755-33912897','0018','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:28:21','00180001');
INSERT INTO `party` VALUES (111,NULL,'Y','20150203-3','',2,'',1,'吴少宝','0001','18923851693','','','深圳市龙岗区中心城家和盛世二期壹克拉A1单元2302室','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:34:06','00010001');
INSERT INTO `party` VALUES (112,NULL,'Y','20150203-4','',1,'Dusan Malota',2,'深圳捷信一号咨询有限公司','0001','15976876865  ','Kimberly.zhang@homecredit.cn','','深圳市福田区益田路免税商务大厦塔楼10楼1单元','0755-21515960 ext 3799','518000','0755-33912897','0018','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:36:43','00180001');
INSERT INTO `party` VALUES (113,NULL,'Y','20150203-4','',2,'',1,'蒋忠相','0001','13825215692','1307888946@qq.com','','深圳市光明新区圳美街道圳美新围162栋305房','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'Kimberly ZHANG','2015-02-03 11:41:31','00010001');
INSERT INTO `party` VALUES (114,NULL,'Y','20150203-6','',1,'李小勇',2,'深圳市华成峰实业有限公司','0001','',' ','','深圳市南山区高新一道2号长园公司6栋一层','0755-26031507','',' ','0003','','001001001',NULL,NULL,NULL,NULL,NULL,'yoyosee123','2015-02-03 05:13:23','00030018');
INSERT INTO `party` VALUES (115,NULL,'Y','20150203-6','',2,'牛凤午',2,'深圳市昕网格科技开发有限公司','0001','','','','深圳市南山区高新技术产业园北环大道北松坪山路1号源兴科技大厦南座1006室','0755-82577258',' ',' ','0010','','001001001',NULL,NULL,NULL,NULL,NULL,'yoyosee123','2015-02-03 05:15:07','00100006');
INSERT INTO `party` VALUES (116,NULL,'Y','20150204-1','',1,'陈华',2,'深圳市京基房地产股份有限公司','0001','','','','','','','','0012','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-02-04 09:56:08','00120001');
INSERT INTO `party` VALUES (117,NULL,'Y','20150204-1','',1,'',2,'深圳市长岭股份合作有限公司','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-02-04 09:58:16','00010001');
INSERT INTO `party` VALUES (118,NULL,'Y','20150204-1','',1,'',2,'深圳市郎月实业发展有限公司','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-02-04 09:58:37','00010001');
INSERT INTO `party` VALUES (119,NULL,'Y','20150204-1','',2,'',2,'深圳市凯德诚投资发展有限公司','0001','','','','','','','','0007','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-02-04 10:08:55','00070001');
INSERT INTO `party` VALUES (120,NULL,'Y','20150204-2','',1,' 陈鉴波',2,'Tian Liang Limited','0001','18675596511','lipeiran@cn.kwm.com','','普通邮政信箱957号，离岸注册中心，罗德镇，托托拉岛','','','','0018','','063',NULL,NULL,NULL,NULL,NULL,'lipeiran','2015-02-04 10:35:55','00180001');
INSERT INTO `party` VALUES (121,NULL,'Y','20150204-2','',2,'David Charles Parker',2,'天耀（厦门）置业发展有限公司','0001','','davidparker@chinachemgroup.com','','厦门市思明区湖滨北路59号中信惠扬大厦21楼D单元','','','','0012','','001011',NULL,NULL,NULL,NULL,NULL,'lipeiran','2015-02-04 10:35:13','00120001');
INSERT INTO `party` VALUES (122,NULL,'Y','20150204-4','',1,'陈朱江',2,'深圳开发光磁科技有限公司','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'chchkf','2015-02-04 04:05:20','00010001');
INSERT INTO `party` VALUES (123,NULL,'N','20150204-4','',2,'李雯',2,'深圳市三井木科技有限公司','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'chchkf','2015-02-04 04:20:15','00010001');
INSERT INTO `party` VALUES (124,NULL,'Y','20150204-4','',2,'李雯',2,'深圳市三井木科技有限公司','0001','','','','深圳市宝安区松岗镇罗田村恒邦科技园A3栋1楼','0755-81772432','','86-0755-81772434','0001','','001',NULL,NULL,NULL,NULL,NULL,'chchkf','2015-02-04 04:20:31','00010001');
INSERT INTO `party` VALUES (125,NULL,'Y','20150205-1','',1,'吴耀藩',2,'佛山市南海区美邦家具有限公司','0001','','','','佛山市南海区西樵海舟大坳南工业园','','','','0003','','001001006',NULL,NULL,NULL,NULL,NULL,'广东泽康律师事务所','2015-02-05 09:12:44','00030005');
INSERT INTO `party` VALUES (126,NULL,'Y','20150205-1','',2,'钟卫国',2,'广东宏长进出口贸易有限公司','0001','','','','佛山市顺德区大良街道新松居委会新宁路68号英煌新座楼5座1201之三号铺','','','','0007','','001001006',NULL,NULL,NULL,NULL,NULL,'广东泽康律师事务所','2015-02-05 09:57:56','00070002');
INSERT INTO `party` VALUES (127,NULL,'Y','20150206-1','',1,'樊永强',2,'广东雅尔德律师事务所','0001',' ',' ','','深圳市福田区福华一路88号中心商务大厦1906室',' ','','','0013','','001001001',NULL,NULL,NULL,NULL,NULL,'zhaojun','2015-02-06 10:42:35','00130001');
INSERT INTO `party` VALUES (128,NULL,'Y','20150206-1','',2,'宋俊杰',2,'深圳天佶集团有限公司','0001',' ',' ','','深圳市南山区科技南十二路28号康佳研发大厦7楼F单元',' ','','','0011','','001001001',NULL,NULL,NULL,NULL,NULL,'zhaojun','2015-02-06 10:44:26','00110008');
INSERT INTO `party` VALUES (129,NULL,'Y','20150210-1','',1,'甘捷',2,'深圳市前海梧桐投资有限公司','0001',' 123',' ','','深圳市福田区深南大道2012号深圳证券交易所运营中心39楼',' ','','','0011','','001001001',NULL,NULL,NULL,NULL,NULL,'arlin','2015-02-10 10:58:11','00110008');
INSERT INTO `party` VALUES (130,NULL,'Y','20150210-1','',2,'钟国勇',2,'东莞市精钿模具配件有限公司','0001',' ',' ','','东莞市清溪镇三星村委会吕围村新长路C幢',' ','','','0003','','001001017',NULL,NULL,NULL,NULL,NULL,'arlin','2015-02-10 11:03:24','00030011');
INSERT INTO `party` VALUES (131,NULL,'Y','20150210-1','',2,'',1,'钟国勇','0001','13902693385','','','东莞市清溪镇三星村委会吕围村新长路C幢','','','','9999','','001013',NULL,NULL,NULL,NULL,NULL,'arlin','2015-02-10 11:03:43','');
INSERT INTO `party` VALUES (132,NULL,'Y','20150210-1','',2,'',1,'饶小春','0001','13926825743','','','东莞市清溪镇三星村委会吕围村新长路C幢','','','','9999','','001001017',NULL,NULL,NULL,NULL,NULL,'arlin','2015-02-10 11:04:16','');
INSERT INTO `party` VALUES (133,NULL,'Y','20150210-2','',1,'LINDA MARIE SVOBODA',2,'空气化工产品（广州）有限公司','0001','13901932764','','','广州经济技术开发区东区骏达路10号','021-62555100','','','0003','','001',NULL,NULL,NULL,NULL,NULL,'chunqiang_0404','2015-02-10 12:23:17','00030009');
INSERT INTO `party` VALUES (134,NULL,'Y','20150210-2','',2,'沈兴波',2,'清远市清城区远达电子器材厂','0009','','','','','','','','0003','','001',NULL,NULL,NULL,NULL,NULL,'chunqiang_0404','2015-02-10 12:28:26','00030014');
INSERT INTO `party` VALUES (135,NULL,'Y','20150210-3','',1,'郑锡辉',2,'东莞丰裕电机有限公司','0001','13825777714','','','东莞市塘厦镇清湖头管理区','','','0769-879028888','0001','','001',NULL,NULL,NULL,NULL,NULL,'smiles','2015-02-10 03:28:13','00010001');
INSERT INTO `party` VALUES (136,NULL,'Y','20150210-3','',2,'黄维中',2,'芜湖联嘉工业科技股份有限公司','0001','','sp.hui@kashui.com','','芜湖市芜湖县湾沚镇安徽新芜经济开发区外环路368号01幢','','','05532579494','0003','','001',NULL,NULL,NULL,NULL,NULL,'smiles','2015-02-10 03:51:16','00030014');
INSERT INTO `party` VALUES (137,NULL,'Y','20150210-4','',1,'高蕾',2,'北京佑瑞持投资管理有限公司','0004','15989868682','','','北京市平谷区马昌营镇天井大街甲2号A区3号','','','','0011','','001002',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:11:34','00110008');
INSERT INTO `party` VALUES (138,NULL,'Y','20150210-4','',2,'常冠雄',2,'内蒙古奈伦农业科技股份有限公司','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:43:44','00010001');
INSERT INTO `party` VALUES (139,NULL,'Y','20150210-4','',2,'郭占春',2,'内蒙古奈伦集团股份有限公司','0001','','','','内蒙古自治区呼和浩特市赛罕区新建东街68号','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:44:36','00010001');
INSERT INTO `party` VALUES (140,NULL,'Y','20150210-5','',1,'张运勇',2,'东莞证券股份有限公司','0001','15989868682','','','东莞市莞城区可园南路一号','','','','0011','','001',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 06:56:09','00110002');
INSERT INTO `party` VALUES (141,NULL,'Y','20150210-5','',2,'常冠雄',2,'内蒙古奈伦农业科技股份有限公司','0001','','','','内蒙古自治区呼和浩特市新城区艺术厅南街22号（奈伦商务中心）','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 07:07:46','00010001');
INSERT INTO `party` VALUES (142,NULL,'Y','20150210-5','',2,'郭占春',2,'内蒙古奈伦集团股份有限公司','0001','','','','内蒙古自治区呼和浩特市赛罕区新建东街68号','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 07:07:34','00010001');
INSERT INTO `party` VALUES (143,NULL,'Y','20150210-6','',1,'姚志勇',2,'国联证券股份有限公司','0001','15989868682','','','无锡市金融一街8号','','','','0011','','001',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 07:27:37','00110002');
INSERT INTO `party` VALUES (144,NULL,'Y','20150210-6','',2,'常冠雄',2,'内蒙古奈伦农业科技股份有限公司','0001','','','','内蒙古自治区呼和浩特市新城区艺术厅南街22号（奈伦商务中心）','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 07:40:48','00010001');
INSERT INTO `party` VALUES (145,NULL,'Y','20150210-6','',2,'郭占春',2,'内蒙古奈伦集团股份有限公司','0001','','','','内蒙古自治区呼和浩特市赛罕区新建东街68号','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-10 07:41:18','00010001');
INSERT INTO `party` VALUES (146,NULL,'Y','20150212-1','',1,'郭凡',2,'广州昊丰投资管理有限公司','0001','1','','','广州市海珠区新港东路2429号自编二楼230房','020-87381188','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'chowfang','2015-02-12 03:15:23','00010001');
INSERT INTO `party` VALUES (147,NULL,'Y','20150212-1','',1,'郭凡',2,'昊丰国际集团有限公司','0001','1',' ','','香港上环苏杭街19-25号永昌商业大厦19楼C室','(00852)28152166',' ','  ','0011','','002',NULL,NULL,NULL,NULL,NULL,'chowfang','2015-02-12 03:17:19','00110008');
INSERT INTO `party` VALUES (148,NULL,'Y','20150212-1','',2,'戈志则',2,'中商交在线有限公司','0001','13811566189',' ','','北京市西城区复兴门内大街45号院4号楼205室','010-66094232','','','0003','','001',NULL,NULL,NULL,NULL,NULL,'chowfang','2015-02-12 03:21:56','00030014');
INSERT INTO `party` VALUES (149,NULL,'Y','20150212-1','',2,'戈志刚',2,'中国国际信用交易结算有限公司','0001',' 1','','','3908 Two Exchange Square,8 Connaught Place,Central,Hong Kong','(00852)25220172','',' ','0011','','002',NULL,NULL,NULL,NULL,NULL,'chowfang','2015-02-12 03:24:40','00110008');
INSERT INTO `party` VALUES (150,NULL,'Y','20150212-2','',1,'田青',2,'深圳市沃信思源投资企业（有限合伙）','0001',' 123',' ','','深圳市福田中心区福中三路诺德金融中心11B','','','','0011','','001',NULL,NULL,NULL,NULL,NULL,'menglijia','2015-02-12 04:19:09','00110008');
INSERT INTO `party` VALUES (151,NULL,'Y','20150212-2','',2,'',1,'牛雪良','0001','  ',' ','','河北省元氏县前仙乡石板沟村河东区31号','','','','9999','','001004',NULL,NULL,NULL,NULL,NULL,'menglijia','2015-02-12 04:19:48','');
INSERT INTO `party` VALUES (152,NULL,'Y','20150212-2','',2,'',1,'杨卓舒','0001',' 123',' ','','河北省石家庄市裕华区翟营南大街389号卓达别墅1号',' ','','','9999','','001',NULL,NULL,NULL,NULL,NULL,'menglijia','2015-02-12 04:20:13','');
INSERT INTO `party` VALUES (153,NULL,'Y','20150212-2','',2,'',2,'卓达房地产集团有限公司','0001',' 123',' ','','河北省石家庄市裕华区翟营南大街389号','','','','0012','','001009',NULL,NULL,NULL,NULL,NULL,'menglijia','2015-02-12 04:20:47','00120001');
INSERT INTO `party` VALUES (154,NULL,'Y','20150212-2','',2,'张建平',2,'河北卓达太阳城房地产开发有限公司','0001',' 123',' ','','河北省栾城县冶河镇呈上村东西大街1号',' ','','','0012','','001004',NULL,NULL,NULL,NULL,NULL,'menglijia','2015-02-12 04:21:24','00120001');
INSERT INTO `party` VALUES (155,NULL,'Y','20150213-1','',1,' 程慧颖',2,'深圳市海轶德机电有限公司 ','0001','13600092911','','','深圳市宝安区民治街道民治大道民泰大厦六楼650-651室 ','','','','0003','','001001001',NULL,NULL,NULL,NULL,NULL,'huangguiyong','2015-02-13 12:10:13','00030015');
INSERT INTO `party` VALUES (156,NULL,'Y','20150213-1','',2,'黎洛英',2,'佛山市顺德区凯迪威机械有限公司','0001','',' ','','佛山市顺德区凯迪威机械有限公司','','','','0003','','001001006',NULL,NULL,NULL,NULL,NULL,'huangguiyong','2015-02-13 12:11:39','00030015');
INSERT INTO `party` VALUES (157,NULL,'N','20150213-1','',2,'黎洛英',2,'佛山市顺德区凯迪威机械有限公司','0001',' 123',' ','','佛山市顺德区凯迪威机械有限公司','','','','0003','','001001006',NULL,NULL,NULL,NULL,NULL,'huangguiyong','2015-02-13 12:11:35','00030015');
INSERT INTO `party` VALUES (158,NULL,'Y','20150214-1','',1,'康媛媛',2,'深圳前海汇能基金管理有限公司','0004','15989868682','','','深圳市前海深港合作区前湾一路1号A栋201室（入驻深圳市前海商务秘书有限公司）','','','','0011','','001',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-14 04:57:23','00110005');
INSERT INTO `party` VALUES (159,NULL,'Y','20150214-1','',2,'常冠雄',2,'内蒙古奈伦农业科技股份有限公司','0001','','','','内蒙古自治区呼和浩特市新城区艺术厅南街22号（奈伦商务中心）','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-14 05:22:09','00010001');
INSERT INTO `party` VALUES (160,NULL,'Y','20150214-1','',2,'郭占春',2,'内蒙古奈伦集团股份有限公司','0001','','','','内蒙古自治区呼和浩特市赛罕区新建东街68号','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'liruizhi0755','2015-02-14 05:25:45','00010001');
INSERT INTO `party` VALUES (161,NULL,'Y','20150215-1','',1,'甘捷',2,'深圳市前海梧桐投资有限公司','0004','13823366220','liukaiyu@allbrightlaw.com','','深圳市前海深港合作区前湾一路鲤鱼门街一号前海深港合作区管理局综合办公楼A栋201室（入驻深圳市前海商务秘书有限公司）','075582818515','','','0011','','001',NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 01:55:02','00110008');
INSERT INTO `party` VALUES (162,NULL,'Y','20150215-1','',2,'钟强',2,'河源市国盛针织有限公司','0001','13826930444','','','东源县仙塘镇蝴蝶岭工业园','','','','0003','','001',NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:04:13','00030003');
INSERT INTO `party` VALUES (163,NULL,'Y','20150215-1','',2,'',1,'钟强','0001','13826930444','','','广东省东源县半江镇左拨村委会岭下小组28号','','','','9999','','001',NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:20:31','00030003');
INSERT INTO `party` VALUES (164,NULL,'Y','20150215-1','',2,'',1,'罗伟梅','0001','13826930444','','','广东省东莞市谢岗镇黎村窑贝村27号','','','','9999','','001',NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:20:54','00030003');
INSERT INTO `party` VALUES (165,NULL,'Y','20150215-2','',1,'甘捷',2,'深圳市前海梧桐投资有限公司','0004','13823366220','','','深圳市前海深港合作区前湾一路鲤鱼门街一号前海深港合作区管理局综合办公楼A栋201室（入驻深圳市前海商务秘书有限公司）','','','','0011','','001',NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:09:14','00110008');
INSERT INTO `party` VALUES (166,NULL,'Y','20150215-2','',2,'谢镜开',2,'东莞市盈邦能源物资有限公司','0001','13609698698','','','东莞市沙田镇杨公洲村港口大道旁边','','','','0007','','001',NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:14:37','00070005');
INSERT INTO `party` VALUES (167,NULL,'Y','20150215-2','',2,'',1,'谢镜开','0001','13609698698','','','广东省汕尾市城区腾飞路市司法局宿舍','','','','9999','','001',NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:17:16','00070005');
INSERT INTO `party` VALUES (168,NULL,'Y','20150215-2','',2,'',1,'周惠敏','0001','13609698698','','','广东省东莞市沙田镇福禄沙石淌头村民小组128号','','','','9999','','001',NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:16:49','');
INSERT INTO `party` VALUES (169,NULL,'Y','20150215-2','',2,'',1,'周锦荣','0001','13825715876','','','广东省东莞市沙田镇福禄沙石塘头村民小组128号','','','','9999','','001',NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:18:20','');
INSERT INTO `party` VALUES (170,NULL,'Y','20150215-2','',2,'',1,'王银燕','0001','13825715876','','','广东省东莞市沙田镇齐沙田屯村民小组98号','','','','9999','','001',NULL,NULL,NULL,NULL,NULL,'lkyatjtc','2015-02-15 02:19:13','');
INSERT INTO `party` VALUES (171,NULL,'Y','20150301-1','',1,'',1,'顾千秋','0005','18068831878','','','南京市雨花区龙西路318号万科金色里程8幢1单元406室','','','','0010','','001',NULL,NULL,NULL,NULL,NULL,'guqianqiu','2015-03-01 01:16:08','00100004');
INSERT INTO `party` VALUES (172,NULL,'Y','20150301-1','',2,'',1,'李剑波','0004','13761533389','allenlee@youyoumob.com','','上海市浦东新区民生路1403号上海信息大厦2708-2710室','','','','0010','','001',NULL,NULL,NULL,NULL,NULL,'guqianqiu','2015-03-01 12:20:31','00100004');
INSERT INTO `party` VALUES (173,NULL,'Y','20150301-1','',2,'李剑波',2,'上海吾游信息技术有限公司','0004','','','','上海市浦东新区民生路1403号上海信息大厦2708-2710室',' 02168580638（9）','','02168580638','0010','','001',NULL,NULL,NULL,NULL,NULL,'guqianqiu','2015-03-01 12:20:15','00100004');
INSERT INTO `party` VALUES (174,NULL,'Y','20150130-13','',1,'',1,'aaa','0001','aaa','','','aaa','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-03-02 11:21:17','00010001');
INSERT INTO `party` VALUES (175,NULL,'Y','20150304-1','',1,'郑锡辉',2,'东莞丰裕电机有限公司','0001','15989921812','fungyu_smile@126.com','','东莞市塘厦镇清湖头村','0769-87902888','523000','0769-87941888','0003','','001',NULL,NULL,NULL,NULL,NULL,'smiles','2015-03-04 07:55:04','00030018');
INSERT INTO `party` VALUES (176,NULL,'Y','20150304-1','',2,'黄维中',2,'芜湖联嘉工业科技股份有限公司','0001','','sp.hui@kashui.com','','芜湖市芜湖县湾沚镇安徽新芜经济开发区外环路368号01幢','0553-2579494','','','0003','','001',NULL,NULL,NULL,NULL,NULL,'smiles','2015-03-04 08:03:45','00030018');
INSERT INTO `party` VALUES (177,NULL,'Y','20150305-1','',1,'上海境泽股权投资管理有限公司（委派代表：余琴）',2,'上海境泽股权投资基金合伙企业（有限合伙）','0001','18718560711','','','上海市嘉定区嘉新公路835弄25号16幢2347室','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wxj2520068','2015-03-05 03:20:18','00010001');
INSERT INTO `party` VALUES (178,NULL,'Y','20150305-1','',2,'',1,'深圳市中南酒店管理有限公司','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wxj2520068','2015-03-05 03:25:32','00010001');
INSERT INTO `party` VALUES (179,NULL,'Y','20150305-1','',2,'',1,'陈祝新','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wxj2520068','2015-03-05 03:25:45','00010001');
INSERT INTO `party` VALUES (180,NULL,'Y','20150309-1','',1,'',1,'贺虎','0001','18902455862','','','深圳龙岗布吉可园16B305','','','','9999','','001',NULL,NULL,NULL,NULL,NULL,'tig_ho','2015-03-09 09:40:54','');
INSERT INTO `party` VALUES (181,NULL,'Y','20150311-1','',1,'陈华',2,'深圳市京基房地产股份有限公司','0001','13632527853','','','深圳市罗湖区深南东路京基100大厦A座72楼','','','','0001','','001001001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-03-11 03:31:31','00010001');
INSERT INTO `party` VALUES (182,NULL,'N','20150311-1','',1,'吴志',2,'深圳市京联房地产开发有限公司','0001','27166339','','','深圳市福田区福华三路恒运豪庭1栋19F','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-03-11 03:27:14','00010001');
INSERT INTO `party` VALUES (183,NULL,'Y','20150311-1','',2,'',2,'深圳市京联房地产开发有限公司','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-03-11 03:29:26','00010001');
INSERT INTO `party` VALUES (184,NULL,'Y','20150311-1','',1,'',2,'深圳市沙头下沙实业股份有限公司','0001','13632527853','','','深圳市福田区滨河路沙头下沙村委文化综合楼','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-03-11 03:31:02','00010001');
INSERT INTO `party` VALUES (185,NULL,'Y','20150313-1','',1,'',1,'邓峰','0001',' 123',' ','','广东省深圳市罗湖区凤凰路6号金地华庭8栋15A',' ','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:01:10','');
INSERT INTO `party` VALUES (186,NULL,'Y','20150313-1','',2,'陈靖',1,'深圳市光电产业控股集团有限公司','0001',' 123',' ','','深圳市宝安区宝城建安路东侧新华都大厦十二楼1208（深圳光电大厦）',' ',' ',' ','0003','','001001001',NULL,NULL,NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:03:05','00030018');
INSERT INTO `party` VALUES (187,NULL,'Y','20150313-2','',1,'',1,'施金钻','0001',' 123',' ','','广东省深圳市南山区东滨路321号汇宾广场汇明阁14H','','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:30:28','');
INSERT INTO `party` VALUES (188,NULL,'Y','20150313-2','',2,'陈靖',1,'深圳市光电产业控股集团有限公司','0001','','','','深圳市宝安区宝城建安路东侧新华都大厦十二楼1208（深圳光电大厦）','','','','0003','','001001001',NULL,NULL,NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:31:35','00030018');
INSERT INTO `party` VALUES (189,NULL,'Y','20150313-2','',2,'刘金卫',1,'深圳市金融联融资担保有限公司','0001',' 123',' ','','广东省深圳市南山区中心区东南部时代财富大厦28层28E-H号房','','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:32:54','');
INSERT INTO `party` VALUES (190,NULL,'Y','20150313-2','',2,'',1,'陈靖','0001','','','','  ','','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:33:44','');
INSERT INTO `party` VALUES (191,NULL,'Y','20150313-2','',2,'',1,'陈靖','0001','','','','  ','','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:33:44','');
INSERT INTO `party` VALUES (192,NULL,'Y','20150313-2','',2,'陈靖',1,'深圳市金来顺集团有限公司','0001',' 123',' ','','深圳市宝安区宝城建安路东侧新华都大厦十一楼1108（深圳光电大厦）','',' ',' ','0003','','001001001',NULL,NULL,NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:34:40','00030018');
INSERT INTO `party` VALUES (193,NULL,'Y','20150313-2','',2,'',1,'陈正学','0001','','','','','','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'qiuxia.xu','2015-03-13 05:34:57','');
INSERT INTO `party` VALUES (194,NULL,'Y','20150318-1','',1,'何斌',2,'香港德信贸易有限公司','0001','13570831913','','','香港九龙旺角弥顿道610号荷里活商业中心1318-19室','','','','0007','','002',NULL,NULL,NULL,NULL,NULL,'dexin','2015-03-18 10:43:31','00070005');
INSERT INTO `party` VALUES (195,NULL,'Y','20150318-1','',2,'谢庆亮',2,'深圳市运恒贸易发展有限公司','0004','','','','','','','','0007','','001',NULL,NULL,NULL,NULL,NULL,'dexin','2015-03-18 10:49:20','00070005');
INSERT INTO `party` VALUES (196,NULL,'Y','20150318-2','',1,'熊凌峰',2,'安防智能（中国）有限公司','0001','18928420691','','','深圳市光明新区光明街道万代恒高新科技工业园1栋1--5楼、2栋1--5楼、3栋1--2楼','88286443','','','0012','','001',NULL,NULL,NULL,NULL,NULL,'黄霁','2015-03-18 05:20:10','00120001');
INSERT INTO `party` VALUES (197,NULL,'Y','20150318-2','',2,'金赟',2,'贵州柏力房地产开发有限公司','0001','','','','贵阳市白云区麦架镇幸福路镇政府活动中心四楼','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'黄霁','2015-03-18 05:38:27','00010001');
INSERT INTO `party` VALUES (198,NULL,'Y','20150318-2','',2,'',1,'冯绍春','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'黄霁','2015-03-18 05:38:43','00010001');
INSERT INTO `party` VALUES (199,NULL,'Y','20150318-2','',2,'',1,'金赟','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'黄霁','2015-03-18 05:38:53','00010001');
INSERT INTO `party` VALUES (200,NULL,'Y','20150318-2','',2,'',1,'刘翼','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'黄霁','2015-03-18 05:39:03','00010001');
INSERT INTO `party` VALUES (201,NULL,'Y','20150319-1','',1,'',1,'罗伟澜','0001',' 13760275925','  ','','广东省深圳市福田区福中路福景大厦1栋1206房','','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'chzfzx','2015-03-19 11:01:43','');
INSERT INTO `party` VALUES (202,NULL,'Y','20150319-1','',2,'徐伟',1,'深圳市金开利科技股份有限公司','0001','13509652858','','','深圳市龙华新区大浪街道浪口社区大浪南路402号B区2栋1-2层','','','','0003','','001001001',NULL,NULL,NULL,NULL,NULL,'chzfzx','2015-03-19 11:10:01','00030014');
INSERT INTO `party` VALUES (203,NULL,'Y','20150319-1','',2,'',1,'徐伟','0001','13509652858','','','广东省深圳市南山区深湾一路3号红树西岸花园3-6-19B','','','','9999','','001001001',NULL,NULL,NULL,NULL,NULL,'chzfzx','2015-03-19 11:11:40','');
INSERT INTO `party` VALUES (204,NULL,'Y','20150319-2','',1,'',2,'东莞艾孚莱电子材料有限公司','0001','13580861083','','','东莞市松山湖高新技术产业开发区工业西路5号松山湖第一工厂软性光电材料产研中心四楼','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'shengyikeji','2015-03-19 02:24:49','00010001');
INSERT INTO `party` VALUES (205,NULL,'Y','20150319-2','',2,'',2,'深圳市迈华盛科技有限公司','0001','0755-23116601','','','深圳市宝安区西乡银田工业区B11栋银满（厂房）公司大楼1楼东南面','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'shengyikeji','2015-03-19 02:36:52','00010001');
INSERT INTO `party` VALUES (206,NULL,'Y','20150319-5','',1,'',1,'a','0001','a','','','a','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'help','2015-03-19 04:08:34','00010001');
INSERT INTO `party` VALUES (207,NULL,'Y','20150319-5','',2,'',1,'f','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'help','2015-03-19 04:09:44','00010001');
INSERT INTO `party` VALUES (208,NULL,'Y','20150324-1','',1,'孟国庆',2,'深圳市富森供应链管理有限公司','0001','0755-83573650',' ','','深圳市福田区泰然工贸园201栋东座二楼','','','','0008','','001001001',NULL,NULL,NULL,NULL,NULL,'vic_gyw','2015-03-24 09:49:16','00080003');
INSERT INTO `party` VALUES (209,NULL,'Y','20150324-1','',2,'常亚楼',2,'深圳艾卓尔泰科技开发有限公司','0001','0755-28651669','','','深圳市龙岗区横岗街道保安社区简龙街5号1栋厂房','','','','0003','','001001001',NULL,NULL,NULL,NULL,NULL,'vic_gyw','2015-03-24 09:50:51','00030014');
INSERT INTO `party` VALUES (210,NULL,'Y','20150409-1','',1,'陈华',2,'深圳市京基房地产股份有限公司','0001','82181338','','','深圳市深南东路京基一百大厦72楼','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-04-09 11:40:40','00010001');
INSERT INTO `party` VALUES (211,NULL,'Y','20150409-1','',1,'黄英超',2,'深圳市沙头下沙实业股份有限公司','0001','82181338','','','深圳市福田区滨河路沙头下沙村委文化综合楼','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-04-09 11:41:01','00010001');
INSERT INTO `party` VALUES (212,NULL,'Y','20150409-1','',2,'涂诺',2,'深圳市安聚富化工有限公司','0004','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-04-09 11:50:01','00010001');
INSERT INTO `party` VALUES (213,NULL,'Y','20150416-1','',1,'陈华',2,'深圳市京基房地产股份有限公司','0001','13632527853','','','深圳市罗湖区深南东路5016号京基一百大厦A座7201','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-04-16 01:50:35','00010001');
INSERT INTO `party` VALUES (214,NULL,'Y','20150416-1','',1,'',2,'深圳市长岭股份合作有限公司','0001','13632527853','','','深圳市罗湖区罗沙东路1号长岭大厦','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-04-16 01:51:06','00010001');
INSERT INTO `party` VALUES (215,NULL,'Y','20150416-1','',1,'',1,'深圳市朗月实业发展有限公司','0001','13632527853','','','深圳市福田区彩田南路彩虹大厦27楼D座','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-04-16 01:51:32','00010001');
INSERT INTO `party` VALUES (216,NULL,'Y','20150416-1','',2,'',1,'沈嘉华','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiajuan','2015-04-16 01:56:15','00010001');
INSERT INTO `party` VALUES (217,NULL,'Y','20150505-1','',1,'李四',1,'张三','0002','11','','','11','','111','111','0011','','001',NULL,NULL,NULL,NULL,NULL,'oopp0','2015-05-05 07:43:56','00110001');
INSERT INTO `party` VALUES (218,NULL,'Y','20150505-1','',2,'',1,'111','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'oopp0','2015-05-05 07:44:44','00010001');
INSERT INTO `party` VALUES (219,NULL,'Y','20150506-1','',1,'',1,'孙婉云','0001','18620306499','','','深圳市南山区书山路3002号宏观院C802','','','','0018','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-06 10:12:30','00180001');
INSERT INTO `party` VALUES (220,NULL,'Y','20150506-1','',2,'',2,'贵州金冠幕墙产品开发有限公司','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-06 10:23:31','00010001');
INSERT INTO `party` VALUES (221,NULL,'Y','20150506-1','',2,'',2,'深圳市融资城网络服务中心有限公司','0001','','','','','0755-86183777','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-06 10:24:32','00010001');
INSERT INTO `party` VALUES (222,NULL,'Y','20150506-1','',2,'',2,'深圳市聚盛资产管理有限公司','0001','','','','','0755-86182111','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-06 10:25:31','00010001');
INSERT INTO `party` VALUES (223,NULL,'Y','20150506-1','',2,'',1,'闫羽','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-06 10:26:01','00010001');
INSERT INTO `party` VALUES (224,NULL,'Y','20150506-1','',2,'',1,'李宁','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-06 10:26:11','00010001');
INSERT INTO `party` VALUES (225,NULL,'Y','20150506-1','',2,'闫羽',2,'深圳市五彩实业有限公司','0001','','','','','0755-82947628','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-06 10:27:10','00010001');
INSERT INTO `party` VALUES (226,NULL,'Y','20150506-2','',1,'GABRIEL WAISMAN',2,'奥宝电子（深圳）有限公司','0001',' 123',' ','','深圳市南山区蛇口工业七路科技大厦辅楼一楼','','','','0003','','001001001',NULL,NULL,NULL,NULL,NULL,'crucychen','2015-05-06 04:41:41','00030013');
INSERT INTO `party` VALUES (227,NULL,'Y','20150506-2','',2,'',2,'金悦通电子（翁源）有限公司','0001',' 13927852866',' ','','广东省韶关市翁源县瓮城产业转移工业园','0751-2616081、2616000','','','0003','','001001003',NULL,NULL,NULL,NULL,NULL,'crucychen','2015-05-06 04:44:22','00030013');
INSERT INTO `party` VALUES (228,NULL,'Y','20150513-1','',1,'',1,'周世珍','0001','13600149181','','','深圳市南山区后海路海月花园一期12栋505','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-13 09:58:53','00010001');
INSERT INTO `party` VALUES (229,NULL,'Y','20150513-1','',2,'闫羽',2,'贵州金冠幕墙产品开发有限公司','0001','','','','','0755-82947698','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-13 10:29:08','00010001');
INSERT INTO `party` VALUES (230,NULL,'Y','20150513-1','',2,'王刚',2,'深圳市融资城网络服务中心有限公司','0001','','','','','0755-86183777','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-13 10:30:00','00010001');
INSERT INTO `party` VALUES (231,NULL,'Y','20150513-1','',2,'张学翔',2,'深圳市聚盛资产管理有限公司','0001','','','','','0755-86182111','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-13 10:31:07','00010001');
INSERT INTO `party` VALUES (232,NULL,'Y','20150513-1','',2,'',1,'闫羽','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-13 10:31:51','00010001');
INSERT INTO `party` VALUES (233,NULL,'Y','20150513-1','',2,'',2,'李宁','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-13 10:32:11','00010001');
INSERT INTO `party` VALUES (234,NULL,'Y','20150513-1','',2,'闫羽',2,'深圳市五彩实业有限公司','0001','','','','','0755-82947628','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'林婷兰','2015-05-13 10:33:52','00010001');
INSERT INTO `party` VALUES (235,NULL,'Y','20150513-2','',1,'',1,'李喆','0001','13631660351','','','广东省深圳市福田区深南中路1099号','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-13 02:05:26','00010001');
INSERT INTO `party` VALUES (236,NULL,'Y','20150513-2','',2,'段能超',2,'深圳市正兴基础建筑工程有限公司','0004','13530159757','','','','','','0755-88271445','0006','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-13 02:20:50','00060004');
INSERT INTO `party` VALUES (237,NULL,'Y','20150513-2','',2,'王刚',2,'深圳市融资城网络服务中心有限公司','0004','','','','','0755-86183777','','0755-86182966','0018','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-13 02:21:52','00180001');
INSERT INTO `party` VALUES (238,NULL,'Y','20150513-2','',2,'张学翔',2,'深圳市聚盛资产管理有限公司','0004','','','','','0755-86182111','','0755-86183151','0018','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-13 02:22:39','00180001');
INSERT INTO `party` VALUES (239,NULL,'Y','20150513-2','',2,'朱占军',2,'深圳市宏昌达投资有限公司','0004','','','','','','','','0018','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-13 02:23:19','00180001');
INSERT INTO `party` VALUES (240,NULL,'Y','20150513-2','',2,'任俊成',2,'深圳市昌达建筑工程有限公司','0004','','','','','','','','0006','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-13 02:23:48','00060001');
INSERT INTO `party` VALUES (241,NULL,'Y','20150513-2','',2,'',1,'段能超','0001','13823366655','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-13 02:24:10','00010001');
INSERT INTO `party` VALUES (242,NULL,'Y','20150513-2','',2,'',1,'王楚琴','0001','13802582205','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-13 02:24:37','00010001');
INSERT INTO `party` VALUES (243,NULL,'Y','20150515-1','',1,'af',1,'af','0001','asdf','','','afsd','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'linxiao','2015-05-15 09:26:19','00010001');
INSERT INTO `party` VALUES (244,NULL,'Y','20150522-1','',1,'甘捷',2,'深圳市前海梧桐投资有限公司','0004','13691863739','','','深圳市前海深港合作区前海一路1号A栋201室（入驻深圳市前海商务秘书有限公司）','','','','0018','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-22 09:34:22','00180001');
INSERT INTO `party` VALUES (245,NULL,'Y','20150522-1','',2,'唐木养',2,'深圳市沐阳塑胶模具有限公司','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-22 09:50:52','00010001');
INSERT INTO `party` VALUES (246,NULL,'Y','20150522-1','',2,'刘金卫',2,'深圳市金融联融资担保有限公司','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-22 09:51:12','00010001');
INSERT INTO `party` VALUES (247,NULL,'Y','20150522-1','',2,'',1,'唐木养','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-22 09:51:29','00010001');
INSERT INTO `party` VALUES (248,NULL,'Y','20150522-1','',2,'',1,'刘香萍','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'李玉艳','2015-05-22 09:51:42','00010001');
INSERT INTO `party` VALUES (249,NULL,'Y','20150619-1','',1,'唐勇',1,'华润深圳湾发展有限公司','0001','15118042339','','','深圳市南山区滨海大道3001号深圳湾体育中心体育场地三楼','82818553','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'lwj','2015-06-19 11:00:03','00010001');
INSERT INTO `party` VALUES (250,NULL,'Y','20150619-1','',2,'李坤',2,'深圳市正雅餐饮管理有限公司','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'lwj','2015-06-19 11:08:21','00010001');
INSERT INTO `party` VALUES (251,NULL,'N','20150706-1','',1,'',1,'同意','0001','111111111','','','同意','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'houlibao','2015-07-06 04:18:53','00010001');
INSERT INTO `party` VALUES (252,NULL,'Y','20150707-1','',1,'刘述峰',2,'广东生益科技股份有限公司','0001','13709600441','zhongdq@syst.com.cn','','广东省东莞市万江区莞穗大道411号','','523039','0769-22174183','0003','','001',NULL,NULL,NULL,NULL,NULL,'shengyikeji','2015-07-07 09:29:52','00030014');
INSERT INTO `party` VALUES (253,NULL,'Y','20150707-1','',2,'黄启如',2,'珠海荣兴达软性电路有限公司','0001','','','','珠海市金湾区三灶科技园3号厂房1楼','0756-7513006','','','0003','','001',NULL,NULL,NULL,NULL,NULL,'shengyikeji','2015-07-07 09:50:09','00030014');
INSERT INTO `party` VALUES (254,NULL,'Y','20150708-1','',1,'',1,'1111111111','0001','111111111111','','','1111111111','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-08 04:26:34','00010001');
INSERT INTO `party` VALUES (255,NULL,'Y','20150708-2','',1,'',1,'ddddd','0001','dddddddddddddd','ddddddddddddd@qq.com','','dd','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'dsr2','2015-07-08 04:35:20','00010001');
INSERT INTO `party` VALUES (256,NULL,'Y','20150708-3','',1,'ddddddddddd',1,'d','0001','dddddddddd','ddddddddddddddd@qq.com','','ddddddddddddddddddddddd','ddddddddddd','ddddd','ddddddddddd','0001','','001',NULL,NULL,NULL,NULL,NULL,'wscao','2015-07-08 05:26:09','00010001');
INSERT INTO `party` VALUES (257,NULL,'Y','20150708-1','',2,'dd',1,'dddddddddddddddddd','0001','','','','','','','dddddddddddddddd','0001','','001',NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-08 05:57:11','00010001');
INSERT INTO `party` VALUES (258,NULL,'Y','20150708-4','',1,'',1,'ddddd','0001','dddddd','','','d','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wscao','2015-07-08 06:24:55','00010001');
INSERT INTO `party` VALUES (259,NULL,'Y','20150708-5','',1,'44444444444444444444444444444',1,'44444444','0001','444444444444','444444444444444444@qq.com','','444444444444444444','44444444444444444','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wscao','2015-07-08 06:27:44','00010001');
INSERT INTO `party` VALUES (260,NULL,'Y','20150708-5','',2,'',1,'dddddddddddddddddd','0001','dddddddddddddd','ddddddddddddddd@qq.com','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wscao','2015-07-08 06:27:59','00010001');
INSERT INTO `party` VALUES (261,NULL,'Y','20150709-2','',1,'刘述峰',2,'广东生益科技股份有限公司','0001','1','','','东莞市松山湖高新技术产业开发区工业西路5号','','','','0013','','001',NULL,NULL,NULL,NULL,NULL,'zhongqianyi','2015-07-09 02:20:57','00130005');
INSERT INTO `party` VALUES (262,NULL,'Y','20150709-2','',2,'黄启如',2,'珠海荣兴达软性电路有限公司','0001','','','','珠海市金湾区三灶科技园3号厂房1楼','0756-7513006','','','0013','','001',NULL,NULL,NULL,NULL,NULL,'zhongqianyi','2015-07-09 02:31:10','00130005');
INSERT INTO `party` VALUES (263,NULL,'N','20150709-2','',2,'黄启如',2,'珠海荣兴达软性电路有限公司','0001','','','','珠海市金湾区三灶科技园3号厂房1楼','0756-7513006','','','0013','','001',NULL,NULL,NULL,NULL,NULL,'zhongqianyi','2015-07-09 02:36:19','00130005');
INSERT INTO `party` VALUES (264,NULL,'N','20150709-1','',1,'',1,'aaa','0001','aaa','','','aaa','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-07-13 05:06:24','00010001');
INSERT INTO `party` VALUES (265,NULL,'Y','20150710-1','',1,'',1,'1111111111','0001','111111111111','','','1111111111','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-13 05:42:10','00010001');
INSERT INTO `party` VALUES (266,NULL,'Y','20150710-1','',2,'dd',1,'dddddddddddddddddd','0001','','','','','','','dddddddddddddddd','0001','','001',NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-13 05:43:42','00010001');
INSERT INTO `party` VALUES (267,NULL,'N','20150709-1','',2,'',1,'aaa','0001','aaa','','','aaa','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-07-13 07:03:26','00010001');
INSERT INTO `party` VALUES (268,NULL,'Y','20150710-1','',1,'',1,'1111111111','0001','111111111111','','','1111111111','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-14 05:54:47','00010001');
INSERT INTO `party` VALUES (269,NULL,'Y','20150710-1','',1,'dd',1,'dddddddddddddddddd','0001','','','','','','','dddddddddddddddd','0001','','001',NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-14 05:55:00','00010001');
INSERT INTO `party` VALUES (270,NULL,'Y','20150710-1','',2,'',1,'1111111111','0001','111111111111','','','1111111111','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'dsr1','2015-07-14 05:55:13','00010001');
INSERT INTO `party` VALUES (271,NULL,'Y','20150709-1','',1,'小灰灰',1,'小灰灰','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-07-14 06:07:49','00010001');
INSERT INTO `party` VALUES (272,NULL,'Y','20150709-1','',1,'阿凡达',1,'的萨芬','0001','','','','','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'wanghaipinping','2015-07-14 06:07:53','00010001');
INSERT INTO `party` VALUES (273,NULL,'Y','20150708-5','',1,'ddddddddddd',1,'d','0001','dddddddddd','ddddddddddddddd@qq.com','','ddddddddddddddddddddddd','ddddddddddd','ddddd','ddddddddddd','0001','','001',NULL,NULL,NULL,NULL,NULL,'wscao','2015-07-14 06:29:02','00010001');
INSERT INTO `party` VALUES (274,NULL,'Y','20150716-1','',1,'GABRIEL WAISMAN',2,'奥宝电子（深圳）有限公司','0001','18688988830','','','深圳市南山区蛇口工业七路科技大厦辅楼一楼','075526021623','','','0003','','001',NULL,NULL,NULL,NULL,NULL,'crucychen','2015-07-17 10:56:42','00030017');
INSERT INTO `party` VALUES (275,NULL,'Y','20150716-1','',2,'',2,'深圳华祥荣正电子有限公司','0001','','','','广东省深圳市宝安区福永街道和平和裕工业区第三栋','','','','0003','','001001001',NULL,NULL,NULL,NULL,NULL,'crucychen','2015-07-17 11:03:20','00030014');
INSERT INTO `party` VALUES (276,NULL,'Y','20150730-1','',1,'',1,'ffafafa','0001','425252525252','','','fafafa','','','','0001','','001',NULL,NULL,NULL,NULL,NULL,'ruby','2015-07-30 04:17:03','00010001');
INSERT INTO `party` VALUES (277,NULL,'Y','20150730-1','',2,'lgjlsjglsjgl',1,'jlfjdljfldjglq','0001','','','','glsgjlsjgl','','','ljdgljgld','0001','','001',NULL,NULL,NULL,NULL,NULL,'ruby','2015-07-30 04:18:14','00010001');
INSERT INTO `party` VALUES (278,NULL,'Y','20150803-1','',1,'施永晨',2,'广东德力光电有限公司','0001','0','','','江门市江海区彩虹路1号、广东省江门市高新开发区34号地','86750-3277880','','','0003','','001',NULL,NULL,NULL,NULL,NULL,'lianhefazhan','2015-08-03 10:39:56','00030014');
INSERT INTO `party` VALUES (279,NULL,'Y','20150803-1','',2,'',2,'法国液化空气集团先进技术部','0001','','','','Rue de Clemenciere -BP 15/上海古美路1515号18楼','','','','0018','','001',NULL,NULL,NULL,NULL,NULL,'lianhefazhan','2015-08-03 10:45:19','00180001');

--
-- Table structure for table `party_request`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `status` int(11) DEFAULT NULL COMMENT '状态：1已确认，0新建',
  `apply_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '申请号',
  `recevice_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `partytype` int(1) DEFAULT NULL COMMENT '当事人类型，1：申请人 2：被申请人',
  `party_id` int(11) DEFAULT NULL COMMENT '当事人，与tb_party表中id关联',
  `requestdate` date DEFAULT NULL COMMENT '请求提交时间（送来）',
  `rsendstyle` varchar(4) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '请求送交方式（送来）',
  `rsenddate` date DEFAULT NULL COMMENT '送交对方当事人日期',
  `asendstyle` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '送交对方当事人方式',
  `request_text` mediumtext COLLATE utf8_unicode_ci COMMENT '仲裁请求信息',
  `factreason` mediumtext COLLATE utf8_unicode_ci COMMENT '事实理由',
  `u` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '维护用户',
  `u_t` datetime DEFAULT NULL COMMENT '维护时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='请求及事实理由(案件申请)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_request`
--

INSERT INTO `party_request` VALUES (1,'Y',NULL,'20140829-2',NULL,NULL,1,NULL,NULL,NULL,NULL,'一、请求裁决解除《煤炭买卖框架合同》；\r\n二、请求裁决被申请人一立即向申请人退还预付货款人民币330，000，000元及利息（以260，000，000元为本金，按照日万分之三的利率从2014年5月26日暂计至请求之日止为人民币6，162，000元，剩余利息按相同标准计算至实际清偿之日止）；\r\n三、请求裁决被申请人一向申请人支付本案律师费人民币2，094，000元）\r\n四、请求裁决被申请人二、被申请人三、被申请人四共同对被申请人一的债务承担连带清偿责任。\r\n五、请求各被申请人共同承担本案所有仲裁费用。','2014年5月26日，申请人与被申请人各方签订了《煤炭买卖框架合同》','a179','2014-08-29 15:24:27');
INSERT INTO `party_request` VALUES (2,'Y',NULL,'20140902-1','',NULL,3,NULL,'',NULL,NULL,'我有请求','还有理由','a182','2014-09-03 10:39:39');
INSERT INTO `party_request` VALUES (3,'Y',NULL,'20140910-1','',NULL,10,NULL,'',NULL,NULL,'1.祥辉建筑工程公司作为第二被申请人:\r\n(1）合同中将第二被申请人列为当事人。\r\n(2)第二被申请人在以前案件中应诉。\r\n(3)第一被与第二被签订的合同中说明第二被参与了本案的履行。\r\n（4）《中港城商品房产买卖合同》证明第二被参与了合同的履行。\r\n经请示院领导，决定先将第二被申请人列入。\r\n2.申请人后补授权委托书及律师证复印件。\r\n3.合同第17条仲裁条款约定中华人民共和国贸易促进委员会仲裁委员会之深圳分会。\r\n4.第三被申请人更名,申请人称是行政区域名称变更,没有变更名称的资料. 且有“总公司”与“公司”的区别。\r\n5.经院领导批准，为系列案件，有费用减免。\r\n6.没有订购书','房地产买卖纠纷','a184','2014-09-10 04:59:17');
INSERT INTO `party_request` VALUES (4,'Y',NULL,'20141009-1','',NULL,19,NULL,'',NULL,NULL,'adsf','adsfdsaf','a187','2014-10-09 03:32:41');
INSERT INTO `party_request` VALUES (5,'Y',NULL,'20141024-2','',NULL,21,NULL,'',NULL,NULL,'1.解除申请人、被申请人于1992年7月10日签订的《中港城商品房产买卖合同》；\r\n2.第一被申请人和第二被申请人共同返还购房款及订金共计港币330900元以及利息（利息从付款之日起按人民银行同期同类贷款利率计算，计至还清之日止），赔偿申请人损失费港币6980元，并向申请人支付港币10000元违约金（三项共计港币347880元，折合人民币278304元），第三被申请人对上诉款项承担连带清偿责任。\r\n3.本案申请费用由被申请人承担。','1992年申请人与被申请人签订的《中港城商品房产买卖合同》为达成合同目的。申请人向被申请人支付购房款及订金330900元及律师费、手续费6980元。被申请人收到款项后一直未向原告交付房产，并且拒绝退款，怠于建设，楼房至今仍未完工。','a189','2014-10-24 10:43:16');
INSERT INTO `party_request` VALUES (6,'Y',NULL,'20141024-3','',NULL,25,NULL,'',NULL,NULL,'脑袋疼','屁股疼','a190','2014-10-24 03:15:13');
INSERT INTO `party_request` VALUES (7,'N',NULL,'20141024-3','',NULL,25,NULL,'',NULL,NULL,'的萨菲打算放大厦','范德萨发大水','a190','2014-10-24 03:37:38');
INSERT INTO `party_request` VALUES (8,'Y',NULL,'20141028-2','',NULL,28,NULL,'',NULL,NULL,'经济纠纷','合同不执行','a192','2014-10-28 10:33:03');
INSERT INTO `party_request` VALUES (9,'Y',NULL,'20141031-1','',NULL,30,NULL,'',NULL,NULL,'付工程欠款， 的撒发生发顺丰萨芬','多年未付，手动阀范德萨啊阿斯蒂芬','a193','2014-10-31 11:34:41');
INSERT INTO `party_request` VALUES (10,'Y',NULL,'20141105-1','',NULL,33,NULL,'',NULL,NULL,'返款','返款','a196','2014-11-05 03:06:10');
INSERT INTO `party_request` VALUES (11,'Y',NULL,'20141215-1','',NULL,36,NULL,'',NULL,NULL,'请求一一','理由一一','cheshi0001','2014-12-15 04:57:44');
INSERT INTO `party_request` VALUES (12,'Y',NULL,'20141216-1','',NULL,38,NULL,'',NULL,NULL,'归还欠款','还款','wanghaipinping','2014-12-16 05:23:22');
INSERT INTO `party_request` VALUES (13,'Y',NULL,'20150115-1','',NULL,54,NULL,'',NULL,NULL,'1、裁决两被申请人连带赔偿申请人投资收益共计人民币39008.22元；\r\n2、裁决两被申请人连带承担申请人为进行仲裁而发生的合理的法律费用；\r\n3、裁决两被申请人连带承担仲裁费用。\r\n','两被申请人向申请人推销艺术品投资基金，申请人于2010年9月27日向深圳杏石兴盛文化投资中心（有限合伙）投资人民币20万元。2010年12月12日，申请人与两被申请人和其他合伙人签订深圳杏石兴盛文化投资中心（有限合伙）《合伙协议》和《回购协议》。约定申请人作为有限合伙人出资人民币20万元，持有深圳杏石兴盛文化投资中心（有限合伙）1.82 %的份额。两被申请人承诺，如在规定解散期未能退出，由合伙企业管理人（第一被申请人）、执行合伙人（第二被申请人）按照投资成本每年增值6%的价格进行回购，保证合伙企业到期能够按期退出。\r\n深圳杏石兴盛文化投资中心（有限合伙）经营期限为二年，至2012年11月3日届满。到期后，合伙企业未进行分红，申请人未能实现退出。两被申请人拒不告知申请人所投资的艺术品所在，也不履行回购承诺。几经申请人催促，两被申请人于2013年12月24日退还申请人人民币10万元，于2013年12月31日退还申请人人民币10万元，尚欠申请人全部投资收益。计算至2013年12月30日，投资收益为人民币39008.22元，其中，按投资成本人民币20万元从2010年9月27日计至2013年12月23日为38893.15元，按投资成本人民币10万元从2013年12月24日计至2013年12月30日为115.07元。\r\n申请人认为，《合伙协议》和《回购协议》体现了两被申请人以保证回购为条件募集申请人资金的真实意思表示，合法有效，双方当事人均应遵循诚实信用原则按照约定履行各自的义务，否则应承担相应的违约责任。现两被申请人拒不履行《合伙协议》和《回购协议》约定的收购义务，已构成违约。为维护申请人的合法权益，依据《中华人民共和国合同法》、《中华人民共和国仲裁法》、《华南国际经济贸易仲裁委员会仲裁规则》等有关规定，特提请仲裁，请依法裁决。\r\n','北京市东元（深圳）律师事务所','2015-01-15 10:07:03');
INSERT INTO `party_request` VALUES (14,'Y',NULL,'20150127-2','',NULL,57,NULL,'',NULL,NULL,'赔款','欠款','wanghaipinping','2015-01-27 11:29:59');
INSERT INTO `party_request` VALUES (15,'Y',NULL,'20150127-3','',NULL,58,NULL,'',NULL,NULL,'赔款','哈回复','wanghaipinping','2015-01-27 11:39:53');
INSERT INTO `party_request` VALUES (16,'Y',NULL,'20150127-4','',NULL,60,NULL,'',NULL,NULL,'asdfa f','af fdasf','wanghaipinping','2015-01-27 03:25:50');
INSERT INTO `party_request` VALUES (17,'Y',NULL,'20150128-1','',NULL,61,NULL,'',NULL,NULL,'1、裁决两被申请人于仲裁裁决生效之日起十日内连带赔偿申请人投资成本和投资收益，共计人民币622465.75元（其中投资收益暂计至2015年1月8日，之后的投资收益按投资成本每年增值6%继续计算至实际付清收购款之日止）；\r\n2、裁决两被申请人连带承担仲裁费用。\r\n','两被申请人向申请人推销艺术品投资基金，申请人于2010年12月10日向深圳杏石兴盛文化投资中心（有限合伙）投资人民币50万元。2010年12月12日，申请人与两被申请人和其他合伙人签订深圳杏石兴盛文化投资中心（有限合伙）《合伙协议》和《回购协议》。约定申请人作为有限合伙人出资人民币50万元，持有深圳杏石兴盛文化投资中心（有限合伙）4.55%的份额。两被申请人承诺，如在规定解散期未能退出，由合伙企业管理人（第一被申请人）、执行合伙人（第二被申请人）按照投资成本每年增值6%的价格进行回购，保证合伙企业到期能够按期退出。\r\n深圳杏石兴盛文化投资中心（有限合伙）经营期限为二年，至2012年11月3日届满。到期后，合伙企业未进行分红，申请人未能实现退出。两被申请人拒不告知申请人所投资的艺术品所在，也不履行回购承诺。几经申请人催促，两被申请人仍欠申请人投资本金人民币50万元和全部投资收益。自出资之日起暂计至2015年1月8日，投资收益为人民币122465.75元。\r\n申请人认为，《合伙协议》和《回购协议》体现了两被申请人以保证回购为条件募集申请人资金的真实意思表示，合法有效，双方当事人均应遵循诚实信用原则按照约定履行各自的义务，否则应承担相应的违约责任。现两被申请人拒不履行《合伙协议》和《回购协议》约定的收购义务，已构成违约。为维护申请人的合法权益，依据《中华人民共和国合同法》、《中华人民共和国仲裁法》、《华南国际经济贸易仲裁委员会仲裁规则》等有关规定，特提请仲裁，请依法裁决。\r\n','北京市东元（深圳）律师事务所','2015-01-28 10:30:38');
INSERT INTO `party_request` VALUES (18,'Y',NULL,'20150130-2','',NULL,71,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币12969.59元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','  2014年4月19日，中国对外经济贸易信托有限公司（贷款人）、申请人深圳捷信一号咨询有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人汪小松（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币9000元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.31%），保险手续费（月手续费人民币27元）及担保服务费（月担保服务费率0.56%），每月还款额人民币654元。\r\n合同签订后，贷款人即通过客户服务供应商账户向被申请人转账人民币9000元（见附件第6页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费及保险手续费，截止2014年10月19日止，被申请人应支付的期款为14037.59元，其仅偿还人民币1308元（见附件第17页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息9821.27元（见附件第8页）；（2）客户服务供应商客户服务费人民币2838元（见附件11页）及保险手续费162元（见附件第14页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币1114.96元（见附件第17页）及滞纳金人民币240元（见附件18-19页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第20页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-01-30 11:09:21');
INSERT INTO `party_request` VALUES (19,'Y',NULL,'20150130-3','',NULL,73,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币12969.59元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年4月19日，中国对外经济贸易信托有限公司（贷款人）、申请人深圳捷信一号咨询有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人汪小松（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币9000元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.31%），保险手续费（月手续费人民币27元）及担保服务费（月担保服务费率0.56%），每月还款额人民币654元。\r\n合同签订后，贷款人即通过客户服务供应商账户向被申请人转账人民币9000元（见附件第6页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费及保险手续费，截止2014年10月19日止，被申请人应支付的期款为14037.59元，其仅偿还人民币1308元（见附件第17页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息9821.27元（见附件第8页）；（2）客户服务供应商客户服务费人民币2838元（见附件11页）及保险手续费162元（见附件第14页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币1114.96元（见附件第17页）及滞纳金人民币240元（见附件18-19页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第20页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-01-30 06:04:10');
INSERT INTO `party_request` VALUES (20,'Y',NULL,'20150130-4','',NULL,75,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币13365.13元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年4月26日，中国对外经济贸易信托有限公司（贷款人）、申请人深圳捷信一号咨询有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人张兴涛（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币9000元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.31%）及担保服务费（月担保服务费率0.56%），每月还款额人民币627元。\r\n合同签订后，贷款人即通过客户服务供应商账户向被申请人转账人民币9000元（见附件第6页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费及客户服务费，截止2014年9月26日止，被申请人应支付的期款为13752.13元，其仅偿还人民币627元（见附件第13页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息9697.81元（见附件第8页）；（2）客户服务供应商客户服务费人民币2838元（见附件11页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币1165.64元（见附件第13页）及滞纳金人民币240元（见附件15页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第17-18页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n   \r\n','Kimberly ZHANG','2015-01-30 02:28:20');
INSERT INTO `party_request` VALUES (21,'Y',NULL,'20150130-5','',NULL,77,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币7939.71元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年5月4日，中国对外经济贸易信托有限公司（贷款人）、申请人深圳捷信一号咨询有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人梁昌远（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币8000元，分期数为12个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.41%），保险手续费（月手续费人民币24元）及担保服务费（月担保服务费率0.61%），每月还款额人民币927元。\r\n合同签订后，贷款人即通过客户服务供应商账户向被申请人转账人民币8000元（见附件第6页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费及保险手续费，截止2014年10月4日止，被申请人应支付的期款为10626.71元，其仅偿还人民币2781元（见附件第17页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息7822.59元（见附件第8页）；（2）客户服务供应商客户服务费人民币1246.74元（见附件11页）及保险手续费96元（见附件第14页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币437.22元（见附件第17页）及滞纳金人民币94元（见附件19页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第22页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-01-30 02:37:33');
INSERT INTO `party_request` VALUES (22,'Y',NULL,'20150130-6','',NULL,79,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币14928.29元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年5月14日，中国对外经济贸易信托有限公司（贷款人）、申请人深圳捷信一号咨询有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人唐雄（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币10000元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.31%），保险手续费（月手续费人民币30元）及担保服务费（月担保服务费率0.56%），每月还款额人民币726元。\r\n合同签订后，贷款人即通过客户服务供应商账户向被申请人转账人民币10000元（见附件第6页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费及保险手续费，截止2014年10月14日止，被申请人应支付的期款为15414.29元，其仅偿还人民币726元（见附件第17页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息10775.33元（见附件第8页）；（2）客户服务供应商客户服务费人民币3142.32元（见附件11-12页）及保险手续费150元（见附件第14页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币1290.53元（见附件第17页）及滞纳金人民币240元（见附件19页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第23页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-01-30 02:43:51');
INSERT INTO `party_request` VALUES (23,'Y',NULL,'20150130-7','',NULL,81,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币20842.43元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','  2014年5月23日，中国对外经济贸易信托有限公司（贷款人）、申请人深圳捷信一号咨询有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人王关强（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币15000元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.03%）及担保服务费（月担保服务费率0.44%），每月还款额人民币984元。\r\n合同签订后，贷款人即通过客户服务供应商账户向被申请人转账人民币15000元（见附件第11页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费，截止2014年9月21日止，被申请人应支付的期款为21456.43元，其仅偿还人民币984元（见附件第13页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息15399.55元（见附件第7-8页）；（2）客户服务供应商客户服务费人民币3550.97元（见附件10-12页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币1521.91元（见附件第13页）及滞纳金人民币370元（见附件15页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第20 页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n     \r\n','Kimberly ZHANG','2015-01-30 02:54:09');
INSERT INTO `party_request` VALUES (24,'Y',NULL,'20150130-8','',NULL,83,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币4249.77元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年6月4日，中国对外经济贸易信托有限公司（贷款人）、申请人广东捷信融资担保有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人许明法（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币2777元，分期数为12个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.60%），保险手续费（月手续费人民币19元）及担保服务费（月担保服务费率0. 69%），每月还款额人民币340元。\r\n合同签订后，贷款人即通过客户服务供应商账户向商家转账人民币2777元，被申请人由此从商家处取得商品所有权（见附件第6-7页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费及保险手续费，截止2014年12月4日止，被申请人应支付的期款为3879.77元，其仅偿还人民币0元（见附件第16页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息3000.77元（见附件第9页）；（2）客户服务供应商客户服务费人民币535.56元（见附件11页）及保险手续费114元（见附件第13页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币229.3元（见附件第16页）及滞纳金人民币370元（见附件18页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第19页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-01-30 03:24:48');
INSERT INTO `party_request` VALUES (25,'Y',NULL,'20150130-9','',NULL,86,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币7069.58元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年6月13日，中国对外经济贸易信托有限公司（贷款人）、申请人广东捷信融资担保有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人曾海珠（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币4100元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.51%），保险手续费（月手续费人民币29元）及担保服务费（月担保服务费率0. 65%），每月还款额人民币327元。\r\n合同签订后，贷款人即通过客户服务供应商账户向商家转账人民币4100元，被申请人由此从商家处取得商品所有权（见附件第6-7页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费及保险手续费，截止2014年11月13日止，被申请人应支付的期款为6706.58元，其仅偿还人民币7元（见附件第16页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息4417.9元（见附件第9页）；（2）客户服务供应商客户服务费人民币1500.48元（见附件11页）及保险手续费145元（见附件第13页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币642.99元（见附件第16页）及滞纳金人民币370元（见附件18页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第20页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-01-30 03:46:53');
INSERT INTO `party_request` VALUES (26,'Y',NULL,'20150130-10','',NULL,88,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币7099.42元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年6月8日，中国对外经济贸易信托有限公司（贷款人）、申请人广东捷信融资担保有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人柯道来（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币4164元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.51%），保险手续费（月手续费人民币29元）及担保服务费（月担保服务费率0. 65%），每月还款额人民币331元。\r\n合同签订后，贷款人即通过客户服务供应商账户向商家转账人民币4164元，被申请人由此从商家处取得商品所有权（见附件第7-8页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费及保险手续费，截止2014年12月8日止，被申请人应支付的期款为6879.42元，其仅偿还人民币150元（见附件第17页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息4543.98元（见附件第10页）；（2）客户服务供应商客户服务费人民币1512.96元（见附件12页）及保险手续费174元（见附件第14页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币648.27元（见附件第17页）及滞纳金人民币370元（见附19页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第20页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-01-30 04:01:30');
INSERT INTO `party_request` VALUES (27,'Y',NULL,'20150130-11','',NULL,90,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币6851.11元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n',' 2014年6月13日，中国对外经济贸易信托有限公司（贷款人）、申请人广东捷信融资担保有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人肖达一（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币3964元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.51%），保险手续费（月手续费人民币28元）及担保服务费（月担保服务费率0. 65%），每月还款额人民币316元。\r\n合同签订后，贷款人即通过客户服务供应商账户向商家转账人民币3964元，被申请人由此从商家处取得商品所有权（见附件第6-7页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费及保险手续费，截止2014年11月13日止，被申请人应支付的期款为6481.11元，其仅偿还人民币0元（见附件第16页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息4271.35元（见附件第9页）；（2）客户服务供应商客户服务费人民币1448.88元（见附件11页）及保险手续费140元（见附件第13页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币620.68元（见附件第16页）及滞纳金人民币370元（见附件18页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第20页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-01-30 04:09:26');
INSERT INTO `party_request` VALUES (28,'Y',NULL,'20150130-12','',NULL,92,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币6771.1元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年6月9日，中国对外经济贸易信托有限公司（贷款人）、申请人广东捷信融资担保有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人许明海（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币3875元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.51%），保险手续费（月手续费人民币27元）及担保服务费（月担保服务费率0. 65%），每月还款额人民币308元。\r\n合同签订后，贷款人即通过客户服务供应商账户向商家转账人民币3875元，被申请人由此从商家处取得商品所有权（见附件第6-7页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费及保险手续费，截止2014年12月9日止，被申请人应支付的期款为6401.1元，其仅偿还人民币0元（见附件第16页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息4228.62元（见附件第9页）；（2）客户服务供应商客户服务费人民币1407.36元（见附件11页）及保险手续费162元（见附件第13页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币602.93元（见附件第16页）及滞纳金人民币370元（见附件18页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第19-20页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-01-30 04:17:00');
INSERT INTO `party_request` VALUES (29,'Y',NULL,'20150202-1','',NULL,94,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币7099.42元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年6月8日，中国对外经济贸易信托有限公司（贷款人）、申请人广东捷信融资担保有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人柯道来（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币4164元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.51%），保险手续费（月手续费人民币29元）及担保服务费（月担保服务费率0. 65%），每月还款额人民币331元。\r\n合同签订后，贷款人即通过客户服务供应商账户向商家转账人民币4164元，被申请人由此从商家处取得商品所有权（见附件第7-8页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费及保险手续费，截止2014年12月8日止，被申请人应支付的期款为6879.42元，其仅偿还人民币150元（见附件第17页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息4543.98元（见附件第10页）；（2）客户服务供应商客户服务费人民币1512.96元（见附件12页）及保险手续费174元（见附件第14页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币648.27元（见附件第17页）及滞纳金人民币370元（见附19页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第20页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-02-02 11:53:17');
INSERT INTO `party_request` VALUES (30,'Y',NULL,'20150202-2','',NULL,96,NULL,'',NULL,NULL,'1、请求依法裁定申请人与被申请人于2010年8月30日签订的《房屋租赁合同》及《租赁合同补充条款》已于2014年9月30日解除；\r\n2、请求依法裁定被申请人立即搬离位于深圳市罗湖区东门南路瑞鹏大厦3#楼二楼的房产并向申请人交还该房产；\r\n3、请求依法裁定北申请人向申请人支付《房屋租赁合同》到期后占用沈倩倩人房产的实际占有使用费共计人民币35846.70元（暂计至2014年11月30日，应计至实际搬离之日止）；\r\n4、请求依法裁定被申请人支付申请人律师费损失人民币8000元；\r\n5、请求依法裁定被申请人承担本案的全部仲裁费用。','2011年3月8日，申请人中粮集团（深圳）有限公司（以下简称“中粮公司”）与被申请人深圳市罗湖区倒流时光保健按摩中心（以下简称“倒流时光”）签订了《住宅物业租赁合同》（以下简称“租赁合同”），确定由倒流时光承租中粮公司位于深圳市罗湖区东门南路瑞鹏大厦A座1101室的房产（以下简称“承租房产”）用作住宅用途。\r\n该租赁合同约定了：1、承租房产位于深圳市罗湖区东门南路瑞鹏大厦A座1101室，用途为住宅；2、租赁期限为：2011年9月1日起至2012年8月30日止；3、月租金为人民币2800元等内容。\r\n合同到期后，中粮公司多次书面通知倒流时光租赁合同已解除，中粮公司将收回承租房产不再与彭永鹤签订租赁合同，并多次给予较长的搬迁过渡时间，但是倒流时光均置之不理。\r\n倒流时光一直未按时依约交还承租房产，并占有至今，导致中粮公司对瑞鹏大厦的整体招租计划一直无法实施，给中粮公司造成了巨大的经济损失。\r\n申请人为维护自身合法权益而支付的律师费、仲裁费等费用均属于申请人的损失，根据我国《合同法》第107条“当事人一方不履行合同义务或者履行合同义务不符合约定的，应当承担继续履行、采取补救措施或者赔偿损失等违约责任。”的规定，因此被申请人应同时赔偿申请人为收回房产所支付的仲裁费用和律师费损失。\r\n为维护自身的合法权益，中粮公司特依租赁合同约定的仲裁条款向贵会申请仲裁，恳请贵会依法支付申请人的全部仲裁请求。\r\n此致\r\n华南国际经济贸易仲裁委员会\r\n\r\n申请人：中粮集团（深圳）有限公司\r\n2015年1月29日\r\n','rongfanxun2015','2015-02-02 03:30:58');
INSERT INTO `party_request` VALUES (31,'Y',NULL,'20150202-4','',NULL,100,NULL,'',NULL,NULL,'1、请求依法裁定申请人与被申请人于2011年3月8日签订的《房屋租赁合同》及《写字楼租赁合同补充条款》已于2014年9月30日解除；\r\n2、请求依法裁定被申请人立即搬离位于深圳市罗湖区东门南路瑞鹏大厦A座二楼东面的房产并向申请人交还该房产； \r\n3、请求依法裁定被申请人向申请人支付《住宅房屋租赁合同》到期后占用申请人房产的实际占有使用费用共计人民币12000.00元（大写：壹万贰仟元整）（暂计至2014年11月30日，应计至实际搬离之日止）；\r\n4、请求依法裁定被申请人支申请人律师费损失人民币2000元（大写：贰仟元整）；\r\n5、请求依法裁定被申请人承担本案的全部诉讼费用。','2011年3月8日，申请人中粮集团（深圳）有限公司（以下简称“中粮公司”）与被申请人彭永鹤（以下简称“彭永鹤”）签订了《房屋租赁合同》和《租赁合同补充条款》（以下简称“租赁合同”），确定由彭永鹤承租中粮公司位于深圳市罗湖区东门南路瑞鹏大厦A座二楼东面的房产（以下简称“承租房产”）用作商业用途。\r\n该租赁合同约定了：1、承租房产位于深圳市罗湖区东门南路瑞鹏大厦A座二楼东面，用途为商业；2、租赁期限为：2011年4月1日起至2014年9月30日止；3、月租金为人民币6000元等内容。\r\n2014年6月起，中粮公司多次书面通知彭永鹤租赁合同将于2014年9月30日到期，该合同到期后中粮公司将收回承租房产不再与彭永鹤签订租赁合同，并多次给予较长的搬迁过渡时间，但是彭永鹤均置之不理。\r\n彭永鹤一直未按时依约交还承租房产，并占有至今，导致中粮公司对瑞鹏大厦的整体招租计划一直无法实施，给中粮公司造成了巨大的经济损失。\r\n申请人为维护自身合法权益而支付的律师费、仲裁费等费用均属于申请人的损失，根据我国《合同法》第107条“当事人一方不履行合同义务或者履行合同义务不符合约定的，应当承担继续履行、采取补救措施或者赔偿损失等违约责任。”的规定，因此被申请人应同时赔偿申请人为收回房产所支付的仲裁费用和律师费损失。\r\n为维护自身的合法权益，中粮公司特依租赁合同约定的仲裁条款向贵会申请仲裁，恳请贵会依法支付申请人的全部仲裁请求。\r\n此致\r\n华南国际经济贸易仲裁委员会\r\n\r\n申请人：中粮集团（深圳）有限公司\r\n2015年1月29日','rongfanxun2015','2015-02-02 03:43:54');
INSERT INTO `party_request` VALUES (32,'Y',NULL,'20150202-5','',NULL,102,NULL,'',NULL,NULL,'1、请求依法裁定确认申请人与被申请人于2011年8月18日签订的《住宅物业租赁合同》已解除；\r\n2、请求依法裁定被申请人立即搬离位于深圳市罗湖区东门南路瑞鹏大厦A座1101室的房产并向申请人交还该房产； \r\n3、请求依法裁定被申请人向申请人支付《住宅物业租赁合同》到期后占用申请人房产的实际占有使用费用共计人民币11511.10元（大写：壹万壹仟伍佰壹拾一元一角）（暂计至2014年11月30日，应计至实际搬离之日止）；\r\n4、请求依法裁定被申请人支申请人律师费损失人民币2000.00元（大写：贰仟元整）；\r\n5、请求依法裁定被申请人承担本案的全部诉讼费用。','2011年3月8日，申请人中粮集团（深圳）有限公司（以下简称“中粮公司”）与被申请人深圳市罗湖区倒流时光保健按摩中心（以下简称“倒流时光”）签订了《住宅物业租赁合同》（以下简称“租赁合同”），确定由倒流时光承租中粮公司位于深圳市罗湖区东门南路瑞鹏大厦A座1101室的房产（以下简称“承租房产”）用作住宅用途。\r\n该租赁合同约定了：1、承租房产位于深圳市罗湖区东门南路瑞鹏大厦A座1101室，用途为住宅；2、租赁期限为：2011年9月1日起至2012年8月30日止；3、月租金为人民币2800元等内容。\r\n合同到期后，中粮公司多次书面通知倒流时光租赁合同已解除，中粮公司将收回承租房产不再与彭永鹤签订租赁合同，并多次给予较长的搬迁过渡时间，但是倒流时光均置之不理。\r\n倒流时光一直未按时依约交还承租房产，并占有至今，导致中粮公司对瑞鹏大厦的整体招租计划一直无法实施，给中粮公司造成了巨大的经济损失。\r\n申请人为维护自身合法权益而支付的律师费、仲裁费等费用均属于申请人的损失，根据我国《合同法》第107条“当事人一方不履行合同义务或者履行合同义务不符合约定的，应当承担继续履行、采取补救措施或者赔偿损失等违约责任。”的规定，因此被申请人应同时赔偿申请人为收回房产所支付的仲裁费用和律师费损失。\r\n为维护自身的合法权益，中粮公司特依租赁合同约定的仲裁条款向贵会申请仲裁，恳请贵会依法支付申请人的全部仲裁请求。\r\n此致\r\n华南国际经济贸易仲裁委员会\r\n\r\n申请人：中粮集团（深圳）有限公司\r\n2015年1月29日','rongfanxun2015','2015-02-02 03:50:36');
INSERT INTO `party_request` VALUES (33,'Y',NULL,'20150202-6','',NULL,104,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币27160.56元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年4月21日，中国对外经济贸易信托有限公司（贷款人）、申请人深圳捷信一号咨询有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人姚鹏亮（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币20000元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率0.95%）及担保服务费（月担保服务费率0.41%），每月还款额人民币1290元。\r\n合同签订后，贷款人即通过客户服务供应商账户向被申请人转账人民币20000元（见附件第6页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费，截止2014年9月21日止，被申请人应支付的期款为28080.56元，其仅偿还人民币1290元（见附件第13页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息20532.72元（见附件第8页）；（2）客户服务供应商客户服务费人民币4380.58（见附件11页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币1877.26元（见附件第13页）及滞纳金人民币370元（见附件15页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第16-17页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n   \r\n\r\n','Kimberly ZHANG','2015-02-02 05:22:45');
INSERT INTO `party_request` VALUES (34,'Y',NULL,'20150203-1','',NULL,106,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币14294.29元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n',' 2014年5月8日，中国对外经济贸易信托有限公司（贷款人）、申请人深圳捷信一号咨询有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人徐平宇（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币10000元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.11%）及担保服务费（月担保服务费率0.47%），每月还款额人民币668元。\r\n合同签订后，贷款人即通过客户服务供应商账户向被申请人转账人民币10000元（见附件第5页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费，截止2014年10月8日止，被申请人应支付的期款为14592.29元，其仅偿还人民币668元（见附件第12页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息10266.37元（见附件第7页）；（2）客户服务供应商客户服务费人民币2560.59（见附件10页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币1097.33元（见附件第12页）及滞纳金人民币370元（见附件14页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第17页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。','Kimberly ZHANG','2015-02-03 11:05:19');
INSERT INTO `party_request` VALUES (35,'Y',NULL,'20150203-2','',NULL,108,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币45969.03元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年5月8日，中国对外经济贸易信托有限公司（贷款人）、申请人深圳捷信一号咨询有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人蒋宏（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币30000元，分期数为36个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率0.95%）及担保服务费（月担保服务费率0.41%），每月还款额人民币1524元。\r\n合同签订后，贷款人即通过客户服务供应商账户向被申请人转账人民币30000元（见附件第6页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费，截止2014年10月8日止，被申请人应支付的期款为47123.03元，其仅偿还人民币1524元（见附件第13页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息32395.79元（见附件第8页）；（2）客户服务供应商客户服务费人民币10308.96（见附件11页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币4295.55元（见附件第13页）及滞纳金人民币370元（见附件15页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第18-19页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-02-03 11:21:49');
INSERT INTO `party_request` VALUES (36,'Y',NULL,'20150203-3','',NULL,110,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币44662.05元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n','2014年5月14日，中国对外经济贸易信托有限公司（贷款人）、申请人深圳捷信一号咨询有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人吴少宝（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币30000元，分期数为36个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率0.95%）及担保服务费（月担保服务费率0.41%），每月还款额人民币1524元。\r\n合同签订后，贷款人即通过客户服务供应商账户向被申请人转账人民币30000元（见附件第6页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费，截止2014年11月14日止，被申请人应支付的期款为47570.05元，其仅偿还人民币3148元（见附件第13页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息32842.81元（见附件第8页）；（2）客户服务供应商客户服务费人民币10308.96元（见附件12页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币4172.82元（见附件第13页）及滞纳金人民币240元（见附件15页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第19页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-02-03 11:31:03');
INSERT INTO `party_request` VALUES (37,'Y',NULL,'20150203-4','',NULL,112,NULL,'',NULL,NULL,'1.依法裁令被申请向申请人支付欠款人民币14294.29元；\r\n2.依法裁令被申请人承担本案仲裁费用。\r\n\r\n','2014年6月6日，中国对外经济贸易信托有限公司（贷款人）、申请人深圳捷信一号咨询有限公司（担保人）、深圳捷信金融服务有限公司（客户服务供应商）与被申请人蒋忠相（借款人）签订消费信贷合同（见附件第1-2页），约定贷款本金为人民币10000元，分期数为24个月，月贷款利率为1.67%，并承担相应的客户服务费（月客户服务费率1.11%）及担保服务费（月担保服务费率0.47%），每月还款额人民币668元。\r\n合同签订后，贷款人即通过客户服务供应商账户向被申请人转账人民币10000元（见附件第6页）。此后，被申请人未按合同约定按时偿还每期的贷款本金、利息、担保服务费、客户服务费，截止2014年11月6日止，被申请人应支付的期款为14592.29元，其仅偿还人民币668元（见附件第11页）。\r\n针对被申请人逾期未偿还的款项，申请人承担连带保证责任，代为清偿如下债务：（1）贷款人本金及利息10266.37元（见附件第8-9页）；（2）客户服务供应商客户服务费人民币2560.59元（见附件12页）。依据《中华人民共和国担保法》第三十条的规定，现申请人已承担保证责任，有权就上述款项向被申请人进行追偿。此外，被申请人拖欠申请人担保服务费人民币1097.33元（见附件第14页）及滞纳金人民币370元（见附件12页）。\r\n申请人多次通过电催方式要求被申请人履行还款义务，但一直未果（见附件第20页）。现为维护合法权益特向贵委申请仲裁，请求贵委裁如所请。\r\n','Kimberly ZHANG','2015-02-03 11:38:37');
INSERT INTO `party_request` VALUES (38,'Y',NULL,'20150204-1','',NULL,116,NULL,'',NULL,NULL,'请求依照申请人与被申请人达成的<和解协议>内容做出裁决','2014年12月27日,申请人与被申请人分别签订了26份<深圳市房地产买卖合同(预售)>,约定被申请人购买申请人开发的京基云景梧桐花园项目房产共计26套,双方已于2015年1月7日完成以上购房合同的备案手续.但被申请人支付首期款后,未能按照合同约定支付剩余购房款,且已表明无支付能力.申请人与被申请人已于2015年1月28日达成<和解协议>,约定双方签订的26份购房合同解除,并约定任何一方有权将和解协议提交华南国际经济贸易仲裁委员会依法做出裁决.','linxiajuan','2015-02-04 10:06:57');
INSERT INTO `party_request` VALUES (39,'Y',NULL,'20150204-2','',NULL,120,NULL,'',NULL,NULL,'1.请求裁决确认自2014年10月21日起，David Charles Parker先生为被申请人法定代表人、董事长、董事、总经理；杨光先生、梁炜才先生为被申请人董事；李永隆先生不再担任被申请人法定代表人、董事长、董事、总经理；陆鸿翔先生、许业荣先生不再担任被申请人董事；\r\n\r\n2.请求裁决被申请人就第1项仲裁请求涉及的被申请人法定代表人、董事、总经理变更事宜，立即向厦门市工商行政管理局申请办理相关工商变更登记（备案）手续；\r\n\r\n3.请求裁决当被申请人未在生效裁决书确定的期限内履行第2项仲裁请求确定的义务时，申请人有权以自己的名义向厦门市工商行政管理局申请办理；\r\n\r\n4.请求裁决被申请人履行《协议》第四条项下的义务，将《协议》第四条中述及的被申请人印章、证照原件、资产权属证书原件、财务账册及财务凭证原件、商业合同原件等公司资料原件移交给David Charles Parker先生及其授权代表；\r\n\r\n5.请求裁决被申请人承担本案全部仲裁费。\r\n','申请人Tian Liang Limited（天量有限公司）为被申请人天耀（厦门）置业发展有限公司的唯一股东，持有被申请人100%股权。\r\n2014年10月21日，因公司经营发展需要，申请人召开董事会会议，就变更被申请人法定代表人（董事长）、董事等事宜作出申请人董事会决议，并同日以申请人的名义制作了《委派书》及《免职书》，免去了李永隆先生、陆鸿翔先生、许业荣先生担任的被申请人董事职务，并委派David Charles Parker先生、杨光先生、梁炜才先生担任被申请人董事，同时委派David Charles Parker先生担任被申请人法定代表人（董事长），上述人事任免已自《委派书》及《免职书》作出之日起生效。\r\n2014年10月21日，被申请人新任董事会召开临时董事会会议并作出被申请人董事会决议，解聘李永隆先生担任的被申请人总经理职务，并聘请David Charles Parker先生担任被申请人总经理。\r\n2015年1月29日，被申请人新任董事会再次召开临时董事会会议确认David Charles Parker先生为被申请人唯一合法授权代表，并对被申请人的公司资料保管制度事宜作出了相关决定。\r\n为执行上述决议事项，申请人与被申请人于2015年1月29日签署《协议》，明确约定被申请人应当在《协议》签署之日起5日内完成上述人事（法定代表人、董事长、董事、总经理）任免所涉及的工商变更登记（备案）手续，并在《协议》签署之日起2日内将《协议》第四条中述及的被申请人印章、证照原件、资产权属证书原件、财务账册及财务凭证原件、商业合同原件等公司资料原件移交给David Charles Parker先生或其授权代表。\r\n现上述履行期限已届满，但被申请人仍未能完成约定义务，严重违反了双方《协议》约定，应当依法承担相应的违约责任。\r\n','lipeiran','2015-02-04 10:39:40');
INSERT INTO `party_request` VALUES (40,'Y',NULL,'20150204-4','',NULL,122,NULL,'',NULL,NULL,'1、请求裁决被申请人立即返还预付款人民币75000元及利息损失（暂计至2014年12月31日为人民币3427.39;\r\n2、请求裁决被申请人支付违约金人民币25000元；\r\n3、请求裁决北申请人支付仲裁费。','2013年8月双方签署《固定资产采购合约》，合约约定申请人向被申请人采购一台全自动平板UV打印机SJM-450，价款为25万元，预付款为价款的30%，交货日期为合约签署后的45个工作日内，交货地点为申请人所在地。\r\n自合同签署后，申请人即向被申请人支付人民币75000元的预付款，但被申请人未按约交付货物，且经申请人多次要求，仍拒绝交付，亦不退还预付款。\r\n根据《固定资产采购合约》第四条第二款约定，及《合同法》第九十六条规定，申请人委托广东信达律师事务所律师王利国向被申请人发出书面催收预付款、违约金及解除合约通知。','chchkf','2015-02-04 04:16:24');
INSERT INTO `party_request` VALUES (41,'Y',NULL,'20150205-1','',NULL,125,NULL,'',NULL,NULL,'1、裁决被申请人立即向申请人支付货款本金380,442.1元，逾期付款利息11,894.37元（以380,442.1元为本金，按照中国人民银行同期同类贷款利率的标准，自每笔货款发票开具次日起暂计算至2015年1月31日，2015年2月1日至被申请人实际清偿欠款之日利息按同等标准计算），合计392,336.47元；\r\n2、被申请人立即向申请人支付申请人委托律师代理费用16，000元；\r\n以上第1、2项合计408，336.47元。\r\n3、本案全部仲裁费用由被申请人承担。\r\n2、','    被申请人广东宏长进出口贸易有限公司（以下简称“宏长公司”）与申请人佛山市南海区美邦家具有限公司（以下简称“美邦公司”）于2014年1月2日签订一份编号为HC－MB2014的《协议书》，约定由宏长公司代理美邦公司办理货物出口手续。该协议为反映双方合作模式的框架协议，双方之间具体每一笔货物代理出口交易均另签订书面购销合同。该协议第四条约定，宏长公司收到美邦公司客户到账的货款后，美邦公司应向宏长公司提供增值税发票等资料，宏长公司应在三个工作日内按商定的结汇率向美邦公司支付相应的货款。除合同另有约定，宏长公司不得迟延结付货款、核销外汇以及退税，否则需要承担由此而产生的额外费用以及美邦公司所遭受的经济损失。该协议书签订后，申请人及被申请人之间发生了如下一系列的家具委托代理出口交易：\r\n    2014年1月5日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-25），合同约定由宏长公司向美邦公司采购办公转椅一批合计255,328.92元。该合同的第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。上述合同签订后，美邦公司已经于2014年2月18日向宏长公司交付全部货物，2014年3月21日宏长公司向美邦公司支付部分货款225,913.5元。美邦公司于2014年3月21日向宏长公司开具相当于合同总价款的增值税发票。该合同尚余29.415.42元货款未支付。\r\n    2014年1月5日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-28），约定由宏长公司向美邦公司采购办公转椅一批合计221,295.28元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年2月26日向宏长公司交付货物，宏长公司于2014年4月2日支付191,736.42元货款后，尚余29,558.86元货款未支付。美邦公司已于2014年4月9日向宏长公司开具相当于合同总价款的增值税发票。\r\n     2014年2月10日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-56），约定由宏长公司向美邦公司采购办公转椅、会议椅一批合计122,038.38元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年3月24日向宏长公司交付货物，宏长公司于2014年5月12日支付部分货款106,529.18元，尚余15,509.2元货款未支付。美邦公司于2014年5月14日向宏长公司开具相当于合同总价款的增值税发票。\r\n    2014年2月15日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-64），约定由宏长公司向美邦公司采购办公转椅一批合计112,026.26元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年3月26日向宏长公司交付货物，宏长公司于2014年4月24日支付部分货款97,270.6元，尚余14,755.66元货款未支付。美邦公司于2014年5月24日向宏长公司开具相当于合同总价款的增值税发票。\r\n    2014年2月25日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-35），约定由宏长公司向美邦公司采购办公转椅一批合计99,505.07元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年4月15日向宏长公司交付货物，宏长公司于2014年3月21日支付部分货款86，607.8元，尚余12，897.27元货款未支付。美邦公司于2014年6月11日向宏长公司开具相当于合同总价款的增值税发票。\r\n    2014年3月10日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-59），约定由宏长公司向美邦公司采购办公转椅、会议椅一批合计121，014.9元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年4月29日向宏长公司交付货物，宏长公司于2014年4月2日支付部分货款105,103元，尚余15,911.9元货款未支付。美邦公司于2014年6月14日向宏长公司开具相当于合同总价款的增值税发票。\r\n    2014年3月25日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-45），约定由宏长公司向美邦公司采购办公沙发、办公转椅、会议椅一批合计193,357.39元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年5月9日向宏长公司交付货物，宏长公司于2014年8月11日支付部分货款134,505元，尚余58,852.39元货款未支付。美邦公司于2014年6月25日向宏长公司开具相当于合同总价款的增值税发票。\r\n     2014年4月18日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-134），约定由宏长公司向美邦公司采购办公转椅一批合计117,273.76元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年5月20日向宏长公司交付货物，宏长公司于2014年7月4日支付部分货款102,100.58元，尚余15,173.18元货款未支付。美邦公司于2014年8月9日向宏长公司开具相当于合同总价款的增值税发票。\r\n    2014年5月5日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-157），约定由宏长公司向美邦公司采购办公转椅一批合计133,173.59元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年6月5日向宏长公司交付货物，宏长公司于2014年7月4日支付部分货款89,835.92元，尚余43,337.67元货款未支付。美邦公司于2014年8月22日向宏长公司开具相当于合同总价款的增值税发票。\r\n    2014年5月5日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-135），约定由宏长公司向美邦公司采购办公转椅、会议椅一批合计173,940.19元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年7月6日向宏长公司交付货物，宏长公司于2014年6月24日支付部分货款159,167.3元，尚余货款14,772.89元未支付。美邦公司于2014年9月15日向宏长公司开具相当于合同总价款的增值税发票。\r\n    2014年5月7日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-58），约定由宏长公司向美邦公司采购办公转椅一批合计127,242.44元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年7月9日向宏长公司交付货物，宏长公司于2014年4月2日支付部分货款110,486.26元，尚余货款16,756.18元未支付。美邦公司于2014年9月23日向宏长公司开具相当于合同总价款的增值税发票。\r\n    2014年5月19日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-175），约定由宏长公司向美邦公司采购办公转椅一批合计283,741.31元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年6月17日向宏长公司交付货物，宏长公司于2014年7月11日支付部分货款247,763.7元，尚余货款35,977.61元未支付。美邦公司于2014年9月9日向宏长公司开具相当于合同总价款的增值税发票。\r\n    2014年5月20日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-118），约定由宏长公司向美邦公司采购办公转椅、会议椅一批合计236,740.3元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年6月19日向宏长公司交付货物，宏长公司于2014年5月6日支付部分货款204,685.5元，尚余货款32,054.8元未支付。美邦公司于2014年9月10日向宏长公司开具相当于合同总价款的增值税发票。\r\n    2014年5月20日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-60），约定由宏长公司向美邦公司采购办公转椅、会议椅一批合计150,895.03元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年6月20日向宏长公司交付货物，宏长公司于2014年4月2日支付部分货款130,889.96元，尚余货款20,005.07元未支付。美邦公司于2014年8月22日向宏长公司开具相当于合同总价款的增值税发票。\r\n    2014年7月1日，申请人及被申请人双方签订一份《出口商品收购合同》（合同编号为HC2014-164），约定由宏长公司向美邦公司采购办公转椅一批合计197,654.8元。该合同第5条约定，宏长公司应在收到相应的增值税发票后三天内付清货款给美邦公司。合同签订后，美邦公司已经依约于2014年8月7日向宏长公司交付货物，宏长公司于2014年8月7日支付部分货款172,190.8元，尚余货款25,464元未支付。美邦公司于2014年10月23、26日向宏长公司开具相当于合同总价款的增值税发票。\r\n    上述15个买卖合同签订后，美邦公司已经全部履行交付货物的义务，并且已经向宏长公司开具相应的增值税发票，然而宏长公司一直未足额履行支付货款的义务。截至本起诉状出具之日，上述15个买卖合同项下合计2,545,227.62元的货款，宏长公司仅支付了当中的2,164,785.52元，尚余380,442.1元未支付。美邦公司已多方向宏长公司催告但均无果。\r\n宏长公司的行为已经构成严重违约，并且已经给美邦公司带来明显的经济损失。为此，美邦公司有权要求宏长公司立即支付拖欠的货款本金380,442.1元，以及因拖欠货款而产生的逾期付款利息11,894.37元，合计392,336.47元。同时，根据《华南国际经济贸易仲裁委员会仲裁规则》第六十六条的规定，美邦公司通过仲裁程序向宏长公司主张债权而产生的各项仲裁费用以及委托律师代理的费用，均属于为进行仲裁而发生的合理法律费用和其他费用，应当由违约方宏长公司承担。\r\n    鉴于申请人、被申请人在《协议书》第十一条约定，如双方发生纠纷任何一方可向中国国际经济贸易仲裁委员会华南分会提出仲裁。根据广东省司法厅印发的《关于全省仲裁委员会设立登记的情况通报》（粤司仲〔2014〕1号），该仲裁机构已更名为华南国际经济贸易仲裁委员会（深圳国际仲裁院），故此贵会对本案享有管辖权。现为维护美邦公司的合法权益，美邦公司特提向贵会申请仲裁，请求贵会查明案件事实，依法作出公正的裁决。','广东泽康律师事务所','2015-02-05 09:19:45');
INSERT INTO `party_request` VALUES (42,'Y',NULL,'20150210-2','',NULL,133,NULL,'',NULL,NULL,'\r\n\r\n1．要求被申请人立即支付欠款人民币146849.86元（其中：月度服务费自2014年6月-2014年10月；共计人民币15000元和货款人民币131849.86元）；\r\n2  要求被申请人归还所有权属于申请人氮气储罐设备1套和氧气储罐设备1套（包括规格3000LVHP；产品编号：PC3000VHPGBCS1131-05  ；资产编号：CN-3000VHP0260的储罐一只；规格450L,产品编号： NCTE11V02042，资产编号：CN-C455HP0094的储罐一只。不锈钢管20米；铜管20米，不锈钢活接12个，不锈钢球阀 1个，铜球阀1个）价值人民币178974.62元；\r\n3．要求被申请人按合同规定承担整个合同首期剩余期间内（合同约定的首期是，自2012年11月27日起至2017年11月27日，2014年10月21日合同解除，剩余37个月的全部储罐系统月度服务费111000元；\r\n\r\n4．要求被申请人支付储罐系统安装和拆除费用人民币15000 元； \r\n5. 要求被申请人补偿申请人因为仲裁而支出的律师费人民币31109元和出差费用人民币4000元（暂估，以最后提交出差凭证为准）；\r\n\r\n6. 要求被申请人承担全部仲裁费用。\r\n','\r\n2012年11月27日，申请人和被申请人签订了《快易冷气体供应服务合同》一份，由被申请人向申请人购买氮气和氧气产品，其中氮气和氧气储罐系统各1套由申请人提供，双方约定了储罐系统每月服务费和产品单价。合同首期期限为5年，并且约定了违约赔偿等条款（附件一）\r\n\r\n合同签订后，申请人按照合同规定，向被申请人提供氮气和氧气储罐系统各1套并且安装在被申请人的指定区域开始向被申请人提供产品（附件二）。但是自2014年7月开始，被申请人开始拒绝履行双方约定的最低购买量，使用第三方产品并且拖欠款项共计人民币146849.86元（附件三），之后，申请人委托律师发函进行催讨并告知继续违约的后果（附件四），但是被申请人拒绝付款使得申请人无法实现合同目的。2014年10月21日，申请人向被申请人发出解除合同通知书（附件五），但是被申请人仍然拒绝付款和归还储罐设备。\r\n\r\n申请人认为，申请人和被申请人之间所签订的合同，系双方真实意思的表示，合法有效，双方理应按合同的约定履行。由于被申请人自身的违约行为导致合同被提前提终止的责任在被申请人。因此，要求被申请人承担付款义务和拆除费用及按照合同约定赔偿金外，还应该按照仲裁规则的规定，承担因仲裁而使申请人支出的律师费和出差费用（附件六）的补偿责任。申请人为保护自身的合法权益不受侵犯，依据与被申请人所签订的合同中仲裁条款的规定，向贵会提出仲裁。请求贵会支持申请人的仲裁请求事项。\r\n\r\n\r\n','chunqiang_0404','2015-02-15 12:19:18');
INSERT INTO `party_request` VALUES (43,'Y',NULL,'20150210-3','',NULL,135,NULL,'',NULL,NULL,'1、请求裁令被申请人向申请人支付设备款69.8万元；\r\n2、请求裁令被申请人向申请人支付违约金34.9万元；\r\n3、请求裁令被申请人承担本案全部仲裁费用。','   申请人与被申请人于2013年12月30日签订了《设备供应合同书》（YY-C094B0010C），约定由被申请人向申请人采购笔记本外壳喷涂线设备1套，合同总价698万元。合同签订后，申请人按照约定向被申请人交付了标的物。但被申请人迄今仍拖欠设备尾款69.8万元未付。\r\n\r\n  申请人认为，被申请人长期拖欠设备款的行为属于违约行为，也给申请人造成了巨大经济损失。依法，申请人有权要求被申请人履行支付设备款之义务，并得依照合同约定，要求被申请人向申请人支付违约金。因此，特向贵会申请仲裁，望裁如所请。\r\n\r\n   此致\r\n华南国际经济贸易仲裁委员会\r\n\r\n                                        申请人：东莞丰裕电机有限公司\r\n                                         2015年2月10日\r\n','smiles','2015-02-10 03:37:10');
INSERT INTO `party_request` VALUES (44,'Y',NULL,'20150210-4','',NULL,137,NULL,'',NULL,NULL,'1、裁决第一被申请人立即向申请人支付债券本金人民币14,700,000元，支付债券本金利息，计至第一被申请人履行完毕全部支付义务之日（为便于确定仲裁费用金额，利息暂计至2015年1月19日，自2015年1月10日至被申请人实际付清之日止以年票面利率20%计算，债券本金利息暂计为人民币421,519.66元），以及延期补偿金额人民币1,295,551.25元，向申请人指定的第三方交付位于内蒙古呼和浩特赛罕区双树巷西侧院门牌号为“奈伦城市亮点”商业楼的8处房产或支付违约赔偿金1,400,000元；\r\n2、裁决由两被申请人共同赔偿申请人追偿债权而造成的损失，包括但不限于申请人为本案支付的律师费人民币166,289元、差旅费用暂计人民币20,000元；\r\n3、裁决申请人在上述第一、二项仲裁请求及仲裁费用等实现债权的费用范围内对两被申请人提供抵押的呼国用（2004）字第0840号国有土地使用权、质押的内蒙古天润化肥股份有限公司56.55%的股权折价或变卖、拍卖所得价款享有优先受偿权，不足清偿部分由第二被申请人承担连带责任保证担保；\r\n4、裁决由两被申请人共同承担本案全部仲裁费用。','第一被申请人2012年11月9日发行2012 年中小企业私募债券，申请人累计持有了人民币1,470万份额的本期债券。经数次调整期限及兑付方案，第一被申请人未依约支付债券本金、利息及延期补偿金额和违约赔偿金，第二被申请人未依约就第一被申请人债务承担连带责任保证担保，经协商不成，申请人提出本仲裁申请。\r\n一、债券发行及认购持有情况\r\n2012年11月9日，第一被申请人以非公开方式发行面值总额为人民币25,000万元的内蒙古奈伦农业科技股份有限公司2012中小企业私募债券。募集说明书（见证据一）载明，本期债券为2年期固定利率债券, 票面利率为9.95%, 每年付息一次, 到期一次还本, 最后一期利息随本金的兑付一起支付, 本金兑付日为2014年11月9日。第二被申请人为本期债券的还本付息出具了《担保函》（见证据二）, 同意在其承担保证责任的范围内为本次债券的还本付息提供全额无条件不可撤销的连带责任保证担保，其保证的范围包括：本期债券本金的100%、该部分本金对应的利息, 以及违约金、损害赔偿金、实现债权的费用。\r\n自2014年11月起，申请人受让中国对外经济贸易信托有限公司（以下简称“外贸信托”）持有的1,050万份额本期债券、并取得被申请人一出具的《债权转让确认书》（见证据三）。申请人受让兴业信托有限公司（以下简称“兴业信托”）持有的420万份额本期债券、并取得被申请人一出具的《债权转让确认书》（见证据四）。\r\n二、调整期限及兑付方案情况\r\n《募集说明书》载明的本金兑付日（2014年11月9日）前后，兴业信托、外贸信托、申请人与两被申请人三次调整期限及兑付方案，具体如下：\r\n2014年11月7日，全体债券持有人与两被申请人共同签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议》（见证据五），约定本期债券应付全体债券持有人利息及本金于2014年11月9日、2014年11月29日两次兑付，债券展期期间票面利率不变。第一被申请人因债券延期造成的损失, 自愿向全体债权人支付一次性延期补偿500万元，并按照每日千分之二点五乘以当日剩余未偿还本金金额（截止2014年11月29日）的延期补偿。第二被申请人出具《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函》，承诺在第一被申请人未按期足额履行约定的付款义务的下一个工作日履行完毕担保责任（见证据六）。其后，第一被申请人发布《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告》（见证据七），并向兴业信托与外贸信托兑付了本期债券应付利息人民币3,481,100元及部分本金人民币20,300,000元。\r\n2014年12月1日，各方再次签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议》（见证据八），约定本期债券剩余1.05亿元本金、延期补偿以及相关利息的支付日期继续延期至2014年12月7日。利息计算方式包括：2014年11月9日(含)至2014年11月29日(不含)年票面利率为9.95%, 2014年11月29日(含)至2014年12月7日(不含)年票面利率为15%。另外特别约定：截至2014年12月7日（1）若第一被申请人不能足额支付前述款项, 但两被申请人在同时满足该协议第3条约定的全部条件时, 全体债券持有人同意本期债券相关款项的支付继续延期至2014年12月30日。（2）若第一被申请人不能足额支付前述款项, 且两被申请人未能同时满足该协议第3条约定的全部条件, 则本期债券自动宣告违约; 如本期债券宣告违约, 违约期间的年票面利率为20%。\r\n2014年12月31日，各方再次签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议》（见证据九），约定本期债券剩余1.05亿元本金、延期补偿以及相关利息的支付日期继续延期至2015年1月9日，并约定第一申请人、第二申请人未能按照该协议履行义务导致申请人宣告违约的，第一申请人、第二申请人承诺向包括申请人在内的债券持有人支付1,000万元作为违约赔偿金。\r\n三、增信情况\r\n鉴于第一被申请人延期履行债务，根据《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议》约定，两被申请人以土地抵押和股权质押，作为前述债权及其他全体债券持有人债权的担保，即（1）呼国用（2004）字第0840号国有土地使用权；（2）土左国用（土）字第0007993号国有土地使用权；（3）呼房权证呼新G字第247号房屋所有权；（4）第二被申请人持有的内蒙古天润化肥股份有限公司56.55%的股权。并就（1）、（4）两项办理了抵押、质押登记手续（见证据十）。\r\n此外，两被申请人以内蒙古奈伦房地产开发有限责任公司位于内蒙古呼和浩特赛罕区双树巷西侧院门牌号为“奈伦城市亮点”商业楼的8处房产折抵第三次延期协议约定的违约赔偿金1,000万元（见证据十一）。\r\n四、其他损失\r\n为主张相关权益，申请人已委托国浩律师（深圳）事务所（见证据十二）并需支付的律师费人民币166,289元（见证据十三）、差旅费用暂计人民币20,000元。\r\n','liruizhi0755','2015-02-10 06:22:27');
INSERT INTO `party_request` VALUES (45,'Y',NULL,'20150210-5','',NULL,140,NULL,'',NULL,NULL,'1、裁决第一被申请人立即向申请人支付债券本金人民币6,300,000元，支付债券本金利息，计至第一被申请人履行完毕全部支付义务之日（为便于确定仲裁费用金额，利息暂计至2015年1月19日，自2015年1月10日至被申请人实际付清之日止以年票面利率20%计算，债券本金利息暂计为人民币180,651.28元），以及延期补偿金额人民币555,236.25元，向申请人指定的第三方交付位于内蒙古呼和浩特赛罕区双树巷西侧院门牌号为“奈伦城市亮点”商业楼的8处房产或支付违约赔偿金600,000元；\r\n2、裁决由两被申请人共同赔偿申请人追偿债权而造成的损失，包括但不限于申请人为本案支付的律师费人民币71,267元、差旅费用暂计人民币20,000元；\r\n3、裁决申请人在上述第一、二项仲裁请求及仲裁费用等实现债权的费用范围内对两被申请人提供抵押的呼国用（2004）字第0840号国有土地使用权、质押的内蒙古天润化肥股份有限公司56.55%的股权折价或变卖、拍卖所得价款享有优先受偿权，不足清偿部分由第二被申请人承担连带责任保证担保；\r\n4、裁决由两被申请人共同承担本案全部仲裁费用。\r\n','第一被申请人2012年11月9日发行2012 年中小企业私募债券，申请人认购持有了人民币15,000,000元份额的本期债券。经数次调整期限及兑付方案，第一被申请人未依约支付债券本金、利息及延期补偿金额和违约赔偿金，第二被申请人未依约就第一被申请人债务承担连带责任保证担保，经协商不成，申请人提出本仲裁申请。\r\n一、债券发行及认购持有情况\r\n2012年11月9日，第一被申请人以非公开方式发行面值总额为人民币25,000万元的内蒙古奈伦农业科技股份有限公司2012中小企业私募债券。募集说明书（见证据一）载明，本期债券为2年期固定利率债券, 票面利率为9.95%, 每年付息一次, 到期一次还本, 最后一期利息随本金的兑付一起支付, 本金兑付日为2014年11月9日。第二被申请人为本期债券的还本付息出具了《担保函》（见证据二）, 同意在其承担保证责任的范围内为本次债券的还本付息提供全额无条件不可撤销的连带责任保证担保，其保证的范围包括：本期债券本金的100%、该部分本金对应的利息, 以及违约金、损害赔偿金、实现债权的费用。\r\n申请人从二级市场买入1,500万份额的本期债券，2014年11月6日，申请人取得《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券持有人的确认说明》（见证据三）。\r\n二、调整期限及兑付方案情况\r\n《募集说明书》载明的本金兑付日（2014年11月9日）前后，申请人与两被申请人三次调整期限及兑付方案，具体如下：\r\n2014年11月7日，申请人（含全体债券持有人）与两被申请人共同签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议》（见证据四），约定本期债券应付全体债券持有人利息及本金于2014年11月9日、2014年11月29日两次兑付，债券展期期间票面利率不变。第一被申请人因债券延期造成的损失, 自愿向全体债权人支付一次性延期补偿500万元，并按照每日千分之二点五乘以当日剩余未偿还本金金额（截止2014年11月29日）的延期补偿。第二被申请人出具《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函》，承诺在第一被申请人未按期足额履行约定的付款义务的下一个工作日履行完毕担保责任（见证据五）。其后，第一被申请人发布《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告》（见证据六），并向申请人兑付了本期债券应付利息人民币1,491,900元及部分本金人民币8,700,000元。\r\n2014年12月1日，各方再次签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议》（见证据七），约定本期债券剩余1.05亿元本金、延期补偿以及相关利息的支付日期继续延期至2014年12月7日。利息计算方式包括：2014年11月9日(含)至2014年11月29日(不含)年票面利率为9.95%, 2014年11月29日(含)至2014年12月7日(不含)年票面利率为15%。另外特别约定：截至2014年12月7日（1）若第一被申请人不能足额支付前述款项, 但两被申请人在同时满足该协议第3条约定的全部条件时, 全体债券持有人同意本期债券相关款项的支付继续延期至2014年12月30日。（2）若第一被申请人不能足额支付前述款项, 且两被申请人未能同时满足该协议第3条约定的全部条件, 则本期债券自动宣告违约; 如本期债券宣告违约, 违约期间的年票面利率为20%。\r\n2014年12月31日，各方再次签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议》（见证据八），约定本期债券剩余1.05亿元本金、延期补偿以及相关利息的支付日期继续延期至2015年1月9日，并约定第一申请人、第二申请人未能按照该协议履行义务导致申请人宣告违约的，第一申请人、第二申请人承诺向包括申请人在内的债券持有人支付1,000万元作为违约赔偿金。\r\n三、增信情况\r\n鉴于第一被申请人一再延期履行债务，两被申请人以土地抵押和股权质押，作为前述债权及其他全体债券持有人债权的担保，即（1）呼国用（2004）字第0840号国有土地使用权；（2）土左国用（土）字第0007993号国有土地使用权；（3）呼房权证呼新G字第247号房屋所有权，及（4）第二被申请人持有的内蒙古天润化肥股份有限公司56.55%的股权（见证据九）。\r\n此外，两被申请人以内蒙古奈伦房地产开发有限责任公司位于内蒙古呼和浩特赛罕区双树巷西侧院门牌号为“奈伦城市亮点”商业楼的8处房产折抵第三次延期协议约定的违约赔偿金1,000万元（见证据十）。\r\n四、其他损失\r\n为主张相关权益，申请人已委托国浩律师（深圳）事务所（见证据十一）并需支付的律师费人民币71,267元（见证据十二）、差旅费用暂计人民币20,000元。\r\n','liruizhi0755','2015-02-10 06:59:50');
INSERT INTO `party_request` VALUES (46,'Y',NULL,'20150210-6','',NULL,143,NULL,'',NULL,NULL,'1、裁决第一被申请人立即向申请人支付债券本金人民币8,400,000元，支付债券本金利息，计至第一被申请人履行完毕全部支付义务之日（为便于确定仲裁费用金额，利息暂计至2015年1月19日，债券本金利息暂计为人民币240,868.38元，其中自2015年1月10日至被申请人实际付清之日止以年票面利率20%计算利息），以及延期补偿金额人民币740,315.00元，向申请人指定的第三方交付位于内蒙古呼和浩特赛罕区双树巷西侧院门牌号为“奈伦城市亮点”商业楼的8处房产或支付违约赔偿金869,565.22元；\r\n2、裁决由两被申请人共同赔偿申请人追偿债权而造成的损失，包括但不限于申请人为本案支付的律师费人民币95,125元、差旅费用等费用暂计人民币20,000元；\r\n3、裁决申请人在本案仲裁请求及仲裁费用等实现债权的费用范围内对被申请人提供抵押的呼国用（2004）字第0840号国有土地使用权、质押的内蒙古天润化肥股份有限公司56.55%的股权折价或变卖、拍卖所得价款享有优先受偿权；\r\n4、裁决对本案仲裁请求及仲裁费用中应当由第一被申请人承担的债务，由第二被申请人承担连带清偿责任；\r\n5、裁决由两被申请人共同承担本案全部仲裁费用。','第一被申请人2012年11月9日发行2012 年中小企业私募债券，截止目前申请人尚持有本金余额为人民币840万元的本期债券。经数次调整期限及兑付方案，第一被申请人未依约支付债券本金、利息及延期补偿金额和违约赔偿金，未依约交付位于内蒙古呼和浩特赛罕区双树巷西侧院门牌号为“奈伦城市亮点”商业楼的8处房产，第二被申请人未依约就第一被申请人债务承担连带清偿责任，经协商不成，申请人提出本仲裁申请。\r\n一、债券发行及认购持有情况\r\n2012年11月9日，第一被申请人以非公开方式发行面值总额为人民币25,000万元的内蒙古奈伦农业科技股份有限公司2012中小企业私募债券。募集说明书（见证据一）载明，本期债券为2年期固定利率债券, 票面利率为9.95%, 每年付息一次, 到期一次还本, 最后一期利息随本金的兑付一起支付, 本金兑付日为2014年11月9日。第二被申请人为本期债券的还本付息出具了《担保函》（见证据二）, 同意在其承担保证责任的范围内为本次债券的还本付息提供全额无条件不可撤销的连带责任保证担保，其保证的范围包括：本期债券本金的100%、该部分本金对应的利息, 以及违约金、损害赔偿金、实现债权的费用。\r\n2012年11月9日，申请人付款认购持有了本金金额为20,000,000 元的本期债券（见证据三）。\r\n二、调整期限及兑付方案情况\r\n《募集说明书》载明的本金兑付日（2014年11月9日）前后，申请人与两被申请人三次调整期限及兑付方案，具体如下：\r\n2014年11月7日，申请人（含全体债券持有人）与两被申请人共同签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议》（见证据四），约定本期债券应付全体债券持有人利息及本金于2014年11月9日、2014年11月29日两次兑付，债券展期期间票面利率不变。第一被申请人因债券延期造成的损失, 自愿向全体债权人支付一次性延期补偿500万元，并按照每日千分之二点五乘以当日剩余未偿还本金金额（截止2014年11月29日）的延期补偿。第二被申请人出具《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函》，承诺在第一被申请人未按期足额履行约定的付款义务的下一个工作日履行完毕担保责任（见证据五）。其后，第一被申请人发布《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告》（见证据六），并向申请人兑付了本期债券应付利息人民币1,990,000元及部分本金人民币11,600,000元。\r\n2014年12月1日，各方再次签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议》（见证据七），约定本期债券剩余1.05亿元本金、延期补偿以及相关利息的支付日期继续延期至2014年12月7日。利息计算方式包括：2014年11月9日(含)至2014年11月29日(不含)年票面利率为9.95%, 2014年11月29日(含)至2014年12月7日(不含)年票面利率为15%。另外特别约定：截至2014年12月7日（1）若第一被申请人不能足额支付前述款项, 但第一被申请人和第二被申请人在同时满足该协议第3条约定的全部条件时, 全体债券持有人同意本期债券相关款项的支付继续延期至2014年12月30日。（2）若第一被申请人不能足额支付前述款项, 且两被申请人未能同时满足该协议第3条约定的全部条件, 则本期债券自动宣告违约; 如本期债券宣告违约, 违约期间的年票面利率为20%。\r\n2014年12月31日，各方再次签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议》（见证据八），约定本期债券剩余1.05亿元本金、延期补偿以及相关利息的支付日期继续延期至2015年1月9日，并约定第一被申请人、第二被申请人未能按照该协议履行义务导致申请人宣告违约的，第一被申请人、第二被申请人承诺向包括申请人在内的债券持有人支付1,000万元作为违约赔偿金。\r\n三、增信情况\r\n鉴于第一被申请人一再延期履行债务，根据《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议》约定，两被申请人以土地抵押和股权质押，作为前述债权及其他全体债券持有人债权的担保，即（1）呼国用（2004）字第0840号国有土地使用权；（2）土左国用（土）字第0007993号国有土地使用权；（3）呼房权证呼新G字第247号房屋所有权；（4）第二被申请人持有的内蒙古天润化肥股份有限公司56.55%的股权。并就（1）、（4）两项办理了抵押、质押登记手续（见证据九）。\r\n此外，两被申请人以内蒙古奈伦房地产开发有限责任公司位于内蒙古呼和浩特赛罕区双树巷西侧院门牌号为“奈伦城市亮点”商业楼的8处房产折抵第三次延期协议约定的违约赔偿金1,000万元（见证据十）。\r\n四、其他损失\r\n为主张相关权益，申请人已委托国浩律师（深圳）事务所（见证据十一）并需支付的律师费人民币95,125元、差旅费用等费用暂计人民币20,000元。 \r\n直至申请之日，两被申请人未按约定偿还债券本息、支付延期补偿金额及违约赔偿金或承担担保责任。为维护自身合法权益，申请人基于上述相关事实理由及法律法规，向贵会提出上述仲裁请求，请贵会裁决如所请。','liruizhi0755','2015-03-02 04:43:00');
INSERT INTO `party_request` VALUES (47,'Y',NULL,'20150214-1','',NULL,158,NULL,'',NULL,NULL,'1、裁决第一被申请人立即向申请人支付债券本金人民币46,200,000元，支付债券本金利息，计至第一被申请人履行完毕全部支付义务之日（为便于确定仲裁费用金额，利息暂计至2015年1月19日，债券本金利息暂计为人民币1,324,776.08元，其中自2015年1月10日至被申请人实际付清之日止以年票面利率20%计算利息），以及延期补偿金额人民币4,071,732.50元，向申请人指定的第三方交付位于内蒙古呼和浩特赛罕区双树巷西侧院门牌号为“奈伦城市亮点”商业楼的8处房产或支付违约赔偿金4,782,608.70元；\r\n2、裁决由两被申请人共同赔偿申请人追偿债权而造成的损失，包括但不限于申请人为本案支付的律师费人民币522,622元、差旅费用等费用暂计人民币20,000元；\r\n3、裁决申请人在本案仲裁请求及仲裁费用等实现债权的费用范围内对两被申请人提供抵押的呼国用（2004）字第0840号国有土地使用权、质押的内蒙古天润化肥股份有限公司56.55%的股权折价或变卖、拍卖所得价款享有优先受偿权；\r\n4、裁决对本案仲裁请求及仲裁费用中应当由第一被申请人承担的债务，由第二被申请人承担连带清偿责任；\r\n5、裁决由两被申请人共同承担本案全部仲裁费用。','第一被申请人2012年11月9日发行2012 年中小企业私募债券，截至目前申请人尚持有本金余额为人民币4,620万元的本期债券。经数次调整期限及兑付方案，第一被申请人未依约支付债券本金、利息及延期补偿金额和违约赔偿金，未依约交付位于内蒙古呼和浩特赛罕区双树巷西侧院门牌号为“奈伦城市亮点”商业楼的8处房产，第二被申请人未依约就第一被申请人债务承担连带清偿责任，经协商不成，申请人提出本仲裁申请。\r\n一、债券发行及认购持有情况\r\n2012年11月9日，第一被申请人以非公开方式发行面值总额为人民币25,000万元的内蒙古奈伦农业科技股份有限公司2012中小企业私募债券。募集说明书（见证据一）载明，本期债券为2年期固定利率债券, 票面利率为9.95%, 每年付息一次, 到期一次还本, 最后一期利息随本金的兑付一起支付, 本金兑付日为2014年11月9日。第二被申请人为本期债券的还本付息出具了《担保函》（见证据二）, 同意在其承担保证责任的范围内为本次债券的还本付息提供全额无条件不可撤销的连带责任保证担保，其保证的范围包括：本期债券本金的100%、该部分本金对应的利息, 以及违约金、损害赔偿金、实现债权的费用。\r\n2015年1月23日，申请人受让取得了4,620万元的本期债券（见证据三及证据四）、并取得了《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券持有人的确认说明》及第一被申请人的确认回函（见证据四）。\r\n二、调整期限及兑付方案情况\r\n《募集说明书》载明的本金兑付日（2014年11月9日）前后，申请人与两被申请人三次调整期限及兑付方案，具体如下：\r\n2014年11月7日，申请人（含全体债券持有人）与两被申请人共同签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议》（见证据五），约定本期债券应付全体债券持有人利息及本金于2014年11月9日、2014年11月29日两次兑付，债券展期期间票面利率不变。第一被申请人因债券延期造成的损失, 自愿向全体债权人支付一次性延期补偿500万元，并按照每日千分之二点五乘以当日剩余未偿还本金金额（截止2014年11月29日）的延期补偿。第二被申请人出具《内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券补充担保函》，承诺在第一被申请人未按期足额履行约定的付款义务的下一个工作日履行完毕担保责任（见证据六）。其后，第一被申请人发布《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的公告》（见证据七），并向申请人兑付了本期债券应付利息人民币10,945,000元及部分本金人民币63,800,000元。\r\n2014年12月1日，各方再次签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券再次调整期限及兑付方案的协议》（见证据八），约定本期债券剩余1.05亿元本金、延期补偿以及相关利息的支付日期继续延期至2014年12月7日。利息计算方式包括：2014年11月9日(含)至2014年11月29日(不含)年票面利率为9.95%, 2014年11月29日(含)至2014年12月7日(不含)年票面利率为15%。另外特别约定：截至2014年12月7日（1）若第一被申请人不能足额支付前述款项, 但两被申请人在同时满足该协议第3条约定的全部条件时, 全体债券持有人同意本期债券相关款项的支付继续延期至2014年12月30日。（2）若第一被申请人不能足额支付前述款项, 且两被申请人未能同时满足该协议第3条约定的全部条件, 则本期债券自动宣告违约; 如本期债券宣告违约, 违约期间的年票面利率为20%。\r\n2014年12月31日，各方再次签署《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券第三次调整期限及兑付方案的协议》（见证据九），约定本期债券剩余1.05亿元本金、延期补偿以及相关利息的支付日期继续延期至2015年1月9日，并约定第一被申请人、第二被申请人未能按照该协议履行义务导致申请人宣告违约的，第一被申请人、第二被申请人承诺向包括申请人在内的债券持有人支付1,000万元作为违约赔偿金。\r\n三、增信情况\r\n鉴于第一被申请人延期履行债务，根据《关于内蒙古奈伦农业科技股份有限公司2012年中小企业私募债券调整期限及兑付方案的协议》约定，两被申请人以土地抵押和股权质押，作为前述债权及其他全体债券持有人债权的担保，即（1）呼国用（2004）字第0840号国有土地使用权；（2）土左国用（土）字第0007993号国有土地使用权；（3）呼房权证呼新G字第247号房屋所有权；（4）第二被申请人持有的内蒙古天润化肥股份有限公司56.55%的股权。并就（1）、（4）两项办理了抵押、质押登记手续（见证据十）。\r\n此外，两被申请人以内蒙古奈伦房地产开发有限责任公司位于内蒙古呼和浩特赛罕区双树巷西侧院门牌号为“奈伦城市亮点”商业楼的8处房产折抵第三次延期协议约定的违约赔偿金1,000万元（见证据十一）。\r\n四、其他损失\r\n为主张相关权益，申请人已委托国浩律师（深圳）事务所（见证据十二）并需支付律师费人民币522,622元、差旅费用等费用暂计人民币20,000元。','liruizhi0755','2015-02-14 05:16:33');
INSERT INTO `party_request` VALUES (48,'Y',NULL,'20150215-1','',NULL,161,NULL,'',NULL,NULL,'1、请求依法裁决被申请人国盛针织按《企业资产收益权转让与回购协议》约定，向申请人支付企业资产收益权回购价款及违约金人民币493,616.59元（其中违约金暂计至2015年1月30日）；。  \r\n2、请求依法裁决被申请人二、三为上述支付义务承担连带清偿责任；\r\n3、请求依法裁决由被申请人承担本案仲裁的受理费、处理费、律师费（其中基础律师费人民币15,000元）及其他所有实现债权费用。\r\n','2014年6月10日，前海股权交易中心（深圳）有限公司（下称前海股权中心）与国盛针织签订了编号为TRB02-20140102的《企业资产收益权转让与回购协议》（证据1，下称“协议”）。该“协议”约定，国盛针织向前海股权中心转让其合法享有的标的资产收益权，转让价款为人民币1,000,000元，转让期限为2014年6月12日（含）至2014年9月12日（不含），到期回购价款为1,045,369.86元，回购年收益率为18%。\r\n “协议”第18.1条约定，前海股权中心向国盛针织发送通知，可采用当面、邮寄、电子邮件、手机短信等方式中任何一种或多种；以邮寄方式通知的，邮件达到国盛针织在本协议中指定的邮寄地址即视为送达等。\r\n同时，被申请人二钟强、被申请人三罗伟梅分别向前海股权交易中心出具《个人无限连带责任保证函》（证据2、证据3，简称“保证函”），愿以个人所有的财产为国盛针织在“协议”项下的资产收益权回购价款的支付义务承担无限连带责任担保。\r\n上述“协议”签订后，2014年6月12日前海股权中心通过银行转账汇款方式向国盛针织指定账户支付了人民币1,000,000元（证据4），已履行“协议”项下义务。到回购期后，经前海股权中心催收(证据5),国盛针织陆续支付了部分的回购价款及违约金。截至2014年12月29日，尚未支付回购价款及违约金共计479,890.41元（包括回购价款419,972.60元及截至2014年12月29日违约金59,917.81元）。\r\n2014年12月29日，前海股权中心与申请人梧桐投资签订编号为GSZZ02-20141229的《债权转让协议书》（证据6），前海股权中心将其持有对国盛针织的已到期但未支付的人民币479,890.41元债权及“协议”项下其它一切相关权利，转让给梧桐投资。并通过EMS邮寄方式将该债权转让协议通知到国盛针织及所有担保人（证据7）。至申请人提出仲裁申请之日，国盛针织未继续履行回购义务，担保人亦未履行担保责任。\r\n综上，国盛针织违反 “协议”约定，应当立即履行支付回购款及违约金义务；保证人钟强、罗伟梅应当为国盛针织的支付义务承担无限连带担保责任。申请人为维护自身合法权益，依据“协议”17.2条仲裁条款提出仲裁申请，恳请仲裁庭依法予以支持，公平公正予以裁决。\r\n\r\n','lkyatjtc','2015-02-15 02:01:38');
INSERT INTO `party_request` VALUES (49,'Y',NULL,'20150215-2','',NULL,165,NULL,'',NULL,NULL,'1、请求依法裁决被申请人盈邦能源按《企业资产收益权转让与回购协议》约定，向申请人支付企业资产收益权回购价款人民币1,013,315.07元（2014年11月28日起计至2014年12月25日）。  \r\n2、请求依法裁决被申请人盈邦能源按《企业资产收益权转让与回购协议》约定，向申请人支付约金至实际清偿之日（2014年12月26日起暂计至2015年1月30日共计人民币34,980.19元）；\r\n3、请求依法裁决被申请人二、三、四、五为上述支付义务承担连带清偿责任；\r\n4、请求依法裁决由被申请人承担本案仲裁的受理费、处理费、律师费（其中基础律师费人民币20,000元）及其他所有实现债权费用。\r\n','2014年11月21日，前海股权交易中心（深圳）有限公司（下称前海股权中心）与盈邦能源签订了编号为TRB05-20140216-X的《企业资产收益权转让与回购协议》（证据1，下称“协议”）。该“协议”约定，盈邦能源向前海股权中心转让其合法享有的标的资产收益权，转让价款为人民币1,000,000元，转让期限为2014年11月28日（含）至2015年1月30日（不含），到期回购价款为1,031,068.49元，回购年收益率为18%。\r\n该“协议”第6.4条约定，转让期间，如盈邦能源出现了停业、歇业、涉及经济纠纷、财务状况恶化等情况，前海股权中心有权要求其在指定的提前回购日提前回购标的资产收益权，并约定了提前回购的计算公式。“协议”第18.1条约定，前海股权中心向盈邦能源发送通知，可采用当面、邮寄、电子邮件、手机短信等方式中任何一种或多种；以邮寄方式通知的，邮件达到盈邦能源在本协议中指定的邮寄地址即视为送达等。\r\n同时，被申请人二谢镜开、被申请人三周惠敏、被申请人四周锦荣、被申请人五王银燕分别向前海股权交易中心出具《个人无限连带责任保证函》（证据2-5，简称“保证函”），愿以个人所有的财产为盈邦能源在“协议”项下的资产收益权回购价款的支付义务承担无限连带责任担保。\r\n上述“协议”签订后，2014年11月28日前海股权中心通过银行转账汇款方式向盈邦能源指定账户支付了人民币1,000,000元（证据6），已履行“协议”项下义务。2014年12月23日，前海股权中心发现盈邦能源出现非正常终止经营情况，公司已无人上班，法定代表人谢镜开失去联系。因此，前海股权中心依“协议”约定于2014年12月24日通过EMS邮寄方式向盈邦能源发送了《提前回购资产收益的通知》（证据7），要求其在2014年12月25日之前，完成提前回购资产收益权事宜。但盈邦能源一直未履行回购资产收益权的义务。\r\n2015年1月13日，前海股权中心与申请人梧桐投资签订编号为YBNY05-20150112的《债权转让协议书》（证据8），前海股权中心将其持有对盈邦能源的债权及“协议”项下其它一切相关权利转让给梧桐投资，并通过EMS邮寄方式将该债权转让事宜通知到盈邦能源及所有担保人（证据9）。至申请人提出仲裁申请，盈邦能源未履行回购义务，担保人亦未履行担保责任。\r\n综上，盈邦能源违反 “协议”约定，应当立即履行支付回购款及违约金义务；保证人谢镜开、周惠敏、周锦荣、王银燕应当为盈邦能源的支付义务承担无限连带担保责任。申请人为维护自身合法权益，依据“协议”17.2条仲裁条款提出仲裁申请，恳请仲裁庭依法予以支持，公平公正予以裁决。\r\n','lkyatjtc','2015-02-15 02:11:01');
INSERT INTO `party_request` VALUES (50,'Y',NULL,'20150301-1','',NULL,171,NULL,'',NULL,NULL,'一、确认登记在被申请人李剑波名下的上海吾游信息技术有限公司17.5%的股权为申请人顾千秋所有。\r\n二、被申请人李剑波、上海吾游信息技术有限公司协助申请人顾千秋至工商登记机关办理股权变更登记。\r\n三、被申请人李剑波、上海吾游信息技术有限公司承担违约金人民币150000元。','申请人顾千秋系被申请人上海吾游信息技术有限公司的创始股东之一，该公司的注册资本为571429元，2013年10月，申请人、被申请人李剑波、陈佩仪、于建平、王利杰、上海镭厉科技创业投资中心（有限合伙）、深圳市光启松禾超材料创业投资合伙企业、上海吾游信息技术有限公司等八方签订了关于上海吾游信息技术有限公司之增资扩股协议书（附件1），合同约定：上海吾游信息技术有限公司的实际股权结构为：李剑波占32.375%、陈佩仪占13.125%、于建平占7%、顾千秋占17.5%、王利杰占5.25%、上海镭厉科技创业投资中心（有限合伙）占12.5%、深圳市光启松和超材料创业投资合伙企业占12.25%，其中申请人顾千秋的股权暂由被申请人李剑波代持，合同同时约定，2014年12月31日前，若申请人顾千秋作为创始股东未出现离职、同业竞争等损害公司利益的情况，则被申请人李剑波应将代持的股权全部转让给顾千秋，解除双方之间的股权代持关系，并在工商行政管理机关进行股权变更登记。现约定股权代持关系的解除日期已届满，申请人多次要求被申请人进行股权变更登记，但都召到被申请人的拒绝，被申请人违反合同约定，理因承担合同约定的违约责任，合同约定违约金金额为500000元，申请人综合考虑酌情主张150000元。\r\n申请人认为公司创立之初，作为创始股东同意股权由他人代持是为了简化股权结构、便于商业运营及寻求投资，现经各方投资人的鼎力相助以及创始股东和公司全体员工共同努力，公司规模日益壮大，各种经营活动越发频繁，为了各方避免各种不确定的法律风险，应尽快进行股权变更登记，保持公司股权清晰。综上，申请人提起本次仲裁申请以维护自身的合法权益。','guqianqiu','2015-03-12 03:42:13');
INSERT INTO `party_request` VALUES (51,'Y',NULL,'20150304-1','',NULL,175,NULL,'',NULL,NULL,'1、裁决被申请人向申请人支付设备款69.8万元；\r\n2、裁决被申请人向申请人支付违约金69.8万元；\r\n3、裁决被申请人承担本案全部仲裁费用。','    申请人与被申请人于2013年12月30日签订了《设备供应合同书》（合同编号YY-C094B001C，以下称合同），约定由被申请人向申请人采购笔记本外壳喷涂线设备1套，合同总价698万元。合同签订后，申请人按照合同的约定交付了设备，双方亦签署《设备试机证明》，由被申请人确认申请人提供的设备验收合格，但被申请人一直拖欠申请人设备款，至今仍有69.8万元到期未付。\r\n    申请人认为，被申请人长期拖欠设备款的行为属于严重违约，也给申请人造成经济损失，依法，申请人有权要求被申请人履行合同约定的付款义务并承担违约责任。根据合同第十四条“合同的纠纷解决方式”约定“（争议）如果不能解决，提交中国国际经济贸易仲裁委员会华南分会仲裁解决”，为维护申请人的合法权益，特向贵会申请仲裁，望贵会裁如所请。\r\n','smiles','2015-03-04 07:59:45');
INSERT INTO `party_request` VALUES (52,'Y',NULL,'20150305-1','',NULL,177,NULL,'',NULL,NULL,'一、裁令被申请人深圳市中南酒店管理有限公司向申请人支付欠付的股权回购价款（投资本金及相应利息）。\r\n（股权回购价款中的利息计算方式：欠付的投资本金*16%*计息天数/365天；计息天数从2012年9月17日计算至付清之日止，暂计至2015年3月10日欠付的股权回购价款为人民币23260575.40元）。\r\n二、裁令被申请人深圳市中南酒店管理有限公司向申请人支付逾期付款违约金（以欠付的股权回购款为计算基数，按每日万分之八，从约定应付之日次日起计至实际付清之日止，暂计至2015年3月10日为人民币2283404.89元）\r\n三、裁令被申请人陈祝新对被申请人深圳市中南酒店管理有限公司以上第一、第二项支付义务承担连带责任。\r\n四、裁令两被申请人共同向申请人支付仲裁前财产保全费用人民币5000元及仲裁前财产保全担保费人民币100000元。\r\n五、裁令被两被申请人承担申请人的律师费用人民币400000元。\r\n六、裁令被两被申请人承担本案的仲裁费用。\r\n以上各项仲裁请求暂合计为人民币26048980.29元（未含仲裁费用）。','2014年4月18日，申请人与被申请人深圳市中南酒店管理有限公司、陈祝新签署《深圳中南海滨大酒店有限公司之实际控制人陈祝新、深圳市中南酒店管理有限公司与上海境泽股权投资基金合伙企业（有限合伙）关于深圳中南海滨大酒店有限公司之股权回购协议书》（以下简称“股权回购协议”），约定被申请人深圳市中南酒店管理有限公司向申请人回购申请人持有的深圳中南海滨大酒店有限公司7.6087%股权，回购对价为人民币3500万元及其相应利息（以下简称“股权回购价款”）。\r\n三方约定3500万元及相应利息分三期支付：\r\n1、第一笔共管账户内的500万元及其相应利息在协议生效之日起的5个工作日支付，即2014年4月25日前支付。\r\n2、第二笔1500万元及利息，在2014年9月16日前支付。\r\n3、第三笔1500万元及利息，在2014年12月31日前支付。\r\n该股权回购协议第1.2条约定了详细的利息计算方式，其中3000万元的利息按年息16%计算，从2012年9月17日计至实际付清之日。而且在股权回购协议第1.5条约定了违约责任，如被申请人迟延支付的，则每逾期一日按应付股权回购价款的万分之八支付违约金。被申请人陈祝新对被申请人深圳市中南酒店管理有限公司的支付义务承担连带责任。\r\n但被申请人深圳市中南酒店管理有限公司至今仅支付第一笔股权回购价款（投资本金及相应利息）共计563.78万元，和第二笔股权回购价款（投资本金及相应利息）及违约金合计1800万元，尚有第二笔股权回购价款（投资本金及相应利息）及其违约金，和第三笔股权回购价款（投资本金及相应利息）及其违约金未支付。\r\n为维护申请人的合法权益，根据双方达成的仲裁条款，特向贵委提出以上仲裁请求，请求贵委予以支持。','wxj2520068','2015-03-05 03:23:24');
INSERT INTO `party_request` VALUES (53,'Y',NULL,'20150309-1','',NULL,180,NULL,'',NULL,NULL,'商铺租约到期租客提无理要求拒不交还商铺。请求仲裁。','商铺租约于2015年2月14号到期，租客无理要求赔偿其商铺装修损失，并对业主威胁。租约并未约定对租户的装修损失进行赔偿。','tig_ho','2015-03-09 09:43:35');
INSERT INTO `party_request` VALUES (54,'Y',NULL,'20150311-1','',NULL,181,NULL,'',NULL,NULL,'请求依照申请人与被申请人达成的<和解协议>内容做出裁决 ','2014年12月27日,申请人与被申请人分别签订103份<深圳市房地产买卖合同(预售)>,约定被申请人购买申请人开发的京基滨河时代项目房产共计103套，双方已完成以上购房合同的备案手续.但被申请人支付首期款后，未能按照合同约定支付剩余购房款,且已表明无支付能力.申请人与被申请人已于2015年3月12日达成<和解协议>,约定双方签订的103份购房合同解除,并约定任何一方有权将和解协议提交华南国际经济贸易仲裁委员会依法做出裁决.  ','linxiajuan','2015-03-11 03:33:20');
INSERT INTO `party_request` VALUES (55,'Y',NULL,'20150318-1','',NULL,194,NULL,'',NULL,NULL,'1. 依法裁决被申请人赔偿申请人船舶滞期费人民币424,143.02元；\r\n2. 依法裁决被申请人赔偿申请人租船费用美元358,680元（人民币2,223,816元）及预期利润美元51,240元（人民币317,688元）\r\n3. 裁决被申请人承担申请人因本案仲裁而发生的律师费人民币297,204元及公证费港币7985元（人民币6388元）；\r\n4. 裁决被申请人承担本案仲裁费。\r\n','被申请人与申请人于2014年10月17日签订《购销合同》（合同号：YHGF-DX141017）（见附件一），被申请人向申请人购买二船煤炭，第一船到船期为2014年11月12日-18日，第二船待定。根据购销合同付款及条件条款约定：“双方合同签订后3个工作日内，买方（被申请人）应建立以卖方（申请人）为受益人的不可撤销100%信用证至卖方通知行”，被申请人应于2014年10月22日前向申请人开具信用证至申请人通知行。申请人于2014年10月22日发出信用证超期函至被申请人（见附件三），提醒被申请人申请人应收到信用证的截止时间。申请人又于10月24日再次发函（见附件三）告知被申请人申请人没有收到被申请人信用证，被申请人已经违约，由此可能产生的装港滞期费、发货方驳船滞期费及不能按时抵达卸货港交货相关费用（包括卸货港滞期费）及责任应由被申请人承担。被申请人对申请人的函件没有任何回应。\r\n事实上，被申请人于2014年10月27日才开具信用证（见附件四），供货商10月29日才收到被申请人的信用证，已经严重超过购销合同约定的时间，被申请人依据合同已经构成违约。申请人在与被申请人签订购销合同后，按照合同约定的发货期及被申请人能够依约于10月22日前开具信用证的前提下，与发货人约定转货期并开始租船。申请人于2014年10月16日发送船舶信息确认函（见附件二）给被申请人，被申请人于10月20日盖章确认，同时发货人接受该船舶并按船舶ETA10月26日开始备货。若被申请人能够依约开具信用证，申请人可于10月23日开出信用证给发货人，满足发货人必须在装货前确认信用证的要求。实际上，被申请人10月27日才开具信用证，正是由于被申请人信用证的迟延，发货人在船舶抵达前仍未收到信用证，发货人已将准备给MV BAOJI轮（货船名）的货物驳船调去装其他母船。MV BAOJI轮抵达装货港后临时调配了货物及驳船给MV BAOJI，实际开始装货的时间为10月29日，由此产生的装港滞期天数为3.529116天（见附件五），根据被申请人盖章确认的船舶信息确认函中约定的滞期费率为每天人民币50,000元，装港滞期费共计176,458.30元。被申请人迟延开具信用证直接导致上述损失，被申请人应承担赔偿责任。\r\n根据卸货港防城中电码头潮汐表（见附件六），若MV BAOJI轮能够按照原来计划（11月8日至12日）抵港时间抵达，至少有5天的时间满足吃水限制要求。但是由于被申请人开具信用证迟延，导致装货迟延，MV BAOJI轮于11月16日才抵达卸货港，泊位上有船舶且潮水水位已不够，11月23日船舶才靠泊卸货。由此产生的卸货港滞期天数为4.953694天，卸货港滞期费为247,684.72元，依据上述理由，被申请人仍应承担赔偿责任。\r\n申请人与被申请人于2014年11月3日签订《购销合同补充协议》（见附件八），协议约定第二船卸港交货期为2014年12月12日-18日；被申请人应于双方确认的交货期前二十五天向申请人指定的通知行开出信用证，否则被申请人则应承担由此产生的相关费用及责任。申请人于2014年11月13日向被申请人发出《船舶信息确认函》（见附件九），被申请人未盖章予以确认。2014年11月21日，申请人致函（见附件十）给被申请人，告知被申请人根据合同约定“卖方需在交货期前15日，提供承运船舶名称、船舶详细规格、船龄、预计装载量和抵达卸货港日期等信息予买方确认。买方应在1个工作日内确认船舶信息，否则视为接受船舶，该确认不得无理由拖延”，申请人在未收到被申请人书面拒绝船舶的情况下，视为被申请人接受船舶，申请人已租进船舶并继续履行合同，若被申请人迟迟不履行合同，申请人将保留向被申请人索赔的权利。申请人于2014年11月21日委托海盛海运有限公司与JUMBO MARINE LIMITED签订了租船协议（见附件十一）。被申请人最终没有按照上述补充协议约定开具信用证并继续履行合同，被申请人的行为已严重违约，给申请人造成租船费用损失美元358,680元，申请人已于2014年12月3日将租船费用支付给出租方JUMBO MARINE LIMITED公司（见附件十二）。申请人在与被申请人签订补充协议后，于2014年11月11日与供货商AGRITRADE RESOURCES ASIA PTE LTD公司签订买卖合同（见附件十三），为被申请人供货。由于被申请人拒绝履约的违约行为，申请人丧失了预期利润共计美元51,240元。\r\n根据双方签订《购销合同》约定：“一方由于另一方未能履约而提出索赔的要求，赔偿金额应涵盖直接损失以及丧失利润等间接损失，还包括非违约方为处理因本合同引发争议而支付的律师费、公证费、仲裁费等全部费用”，申请人请求被申请人因其违约行为而给申请人造成的损失：第一船的船舶滞期费人民币424,143.02元、第二船的租船费用美元358,680元（人民币2,223,816元）及预期利润美元51,240元（人民币317,688元）、律师费人民币297,204、公证费港币7985元（人民币6388元）及仲裁费，故申请人特向贵会提起仲裁，恳请贵会依法公正裁决，维护申请人的利益。\r\n','dexin','2015-03-18 10:45:55');
INSERT INTO `party_request` VALUES (56,'Y',NULL,'20150318-1','',NULL,194,NULL,'',NULL,NULL,'1. 依法裁决被申请人赔偿申请人船舶滞期费人民币424,143.02元；\r\n2. 依法裁决被申请人赔偿申请人租船费用美元358,680元（人民币2,223,816元）及预期利润美元51,240元（人民币317,688元）\r\n3. 裁决被申请人承担申请人因本案仲裁而发生的律师费人民币297,204元及公证费港币7985元（人民币6388元）；\r\n4. 裁决被申请人承担本案仲裁费。\r\n','被申请人与申请人于2014年10月17日签订《购销合同》（合同号：YHGF-DX141017）（见附件一），被申请人向申请人购买二船煤炭，第一船到船期为2014年11月12日-18日，第二船待定。根据购销合同付款及条件条款约定：“双方合同签订后3个工作日内，买方（被申请人）应建立以卖方（申请人）为受益人的不可撤销100%信用证至卖方通知行”，被申请人应于2014年10月22日前向申请人开具信用证至申请人通知行。申请人于2014年10月22日发出信用证超期函至被申请人（见附件三），提醒被申请人申请人应收到信用证的截止时间。申请人又于10月24日再次发函（见附件三）告知被申请人申请人没有收到被申请人信用证，被申请人已经违约，由此可能产生的装港滞期费、发货方驳船滞期费及不能按时抵达卸货港交货相关费用（包括卸货港滞期费）及责任应由被申请人承担。被申请人对申请人的函件没有任何回应。\r\n事实上，被申请人于2014年10月27日才开具信用证（见附件四），供货商10月29日才收到被申请人的信用证，已经严重超过购销合同约定的时间，被申请人依据合同已经构成违约。申请人在与被申请人签订购销合同后，按照合同约定的发货期及被申请人能够依约于10月22日前开具信用证的前提下，与发货人约定转货期并开始租船。申请人于2014年10月16日发送船舶信息确认函（见附件二）给被申请人，被申请人于10月20日盖章确认，同时发货人接受该船舶并按船舶ETA10月26日开始备货。若被申请人能够依约开具信用证，申请人可于10月23日开出信用证给发货人，满足发货人必须在装货前确认信用证的要求。实际上，被申请人10月27日才开具信用证，正是由于被申请人信用证的迟延，发货人在船舶抵达前仍未收到信用证，发货人已将准备给MV BAOJI轮（货船名）的货物驳船调去装其他母船。MV BAOJI轮抵达装货港后临时调配了货物及驳船给MV BAOJI，实际开始装货的时间为10月29日，由此产生的装港滞期天数为3.529116天（见附件五），根据被申请人盖章确认的船舶信息确认函中约定的滞期费率为每天人民币50,000元，装港滞期费共计176,458.30元。被申请人迟延开具信用证直接导致上述损失，被申请人应承担赔偿责任。\r\n根据卸货港防城中电码头潮汐表（见附件六），若MV BAOJI轮能够按照原来计划（11月8日至12日）抵港时间抵达，至少有5天的时间满足吃水限制要求。但是由于被申请人开具信用证迟延，导致装货迟延，MV BAOJI轮于11月16日才抵达卸货港，泊位上有船舶且潮水水位已不够，11月23日船舶才靠泊卸货。由此产生的卸货港滞期天数为4.953694天，卸货港滞期费为247,684.72元，依据上述理由，被申请人仍应承担赔偿责任。\r\n申请人与被申请人于2014年11月3日签订《购销合同补充协议》（见附件八），协议约定第二船卸港交货期为2014年12月12日-18日；被申请人应于双方确认的交货期前二十五天向申请人指定的通知行开出信用证，否则被申请人则应承担由此产生的相关费用及责任。申请人于2014年11月13日向被申请人发出《船舶信息确认函》（见附件九），被申请人未盖章予以确认。2014年11月21日，申请人致函（见附件十）给被申请人，告知被申请人根据合同约定“卖方需在交货期前15日，提供承运船舶名称、船舶详细规格、船龄、预计装载量和抵达卸货港日期等信息予买方确认。买方应在1个工作日内确认船舶信息，否则视为接受船舶，该确认不得无理由拖延”，申请人在未收到被申请人书面拒绝船舶的情况下，视为被申请人接受船舶，申请人已租进船舶并继续履行合同，若被申请人迟迟不履行合同，申请人将保留向被申请人索赔的权利。申请人于2014年11月21日委托海盛海运有限公司与JUMBO MARINE LIMITED签订了租船协议（见附件十一）。被申请人最终没有按照上述补充协议约定开具信用证并继续履行合同，被申请人的行为已严重违约，给申请人造成租船费用损失美元358,680元，申请人已于2014年12月3日将租船费用支付给出租方JUMBO MARINE LIMITED公司（见附件十二）。申请人在与被申请人签订补充协议后，于2014年11月11日与供货商AGRITRADE RESOURCES ASIA PTE LTD公司签订买卖合同（见附件十三），为被申请人供货。由于被申请人拒绝履约的违约行为，申请人丧失了预期利润共计美元51,240元。\r\n根据双方签订《购销合同》约定：“一方由于另一方未能履约而提出索赔的要求，赔偿金额应涵盖直接损失以及丧失利润等间接损失，还包括非违约方为处理因本合同引发争议而支付的律师费、公证费、仲裁费等全部费用”，申请人请求被申请人因其违约行为而给申请人造成的损失：第一船的船舶滞期费人民币424,143.02元、第二船的租船费用美元358,680元（人民币2,223,816元）及预期利润美元51,240元（人民币317,688元）、律师费人民币297,204、公证费港币7985元（人民币6388元）及仲裁费，故申请人特向贵会提起仲裁，恳请贵会依法公正裁决，维护申请人的利益。\r\n','dexin','2015-03-18 10:46:17');
INSERT INTO `party_request` VALUES (57,'Y',NULL,'20150318-1','',NULL,194,NULL,'',NULL,NULL,'1. 依法裁决被申请人赔偿申请人船舶滞期费人民币424,143.02元；\r\n2. 依法裁决被申请人赔偿申请人租船费用美元358,680元（人民币2,223,816元）及预期利润美元51,240元（人民币317,688元）\r\n3. 裁决被申请人承担申请人因本案仲裁而发生的律师费人民币297,204元及公证费港币7985元（人民币6388元）；\r\n4. 裁决被申请人承担本案仲裁费。\r\n','被申请人与申请人于2014年10月17日签订《购销合同》（合同号：YHGF-DX141017）（见附件一），被申请人向申请人购买二船煤炭，第一船到船期为2014年11月12日-18日，第二船待定。根据购销合同付款及条件条款约定：“双方合同签订后3个工作日内，买方（被申请人）应建立以卖方（申请人）为受益人的不可撤销100%信用证至卖方通知行”，被申请人应于2014年10月22日前向申请人开具信用证至申请人通知行。申请人于2014年10月22日发出信用证超期函至被申请人（见附件三），提醒被申请人申请人应收到信用证的截止时间。申请人又于10月24日再次发函（见附件三）告知被申请人申请人没有收到被申请人信用证，被申请人已经违约，由此可能产生的装港滞期费、发货方驳船滞期费及不能按时抵达卸货港交货相关费用（包括卸货港滞期费）及责任应由被申请人承担。被申请人对申请人的函件没有任何回应。\r\n事实上，被申请人于2014年10月27日才开具信用证（见附件四），供货商10月29日才收到被申请人的信用证，已经严重超过购销合同约定的时间，被申请人依据合同已经构成违约。申请人在与被申请人签订购销合同后，按照合同约定的发货期及被申请人能够依约于10月22日前开具信用证的前提下，与发货人约定转货期并开始租船。申请人于2014年10月16日发送船舶信息确认函（见附件二）给被申请人，被申请人于10月20日盖章确认，同时发货人接受该船舶并按船舶ETA10月26日开始备货。若被申请人能够依约开具信用证，申请人可于10月23日开出信用证给发货人，满足发货人必须在装货前确认信用证的要求。实际上，被申请人10月27日才开具信用证，正是由于被申请人信用证的迟延，发货人在船舶抵达前仍未收到信用证，发货人已将准备给MV BAOJI轮（货船名）的货物驳船调去装其他母船。MV BAOJI轮抵达装货港后临时调配了货物及驳船给MV BAOJI，实际开始装货的时间为10月29日，由此产生的装港滞期天数为3.529116天（见附件五），根据被申请人盖章确认的船舶信息确认函中约定的滞期费率为每天人民币50,000元，装港滞期费共计176,458.30元。被申请人迟延开具信用证直接导致上述损失，被申请人应承担赔偿责任。\r\n根据卸货港防城中电码头潮汐表（见附件六），若MV BAOJI轮能够按照原来计划（11月8日至12日）抵港时间抵达，至少有5天的时间满足吃水限制要求。但是由于被申请人开具信用证迟延，导致装货迟延，MV BAOJI轮于11月16日才抵达卸货港，泊位上有船舶且潮水水位已不够，11月23日船舶才靠泊卸货。由此产生的卸货港滞期天数为4.953694天，卸货港滞期费为247,684.72元，依据上述理由，被申请人仍应承担赔偿责任。\r\n申请人与被申请人于2014年11月3日签订《购销合同补充协议》（见附件八），协议约定第二船卸港交货期为2014年12月12日-18日；被申请人应于双方确认的交货期前二十五天向申请人指定的通知行开出信用证，否则被申请人则应承担由此产生的相关费用及责任。申请人于2014年11月13日向被申请人发出《船舶信息确认函》（见附件九），被申请人未盖章予以确认。2014年11月21日，申请人致函（见附件十）给被申请人，告知被申请人根据合同约定“卖方需在交货期前15日，提供承运船舶名称、船舶详细规格、船龄、预计装载量和抵达卸货港日期等信息予买方确认。买方应在1个工作日内确认船舶信息，否则视为接受船舶，该确认不得无理由拖延”，申请人在未收到被申请人书面拒绝船舶的情况下，视为被申请人接受船舶，申请人已租进船舶并继续履行合同，若被申请人迟迟不履行合同，申请人将保留向被申请人索赔的权利。申请人于2014年11月21日委托海盛海运有限公司与JUMBO MARINE LIMITED签订了租船协议（见附件十一）。被申请人最终没有按照上述补充协议约定开具信用证并继续履行合同，被申请人的行为已严重违约，给申请人造成租船费用损失美元358,680元，申请人已于2014年12月3日将租船费用支付给出租方JUMBO MARINE LIMITED公司（见附件十二）。申请人在与被申请人签订补充协议后，于2014年11月11日与供货商AGRITRADE RESOURCES ASIA PTE LTD公司签订买卖合同（见附件十三），为被申请人供货。由于被申请人拒绝履约的违约行为，申请人丧失了预期利润共计美元51,240元。\r\n根据双方签订《购销合同》约定：“一方由于另一方未能履约而提出索赔的要求，赔偿金额应涵盖直接损失以及丧失利润等间接损失，还包括非违约方为处理因本合同引发争议而支付的律师费、公证费、仲裁费等全部费用”，申请人请求被申请人因其违约行为而给申请人造成的损失：第一船的船舶滞期费人民币424,143.02元、第二船的租船费用美元358,680元（人民币2,223,816元）及预期利润美元51,240元（人民币317,688元）、律师费人民币297,204、公证费港币7985元（人民币6388元）及仲裁费，故申请人特向贵会提起仲裁，恳请贵会依法公正裁决，维护申请人的利益。\r\n','dexin','2015-03-18 10:46:20');
INSERT INTO `party_request` VALUES (58,'Y',NULL,'20150318-2','',NULL,196,NULL,'',NULL,NULL,'1、请求裁决被申请人一偿还已投入的建设项目投资款36，190，402.19元；2、请求裁决被申请人一向申请人支付项目投资款在建设期内的资金成本及项目回报人民币5，098，603.47元（自2011年9月29日起，计算至2013年9月28日 ）；\r\n3、请求裁决被申请人一向申请人支付宽限期补偿款人民币10，726，883.67元（自2013年9月29日起，计算至2014年9月28日 ）；\r\n4、第一至第三项请求金额合计52，015，889.33元，请求裁决被申请人一以该金额为基数，按日万分之五的标准向申请人支付违约金人民币3，979，215.53元（自2014年9月29日起，暂计至2015年2月28日 ，其后按上述标准计算至全部清偿之日起）；\r\n5、请求裁决被申请人一承担申请人因本案支出的律师费人民币200,000.00元；\r\n6、请求裁决被申请人三、四合计持有被申请人一公司100%的股权拍卖、变卖，并以所得价款优先受偿；\r\n7、请求裁决被申请人二、被申请人三、被申请人四对被申请人一的全部金钱偿付义务承担保证责任；\r\n8、请求裁决由被申请人承担本案的仲裁费、财产保全费等全部仲裁费用。\r\n\r\n','2011年7月8日，申请人与被申请人一签订了一份《数字社区之“金福佳苑”项目合作建设合同》（以下简称“《合作开发建设合同》”）。\r\n《合作开发建设合同》主要约定：1、申请人与被申请人一合作开发建设“贵阳金福佳苑项目”（以下简称“本项目”），被申请人一依法取得项目土地的土地使用权，申请人负责筹措本项目的建设资金，建设期从申请人筹集的第一笔建设资金汇入项目资金专用银行账户之日起算届满两年之日止；2、项目建设期为两年。建设期内，由被申请人一根据资金投入情况，根据银行同期贷款利率按月支付资金成本，并按每年15%的标准，按季度支付项目回报。建设期届满，被申请人一应当一次性偿付申请人的全部建设资金，结清应付的资金成本、项目回报；3、如被申请人一在建设期届满时未能全部偿付债务，申请人同意给予一年的宽限期。宽限期内，被申请人一应当按约定支付宽限期补偿款；4、如被申请人一未按合同约定向申请人支付款项的，则每逾期一日应向申请人支付应付未付部分万分之五的违约金。\r\n被申请人二系被申请人一的实际控制人，被申请人三、被申请人四系被申请人一的股东。2011年7月8日，被申请人二、被申请人三和被申请人四分别向申请人出具了《保证函》，承诺对被申请人一在《合作开发建设合同》项下的债务、责任等承担无限连带保证责任。2011年7月14日，被申请人三、被申请人四与申请人签订了《股权质押合同》，将所持被申请人一的股权质押给申请人，作为被申请人一履行《合作开发建设合同》的担保。\r\n《合作开发建设合同》签署后，申请人充分履行了合同约定的义务，分阶段投入项目建设资金合计人民币36,190,402.19元（具体的支付时间、金额，参见附表《安防智能（中国）有限公司贵阳项目应收账款统计表》） 。\r\n根据《合作开发建设合同》约定的计算标准，截止2015年2月28日，被申请人一累计应向申请人支付资金成本人民币3，864，973.21元、项目回报人民币8，717，984.68元，合计为人民币12,582,957.89元。被申请人一仅支付资金成本、项目回报合计为人民币7,484,354.42元，拖欠申请人投资款人民币36,190,402.19元，资金成本及项目回报合计人民币5，098，603.47元，宽限期补偿款10，726，883.67元，违约金3，979，215.53元，以上合计为人民币55，995，104.86元。（具体的计算方式，参见附表《安防智能（中国）有限公司贵阳项目应收账款统计表》） 。\r\n综合以上事实，申请人认为，被申请人一违反了《合作开发建设合同》第8.3条、第8.4条及相关合同条款的约定。申请人依约有权要求被申请人一按《合作开发建设合同》约定承担相应的违约责任。被申请人二、被申请人三、被申请人四依据《保证函》、被申请人三、被申请人四依据《股权质押合同》所作出的承诺，应就被申请人一在《合作开发建设合同》项下的合同义务承担连带保证及质押担保责任。\r\n','黄霁','2015-03-18 05:35:21');
INSERT INTO `party_request` VALUES (59,'Y',NULL,'20150319-2','',NULL,204,NULL,'',NULL,NULL,'1、裁决被申请人向申请人给付拖欠的货款人民币188,700.00元及按中国人民银行同期贷款利率支付欠款至还清之日止；\r\n2、裁决被申请人承担本案仲裁费用。','双方签订的《销售总合同》及6份《销售合同》合法有效，申请人严格按照合同约定履行了供货义务，但被申请人并未如约支付货款，由此向贵委员会申请仲裁。','shengyikeji','2015-03-19 02:29:18');
INSERT INTO `party_request` VALUES (60,'N',NULL,'20150319-5','',NULL,206,NULL,'',NULL,NULL,'7','7','help','2015-03-19 04:09:20');
INSERT INTO `party_request` VALUES (61,'Y',NULL,'20150409-1','',NULL,210,NULL,'',NULL,NULL,'请求按照申请人与被申请人于2015年4月2日签订的《和解协议》作出裁决，该《和解协议》约定双方签订的以上《预售合同》在和解协议生效之日起解除；以上《预售合同》解除后，被申请人须配合申请人完成该房屋的银行赎楼、解除抵押登记及解除以上《预售合同》备案登记等所需的全部手续，该配合义务包括但不限于提供相关资料，签字并加盖公章等。','2014年2月28日，被申请人与申请人分别签订了2份《深圳市房地产买卖合同（预售）》（以下简称“《预售合同》”），约定被申请人分别购买申请人开发的京基滨河时代广场（南区）项目D3栋D3单元16层16A、D3栋D3单元16层16B两套商品房（以下简称“该房屋”），双方已完成以上《预售合同》的登记备案手续（登记备案编号为：深（福）网预买字（2014）第594号、深（福）网预买字（2014）第587号）。\r\n现申请人与被申请人协商一致解除以上《预售合同》，并于2015年4月2日签订了《和解协议》,并约定任何一方有权将和解协议提交华南国际经济贸易仲裁委员会依法做出裁决. ','linxiajuan','2015-04-09 11:58:34');
INSERT INTO `party_request` VALUES (62,'Y',NULL,'20150416-1','',NULL,213,NULL,'',NULL,NULL,'请求按照双方于2015年4月7日签订了《和解协议》作出裁决。','2014年10月22日，被申请人与申请人签订了《深圳市房地产买卖合同（预售）》（以下简称“预售合同”），约定被申请人购买申请人开发的京基云景梧桐花园项目6栋2单元1D房产，双方已于2014年10月22日完成预售合同的备案手续[备案编号为：深（罗）网预买字（2014）第2722号]。现申请人与被申请人协商一致解除该预售合同，并于2015年4月7日签订了《和解协议》（见附件），约定双方的预售合同于和解协议生效后解除，被申请人在和解协议生效后配合申请人完成上述房屋的银行赎楼、解除抵押登记及解除《预售合同》备案登记等所需的全部手续，该配合义务包括但不限于签署并提供相关资料等。现申请人根据《中华人民共和国仲裁法》的有关规定，特向贵仲裁委员会申请仲裁，请求贵仲裁委员会依法做出裁决。','linxiajuan','2015-04-16 01:53:57');
INSERT INTO `party_request` VALUES (63,'Y',NULL,'20150505-1','',NULL,217,NULL,'',NULL,NULL,'1','11','oopp0','2015-05-05 07:44:15');
INSERT INTO `party_request` VALUES (64,'Y',NULL,'20150506-1','',NULL,219,NULL,'',NULL,NULL,'1、请求裁决被申请人一立即向申请人偿还借款本金人民币1000000元、利息人民币100000元及逾期利息（利息按照合同约定的年利率20%计算，逾期利息按合同约定的每日0.5%计算，计至欠款还清之日止）；\r\n\r\n2、请求裁决被申请人二、被申请人三、被申请人四、被申请人五、被申请人六对上述债务承担连带清偿责任；\r\n\r\n3、请求裁决上述六位被申请人承担申请人为主张本次债权所支付的律师费人民币62400元、差旅费、担保费及将来在仲裁中可能发生的其他维权费用；\r\n\r\n4、请求裁决上述六位被申请人承担本案全部仲裁费用。\r\n\r\n','2014年9月30日，申请人与被申请人一、二、三签订了《贵州金冠幕墙项目合作协议》，实际为借款合同性质。合同约定：被申请人一通过被申请人二提供的“融资城”平台（网址：www.352.com）就“幕墙销售安装（顺德盈信城市广场）1期1组”项目向申请人借款人民币1000000元，借款年利率（即合同约定的年化资金效益率）为20%；借款期限为180天，自2014年9月30日始至2015年3月29日止；合同期限届满或者项目终止后3个工作日内进行全面结算；被申请人三为权益收购方（即实为借款合同的担保人），承诺在合同到期后，如果被申请人一未履行还款（即合同中的结算和项目权益收购）义务，则由被申请人三向申请人偿还借款本金及利息。另外，作为借款合同的从合同，被申请人一与被申请人二签订的《项目管理监管协议》及《补充监管协议》约定：被申请人二应对被申请人一借款资金使用情况、项目收益情况、履约保证金、结算保证金等进行监管；被申请人一应按照项目借款金额的10%-20%交纳履约保证金，按项目借款金额的5%每90天交纳结算保证金，上述保证金均存入被申请人二指定的监管通账户；履约保证金为被申请人一履行借款合同义务的担保，若被申请人一不按时履行权益分配即偿还本息的义务，则被申请人二应先代扣保证金来履行被申请人一的偿还义务；被申请人一迟延履行约定义务的，需向相关权益方缴纳每日0.5%的违约金。此外，被申请人四、被申请人五出具了两份《保证书》，愿意以保证人的身份为被申请人一签署的借款合同项下的借款本金、利息、实现债权的费用、违约金等相关费用提供无限连带责任保证，保证期间为自主债务履行期届满之日起两年。\r\n\r\n借款合同签订后，申请人按照合同的约定按时足额地借给被申请人一人民币1000000元，被申请人一也于2014年9月30日向申请人出具了《融资凭证》，证明收到申请人的借款，并承诺按时履行结算及还款义务。2015年3月29日，借款期限届满。按照借款合同的约定，被申请人一、二、三应当在期限届满后三个工作日内与申请人进行全面结算，并向申请人偿还借款本金人民币1000000元、利息人民币100000元（按照合同约定的年利率20%计算）。但截至申请人申请仲裁之日止，被申请人一、二、三并未与申请人进行任何结算，被申请人一也没有按照协议的约定向申请人偿还借款本金人民币1000000元及利息人民币100000元；被申请人三作为担保方，在借款期限到期后，在被申请人一没有偿还申请人借款本息的情况下，也没有按照合同的约定履行向申请人项目权益收购即偿还本息的义务；被申请人二作为监管服务方及履约保证金收取方，既没有尽到对资金监管的义务，又没有按照《项目管理监管协议》的约定在被申请人一不按时履行权益分配即偿还本息义务时，用其代扣的保证金履行分配义务，导致申请人出借的本金及利息无法收回。\r\n\r\n因此，申请人认为，借款合同（即项目合作协议）、《项目管理监管协议》、《补充监管协议》及《保证书》均为申请人与被申请人的真实意思表示，合法有效，双方均应严格履行。借款合同到期后，在被申请人一违约导致申请人权益受损的情况下，被申请人一应承担违约责任偿还借款本金、利息及逾期利息；保证人被申请人三、被申请人四、被申请人五、被申请人六应当承担连带清偿责任；作为具有监管义务且收取了履约保证金、结算保证金的被申请人二，因未履行监管义务也未用其代扣的保证金履行分配义务，应对本案债务承担连带责任。\r\n\r\n','林婷兰','2015-05-06 11:18:17');
INSERT INTO `party_request` VALUES (65,'Y',NULL,'20150513-1','',NULL,228,NULL,'',NULL,NULL,' 1、请求裁决被申请人一立即向申请人偿还借款本金人民币165000元、利息人民币16500元及逾期利息（利息按照合同约定的年利率20%计算，逾期利息按合同约定的每日0.5%计算，计至欠款还清之日止）；\r\n2、请求裁决被申请人二、被申请人三、被申请人四、被申请人五、被申请人六对上述债务承担连带清偿责任；\r\n3、请求裁决上述六位被申请人承担申请人为主张本次债权所支付的律师费人民币18300元、差旅费、担保费及将来在仲裁中可能发生的其他维权费用；\r\n4、请求裁决上述六位被申请人承担本案全部仲裁费用。','2014年9月19日，申请人与被申请人一、二、三签订了《贵州金冠幕墙项目合作协议》，实际为借款合同性质。合同约定：被申请人一通过被申请人二提供的“融资城”平台（网址：www.352.com）就“武警829外场工程4期3组”项目向申请人借款人民币165000元，借款年利率（即合同约定的年化资金效益率）为20%；借款期限为180天，自2014年9月19日始至2015年3月18日止；合同期限届满或者项目终止后3个工作日内进行全面结算；被申请人三为权益收购方（即实为借款合同的担保人），承诺在合同到期后，如果被申请人一未履行还款（即合同中的结算和项目权益收购）义务，则由被申请人三向申请人偿还借款本金及利息。另外，作为借款合同的从合同，被申请人一与被申请人二签订的《项目管理监管协议》约定：被申请人二应对被申请人一借款资金使用情况、项目收益情况、履约保证金、结算保证金等进行监管；被申请人一应按照项目借款金额的10%-20%交纳履约保证金，按项目借款金额的5%每90天交纳结算保证金，上述保证金均存入被申请人二指定的监管通账户；履约保证金为被申请人一履行借款合同义务的担保，若被申请人一不按时履行权益分配即偿还本息的义务，则被申请人二应先代扣保证金来履行被申请人一的偿还义务；被申请人一迟延履行约定义务的，需向相关权益方缴纳每日0.5%的违约金。此外，被申请人四、被申请人五、被申请人六出具了两份《保证书》，愿意以保证人的身份为被申请人一签署的借款合同项下的借款本金、利息、实现债权的费用、违约金等相关费用提供无限连带责任保证，保证期间为自主债务履行期届满之日起两年。\r\n借款合同签订后，申请人按照合同的约定按时足额地借给被申请人一人民币165000元，被申请人一也于2014年9月19日向申请人出具了《融资凭证》，证明收到申请人的借款，并承诺按时履行结算及还款义务。2015年3月18日，借款期限届满。按照借款合同的约定，被申请人一、二、三应当在期限届满后三个工作日内与申请人进行全面结算，并向申请人偿还借款本金人民币165000元、利息人民币16500元（按照合同约定的年利率20%计算）。但截至申请人申请仲裁之日止，被申请人一、二、三并未与申请人进行任何结算，被申请人一也没有按照协议的约定向申请人偿还借款本金人民币165000元及利息人民币16500元；被申请人三作为担保方，在借款期限到期后，在被申请人一没有偿还申请人借款本息的情况下，也没有按照合同的约定履行向申请人收购项目权益即偿还本息的义务；被申请人二作为监管服务方及履约保证金收取方，既没有尽到对资金监管义务，又没有按照《项目管理监管协议》的约定在被申请人一不按时履行权益分配即偿还本息义务时，用其代扣的保证金履行分配义务。\r\n因此，申请人认为，借款合同（即项目合作协议）、《项目管理监管协议》、及《保证书》均为申请人与被申请人的真实意思表示，合法有效，双方均应严格履行。借款合同到期后，在被申请人一违约导致申请人权益受损的情况下，被申请人一应承担违约责任偿还借款本金、利息及逾期利息；保证人被申请人三、被申请人四、被申请人五、被申请人六应当承担连带清偿责任；作为具有监管义务且收取了履约保证金、结算保证金的被申请人二，因未履行监管义务也未用其代扣的保证金履行分配义务，也应对本案债务承担连带责任。','林婷兰','2015-05-13 10:27:35');
INSERT INTO `party_request` VALUES (66,'Y',NULL,'20150513-2','',NULL,235,NULL,'',NULL,NULL,'1、请求裁决被申请人一立即向申请人偿还借款本金人民币400000元、利息人民币40000元及逾期利息（利息按照合同约定的年利率20%计算，逾期利息按合同约定的每日0.5%计算，计至欠款还清之日止）；\r\n2、请求裁决被申请人二、被申请人三、被申请人四、被申请人五、被申请人六、被申请人七对上述债务承担连带清偿责任；\r\n3、请求裁决上述七位被申请人承担申请人为主张本次债权所支付的律师费人民币34800元、差旅费、担保费及将来在仲裁中可能发生的其他维权费用；\r\n4、请求裁决上述七位被申请人承担本案全部仲裁费用。','2014年10月10日，申请人与被申请人一、二、三签订了《正兴基础建筑项目合作协议》（14A09E09），实际为借款合同性质。合同约定：被申请人一通过被申请人二提供的“融资城”平台（网址：www.352.com）就“地桩基础工程8期”项目向申请人借款人民币400000元，借款年利率（即合同约定的年化资金效益率）为20%；借款期限为180天，自2014年10月10日始至2015年4月8日止；合同期限届满或者项目终止后3个工作日内进行全面结算；被申请人三为权益收购方（即实为借款合同的担保人），承诺在合同到期后，如果被申请人一未履行还款（即合同中的结算和项目权益收购）义务，则由被申请人三向申请人偿还借款本金及利息。另外，作为借款合同的从合同，被申请人一与被申请人二签订的《项目管理监管协议》及《补充监管协议》约定：被申请人二应对被申请人一借款资金使用情况、项目收益情况、履约保证金、结算保证金等进行监管；被申请人一应按照项目借款金额的10%-20%交纳履约保证金，按项目借款金额的5%每90天交纳结算保证金，上述保证金均存入被申请人二指定的监管通账户；履约保证金为被申请人一履行借款合同义务的担保，若被申请人一不按时履行权益分配即偿还本息的义务，则被申请人二应先代扣保证金来履行被申请人一的偿还义务；被申请人一迟延履行约定义务的，需向相关权益方缴纳每日0.5%的违约金。此外，被申请人四、被申请人五、被申请人六、被申请人七出具了两份《保证书》，愿意以保证人的身份为被申请人一签署的借款合同项下的借款本金、利息、实现债权的费用、违约金等相关费用提供无限连带责任保证，保证期间为自主债务履行期届满之日起两年。\r\n借款合同签订后，申请人按照合同的约定按时足额地借给被申请人一人民币400000元，被申请人一也于2014年10月10日向申请人出具了《融资凭据》，证明收到申请人的出借款项，并承诺按时履行结算及还款义务。2015年4月8日，借款期限届满。按照借款合同的约定，被申请人一、二、三应当在期限届满后三个工作日内与申请人进行全面结算，并向申请人偿还借款本金人民币400000元、利息人民币40000元（按照合同约定的年利率20%计算）。截至申请人申请仲裁之日止，申请人多次要求被申请人一、被申请人二返还申请人的借款本金及利息、要求被申请人三履行担保义务（即合同中的权益收购义务），但上述被申请人均以各种理由未向申请支付借款本金及利息，从而导致申请人出借的本金及利息无法收回。\r\n申请人认为，借款合同（即项目合作协议）、《项目管理监管协议》、《补充监管协议》及《保证书》均为申请人与被申请人的真实意思表示，合法有效，双方均应严格履行。借款合同到期后，被申请人一、被申请人二应当按照合同约定向申请人偿还借款本息；在申请人的借款本金及利息未得到偿还的情况下，被申请人三应按照合同约定履行权益收购义务即代为偿还借款本金及利息，出具了《保证书》的被申请人四、被申请人五、被申请人六、被申请人七也应当承担连带清偿责任。\r\n综上，为了维护申请人的合法权益，为了使申请人与被申请人之间的争议能够得到公正的解决，申请人特依据《正兴基础建筑项目合作协议》、《项目监管协议》、《保证书》中的仲裁条款提出仲裁申请，请求依法仲裁。','李玉艳','2015-05-13 02:30:15');
INSERT INTO `party_request` VALUES (67,'Y',NULL,'20150522-1','',NULL,244,NULL,'',NULL,NULL,'1、请求裁决被申请人一立即向申请人支付回购价款人民币6000000元、违约金人民币108493.14元（违约金按合同约定的年回购收益率上浮100%计收，暂计至2015年5月13日）；\r\n2、请求裁决被申请人二、被申请人三、被申请人四对上述债务承担连带清偿责任；\r\n3、请求裁决上述四位被申请人承担申请人为主张本次债权所支付的律师费、担保费、保全费、差旅费及将来在仲裁中可能发生的其他维权费用（现暂发生律师费为人民币40000元，后期申请人因本案而支付的律师费，申请人有权提出请求并要求上述被申请人承担）；\r\n4、请求裁决上述四位被申请人承担本案全部仲裁费用。','2014年9月29日，被申请人一与前海股权交易中心（深圳）有限公司（以下简称“前海中心”）签订一份《企业资产收益权转让与回购协议》（以下简称《转让与回购协议》）。协议约定：被申请人一将其合法拥有的标的资产收益权以人民币6,000,000.00元的价格转让给“前海中心”；转让期限自2014年10月22日（含）起至回购日2015年4月22日（不含）；在此期间，被申请人一应于回购日前分六期向“前海中心”支付到期回购价款，第一期至第五期分别支付金额为人民币74794.52元，最后一期回购价款支付金额为应支付的总回购价款减去已支付的回购价款后剩余的金额，回购收益率为15%；如被申请人一未按照协议约定按时足额地向“前海中心”支付回购价款的，“前海中心”有权根据被申请人一应付但未付价款金额和实际逾期天数，按本协议约定的年回购收益率上浮100%计收违约金。同日，被申请人二出具了一份《担保函》，自愿对《转让与回购协议》中回购方的到期回购义务承担不可撤销的连带责任保证担保；保证范围为回购款项及相应的回购收益、滞纳金、罚息、损害赔偿金及实现权益的费用；保证期间为回购日到期后两年。被申请人三、被申请人四也于当日出具了两份《个人无限连带责任保证函》，自愿为被申请人一在《转让与回购协议》项下的资产收益权回购价款的支付义务承担无限连带责任保证担保，保证期间至被申请人一所有回购义务全部履行为止。\r\n合同签订后，被申请人二于2014年10月21日向“前海中心”发出《支付转让价款通知书》，要求“前海中心”按照上述协议向被申请人一支付资产收益权转让价款。“前海中心”于2014年10月22日按照《转让与回购协议》的约定及被申请人二的《支付转让价款通知书》向被申请人一支付资产收益权转让价款人民币6,000,000.00元。合同履行期间，被申请人一按时偿还了第一至五期的回购价款，但剩余回购价款未按时向“前海中心”支付。此后，“前海中心”向被申请人一、被申请人二发出《催收通知书》、向被申请人二发出《代偿通知书》，要求其履行合同义务，但截至“前海中心”将债权让与申请人前，被申请人一未支付剩余回购价款，被申请人二也未履行代偿还义务。\r\n2015年5月12日，“前海中心”与申请人签订了一份《债权转让协议书》，约定将“前海中心”对被申请人一、被申请人二、被申请人三、被申请人四享有的全部已到期未偿还的债权及违约金、相关担保权益等让与申请人，申请人因此而取得对被申请人一及其保证人被申请人二、被申请人三、被申请人四享有的一切权利，包括但不限于要求支付回购价款、因追偿产生的诉讼费、仲裁费、律师费及公告费等所有实现债权费用的权利。“前海中心”亦于当日向被申请人一、被申请人二、被申请人三、被申请人四寄送了《债权转让通知书》，通知上述被申请人：将《转让与回购协议》项下的所有权利让与申请人，被申请人并应将剩余回购价款还款至申请人指定账户。但截至申请人申请仲裁之日止，均未收到上述被申请人的任何款项。\r\n申请人认为：《企业资产收益权转让与回购协议》、《担保函》、《个人无限连带责任保证函》、《支付转让价款通知书》均为上述被申请人的真实意思表示，合法有效，均应严格履行。根据《债权转让协议书》及《债权转让通知书》，被申请人一应当向申请人支付剩余回购价款，被申请人二、被申请人三、被申请人四也应当对上述债务向申请人承担连带清偿责任。\r\n因此，为了维护申请人的合法权益，申请人特依据上述协议中的仲裁条款及《中华人民共和国仲裁法》、《中华人民共和国合同法》等相关法律法规的规定提出仲裁申请，请求依法仲裁。','李玉艳','2015-05-22 09:39:02');
INSERT INTO `party_request` VALUES (68,'Y',NULL,'20150619-1','',NULL,249,NULL,'',NULL,NULL,'1、请求依法裁决解除申请人与被申请人之间的《华润深圳湾体育中心商铺租赁合同》（合同编号：CRSZB12-LA032-(06.06)）；\r\n2、请求依法裁决被申请人向申请人支付计至其实际交还深圳市南山区华润深圳湾体育中心B107号商铺之日的租金、物业管理费、推广费等相关费用（上述费用暂计至2015年6月4日共计人民币108,165.12元）；\r\n3、请求依法裁决被申请人向申请人支付计至其实际清偿之日止的违约金（该违约金暂计至2015年6月4日共计人民币15,685.11元）；\r\n4、请求依法裁决被申请人立即按照合同的约定交还该商铺；\r\n5、请求依法裁决被申请人已缴纳的租赁保证金不予退还；\r\n6、请求依法裁决由被申请人承担本案仲裁的受理费、处理费、律师费等所有实现债权的费用。\r\n','2012年7月4日，申请人深圳湾公司与被申请人正雅公司签订了编号为CRSZB12-LA032-(06.06)的《华润深圳湾体育中心商铺租赁合同》（以下简称“租赁合同”），约定申请人将位于深圳市南山区华润深圳湾体育中心B107号商铺（以下简称“该商铺”）出租给被申请人使用，该物业承租面积（GLA）为231平方米，建筑面积（GFA）为231平方米，租赁期限自商铺交付之日起至2018年9月30日止，该商铺只供被申请人作餐饮、茶道、工艺礼品、文化交流、培训使用。被申请人须按月向申请人华润公司支付租金、管理费、推广费、水电费等费用。本合同租赁保证金为人民币69,300元。\r\n《租赁合同》16.3条约定：“在租赁期内，乙方有下列行为之一的，甲方有权单方面终止本合同，收回该商铺，由此而造成甲方损失的，乙方应予以赔偿：……（16.3.5）拖欠支付租金、管理费及其他费用之一或全部的达到30日。……（16.3.8）未经甲方书面同意，乙方中断、停止其经营活动1天（含1天）以上的。……”\r\n《租赁合同》16.4条约定：“甲方依据本合同第16.3条单方终止合同的，应当书面通知乙方3日内迁离并交回该商铺；租赁保证金作为违约金赔偿给甲方；若租赁保证金不足赔偿甲方损失的，乙方还应负责赔偿。”\r\n同时，《租赁合同》16.1条约定：“在租赁期限内，乙方逾期交付租金、管理费、推广费及水、电、空调费之一或全部的，每逾期一日，应按逾期交付金额的2‰支付滞纳金。”\r\n\r\n合同签订后，被申请人自2014年1月起就开始拖欠租金、管理费、推广等相关费用，截至2015年6月，连续拖欠租金、管理费、推广费等费用达人民币108,165.12元。另外，自合同签订至2015年2月期间，被申请人所经营的店铺管理松散，经常出现未经申请人书面同意私自停业情况。为此，申请人深圳湾公司多次与该店铺负责人进行沟通，但被申请人置之不理并一直未予支付拖欠的费用。\r\n\r\n2015年3月31日，申请人向被申请人发送编号为15001号的《关于告知贵司违反合同条款的函》，告知其行为已违约，申请人有权单方解除《租赁合同》。申请人通过顺丰快递向被申请人地址进行了寄送。\r\n同年4月28日，申请人在多次联系被申请人负责人均未果的情再次向被申请人发送编号为15002号的《关于告知贵司解约的函》，告知被申请人单方解除合同，收回商铺，并要求被申请人按照《租赁合同》约定的标准支付违约金。申请人通过顺丰快递向被申请人地址进行了寄送。\r\n上述两份《公函》发送后，申请人联系再也无法联系到被申请人正雅公司的负责人，其所拖欠的费用至今未予支付。\r\n\r\n综上，被申请人正雅公司的上述行为已严重地违反了合同约定，理应承担相应的违约责任。申请人深圳湾公司现依据《租赁合同》第16条的约定，请求解除与被申请人正雅公司之间的租赁合同关系，要求其支付所拖欠的租金、费用费、推广费等相关费用及违约金。同时，依据《租赁合同》16.4条，要求被申请人向申请人交还租赁的商铺，已缴纳的租赁保证金不予退还，抵扣部分违约金赔偿给申请人。\r\n申请人深圳湾公司为维护自身合法权益，依据《租赁合同》19.3条仲裁条款提出仲裁申请，恳请仲裁庭依法予以支持，公平公正予以裁决。\r\n','lwj','2015-06-19 11:06:08');
INSERT INTO `party_request` VALUES (69,'Y',NULL,'20150707-1','',NULL,252,NULL,'',NULL,NULL,' 1、裁决被申请人向申请人给付拖欠的货款人民币271,071.00元及按中国人民银行同期贷款利率支付欠款利息，至还清之日止；\r\n 2、裁决被申请人承担本案仲裁费用。\r\n','被申请人拖延支付申请人货款共计人民币271,071.00元，给申请人造成了严重的经济损失。\r\n    （一）申请人与被申请人签订的6份《销售合同》合法有效，对双方均具有法律约束力。\r\n2009年4月，申请人与被申请人签订《销售总合同》并开始进行业务往来。其中，在2014年4月2日至2014年5月14日，双方签订了6份《销售合同》，编号分别为X0D1V04013、X0D1V04025、X0D1V04055、X0D1V05007、X0D1V05009、X0D1V05036。合同中约定被申请人为买方、申请人为卖方，由申请人向被申请人提供覆铜板或半固化片等商品，被申请人则按照月结60天的方式支付货款。该6份《销售合同》系双方的真实意思表示，且经双方盖章生效，对双方均具有约束力。\r\n（二）申请人如约履行供货义务，但被申请人至今仍未完全履行付款义务，给申请人造成了严重的经济损失。\r\n自2013年4月3日至2013年5月15日，申请人按照6份《销售合同》约定的品名、规格及数量严格履行了应尽的交货义务，货款总计人民币315800.00元，但被申请人仅在2014年10月、11月和2015年1月向申请人支付货款共人民币44729.00元，至今拖欠申请人2013年4月及5月货款共计人民币271,071.00元，已经构成严重违约，影响了申请人的正常经营，给申请人造成了严重的经济损失。\r\n\r\n    综上所述，被申请人拒绝向申请人清偿上述债务的行为已经严重损害了申请人的合法权益，影响了申请人的日常经营，给申请人造成了巨大的经济损失。因此，申请人特依法向贵委员会申请仲裁，恳请贵委员会支持申请人的全部仲裁请求。\r\n','shengyikeji','2015-07-07 10:04:31');
INSERT INTO `party_request` VALUES (70,'Y',NULL,'20150708-2','',NULL,255,NULL,'',NULL,NULL,'d','ddddddddddddddd','dsr2','2015-07-08 04:36:24');
INSERT INTO `party_request` VALUES (71,'Y',NULL,'20150709-2','',NULL,261,NULL,'',NULL,NULL,'1、裁决被申请人向申请人给付拖欠的货款人民币271071.00元及按中国人民银行同期贷款利率支付欠款利息，至还清之日止;\r\n2、裁决被申请人承担本案仲裁费、财产保全费等相关费用。','1、裁决被申请人向申请人给付拖欠的货款人民币271071.00元及按中国人民银行同期贷款利率支付欠款利息，至还清之日止;\r\n2、裁决被申请人承担本案仲裁费、财产保全费等相关费用。','zhongqianyi','2015-07-09 02:27:18');

--
-- Table structure for table `propose`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propose_user_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '提出人类型',
  `propose_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '提出人编码',
  `propose_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '提出人姓名',
  `propose_time` datetime DEFAULT NULL COMMENT '提出时间',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  `contact` text COLLATE utf8_unicode_ci COMMENT '联系方式',
  `reply_time` datetime DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='建议意见';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propose`
--

INSERT INTO `propose` VALUES (1,'party','a183','李生','2014-09-12 10:32:04','录入太麻烦了','录入太麻烦了','136000000','2015-05-30 02:37:17');
INSERT INTO `propose` VALUES (2,'party','a182','刘刘','2014-09-18 05:38:05','','','','2014-11-01 12:44:09');
INSERT INTO `propose` VALUES (3,'party','a187','刘勇','2014-10-09 03:34:24','szcd','safd','csafdc','2015-05-30 05:07:48');
INSERT INTO `propose` VALUES (4,'party','a190','李小明','2014-10-24 06:01:49','阿斯顿','撒旦法S','SDFAS','2015-07-06 05:02:13');
INSERT INTO `propose` VALUES (5,'party','a192','qichs','2014-10-28 10:29:59','建议','吃一大餐','','2015-07-06 05:02:43');
INSERT INTO `propose` VALUES (6,'arbitman','00000023','钱明强','2014-10-28 01:47:55','大餐','吃大餐一顿','',NULL);
INSERT INTO `propose` VALUES (7,'arbitman','00000023','钱明强','2014-10-28 02:53:01','放假','11月7日到12日放假。','',NULL);
INSERT INTO `propose` VALUES (8,'arbitman','00000023','钱明强','2014-11-01 04:06:00','rqwr','eqwrew','erwqe','2015-05-30 05:07:29');
INSERT INTO `propose` VALUES (9,'party','a193','123','2014-11-01 04:14:33','测试','测试','将开放接口','2014-11-01 04:32:52');
INSERT INTO `propose` VALUES (10,'arbitman','00000023','钱明强','2014-12-08 11:16:53','仲裁员建议','仲裁员建议','123456','2015-07-06 05:01:58');
INSERT INTO `propose` VALUES (11,'party','wanghaipinping','','2014-12-22 10:39:46','测试','测试','83501861','2015-07-06 05:01:35');
INSERT INTO `propose` VALUES (12,'party','wanghaipinping','','2015-01-04 05:50:46','测试，','<p>测试&nbsp;&nbsp;&nbsp;&nbsp;</p>','测试','2015-05-30 05:08:00');
INSERT INTO `propose` VALUES (13,'party','linxiao','林晓','2015-05-15 09:20:45','不用在意，测试系统','<p><span style=\"font-family: ����; font-size: 12px; line-height: 26px;\">不用在意，测试系统</span></p>','1356201452213','2015-05-30 05:07:37');
INSERT INTO `propose` VALUES (14,'arbitman','00000023','钱明强','2015-05-18 12:02:01','测试','<p>测试</p>','测试fb381d3b-de2d-a9b1-1fb381d3b-de2d-a9b1-1fb381d3b-de2d-a9b1-1','2015-05-30 02:37:32');
INSERT INTO `propose` VALUES (15,'party','linxiao','林晓','2015-05-18 04:40:13','测试','<p><img src=\"http://img.baidu.com/hi/jx2/j_0010.gif\"/></p>','1234563521','2015-05-30 02:37:28');
INSERT INTO `propose` VALUES (16,'arbitman','00000023','钱明强','2015-05-30 02:54:31','11',NULL,'\'\'\'','2015-05-30 05:05:23');
INSERT INTO `propose` VALUES (17,'party','linxiao','林晓','2015-05-30 03:04:31','测试',NULL,'测试','2015-05-30 05:05:14');
INSERT INTO `propose` VALUES (18,'arbitman','00000023','钱明强','2015-05-30 05:03:43','测试建议','<p>测试建议测试建议测试建议</p>','123456','2015-05-30 05:04:30');
INSERT INTO `propose` VALUES (19,'party','houlibao','dd','2015-07-06 04:22:52','4','<p>&nbsp;4</p>','','2015-07-06 05:01:01');
INSERT INTO `propose` VALUES (20,'arbitman','00000023','钱明强','2015-07-07 04:06:55','dd','ddd','',NULL);
INSERT INTO `propose` VALUES (21,'party','dsr1','dsr1','2015-07-08 04:29:13','11111111111111','111111111111111111','111111111','2015-07-08 10:28:38');
INSERT INTO `propose` VALUES (22,'party','dsr2','dsr','2015-07-08 04:38:19','3','333333333333','3333333333333',NULL);
INSERT INTO `propose` VALUES (23,'arbitman','a145','zcy1','2015-07-08 05:06:17','d','dddddddd','dddddddddddd',NULL);
INSERT INTO `propose` VALUES (24,'arbitman','a145','zcy1','2015-07-08 05:08:37','66','6666666666666666666','666666666666',NULL);
INSERT INTO `propose` VALUES (25,'arbitman','a145','zcy1','2015-07-10 10:23:20','','','',NULL);
INSERT INTO `propose` VALUES (26,'party','wanghaipinping','王海平','2015-07-14 18:00:03','e','e','',NULL);
INSERT INTO `propose` VALUES (27,'party','wanghaipinping','王海平','2015-07-14 18:00:09','e','e','',NULL);
INSERT INTO `propose` VALUES (28,'party','wanghaipinping','王海平','2015-07-14 18:00:16','rr','rr','',NULL);
INSERT INTO `propose` VALUES (29,'party','wanghaipinping','王海平','2015-07-14 18:00:22','rrr','rrr','',NULL);
INSERT INTO `propose` VALUES (30,'party','wanghaipinping','王海平','2015-07-14 18:01:24','1','1','',NULL);
INSERT INTO `propose` VALUES (31,'party','wanghaipinping','王海平','2015-07-14 18:01:29','1','1','',NULL);
INSERT INTO `propose` VALUES (32,'party','wanghaipinping','王海平','2015-07-14 18:01:34','1','1','',NULL);
INSERT INTO `propose` VALUES (33,'party','wanghaipinping','王海平','2015-07-14 18:01:39','1','1','',NULL);
INSERT INTO `propose` VALUES (34,'party','wanghaipinping','王海平','2015-07-14 18:01:44','2','2','',NULL);
INSERT INTO `propose` VALUES (35,'party','wanghaipinping','王海平','2015-07-14 18:01:48','4','4','',NULL);
INSERT INTO `propose` VALUES (36,'party','wanghaipinping','王海平','2015-07-14 18:01:53','55555','55','',NULL);
INSERT INTO `propose` VALUES (37,'party','wanghaipinping','王海平','2015-07-14 18:01:59','5','5555555','',NULL);
INSERT INTO `propose` VALUES (38,'party','wanghaipinping','王海平','2015-07-14 18:02:04','66','666666','',NULL);
INSERT INTO `propose` VALUES (39,'party','wanghaipinping','王海平','2015-07-14 18:02:09','5','5555','',NULL);
INSERT INTO `propose` VALUES (40,'party','wanghaipinping','王海平','2015-07-14 18:02:15','6','66666666666','',NULL);
INSERT INTO `propose` VALUES (41,'party','wanghaipinping','王海平','2015-07-14 18:02:19','6','6666666666','',NULL);
INSERT INTO `propose` VALUES (42,'party','wanghaipinping','王海平','2015-07-14 18:03:04','6','666666','',NULL);
INSERT INTO `propose` VALUES (43,'party','wanghaipinping','王海平','2015-07-14 18:03:09','6','66666','',NULL);
INSERT INTO `propose` VALUES (44,'party','wanghaipinping','王海平','2015-07-14 18:03:14','6','6666','',NULL);
INSERT INTO `propose` VALUES (45,'party','wanghaipinping','王海平','2015-07-14 18:04:22','6','66666666666','',NULL);
INSERT INTO `propose` VALUES (46,'party','wanghaipinping','王海平','2015-07-14 18:04:28','6','6','',NULL);
INSERT INTO `propose` VALUES (47,'party','wanghaipinping','王海平','2015-07-14 18:04:33','75','7575','',NULL);
INSERT INTO `propose` VALUES (48,'party','wanghaipinping','王海平','2015-07-14 18:04:37','8585','8585','',NULL);
INSERT INTO `propose` VALUES (49,'party','wanghaipinping','王海平','2015-07-14 18:04:42','858','5858','',NULL);

--
-- Table structure for table `propose_reply`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propose_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propose_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci COMMENT '回复内容',
  `reply_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '回复人用户编码',
  `reply_time` datetime DEFAULT NULL,
  `active` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1为在用，0为逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='建议回复';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propose_reply`
--

INSERT INTO `propose_reply` VALUES (1,1,'回复回复',NULL,'2014-10-24 10:08:56','1');
INSERT INTO `propose_reply` VALUES (2,1,'再回复',NULL,'2014-10-24 10:09:07','1');
INSERT INTO `propose_reply` VALUES (3,1,'',NULL,'2014-10-24 10:09:10','1');
INSERT INTO `propose_reply` VALUES (4,2,'就是这样',NULL,'2014-10-29 03:00:44','1');
INSERT INTO `propose_reply` VALUES (5,1,'ddwqe',NULL,'2014-11-01 12:44:02','1');
INSERT INTO `propose_reply` VALUES (6,2,'2e121',NULL,'2014-11-01 12:44:09','1');
INSERT INTO `propose_reply` VALUES (7,1,'fewfedfew',NULL,'2014-11-01 12:46:15','1');
INSERT INTO `propose_reply` VALUES (8,1,'efwwe',NULL,'2014-11-01 12:46:21','1');
INSERT INTO `propose_reply` VALUES (9,1,'',NULL,'2014-11-01 04:12:23','1');
INSERT INTO `propose_reply` VALUES (10,9,'OK',NULL,'2014-11-01 04:32:46','1');
INSERT INTO `propose_reply` VALUES (11,9,'',NULL,'2014-11-01 04:32:52','1');
INSERT INTO `propose_reply` VALUES (12,14,'测试，测试，，，，，',NULL,'2015-05-22 03:29:25','1');
INSERT INTO `propose_reply` VALUES (13,15,'测试，测试',NULL,'2015-05-22 03:29:34','1');
INSERT INTO `propose_reply` VALUES (14,1,'测试',NULL,'2015-05-30 02:37:17','1');
INSERT INTO `propose_reply` VALUES (15,15,'测试',NULL,'2015-05-30 02:37:28','1');
INSERT INTO `propose_reply` VALUES (16,14,'测试',NULL,'2015-05-30 02:37:32','1');
INSERT INTO `propose_reply` VALUES (17,18,'测试收到，建议很好',NULL,'2015-05-30 05:04:30','1');
INSERT INTO `propose_reply` VALUES (18,17,'通过',NULL,'2015-05-30 05:05:14','1');
INSERT INTO `propose_reply` VALUES (19,16,'收到',NULL,'2015-05-30 05:05:23','1');
INSERT INTO `propose_reply` VALUES (20,8,'。。',NULL,'2015-05-30 05:07:29','1');
INSERT INTO `propose_reply` VALUES (21,13,'。。',NULL,'2015-05-30 05:07:37','1');
INSERT INTO `propose_reply` VALUES (22,3,'。。',NULL,'2015-05-30 05:07:48','1');
INSERT INTO `propose_reply` VALUES (23,12,'',NULL,'2015-05-30 05:08:00','1');
INSERT INTO `propose_reply` VALUES (24,19,'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee',NULL,'2015-07-06 05:01:01','1');
INSERT INTO `propose_reply` VALUES (25,11,'rrrrrrrrrrrrrr',NULL,'2015-07-06 05:01:34','1');
INSERT INTO `propose_reply` VALUES (26,10,'eeeeeeeeeeeeeeeeeeeeeeeeeee',NULL,'2015-07-06 05:01:58','1');
INSERT INTO `propose_reply` VALUES (27,4,'eeeeeeeeeeeeeeeee',NULL,'2015-07-06 05:02:13','1');
INSERT INTO `propose_reply` VALUES (28,5,'欢迎',NULL,'2015-07-06 05:02:43','1');
INSERT INTO `propose_reply` VALUES (29,21,'qqqqqqqqqqqqqqqqqqqqqqqqq',NULL,'2015-07-08 10:28:38','1');

--
-- Table structure for table `region`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '编码',
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '名称简体中文',
  `name_tw` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '名称繁体中文',
  `name_en` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '名称英文',
  `parent` varchar(200) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '父节点编码，根节点的父节点为0',
  `arbitman_cost` decimal(65,0) DEFAULT '0' COMMENT '仲裁员花费',
  `rate_code` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '币种编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='地区信息的父子关系存储';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

INSERT INTO `region` VALUES (1,'001','中国内地','','','0',0,'0001');
INSERT INTO `region` VALUES (2,'001001','广东省','','','001',0,'0001');
INSERT INTO `region` VALUES (3,'001001001','广东省深圳市','','','001001',0,'0001');
INSERT INTO `region` VALUES (4,'001001002','广东省广州市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (5,'001001003','广东省韶关市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (6,'001001004','广东省珠海市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (7,'001001005','广东省汕头市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (8,'001001006','广东省佛山市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (9,'001001007','广东省江门市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (10,'001001008','广东省湛江市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (11,'001001009','广东省茂名市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (12,'001001010','广东省肇庆市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (13,'001001011','广东省惠州市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (14,'001001012','广东省梅州市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (15,'001001013','广东省汕尾市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (16,'001001014','广东省河源市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (17,'001001015','广东省阳江市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (18,'001001016','广东省清远市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (19,'001001017','广东省东莞市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (20,'001001018','广东省中山市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (21,'001001019','广东省潮州市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (22,'001001020','广东省揭阳市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (23,'001001021','广东省云浮市','','','001001',3000,'0001');
INSERT INTO `region` VALUES (24,'001002','北京市','','','001',15000,'0001');
INSERT INTO `region` VALUES (25,'001003','天津市','','','001',15000,'0001');
INSERT INTO `region` VALUES (26,'001004','河北省','','','001',15000,'0001');
INSERT INTO `region` VALUES (27,'001005','山西省','','','001',15000,'0001');
INSERT INTO `region` VALUES (28,'001006','内蒙古自治区','','','001',17000,'0001');
INSERT INTO `region` VALUES (29,'001007','河南省','','','001',12000,'0001');
INSERT INTO `region` VALUES (30,'001008','湖南省','','','001',8000,'0001');
INSERT INTO `region` VALUES (31,'0010081','湖北省','','','001',8000,'0001');
INSERT INTO `region` VALUES (32,'001009','河北省','','','001',15000,'0001');
INSERT INTO `region` VALUES (33,'001010','安徽省','','','001',12000,'0001');
INSERT INTO `region` VALUES (34,'001011','福建省','','','001',8000,'0001');
INSERT INTO `region` VALUES (35,'001012','江苏省','','','001',12000,'0001');
INSERT INTO `region` VALUES (36,'001013','江西省','','','001',8000,'0001');
INSERT INTO `region` VALUES (37,'001014','山东省','','','001',15000,'0001');
INSERT INTO `region` VALUES (38,'001015','上海市','','','001',12000,'0001');
INSERT INTO `region` VALUES (39,'001016','浙江省','','','001',12000,'0001');
INSERT INTO `region` VALUES (40,'001017','广西壮族自治区','','','001',8000,'0001');
INSERT INTO `region` VALUES (41,'001018','海南省','','','001',8000,'0001');
INSERT INTO `region` VALUES (42,'001020','四川省','','','001',12000,'0001');
INSERT INTO `region` VALUES (43,'001021','重庆市','','','001',12000,'0001');
INSERT INTO `region` VALUES (44,'001022','贵州省','','','001',8000,'0001');
INSERT INTO `region` VALUES (45,'001023','西藏自治区','','','001',17000,'0001');
INSERT INTO `region` VALUES (46,'001024','云南省','','','001',12000,'0001');
INSERT INTO `region` VALUES (47,'001025','黑龙江省','','','001',17000,'0001');
INSERT INTO `region` VALUES (48,'001026','吉林省','','','001',17000,'0001');
INSERT INTO `region` VALUES (49,'001027','辽宁省','','','001',17000,'0001');
INSERT INTO `region` VALUES (50,'001028','陕西省','','','001',15000,'0001');
INSERT INTO `region` VALUES (51,'001029','宁夏回族自治区','','','001',15000,'0001');
INSERT INTO `region` VALUES (52,'001030','青海省','','','001',17000,'0001');
INSERT INTO `region` VALUES (53,'001031','新疆维吾尔自治区','','','001',17000,'0001');
INSERT INTO `region` VALUES (54,'001032','甘肃省','','','001',17000,'0001');
INSERT INTO `region` VALUES (55,'002','香港','','','0',3000,'0001');
INSERT INTO `region` VALUES (56,'003','澳门','','','0',3000,'0001');
INSERT INTO `region` VALUES (57,'004','台湾','','','0',12000,'0001');
INSERT INTO `region` VALUES (58,'005','美国','','','0',0,'0001');
INSERT INTO `region` VALUES (59,'006','英国','','','0',0,'0001');
INSERT INTO `region` VALUES (60,'007','德国','','','0',0,'0001');
INSERT INTO `region` VALUES (61,'008','日本','','','0',0,'0001');
INSERT INTO `region` VALUES (62,'009','澳大利亚','','','0',0,'0001');
INSERT INTO `region` VALUES (63,'00A','英属开曼群岛','','','0',0,'0001');
INSERT INTO `region` VALUES (64,'00B','韩国','','','0',0,'0001');
INSERT INTO `region` VALUES (65,'00C','瑞典','','','0',0,'0001');
INSERT INTO `region` VALUES (66,'010','法国','','','0',0,'0001');
INSERT INTO `region` VALUES (67,'011','荷兰','','','0',0,'0001');
INSERT INTO `region` VALUES (68,'012','泰国','','','0',0,'0001');
INSERT INTO `region` VALUES (69,'013','迪拜','','','0',0,'0001');
INSERT INTO `region` VALUES (70,'014','瑞士','','','0',0,'0001');
INSERT INTO `region` VALUES (71,'015','缅甸','','','0',0,'0001');
INSERT INTO `region` VALUES (72,'0151','越南','','','0',0,'0001');
INSERT INTO `region` VALUES (73,'016','伊朗','','','0',0,'0001');
INSERT INTO `region` VALUES (74,'017','波兰','','','0',0,'0001');
INSERT INTO `region` VALUES (75,'018','芬兰','','','0',0,'0001');
INSERT INTO `region` VALUES (76,'020','捷克','','','0',0,'0001');
INSERT INTO `region` VALUES (77,'021','蒙古','','','0',0,'0001');
INSERT INTO `region` VALUES (78,'022','朝鲜','','','0',0,'0001');
INSERT INTO `region` VALUES (79,'023','印度','','','0',0,'0001');
INSERT INTO `region` VALUES (80,'024','也门','','','0',0,'0001');
INSERT INTO `region` VALUES (81,'025','约旦','','','0',0,'0001');
INSERT INTO `region` VALUES (82,'026','秘鲁','','','0',0,'0001');
INSERT INTO `region` VALUES (83,'027','埃及','','','0',0,'0001');
INSERT INTO `region` VALUES (84,'028','智利','','','0',0,'0001');
INSERT INTO `region` VALUES (85,'029','挪威','','','0',0,'0001');
INSERT INTO `region` VALUES (86,'030','南非','','','0',0,'0001');
INSERT INTO `region` VALUES (87,'031','利比亚','','','0',0,'0001');
INSERT INTO `region` VALUES (88,'032','新加坡','','','0',0,'0001');
INSERT INTO `region` VALUES (89,'033','俄罗斯','','','0',0,'0001');
INSERT INTO `region` VALUES (90,'034','意大利','','','0',0,'0001');
INSERT INTO `region` VALUES (91,'035','加拿大','','','0',0,'0001');
INSERT INTO `region` VALUES (92,'036','奥地利','','','0',0,'0001');
INSERT INTO `region` VALUES (93,'037','菲律宾','','','0',0,'0001');
INSERT INTO `region` VALUES (94,'038','比利时','','','0',0,'0001');
INSERT INTO `region` VALUES (95,'039','匈牙利','','','0',0,'0001');
INSERT INTO `region` VALUES (96,'040','孟加拉','','','0',0,'0001');
INSERT INTO `region` VALUES (97,'041','西班牙','','','0',0,'0001');
INSERT INTO `region` VALUES (98,'042','巴拿马','','','0',0,'0001');
INSERT INTO `region` VALUES (99,'043','以色列','','','0',0,'0001');
INSERT INTO `region` VALUES (100,'044','阿联酋','','','0',0,'0001');
INSERT INTO `region` VALUES (101,'045','新西兰','','','0',0,'0001');
INSERT INTO `region` VALUES (102,'046','阿根廷','','','0',0,'0001');
INSERT INTO `region` VALUES (103,'047','土耳其','','','0',0,'0001');
INSERT INTO `region` VALUES (104,'048','扎伊尔','','','0',0,'0001');
INSERT INTO `region` VALUES (105,'049','乌拉圭','','','0',0,'0001');
INSERT INTO `region` VALUES (106,'050','柬埔寨','','','0',0,'0001');
INSERT INTO `region` VALUES (107,'051','马来西亚','','','0',0,'0001');
INSERT INTO `region` VALUES (108,'052','澳大利亚','','','0',0,'0001');
INSERT INTO `region` VALUES (109,'053','保加利亚','','','0',0,'0001');
INSERT INTO `region` VALUES (110,'054','罗马尼亚','','','0',0,'0001');
INSERT INTO `region` VALUES (111,'055','南斯拉夫','','','0',0,'0001');
INSERT INTO `region` VALUES (112,'056','克罗地亚','','','0',0,'0001');
INSERT INTO `region` VALUES (113,'057','塞浦路斯','','','0',0,'0001');
INSERT INTO `region` VALUES (114,'058','巴基斯坦','','','0',0,'0001');
INSERT INTO `region` VALUES (115,'059','莫桑比克','','','0',0,'0001');
INSERT INTO `region` VALUES (116,'060','波利维亚','','','0',0,'0001');
INSERT INTO `region` VALUES (117,'061','斯里兰卡','','','0',0,'0001');
INSERT INTO `region` VALUES (118,'062','哥伦比亚','','','0',0,'0001');
INSERT INTO `region` VALUES (119,'063','英属维尔京','','','0',0,'0001');
INSERT INTO `region` VALUES (120,'0631','英属百慕大','','','0',0,'0001');
INSERT INTO `region` VALUES (121,'064','印度尼西亚','','','0',0,'0001');
INSERT INTO `region` VALUES (122,'065','哈萨克斯坦','','','0',0,'0001');
INSERT INTO `region` VALUES (123,'066','列支敦士登','','','0',0,'0001');
INSERT INTO `region` VALUES (124,'067','乌兹别克斯','','','0',0,'0001');
INSERT INTO `region` VALUES (125,'068','丹麦','','','0',0,'0001');
INSERT INTO `region` VALUES (126,'069','阿尔及利亚','','','0',0,'0001');
INSERT INTO `region` VALUES (127,'070','爱尔兰','','','0',0,'0001');
INSERT INTO `region` VALUES (128,'071','沙特阿拉伯','','','0',0,'0001');
INSERT INTO `region` VALUES (129,'072','巴西','','','0',0,'0001');
INSERT INTO `region` VALUES (130,'073','尼日利亚','','','0',0,'0001');
INSERT INTO `region` VALUES (131,'074','萨摩亚','','','0',0,'0001');
INSERT INTO `region` VALUES (132,'075','卢森堡','','','0',0,'0002');
INSERT INTO `region` VALUES (133,'076','卢旺达','','','0',0,'0001');
INSERT INTO `region` VALUES (134,'077','委内瑞拉','','','0',0,'0001');
INSERT INTO `region` VALUES (135,'078','塞舌尔','','','0',0,'0001');
INSERT INTO `region` VALUES (136,'079','斯洛文尼亚','','','0',0,'0001');
INSERT INTO `region` VALUES (137,'080','伊朗','','','0',8000,'0002');
INSERT INTO `region` VALUES (138,'081','厄瓜多尔共和国','','','0',300,'0002');
INSERT INTO `region` VALUES (139,'082','乌克兰','','','0',3000,'0002');

--
-- Table structure for table `remind`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remind_time` datetime DEFAULT NULL COMMENT '提醒时间',
  `remind_type` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '提醒类型',
  `content` text COLLATE utf8_unicode_ci COMMENT '提醒内容',
  `accept_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '接收人(用户编码)',
  `confirm_time` datetime DEFAULT NULL COMMENT '确认时间',
  `status` int(11) DEFAULT NULL COMMENT '状态,0未确认，1已确认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='提醒';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remind`
--


--
-- Table structure for table `resume`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `status` int(11) DEFAULT NULL COMMENT '状态：1新建未同步，2已同步',
  `arbit_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仲裁员编码',
  `startdate` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '起时间',
  `enddate` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '止时间',
  `company` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工作单位',
  `business` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职务',
  `proveman` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '证明人',
  `lawyerabout` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否与法律有关,1：是/0：否',
  `testdate` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_time` datetime DEFAULT NULL,
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `remark` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='仲裁员简历（仲裁员申请）; InnoDB free: 351232 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` VALUES (1,1,'a115',NULL,NULL,'工作单位','职务','证明','1',NULL,NULL,NULL,'Y','备注');
INSERT INTO `resume` VALUES (2,1,'a118',NULL,NULL,'a','vg','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (3,1,'a122',NULL,NULL,'华南国际经济贸易仲裁委员会','秘书','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (4,1,'a125',NULL,NULL,'dafadf','fadfad','dsfadf','1',NULL,NULL,NULL,'N','dsafa');
INSERT INTO `resume` VALUES (5,1,'a125',NULL,NULL,'gsdgs','sgfgsfg','sdfdgsdfgs','1',NULL,NULL,NULL,'N','');
INSERT INTO `resume` VALUES (6,1,'a125',NULL,NULL,'gsgsfg','fgsfg','sfgsfg','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (7,1,'a128','2014-12-16','2014-12-17','微软','清洁工','盖茨','0',NULL,NULL,NULL,'N','a');
INSERT INTO `resume` VALUES (8,1,'a128','2014-12-17','2014-12-18','a','1','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (9,1,'a128','2014-12-02','2014-12-04','a','b','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (10,1,'a132','1994-01-01','1999-03-31','广东展望律师事务所','律师','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (11,1,'a132','1999-04-01','2001-05-08','广东大同律师事务所','律师','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (12,1,'a132','2001-05-09','2003-02-28','广东华之杰律师事务所','律师','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (13,1,'a132','2003-03-01','2012-01-31','广东法制盛邦律师事务所','合伙人','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (14,1,'a132','2012-02-01','2015-04-01','广东君厚律师事务所','主任','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (15,1,'a138','1989-02-01','2000-05-31','河源市司法局干部、副科长','副科长','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (16,1,'a138','2000-05-01','2009-01-31','深圳市执业律师','律师','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (17,1,'a138','2000-05-01','2015-05-07','北京市中银（深圳）律师事务所','律师','','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (18,1,'a145','2015-07-07','2015-06-29','5','5','5','1',NULL,NULL,NULL,'Y','');
INSERT INTO `resume` VALUES (19,1,'a146','2015-07-13','2015-07-09','ddddddddd','ddddddddd','ddddddddddddddd','0',NULL,NULL,NULL,'Y','');

--
-- Table structure for table `roles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '编码',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '名称',
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '注释',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色编码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` VALUES (36,'0001','系统管理','1');
INSERT INTO `roles` VALUES (37,'0102','仲裁员','');
INSERT INTO `roles` VALUES (40,'0101','当事方','');
INSERT INTO `roles` VALUES (41,'0103','办案助理','');

--
-- Table structure for table `special`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL COMMENT '状态：1新建未同步，2已同步',
  `arbitman_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '裁员仲id',
  `speciality_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '专业的id',
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_time` datetime DEFAULT NULL,
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='仲裁员专业表（仲裁员申请）; InnoDB free: 351232 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special`
--


--
-- Table structure for table `sys_args`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_args` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '参数名称',
  `val` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '编码',
  `describ` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统参数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_args`
--

INSERT INTO `sys_args` VALUES (1,'0100','25','数据表行数');
INSERT INTO `sys_args` VALUES (2,'2000','1','仲裁员信息修改同步方式，1是采用同步方式，0直接修改内网仲裁员表');
INSERT INTO `sys_args` VALUES (3,'0150','20150804-1','仲裁申请记录的编号');
INSERT INTO `sys_args` VALUES (4,'2010','147','仲裁员注册编码');
INSERT INTO `sys_args` VALUES (5,'0802','暂时不使用','邮件用户名');
INSERT INTO `sys_args` VALUES (6,'0803','暂时不使用','邮箱用户名');
INSERT INTO `sys_args` VALUES (7,'2011','暂时不使用','当事人注册编码');
INSERT INTO `sys_args` VALUES (8,'0160','1','仲裁员是否本届才能登录,1是只能本届仲裁员登录,2是所有仲裁员都可以登录。');
INSERT INTO `sys_args` VALUES (9,'3001','<SCRIPT LANGUAGE=\"JavaScript\" src=http://float2006.tq.cn/floatcard?adminid=9648678&sort=1 ></SCRIPT>','tq集成代码');
INSERT INTO `sys_args` VALUES (11,'2001','2015-08-05 00:18:56',NULL);

--
-- Table structure for table `train`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL COMMENT '状态：1发布，0未发布',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  `category` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别',
  `ranges` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发布范围',
  `do_date` date DEFAULT NULL COMMENT '发布时间',
  `put_date` datetime DEFAULT NULL COMMENT '发布时间',
  `num` int(11) DEFAULT '0' COMMENT '序号',
  `hits` int(11) DEFAULT '0' COMMENT '点击量',
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发布人，最后修改时间',
  `edit_time` datetime DEFAULT NULL,
  `edit_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发布人，最后修改时间',
  `active` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1为在用，0为逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='训培信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

INSERT INTO `train` VALUES (1,1,'asdfads','','0001','11','2015-01-04',NULL,0,0,'2015-01-04 11:48:07','','2015-01-19 02:22:28','admin','1');
INSERT INTO `train` VALUES (2,1,'测试培训通知','<p>测试培训通知，测试培训通知</p>','0002','11,12','2015-01-22',NULL,1,0,'2015-01-07 09:46:59','','2015-01-07 09:46:59','','1');
INSERT INTO `train` VALUES (3,1,'测试外网','<p>测试外网测试外网测试外网测试外网</p>','0001','01,02,03','2015-01-21',NULL,2,0,'2015-01-07 09:58:48','','2015-01-07 09:58:48','','1');
INSERT INTO `train` VALUES (4,1,'',NULL,'0001','','2014-12-31',NULL,0,0,'2015-01-19 02:19:12','','2015-01-19 02:19:12','','1');
INSERT INTO `train` VALUES (5,1,'',NULL,'0001','','2014-12-30',NULL,0,0,'2015-01-19 02:19:43','','2015-01-19 02:19:43','','1');
INSERT INTO `train` VALUES (6,1,'测试系统，无需回复，请忽略。','<p>测试系统，无需回复，请忽略，给您带来不便请谅解。谢谢！！</p>','0001','01,02,03,11,12','2015-05-30',NULL,2,0,'2015-05-18 04:43:19','','2015-05-30 04:42:39','admin','1');
INSERT INTO `train` VALUES (7,1,'测试部','<p>测试系统，给您带来不便敬请谅解。</p>','0002','01,02,03,11,12','2015-06-16','2015-06-03 00:00:00',2,0,'2015-06-03 03:04:51','','2015-06-03 03:06:03','admin','1');

--
-- Table structure for table `train_reg`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `train_id` int(11) DEFAULT NULL COMMENT '培训记录的id',
  `user_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户类型',
  `user_category` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户类别',
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户编号',
  `user_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_tel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_t` datetime DEFAULT NULL COMMENT '报名时间、报名取消时间,只能自己取消',
  `remark` text COLLATE utf8_unicode_ci COMMENT '备注',
  `score` int(11) DEFAULT NULL,
  `u` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评分操作用户',
  `u_t` datetime DEFAULT NULL COMMENT '评分时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='培训报名情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_reg`
--

INSERT INTO `train_reg` VALUES (1,'N',2,'party','11','wanghaipinping','','13590269880','wanghaiping@scia.com.cn','2015-01-27 03:23:48','报名1人',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (2,'Y',3,'arbitman','02','00000023','钱明强','1','qianmingqiang@sccietac.org','2015-01-07 10:00:17','报名2',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (3,'Y',1,'arbitman','01','00000733',' 	ABOUL-ENEIN Mohamed','0','','2015-01-19 02:26:22','',2,'admin','2015-01-19 02:44:26');
INSERT INTO `train_reg` VALUES (4,'Y',1,'arbitman','01','00000733',' 	ABOUL-ENEIN Mohamed','0','','2015-01-19 02:28:47','',2,'admin','2015-01-19 02:44:26');
INSERT INTO `train_reg` VALUES (5,'Y',1,'arbitman','01','00000733',' 	ABOUL-ENEIN Mohamed','0','','2015-01-19 02:40:35','',2,'admin','2015-01-19 02:44:26');
INSERT INTO `train_reg` VALUES (6,'N',2,'party','11','cheshi0001','测试0001','15311111111','hant@yhdiglib.com.cn','2015-01-19 03:07:51','',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (7,'N',2,'party','11','cheshi0001','测试0001','15311111111','hant@yhdiglib.com.cn','2015-01-19 05:24:29','',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (8,'Y',1,'party','11','cheshi0001','测试0001','15311111111','hant@yhdiglib.com.cn','2015-01-19 03:28:54','',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (9,'N',2,'party','11','cheshi0001','测试0001','15311111111','hant@yhdiglib.com.cn','2015-01-19 05:24:34','',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (10,'Y',1,'party','11','wanghaipinping','','13590269880','wanghaiping@scia.com.cn','2015-01-27 03:23:37','2人',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (11,'Y',6,'arbitman','01','00000023','钱明强','1','qianmingqiang@sccietac.org','2015-05-22 03:43:56','',100,NULL,NULL);
INSERT INTO `train_reg` VALUES (12,'N',6,'party','11','linxiao','林晓','15989416342','15989416342@163.com','2015-07-08 05:33:41','报名',100,NULL,NULL);
INSERT INTO `train_reg` VALUES (13,'Y',6,'arbitman','01','00000868',' 	LAPRES, Daniel Arthur ','0','','2015-05-30 02:31:38','',0,'admin','2015-05-30 02:31:38');
INSERT INTO `train_reg` VALUES (14,'Y',6,'arbitman','01','00000742','AZZALI, Stefano','0','','2015-05-30 02:34:59','',0,'admin','2015-05-30 02:34:59');
INSERT INTO `train_reg` VALUES (15,'Y',2,'party','11','linxiao','林晓','15989416342','15989416342@163.com','2015-05-30 04:59:46','',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (16,'Y',1,'party','11','linxiao','林晓','15989416342','15989416342@163.com','2015-05-30 04:59:52','',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (17,'Y',6,'arbitman','01','00000100',' 	毕武卿','0','','2015-06-01 04:56:26','',0,'admin','2015-06-01 04:56:26');
INSERT INTO `train_reg` VALUES (18,'Y',7,'party','11','linxiao','林晓','15989416342','15989416342@163.com','2015-06-04 09:51:07','我要报名',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (19,'Y',7,'arbitman','01','00000023','钱明强','1','qianmingqiang@sccietac.org','2015-06-04 10:56:27','报名',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (20,'Y',1,'arbitman','01','00000868',' 	LAPRES, Daniel Arthur ','0','','2015-06-04 02:32:58','',0,'admin','2015-06-04 02:32:58');
INSERT INTO `train_reg` VALUES (21,'Y',7,'arbitman','01','00000019','王素丽','1','wangsuli@sccietac.org','2015-06-09 10:10:35','',0,'admin','2015-06-09 10:10:35');
INSERT INTO `train_reg` VALUES (22,'Y',7,'arbitman','01','00000025','林一飞','1','linyifei@sccietac.org','2015-06-09 10:11:24','',0,'admin','2015-06-09 10:11:24');
INSERT INTO `train_reg` VALUES (23,'Y',6,'party','11','wanghaipinping','','13590269880','wanghaiping@scia.com.cn','2015-06-09 02:40:08','你好，我需要报名',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (24,'Y',7,'party','11','wanghaipinping','','13590269880','wanghaiping@scia.com.cn','2015-06-09 02:40:25','报名',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (25,'Y',7,'arbitman','01','00000732','ABDULLAH AL-OUFI, Saleh','0','','2015-06-10 04:17:05','',0,'admin','2015-06-10 04:17:05');
INSERT INTO `train_reg` VALUES (26,'N',7,'party','12','dsr2','dsr','111111111111111','1@qq.com','2015-07-07 03:41:55','ddddddd',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (27,'N',6,'party','12','houlibao','dd','13597804444','13597804444@qq.com','2015-07-07 03:44:47','ddddddd',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (28,'Y',2,'party','12','houlibao','dd','13597804444','13597804444@qq.com','2015-07-07 03:45:35','ddddddddddd',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (29,'Y',7,'party','12','houlibao','dd','13597804444','13597804444@qq.com','2015-07-07 05:11:23','ttttttttttt',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (30,'Y',7,'party','12','dsr1','dsr1','12345678901','1@qq.com','2015-07-08 04:30:25','44444444444',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (31,'Y',2,'party','12','dsr2','dsr','111111111111111','1@qq.com','2015-07-08 04:38:07','5555555',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (32,'Y',2,'party','12','dsr1','dsr1','12345678901','1@qq.com','2015-07-08 04:58:33','',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (33,'N',6,'party','12','dsr1','dsr1','12345678901','1@qq.com','2015-07-08 10:26:45','dddddddddddddd',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (34,'Y',7,'arbitman','03','a145','zcy1','jfldfjldgjldgd','de@qq.com','2015-07-08 05:06:33','444444444',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (35,'Y',3,'arbitman','03','a145','zcy1','jfldfjldgjldgd','de@qq.com','2015-07-08 05:06:44','',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (36,'N',6,'arbitman','03','a145','zcy1','jfldfjldgjldgd','de@qq.com','2015-07-10 10:23:07','333333333333',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (37,'Y',6,'party','12','dsr1','dsr1','12345678901','1@qq.com','2015-07-08 10:26:50','n',0,NULL,NULL);
INSERT INTO `train_reg` VALUES (38,'Y',6,'arbitman','03','a145','zcy1','jfldfjldgjldgd','de@qq.com','2015-07-10 10:23:11','',0,NULL,NULL);

--
-- Table structure for table `urs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '用户编码',
  `role_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '角色编码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urs`
--

INSERT INTO `urs` VALUES (247,'admin','0001');

--
-- Table structure for table `user_duties`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_duties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '用户编码',
  `duty_code` varchar(4) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '职务编码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户职务信息表，存放用户的职务。';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_duties`
--


--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `used_used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y' COMMENT 'Y:使用、N：逻辑删除',
  `l_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '咨询登录编码',
  `ord` int(11) DEFAULT '0' COMMENT '序号',
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户编码',
  `spell` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名拼音缩写',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `mobiletel` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机',
  `sex` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '男、女',
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `role_text` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `duty_text` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职务名称',
  `bankaccount` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '行银账号',
  `bankname` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '行银名称',
  `bank_typ` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0001:本地   0002:外地',
  `id_card` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '身份证号',
  `telephone` varchar(15) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '电话',
  `fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '传真',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '邮件地址',
  `states` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y' COMMENT '显示状态,Y:显示 N:不显示',
  `used` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y' COMMENT '是否在职 Y:在职、N：不在职',
  `u` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '维护用户',
  `u_t` datetime DEFAULT NULL COMMENT '维护时间',
  `bank_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '银行编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES (1,'Y','1',1,'admin','1e','管理员','1','m','scia123',NULL,NULL,NULL,NULL,NULL,NULL,'e','ee','e','Y','Y',NULL,NULL,NULL);
INSERT INTO `users` VALUES (113,'Y','',0,'aaa','','a','','m','a',NULL,NULL,'','',NULL,'','','','','Y','Y','',NULL,'');

--
-- Table structure for table `w_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_a` int(11) DEFAULT '0' COMMENT '状态：0外网，1内网',
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '以u开始的字符串',
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `name_idcard` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_card` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '身份证号',
  `telephone` varchar(15) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '电话',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '邮件地址',
  `identity` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '用户身份，律师、代理人、企业用户',
  `remark` text COLLATE utf8_unicode_ci COMMENT '备注',
  `paperwork_type` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '证件类型',
  `paperwork_id` int(11) DEFAULT '0' COMMENT '指向attachment 的id',
  `fax` varchar(15) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '电话',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职务,读取系统基本字典表中条目代码前缀为“ZZ" ”的数据',
  `postcode` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮政编码',
  `company` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '单位',
  `addr` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系地址',
  `other_contact` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '其它联系方式',
  `active` varchar(1) COLLATE utf8_unicode_ci DEFAULT '1' COMMENT '1为在用，0为逻辑删除',
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y' COMMENT '状态,Y:在用  N:停用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='当事方外网用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w_user`
--

INSERT INTO `w_user` VALUES (9,1,'a187','红领巾','1ewtwwewt','红领巾','1teteqwt','1etrweqte','hant@ydhiglbi.com.cn','1','aaafdasdasdsaasdffsadsafdaf\r\nsdfsdggdfhhrt',NULL,19,'',NULL,'111','111','111','','1','Y');
INSERT INTO `w_user` VALUES (11,1,'a189','','cymisgood','','E6374852','13828412619','197191976@qq.com','2','rewrewr',NULL,22,'',NULL,'512318','无','香港北角百福花冠百利格17/F G.H.室','','1','Y');
INSERT INTO `w_user` VALUES (13,0,'a191','','769124','','110108195203011311','13310120165','lib9102@163.com','3','rewrew',NULL,25,'',NULL,'100038','北京义华','北京海淀区复兴路83号','','1','Y');
INSERT INTO `w_user` VALUES (14,0,'a192',NULL,'825241','qichs','110108195203011311','13310120165','lib9102@163.com','3','',NULL,26,'',NULL,'100038','北京义华','北京海淀区复兴路83号','','1','Y');
INSERT INTO `w_user` VALUES (15,1,'a193',NULL,'scia','123','12321324','fasfasdygu','fagda@fgasg.com','','',NULL,29,'',NULL,'','ewra','awer','','1','Y');
INSERT INTO `w_user` VALUES (17,0,'a195',NULL,'1','erwqr','qerq','qerq','dfd@com.cn','2','dfadaffaa',NULL,33,'dafdaf',NULL,'fadasfa','eqr','qrq','dfadfaafafas','1','Y');
INSERT INTO `w_user` VALUES (18,1,'a196','平平','wang','平平','362202198601141030','13590269880','wanghaiping@scia.com.cn','1','hthyerhyhr',NULL,34,'ryret',NULL,'','fsaf asf','fdafsdasf','rtwtr','1','Y');
INSERT INTO `w_user` VALUES (19,0,'a197',NULL,'123','a183','4414000022114','1235','2@s.com','1','',NULL,36,'',NULL,'','ddf','ddd','','1','Y');
INSERT INTO `w_user` VALUES (20,0,'a198',NULL,'b','a','a','a','a@126.com','','',NULL,38,'',NULL,'','a','a','','1','Y');
INSERT INTO `w_user` VALUES (21,0,'xiaolz',NULL,'1','小李子','1','153','1@126.com','1, 2','',NULL,39,'1',NULL,'1','1','1','','1','Y');
INSERT INTO `w_user` VALUES (22,0,'lizhi500',NULL,'2','1','1','1aaa','1@126.com','1','',NULL,40,'',NULL,'1','1','1','1','1','Y');
INSERT INTO `w_user` VALUES (23,0,'lizhi800',NULL,'1','李治','1111','153','hant@yhdiglib.com.cn','1, 2','',NULL,41,'',NULL,'1','1','1','','1','Y');
INSERT INTO `w_user` VALUES (24,0,'abc1',NULL,'1','李生','441402191111111202','123','12@d.com','3','',NULL,42,'',NULL,'','dd','dd','','1','Y');
INSERT INTO `w_user` VALUES (25,0,'todaypresent1',NULL,'cymisgood','陈明','440105199011225776','13602421752','197191976@qq.com','1','',NULL,43,'',NULL,'','SCIA','SCIA','','1','Y');
INSERT INTO `w_user` VALUES (26,1,'cheshi0001',NULL,'a2222222','测试0001','210111111111111111','15311111111','hant@yhdiglib.com.cn','1','欢乐大家庭欢乐大家庭',NULL,45,'604325604325',NULL,'111112','测试部门测试部门','上地上地','不告诉你不告诉你','1','Y');
INSERT INTO `w_user` VALUES (27,1,'wanghaipinping','王海平','wanghaiping88263','王海平','362202198601141030','13590269880','wanghaiping@scia.com.cn','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (28,0,'lizhi',NULL,'1','李治','44111111111111111333','12345678901','li@scia.com.cn','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (29,1,'todaypresent',NULL,'cymisgood','陈宇明','440105199011225775','13828412619','197191976@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (30,1,'amy_wang7',NULL,'12345678','王海梅','320721198910192429','13760356820','352921847@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (31,1,'linxiao',NULL,'linxiao159894','林晓','445281199206230227','15989416342','15989416342@163.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (32,0,'qq',NULL,'q123456789','qq','1234567890457678855','123876542354','qmingq@hotmail.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (33,0,'百度',NULL,'qinjian123','秦健','110108198302066338','13718997667','qinjian@baidu.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (34,0,'MCT_791213',NULL,'MCT791213','马成潭','441423197812134217','13510717559','chtmlawyer@163.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (35,0,'ZengYing',NULL,'zy13826562288','曾颖','440301199112217526','13826562288','ving_1221@126.com','1','',NULL,0,'',NULL,'','北京市东元（深圳）律师事务所','','','1','Y');
INSERT INTO `w_user` VALUES (36,1,'北京市东元（深圳）律师事务所',NULL,'dongyuan2015','温燕玲','440923198903016567','13530558247','424385627@qq.com','1','',NULL,0,'',NULL,'518000','北京市东元（深圳）律师事务所','福田区新洲十一街139号中央西谷大厦1001','','1','Y');
INSERT INTO `w_user` VALUES (37,0,'xuduo',NULL,'kdm2613757','许多','440401197812110968','13075607959','kdm2k@21cn.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (38,0,'testvk',NULL,'840715xr','维可','222222999999993223','13456789876','ade@126.com','2','简介\r\njianjie2',NULL,0,'100987',NULL,'100085','海','海淀','','1','Y');
INSERT INTO `w_user` VALUES (39,0,'ajing_wu',NULL,'easou8888','吴阿静','430681198710017323','13823587201','330966709@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (40,1,'ycjn21',NULL,'chs821029','陈宏松','441581198209184336','15986746061','15986746061@139.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (41,1,'Kimberly ZHANG',NULL,'GC20150130','张金梅','440811198801242343','15976876865','Kimberly.ZHANG@homecredit.cn','2','开展经济信息咨询业务',NULL,52,'0755-28973391',NULL,'518000','深圳捷信一号咨询有限公司','深圳市福田区益田路免税商务大厦塔楼10楼1单元','0755-21515960 ext.3799','1','Y');
INSERT INTO `w_user` VALUES (42,1,'rongfanxun2015',NULL,'wsy110725','荣蕃训','420104197809221221','18666210895','147896817@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (43,1,'xierongqiang',NULL,'4rfvbgt5','谢容强','350823198906150019','15019450860','ray615@163.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (44,1,'广东泽康律师事务所',NULL,'zk12345678','刘知航','440602198902110617','18520943993','liuzhihang11@foxmail.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (45,1,'yoyosee123',NULL,'xs84563979','吴正霞','370282198601133622','18682120715','1278742177@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (46,1,'linxiajuan',NULL,'210278MOMO','林霞娟','440811198511160040','13632527853','347819661@qq.com','2','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (47,1,'lipeiran',NULL,'19840430','李沛然','410105198404300115','18675596511','lipeiran@cn.kwm.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (48,1,'chchkf',NULL,'01058497','黄晓燕','342225198606087046','13510597067','727919128@163.com','2','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (49,1,'zhaojun',NULL,'wanjin_4554','赵君','440301198706284924','15817379493','zhaojun_chn@163.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (50,1,'guqianqiu',NULL,'sj20150207','顾千秋','320705198009113513','18068831878','33253026@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (51,1,'arlin',NULL,'05021120Arlin','宋琳','440301198811307825','18676726687','songl@jiadesen.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (52,1,'chunqiang_0404',NULL,'wang61612344','王春强','310108196304042418','13901932764','chun.qiang@aliyun.com','1','',NULL,120,'021-62555919',NULL,'200041','上海市合信律师事务所','上海市南京西路555号五五五商厦1003室','021-62555100、62583131','1','Y');
INSERT INTO `w_user` VALUES (53,1,'smiles',NULL,'smiles1976','梁波','420121197609080010','13825777714','smles_leung@126.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (54,1,'liruizhi0755',NULL,'ashley123456',' 李睿智','420984198808150062','15989868682','liruizhi0712@163.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (55,1,'chowfang',NULL,'zy951215','周芳','440104196610143712','13602825872','chowfang1966@sina.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (56,1,'menglijia',NULL,'kingandwood1773','蒙丽佳','441623198911291328','13902977232','menglijia@cn.kingandwood.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (57,1,'huangguiyong',NULL,'huangwen13602445598','黄贵勇','440822197504096719','13600092911','13600092911@139.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (58,0,'ashley',NULL,'ashley0755','李睿智','420984198808150062','15989868682','liruizhi@grandall.com.cn','2','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (59,1,'lkyatjtc',NULL,'landh100122','刘开宇','420102197710060621','13823366220','liukaiyu@allbrightlaw.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (60,0,'ligz0722',NULL,'Guozheng0722','李国政','610302197507143559','18721603683','li_gz@163.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (61,1,'wxj2520068',NULL,'wxj252006800','王秀娟','340823199001280428','18718560711','664881632@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (62,0,'tig_ho',NULL,'755101Tig','贺虎','430421197505100011','18902455862','tig_ho@hotmail.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (63,0,'Ameco',NULL,'handihexia2','张霄','130203198101232149','15001277340','zhangxiao@ameco.com.cn','2','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (64,1,'qiuxia.xu',NULL,'xqx619619','许秋霞','44030619871006044X','13480152225','qiuxia.xu@dachenglaw.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (65,1,'dexin',NULL,'8565903zy','赵越','220104197508172027','13570831913','yuezhao75@163.com','2','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (66,1,'黄霁',NULL,'huangji19901111','黄霁','440507199011110040','18928420691','huangji@dehenglaw.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (67,0,'sinacom2015',NULL,'sinacom12','陈晓敏','362232197412251255','13686868231','niuzai805@126.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (68,1,'chzfzx',NULL,'112324CAO','曹慧珍','652301197507095561','13760275925','chzfzx@163.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (69,1,'shengyikeji',NULL,'pcy2219609','彭艳林','432927198009050029','13580861083','juefei0905@126.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (70,0,'help',NULL,'help0help','董佳豪','610322199303091931','15013603699','helperhaps@163.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (71,1,'vic_gyw',NULL,'1478523a','郭延伟','410883198403223514','13417372194','vic_gyw@163.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (72,0,'gzyangyan',NULL,'xuyang1220','杨焱','522501197505051671','13708530065','gzyangyan@139.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (73,0,'oo990',NULL,'1q1q1q1q','张三','330001198910100001','13900139000','ads@df.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (74,0,'oopp0',NULL,'1q2w3e4r','必须','330000190009091111','13800138000','sdf@ddc.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (75,1,'林婷兰',NULL,'qazwsx199011','林婷兰','360622199011130761','13662587385','lin.tinglan@jingtian.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (76,1,'crucychen',NULL,'Chenyang1981','陈阳','511325198108022254','18688988830','crucy.chen@orbotech.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (77,1,'李玉艳',NULL,'yuyan870628','李玉艳','430223198706289144','13691863739','li.yuyan@jingtian.com','1','',NULL,0,'',NULL,'518038','','深圳市福田区深南大道2012号深圳证券交易所34层3407单元','','1','Y');
INSERT INTO `w_user` VALUES (78,0,'po09',NULL,'1q2w3e4r','23333','330000190010111111','13800012222','dsf@cdfa.coom','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (79,1,'lwj',NULL,'Zzc20100201','廖文静','440301197908162744','13510009816','liaowenjing@allbrightlaw.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (80,0,'houlibao',NULL,'fa123456','dd','322422222222223333','13597804444','13597804444@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (81,0,'dsr1',NULL,'dsr12345','dsr1','1234567890123433333','12345674901','1@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (82,0,'dsr2',NULL,'dsr123456','dsr','123456789098765432','111111111111111','1@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (83,0,'jessie_fan',NULL,'123456qiqi','樊奇娟','320122198105230027','13316918868','27540239@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (84,1,'zhongqianyi',NULL,'zhongqianyi9585','zhongqianyi','440184199508050662','13590341241','190956647@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (85,0,'王明月',NULL,'wangmingyue123','王明月','412726199408216747','13728638915','897100030@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (86,0,'hant_0001',NULL,'a1111111','韩涛_0001','210111111111111111','15321761026','hant@yhdiglib.com.cn','1','',NULL,154,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (87,0,'awd',NULL,'asd123456','ddddd','dddddddddddddddddddddd','ddddddddddddddd','dd@qq.com','1','',NULL,156,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (88,0,'ruby',NULL,'scia123456','ruby','22222222222111111ddd','1111111111111','glsjgla@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (89,0,'zhongqianyi0',NULL,'13590341241a','钟倩怡','558497155954050662','11557955225','111111111@qq.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (90,0,'xuaibin',NULL,'741212zxq','徐爱滨','110105197401021828','13651136920','xuaibinzhan@sohu.com','1','',NULL,159,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (91,1,'lianhefazhan',NULL,'lhfz0717','李战良','44010519651127211X','13825068138','lianhefazhan@21cn.com','1','',NULL,0,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (92,0,'tanyuan',NULL,'tanyuan12','谭园','422827199206171812','13597806885','1107343014@qq.com','1','',NULL,160,'',NULL,'','','','','1','Y');
INSERT INTO `w_user` VALUES (93,0,'shenzhen',NULL,'shen1234','ty','lafja;jga;lgjlajgal;','gjagja;jgaljgl;','13597806885@163.com','1','',NULL,0,'',NULL,'','','','','1','Y');

--
-- Dumping routines for database 'zc_extranet'
--
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fun_partyinfo_1`(`rcode` VARCHAR(20) CHARSET gbk) RETURNS varchar(500) CHARSET utf8
    NO SQL
BEGIN
  declare retu varchar(500);
  declare i varchar(4);
  set retu = "";
	select count(*) into i from party where apply_code = rcode and partytype=1;
	if i != 0 then select  GROUP_CONCAT(partyname)    into retu from party where apply_code = rcode and used='Y' and partytype=1 GROUP BY apply_code order by id asc;
        end if;
  return retu;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fun_partyinfo_2`(`rcode` VARCHAR(20) CHARSET gbk) RETURNS varchar(500) CHARSET utf8
    NO SQL
BEGIN
  declare retu varchar(500);
  declare i varchar(4);
  set retu = "";
	select count(*) into i from party where apply_code = rcode and partytype=2;
	if i != 0 then select  GROUP_CONCAT(partyname)    into retu from party where apply_code = rcode and used='Y' and partytype=2 GROUP BY apply_code order by id asc;
        end if;
  return retu;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-05  0:18:56
