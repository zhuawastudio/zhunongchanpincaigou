/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhunongchanpincaigou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhunongchanpincaigou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhunongchanpincaigou`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(2,3,'收货人2','17703786902','地址2',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(3,2,'收货人3','17703786903','地址3',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(4,1,'收货人4','17703786904','地址4',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(5,1,'收货人5','17703786905','地址5',2,'2023-03-13 11:12:57','2023-03-13 13:58:02','2023-03-13 11:12:57'),(6,1,'收货人6','17703786906','地址6',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(7,3,'收货人7','17703786907','地址7',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(8,3,'收货人8','17703786908','地址8',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(9,2,'收货人9','17703786909','地址9',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(10,2,'收货人10','17703786910','地址10',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(11,3,'收货人11','17703786911','地址11',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(12,2,'收货人12','17703786912','地址12',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(13,1,'收货人13','17703786913','地址13',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(14,2,'收货人14','17703786914','地址14',1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'123123','2023-03-13 14:03:00',NULL,NULL,2,1,'2023-03-13 14:03:00'),(2,1,NULL,NULL,'1231231231','2023-03-13 14:05:27',NULL,2,'2023-03-13 14:05:28');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (38,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-13 11:12:37'),(39,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-13 11:12:37'),(40,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-13 11:12:37'),(41,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-13 11:12:37'),(42,'shangjia_types','商家类型',1,'商家类型1',NULL,NULL,'2023-03-13 11:12:37'),(43,'shangjia_types','商家类型',2,'商家类型2',NULL,NULL,'2023-03-13 11:12:37'),(44,'shangjia_types','商家类型',3,'商家类型3',NULL,NULL,'2023-03-13 11:12:37'),(45,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-13 11:12:38'),(46,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-13 11:12:38'),(47,'nongchanpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-03-13 11:12:38'),(48,'nongchanpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-03-13 11:12:38'),(49,'nongchanpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-03-13 11:12:38'),(50,'nongchanpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-13 11:12:38'),(51,'nongchanpin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-13 11:12:38'),(52,'nongchanpin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-13 11:12:38'),(53,'nongchanpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-03-13 11:12:38'),(54,'nongchanpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-03-13 11:12:38'),(55,'nongchanpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-03-13 11:12:38'),(56,'nongchanpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-13 11:12:38'),(57,'nongchanpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-13 11:12:38'),(58,'nongchanpin_order_types','订单类型',106,'已拼单成功',NULL,NULL,'2023-03-13 11:12:38'),(59,'nongchanpin_order_types','订单类型',107,'拼单失败',NULL,NULL,'2023-03-13 11:12:38'),(60,'nongchanpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-03-13 11:12:38'),(61,'nongchanpin_order_payment_types','订单支付类型',3,'拼团',NULL,NULL,'2023-03-13 11:12:39'),(62,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-03-13 11:12:39'),(63,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-03-13 11:12:39'),(64,'juanzeng_types','捐赠项目类型',1,'捐赠项目类型1',NULL,NULL,'2023-03-13 11:12:39'),(65,'juanzeng_types','捐赠项目类型',2,'捐赠项目类型2',NULL,NULL,'2023-03-13 11:12:39'),(66,'juanzeng_types','捐赠项目类型',3,'捐赠项目类型3',NULL,NULL,'2023-03-13 11:12:39'),(67,'news_types','资讯类型',1,'资讯类型1',NULL,NULL,'2023-03-13 11:12:39'),(68,'news_types','资讯类型',2,'资讯类型2',NULL,NULL,'2023-03-13 11:12:39'),(69,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-13 11:12:39'),(70,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-13 11:12:39'),(71,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.11','2023-03-13 11:12:39'),(72,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2023-03-13 11:12:39'),(73,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.1','2023-03-13 11:12:39'),(74,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-13 11:12:39'),(75,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-13 11:12:39');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`shangjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',440,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',364,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',45,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',252,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(5,'帖子标题5',2,NULL,NULL,'发布内容5',462,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',57,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',468,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(8,'帖子标题8',3,NULL,NULL,'发布内容8',195,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(9,'帖子标题9',2,NULL,NULL,'发布内容9',94,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(10,'帖子标题10',2,NULL,NULL,'发布内容10',369,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(11,'帖子标题11',2,NULL,NULL,'发布内容11',37,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(12,'帖子标题12',1,NULL,NULL,'发布内容12',118,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',241,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(14,'帖子标题14',2,NULL,NULL,'发布内容14',334,1,'2023-03-13 11:12:57','2023-03-13 11:12:57','2023-03-13 11:12:57'),(15,NULL,1,NULL,NULL,'123123',14,2,'2023-03-13 13:57:21',NULL,'2023-03-13 13:57:21'),(16,NULL,NULL,1,NULL,'123123',14,2,'2023-03-13 14:03:44',NULL,'2023-03-13 14:03:44'),(17,NULL,NULL,NULL,1,'123',14,2,'2023-03-13 14:06:10',NULL,'2023-03-13 14:06:10');

/*Table structure for table `juanzeng` */

DROP TABLE IF EXISTS `juanzeng`;

CREATE TABLE `juanzeng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `juanzeng_name` varchar(200) DEFAULT NULL COMMENT '捐赠项目标题  Search111 ',
  `juanzeng_photo` varchar(200) DEFAULT NULL COMMENT '捐赠项目封面',
  `juanzeng_types` int(11) DEFAULT NULL COMMENT '捐赠项目类型 Search111',
  `juanzeng_new_money` decimal(10,2) DEFAULT NULL COMMENT '已捐金额',
  `juanzeng_content` text COMMENT '捐赠项目介绍 ',
  `juanzeng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='捐赠项目';

/*Data for the table `juanzeng` */

insert  into `juanzeng`(`id`,`juanzeng_name`,`juanzeng_photo`,`juanzeng_types`,`juanzeng_new_money`,`juanzeng_content`,`juanzeng_delete`,`insert_time`,`create_time`) values (1,'捐赠项目标题1','upload/juanzeng1.jpg',2,'24.67','捐赠项目介绍1',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(2,'捐赠项目标题2','upload/juanzeng2.jpg',1,'210.52','捐赠项目介绍2',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(3,'捐赠项目标题3','upload/juanzeng3.jpg',3,'427.06','捐赠项目介绍3',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(4,'捐赠项目标题4','upload/juanzeng4.jpg',1,'398.43','捐赠项目介绍4',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(5,'捐赠项目标题5','upload/juanzeng5.jpg',3,'302.26','捐赠项目介绍5',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(6,'捐赠项目标题6','upload/juanzeng6.jpg',1,'78.55','捐赠项目介绍6',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(7,'捐赠项目标题7','upload/juanzeng7.jpg',3,'236.35','捐赠项目介绍7',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(8,'捐赠项目标题8','upload/juanzeng1.jpg',1,'429.56','捐赠项目介绍8',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(9,'捐赠项目标题9','upload/juanzeng2.jpg',1,'66.15','捐赠项目介绍9',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(10,'捐赠项目标题10','upload/juanzeng3.jpg',3,'272.22','捐赠项目介绍10',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(11,'捐赠项目标题11','upload/juanzeng4.jpg',3,'495.11','捐赠项目介绍11',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(12,'捐赠项目标题12','upload/juanzeng5.jpg',1,'119.75','捐赠项目介绍12',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(13,'捐赠项目标题13','upload/juanzeng6.jpg',3,'1289.25','捐赠项目介绍13',1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(14,'捐赠项目标题14','upload/juanzeng7.jpg',2,'1063.60','捐赠项目介绍14',1,'2023-03-13 11:12:57','2023-03-13 11:12:57');

/*Table structure for table `juanzeng_yuyue` */

DROP TABLE IF EXISTS `juanzeng_yuyue`;

CREATE TABLE `juanzeng_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `juanzeng_id` int(11) DEFAULT NULL COMMENT '捐赠项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `juanzeng_new_money` decimal(10,2) DEFAULT NULL COMMENT '捐赠金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '捐赠时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='捐赠记录';

/*Data for the table `juanzeng_yuyue` */

insert  into `juanzeng_yuyue`(`id`,`juanzeng_id`,`yonghu_id`,`juanzeng_new_money`,`insert_time`,`create_time`) values (1,1,1,'685.27','2023-03-13 11:12:57','2023-03-13 11:12:57'),(2,2,3,'342.02','2023-03-13 11:12:57','2023-03-13 11:12:57'),(3,3,2,'287.76','2023-03-13 11:12:57','2023-03-13 11:12:57'),(4,4,2,'320.00','2023-03-13 11:12:57','2023-03-13 11:12:57'),(7,7,2,'952.72','2023-03-13 11:12:57','2023-03-13 11:12:57'),(9,9,2,'244.77','2023-03-13 11:12:57','2023-03-13 11:12:57'),(10,10,3,'360.47','2023-03-13 11:12:57','2023-03-13 11:12:57'),(12,12,3,'732.44','2023-03-13 11:12:57','2023-03-13 11:12:57'),(13,13,2,'315.29','2023-03-13 11:12:57','2023-03-13 11:12:57'),(14,14,2,'861.81','2023-03-13 11:12:57','2023-03-13 11:12:57'),(15,14,1,'999.00','2023-03-13 13:54:01','2023-03-13 13:54:01'),(16,14,1,'25.00','2023-03-13 13:57:33','2023-03-13 13:57:33'),(17,13,1,'1000.00','2023-03-22 14:11:31','2023-03-22 14:11:31');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '资讯类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '资讯详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'资讯标题1',1,'upload/news1.jpg','2023-03-13 11:12:57','资讯详情1','2023-03-13 11:12:57'),(2,'资讯标题2',2,'upload/news2.jpg','2023-03-13 11:12:57','资讯详情2','2023-03-13 11:12:57'),(3,'资讯标题3',1,'upload/news3.jpg','2023-03-13 11:12:57','资讯详情3','2023-03-13 11:12:57'),(4,'资讯标题4',2,'upload/news4.jpg','2023-03-13 11:12:57','资讯详情4','2023-03-13 11:12:57'),(5,'资讯标题5',1,'upload/news5.jpg','2023-03-13 11:12:57','资讯详情5','2023-03-13 11:12:57'),(6,'资讯标题6',1,'upload/news6.jpg','2023-03-13 11:12:57','资讯详情6','2023-03-13 11:12:57'),(7,'资讯标题7',2,'upload/news7.jpg','2023-03-13 11:12:57','资讯详情7','2023-03-13 11:12:57'),(8,'资讯标题8',2,'upload/news8.jpg','2023-03-13 11:12:57','资讯详情8','2023-03-13 11:12:57'),(9,'资讯标题9',1,'upload/news9.jpg','2023-03-13 11:12:57','资讯详情9','2023-03-13 11:12:57'),(10,'资讯标题10',2,'upload/news10.jpg','2023-03-13 11:12:57','资讯详情10','2023-03-13 11:12:57'),(11,'资讯标题11',1,'upload/news11.jpg','2023-03-13 11:12:57','资讯详情11','2023-03-13 11:12:57'),(12,'资讯标题12',1,'upload/news12.jpg','2023-03-13 11:12:57','资讯详情12','2023-03-13 11:12:57'),(13,'资讯标题13',1,'upload/news13.jpg','2023-03-13 11:12:57','资讯详情13','2023-03-13 11:12:57'),(14,'资讯标题14',1,'upload/news14.jpg','2023-03-13 11:12:57','资讯详情14','2023-03-13 11:12:57');

/*Table structure for table `nongchanpin` */

DROP TABLE IF EXISTS `nongchanpin`;

CREATE TABLE `nongchanpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `nongchanpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `nongchanpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `nongchanpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `nongchanpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `nongchanpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `nongchanpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `nongchanpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `nongchanpin_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `nongchanpin_pintuan` int(11) DEFAULT NULL COMMENT '拼团限制/人',
  `nongchanpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `nongchanpin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `nongchanpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `nongchanpin` */

insert  into `nongchanpin`(`id`,`shangjia_id`,`nongchanpin_name`,`nongchanpin_uuid_number`,`nongchanpin_photo`,`nongchanpin_types`,`nongchanpin_kucun_number`,`nongchanpin_old_money`,`nongchanpin_new_money`,`nongchanpin_price`,`nongchanpin_pintuan`,`nongchanpin_clicknum`,`zan_number`,`cai_number`,`nongchanpin_content`,`shangxia_types`,`nongchanpin_delete`,`insert_time`,`create_time`) values (1,1,'商品名称1','1678677177187','upload/nongchanpin1.jpg',1,101,'547.89','353.50',155,3,86,375,19,'商品介绍1',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(2,1,'商品名称2','1678677177143','upload/nongchanpin2.jpg',2,102,'729.39','171.87',165,3,259,91,386,'商品介绍2',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(3,1,'商品名称3','1678677177158','upload/nongchanpin3.jpg',2,103,'797.75','460.63',367,3,69,339,262,'商品介绍3',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(4,1,'商品名称4','1678677177162','upload/nongchanpin4.jpg',2,104,'662.33','459.17',352,3,277,414,311,'商品介绍4',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(5,2,'商品名称5','1678677177165','upload/nongchanpin5.jpg',2,105,'595.14','400.31',388,3,194,88,278,'商品介绍5',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(6,2,'商品名称6','1678677177123','upload/nongchanpin6.jpg',3,106,'633.13','324.80',320,3,53,423,126,'商品介绍6',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(7,3,'商品名称7','1678677177184','upload/nongchanpin7.jpg',1,104,'925.91','68.85',218,3,74,256,259,'商品介绍7',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(8,3,'商品名称8','1678677177196','upload/nongchanpin8.jpg',1,107,'903.19','270.93',36,3,490,456,110,'商品介绍8',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(9,2,'商品名称9','1678677177150','upload/nongchanpin9.jpg',2,109,'677.83','262.60',80,3,154,85,82,'商品介绍9',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(10,2,'商品名称10','1678677177216','upload/nongchanpin10.jpg',1,1009,'940.78','413.80',282,3,475,226,429,'商品介绍10',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(11,3,'商品名称11','1678677177160','upload/nongchanpin11.jpg',1,1011,'587.63','460.20',229,3,479,22,196,'商品介绍11',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(12,1,'商品名称12','1678677177195','upload/nongchanpin12.jpg',2,1011,'804.57','415.59',467,3,460,352,251,'商品介绍12',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(13,3,'商品名称13','1678677177194','upload/nongchanpin13.jpg',3,1013,'996.33','313.28',283,3,5,379,129,'商品介绍13',1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(14,1,'商品名称14','1678677177147','upload/nongchanpin14.jpg',2,1014,'737.69','367.68',423,3,150,383,3,'商品介绍14',2,1,'2023-03-13 11:12:57','2023-03-13 11:12:57');

/*Table structure for table `nongchanpin_collection` */

DROP TABLE IF EXISTS `nongchanpin_collection`;

CREATE TABLE `nongchanpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `nongchanpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `nongchanpin_collection` */

insert  into `nongchanpin_collection`(`id`,`nongchanpin_id`,`yonghu_id`,`nongchanpin_collection_types`,`insert_time`,`create_time`) values (2,2,1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(3,3,1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(4,4,2,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(5,5,1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(6,6,3,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(8,8,1,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(9,9,3,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(10,10,2,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(11,11,2,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(12,12,3,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(13,13,3,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(14,14,3,1,'2023-03-13 11:12:57','2023-03-13 11:12:57'),(15,11,1,2,'2023-03-13 13:41:21','2023-03-13 13:41:21'),(17,14,1,2,'2023-03-13 13:57:07','2023-03-13 13:57:07');

/*Table structure for table `nongchanpin_commentback` */

DROP TABLE IF EXISTS `nongchanpin_commentback`;

CREATE TABLE `nongchanpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `nongchanpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `nongchanpin_commentback` */

insert  into `nongchanpin_commentback`(`id`,`nongchanpin_id`,`yonghu_id`,`nongchanpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-03-13 11:12:57','回复信息1','2023-03-13 11:12:57','2023-03-13 11:12:57'),(2,2,2,'评价内容2','2023-03-13 11:12:57','回复信息2','2023-03-13 11:12:57','2023-03-13 11:12:57'),(3,3,2,'评价内容3','2023-03-13 11:12:57','回复信息3','2023-03-13 11:12:57','2023-03-13 11:12:57'),(4,4,1,'评价内容4','2023-03-13 11:12:57','回复信息4','2023-03-13 11:12:57','2023-03-13 11:12:57'),(5,5,3,'评价内容5','2023-03-13 11:12:57','回复信息5','2023-03-13 11:12:57','2023-03-13 11:12:57'),(6,6,3,'评价内容6','2023-03-13 11:12:57','回复信息6','2023-03-13 11:12:57','2023-03-13 11:12:57'),(7,7,3,'评价内容7','2023-03-13 11:12:57','回复信息7','2023-03-13 11:12:57','2023-03-13 11:12:57'),(8,8,1,'评价内容8','2023-03-13 11:12:57','回复信息8','2023-03-13 11:12:57','2023-03-13 11:12:57'),(9,9,1,'评价内容9','2023-03-13 11:12:57','回复信息9','2023-03-13 11:12:57','2023-03-13 11:12:57'),(10,10,3,'评价内容10','2023-03-13 11:12:57','回复信息10','2023-03-13 11:12:57','2023-03-13 11:12:57'),(11,11,3,'评价内容11','2023-03-13 11:12:57','回复信息11','2023-03-13 11:12:57','2023-03-13 11:12:57'),(12,12,1,'评价内容12','2023-03-13 11:12:57','回复信息12','2023-03-13 11:12:57','2023-03-13 11:12:57'),(14,14,2,'评价内容14','2023-03-13 11:12:57','回复信息14','2023-03-13 11:12:57','2023-03-13 11:12:57'),(15,12,1,'12312312312','2023-03-13 14:04:03','123123','2023-03-13 14:04:45','2023-03-13 14:04:03');

/*Table structure for table `nongchanpin_order` */

DROP TABLE IF EXISTS `nongchanpin_order`;

CREATE TABLE `nongchanpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '拼团结束时间',
  `nongchanpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `nongchanpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `nongchanpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `nongchanpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `nongchanpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `nongchanpin_order` */

insert  into `nongchanpin_order`(`id`,`nongchanpin_order_uuid_number`,`address_id`,`nongchanpin_id`,`yonghu_id`,`buy_number`,`jiezhi_time`,`nongchanpin_order_true_price`,`nongchanpin_order_courier_name`,`nongchanpin_order_courier_number`,`nongchanpin_order_types`,`nongchanpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1678686124477',5,12,1,1,'2023-03-13 15:42:04','407.28',NULL,NULL,106,3,'2023-03-13 13:42:04','2023-03-13 13:42:04'),(2,'1678686124477',5,12,1,1,'2023-03-13 15:42:04','265.51','JD','12313125213434234234',103,3,'2023-03-13 13:42:04','2023-03-13 13:42:04'),(3,'1678686124477',5,12,1,1,'2023-03-13 15:42:04','405.52','123','123',105,3,'2023-03-13 13:42:04','2023-03-13 13:42:04'),(4,'1678686124477',5,7,1,1,'2023-03-13 15:42:05','67.47',NULL,NULL,106,3,'2023-03-13 13:42:05','2023-03-13 13:42:05'),(5,'1678687170860',5,7,1,1,'2023-03-13 15:59:31',NULL,NULL,NULL,106,3,'2023-03-13 13:59:31','2023-03-13 13:59:31'),(6,'1678687170860',5,4,1,1,'2023-03-13 15:59:31',NULL,NULL,NULL,102,3,'2023-03-13 13:59:31','2023-03-13 13:59:31'),(7,'1678687170860',5,14,1,1,'2023-03-13 11:59:31',NULL,NULL,NULL,102,3,'2023-03-13 13:59:31','2023-03-13 13:59:31'),(8,'1678687261659',5,7,1,1,'2023-03-13 16:01:02',NULL,NULL,NULL,106,3,'2023-03-13 14:01:02','2023-03-13 14:01:02');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_types` int(11) DEFAULT NULL COMMENT '商家类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','upload/shangjia1.jpg',2,'931.84','商家介绍1',1,'2023-03-13 11:12:57'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',3,'1093.38','商家介绍2',1,'2023-03-13 11:12:57'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',2,'732.08','商家介绍3',1,'2023-03-13 11:12:57');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','azhv06q2c01369yndofonwkpylmjx221','2023-03-13 13:08:54','2023-03-13 15:08:54'),(2,1,'a1','yonghu','用户','atbe1o2fmu8qfyafevnl2xu2wdd0phc3','2023-03-13 13:24:49','2023-03-22 15:05:09'),(3,1,'a1','shangjia','商家','wnltq2gh8j3qpzzvz3h64uhe9gks12l4','2023-03-13 14:03:04','2023-03-13 15:03:05'),(4,4,'123','yonghu','用户','55cyfgmv0gnf3tur5mjbt5hvkypf7od7','2023-03-21 17:56:25','2023-03-21 18:56:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','98707.76','1781.00','781.00',1,'2023-03-13 11:12:57'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','715.14','861.04','861.04',1,'2023-03-13 11:12:57'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','15.81','928.72','928.72',1,'2023-03-13 11:12:57');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
