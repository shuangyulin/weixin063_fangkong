/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootgcwim
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootgcwim` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootgcwim`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootgcwim/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootgcwim/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootgcwim/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussfangkongzhishi` */

DROP TABLE IF EXISTS `discussfangkongzhishi`;

CREATE TABLE `discussfangkongzhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='防控知识评论表';

/*Data for the table `discussfangkongzhishi` */

insert  into `discussfangkongzhishi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-05-16 10:16:45',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussfangkongzhishi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-05-16 10:16:45',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussfangkongzhishi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-05-16 10:16:45',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussfangkongzhishi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-05-16 10:16:45',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussfangkongzhishi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-05-16 10:16:45',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussfangkongzhishi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-05-16 10:16:45',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fangkongzhishi` */

DROP TABLE IF EXISTS `fangkongzhishi`;

CREATE TABLE `fangkongzhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jianshu` varchar(200) DEFAULT NULL COMMENT '简述',
  `zhishishipin` varchar(200) DEFAULT NULL COMMENT '知识视频',
  `zhishineirong` longtext COMMENT '知识内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='防控知识';

/*Data for the table `fangkongzhishi` */

insert  into `fangkongzhishi`(`id`,`addtime`,`biaoti`,`tupian`,`jianshu`,`zhishishipin`,`zhishineirong`,`fabushijian`,`thumbsupnum`,`crazilynum`) values (21,'2021-05-16 10:16:45','标题1','http://localhost:8080/springbootgcwim/upload/fangkongzhishi_tupian1.jpg','简述1','','知识内容1','2021-05-16 10:16:45',1,1);
insert  into `fangkongzhishi`(`id`,`addtime`,`biaoti`,`tupian`,`jianshu`,`zhishishipin`,`zhishineirong`,`fabushijian`,`thumbsupnum`,`crazilynum`) values (22,'2021-05-16 10:16:45','标题2','http://localhost:8080/springbootgcwim/upload/fangkongzhishi_tupian2.jpg','简述2','','知识内容2','2021-05-16 10:16:45',2,2);
insert  into `fangkongzhishi`(`id`,`addtime`,`biaoti`,`tupian`,`jianshu`,`zhishishipin`,`zhishineirong`,`fabushijian`,`thumbsupnum`,`crazilynum`) values (23,'2021-05-16 10:16:45','标题3','http://localhost:8080/springbootgcwim/upload/fangkongzhishi_tupian3.jpg','简述3','','知识内容3','2021-05-16 10:16:45',3,3);
insert  into `fangkongzhishi`(`id`,`addtime`,`biaoti`,`tupian`,`jianshu`,`zhishishipin`,`zhishineirong`,`fabushijian`,`thumbsupnum`,`crazilynum`) values (24,'2021-05-16 10:16:45','标题4','http://localhost:8080/springbootgcwim/upload/fangkongzhishi_tupian4.jpg','简述4','','知识内容4','2021-05-16 10:16:45',4,4);
insert  into `fangkongzhishi`(`id`,`addtime`,`biaoti`,`tupian`,`jianshu`,`zhishishipin`,`zhishineirong`,`fabushijian`,`thumbsupnum`,`crazilynum`) values (25,'2021-05-16 10:16:45','标题5','http://localhost:8080/springbootgcwim/upload/fangkongzhishi_tupian5.jpg','简述5','','知识内容5','2021-05-16 10:16:45',5,5);
insert  into `fangkongzhishi`(`id`,`addtime`,`biaoti`,`tupian`,`jianshu`,`zhishishipin`,`zhishineirong`,`fabushijian`,`thumbsupnum`,`crazilynum`) values (26,'2021-05-16 10:16:45','标题6','http://localhost:8080/springbootgcwim/upload/fangkongzhishi_tupian6.jpg','简述6','','知识内容6','2021-05-16 10:16:45',6,6);

/*Table structure for table `jiankangshangbao` */

DROP TABLE IF EXISTS `jiankangshangbao`;

CREATE TABLE `jiankangshangbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `dangritiwen` varchar(200) NOT NULL COMMENT '当日体温',
  `shifoubushi` varchar(200) DEFAULT NULL COMMENT '是否不适',
  `youwufare` varchar(200) DEFAULT NULL COMMENT '有无发热',
  `yichangqingkuang` longtext COMMENT '异常情况',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='健康上报';

/*Data for the table `jiankangshangbao` */

insert  into `jiankangshangbao`(`id`,`addtime`,`bianhao`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shenfenzheng`,`shouji`,`zhuzhi`,`dangritiwen`,`shifoubushi`,`youwufare`,`yichangqingkuang`,`fabushijian`,`sfsh`,`shhf`,`userid`) values (41,'2021-05-16 10:16:45','编号1','名称1','用户名1','姓名1','年龄1','身份证1','手机1','住址1','当日体温1','是','有','异常情况1','2021-05-16','是','',1);
insert  into `jiankangshangbao`(`id`,`addtime`,`bianhao`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shenfenzheng`,`shouji`,`zhuzhi`,`dangritiwen`,`shifoubushi`,`youwufare`,`yichangqingkuang`,`fabushijian`,`sfsh`,`shhf`,`userid`) values (42,'2021-05-16 10:16:45','编号2','名称2','用户名2','姓名2','年龄2','身份证2','手机2','住址2','当日体温2','是','有','异常情况2','2021-05-16','是','',2);
insert  into `jiankangshangbao`(`id`,`addtime`,`bianhao`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shenfenzheng`,`shouji`,`zhuzhi`,`dangritiwen`,`shifoubushi`,`youwufare`,`yichangqingkuang`,`fabushijian`,`sfsh`,`shhf`,`userid`) values (43,'2021-05-16 10:16:45','编号3','名称3','用户名3','姓名3','年龄3','身份证3','手机3','住址3','当日体温3','是','有','异常情况3','2021-05-16','是','',3);
insert  into `jiankangshangbao`(`id`,`addtime`,`bianhao`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shenfenzheng`,`shouji`,`zhuzhi`,`dangritiwen`,`shifoubushi`,`youwufare`,`yichangqingkuang`,`fabushijian`,`sfsh`,`shhf`,`userid`) values (44,'2021-05-16 10:16:45','编号4','名称4','用户名4','姓名4','年龄4','身份证4','手机4','住址4','当日体温4','是','有','异常情况4','2021-05-16','是','',4);
insert  into `jiankangshangbao`(`id`,`addtime`,`bianhao`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shenfenzheng`,`shouji`,`zhuzhi`,`dangritiwen`,`shifoubushi`,`youwufare`,`yichangqingkuang`,`fabushijian`,`sfsh`,`shhf`,`userid`) values (45,'2021-05-16 10:16:45','编号5','名称5','用户名5','姓名5','年龄5','身份证5','手机5','住址5','当日体温5','是','有','异常情况5','2021-05-16','是','',5);
insert  into `jiankangshangbao`(`id`,`addtime`,`bianhao`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shenfenzheng`,`shouji`,`zhuzhi`,`dangritiwen`,`shifoubushi`,`youwufare`,`yichangqingkuang`,`fabushijian`,`sfsh`,`shhf`,`userid`) values (46,'2021-05-16 10:16:45','编号6','名称6','用户名6','姓名6','年龄6','身份证6','手机6','住址6','当日体温6','是','有','异常情况6','2021-05-16','是','',6);

/*Table structure for table `juanzengxinxi` */

DROP TABLE IF EXISTS `juanzengxinxi`;

CREATE TABLE `juanzengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `juanzengjine` int(11) NOT NULL COMMENT '捐赠金额',
  `juanzengshijian` datetime DEFAULT NULL COMMENT '捐赠时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='捐赠信息';

/*Data for the table `juanzengxinxi` */

insert  into `juanzengxinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`juanzengjine`,`juanzengshijian`,`yonghuming`,`xingming`,`ispay`,`userid`) values (61,'2021-05-16 10:16:45','编号1','标题1',1,'2021-05-16 10:16:45','用户名1','姓名1','未支付',1);
insert  into `juanzengxinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`juanzengjine`,`juanzengshijian`,`yonghuming`,`xingming`,`ispay`,`userid`) values (62,'2021-05-16 10:16:45','编号2','标题2',2,'2021-05-16 10:16:45','用户名2','姓名2','未支付',2);
insert  into `juanzengxinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`juanzengjine`,`juanzengshijian`,`yonghuming`,`xingming`,`ispay`,`userid`) values (63,'2021-05-16 10:16:45','编号3','标题3',3,'2021-05-16 10:16:45','用户名3','姓名3','未支付',3);
insert  into `juanzengxinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`juanzengjine`,`juanzengshijian`,`yonghuming`,`xingming`,`ispay`,`userid`) values (64,'2021-05-16 10:16:45','编号4','标题4',4,'2021-05-16 10:16:45','用户名4','姓名4','未支付',4);
insert  into `juanzengxinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`juanzengjine`,`juanzengshijian`,`yonghuming`,`xingming`,`ispay`,`userid`) values (65,'2021-05-16 10:16:45','编号5','标题5',5,'2021-05-16 10:16:45','用户名5','姓名5','未支付',5);
insert  into `juanzengxinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`juanzengjine`,`juanzengshijian`,`yonghuming`,`xingming`,`ispay`,`userid`) values (66,'2021-05-16 10:16:45','编号6','标题6',6,'2021-05-16 10:16:45','用户名6','姓名6','未支付',6);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-05-16 10:16:45','标题1','简介1','http://localhost:8080/springbootgcwim/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (82,'2021-05-16 10:16:45','标题2','简介2','http://localhost:8080/springbootgcwim/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (83,'2021-05-16 10:16:45','标题3','简介3','http://localhost:8080/springbootgcwim/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (84,'2021-05-16 10:16:45','标题4','简介4','http://localhost:8080/springbootgcwim/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (85,'2021-05-16 10:16:45','标题5','简介5','http://localhost:8080/springbootgcwim/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (86,'2021-05-16 10:16:45','标题6','简介6','http://localhost:8080/springbootgcwim/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','1fkuho3lr0v1c1iyq471afnbabwvasfh','2021-05-16 10:30:40','2021-05-16 11:30:41');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-16 10:16:45');

/*Table structure for table `yiliaojuanzeng` */

DROP TABLE IF EXISTS `yiliaojuanzeng`;

CREATE TABLE `yiliaojuanzeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `mubiaojine` int(11) NOT NULL COMMENT '目标金额',
  `juanzengjine` int(11) NOT NULL COMMENT '捐赠金额',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `juankuanneirong` longtext COMMENT '捐款内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='医疗捐赠';

/*Data for the table `yiliaojuanzeng` */

insert  into `yiliaojuanzeng`(`id`,`addtime`,`biaoti`,`tupian`,`mubiaojine`,`juanzengjine`,`fabushijian`,`juankuanneirong`) values (51,'2021-05-16 10:16:45','标题1','http://localhost:8080/springbootgcwim/upload/yiliaojuanzeng_tupian1.jpg',1,1,'2021-05-16','捐款内容1');
insert  into `yiliaojuanzeng`(`id`,`addtime`,`biaoti`,`tupian`,`mubiaojine`,`juanzengjine`,`fabushijian`,`juankuanneirong`) values (52,'2021-05-16 10:16:45','标题2','http://localhost:8080/springbootgcwim/upload/yiliaojuanzeng_tupian2.jpg',2,2,'2021-05-16','捐款内容2');
insert  into `yiliaojuanzeng`(`id`,`addtime`,`biaoti`,`tupian`,`mubiaojine`,`juanzengjine`,`fabushijian`,`juankuanneirong`) values (53,'2021-05-16 10:16:45','标题3','http://localhost:8080/springbootgcwim/upload/yiliaojuanzeng_tupian3.jpg',3,3,'2021-05-16','捐款内容3');
insert  into `yiliaojuanzeng`(`id`,`addtime`,`biaoti`,`tupian`,`mubiaojine`,`juanzengjine`,`fabushijian`,`juankuanneirong`) values (54,'2021-05-16 10:16:45','标题4','http://localhost:8080/springbootgcwim/upload/yiliaojuanzeng_tupian4.jpg',4,4,'2021-05-16','捐款内容4');
insert  into `yiliaojuanzeng`(`id`,`addtime`,`biaoti`,`tupian`,`mubiaojine`,`juanzengjine`,`fabushijian`,`juankuanneirong`) values (55,'2021-05-16 10:16:45','标题5','http://localhost:8080/springbootgcwim/upload/yiliaojuanzeng_tupian5.jpg',5,5,'2021-05-16','捐款内容5');
insert  into `yiliaojuanzeng`(`id`,`addtime`,`biaoti`,`tupian`,`mubiaojine`,`juanzengjine`,`fabushijian`,`juankuanneirong`) values (56,'2021-05-16 10:16:45','标题6','http://localhost:8080/springbootgcwim/upload/yiliaojuanzeng_tupian6.jpg',6,6,'2021-05-16','捐款内容6');

/*Table structure for table `yiyuanxinxi` */

DROP TABLE IF EXISTS `yiyuanxinxi`;

CREATE TABLE `yiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `yiyuantupian` varchar(200) DEFAULT NULL COMMENT '医院图片',
  `diqu` varchar(200) NOT NULL COMMENT '地区',
  `fuwushijian` varchar(200) DEFAULT NULL COMMENT '服务时间',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yiyuanjianjie` longtext COMMENT '医院简介',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='医院信息';

/*Data for the table `yiyuanxinxi` */

insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`biaoqian`,`yiyuantupian`,`diqu`,`fuwushijian`,`lianxidianhua`,`yiyuanjianjie`,`longitude`,`latitude`,`fulladdress`) values (31,'2021-05-16 10:16:45','医院名称1','标签1','http://localhost:8080/springbootgcwim/upload/yiyuanxinxi_yiyuantupian1.jpg','地区1','服务时间1','020-89819991','医院简介1',1,1,'宇宙银河系地球1号');
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`biaoqian`,`yiyuantupian`,`diqu`,`fuwushijian`,`lianxidianhua`,`yiyuanjianjie`,`longitude`,`latitude`,`fulladdress`) values (32,'2021-05-16 10:16:45','医院名称2','标签2','http://localhost:8080/springbootgcwim/upload/yiyuanxinxi_yiyuantupian2.jpg','地区2','服务时间2','020-89819992','医院简介2',2,2,'宇宙银河系地球2号');
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`biaoqian`,`yiyuantupian`,`diqu`,`fuwushijian`,`lianxidianhua`,`yiyuanjianjie`,`longitude`,`latitude`,`fulladdress`) values (33,'2021-05-16 10:16:45','医院名称3','标签3','http://localhost:8080/springbootgcwim/upload/yiyuanxinxi_yiyuantupian3.jpg','地区3','服务时间3','020-89819993','医院简介3',3,3,'宇宙银河系地球3号');
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`biaoqian`,`yiyuantupian`,`diqu`,`fuwushijian`,`lianxidianhua`,`yiyuanjianjie`,`longitude`,`latitude`,`fulladdress`) values (34,'2021-05-16 10:16:45','医院名称4','标签4','http://localhost:8080/springbootgcwim/upload/yiyuanxinxi_yiyuantupian4.jpg','地区4','服务时间4','020-89819994','医院简介4',4,4,'宇宙银河系地球4号');
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`biaoqian`,`yiyuantupian`,`diqu`,`fuwushijian`,`lianxidianhua`,`yiyuanjianjie`,`longitude`,`latitude`,`fulladdress`) values (35,'2021-05-16 10:16:45','医院名称5','标签5','http://localhost:8080/springbootgcwim/upload/yiyuanxinxi_yiyuantupian5.jpg','地区5','服务时间5','020-89819995','医院简介5',5,5,'宇宙银河系地球5号');
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`biaoqian`,`yiyuantupian`,`diqu`,`fuwushijian`,`lianxidianhua`,`yiyuanjianjie`,`longitude`,`latitude`,`fulladdress`) values (36,'2021-05-16 10:16:45','医院名称6','标签6','http://localhost:8080/springbootgcwim/upload/yiyuanxinxi_yiyuantupian6.jpg','地区6','服务时间6','020-89819996','医院简介6',6,6,'宇宙银河系地球6号');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`shenfenzheng`,`shouji`,`youxiang`) values (11,'2021-05-16 10:16:45','用户1','123456','姓名1','男','http://localhost:8080/springbootgcwim/upload/yonghu_touxiang1.jpg','年龄1','440300199101010001','13823888881','773890001@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`shenfenzheng`,`shouji`,`youxiang`) values (12,'2021-05-16 10:16:45','用户2','123456','姓名2','男','http://localhost:8080/springbootgcwim/upload/yonghu_touxiang2.jpg','年龄2','440300199202020002','13823888882','773890002@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`shenfenzheng`,`shouji`,`youxiang`) values (13,'2021-05-16 10:16:45','用户3','123456','姓名3','男','http://localhost:8080/springbootgcwim/upload/yonghu_touxiang3.jpg','年龄3','440300199303030003','13823888883','773890003@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`shenfenzheng`,`shouji`,`youxiang`) values (14,'2021-05-16 10:16:45','用户4','123456','姓名4','男','http://localhost:8080/springbootgcwim/upload/yonghu_touxiang4.jpg','年龄4','440300199404040004','13823888884','773890004@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`shenfenzheng`,`shouji`,`youxiang`) values (15,'2021-05-16 10:16:45','用户5','123456','姓名5','男','http://localhost:8080/springbootgcwim/upload/yonghu_touxiang5.jpg','年龄5','440300199505050005','13823888885','773890005@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`shenfenzheng`,`shouji`,`youxiang`) values (16,'2021-05-16 10:16:45','用户6','123456','姓名6','男','http://localhost:8080/springbootgcwim/upload/yonghu_touxiang6.jpg','年龄6','440300199606060006','13823888886','773890006@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
