/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm75fch
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm75fch` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm75fch`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm75fch/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm75fch/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm75fch/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/ssm75fch/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/ssm75fch/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussgonggaoxinxi` */

DROP TABLE IF EXISTS `discussgonggaoxinxi`;

CREATE TABLE `discussgonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公告信息评论表';

/*Data for the table `discussgonggaoxinxi` */

insert  into `discussgonggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1,'2020-12-28 09:01:19',1,1,'评论内容1','回复内容1'),(2,'2020-12-28 09:01:19',2,2,'评论内容2','回复内容2'),(3,'2020-12-28 09:01:19',3,3,'评论内容3','回复内容3'),(4,'2020-12-28 09:01:19',4,4,'评论内容4','回复内容4'),(5,'2020-12-28 09:01:19',5,5,'评论内容5','回复内容5'),(6,'2020-12-28 09:01:19',6,6,'评论内容6','回复内容6');

/*Table structure for table `discussleqi` */

DROP TABLE IF EXISTS `discussleqi`;

CREATE TABLE `discussleqi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609117711403 DEFAULT CHARSET=utf8 COMMENT='乐器评论表';

/*Data for the table `discussleqi` */

insert  into `discussleqi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1,'2020-12-28 09:01:19',1,1,'评论内容1','回复内容1'),(2,'2020-12-28 09:01:19',2,2,'评论内容2','回复内容2'),(3,'2020-12-28 09:01:19',3,3,'评论内容3','回复内容3'),(4,'2020-12-28 09:01:19',4,4,'评论内容4','回复内容4'),(5,'2020-12-28 09:01:19',5,5,'评论内容5','回复内容5'),(6,'2020-12-28 09:01:19',6,6,'评论内容6','回复内容6'),(1609117711402,'2020-12-28 09:08:30',3,1,'666','');

/*Table structure for table `discussleqizhishi` */

DROP TABLE IF EXISTS `discussleqizhishi`;

CREATE TABLE `discussleqizhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='乐器知识评论表';

/*Data for the table `discussleqizhishi` */

insert  into `discussleqizhishi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1,'2020-12-28 09:01:19',1,1,'评论内容1','回复内容1'),(2,'2020-12-28 09:01:19',2,2,'评论内容2','回复内容2'),(3,'2020-12-28 09:01:19',3,3,'评论内容3','回复内容3'),(4,'2020-12-28 09:01:19',4,4,'评论内容4','回复内容4'),(5,'2020-12-28 09:01:19',5,5,'评论内容5','回复内容5'),(6,'2020-12-28 09:01:19',6,6,'评论内容6','回复内容6');

/*Table structure for table `discussleshixinxi` */

DROP TABLE IF EXISTS `discussleshixinxi`;

CREATE TABLE `discussleshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='乐室信息评论表';

/*Data for the table `discussleshixinxi` */

insert  into `discussleshixinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1,'2020-12-28 09:01:19',1,1,'评论内容1','回复内容1'),(2,'2020-12-28 09:01:19',2,2,'评论内容2','回复内容2'),(3,'2020-12-28 09:01:19',3,3,'评论内容3','回复内容3'),(4,'2020-12-28 09:01:19',4,4,'评论内容4','回复内容4'),(5,'2020-12-28 09:01:19',5,5,'评论内容5','回复内容5'),(6,'2020-12-28 09:01:19',6,6,'评论内容6','回复内容6');

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) NOT NULL COMMENT '公告类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`gonggaobiaoti`,`gonggaoleixing`,`tupian`,`neirong`,`faburiqi`) values (1,'2020-12-28 09:01:19','公告标题1','公告类型1','http://localhost:8080/ssm75fch/upload/gonggaoxinxi_tupian1.jpg','内容1','2020-12-28'),(2,'2020-12-28 09:01:19','公告标题2','公告类型2','http://localhost:8080/ssm75fch/upload/gonggaoxinxi_tupian2.jpg','内容2','2020-12-28'),(3,'2020-12-28 09:01:19','公告标题3','公告类型3','http://localhost:8080/ssm75fch/upload/gonggaoxinxi_tupian3.jpg','内容3','2020-12-28'),(4,'2020-12-28 09:01:19','公告标题4','公告类型4','http://localhost:8080/ssm75fch/upload/gonggaoxinxi_tupian4.jpg','内容4','2020-12-28'),(5,'2020-12-28 09:01:19','公告标题5','公告类型5','http://localhost:8080/ssm75fch/upload/gonggaoxinxi_tupian5.jpg','内容5','2020-12-28'),(6,'2020-12-28 09:01:19','公告标题6','公告类型6','http://localhost:8080/ssm75fch/upload/gonggaoxinxi_tupian6.jpg','内容6','2020-12-28');

/*Table structure for table `leqi` */

DROP TABLE IF EXISTS `leqi`;

CREATE TABLE `leqi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leqibianhao` varchar(200) NOT NULL COMMENT '乐器编号',
  `leqimingcheng` varchar(200) NOT NULL COMMENT '乐器名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `mingshiyanzou` varchar(200) DEFAULT NULL COMMENT '名师演奏',
  `leshimingcheng` varchar(200) DEFAULT NULL COMMENT '乐室名称',
  `guimo` varchar(200) DEFAULT NULL COMMENT '规模',
  `leshiweizhi` varchar(200) DEFAULT NULL COMMENT '乐室位置',
  `leqixiangqing` longtext COMMENT '乐器详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leqibianhao` (`leqibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='乐器';

/*Data for the table `leqi` */

insert  into `leqi`(`id`,`addtime`,`leqibianhao`,`leqimingcheng`,`fenlei`,`tupian`,`mingshiyanzou`,`leshimingcheng`,`guimo`,`leshiweizhi`,`leqixiangqing`) values (1,'2020-12-28 09:01:19','乐器编号1','乐器名称1','分类1','http://localhost:8080/ssm75fch/upload/leqi_tupian1.jpg','','乐室名称1','规模1','乐室位置1','乐器详情1'),(2,'2020-12-28 09:01:19','乐器编号2','乐器名称2','分类2','http://localhost:8080/ssm75fch/upload/leqi_tupian2.jpg','','乐室名称2','规模2','乐室位置2','乐器详情2'),(3,'2020-12-28 09:01:19','乐器编号3','架子鼓','打击乐','http://localhost:8080/ssm75fch/upload/1609117521114.jpg','http://localhost:8080/ssm75fch/upload/1609117588283.mp4','乐室名称3','规模3','乐室位置3','<p>	架子鼓即爵士鼓，是爵士乐队中十分重要的一种打击乐器，它通常由一个脚踏的低音大鼓（Bass Drum，又称“底鼓”）、一个军鼓、二个或以上嗵嗵鼓（Tom-Tom Drum）、一个或两个吊镲（Crash Cymbal）、一个节奏镲（Ride Cymbal）和一个带踏板的踩镲（Hi-Hat）等部分组成。当然有时因演奏需要会增设一些如牛铃、木鱼、沙槌、三角铁、音树，不管增设多少器件，都是由一人演奏。鼓手用鼓槌击打各部件使其发声。爵士乐中常用的鼓槌有木制的鼓棒，由钢丝制成的鼓刷，由一捆细木条捆成的束棒等。</p><p>	架子鼓形成于20世纪40年代，它包含着各种不同类型、不同音色的手击乐器和脚击乐器。手击乐器有<a href=\"https://baike.baidu.com/item/%E5%B0%8F%E9%BC%93/4306387\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">小鼓</a>、嗵鼓、<a href=\"https://baike.baidu.com/item/%E5%90%8A%E9%95%B2/15657808\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">吊镲</a>等，脚击乐器有<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E9%BC%93/24541\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大鼓</a>、踩镲。在此基础上，根据演奏的需要、可随时增减附加打击乐器。在乐队中鼓手掌握着乐曲的速度和节奏等重要环节，尤其是在<a href=\"https://baike.baidu.com/item/%E7%88%B5%E5%A3%AB%E4%B9%90\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">爵士乐</a>中，鼓手特别需要与其他<a href=\"https://baike.baidu.com/item/%E4%B9%90%E6%89%8B/9076776\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">乐手</a>保持默契的合作状态</p>'),(4,'2020-12-28 09:01:19','乐器编号4','电吉他','弹拨乐','http://localhost:8080/ssm75fch/upload/1609117547436.jpg','http://localhost:8080/ssm75fch/upload/1609117597957.mp4','乐室名称4','规模4','乐室位置4','<p>	结构特征</p><p>	一把电吉他从区域上来看，由<strong>琴头</strong>，<strong>琴颈</strong>，<strong>琴身</strong>组成（也有少数电吉他采用无琴头的结构设计，这种情况下调音就需要单独的装置）。</p><p>	组成电吉他的全部零件包括了：木制结构件（琴身、琴颈、琴头），金属件（调音旋钮、琴桥、琴颈调整钢条、摇把、琴枕等），电器元件（拾音器，旋钮，换挡开关，6.35mm接口，电路以及其中的电子元件等），琴弦，以及其他一些辅助元件。</p><p>	琴弦</p><p>	电吉他一般认为有6根弦，最高音弦（最细弦）被认作1弦，最低音弦（最粗弦）被认作6弦。 电吉他琴弦的音高由震动的3要素决定：有效弦长，弦上拉力，材料。</p>'),(5,'2020-12-28 09:01:19','乐器编号5','乐器名称5','分类5','http://localhost:8080/ssm75fch/upload/leqi_tupian5.jpg','','乐室名称5','规模5','乐室位置5','乐器详情5'),(6,'2020-12-28 09:01:19','乐器编号6','萨克斯','吹奏乐','http://localhost:8080/ssm75fch/upload/1609117567521.jpg','http://localhost:8080/ssm75fch/upload/1609117609127.mp4','乐室名称6','规模6','乐室位置6','<p>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">萨克斯是由比利时人</span>	<a href=\"https://baike.baidu.com/item/%E9%98%BF%E9%81%93%E5%A4%AB%C2%B7%E8%90%A8%E5%85%8B%E6%96%AF/2769553\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">阿道夫·萨克斯</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">（Antoine-Joseph Sax,1814-1894）于1840年发明的。阿道夫是一位锐意的乐器制造者，擅长</span>	<a href=\"https://baike.baidu.com/item/%E9%BB%91%E7%AE%A1/7218673\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">黑管</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">和</span>	<a href=\"https://baike.baidu.com/item/%E9%95%BF%E7%AC%9B/111710\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">长笛</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">演奏。他最初的设想是为</span>	<a href=\"https://baike.baidu.com/item/%E7%AE%A1%E5%BC%A6%E4%B9%90%E9%98%9F/261540\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">管弦乐队</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">设计一种低音乐器，比奥菲克莱德号（Ophicleide）吹奏灵活并能适应室外演出。他将</span>	<a href=\"https://baike.baidu.com/item/%E4%BD%8E%E9%9F%B3%E5%8D%95%E7%B0%A7%E7%AE%A1/8616007\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(19, 110, 194);\">低音单簧管</a>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">的吹嘴和奥菲克莱德号的管身结合在一起并加以改进，以自己名字命名了这种新型乐器。</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">中国萨克斯爱好者正在急剧增加，中国萨克斯在七八十年代开始发展，到二十世纪末才开始在国内有厂家开始生产，距今已有25年历史</span></p>');

/*Table structure for table `leqifenlei` */

DROP TABLE IF EXISTS `leqifenlei`;

CREATE TABLE `leqifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1609117486525 DEFAULT CHARSET=utf8 COMMENT='乐器分类';

/*Data for the table `leqifenlei` */

insert  into `leqifenlei`(`id`,`addtime`,`fenlei`) values (1,'2020-12-28 09:01:19','吹奏乐'),(2,'2020-12-28 09:01:19','弹拨乐'),(3,'2020-12-28 09:01:19','打击乐'),(4,'2020-12-28 09:01:19','拉弦乐'),(5,'2020-12-28 09:01:19','弦乐'),(6,'2020-12-28 09:01:19','木管乐'),(1609117482036,'2020-12-28 09:04:41','铜管乐'),(1609117486524,'2020-12-28 09:04:46','键盘乐');

/*Table structure for table `leqizhishi` */

DROP TABLE IF EXISTS `leqizhishi`;

CREATE TABLE `leqizhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leqimingcheng` varchar(200) DEFAULT NULL COMMENT '乐器名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `ziliaofujian` varchar(200) DEFAULT NULL COMMENT '资料附件',
  `leqizhishi` longtext COMMENT '乐器知识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='乐器知识';

/*Data for the table `leqizhishi` */

insert  into `leqizhishi`(`id`,`addtime`,`leqimingcheng`,`fenlei`,`tupian`,`ziliaofujian`,`leqizhishi`) values (1,'2020-12-28 09:01:19','乐器名称1','分类1','http://localhost:8080/ssm75fch/upload/leqizhishi_tupian1.jpg','','乐器知识1'),(2,'2020-12-28 09:01:19','乐器名称2','分类2','http://localhost:8080/ssm75fch/upload/leqizhishi_tupian2.jpg','','乐器知识2'),(3,'2020-12-28 09:01:19','乐器名称3','分类3','http://localhost:8080/ssm75fch/upload/leqizhishi_tupian3.jpg','','乐器知识3'),(4,'2020-12-28 09:01:19','乐器名称4','分类4','http://localhost:8080/ssm75fch/upload/leqizhishi_tupian4.jpg','','乐器知识4'),(5,'2020-12-28 09:01:19','乐器名称5','分类5','http://localhost:8080/ssm75fch/upload/leqizhishi_tupian5.jpg','','乐器知识5'),(6,'2020-12-28 09:01:19','乐器名称6','分类6','http://localhost:8080/ssm75fch/upload/leqizhishi_tupian6.jpg','','乐器知识6');

/*Table structure for table `leshixinxi` */

DROP TABLE IF EXISTS `leshixinxi`;

CREATE TABLE `leshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leshibianhao` varchar(200) NOT NULL COMMENT '乐室编号',
  `leshimingcheng` varchar(200) NOT NULL COMMENT '乐室名称',
  `guimo` varchar(200) DEFAULT NULL COMMENT '规模',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `leshizhuangtai` varchar(200) DEFAULT NULL COMMENT '乐室状态',
  `leqishebei` varchar(200) DEFAULT NULL COMMENT '乐器设备',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `yuyuejiage` int(11) NOT NULL COMMENT '预约价格',
  `leshiweizhi` varchar(200) DEFAULT NULL COMMENT '乐室位置',
  `leshixiangqing` longtext COMMENT '乐室详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leshibianhao` (`leshibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='乐室信息';

/*Data for the table `leshixinxi` */

insert  into `leshixinxi`(`id`,`addtime`,`leshibianhao`,`leshimingcheng`,`guimo`,`tupian`,`leshizhuangtai`,`leqishebei`,`keyueshijian`,`yuyuejiage`,`leshiweizhi`,`leshixiangqing`,`clicktime`,`clicknum`) values (1,'2020-12-28 09:01:19','乐室编号1','乐室名称1','大型','http://localhost:8080/ssm75fch/upload/leshixinxi_tupian1.jpg','可预约','电子琴 钢琴 电吉他','可约时间1',3,'乐室位置1','<p>乐室详情1</p>','2020-12-28 09:08:55',4),(2,'2020-12-28 09:01:19','乐室编号2','乐室名称2','大型','http://localhost:8080/ssm75fch/upload/leshixinxi_tupian2.jpg','可预约','乐器设备2','可约时间2',2,'乐室位置2','乐室详情2','2020-12-28 09:01:19',2),(3,'2020-12-28 09:01:19','乐室编号3','乐室名称3','大型','http://localhost:8080/ssm75fch/upload/leshixinxi_tupian3.jpg','可预约','乐器设备3','可约时间3',3,'乐室位置3','乐室详情3','2020-12-28 09:01:19',3),(4,'2020-12-28 09:01:19','乐室编号4','乐室名称4','大型','http://localhost:8080/ssm75fch/upload/leshixinxi_tupian4.jpg','可预约','乐器设备4','可约时间4',4,'乐室位置4','乐室详情4','2020-12-28 09:01:19',4),(5,'2020-12-28 09:01:19','乐室编号5','乐室名称5','大型','http://localhost:8080/ssm75fch/upload/leshixinxi_tupian5.jpg','可预约','乐器设备5','可约时间5',5,'乐室位置5','乐室详情5','2020-12-28 09:01:19',5),(6,'2020-12-28 09:01:19','乐室编号6','乐室名称6','大型','http://localhost:8080/ssm75fch/upload/leshixinxi_tupian6.jpg','可预约','乐器设备6','可约时间6',6,'乐室位置6','乐室详情6','2020-12-28 09:01:19',6);

/*Table structure for table `quxiaoyuyue` */

DROP TABLE IF EXISTS `quxiaoyuyue`;

CREATE TABLE `quxiaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `leshimingcheng` varchar(200) DEFAULT NULL COMMENT '乐室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `shiyongshijian` varchar(200) DEFAULT NULL COMMENT '使用时间',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `quxiaoyuanyin` longtext NOT NULL COMMENT '取消原因',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609117775652 DEFAULT CHARSET=utf8 COMMENT='取消预约';

/*Data for the table `quxiaoyuyue` */

insert  into `quxiaoyuyue`(`id`,`addtime`,`yuyuebianhao`,`leshimingcheng`,`tupian`,`zongjiage`,`shiyongshijian`,`quxiaoshijian`,`quxiaoyuanyin`,`yonghuming`,`shouji`,`sfsh`,`shhf`,`userid`) values (1,'2020-12-28 09:01:19','预约编号1','乐室名称1','http://localhost:8080/ssm75fch/upload/quxiaoyuyue_tupian1.jpg','总价格1','使用时间1','2020-12-28 09:01:19','取消原因1','用户名1','手机1','否','',1),(2,'2020-12-28 09:01:19','预约编号2','乐室名称2','http://localhost:8080/ssm75fch/upload/quxiaoyuyue_tupian2.jpg','总价格2','使用时间2','2020-12-28 09:01:19','取消原因2','用户名2','手机2','否','',2),(3,'2020-12-28 09:01:19','预约编号3','乐室名称3','http://localhost:8080/ssm75fch/upload/quxiaoyuyue_tupian3.jpg','总价格3','使用时间3','2020-12-28 09:01:19','取消原因3','用户名3','手机3','否','',3),(4,'2020-12-28 09:01:19','预约编号4','乐室名称4','http://localhost:8080/ssm75fch/upload/quxiaoyuyue_tupian4.jpg','总价格4','使用时间4','2020-12-28 09:01:19','取消原因4','用户名4','手机4','否','',4),(5,'2020-12-28 09:01:19','预约编号5','乐室名称5','http://localhost:8080/ssm75fch/upload/quxiaoyuyue_tupian5.jpg','总价格5','使用时间5','2020-12-28 09:01:19','取消原因5','用户名5','手机5','否','',5),(6,'2020-12-28 09:01:19','预约编号6','乐室名称6','http://localhost:8080/ssm75fch/upload/quxiaoyuyue_tupian6.jpg','总价格6','使用时间6','2020-12-28 09:01:19','取消原因6','用户名6','手机6','否','',6),(1609117775651,'2020-12-28 09:09:35','1609117712437','乐室名称1','http://localhost:8080/ssm75fch/upload/leshixinxi_tupian1.jpg','3','2020-12-31 10:00:32','2020-12-30 09:00:22','时间来不及','001','13823888881','','',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=1609117701782 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1609117701781,'2020-12-28 09:08:21',1,3,'leqi','架子鼓','http://localhost:8080/ssm75fch/upload/1609117521114.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','crxc9062hqj9ppcawx97iisyoru5dg2m','2020-12-28 09:03:33','2020-12-28 10:09:41'),(2,1,'001','yonghu','用户','j9vlgcxlj0y5bb0fvz4p4o99u6nm5x66','2020-12-28 09:08:15','2020-12-28 10:08:15');

/*Table structure for table `tuikuan` */

DROP TABLE IF EXISTS `tuikuan`;

CREATE TABLE `tuikuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `leshimingcheng` varchar(200) DEFAULT NULL COMMENT '乐室名称',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `tuikuanriqi` date DEFAULT NULL COMMENT '退款日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609117798435 DEFAULT CHARSET=utf8 COMMENT='退款';

/*Data for the table `tuikuan` */

insert  into `tuikuan`(`id`,`addtime`,`yuyuebianhao`,`leshimingcheng`,`zongjiage`,`tupian`,`beizhu`,`tuikuanriqi`,`yonghuming`,`shouji`,`ispay`,`userid`) values (1,'2020-12-28 09:01:19','预约编号1','乐室名称1','总价格1','http://localhost:8080/ssm75fch/upload/tuikuan_tupian1.jpg','备注1','2020-12-28','用户名1','手机1','未支付',1),(2,'2020-12-28 09:01:19','预约编号2','乐室名称2','总价格2','http://localhost:8080/ssm75fch/upload/tuikuan_tupian2.jpg','备注2','2020-12-28','用户名2','手机2','未支付',2),(3,'2020-12-28 09:01:19','预约编号3','乐室名称3','总价格3','http://localhost:8080/ssm75fch/upload/tuikuan_tupian3.jpg','备注3','2020-12-28','用户名3','手机3','未支付',3),(4,'2020-12-28 09:01:19','预约编号4','乐室名称4','总价格4','http://localhost:8080/ssm75fch/upload/tuikuan_tupian4.jpg','备注4','2020-12-28','用户名4','手机4','未支付',4),(5,'2020-12-28 09:01:19','预约编号5','乐室名称5','总价格5','http://localhost:8080/ssm75fch/upload/tuikuan_tupian5.jpg','备注5','2020-12-28','用户名5','手机5','未支付',5),(6,'2020-12-28 09:01:19','预约编号6','乐室名称6','总价格6','http://localhost:8080/ssm75fch/upload/tuikuan_tupian6.jpg','备注6','2020-12-28','用户名6','手机6','未支付',6),(1609117798434,'2020-12-28 09:09:57','1609117712437','乐室名称1','3','http://localhost:8080/ssm75fch/upload/leshixinxi_tupian1.jpg','','2020-12-30','001','13823888881','已支付',1);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2020-12-28 09:01:19');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`) values (1,'2020-12-28 09:01:19','001','001','小吴','男','http://localhost:8080/ssm75fch/upload/yonghu_touxiang1.jpg','13823888881'),(2,'2020-12-28 09:01:19','002','002','小邹','女','http://localhost:8080/ssm75fch/upload/yonghu_touxiang2.jpg','13823888882'),(3,'2020-12-28 09:01:19','用户3','123456','姓名3','性别3','http://localhost:8080/ssm75fch/upload/yonghu_touxiang3.jpg','13823888883'),(4,'2020-12-28 09:01:19','用户4','123456','姓名4','性别4','http://localhost:8080/ssm75fch/upload/yonghu_touxiang4.jpg','13823888884'),(5,'2020-12-28 09:01:19','用户5','123456','姓名5','性别5','http://localhost:8080/ssm75fch/upload/yonghu_touxiang5.jpg','13823888885'),(6,'2020-12-28 09:01:19','用户6','123456','姓名6','性别6','http://localhost:8080/ssm75fch/upload/yonghu_touxiang6.jpg','13823888886');

/*Table structure for table `yonghuliuyan` */

DROP TABLE IF EXISTS `yonghuliuyan`;

CREATE TABLE `yonghuliuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `liuyanbiaoti` varchar(200) NOT NULL COMMENT '留言标题',
  `leshimingcheng` varchar(200) DEFAULT NULL COMMENT '乐室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `liuyanriqi` date DEFAULT NULL COMMENT '留言日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609117763935 DEFAULT CHARSET=utf8 COMMENT='用户留言';

/*Data for the table `yonghuliuyan` */

insert  into `yonghuliuyan`(`id`,`addtime`,`liuyanbiaoti`,`leshimingcheng`,`tupian`,`neirong`,`beizhu`,`liuyanriqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`,`userid`) values (1,'2020-12-28 09:01:19','留言标题1','乐室名称1','http://localhost:8080/ssm75fch/upload/yonghuliuyan_tupian1.jpg','内容1','备注1','2020-12-28','用户名1','手机1','否','',1),(2,'2020-12-28 09:01:19','留言标题2','乐室名称2','http://localhost:8080/ssm75fch/upload/yonghuliuyan_tupian2.jpg','内容2','备注2','2020-12-28','用户名2','手机2','否','',2),(3,'2020-12-28 09:01:19','留言标题3','乐室名称3','http://localhost:8080/ssm75fch/upload/yonghuliuyan_tupian3.jpg','内容3','备注3','2020-12-28','用户名3','手机3','否','',3),(4,'2020-12-28 09:01:19','留言标题4','乐室名称4','http://localhost:8080/ssm75fch/upload/yonghuliuyan_tupian4.jpg','内容4','备注4','2020-12-28','用户名4','手机4','否','',4),(5,'2020-12-28 09:01:19','留言标题5','乐室名称5','http://localhost:8080/ssm75fch/upload/yonghuliuyan_tupian5.jpg','内容5','备注5','2020-12-28','用户名5','手机5','否','',5),(6,'2020-12-28 09:01:19','留言标题6','乐室名称6','http://localhost:8080/ssm75fch/upload/yonghuliuyan_tupian6.jpg','内容6','备注6','2020-12-28','用户名6','手机6','否','',6),(1609117763934,'2020-12-28 09:09:23','留言建议跟乐器完好度汇报','乐室名称1','http://localhost:8080/ssm75fch/upload/leshixinxi_tupian1.jpg','222222222222222','',NULL,'001','13823888881','','',1);

/*Table structure for table `yonghuyuyue` */

DROP TABLE IF EXISTS `yonghuyuyue`;

CREATE TABLE `yonghuyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `yuyuemingcheng` varchar(200) NOT NULL COMMENT '预约名称',
  `leshimingcheng` varchar(200) DEFAULT NULL COMMENT '乐室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `leshizhuangtai` varchar(200) DEFAULT NULL COMMENT '乐室状态',
  `shiyongshijian` datetime DEFAULT NULL COMMENT '使用时间',
  `yuyuejiage` varchar(200) DEFAULT NULL COMMENT '预约价格',
  `shiyongshizhang` int(11) NOT NULL COMMENT '使用时长',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `yuyueneirong` varchar(200) NOT NULL COMMENT '预约内容',
  `shiyongrenshu` int(11) NOT NULL COMMENT '使用人数',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609117734394 DEFAULT CHARSET=utf8 COMMENT='用户预约';

/*Data for the table `yonghuyuyue` */

insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`yuyuemingcheng`,`leshimingcheng`,`tupian`,`leshizhuangtai`,`shiyongshijian`,`yuyuejiage`,`shiyongshizhang`,`zongjiage`,`yuyueneirong`,`shiyongrenshu`,`shenqingriqi`,`beizhu`,`yonghuming`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (1,'2020-12-28 09:01:19','预约编号1','预约名称1','乐室名称1','http://localhost:8080/ssm75fch/upload/yonghuyuyue_tupian1.jpg','乐室状态1','2020-12-28 09:01:19','预约价格1',1,1,'预约内容1',1,'2020-12-28','备注1','用户名1','手机1','否','','未支付',1),(2,'2020-12-28 09:01:19','预约编号2','预约名称2','乐室名称2','http://localhost:8080/ssm75fch/upload/yonghuyuyue_tupian2.jpg','乐室状态2','2020-12-28 09:01:19','预约价格2',2,2,'预约内容2',2,'2020-12-28','备注2','用户名2','手机2','否','','未支付',2),(3,'2020-12-28 09:01:19','预约编号3','预约名称3','乐室名称3','http://localhost:8080/ssm75fch/upload/yonghuyuyue_tupian3.jpg','乐室状态3','2020-12-28 09:01:19','预约价格3',3,3,'预约内容3',3,'2020-12-28','备注3','用户名3','手机3','否','','未支付',3),(4,'2020-12-28 09:01:19','预约编号4','预约名称4','乐室名称4','http://localhost:8080/ssm75fch/upload/yonghuyuyue_tupian4.jpg','乐室状态4','2020-12-28 09:01:19','预约价格4',4,4,'预约内容4',4,'2020-12-28','备注4','用户名4','手机4','否','','未支付',4),(5,'2020-12-28 09:01:19','预约编号5','预约名称5','乐室名称5','http://localhost:8080/ssm75fch/upload/yonghuyuyue_tupian5.jpg','乐室状态5','2020-12-28 09:01:19','预约价格5',5,5,'预约内容5',5,'2020-12-28','备注5','用户名5','手机5','否','','未支付',5),(6,'2020-12-28 09:01:19','预约编号6','预约名称6','乐室名称6','http://localhost:8080/ssm75fch/upload/yonghuyuyue_tupian6.jpg','乐室状态6','2020-12-28 09:01:19','预约价格6',6,6,'预约内容6',6,'2020-12-28','备注6','用户名6','手机6','否','','未支付',6),(1609117734393,'2020-12-28 09:08:53','1609117712437','预约教室','乐室名称1','http://localhost:8080/ssm75fch/upload/leshixinxi_tupian1.jpg','可预约','2020-12-31 10:00:32','3',1,3,'11',2,'2020-12-29','','001','13823888881','','','已支付',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
