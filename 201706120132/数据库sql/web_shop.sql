/*
Navicat MySQL Data Transfer

Source Server         : aa
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : web_shop

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-06-27 14:27:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `administrators`
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES ('1', 'admin', '63814a82384f9faca8bcca0f08d86eb9');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `buy_count` int(11) DEFAULT NULL,
  `is_pay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `counts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('136590526', '【花花公子正品】皮带男士休闲自动扣皮带商务百搭自动扣学生腰带', 'http://t00img.yangkeduo.com/t10img/images/2018-06-22/2fa2b2b9b6423fa01b5a769110d20afb.jpeg', '1380', '1', '0', '8', '50');
INSERT INTO `cart` VALUES ('344112935', '蓝牙耳机通用所有手机', 'http://t00img.yangkeduo.com/t03img/images/2018-05-05/690f068dfbf940e9a22f71132766bcd1.jpeg', '990', '3', '0', '8', '50');
INSERT INTO `cart` VALUES ('48367210', '【天然竹浆本色品质纸巾】丝飘抽纸餐巾纸', 'http://t00img.yangkeduo.com/t07img/images/2018-05-27/38a24fafe5166b7e236a01ddf1ec7a04.jpeg', '990', '3', '0', '5', '60');
INSERT INTO `cart` VALUES ('621723438', '青春励志文学', 'http://t00img.yangkeduo.com/t09img/images/2018-07-20/a6eb38f1b52054d149a0dcbf9539ebf2.jpeg', '955', '4', '0', '5', '50');
INSERT INTO `cart` VALUES ('55984768', '华为 荣耀9青春版', 'http://t00img.yangkeduo.com/goods/images/2018-08-24/d57f9e6c4c04568324775079cc8ab386.jpeg', '80500', '1', '0', '5', '50');
INSERT INTO `cart` VALUES ('1031855', '甜曲紫米面包550g', 'http://t00img.yangkeduo.com/goods/images/2018-08-30/1093ac9bfaa77304a8c3f25d4bfcb743.jpeg', '990', '5', '0', '5', '50');
INSERT INTO `cart` VALUES ('621723438', '青春励志文学', 'http://t00img.yangkeduo.com/t09img/images/2018-07-20/a6eb38f1b52054d149a0dcbf9539ebf2.jpeg', '955', '1', '0', '9', '50');
INSERT INTO `cart` VALUES ('7657775', '【曹大姐】五香熟牛肉200克无淀粉无添加', 'http://t00img.yangkeduo.com/t08img/images/2018-05-23/2a78ac1b4c151168ceddbb73920cdaef.jpeg', '1390', '3', '0', '9', '50');
INSERT INTO `cart` VALUES ('2316452', '男士修身弹力小脚裤 品质保证', 'http://t00img.yangkeduo.com/t11img/images/2018-07-15/6982d3a77481e146e9fb81dc31d3a546.jpeg', '2800', '1', '0', '9', '50');
INSERT INTO `cart` VALUES ('2316452', '男士修身弹力小脚裤 品质保证', 'http://t00img.yangkeduo.com/t11img/images/2018-07-15/6982d3a77481e146e9fb81dc31d3a546.jpeg', '2800', '1', '0', '5', '50');
INSERT INTO `cart` VALUES ('123401', '惠普(HP)暗影精灵', 'http://localhost:3000/uploads/upload_9784d6eab21acc2c486e4db05b381eea.jpg', '599900', '1', '0', '12', '178');
INSERT INTO `cart` VALUES ('123456', '魅族17', 'http://localhost:3000/uploads/upload_8e2093a280ca92e246d1c39a46c4e6d3.jpg', '399900', '1', '0', '12', '50');
INSERT INTO `cart` VALUES ('123402', '联想ThinkBook 14', 'http://localhost:3000/uploads/upload_24ff9a04e5d2ccc1a4f0ec31f8c70db7.jpg', '449900', '1', '0', '14', '121');
INSERT INTO `cart` VALUES ('111112', '手机', 'http://localhost:3000/uploads/upload_336fd36ae941fbcf70089ce4e8f75656.jpg', '149900', '1', '0', '12', '12');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate_counts` int(11) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '手机', 'el-icon-reading', '10');
INSERT INTO `category` VALUES ('2', '电脑', 'el-icon-box', '9');
INSERT INTO `category` VALUES ('3', '服饰', 'el-icon-present', '10');
INSERT INTO `category` VALUES ('4', '母婴', 'el-icon-mobile-phone', '9');
INSERT INTO `category` VALUES ('5', '图书', 'el-icon-ice-cream', '9');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `comment_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_rating` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '136590526', 'good', '5', '5');
INSERT INTO `comments` VALUES ('16', '136590526', 'nice', '5', '5');
INSERT INTO `comments` VALUES ('17', '136590526', 'bad', '1', '8');
INSERT INTO `comments` VALUES ('20', '65676090', 'success', '5', '5');
INSERT INTO `comments` VALUES ('21', '65676090', 'error', '5', '5');
INSERT INTO `comments` VALUES ('22', '6225284', '不好用', '2', '5');
INSERT INTO `comments` VALUES ('23', '6225284', '还可以', '4', '5');
INSERT INTO `comments` VALUES ('24', '8836407', '好吃', '5', '5');
INSERT INTO `comments` VALUES ('25', '621723438', '强烈推荐', '5', '5');
INSERT INTO `comments` VALUES ('26', '621723438', '毒鸡汤', '2', '9');
INSERT INTO `comments` VALUES ('27', '111111', '发射点发顺丰到付', '1', '12');

-- ----------------------------
-- Table structure for `homecasual`
-- ----------------------------
DROP TABLE IF EXISTS `homecasual`;
CREATE TABLE `homecasual` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of homecasual
-- ----------------------------
INSERT INTO `homecasual` VALUES ('1', 'http://localhost:3000/images/home/s1.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6153');
INSERT INTO `homecasual` VALUES ('2', 'http://localhost:3000/images/home/s2.png', 'http://mobile.yangkeduo.com/promotion_op.html?type=12&id=228');
INSERT INTO `homecasual` VALUES ('3', 'http://localhost:3000/images/home/s3.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6242');
INSERT INTO `homecasual` VALUES ('4', 'http://localhost:3000/images/home/s4.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6153');
INSERT INTO `homecasual` VALUES ('5', 'http://localhost:3000/images/home/s5.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6230');
INSERT INTO `homecasual` VALUES ('6', 'http://localhost:3000/images/home/s6.png', 'http://mobile.yangkeduo.com/promotion_op.html?type=12&id=190');
INSERT INTO `homecasual` VALUES ('7', 'http://localhost:3000/images/home/s7.png', 'http://mobile.yangkeduo.com/promotion_op.html?type=12&id=229');
INSERT INTO `homecasual` VALUES ('8', 'http://localhost:3000/images/home/s8.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6153');
INSERT INTO `homecasual` VALUES ('9', 'http://localhost:3000/images/home/s9.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6242');

-- ----------------------------
-- Table structure for `recommend`
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `goods_id` bigint(20) NOT NULL,
  `goods_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hd_thumb_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `normal_price` int(11) DEFAULT NULL,
  `market_price` int(11) DEFAULT NULL,
  `sales_tip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `counts` int(11) DEFAULT NULL,
  `comments_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('111110', 'ewrwer', 'qwewqe', 'http://localhost:3000/uploads/upload_c2e7fb47ce59a37557618dc323d84f1d.jpg', 'http://localhost:3000/uploads/upload_c2e7fb47ce59a37557618dc323d84f1d.jpg', 'http://localhost:3000/uploads/upload_c2e7fb47ce59a37557618dc323d84f1d.jpg', '1223', '1223300', '1223500', 'wew', '3', '23', '0');
INSERT INTO `recommend` VALUES ('111112', 'sdsd', '手机', 'http://localhost:3000/uploads/upload_336fd36ae941fbcf70089ce4e8f75656.jpg', 'http://localhost:3000/uploads/upload_336fd36ae941fbcf70089ce4e8f75656.jpg', 'http://localhost:3000/uploads/upload_336fd36ae941fbcf70089ce4e8f75656.jpg', '149900', '149900300', '149900500', 'sdsa', '1', '12', '0');
INSERT INTO `recommend` VALUES ('123401', '惠普(HP)暗影精灵5 15.6英寸 游戏笔记本电脑(i5-9300H 8G 512GSSD GTX1650 4G独显 72%高色域)', '惠普(HP)暗影精灵', 'http://localhost:3000/uploads/upload_9784d6eab21acc2c486e4db05b381eea.jpg', 'http://localhost:3000/uploads/upload_9784d6eab21acc2c486e4db05b381eea.jpg', 'http://localhost:3000/uploads/upload_9784d6eab21acc2c486e4db05b381eea.jpg', '599900', '599900300', '599900500', '9代酷睿，搭载GTX16系显卡，4.99mm微边框，80%屏占比宽广视野，吃鸡特效6到飞起', '2', '178', '0');
INSERT INTO `recommend` VALUES ('123402', '联想ThinkBook 14英特尔酷睿i5 14英寸轻薄笔记本电脑(十代酷睿i5 8G 512G傲腾增强型SSD 2G独显)', '联想ThinkBook 14', 'http://localhost:3000/uploads/upload_24ff9a04e5d2ccc1a4f0ec31f8c70db7.jpg', 'http://localhost:3000/uploads/upload_24ff9a04e5d2ccc1a4f0ec31f8c70db7.jpg', 'http://localhost:3000/uploads/upload_24ff9a04e5d2ccc1a4f0ec31f8c70db7.jpg', '449900', '449900300', '449900500', '【ThinkPad新锐时尚品牌】2万评论销量爆款', '2', '121', '0');
INSERT INTO `recommend` VALUES ('123403', '华硕(ASUS) VivoBook15s 英特尔酷睿i5 新版15.6英寸轻薄笔记本电脑(i5-1035G1 8G 512GSSD MX330 2G独显)银', '华硕(ASUS) VivoBook15s ', 'http://localhost:3000/uploads/upload_7d2d7d6d3d30012b35408a60f67bf344.jpg', 'http://localhost:3000/uploads/upload_7d2d7d6d3d30012b35408a60f67bf344.jpg', 'http://localhost:3000/uploads/upload_7d2d7d6d3d30012b35408a60f67bf344.jpg', '449900', '449900300', '449900500', '十代i5+MX330独显+高速512G固态+15.6英寸大屏！', '2', '111', '0');
INSERT INTO `recommend` VALUES ('123411', '超媛T恤男潮牌ins学生宽松明线装饰帅气圆领夏装体恤韩版潮流男士短袖A3-1077-9992我 白色 ', '超媛T恤', 'http://localhost:3000/uploads/upload_17f835f7735635669bb0fa9b0bf4ad44.jpg', 'http://localhost:3000/uploads/upload_17f835f7735635669bb0fa9b0bf4ad44.jpg', 'http://localhost:3000/uploads/upload_17f835f7735635669bb0fa9b0bf4ad44.jpg', '9990', '9990300', '9990500', '满2件，总价打9折；满4件，总价打8折；满8件，总价打6折', '3', '999', '0');
INSERT INTO `recommend` VALUES ('123412', '艾珠儿 连衣裙套装女春夏装2020新款女装韩版休闲牛仔套装裙刺绣格子衬衫中长款雪纺裙子两件套套装裙 图片色(两件套)', '艾珠儿 连衣裙', 'http://localhost:3000/uploads/upload_91f23043c20671c66722d75d9a38beb3.jpg', 'http://localhost:3000/uploads/upload_91f23043c20671c66722d75d9a38beb3.jpg', 'http://localhost:3000/uploads/upload_91f23043c20671c66722d75d9a38beb3.jpg', '14800', '14800300', '14800500', '艾珠儿品牌2020春夏上新，支持货到付款，七天无理由退换，请放心购买', '3', '123', '0');
INSERT INTO `recommend` VALUES ('123413', '以纯线上品牌A21 春夏季休闲裤男修身 休闲百搭低腰男士小直筒长裤子R492116019 黑色 ', '春夏季休闲裤男', 'http://localhost:3000/uploads/upload_baf61cebd30843d1410d3c152c1b56d0.jpg', 'http://localhost:3000/uploads/upload_baf61cebd30843d1410d3c152c1b56d0.jpg', 'http://localhost:3000/uploads/upload_baf61cebd30843d1410d3c152c1b56d0.jpg', '11900', '11900300', '11900500', '全天享买3免1，部分爆款叠加享受闪购活动价，T恤专区低至139元任选3件，更多优惠尽在首页！', '3', '111', '0');
INSERT INTO `recommend` VALUES ('123414', 'weqe', '超媛T恤', 'http://localhost:3000/uploads/upload_08188993efa57e60164a041a52af043f.jpg', 'http://localhost:3000/uploads/upload_08188993efa57e60164a041a52af043f.jpg', 'http://localhost:3000/uploads/upload_08188993efa57e60164a041a52af043f.jpg', '12200', '12200300', '12200500', 'wqew', '3', '2332', '0');
INSERT INTO `recommend` VALUES ('123421', '感恩（ganen）儿童安全座椅 larky系列半人马座宝宝座椅 9个月-12岁 枫林蓝', '儿童安全座椅', 'http://localhost:3000/uploads/upload_12b1569011f6f08558101f201d9fa256.jpg', 'http://localhost:3000/uploads/upload_12b1569011f6f08558101f201d9fa256.jpg', 'http://localhost:3000/uploads/upload_12b1569011f6f08558101f201d9fa256.jpg', '118000', '118000300', '118000500', '“粽”享狂欢，安全出行！【下单立减300元，到手价780元！】 【联系客服晒图送原装换洗布套（送完即止）】', '4', '112', '0');
INSERT INTO `recommend` VALUES ('123422', '新西兰原装进口 a2 白金版 幼儿配方奶粉 3段(1-3岁) 900g/罐 6罐箱装', '幼儿配方奶粉', 'http://localhost:3000/uploads/upload_0b50646fc50f554520d2bdbef5c23d2c.jpg', 'http://localhost:3000/uploads/upload_0b50646fc50f554520d2bdbef5c23d2c.jpg', 'http://localhost:3000/uploads/upload_0b50646fc50f554520d2bdbef5c23d2c.jpg', '126000', '126000300', '126000500', '品牌会员】开卡送券、送积分，兑换好礼、抽大奖 【专属权益】品牌新客领券299减40', '4', '222', '0');
INSERT INTO `recommend` VALUES ('123423', '宝贝第一（Babyfirst）汽车儿童安全座椅 约9个月-12岁 ISOFIX接口 3C认证 侧撞防护 铠甲舰队PLUS 太狼灰', '汽车儿童安全座椅', 'http://localhost:3000/uploads/upload_8227fa4597ff8a9afd419c9ee7d562dc.jpg', 'http://localhost:3000/uploads/upload_8227fa4597ff8a9afd419c9ee7d562dc.jpg', 'http://localhost:3000/uploads/upload_8227fa4597ff8a9afd419c9ee7d562dc.jpg', '178000', '178000300', '178000500', '14点立减100元！到手仅1630元！ 下单送座椅凉席！', '4', '22', '0');
INSERT INTO `recommend` VALUES ('123431', '东野圭吾：白夜行（2017版）', '白夜行', 'http://localhost:3000/uploads/upload_5d7fd05883da5366b6d8d3148ce17607.jpg', 'http://localhost:3000/uploads/upload_5d7fd05883da5366b6d8d3148ce17607.jpg', 'http://localhost:3000/uploads/upload_5d7fd05883da5366b6d8d3148ce17607.jpg', '5960', '5960300', '5960500', '自营图书每满100减50！', '5', '1111', '0');
INSERT INTO `recommend` VALUES ('123432', '万万没想到：用理工科思维理解世界（精装增补版）', '万万没想到', 'http://localhost:3000/uploads/upload_40102cc372a81c6bee14eb64f1db8bcc.jpg', 'http://localhost:3000/uploads/upload_40102cc372a81c6bee14eb64f1db8bcc.jpg', 'http://localhost:3000/uploads/upload_40102cc372a81c6bee14eb64f1db8bcc.jpg', '4160', '4160300', '4160500', '自营图书每满100减50！', '5', '232', '0');
INSERT INTO `recommend` VALUES ('123433', 'JavaScript语言精髓与编程实践（第3版）', 'JavaScript语言', 'http://localhost:3000/uploads/upload_21220b6fd52ef8905aa9556247c10705.jpg', 'http://localhost:3000/uploads/upload_21220b6fd52ef8905aa9556247c10705.jpg', 'http://localhost:3000/uploads/upload_21220b6fd52ef8905aa9556247c10705.jpg', '10700', '10700300', '10700500', '自营图书每满100减50！', '5', '888', '0');
INSERT INTO `recommend` VALUES ('123456', '魅族17 8GB+256GB 十七度灰 骁龙865 旗舰5G手机 30W快充 6400W后置主摄 90Hz屏幕 支持NFC 智能拍照游戏手机', '魅族17', 'http://localhost:3000/uploads/upload_8e2093a280ca92e246d1c39a46c4e6d3.jpg', 'http://localhost:3000/uploads/upload_8e2093a280ca92e246d1c39a46c4e6d3.jpg', 'http://localhost:3000/uploads/upload_8e2093a280ca92e246d1c39a46c4e6d3.jpg', '399900', '3999300', '3999500', 'asasad', '1', '50', '0');
INSERT INTO `recommend` VALUES ('123457', '小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声 8GB+256GB', '小米10', 'http://localhost:3000/uploads/upload_3474b48aed3b7b985f90a10703da7cbf.jpg', 'http://localhost:3000/uploads/upload_3474b48aed3b7b985f90a10703da7cbf.jpg', 'http://localhost:3000/uploads/upload_3474b48aed3b7b985f90a10703da7cbf.jpg', '399900', '399900300', '399900500', '5G', '1', '100', '0');
INSERT INTO `recommend` VALUES ('123458', '华为 HUAWEI P40 Pro 麒麟990 5G SoC芯片 5000万超感知徕卡四摄 50倍数字变焦 8GB+256GB冰霜银全网通5G手机', '华为 HUAWEI P40 Pro', 'http://localhost:3000/uploads/upload_bdb3da4bd76c16b23be085261a62ba5e.jpg', 'http://localhost:3000/uploads/upload_bdb3da4bd76c16b23be085261a62ba5e.jpg', 'http://localhost:3000/uploads/upload_bdb3da4bd76c16b23be085261a62ba5e.jpg', '648800', '648800300', '648800500', '麒麟990，5000万超感知徕卡四摄，四曲满溢屏，50倍数字变焦', '1', '100', '0');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_birthday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_sign` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('5', '13666666666', null, '13666666666', '女', '福州', '2000-01-01', '买买买！！！', '', 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('8', '15666666666', null, '15666666666', '女', '', '', '', '莫得感情的机器人', 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('9', '来来来', 'a163a36c731d1ac664841b6d196a05e3', '18666666666', '男', '', '', '', 'HS', 'http://localhost:3000/avatar_uploads/upload_5a67435fbb680332a6a3aa62014f5aa2.jpg');
INSERT INTO `user_info` VALUES ('12', '15816072910', null, '15816072910', '男', '吴川', '', '', '', 'http://localhost:3000/avatar_uploads/upload_907613653dbe2e57c471891295285da0.jpg');
INSERT INTO `user_info` VALUES ('13', '13312312312', 'd1c935942a8ccffaebafe30dc68dbe1e', null, null, null, null, null, null, 'http://localhost:3000/avatar_uploads/avatar_default.jpg');
INSERT INTO `user_info` VALUES ('14', '13212112112', '5a8716acd366a5277911a804ce620f4c', null, '男', 'weertr', '2020-06-03', 'weer', 'wew', 'http://localhost:3000/avatar_uploads/upload_47a8d204a72f699ca003960829b72146.jpg');
