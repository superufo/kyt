/*
Navicat MySQL Data Transfer

Source Server         : Loki
Source Server Version : 50726
Source Host           : 47.112.195.158:3306
Source Database       : bangbang

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-10-19 17:04:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '数据主键',
  `user_id` bigint(19) NOT NULL COMMENT '用户主键',
  `owner` varchar(8) NOT NULL DEFAULT '' COMMENT '持卡人/收款人',
  `bank_name` varchar(16) NOT NULL DEFAULT '' COMMENT '银行名称',
  `bank_address` varchar(64) NOT NULL DEFAULT '' COMMENT '开户银行所在地',
  `card` varchar(32) NOT NULL DEFAULT '' COMMENT '卡号',
  `third_party` varchar(32) NOT NULL DEFAULT '' COMMENT '第三方平台账号',
  `qr_code` varchar(64) NOT NULL DEFAULT '' COMMENT '收款二维码',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '账户类型 0:未定义 1:银联 2:微信 3:支付宝 4:更多再定义',
  `is_used` tinyint(1) NOT NULL DEFAULT '0' COMMENT '设置默认 0:非默认 1:默认',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用 0:不启用 1:启用',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`),
  KEY `type` (`type`),
  KEY `is_used` (`is_used`),
  KEY `is_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '1', '微信1号', '', '', '', '', 'group1/M00/00/00/rBJLbV1817WAXdfJAACGP6IBmLs864.jpg', '2', '1', '1', '2019-09-14 20:06:14', null);
INSERT INTO `account` VALUES ('2', '1', '哈利', '中国建设银行', '', '62222546555555555', '', '', '1', '1', '1', '2019-09-14 20:07:19', null);
INSERT INTO `account` VALUES ('3', '1', '我们', '中国农业银行', '', '6644588845325463154652', '', '', '1', '1', '1', '2019-09-21 15:57:53', null);
INSERT INTO `account` VALUES ('5', '13', '就行了', '', '', '', '', 'group1/M00/00/00/rBJLbV2V_V2AfOupAAJ1KWKH_40140.jpg', '2', '1', '1', '2019-10-03 21:53:33', null);
INSERT INTO `account` VALUES ('6', '13', '你好', '', '', '', '', 'group1/M00/00/00/rBJLbV2V_32AWRw6AAJ1KWKH_40219.jpg', '2', '1', '1', '2019-10-03 22:02:37', null);
INSERT INTO `account` VALUES ('9', '13', 'hdj', '中国银行', '', '6222356548572254', '', '', '1', '1', '1', '2019-10-05 18:05:45', null);
INSERT INTO `account` VALUES ('10', '18', '你好啊', '中国工商银行', '', '1234123456464888', '', '', '1', '1', '1', '2019-10-06 21:30:50', null);
INSERT INTO `account` VALUES ('11', '18', '123', '中国工商银行', '', '123456921234', '', '', '1', '1', '1', '2019-10-06 21:31:25', null);
INSERT INTO `account` VALUES ('12', '18', '爱哭鬼', '', '', '', '', 'group1/M00/00/00/rBJLbV2Z7oeAdBQvAAKIqXqbhxs012.jpg', '3', '1', '1', '2019-10-06 21:39:20', null);
INSERT INTO `account` VALUES ('13', '23', '100', '', '', '', '', 'group1/M00/00/00/rBJLbV2h8DaAcyuHAAEU_PgnAHI836.jpg', '3', '1', '1', '2019-10-12 23:24:39', null);

-- ----------------------------
-- Table structure for deposit_flow
-- ----------------------------
DROP TABLE IF EXISTS `deposit_flow`;
CREATE TABLE `deposit_flow` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `owner` varchar(8) NOT NULL DEFAULT '' COMMENT '持卡人',
  `bank_name` varchar(16) NOT NULL DEFAULT '' COMMENT '银行名称',
  `card` varchar(32) NOT NULL DEFAULT '' COMMENT '银行卡号',
  `money` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：未付款 1:已付款',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `state` (`is_paid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deposit_flow
-- ----------------------------
INSERT INTO `deposit_flow` VALUES ('1022160752217161728', '1', '王安', '中国建设银行', '43021013215646450', '100.33', '1', '2019-09-21 15:54:17', '2019-09-21 15:54:18');
INSERT INTO `deposit_flow` VALUES ('1022161128353955840', '1', '王安', '中国建设银行', '43021013215646450', '100.30', '1', '2019-09-21 15:54:26', '2019-09-21 15:54:26');
INSERT INTO `deposit_flow` VALUES ('1027695878636306432', '18', '王安', '中国建设银行', '43021013215646450', '100.28', '1', '2019-10-06 21:36:45', '2019-10-06 21:36:45');
INSERT INTO `deposit_flow` VALUES ('4858113952892059648', '1', '王安', '中国建设银行', '43021013215646450', '112.15', '0', '2019-09-14 20:10:26', null);

-- ----------------------------
-- Table structure for global_config
-- ----------------------------
DROP TABLE IF EXISTS `global_config`;
CREATE TABLE `global_config` (
  `id` varchar(32) NOT NULL,
  `value` varchar(32) NOT NULL DEFAULT '',
  `group_key` varchar(32) NOT NULL DEFAULT '',
  `descript` varchar(64) NOT NULL DEFAULT '',
  `display_no` int(6) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全局配置';

-- ----------------------------
-- Records of global_config
-- ----------------------------
INSERT INTO `global_config` VALUES ('phone.white.switch', '0', '', '手机白名单开关 1:开 0:关', '0', '1');

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '商户名称',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT '允许接入IP',
  `mch_id` varchar(32) NOT NULL DEFAULT '' COMMENT '商户ID',
  `api_key` varchar(128) NOT NULL DEFAULT '' COMMENT '接口密钥',
  `depict` varchar(128) NOT NULL DEFAULT '' COMMENT '描述',
  `create_time` datetime DEFAULT NULL COMMENT '生成时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `mch_id` (`mch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商户名单';

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES ('2', '测试', '127.0.0.1', 'kytb8fbd349c6d41689', 'd2acfb79e34d080e08d30b1df1417eb6', '测试数据', '2019-10-13 17:01:23', '2019-10-13 17:11:21');

-- ----------------------------
-- Table structure for order_flow
-- ----------------------------
DROP TABLE IF EXISTS `order_flow`;
CREATE TABLE `order_flow` (
  `id` bigint(19) NOT NULL,
  `sn` varchar(32) NOT NULL DEFAULT '' COMMENT '订单编号',
  `origin` varchar(32) NOT NULL DEFAULT '' COMMENT '来源',
  `origin_id` varchar(32) NOT NULL DEFAULT '' COMMENT '第三方平台的信息',
  `pay_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付类型 0 未定义 1:银联 2:微信支付 3:支付宝 ',
  `acceptor` bigint(19) NOT NULL DEFAULT '0' COMMENT '接单人',
  `account_name` varchar(16) NOT NULL DEFAULT '' COMMENT '账户昵称',
  `money` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `commission` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `pay_url` varchar(128) NOT NULL DEFAULT '' COMMENT '支付页面',
  `notify_url` varchar(128) NOT NULL DEFAULT '' COMMENT '通知页面',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:等待接单 1:已接单 2:已完成',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '发单人是否已打款 0:未打款 1:已打款',
  `is_confirm` tinyint(1) NOT NULL DEFAULT '0' COMMENT '接单人确认收到款 0:未确认 1：确认',
  `is_expire` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否过期/超时',
  `accept_time` datetime DEFAULT NULL,
  `paid_time` datetime DEFAULT NULL COMMENT '付款时间',
  `confirm_time` datetime DEFAULT NULL COMMENT '确认时间',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of order_flow
-- ----------------------------
INSERT INTO `order_flow` VALUES ('1031790252806635520', '201910181207949862553780224', '测试', 'kytb8fbd349c6d41689', '2', '0', '', '100.00', '1.50', 'http://127.0.0.1:8712/order/pay/MTAzMTc5MDI1MjgwNjYzNTUyMA==', 'http://www.baidu.com', '0', '0', '0', '0', null, null, null, '2019-10-18 04:46:06', null, null);
INSERT INTO `order_flow` VALUES ('1031790829347274752', '201910181217590380506120223', 'system', '0', '3', '0', '', '103.00', '1.03', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 04:48:23', null, '2019-10-18 04:48:53');
INSERT INTO `order_flow` VALUES ('1031790829376634880', '201910181217590380506120224', 'system', '0', '3', '0', '', '207.00', '2.07', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 04:48:23', null, '2019-10-18 04:48:53');
INSERT INTO `order_flow` VALUES ('1031790829401800704', '201910181217590380506120225', 'system', '0', '2', '0', '', '131.00', '1.31', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 04:48:23', null, '2019-10-18 04:48:53');
INSERT INTO `order_flow` VALUES ('1031793345929674752', '201910181259811627012718626', 'system', '0', '3', '0', '', '153.00', '1.53', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 04:58:23', null, '2019-10-18 04:58:53');
INSERT INTO `order_flow` VALUES ('1031793345954840576', '201910181259811627012718627', 'system', '0', '3', '0', '', '170.00', '1.70', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 04:58:23', null, '2019-10-18 04:58:53');
INSERT INTO `order_flow` VALUES ('1031793345980006400', '201910181259811627012718628', 'system', '0', '3', '0', '', '119.00', '1.19', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 04:58:23', null, '2019-10-18 04:58:53');
INSERT INTO `order_flow` VALUES ('1031794589326901248', '201910181280640775289307136', '测试', 'kytb8fbd349c6d41689', '3', '0', '', '226.26', '3.39', 'http://127.0.0.1:8712/order/pay/MTAzMTc5NDU4OTMyNjkwMTI0OA==', 'http://www.baidu.com', '0', '0', '0', '0', null, null, null, '2019-10-18 05:03:20', null, null);
INSERT INTO `order_flow` VALUES ('1031795862533046272', '201910181302032873519317029', 'system', '0', '2', '0', '', '199.00', '1.99', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:08:23', null, '2019-10-18 05:08:53');
INSERT INTO `order_flow` VALUES ('1031795862583377920', '201910181302032873519317030', 'system', '0', '2', '0', '', '165.00', '1.65', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:08:23', null, '2019-10-18 05:08:53');
INSERT INTO `order_flow` VALUES ('1031795862621126656', '201910181302032873519317031', 'system', '0', '2', '0', '', '237.00', '2.37', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:08:23', null, '2019-10-18 05:08:53');
INSERT INTO `order_flow` VALUES ('1031798379094474752', '201910181344254120025915432', 'system', '0', '3', '0', '', '198.00', '1.98', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:18:23', null, '2019-10-18 05:18:53');
INSERT INTO `order_flow` VALUES ('1031798379132223488', '201910181344254120025915433', 'system', '0', '3', '0', '', '268.00', '2.68', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:18:23', null, '2019-10-18 05:18:53');
INSERT INTO `order_flow` VALUES ('1031798379161583616', '201910181344254120025915434', 'system', '0', '2', '0', '', '153.00', '1.53', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:18:23', null, '2019-10-18 05:18:53');
INSERT INTO `order_flow` VALUES ('1031800895676874752', '201910181386475366532513835', 'system', '0', '3', '0', '', '138.00', '1.38', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:28:23', null, '2019-10-18 05:28:53');
INSERT INTO `order_flow` VALUES ('1031800895735595008', '201910181386475366532513836', 'system', '0', '3', '0', '', '130.00', '1.30', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:28:23', null, '2019-10-18 05:28:53');
INSERT INTO `order_flow` VALUES ('1031803412259274752', '201910181428696613039112237', 'system', '0', '3', '0', '', '144.00', '1.44', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:38:23', null, '2019-10-18 05:38:53');
INSERT INTO `order_flow` VALUES ('1031803412280246272', '201910181428696613039112238', 'system', '0', '3', '0', '', '202.00', '2.02', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:38:23', null, '2019-10-18 05:38:53');
INSERT INTO `order_flow` VALUES ('1031805928841674752', '201910181470917859545710639', 'system', '0', '3', '0', '', '195.00', '1.95', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:48:23', null, '2019-10-18 05:48:53');
INSERT INTO `order_flow` VALUES ('1031805928892006400', '201910181470917859545710640', 'system', '0', '2', '0', '', '119.00', '1.19', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:48:23', null, '2019-10-18 05:48:53');
INSERT INTO `order_flow` VALUES ('1031808445453434880', '201910181513139106052309041', 'system', '0', '3', '0', '', '131.00', '1.31', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:58:23', null, '2019-10-18 05:58:53');
INSERT INTO `order_flow` VALUES ('1031808445512155136', '201910181513139106052309042', 'system', '0', '3', '0', '', '168.00', '1.68', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 05:58:23', null, '2019-10-18 05:58:53');
INSERT INTO `order_flow` VALUES ('1031810962006474752', '201910181555360352558907443', 'system', '0', '3', '0', '', '224.00', '2.24', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 06:08:23', null, '2019-10-18 06:08:53');
INSERT INTO `order_flow` VALUES ('1031813478601457664', '201910181597581599065505844', 'system', '0', '3', '0', '', '100.00', '1.00', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 06:18:23', null, '2019-10-18 06:18:53');
INSERT INTO `order_flow` VALUES ('1031815995171274752', '201910181639802845572104245', 'system', '0', '3', '0', '', '157.00', '1.57', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 06:28:23', null, '2019-10-18 06:28:53');
INSERT INTO `order_flow` VALUES ('1031818511753674752', '201910181682024092078702646', 'system', '0', '3', '0', '', '134.00', '1.34', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 06:38:23', null, '2019-10-18 06:38:53');
INSERT INTO `order_flow` VALUES ('1031821028336074752', '201910181724245338585301047', 'system', '0', '2', '0', '', '149.00', '1.49', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 06:48:23', null, '2019-10-18 06:48:53');
INSERT INTO `order_flow` VALUES ('1031823544918474752', '201910181766466585091899448', 'system', '0', '3', '0', '', '132.00', '1.32', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 06:58:23', null, '2019-10-18 06:58:53');
INSERT INTO `order_flow` VALUES ('1031826061500874752', '201910181808687831598497849', 'system', '0', '3', '0', '', '186.00', '1.86', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 07:08:23', null, '2019-10-18 07:08:53');
INSERT INTO `order_flow` VALUES ('1031828578083274752', '201910181850909078105096250', 'system', '0', '2', '0', '', '133.00', '1.33', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 07:18:23', null, '2019-10-18 07:18:53');
INSERT INTO `order_flow` VALUES ('1031831094669869056', '201910181893130324611694651', 'system', '0', '2', '0', '', '115.00', '1.15', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 07:28:23', null, '2019-10-18 07:28:53');
INSERT INTO `order_flow` VALUES ('1031833611248074752', '201910181935351571118293052', 'system', '0', '2', '0', '', '205.00', '2.05', '', '', '0', '0', '0', '0', null, null, null, '2019-10-18 07:38:23', null, '2019-10-18 07:38:53');

-- ----------------------------
-- Table structure for phone_white
-- ----------------------------
DROP TABLE IF EXISTS `phone_white`;
CREATE TABLE `phone_white` (
  `phone` varchar(16) NOT NULL COMMENT '手机号',
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机白名单';

-- ----------------------------
-- Records of phone_white
-- ----------------------------
INSERT INTO `phone_white` VALUES ('13017751223');
INSERT INTO `phone_white` VALUES ('17722630080');
INSERT INTO `phone_white` VALUES ('18903021030');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sn` int(10) NOT NULL DEFAULT '0' COMMENT '用户可视序列号',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `head` varchar(32) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别 0:男 1:女',
  `phone` varchar(16) NOT NULL DEFAULT '' COMMENT '手机号码',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户状态 0：未定义 1：有效 2：封停 3：注销',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone` (`phone`) USING BTREE,
  KEY `sn` (`sn`),
  KEY `state` (`state`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户抽象字段';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '20201', '13511111111', '', '0', '13511111111', '3gX74E-FP6OSYMS0s8_0p9', '1', '2019-09-14 20:04:34', null);
INSERT INTO `user` VALUES ('2', '20214', '18576438460', '', '0', '18576438460', '6q2YeycUPpmVnh2Uh__RDb', '1', '2019-10-05 21:07:06', null);
INSERT INTO `user` VALUES ('3', '20203', '13111111111', '', '0', '13111111111', 'e4aT3B9KzCH-wU3Ov5UmVb', '1', '2019-09-22 15:01:53', null);
INSERT INTO `user` VALUES ('4', '20204', '13999999999', '', '0', '13999999999', 'e4aT3B9KzCH-wU3Ov5UmVb', '1', '2019-09-22 15:45:18', null);
INSERT INTO `user` VALUES ('5', '20205', '13762015578', '', '0', '13762015578', 'fhK-1YAp3gr1VelSLIXama', '1', '2019-09-22 18:45:55', null);
INSERT INTO `user` VALUES ('6', '20206', '17127290867', '', '0', '17127290867', 'e4aT3B9KzCH-wU3Ov5UmVb', '1', '2019-09-23 09:08:30', null);
INSERT INTO `user` VALUES ('7', '20207', '15659838929', '', '0', '15659838929', '3niTAaL6PZAoyZt4Hr0Xt8', '1', '2019-09-23 12:59:52', null);
INSERT INTO `user` VALUES ('8', '20208', '13456789001', '', '0', '13456789001', '9rDAxymnzsIi4McqRtiBa9', '1', '2019-09-28 10:10:11', null);
INSERT INTO `user` VALUES ('9', '20209', '13200000000', '', '0', '13200000000', '9rDAxymnzsIi4McqRtiBa9', '1', '2019-09-28 10:58:14', null);
INSERT INTO `user` VALUES ('10', '20210', '13513351223', '', '0', '13513351223', '9rDAxymnzsIi4McqRtiBa9', '1', '2019-10-02 22:40:00', null);
INSERT INTO `user` VALUES ('11', '20211', '15812345678', '', '0', '15812345678', '9rDAxymnzsIi4McqRtiBa9', '1', '2019-10-02 23:11:06', null);
INSERT INTO `user` VALUES ('12', '20212', '13313333333', '', '0', '13313333333', '8nxNvPiwjmqvegbf4NzVA8', '1', '2019-10-02 23:18:31', null);
INSERT INTO `user` VALUES ('13', '20213', '13510168712', '', '0', '13510168712', '3gX74E-FP6OSYMS0s8_0p9', '1', '2019-10-03 21:25:50', null);
INSERT INTO `user` VALUES ('15', '20216', '13017751223', '', '0', '13017751223', '9rDAxymnzsIi4McqRtiBa9', '1', '2019-10-06 01:07:53', null);
INSERT INTO `user` VALUES ('16', '20217', '17722630080', '', '0', '17722630080', 'e4aT3B9KzCH-wU3Ov5UmVb', '1', '2019-10-06 14:02:27', null);
INSERT INTO `user` VALUES ('17', '20218', '17109324198', '', '0', '17109324198', 'bQZ-oxLgPWWy3lypvjwzi8', '1', '2019-10-06 21:15:04', null);
INSERT INTO `user` VALUES ('18', '20219', '13456666666', '', '0', '13456666666', 'e4aT3B9KzCH-wU3Ov5UmVb', '1', '2019-10-06 21:25:25', null);
INSERT INTO `user` VALUES ('19', '20220', '17711111111', '', '0', '17711111111', 'e4aT3B9KzCH-wU3Ov5UmVb', '1', '2019-10-06 21:26:15', null);
INSERT INTO `user` VALUES ('20', '20221', '13528868808', '', '0', '13528868808', '9rDAxymnzsIi4McqRtiBa9', '1', '2019-10-06 22:36:19', null);
INSERT INTO `user` VALUES ('21', '20222', '13255886666', '', '0', '13255886666', 'e4aT3B9KzCH-wU3Ov5UmVb', '1', '2019-10-07 13:57:06', null);
INSERT INTO `user` VALUES ('22', '20223', '13974015468', '', '0', '13974015468', '4lVDKdhUPeMSFotQop99ha', '1', '2019-10-07 14:03:31', null);
INSERT INTO `user` VALUES ('23', '20224', '18822335566', '', '0', '18822335566', 'e4aT3B9KzCH-wU3Ov5UmVb', '1', '2019-10-07 14:03:53', null);
INSERT INTO `user` VALUES ('24', '20225', '18605003489', '', '0', '18605003489', 'e4aT3B9KzCH-wU3Ov5UmVb', '1', '2019-10-08 03:38:34', null);
INSERT INTO `user` VALUES ('25', '20226', '13002179038', '', '0', '13002179038', 'cksSepb2zJT-WVTj0BtAd8', '1', '2019-10-08 17:35:00', null);
INSERT INTO `user` VALUES ('26', '20227', '15566887744', '', '0', '15566887744', 'e4aT3B9KzCH-wU3Ov5UmVb', '1', '2019-10-16 16:07:35', null);
INSERT INTO `user` VALUES ('27', '20228', '18688888888', '', '0', '18688888888', 'e4aT3B9KzCH-wU3Ov5UmVb', '1', '2019-10-16 16:12:33', null);

-- ----------------------------
-- Table structure for user_business
-- ----------------------------
DROP TABLE IF EXISTS `user_business`;
CREATE TABLE `user_business` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `money` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '账户余额',
  `frozen_money` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '冻结金额',
  `is_able_order` tinyint(1) NOT NULL DEFAULT '0' COMMENT '能否接单 0：不能 1：可以',
  `is_able_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '能否支付 0：不能 1：可以',
  `is_able_cash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '能否提现 0：不能 1：可以',
  `is_enable_agent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活代理  0：未激活 1：已激活 ',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `is_able_order` (`is_able_order`),
  KEY `is_able_recharge` (`is_able_pay`),
  KEY `is_able_cash` (`is_able_cash`),
  KEY `is_active` (`is_enable_agent`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户业务字段';

-- ----------------------------
-- Records of user_business
-- ----------------------------
INSERT INTO `user_business` VALUES ('1', '622.63', '578.00', '1', '1', '1', '1', '2019-09-14 20:04:34', '2019-10-07 11:21:47');
INSERT INTO `user_business` VALUES ('2', '1000.00', '0.00', '0', '1', '0', '1', '2019-09-15 21:17:09', '2019-09-17 23:15:41');
INSERT INTO `user_business` VALUES ('3', '0.00', '0.00', '0', '0', '0', '0', '2019-09-22 15:01:53', null);
INSERT INTO `user_business` VALUES ('4', '0.00', '0.00', '0', '1', '0', '1', '2019-09-22 15:45:18', null);
INSERT INTO `user_business` VALUES ('5', '0.00', '0.00', '0', '0', '0', '0', '2019-09-22 18:45:55', null);
INSERT INTO `user_business` VALUES ('6', '0.00', '0.00', '0', '0', '0', '0', '2019-09-23 09:08:30', null);
INSERT INTO `user_business` VALUES ('7', '0.00', '0.00', '0', '1', '0', '1', '2019-09-23 12:59:52', null);
INSERT INTO `user_business` VALUES ('8', '0.00', '0.00', '0', '0', '0', '0', '2019-09-28 10:10:11', null);
INSERT INTO `user_business` VALUES ('9', '0.00', '0.00', '0', '0', '0', '0', '2019-09-28 10:58:14', null);
INSERT INTO `user_business` VALUES ('10', '0.00', '0.00', '0', '0', '0', '0', '2019-10-02 22:40:00', null);
INSERT INTO `user_business` VALUES ('11', '0.00', '0.00', '0', '1', '0', '1', '2019-10-02 23:11:06', null);
INSERT INTO `user_business` VALUES ('12', '0.00', '0.00', '0', '0', '0', '0', '2019-10-02 23:18:31', null);
INSERT INTO `user_business` VALUES ('13', '0.00', '0.00', '1', '1', '0', '1', '2019-10-03 21:25:50', '2019-10-03 21:47:30');
INSERT INTO `user_business` VALUES ('14', '0.00', '0.00', '0', '0', '0', '0', '2019-10-05 21:07:06', null);
INSERT INTO `user_business` VALUES ('15', '0.00', '0.00', '0', '1', '0', '1', '2019-10-06 01:07:53', null);
INSERT INTO `user_business` VALUES ('16', '0.00', '0.00', '0', '0', '0', '0', '2019-10-06 14:02:27', null);
INSERT INTO `user_business` VALUES ('17', '0.00', '0.00', '0', '1', '0', '1', '2019-10-06 21:15:04', null);
INSERT INTO `user_business` VALUES ('18', '100.28', '0.00', '1', '1', '1', '1', '2019-10-06 21:25:25', '2019-10-06 21:39:20');
INSERT INTO `user_business` VALUES ('19', '0.00', '0.00', '0', '0', '0', '0', '2019-10-06 21:26:15', null);
INSERT INTO `user_business` VALUES ('20', '0.00', '0.00', '0', '1', '0', '1', '2019-10-06 22:36:19', null);
INSERT INTO `user_business` VALUES ('21', '0.00', '0.00', '0', '0', '0', '0', '2019-10-07 13:57:06', null);
INSERT INTO `user_business` VALUES ('22', '0.00', '0.00', '0', '1', '0', '1', '2019-10-07 14:03:31', null);
INSERT INTO `user_business` VALUES ('23', '0.00', '0.00', '1', '1', '0', '1', '2019-10-07 14:03:53', '2019-10-12 23:24:39');
INSERT INTO `user_business` VALUES ('24', '0.00', '0.00', '0', '0', '0', '0', '2019-10-08 03:38:34', null);
INSERT INTO `user_business` VALUES ('25', '0.00', '0.00', '0', '1', '0', '1', '2019-10-08 17:35:00', null);
INSERT INTO `user_business` VALUES ('26', '0.00', '0.00', '0', '1', '0', '1', '2019-10-16 16:07:35', null);
INSERT INTO `user_business` VALUES ('27', '0.00', '0.00', '0', '0', '0', '0', '2019-10-16 16:12:33', null);
