-- MySQL dump 10.13  Distrib 5.7.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coursedesign
-- ------------------------------------------------------
-- Server version	5.7.44-log

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
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `pay_id` varchar(50) DEFAULT NULL COMMENT '支付ID',
  `value` varchar(500) DEFAULT NULL COMMENT '文字信息',
  `feedbacks_time` varchar(30) DEFAULT NULL COMMENT '时间',
  `feedbacks_status` int(11) DEFAULT NULL COMMENT '类型（1投诉、0建议、-1反馈）',
  `orders_id` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `feedbacks_id` varchar(50) NOT NULL COMMENT '投诉、建议、反馈信息ID（主键、随机码）',
  `solve_status` int(11) DEFAULT NULL COMMENT '管理员处理状态（1已处理、0未处理、-1不予处理）',
  `solve_value` varchar(500) DEFAULT NULL COMMENT '管理员处理结果信息',
  `name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  PRIMARY KEY (`feedbacks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a','2a7fad7e-4624-4fbc-b186-b16a628236d7','2a7fad7e-4624-4fbc-b186-b16a628236d7','123','2023/12/19 下午8:23:12',3,'080e38f7-f422-4979-946b-d82167139248','3709d98c-7d0b-44bc-8197-fb61aba39c7b',1,'嗯','匡威低帮男鞋'),('324021bf-aa22-4388-b442-b034a8b6123a','2a7fad7e-4624-4fbc-b186-b16a628236d7','2a7fad7e-4624-4fbc-b186-b16a628236d7','这鞋坏了还拿出来卖','2023/12/19 下午5:12:22',1,'080e38f7-f422-4979-946b-d82167139248','dfc64137-9d03-4664-b811-5d86de5afb47',0,'','匡威低帮男鞋'),('79831d90-4f7b-440b-b6e7-bc7766c2edb7','8c5b5a4c-0728-4775-9c3a-3bebd210a698','8c5b5a4c-0728-4775-9c3a-3bebd210a698','商讨如何认识哇','2023/12/19 下午5:31:48',1,'f56a0405-a0e0-4a1b-9332-df084598b2c2','eed92d92-3a8c-4d3c-bd7c-18c46ad73e66',1,'','excelsior 饼干鞋');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `goods_id` varchar(50) NOT NULL COMMENT '商品ID（主键，随机码）',
  `dscrip` varchar(500) DEFAULT NULL COMMENT '商品介绍信息',
  `price` double DEFAULT NULL COMMENT '商品价格',
  `goods_level` double DEFAULT NULL COMMENT '商品新旧程度',
  `up_status` int(11) DEFAULT NULL COMMENT '上架状态',
  `use_status` int(11) DEFAULT NULL COMMENT '可用状态',
  `hot` double DEFAULT NULL COMMENT '热度信息',
  `name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a','0d9160f9-bcc1-4e07-bed0-1809be3fafbf','多姿多彩的瓷器是中国古代的伟大发明之一，\"瓷器\"与\"中国\"在英文中同为一词，充分说明中国瓷器的精美绝伦完全可以作为中国的代表。 ',25,92,1,1,0,'瓷器碗'),('324021bf-aa22-4388-b442-b034a8b6123a','2a7fad7e-4624-4fbc-b186-b16a628236d7','集复古、流行、环保于一身的ALL STAR帆布鞋，是美国文化的精神象征，以其随心所欲，自由自在没有约束的穿着形态，更成为追求自我时尚的青年人的忠实拍档。',450,96,1,1,0,'匡威低帮男鞋'),('324021bf-aa22-4388-b442-b034a8b6123a','5a8dc2e8-666b-48f4-90d4-96999d7a5e1a','我不喜欢这个世界我只喜欢你 乔一青春暖心故事集暖萌甜宠恋爱 都市爱情青春小说暖心故事 恋爱成长回忆',28,80,1,1,0,'不喜世界 只喜欢你'),('324021bf-aa22-4388-b442-b034a8b6123a','7e82e230-ceac-488e-bd84-22999b268c2c','iPhone 11 Pro是美国Apple（苹果公司）第一支命名为Pro的手机，采用后置三摄设计，配色有暗夜绿、太空灰、银白色和金色四款。售价8699起。二手91新7800，赶快行动。',7800,91,1,1,0,'Iphone 11 Pro'),('324021bf-aa22-4388-b442-b034a8b6123a','8a5cc3bc-3469-40d9-8f96-f4e38094a8d2','Steam平台是Valve公司聘请BitTorrent(BT下载)发明者布拉姆·科恩亲自开发设计的游戏平台。Steam平台是目前全球最大的综合性数字发行平台之一。',206,99,1,1,0,'Steam 特卖'),('324021bf-aa22-4388-b442-b034a8b6123a','8a60cde4-8fa4-4d61-b7c7-3594825fe459','立马车业集团有限公司是专业从事新能源交通工具产品研发、生产制造、应用推广于一体的大型集团化高新技术企业。是中国电动车行业最具影响力的品牌。',1500,75,1,1,0,'立马摩托车'),('324021bf-aa22-4388-b442-b034a8b6123a','8c5b5a4c-0728-4775-9c3a-3bebd210a698','源起于最初的硫化鞋工业，但为了展现“比高还要更高”的热情与希望，这样的硫化鞋品牌成为“EXCELSIOR”。',349,95,1,1,0,'excelsior 饼干鞋'),('324021bf-aa22-4388-b442-b034a8b6123a','96f03b18-b293-4122-b929-3160ec3a0e58','自1854年以来，代代相传至今的路易威登，以卓越品质、杰出创意和精湛工艺成为时尚旅行艺术的象征 。产品包括手提包，旅行用品，小型皮具，配饰，鞋履，成衣，腕表，高级珠宝及个性化订制服务等。',19988,95,1,1,0,'LV 手提包'),('324021bf-aa22-4388-b442-b034a8b6123a','a984563b-e7af-4161-bfae-e4c04c7e8f76','棉衣女2023冬季新款韩版短款面包服宽松加厚学生羽绒棉服小棉袄潮',168,95,1,1,0,'棉衣女'),('324021bf-aa22-4388-b442-b034a8b6123a','adf374a4-4833-48b8-a56d-c0501a5418fe','工装裤本来是男装，但时装化后却更受女孩子的喜爱。工装裤是休闲的、青春的、男孩子气的。',98.99,96,1,1,0,'休闲工装裤男'),('324021bf-aa22-4388-b442-b034a8b6123a','c265cdfe-3d0e-4368-b44a-1401546b8396','Converse诞生于1908年。创办以来Converse坚持品牌的独立性设计，不追随。最初只生产“橡胶鞋”，但很快就开始做网球和篮球鞋。匡威全球总部正式落地美国波士顿。',345,91,1,1,0,'匡威高帮帆布鞋'),('324021bf-aa22-4388-b442-b034a8b6123a','c28992ba-823f-43c8-a0f9-82fac4271c4a','华为P30，是华为公司旗下一款手机。手机搭载海思Kirin 980处理器，屏幕为6.1英寸，分辨率2340*1080像素。 摄像头最大30倍数码变焦。',3000,95,1,1,0,'HUAWEI华为P30'),('324021bf-aa22-4388-b442-b034a8b6123a','d71920f7-2c18-4758-92c0-d0285d56bad6','百褶裙蝴蝶结打底裙秋冬内搭复古碎花连衣裙长袖修身显瘦a字裙潮',189,97,1,1,0,'日系轻熟女装'),('324021bf-aa22-4388-b442-b034a8b6123a','dd879579-4ca8-451b-93c9-b00929633b49','回忆森林春秋日系文艺复古学生工装夹克白色牛仔宽松短外套女上衣',108,99,1,1,0,'学生工装女上衣');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodsurl`
--

DROP TABLE IF EXISTS `goodsurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goodsurl` (
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `img_url` varchar(200) DEFAULT NULL COMMENT '商品图片URL信息',
  `img_id` varchar(50) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodsurl`
--

LOCK TABLES `goodsurl` WRITE;
/*!40000 ALTER TABLE `goodsurl` DISABLE KEYS */;
INSERT INTO `goodsurl` VALUES ('d71920f7-2c18-4758-92c0-d0285d56bad6','H:/imgUpload/45.jpg','05da8dcb-c576-4b02-94da-b1cc7a518ba3'),('a984563b-e7af-4161-bfae-e4c04c7e8f76','H:/imgUpload/27.jpg','0a3ee26d-3889-41d3-b72c-2b18dfd8f8b9'),('8c5b5a4c-0728-4775-9c3a-3bebd210a698','H:/imgUpload/19.jpg','141293cc-7e37-4dee-b409-fa14d2d24875'),('a984563b-e7af-4161-bfae-e4c04c7e8f76','H:/imgUpload/28.jpg','176b9770-65ab-43c3-9f87-10f4cc28bb1b'),('8a60cde4-8fa4-4d61-b7c7-3594825fe459','H:/imgUpload/15.jpg','28b292c1-f527-4643-b310-cfddf2943703'),('0d9160f9-bcc1-4e07-bed0-1809be3fafbf','H:/imgUpload/1.jpg','29cedd43-5d6e-43b0-ace4-ba4ddace9384'),('dd879579-4ca8-451b-93c9-b00929633b49','H:/imgUpload/48.jpg','2bd354f9-d8d3-450b-b8ad-cebb2b8dc883'),('8a60cde4-8fa4-4d61-b7c7-3594825fe459','H:/imgUpload/16.jpg','33d02bd4-fa5a-454c-a85a-12b0d99346f8'),('8a5cc3bc-3469-40d9-8f96-f4e38094a8d2','H:/imgUpload/13.png','3b69f77d-0fc1-4397-87b3-da640248386c'),('8a5cc3bc-3469-40d9-8f96-f4e38094a8d2','H:/imgUpload/14.png','41acfa80-6727-4c9c-ae2d-e68e2f550309'),('8a60cde4-8fa4-4d61-b7c7-3594825fe459','H:/imgUpload/17.jpg','4246c6a6-55d6-4437-b531-3b6138765ffb'),('7e82e230-ceac-488e-bd84-22999b268c2c','H:/imgUpload/10.jpg','44c0a685-6226-46ae-826a-679b1da6b5f9'),('dd879579-4ca8-451b-93c9-b00929633b49','H:/imgUpload/49.jpg','460f5ac1-e102-4601-939d-6564ec10884b'),('c265cdfe-3d0e-4368-b44a-1401546b8396','H:/imgUpload/37.jpg','4be2964b-7096-47f9-91a4-ffaa8b14965f'),('5a8dc2e8-666b-48f4-90d4-96999d7a5e1a','H:/imgUpload/8.jpg','5009703e-2674-422a-9a24-72ff518e35e5'),('c28992ba-823f-43c8-a0f9-82fac4271c4a','H:/imgUpload/40.jpg','51003712-e998-4ca9-bcfa-1675cadb3e6d'),('2a7fad7e-4624-4fbc-b186-b16a628236d7','H:/imgUpload/3.jpg','51a0d408-8de5-414c-b79e-f900a384b1b9'),('c265cdfe-3d0e-4368-b44a-1401546b8396','H:/imgUpload/36.jpg','624ce2d3-2fe4-4087-89e2-02d9d70b3bdb'),('7e82e230-ceac-488e-bd84-22999b268c2c','H:/imgUpload/11.jpg','6740d865-5d26-48c3-831b-81fe559ba4ae'),('7e82e230-ceac-488e-bd84-22999b268c2c','H:/imgUpload/12.jpg','67a7152b-08fb-4ae8-93f8-9a7616907be6'),('c265cdfe-3d0e-4368-b44a-1401546b8396','H:/imgUpload/35.jpg','6c62a0e8-32bb-4000-aadb-26dd66ebb7a5'),('dd879579-4ca8-451b-93c9-b00929633b49','H:/imgUpload/46.jpg','70bb657a-f5a1-488f-9a89-30e1ebdb5e75'),('a984563b-e7af-4161-bfae-e4c04c7e8f76','H:/imgUpload/29.jpg','72854d7e-782e-485e-9707-4ae1963e6441'),('a984563b-e7af-4161-bfae-e4c04c7e8f76','H:/imgUpload/30.jpg','729a8d48-7741-4d48-88e6-67e14af633fc'),('2a7fad7e-4624-4fbc-b186-b16a628236d7','H:/imgUpload/4.jpg','7866e69f-3713-448b-8a19-59419d32df27'),('adf374a4-4833-48b8-a56d-c0501a5418fe','H:/imgUpload/33.jpg','8e2c26bf-5b7f-444e-bb8d-e9c237f8d2e0'),('0d9160f9-bcc1-4e07-bed0-1809be3fafbf','H:/imgUpload/2.jpg','906fb3f1-c17a-400c-b37f-b0eb255f6158'),('2a7fad7e-4624-4fbc-b186-b16a628236d7','H:/imgUpload/5.jpg','9781caaa-4d98-4b27-bf7b-3bffc7168a49'),('8c5b5a4c-0728-4775-9c3a-3bebd210a698','H:/imgUpload/20.jpg','9843bd29-ef77-40f6-89a2-5e4bb41f6a5a'),('96f03b18-b293-4122-b929-3160ec3a0e58','H:/imgUpload/25.jpg','9b288641-4b60-42d3-bc86-0a19f6e24375'),('5a8dc2e8-666b-48f4-90d4-96999d7a5e1a','H:/imgUpload/7.jpg','a1129923-b0ea-47fa-92e8-e68aa2d659d1'),('96f03b18-b293-4122-b929-3160ec3a0e58','H:/imgUpload/24.jpg','a246b388-c616-4545-8289-7ce1a5c5ccf4'),('96f03b18-b293-4122-b929-3160ec3a0e58','H:/imgUpload/23.jpg','ab130a7a-837b-49f8-9fe4-297a4b423876'),('c265cdfe-3d0e-4368-b44a-1401546b8396','H:/imgUpload/38.jpg','ad6e1ac1-6a0c-4a13-aae8-9200eea9e899'),('d71920f7-2c18-4758-92c0-d0285d56bad6','H:/imgUpload/42.jpg','b088b073-89fd-420c-832c-4f1981d8cf7e'),('c28992ba-823f-43c8-a0f9-82fac4271c4a','H:/imgUpload/39.jpg','c036c94c-cc29-451d-8ffa-7fff1077a639'),('adf374a4-4833-48b8-a56d-c0501a5418fe','H:/imgUpload/31.jpg','c07e7b3d-d665-41ac-a7c9-04099b6a6061'),('8a60cde4-8fa4-4d61-b7c7-3594825fe459','H:/imgUpload/18.jpg','c3cf754e-87c5-4999-9c33-cc41ba3c93ed'),('d71920f7-2c18-4758-92c0-d0285d56bad6','H:/imgUpload/43.jpg','c55b1beb-54ff-4fdb-bccc-fb3f88c0e043'),('dd879579-4ca8-451b-93c9-b00929633b49','H:/imgUpload/47.jpg','d6424669-c0e7-4dc1-8976-2f74b25daa6f'),('5a8dc2e8-666b-48f4-90d4-96999d7a5e1a','H:/imgUpload/9.jpg','d75b3023-bad0-4311-a390-121bc6756acf'),('d71920f7-2c18-4758-92c0-d0285d56bad6','H:/imgUpload/44.jpg','d8b04034-2c62-41c5-9e8c-c4ca8d8b1856'),('adf374a4-4833-48b8-a56d-c0501a5418fe','H:/imgUpload/34.jpg','dbc79233-7526-47d8-ab6f-805089e62c66'),('8c5b5a4c-0728-4775-9c3a-3bebd210a698','H:/imgUpload/21.jpg','e0ff2fdc-7843-43c2-93ab-df3ed5cd908a'),('8c5b5a4c-0728-4775-9c3a-3bebd210a698','H:/imgUpload/22.jpg','e27dbff5-0119-4eef-b10c-88b034f2666d'),('adf374a4-4833-48b8-a56d-c0501a5418fe','H:/imgUpload/32jpg','e4cea2db-47c4-4ea5-9587-ca3c95e7173e'),('c28992ba-823f-43c8-a0f9-82fac4271c4a','H:/imgUpload/41.jpg','e581054f-d4e6-4e43-8d50-9c0bf49b3e78'),('96f03b18-b293-4122-b929-3160ec3a0e58','H:/imgUpload/26.jpg','e8241af8-bd21-4c53-aaaa-22a6620579c0'),('2a7fad7e-4624-4fbc-b186-b16a628236d7','H:/imgUpload/6.jpg','fdb09616-67c1-45fa-bea7-89459deb4dba');
/*!40000 ALTER TABLE `goodsurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `orders_status` int(11) DEFAULT NULL COMMENT '订单状态（1已完成、0未完成、-1有异议）',
  `price` double DEFAULT NULL COMMENT '商品价格',
  `pay_id` varchar(50) DEFAULT NULL COMMENT '支付ID',
  `orders_id` varchar(50) NOT NULL COMMENT '订单ID（主键、随机码）',
  `admin_status` int(11) DEFAULT NULL COMMENT '处理状态（1已处理、0未处理）',
  `time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a','2a7fad7e-4624-4fbc-b186-b16a628236d7',0,450,'ffbce577-6388-4445-af44-81c911c8c6e4','080e38f7-f422-4979-946b-d82167139248',0,'2023年12月19日'),('79831d90-4f7b-440b-b6e7-bc7766c2edb7','dd879579-4ca8-451b-93c9-b00929633b49',0,108,'6a77f7b2-4602-4e8c-9214-3ccd1a65edbc','2184d944-4d7a-408d-9886-202ead91dcc3',0,'2023年12月19日'),('79831d90-4f7b-440b-b6e7-bc7766c2edb7','adf374a4-4833-48b8-a56d-c0501a5418fe',0,98.99,'a2e276d1-5f24-4faa-bee7-542b3e0494be','2a35d530-26cb-410c-98aa-b016fede4700',0,'2023年12月19日'),('324021bf-aa22-4388-b442-b034a8b6123a','5a8dc2e8-666b-48f4-90d4-96999d7a5e1a',0,28,'ea34b746-0d1d-4150-8bd6-62698f59a79a','3eb671df-768f-4eb0-80ed-b63e23c4bd41',0,'2023年12月19日'),('324021bf-aa22-4388-b442-b034a8b6123a','8a5cc3bc-3469-40d9-8f96-f4e38094a8d2',0,206,'60ea4a9e-9700-4cbb-8a06-ab8d5bbccb2c','64af1308-3b1d-4b4d-992e-f25b5c8d27f9',0,'2023年12月19日'),('324021bf-aa22-4388-b442-b034a8b6123a','8c5b5a4c-0728-4775-9c3a-3bebd210a698',0,349,'6952a7d7-aea0-4a2e-b89a-45eaa56d9678','7167cc99-666f-4a1c-94fc-e4bac62cc386',0,'2023年12月19日'),('324021bf-aa22-4388-b442-b034a8b6123a','c265cdfe-3d0e-4368-b44a-1401546b8396',0,345,'57150ba1-dff4-423d-a2bc-58f0e9226eb5','87c971b0-bd59-49a0-9d64-ccbaaf6fc79e',0,'2023年12月19日'),('324021bf-aa22-4388-b442-b034a8b6123a','96f03b18-b293-4122-b929-3160ec3a0e58',0,19988,'0b11ca11-0e07-4006-8003-457c0ebf1d18','954afa6d-5d25-4406-9d71-043a27dd6539',0,'2023年12月19日'),('324021bf-aa22-4388-b442-b034a8b6123a','2a7fad7e-4624-4fbc-b186-b16a628236d7',0,450,'36c57c41-5188-4f4c-860e-87b723b7c342','b3cb4a4d-2848-40bd-823c-0893e9921b0c',0,'2023年12月19日'),('324021bf-aa22-4388-b442-b034a8b6123a','7e82e230-ceac-488e-bd84-22999b268c2c',0,7800,'cb134a65-bc8f-40cc-b462-9fb76d260879','c3d8d426-749e-48a9-ad9c-dfe4a1203914',0,'2023年12月19日'),('79831d90-4f7b-440b-b6e7-bc7766c2edb7','5a8dc2e8-666b-48f4-90d4-96999d7a5e1a',0,28,'834176e7-4f59-405a-8d71-678358f3254a','e7fa7fca-7db7-40cb-aaed-0d20f4a96e41',0,'2023年12月19日'),('79831d90-4f7b-440b-b6e7-bc7766c2edb7','8c5b5a4c-0728-4775-9c3a-3bebd210a698',0,349,'3820efe0-9fd6-43a2-bfa9-a4054fa90195','f56a0405-a0e0-4a1b-9332-df084598b2c2',0,'2023年12月19日');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordersback`
--

DROP TABLE IF EXISTS `ordersback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordersback` (
  `orders_id` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `feedbacks_id` varchar(50) DEFAULT NULL COMMENT '投诉、建议、反馈信息ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordersback`
--

LOCK TABLES `ordersback` WRITE;
/*!40000 ALTER TABLE `ordersback` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordersback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `pay_id` varchar(50) NOT NULL COMMENT '支付ID（主键，随机码）',
  `price` double DEFAULT NULL COMMENT '费用',
  `status` int(11) DEFAULT NULL COMMENT '费用状态（已经转给卖家1，费用在平台0，已经退回给买家-1）',
  `pay_time` varchar(50) DEFAULT NULL COMMENT '支付时间',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `pay_status` int(11) DEFAULT NULL COMMENT '支付状态（已完成1、未完成0、有异议-1）',
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopcar`
--

DROP TABLE IF EXISTS `shopcar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopcar` (
  `user_id` varchar(50) NOT NULL,
  `goods_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopcar`
--

LOCK TABLES `shopcar` WRITE;
/*!40000 ALTER TABLE `shopcar` DISABLE KEYS */;
INSERT INTO `shopcar` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a','5a8dc2e8-666b-48f4-90d4-96999d7a5e1a');
/*!40000 ALTER TABLE `shopcar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` varchar(50) NOT NULL COMMENT '用户ID，主键（随机码）',
  `name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1男，2女）',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` int(11) DEFAULT NULL COMMENT '账户启用状态',
  `admin` int(11) DEFAULT NULL COMMENT '是否管理员账户',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('07149a73-bb83-48e5-8722-3d51b3e949a4','phenan','phenan','Lyf123456.',2,'phenanthra@stu.xmu.edu.cn',1,1),('12ebbb3f-4df4-47c7-92ee-e6988db478c1','zeyuliu','zyliu','lzy123456.',1,'2481466553@qq.com',1,1),('1977d46b-8b56-49dd-815f-3a28196dd631','yzhao','yzhao','zy123456.',1,'1023399127@qq.com',1,1),('324021bf-aa22-4388-b442-b034a8b6123a','Admin','admin','admin123!',1,'123@163.com',1,1),('61f225aa-4089-48df-af9b-646c61b7c8da','aiushdiuhasd','nuanduona','njoansdoiasd.',1,'asiod@nuasnd.cbuin',0,0),('79831d90-4f7b-440b-b6e7-bc7766c2edb7','御风','hhhhh','123456789@hyw',1,'1772228@qq.com',1,0),('8c243217-99d7-4038-aebd-3121910239d1','asdasdas','asdfddf','asdasda.',1,'asdashiu@asdnbuiand.como',0,0),('92bae3b4-0e1b-44a4-b5ab-eb55310341b0','jdasd','jdassdd','jasda1!',2,'asd@asd.c',1,0),('94e3d441-3a7b-441d-aee7-eed9807108e2','asdasbui','nuiasdina','nionioasnd.',1,'nioasnoi@nuasd.com',0,0),('9f9a3e3f-ffa2-43ce-bcb1-c922aeb0e977','asdnansdasd','jasidjioasasd','asdadsd.',1,'naiosndasdioas@asuaasd.com',0,0),('a399f7fe-e963-4c6c-981e-8e70521afac8','哇哈哈','jdassddd','adsd12!@#!',0,'asdas@asdnu.casd',0,0),('c2c0d448-607e-4b8d-9a5e-f18f9c12291c','aaa','aaa','aaa.',2,'aaa@aaa',1,1),('e7805d36-e2bc-4b81-a4e1-7dae629c6887','asdasdas','asnduiasndna','nioasndoasd.',1,'asda@cin.asdn',0,0),('e7c8e0bb-7a47-4e17-a9ff-2f2f941efc14','asdnansd','jasidjioas','ansiodhioa.',1,'naiosndioas@asuaasd.com',0,0),('ec6b94fc-dc8e-425c-bed4-df195cd99d58','nioadnian','uiasbdi','niunasd.',1,'ninasd@nuiasnd.com',0,0);
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

-- Dump completed on 2024-01-07  1:48:46
