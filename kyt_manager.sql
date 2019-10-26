/*
Navicat MySQL Data Transfer

Source Server         : Loki
Source Server Version : 50726
Source Host           : 47.112.195.158:3306
Source Database       : kyt_manager

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-10-19 17:04:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('18', 'phone_white', '手机白名单', 'PhoneWhite', 'crud', 'com.ruoyi.module', 'module', 'white', '手机白名单', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-10-06 22:54:33', '', '2019-10-07 00:23:46', '');
INSERT INTO `gen_table` VALUES ('22', 'merchant', '商户名单', 'Merchant', 'crud', 'com.ruoyi.module', 'module', 'merchant', '商户名单', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-10-13 16:45:55', '', '2019-10-13 16:47:01', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('73', '18', 'phone', '手机号', 'varchar(16)', 'String', 'phone', '1', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '1', 'admin', '2019-10-06 22:54:33', null, '2019-10-07 00:23:46');
INSERT INTO `gen_table_column` VALUES ('99', '22', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-10-13 16:45:55', null, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES ('100', '22', 'name', '商户名称', 'varchar(32)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-10-13 16:45:55', null, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES ('101', '22', 'ip', '允许接入IP', 'varchar(32)', 'String', 'ip', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2019-10-13 16:45:55', null, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES ('102', '22', 'mch_id', '商户ID', 'varchar(32)', 'String', 'mchId', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2019-10-13 16:45:55', null, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES ('103', '22', 'api_key', '接口密钥', 'varchar(128)', 'String', 'apiKey', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2019-10-13 16:45:55', null, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES ('104', '22', 'depict', '描述', 'varchar(64)', 'String', 'depict', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2019-10-13 16:45:55', null, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES ('105', '22', 'create_time', '生成时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', '1', 'BETWEEN', 'datetime', '', '7', 'admin', '2019-10-13 16:45:55', null, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES ('106', '22', 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '8', 'admin', '2019-10-13 16:45:55', null, '2019-10-13 16:47:01');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'iZwz90b90ofoz9f88jrg45Z1570383107032', '1571475873917', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1570960710000', '-1', '5', 'PAUSED', 'CRON', '1570960705000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1570960710000', '-1', '5', 'PAUSED', 'CRON', '1570960705000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1570960720000', '-1', '5', 'PAUSED', 'CRON', '1570960706000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 18:50:30', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 19:03:17', '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 18:34:33', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '快易通', '0', 'admin', '15888888888', 'admin@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 18:56:24');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 18:25:18');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 18:34:57');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 18:35:00');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 18:35:04');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 18:35:06');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 18:35:10');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误3次', '2019-10-06 18:35:14');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误4次', '2019-10-06 18:35:20');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误5次', '2019-10-06 18:35:24');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2019-10-06 18:35:27');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 18:37:48');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 18:39:47');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 18:40:20');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 18:44:44');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 18:47:01');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误3次', '2019-10-06 18:47:47');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误4次', '2019-10-06 18:48:07');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 18:48:21');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:01:20');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:01:33');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 19:01:36');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:01:42');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:10:23');
INSERT INTO `sys_logininfor` VALUES ('123', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:10:26');
INSERT INTO `sys_logininfor` VALUES ('124', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:16:05');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:16:09');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:17:48');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:17:49');
INSERT INTO `sys_logininfor` VALUES ('128', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:17:53');
INSERT INTO `sys_logininfor` VALUES ('129', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 19:17:57');
INSERT INTO `sys_logininfor` VALUES ('130', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:19:00');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:19:05');
INSERT INTO `sys_logininfor` VALUES ('132', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 19:19:16');
INSERT INTO `sys_logininfor` VALUES ('133', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误3次', '2019-10-06 19:20:07');
INSERT INTO `sys_logininfor` VALUES ('134', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:20:16');
INSERT INTO `sys_logininfor` VALUES ('135', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:20:42');
INSERT INTO `sys_logininfor` VALUES ('136', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:20:47');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:23:13');
INSERT INTO `sys_logininfor` VALUES ('138', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:23:17');
INSERT INTO `sys_logininfor` VALUES ('139', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:23:21');
INSERT INTO `sys_logininfor` VALUES ('140', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:28:24');
INSERT INTO `sys_logininfor` VALUES ('141', 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:29:04');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:29:47');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:30:36');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:30:48');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:30:52');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:31:33');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:31:51');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:32:24');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:33:18');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 19:34:49');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:34:55');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:43:10');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:45:14');
INSERT INTO `sys_logininfor` VALUES ('154', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:45:21');
INSERT INTO `sys_logininfor` VALUES ('155', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:46:21');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:46:22');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:46:32');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:49:07');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:49:16');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:50:28');
INSERT INTO `sys_logininfor` VALUES ('161', '123123', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:50:34');
INSERT INTO `sys_logininfor` VALUES ('162', '123123', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:50:42');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:50:52');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:51:08');
INSERT INTO `sys_logininfor` VALUES ('165', '12321312', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:51:16');
INSERT INTO `sys_logininfor` VALUES ('166', '12321312', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:51:19');
INSERT INTO `sys_logininfor` VALUES ('167', '12321312', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:51:29');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:51:36');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:52:13');
INSERT INTO `sys_logininfor` VALUES ('170', '12321312', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:52:19');
INSERT INTO `sys_logininfor` VALUES ('171', '12321312', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:52:29');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:53:01');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 20:13:44');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 20:13:51');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 20:15:41');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 20:15:43');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 20:15:47');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 20:16:20');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 20:47:13');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 20:47:27');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 20:51:53');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 20:52:01');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 20:52:07');
INSERT INTO `sys_logininfor` VALUES ('184', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 20:52:15');
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:09:23');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:09:25');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-07 00:09:30');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:09:35');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:21:54');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-07 00:21:59');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误3次', '2019-10-07 00:22:04');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:22:10');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:27:40');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:27:47');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:35:33');
INSERT INTO `sys_logininfor` VALUES ('196', '13017751223', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:35:37');
INSERT INTO `sys_logininfor` VALUES ('197', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:36:35');
INSERT INTO `sys_logininfor` VALUES ('198', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:36:59');
INSERT INTO `sys_logininfor` VALUES ('199', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:37:46');
INSERT INTO `sys_logininfor` VALUES ('200', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:38:23');
INSERT INTO `sys_logininfor` VALUES ('201', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:38:26');
INSERT INTO `sys_logininfor` VALUES ('202', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:38:36');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:38:43');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:51:03');
INSERT INTO `sys_logininfor` VALUES ('205', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:51:40');
INSERT INTO `sys_logininfor` VALUES ('206', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:52:02');
INSERT INTO `sys_logininfor` VALUES ('207', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:52:05');
INSERT INTO `sys_logininfor` VALUES ('208', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:52:08');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:53:05');
INSERT INTO `sys_logininfor` VALUES ('210', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:53:10');
INSERT INTO `sys_logininfor` VALUES ('211', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:53:26');
INSERT INTO `sys_logininfor` VALUES ('212', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:53:35');
INSERT INTO `sys_logininfor` VALUES ('213', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:57:08');
INSERT INTO `sys_logininfor` VALUES ('214', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:57:20');
INSERT INTO `sys_logininfor` VALUES ('215', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:59:39');
INSERT INTO `sys_logininfor` VALUES ('216', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:59:50');
INSERT INTO `sys_logininfor` VALUES ('217', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:02:34');
INSERT INTO `sys_logininfor` VALUES ('218', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:02:44');
INSERT INTO `sys_logininfor` VALUES ('219', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:03:53');
INSERT INTO `sys_logininfor` VALUES ('220', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:04:07');
INSERT INTO `sys_logininfor` VALUES ('221', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:06:14');
INSERT INTO `sys_logininfor` VALUES ('222', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:06:18');
INSERT INTO `sys_logininfor` VALUES ('223', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:07:15');
INSERT INTO `sys_logininfor` VALUES ('224', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:07:24');
INSERT INTO `sys_logininfor` VALUES ('225', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:07:37');
INSERT INTO `sys_logininfor` VALUES ('226', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 01:07:39');
INSERT INTO `sys_logininfor` VALUES ('227', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:07:42');
INSERT INTO `sys_logininfor` VALUES ('228', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:07:55');
INSERT INTO `sys_logininfor` VALUES ('229', '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:07:58');
INSERT INTO `sys_logininfor` VALUES ('230', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:09:42');
INSERT INTO `sys_logininfor` VALUES ('231', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:26:04');
INSERT INTO `sys_logininfor` VALUES ('232', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 01:32:02');
INSERT INTO `sys_logininfor` VALUES ('233', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:32:06');
INSERT INTO `sys_logininfor` VALUES ('234', 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2019-10-07 01:32:47');
INSERT INTO `sys_logininfor` VALUES ('235', 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android Mobile', '1', '密码输入错误2次', '2019-10-07 01:32:58');
INSERT INTO `sys_logininfor` VALUES ('236', '17722630080', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-10-07 01:33:06');
INSERT INTO `sys_logininfor` VALUES ('237', '13017751223', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2019-10-07 01:39:13');
INSERT INTO `sys_logininfor` VALUES ('238', '17722630080', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-10-07 01:39:35');
INSERT INTO `sys_logininfor` VALUES ('239', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 02:51:22');
INSERT INTO `sys_logininfor` VALUES ('240', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 02:53:59');
INSERT INTO `sys_logininfor` VALUES ('241', 'admin', '127.0.0.1', '内网IP', 'Chrome 49', 'Windows 10', '1', '密码输入错误1次', '2019-10-08 11:17:41');
INSERT INTO `sys_logininfor` VALUES ('242', 'admin', '127.0.0.1', '内网IP', 'Chrome 49', 'Windows 10', '0', '登录成功', '2019-10-08 11:17:44');
INSERT INTO `sys_logininfor` VALUES ('243', 'admin', '127.0.0.1', '内网IP', 'Chrome 49', 'Windows 10', '1', '密码输入错误1次', '2019-10-08 15:21:25');
INSERT INTO `sys_logininfor` VALUES ('244', 'admin', '127.0.0.1', '内网IP', 'Chrome 49', 'Windows 10', '0', '登录成功', '2019-10-08 15:21:27');
INSERT INTO `sys_logininfor` VALUES ('245', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-09 19:45:50');
INSERT INTO `sys_logininfor` VALUES ('246', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-09 19:45:56');
INSERT INTO `sys_logininfor` VALUES ('247', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-13 06:00:55');
INSERT INTO `sys_logininfor` VALUES ('248', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 06:01:03');
INSERT INTO `sys_logininfor` VALUES ('249', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-13 06:04:13');
INSERT INTO `sys_logininfor` VALUES ('250', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-13 06:04:17');
INSERT INTO `sys_logininfor` VALUES ('251', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-13 06:16:03');
INSERT INTO `sys_logininfor` VALUES ('252', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-13 06:16:10');
INSERT INTO `sys_logininfor` VALUES ('253', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 06:18:14');
INSERT INTO `sys_logininfor` VALUES ('254', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 06:26:24');
INSERT INTO `sys_logininfor` VALUES ('255', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 06:29:39');
INSERT INTO `sys_logininfor` VALUES ('256', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 07:18:33');
INSERT INTO `sys_logininfor` VALUES ('257', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 07:21:12');
INSERT INTO `sys_logininfor` VALUES ('258', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 07:22:31');
INSERT INTO `sys_logininfor` VALUES ('259', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 07:23:43');
INSERT INTO `sys_logininfor` VALUES ('260', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-13 15:44:13');
INSERT INTO `sys_logininfor` VALUES ('261', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-13 15:44:18');
INSERT INTO `sys_logininfor` VALUES ('262', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:22:09');
INSERT INTO `sys_logininfor` VALUES ('263', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:55:08');
INSERT INTO `sys_logininfor` VALUES ('264', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:55:43');
INSERT INTO `sys_logininfor` VALUES ('265', '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:55:47');
INSERT INTO `sys_logininfor` VALUES ('266', '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:55:55');
INSERT INTO `sys_logininfor` VALUES ('267', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:55:58');
INSERT INTO `sys_logininfor` VALUES ('268', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:57:06');
INSERT INTO `sys_logininfor` VALUES ('269', '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:57:09');
INSERT INTO `sys_logininfor` VALUES ('270', '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:57:16');
INSERT INTO `sys_logininfor` VALUES ('271', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:57:17');
INSERT INTO `sys_logininfor` VALUES ('272', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:57:56');
INSERT INTO `sys_logininfor` VALUES ('273', '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:58:00');
INSERT INTO `sys_logininfor` VALUES ('274', '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:58:12');
INSERT INTO `sys_logininfor` VALUES ('275', '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:58:34');
INSERT INTO `sys_logininfor` VALUES ('276', '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 18:01:17');
INSERT INTO `sys_logininfor` VALUES ('277', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 18:01:18');
INSERT INTO `sys_logininfor` VALUES ('278', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 18:02:26');
INSERT INTO `sys_logininfor` VALUES ('279', '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 18:02:31');
INSERT INTO `sys_logininfor` VALUES ('280', '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-13 18:02:49');
INSERT INTO `sys_logininfor` VALUES ('281', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 18:02:53');
INSERT INTO `sys_logininfor` VALUES ('282', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 18:04:06');
INSERT INTO `sys_logininfor` VALUES ('283', '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 18:04:11');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2011 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '100', '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-07 00:47:31', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '120', '#', 'menuItem', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-07 00:47:56', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '130', '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-07 00:48:04', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', 'menuItem', 'C', '1', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 19:35:46', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '任务详细', '110', '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务导出', '110', '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成查询', '114', '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成修改', '114', '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '生成删除', '114', '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '114', '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '114', '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('2000', '管理员功能', '0', '1', '#', 'menuItem', 'M', '0', '', 'fa fa-edit', 'admin', '2019-10-07 00:46:41', 'admin', '2019-10-13 15:48:55', '');
INSERT INTO `sys_menu` VALUES ('2001', '手机白名单', '2000', '1', '/module/white', 'menuItem', 'C', '0', 'module:white:view', '#', 'admin', '2019-10-07 00:49:05', 'admin', '2019-10-13 15:56:43', '');
INSERT INTO `sys_menu` VALUES ('2003', '查询', '2001', '1', '#', 'menuItem', 'F', '0', 'module:white:list', '#', '17722630080', '2019-10-07 01:02:23', '17722630080', '2019-10-07 01:04:42', '');
INSERT INTO `sys_menu` VALUES ('2004', '删除', '2001', '2', '#', 'menuItem', 'F', '0', 'module:white:remove', '#', '17722630080', '2019-10-07 01:05:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '新增', '2001', '3', '#', 'menuItem', 'F', '0', 'module:white:add', '#', '17722630080', '2019-10-07 01:05:54', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '商户管理', '2000', '2', '/module/merchant', 'menuItem', 'C', '0', 'module:merchant:view', 'fa fa-address-book', 'admin', '2019-10-13 15:51:05', '13017751223', '2019-10-13 18:00:02', '');
INSERT INTO `sys_menu` VALUES ('2007', '查询', '2006', '1', '#', 'menuItem', 'F', '0', 'module:merchant:list', '#', 'admin', '2019-10-13 15:57:15', 'admin', '2019-10-13 18:02:07', '');
INSERT INTO `sys_menu` VALUES ('2008', '删除', '2006', '2', '#', 'menuItem', 'F', '0', 'module:merchant:remove', '#', 'admin', '2019-10-13 15:57:45', 'admin', '2019-10-13 16:20:06', '');
INSERT INTO `sys_menu` VALUES ('2009', '修改', '2006', '3', '#', 'menuItem', 'F', '0', 'module:merchant:edit', '#', 'admin', '2019-10-13 15:58:05', 'admin', '2019-10-13 16:20:12', '');
INSERT INTO `sys_menu` VALUES ('2010', '新增', '2006', '4', '#', 'menuItem', 'F', '0', 'module:merchant:add', '#', 'admin', '2019-10-13 15:59:19', 'admin', '2019-10-13 16:20:17', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', '1', 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"3@qq.com\" ],\r\n  \"sex\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:27:15');
INSERT INTO `sys_oper_log` VALUES ('101', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', '1', 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"sex\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:27:22');
INSERT INTO `sys_oper_log` VALUES ('102', '通知公告', '3', 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'POST', '1', 'admin', '研发部门', '/system/notice/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1,2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:27:34');
INSERT INTO `sys_oper_log` VALUES ('103', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:29:47');
INSERT INTO `sys_oper_log` VALUES ('104', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:30:08');
INSERT INTO `sys_oper_log` VALUES ('105', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-yellow\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:31:23');
INSERT INTO `sys_oper_log` VALUES ('106', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-green\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:31:41');
INSERT INTO `sys_oper_log` VALUES ('107', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:31:53');
INSERT INTO `sys_oper_log` VALUES ('108', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"3\" ],\r\n  \"configName\" : [ \"主框架页-侧边栏主题\" ],\r\n  \"configKey\" : [ \"sys.index.sideTheme\" ],\r\n  \"configValue\" : [ \"theme-light\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"深色主题theme-dark，浅色主题theme-light\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:32:03');
INSERT INTO `sys_oper_log` VALUES ('109', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \" skin-purple\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:32:24');
INSERT INTO `sys_oper_log` VALUES ('110', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-red\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:32:45');
INSERT INTO `sys_oper_log` VALUES ('111', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:33:36');
INSERT INTO `sys_oper_log` VALUES ('112', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"3\" ],\r\n  \"configName\" : [ \"主框架页-侧边栏主题\" ],\r\n  \"configKey\" : [ \"sys.index.sideTheme\" ],\r\n  \"configValue\" : [ \"theme-dark\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"深色主题theme-dark，浅色主题theme-light\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:33:52');
INSERT INTO `sys_oper_log` VALUES ('113', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-red\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:34:16');
INSERT INTO `sys_oper_log` VALUES ('114', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"3\" ],\r\n  \"configName\" : [ \"主框架页-侧边栏主题\" ],\r\n  \"configKey\" : [ \"sys.index.sideTheme\" ],\r\n  \"configValue\" : [ \"theme-light\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"深色主题theme-dark，浅色主题theme-light\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:34:33');
INSERT INTO `sys_oper_log` VALUES ('115', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"2\" ],\r\n  \"configName\" : [ \"用户管理-账号初始密码\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword\" ],\r\n  \"configValue\" : [ \"5400228\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"初始化密码 123456\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:34:54');
INSERT INTO `sys_oper_log` VALUES ('116', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"2\" ],\r\n  \"configName\" : [ \"用户管理-账号初始密码\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"初始化密码 123456\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:48:43');
INSERT INTO `sys_oper_log` VALUES ('117', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \" skin-green\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:49:00');
INSERT INTO `sys_oper_log` VALUES ('118', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-purple\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:49:16');
INSERT INTO `sys_oper_log` VALUES ('119', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:50:18');
INSERT INTO `sys_oper_log` VALUES ('120', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:50:30');
INSERT INTO `sys_oper_log` VALUES ('121', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"快易通\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 18:54:06');
INSERT INTO `sys_oper_log` VALUES ('122', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"快易通\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\", \"2\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1,2\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 18:54:13');
INSERT INTO `sys_oper_log` VALUES ('123', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"快易通\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 18:54:16');
INSERT INTO `sys_oper_log` VALUES ('124', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"存在下级部门,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2019-10-06 18:55:36');
INSERT INTO `sys_oper_log` VALUES ('125', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/109', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:55:42');
INSERT INTO `sys_oper_log` VALUES ('126', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/108', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:55:42');
INSERT INTO `sys_oper_log` VALUES ('127', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:55:45');
INSERT INTO `sys_oper_log` VALUES ('128', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"parentName\" : [ \"无\" ],\r\n  \"deptName\" : [ \"快易通\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"leader\" : [ \"admin\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 18:56:24');
INSERT INTO `sys_oper_log` VALUES ('129', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:00:22');
INSERT INTO `sys_oper_log` VALUES ('130', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许操作超级管理员用户\",\r\n  \"code\" : 500\r\n}', '0', null, '2019-10-06 19:00:54');
INSERT INTO `sys_oper_log` VALUES ('131', '在线用户', '7', 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', '1', 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"e9c5d6f3-e8b5-46c8-9835-76bc826e367d\" ]\r\n}', '{\r\n  \"msg\" : \"当前登陆用户无法强退\",\r\n  \"code\" : 500\r\n}', '0', null, '2019-10-06 19:02:39');
INSERT INTO `sys_oper_log` VALUES ('132', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"2\" ],\r\n  \"configName\" : [ \"用户管理-账号初始密码\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"初始化密码 123456\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:03:17');
INSERT INTO `sys_oper_log` VALUES ('133', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\r\n  \"roleName\" : [ \"运维管理员\" ],\r\n  \"roleKey\" : [ \"ceo\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:06:20');
INSERT INTO `sys_oper_log` VALUES ('134', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"boss\" ],\r\n  \"roleKey\" : [ \"boss\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:08:47');
INSERT INTO `sys_oper_log` VALUES ('135', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"17722630080\" ],\r\n  \"email\" : [ \"1@qq.com\" ],\r\n  \"loginName\" : [ \"17722630080\" ],\r\n  \"password\" : [ \"17722630080\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:09:49');
INSERT INTO `sys_oper_log` VALUES ('136', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"17722630080\" ],\r\n  \"email\" : [ \"1@qq.com\" ],\r\n  \"loginName\" : [ \"17722630080\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:10:16');
INSERT INTO `sys_oper_log` VALUES ('137', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 'null', '1', '不允许操作超级管理员角色', '2019-10-06 19:11:01');
INSERT INTO `sys_oper_log` VALUES ('138', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"boss\" ],\r\n  \"roleKey\" : [ \"boss\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:11:09');
INSERT INTO `sys_oper_log` VALUES ('139', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"boss\" ],\r\n  \"roleKey\" : [ \"boss\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:11:14');
INSERT INTO `sys_oper_log` VALUES ('140', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:11:32');
INSERT INTO `sys_oper_log` VALUES ('141', '角色管理', '4', 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', '1', '17722630080', '运维部门', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"userId\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:12:30');
INSERT INTO `sys_oper_log` VALUES ('142', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:12:57');
INSERT INTO `sys_oper_log` VALUES ('143', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', '17722630080', '运维部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许操作超级管理员用户\",\r\n  \"code\" : 500\r\n}', '0', null, '2019-10-06 19:13:13');
INSERT INTO `sys_oper_log` VALUES ('144', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 'null', '1', '不允许操作超级管理员角色', '2019-10-06 19:14:09');
INSERT INTO `sys_oper_log` VALUES ('145', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"boss\" ],\r\n  \"roleKey\" : [ \"boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:14:40');
INSERT INTO `sys_oper_log` VALUES ('146', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', '17722630080', '运维部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"13017751223\" ],\r\n  \"deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"13017751223\" ],\r\n  \"email\" : [ \"2@qq.com\" ],\r\n  \"loginName\" : [ \"13017751223\" ],\r\n  \"password\" : [ \"13017751223\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:15:41');
INSERT INTO `sys_oper_log` VALUES ('147', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"101\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:21:01');
INSERT INTO `sys_oper_log` VALUES ('148', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"100\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:21:03');
INSERT INTO `sys_oper_log` VALUES ('149', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'dev', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"dev\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"dev\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:21:17');
INSERT INTO `sys_oper_log` VALUES ('150', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'dev', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"dev\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:21:24');
INSERT INTO `sys_oper_log` VALUES ('151', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'dev', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"dev\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:21:27');
INSERT INTO `sys_oper_log` VALUES ('152', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'dev', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18576438460\" ],\r\n  \"email\" : [ \"1221@qq.com\" ],\r\n  \"loginName\" : [ \"123123123123\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:25:21');
INSERT INTO `sys_oper_log` VALUES ('153', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"102\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:25:47');
INSERT INTO `sys_oper_log` VALUES ('154', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"102\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:28:44');
INSERT INTO `sys_oper_log` VALUES ('155', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"101\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:28:46');
INSERT INTO `sys_oper_log` VALUES ('156', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"100\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:28:48');
INSERT INTO `sys_oper_log` VALUES ('157', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许操作超级管理员用户\",\r\n  \"code\" : 500\r\n}', '0', null, '2019-10-06 19:28:50');
INSERT INTO `sys_oper_log` VALUES ('158', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/115', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2019-10-06 19:35:25');
INSERT INTO `sys_oper_log` VALUES ('159', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"115\" ],\r\n  \"parentId\" : [ \"3\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"系统接口\" ],\r\n  \"url\" : [ \"/tool/swagger\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"tool:swagger:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:35:46');
INSERT INTO `sys_oper_log` VALUES ('160', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:37:20');
INSERT INTO `sys_oper_log` VALUES ('161', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许操作超级管理员用户\",\r\n  \"code\" : 500\r\n}', '0', null, '2019-10-06 19:37:37');
INSERT INTO `sys_oper_log` VALUES ('162', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许操作超级管理员用户\",\r\n  \"code\" : 500\r\n}', '0', null, '2019-10-06 19:37:59');
INSERT INTO `sys_oper_log` VALUES ('163', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"17722630080\" ],\r\n  \"email\" : [ \"1@email.com\" ],\r\n  \"loginName\" : [ \"17722630080\" ],\r\n  \"password\" : [ \"17722630080\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:39:22');
INSERT INTO `sys_oper_log` VALUES ('164', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"13017751223\" ],\r\n  \"deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"13017751223\" ],\r\n  \"email\" : [ \"2@email.com\" ],\r\n  \"loginName\" : [ \"13017751223\" ],\r\n  \"password\" : [ \"13017751223\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:39:55');
INSERT INTO `sys_oper_log` VALUES ('165', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:40:21');
INSERT INTO `sys_oper_log` VALUES ('166', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:41:22');
INSERT INTO `sys_oper_log` VALUES ('167', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:41:37');
INSERT INTO `sys_oper_log` VALUES ('168', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:42:12');
INSERT INTO `sys_oper_log` VALUES ('169', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:42:18');
INSERT INTO `sys_oper_log` VALUES ('170', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', '1', '不允许操作超级管理员用户', '2019-10-06 19:42:26');
INSERT INTO `sys_oper_log` VALUES ('171', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:44:18');
INSERT INTO `sys_oper_log` VALUES ('172', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\", \"2\", \"100\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1,2,100\" ],\r\n  \"postIds\" : [ \"1,2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:46:17');
INSERT INTO `sys_oper_log` VALUES ('173', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员/开发者\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 'null', '1', '不允许操作超级管理员角色', '2019-10-06 19:47:04');
INSERT INTO `sys_oper_log` VALUES ('174', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"123123\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18576438411\" ],\r\n  \"email\" : [ \"12321@qq.com\" ],\r\n  \"loginName\" : [ \"12321312\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:47:55');
INSERT INTO `sys_oper_log` VALUES ('175', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', '1', 'admin', '研发部门', '/system/user/resetPwd/105', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', '0', null, '2019-10-06 19:49:41');
INSERT INTO `sys_oper_log` VALUES ('176', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', '1', 'admin', '研发部门', '/system/user/resetPwd/104', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', '0', null, '2019-10-06 19:49:44');
INSERT INTO `sys_oper_log` VALUES ('177', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', '1', 'admin', '研发部门', '/system/user/resetPwd/103', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', '0', null, '2019-10-06 19:49:46');
INSERT INTO `sys_oper_log` VALUES ('178', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', '1', 'admin', '研发部门', '/system/user/resetPwd/105', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', '0', null, '2019-10-06 19:50:11');
INSERT INTO `sys_oper_log` VALUES ('179', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', '1', 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"105\" ],\r\n  \"loginName\" : [ \"12321312\" ],\r\n  \"password\" : [ \"8888811111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:50:22');
INSERT INTO `sys_oper_log` VALUES ('180', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', '1', 'admin', '研发部门', '/system/user/resetPwd/105', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', '0', null, '2019-10-06 19:51:01');
INSERT INTO `sys_oper_log` VALUES ('181', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', '1', 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"105\" ],\r\n  \"loginName\" : [ \"12321312\" ],\r\n  \"password\" : [ \"123456789\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:51:06');
INSERT INTO `sys_oper_log` VALUES ('182', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', '1', 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"5\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:52:01');
INSERT INTO `sys_oper_log` VALUES ('183', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:52:11');
INSERT INTO `sys_oper_log` VALUES ('184', '重置密码', '2', 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', '1', 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"oldPassword\" : [ \"Admin123456\" ],\r\n  \"newPassword\" : [ \"Admin5400228\" ],\r\n  \"confirm\" : [ \"Admin5400228\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 19:57:54');
INSERT INTO `sys_oper_log` VALUES ('185', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_dept\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 21:15:15');
INSERT INTO `sys_oper_log` VALUES ('186', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 21:15:21');
INSERT INTO `sys_oper_log` VALUES ('187', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_config\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 21:16:43');
INSERT INTO `sys_oper_log` VALUES ('188', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_config\" ]\r\n}', 'null', '0', null, '2019-10-06 21:16:49');
INSERT INTO `sys_oper_log` VALUES ('189', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_job_log\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 21:23:35');
INSERT INTO `sys_oper_log` VALUES ('190', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', 'null', '1', 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'schemas\' not found. Available parameters are [array]', '2019-10-06 22:13:15');
INSERT INTO `sys_oper_log` VALUES ('191', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', 'null', '1', 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'schemas\' not found. Available parameters are [array]', '2019-10-06 22:14:50');
INSERT INTO `sys_oper_log` VALUES ('192', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', 'null', '1', 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'schemas\' not found. Available parameters are [array]', '2019-10-06 22:18:59');
INSERT INTO `sys_oper_log` VALUES ('193', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', 'null', '1', 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'schemas\' not found. Available parameters are [arg1, arg0, param1, param2]', '2019-10-06 22:20:33');
INSERT INTO `sys_oper_log` VALUES ('194', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:21:46');
INSERT INTO `sys_oper_log` VALUES ('195', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"4\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:22:14');
INSERT INTO `sys_oper_log` VALUES ('196', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:22:15');
INSERT INTO `sys_oper_log` VALUES ('197', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:22:17');
INSERT INTO `sys_oper_log` VALUES ('198', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:23:14');
INSERT INTO `sys_oper_log` VALUES ('199', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-06 22:23:21');
INSERT INTO `sys_oper_log` VALUES ('200', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-06 22:23:36');
INSERT INTO `sys_oper_log` VALUES ('201', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-06 22:25:26');
INSERT INTO `sys_oper_log` VALUES ('202', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"5\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:25:54');
INSERT INTO `sys_oper_log` VALUES ('203', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:43:59');
INSERT INTO `sys_oper_log` VALUES ('204', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:44:17');
INSERT INTO `sys_oper_log` VALUES ('205', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"7\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:44:56');
INSERT INTO `sys_oper_log` VALUES ('206', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"6\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:44:57');
INSERT INTO `sys_oper_log` VALUES ('207', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:45:51');
INSERT INTO `sys_oper_log` VALUES ('208', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"8\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:46:04');
INSERT INTO `sys_oper_log` VALUES ('209', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:46:09');
INSERT INTO `sys_oper_log` VALUES ('210', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:48:31');
INSERT INTO `sys_oper_log` VALUES ('211', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"order_flow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:48:50');
INSERT INTO `sys_oper_log` VALUES ('212', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"user\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:49:04');
INSERT INTO `sys_oper_log` VALUES ('213', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"13\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:49:08');
INSERT INTO `sys_oper_log` VALUES ('214', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"12\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:49:10');
INSERT INTO `sys_oper_log` VALUES ('215', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"11\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:49:12');
INSERT INTO `sys_oper_log` VALUES ('216', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"10\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:49:13');
INSERT INTO `sys_oper_log` VALUES ('217', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"9\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:49:15');
INSERT INTO `sys_oper_log` VALUES ('218', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"order_flow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:49:27');
INSERT INTO `sys_oper_log` VALUES ('219', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_dict_type\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:49:38');
INSERT INTO `sys_oper_log` VALUES ('220', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"15\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:49:41');
INSERT INTO `sys_oper_log` VALUES ('221', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"14\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:49:43');
INSERT INTO `sys_oper_log` VALUES ('222', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:51:05');
INSERT INTO `sys_oper_log` VALUES ('223', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"16\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:53:23');
INSERT INTO `sys_oper_log` VALUES ('224', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:53:38');
INSERT INTO `sys_oper_log` VALUES ('225', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"17\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:54:28');
INSERT INTO `sys_oper_log` VALUES ('226', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 22:54:33');
INSERT INTO `sys_oper_log` VALUES ('227', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-06 22:54:56');
INSERT INTO `sys_oper_log` VALUES ('228', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"phone_white\" ],\r\n  \"tableComment\" : [ \"手机白名单\" ],\r\n  \"className\" : [ \"PhoneWhite\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"73\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"手机号\" ],\r\n  \"columns[0].javaType\" : [ \"String\" ],\r\n  \"columns[0].javaField\" : [ \"phone\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.modules\" ],\r\n  \"moduleName\" : [ \"modules\" ],\r\n  \"businessName\" : [ \"white\" ],\r\n  \"functionName\" : [ \"手机白名单\" ],\r\n  \"params[treeCode]\" : [ \"\" ],\r\n  \"params[treeParentCode]\" : [ \"\" ],\r\n  \"params[treeName]\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 23:06:53');
INSERT INTO `sys_oper_log` VALUES ('229', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-06 23:07:12');
INSERT INTO `sys_oper_log` VALUES ('230', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"phone_white\" ],\r\n  \"tableComment\" : [ \"手机白名单\" ],\r\n  \"className\" : [ \"PhoneWhite\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"73\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"手机号\" ],\r\n  \"columns[0].javaType\" : [ \"String\" ],\r\n  \"columns[0].javaField\" : [ \"phone\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].isEdit\" : [ \"1\" ],\r\n  \"columns[0].isList\" : [ \"1\" ],\r\n  \"columns[0].isQuery\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].isRequired\" : [ \"1\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.module\" ],\r\n  \"moduleName\" : [ \"module\" ],\r\n  \"businessName\" : [ \"white\" ],\r\n  \"functionName\" : [ \"手机白名单\" ],\r\n  \"params[treeCode]\" : [ \"\" ],\r\n  \"params[treeParentCode]\" : [ \"\" ],\r\n  \"params[treeName]\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-06 23:47:12');
INSERT INTO `sys_oper_log` VALUES ('231', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-06 23:47:15');
INSERT INTO `sys_oper_log` VALUES ('232', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_job\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:22:50');
INSERT INTO `sys_oper_log` VALUES ('233', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"19\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:23:15');
INSERT INTO `sys_oper_log` VALUES ('234', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"phone_white\" ],\r\n  \"tableComment\" : [ \"手机白名单\" ],\r\n  \"className\" : [ \"PhoneWhite\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"73\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"手机号\" ],\r\n  \"columns[0].javaType\" : [ \"String\" ],\r\n  \"columns[0].javaField\" : [ \"phone\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].isEdit\" : [ \"1\" ],\r\n  \"columns[0].isList\" : [ \"1\" ],\r\n  \"columns[0].isQuery\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"LIKE\" ],\r\n  \"columns[0].isRequired\" : [ \"1\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.module\" ],\r\n  \"moduleName\" : [ \"module\" ],\r\n  \"businessName\" : [ \"white\" ],\r\n  \"functionName\" : [ \"手机白名单\" ],\r\n  \"params[treeCode]\" : [ \"\" ],\r\n  \"params[treeParentCode]\" : [ \"\" ],\r\n  \"params[treeName]\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:23:21');
INSERT INTO `sys_oper_log` VALUES ('235', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"phone_white\" ],\r\n  \"tableComment\" : [ \"手机白名单\" ],\r\n  \"className\" : [ \"PhoneWhite\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"73\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"手机号\" ],\r\n  \"columns[0].javaType\" : [ \"String\" ],\r\n  \"columns[0].javaField\" : [ \"phone\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].isEdit\" : [ \"1\" ],\r\n  \"columns[0].isList\" : [ \"1\" ],\r\n  \"columns[0].isQuery\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"LIKE\" ],\r\n  \"columns[0].isRequired\" : [ \"1\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.module\" ],\r\n  \"moduleName\" : [ \"module\" ],\r\n  \"businessName\" : [ \"white\" ],\r\n  \"functionName\" : [ \"手机白名单\" ],\r\n  \"params[treeCode]\" : [ \"\" ],\r\n  \"params[treeParentCode]\" : [ \"\" ],\r\n  \"params[treeName]\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:23:37');
INSERT INTO `sys_oper_log` VALUES ('236', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"phone_white\" ],\r\n  \"tableComment\" : [ \"手机白名单\" ],\r\n  \"className\" : [ \"PhoneWhite\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"73\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"手机号\" ],\r\n  \"columns[0].javaType\" : [ \"String\" ],\r\n  \"columns[0].javaField\" : [ \"phone\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].isEdit\" : [ \"1\" ],\r\n  \"columns[0].isList\" : [ \"1\" ],\r\n  \"columns[0].isQuery\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"LIKE\" ],\r\n  \"columns[0].isRequired\" : [ \"1\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.module\" ],\r\n  \"moduleName\" : [ \"module\" ],\r\n  \"businessName\" : [ \"white\" ],\r\n  \"functionName\" : [ \"手机白名单\" ],\r\n  \"params[treeCode]\" : [ \"\" ],\r\n  \"params[treeParentCode]\" : [ \"\" ],\r\n  \"params[treeName]\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:23:46');
INSERT INTO `sys_oper_log` VALUES ('237', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-07 00:24:09');
INSERT INTO `sys_oper_log` VALUES ('238', '手机白名单', '1', 'com.ruoyi.web.controller.module.PhoneWhiteController.addSave()', 'POST', '1', 'admin', '研发部门', '/module/white/add', '127.0.0.1', '内网IP', '{\r\n  \"phone\" : [ \"18576438460\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:34:28');
INSERT INTO `sys_oper_log` VALUES ('239', '手机白名单', '3', 'com.ruoyi.web.controller.module.PhoneWhiteController.remove()', 'POST', '1', 'admin', '研发部门', '/module/white/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"18576438460\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:34:49');
INSERT INTO `sys_oper_log` VALUES ('240', '重置密码', '2', 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', '1', 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"oldPassword\" : [ \"Admin5400228\" ],\r\n  \"newPassword\" : [ \"5400228\" ],\r\n  \"confirm\" : [ \"5400228\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:38:51');
INSERT INTO `sys_oper_log` VALUES ('241', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统参数配置\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-edit\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:46:41');
INSERT INTO `sys_oper_log` VALUES ('242', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"icon\" : [ \"fa fa-gear\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:47:31');
INSERT INTO `sys_oper_log` VALUES ('243', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统参数配置\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"fa fa-edit\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:47:40');
INSERT INTO `sys_oper_log` VALUES ('244', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统参数配置\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"110\" ],\r\n  \"icon\" : [ \"fa fa-edit\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:47:47');
INSERT INTO `sys_oper_log` VALUES ('245', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统监控\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"120\" ],\r\n  \"icon\" : [ \"fa fa-video-camera\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:47:56');
INSERT INTO `sys_oper_log` VALUES ('246', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"130\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:48:04');
INSERT INTO `sys_oper_log` VALUES ('247', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统参数配置\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-edit\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:48:15');
INSERT INTO `sys_oper_log` VALUES ('248', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"白名单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:49:05');
INSERT INTO `sys_oper_log` VALUES ('249', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:50:12');
INSERT INTO `sys_oper_log` VALUES ('250', '角色管理', '4', 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', '1', 'admin', '研发部门', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"userId\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:52:42');
INSERT INTO `sys_oper_log` VALUES ('251', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', '1', 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', 'null', '1', '不允许操作超级管理员角色', '2019-10-07 00:52:46');
INSERT INTO `sys_oper_log` VALUES ('252', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:53:03');
INSERT INTO `sys_oper_log` VALUES ('253', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户查询\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"用户查询\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:55:06');
INSERT INTO `sys_oper_log` VALUES ('254', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2002\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:55:14');
INSERT INTO `sys_oper_log` VALUES ('255', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:55:45');
INSERT INTO `sys_oper_log` VALUES ('256', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,112,111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:59:07');
INSERT INTO `sys_oper_log` VALUES ('257', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,112,111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 00:59:32');
INSERT INTO `sys_oper_log` VALUES ('258', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,112,111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:01:07');
INSERT INTO `sys_oper_log` VALUES ('259', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:01:45');
INSERT INTO `sys_oper_log` VALUES ('260', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', '17722630080', '运维部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"白名单查询\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:02:23');
INSERT INTO `sys_oper_log` VALUES ('261', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2002\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:03:12');
INSERT INTO `sys_oper_log` VALUES ('262', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2003\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"白名单查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:03:28');
INSERT INTO `sys_oper_log` VALUES ('263', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2002', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:03:37');
INSERT INTO `sys_oper_log` VALUES ('264', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:03:52');
INSERT INTO `sys_oper_log` VALUES ('265', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2003\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:04:42');
INSERT INTO `sys_oper_log` VALUES ('266', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', '17722630080', '运维部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:remove\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:05:11');
INSERT INTO `sys_oper_log` VALUES ('267', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', '17722630080', '运维部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"新增\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:add\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:05:54');
INSERT INTO `sys_oper_log` VALUES ('268', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,112,111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:06:11');
INSERT INTO `sys_oper_log` VALUES ('269', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:07:13');
INSERT INTO `sys_oper_log` VALUES ('270', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,2004,2005,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:07:53');
INSERT INTO `sys_oper_log` VALUES ('271', '手机白名单', '1', 'com.ruoyi.web.controller.module.PhoneWhiteController.addSave()', 'POST', '1', '17722630080', '运维部门', '/module/white/add', '127.0.0.1', '内网IP', '{\r\n  \"phone\" : [ \"12313131313\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:08:02');
INSERT INTO `sys_oper_log` VALUES ('272', '手机白名单', '3', 'com.ruoyi.web.controller.module.PhoneWhiteController.remove()', 'POST', '1', '17722630080', '运维部门', '/module/white/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"12313131313\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-07 01:08:05');
INSERT INTO `sys_oper_log` VALUES ('273', '手机白名单', '1', 'com.ruoyi.web.controller.module.PhoneWhiteController.addSave()', 'POST', '1', '17722630080', '运维部门', '/admin/module/white/add', '127.0.0.1', '内网IP', '{\n  \"phone\" : [ \"18903021030\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', '0', null, '2019-10-07 01:39:58');
INSERT INTO `sys_oper_log` VALUES ('274', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '研发部门', '/admin/system/user/remove', '127.0.0.1', '内网IP', '{\n  \"ids\" : [ \"105\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', '0', null, '2019-10-07 01:40:48');
INSERT INTO `sys_oper_log` VALUES ('275', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"管理员功能\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-edit\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:48:55');
INSERT INTO `sys_oper_log` VALUES ('276', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/mch\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:51:05');
INSERT INTO `sys_oper_log` VALUES ('277', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"手机白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-tablet\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:52:18');
INSERT INTO `sys_oper_log` VALUES ('278', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/mch\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch_mg:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:53:37');
INSERT INTO `sys_oper_log` VALUES ('279', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"手机白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:54:09');
INSERT INTO `sys_oper_log` VALUES ('280', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/mch\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch_mg:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:54:31');
INSERT INTO `sys_oper_log` VALUES ('281', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/mch\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"mg:mch:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:55:46');
INSERT INTO `sys_oper_log` VALUES ('282', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"手机白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mg:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:56:27');
INSERT INTO `sys_oper_log` VALUES ('283', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"手机白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:56:43');
INSERT INTO `sys_oper_log` VALUES ('284', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/mch\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"mg:mch:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:56:49');
INSERT INTO `sys_oper_log` VALUES ('285', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:57:15');
INSERT INTO `sys_oper_log` VALUES ('286', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch:remove\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:57:45');
INSERT INTO `sys_oper_log` VALUES ('287', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"修改\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch:edit\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:58:05');
INSERT INTO `sys_oper_log` VALUES ('288', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"新增\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch:add\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 15:59:19');
INSERT INTO `sys_oper_log` VALUES ('289', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/admin/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"merchant\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:02:32');
INSERT INTO `sys_oper_log` VALUES ('290', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/admin/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"20\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:03:42');
INSERT INTO `sys_oper_log` VALUES ('291', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/admin/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"merchant\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:03:47');
INSERT INTO `sys_oper_log` VALUES ('292', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"21\" ],\r\n  \"tableName\" : [ \"merchant\" ],\r\n  \"tableComment\" : [ \"商户名单\" ],\r\n  \"className\" : [ \"Merchant\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"93\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"94\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"允许接入的IP\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"ip\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"95\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"商户身份ID\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"mchId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"96\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"调度接口安全校验码\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"apiKey\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"LIKE\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:04:39');
INSERT INTO `sys_oper_log` VALUES ('293', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/admin/tool/gen/genCode/merchant', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-13 16:04:47');
INSERT INTO `sys_oper_log` VALUES ('294', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/admin/tool/gen/genCode/merchant', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-13 16:06:00');
INSERT INTO `sys_oper_log` VALUES ('295', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"21\" ],\r\n  \"tableName\" : [ \"merchant\" ],\r\n  \"tableComment\" : [ \"商户名单\" ],\r\n  \"className\" : [ \"Merchant\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"93\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"94\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"允许接入的IP\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"ip\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"95\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"商户身份ID\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"mchId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"96\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"调度接口安全校验码\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"apiKey\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"LIKE\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:14:15');
INSERT INTO `sys_oper_log` VALUES ('296', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/admin/tool/gen/genCode/merchant', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-13 16:14:18');
INSERT INTO `sys_oper_log` VALUES ('297', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/merchant\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"mg:mch:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:19:43');
INSERT INTO `sys_oper_log` VALUES ('298', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:20:00');
INSERT INTO `sys_oper_log` VALUES ('299', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2008\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:remove\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:20:06');
INSERT INTO `sys_oper_log` VALUES ('300', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2009\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"修改\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:edit\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:20:12');
INSERT INTO `sys_oper_log` VALUES ('301', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2010\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"新增\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:add\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:20:17');
INSERT INTO `sys_oper_log` VALUES ('302', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"21\" ],\r\n  \"tableName\" : [ \"merchant\" ],\r\n  \"tableComment\" : [ \"商户名单\" ],\r\n  \"className\" : [ \"Merchant\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"93\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"94\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"允许接入的IP\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"ip\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"95\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"商户身份ID\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"mchId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"96\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"调度接口安全校验码\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"apiKey\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"LIKE\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:24:49');
INSERT INTO `sys_oper_log` VALUES ('303', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/admin/tool/gen/genCode/merchant', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-13 16:24:57');
INSERT INTO `sys_oper_log` VALUES ('304', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/admin/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"21\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:45:51');
INSERT INTO `sys_oper_log` VALUES ('305', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/admin/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"merchant\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:45:55');
INSERT INTO `sys_oper_log` VALUES ('306', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"22\" ],\r\n  \"tableName\" : [ \"merchant\" ],\r\n  \"tableComment\" : [ \"商户名单\" ],\r\n  \"className\" : [ \"Merchant\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"99\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"100\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"商户名称\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"name\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"101\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"允许接入IP\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"ip\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"102\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"商户ID\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"mchId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"LIKE\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].colu', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:47:01');
INSERT INTO `sys_oper_log` VALUES ('307', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/admin/tool/gen/genCode/merchant', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-13 16:47:04');
INSERT INTO `sys_oper_log` VALUES ('308', '商户名单', '1', 'com.ruoyi.web.controller.module.MerchantController.addSave()', 'POST', '1', 'admin', '研发部门', '/admin/module/merchant/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"测试\" ],\r\n  \"ip\" : [ \"123\" ],\r\n  \"depict\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 16:59:19');
INSERT INTO `sys_oper_log` VALUES ('309', '商户名单', '3', 'com.ruoyi.web.controller.module.MerchantController.remove()', 'POST', '1', 'admin', null, '/admin/module/merchant/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:01:04');
INSERT INTO `sys_oper_log` VALUES ('310', '商户名单', '1', 'com.ruoyi.web.controller.module.MerchantController.addSave()', 'POST', '1', 'admin', null, '/admin/module/merchant/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"测试\" ],\r\n  \"ip\" : [ \"192.168.1.125\" ],\r\n  \"depict\" : [ \"112313123112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:01:23');
INSERT INTO `sys_oper_log` VALUES ('311', '商户名单', '1', 'com.ruoyi.web.controller.module.MerchantController.addSave()', 'POST', '1', 'admin', null, '/admin/module/merchant/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"adasdjakwdljkajkldajkldajlkdajlkdakljdaljkdljkadjlkadlkjadljkadljkalkjdaljkdljkadlkjalkjdaljkdlkajdjlkjakldjkl\" ],\r\n  \"ip\" : [ \"dwajlkdajkldakjldaljkdajlkdljkadljkadjklajldkaljkdljkadjlkljkdaddadada\" ],\r\n  \"depict\" : [ \"wadadadadadajksjkdaljkwjkldaljkdlkjadljkaldjkaljkdwlkjadlkjadlkjalkjlkajdlkjadlkjaldkjwalkjdalkjdlakjdlkjadlkjadljkaljkdwalkjdwa\" ]\r\n}', 'null', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1\r\n### The error may involve com.ruoyi.module.mapper.MerchantMapper.insertMerchant-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into merchant          ( name,             ip,             mch_id,             api_key,             depict,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1\n; Data truncation: Data too long for column \'name\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1', '2019-10-13 17:05:55');
INSERT INTO `sys_oper_log` VALUES ('312', '商户名单', '1', 'com.ruoyi.web.controller.module.MerchantController.addSave()', 'POST', '1', 'admin', null, '/admin/module/merchant/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"dadadadadwadwadwadwadwadwadadwad\" ],\r\n  \"ip\" : [ \"awdadadadadadada\" ],\r\n  \"depict\" : [ \"awdadadwa\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:06:17');
INSERT INTO `sys_oper_log` VALUES ('313', '商户名单', '2', 'com.ruoyi.web.controller.module.MerchantController.editSave()', 'POST', '1', 'admin', null, '/admin/module/merchant/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"name\" : [ \"测试1\" ],\r\n  \"ip\" : [ \"192.168.1.125\" ],\r\n  \"mchId\" : [ \"kytb8fbd349c6d41689\" ],\r\n  \"apiKey\" : [ \"d2acfb79e34d080e08d30b1df1417eb6\" ],\r\n  \"depict\" : [ \"112313123112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:06:25');
INSERT INTO `sys_oper_log` VALUES ('314', '商户名单', '3', 'com.ruoyi.web.controller.module.MerchantController.remove()', 'POST', '1', 'admin', null, '/admin/module/merchant/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:06:27');
INSERT INTO `sys_oper_log` VALUES ('315', '商户名单', '2', 'com.ruoyi.web.controller.module.MerchantController.editSave()', 'POST', '1', 'admin', null, '/admin/module/merchant/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"name\" : [ \"测试\" ],\r\n  \"ip\" : [ \"192.168.1.125\" ],\r\n  \"mchId\" : [ \"kytb8fbd349c6d41689\" ],\r\n  \"apiKey\" : [ \"d2acfb79e34d080e08d30b1df1417eb6\" ],\r\n  \"depict\" : [ \"测试而已哦\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:06:38');
INSERT INTO `sys_oper_log` VALUES ('316', '商户名单', '2', 'com.ruoyi.web.controller.module.MerchantController.editSave()', 'POST', '1', 'admin', null, '/admin/module/merchant/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"name\" : [ \"测试\" ],\r\n  \"ip\" : [ \"192.168.1.125\" ],\r\n  \"depict\" : [ \"测试数据\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:11:09');
INSERT INTO `sys_oper_log` VALUES ('317', '商户名单', '2', 'com.ruoyi.web.controller.module.MerchantController.editSave()', 'POST', '1', 'admin', null, '/admin/module/merchant/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"name\" : [ \"测试\" ],\r\n  \"ip\" : [ \"192.168.1.125\" ],\r\n  \"depict\" : [ \"测试数据\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:11:21');
INSERT INTO `sys_oper_log` VALUES ('318', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,2004,2005,2006,2007,2008,2009,2010,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:55:37');
INSERT INTO `sys_oper_log` VALUES ('319', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"104\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"13017751223\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"13017751223\" ],\r\n  \"email\" : [ \"2@email.com\" ],\r\n  \"loginName\" : [ \"13017751223\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\", \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1,100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:56:54');
INSERT INTO `sys_oper_log` VALUES ('320', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"103\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"17722630080\" ],\r\n  \"email\" : [ \"1@email.com\" ],\r\n  \"loginName\" : [ \"17722630080\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\", \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1,100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:56:58');
INSERT INTO `sys_oper_log` VALUES ('321', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', '13017751223', '运维部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/merchant\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:59:42');
INSERT INTO `sys_oper_log` VALUES ('322', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', '13017751223', '运维部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 17:59:52');
INSERT INTO `sys_oper_log` VALUES ('323', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', '13017751223', '运维部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/merchant\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 18:00:02');
INSERT INTO `sys_oper_log` VALUES ('324', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', '13017751223', '运维部门', '/admin/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,2004,2005,2006,2007,2008,2009,2010,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,112,111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 18:00:51');
INSERT INTO `sys_oper_log` VALUES ('325', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 18:02:07');
INSERT INTO `sys_oper_log` VALUES ('326', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,2004,2005,2006,2007,2008,2009,2010,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 18:02:24');
INSERT INTO `sys_oper_log` VALUES ('327', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"104\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"13017751223\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"13017751223\" ],\r\n  \"email\" : [ \"2@email.com\" ],\r\n  \"loginName\" : [ \"13017751223\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 18:03:59');
INSERT INTO `sys_oper_log` VALUES ('328', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/admin/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"103\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"17722630080\" ],\r\n  \"email\" : [ \"1@email.com\" ],\r\n  \"loginName\" : [ \"17722630080\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 18:04:04');
INSERT INTO `sys_oper_log` VALUES ('329', '商户名单', '1', 'com.ruoyi.web.controller.module.MerchantController.addSave()', 'POST', '1', '13017751223', '运维部门', '/admin/module/merchant/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"13123\" ],\r\n  \"ip\" : [ \"123213\" ],\r\n  \"depict\" : [ \"12313\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 18:04:56');
INSERT INTO `sys_oper_log` VALUES ('330', '商户名单', '3', 'com.ruoyi.web.controller.module.MerchantController.remove()', 'POST', '1', '13017751223', '运维部门', '/admin/module/merchant/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"4\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-13 18:05:00');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '5', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 19:52:11', '普通角色');
INSERT INTO `sys_role` VALUES ('100', 'Boss', 'Boss', '0', '1', '0', '0', 'admin', '2019-10-06 19:06:20', 'admin', '2019-10-13 18:02:24', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('100', '1');
INSERT INTO `sys_role_menu` VALUES ('100', '2');
INSERT INTO `sys_role_menu` VALUES ('100', '100');
INSERT INTO `sys_role_menu` VALUES ('100', '101');
INSERT INTO `sys_role_menu` VALUES ('100', '102');
INSERT INTO `sys_role_menu` VALUES ('100', '103');
INSERT INTO `sys_role_menu` VALUES ('100', '104');
INSERT INTO `sys_role_menu` VALUES ('100', '105');
INSERT INTO `sys_role_menu` VALUES ('100', '106');
INSERT INTO `sys_role_menu` VALUES ('100', '107');
INSERT INTO `sys_role_menu` VALUES ('100', '108');
INSERT INTO `sys_role_menu` VALUES ('100', '109');
INSERT INTO `sys_role_menu` VALUES ('100', '111');
INSERT INTO `sys_role_menu` VALUES ('100', '112');
INSERT INTO `sys_role_menu` VALUES ('100', '500');
INSERT INTO `sys_role_menu` VALUES ('100', '501');
INSERT INTO `sys_role_menu` VALUES ('100', '1000');
INSERT INTO `sys_role_menu` VALUES ('100', '1001');
INSERT INTO `sys_role_menu` VALUES ('100', '1002');
INSERT INTO `sys_role_menu` VALUES ('100', '1003');
INSERT INTO `sys_role_menu` VALUES ('100', '1004');
INSERT INTO `sys_role_menu` VALUES ('100', '1005');
INSERT INTO `sys_role_menu` VALUES ('100', '1006');
INSERT INTO `sys_role_menu` VALUES ('100', '1007');
INSERT INTO `sys_role_menu` VALUES ('100', '1008');
INSERT INTO `sys_role_menu` VALUES ('100', '1009');
INSERT INTO `sys_role_menu` VALUES ('100', '1010');
INSERT INTO `sys_role_menu` VALUES ('100', '1011');
INSERT INTO `sys_role_menu` VALUES ('100', '1012');
INSERT INTO `sys_role_menu` VALUES ('100', '1013');
INSERT INTO `sys_role_menu` VALUES ('100', '1014');
INSERT INTO `sys_role_menu` VALUES ('100', '1015');
INSERT INTO `sys_role_menu` VALUES ('100', '1016');
INSERT INTO `sys_role_menu` VALUES ('100', '1017');
INSERT INTO `sys_role_menu` VALUES ('100', '1018');
INSERT INTO `sys_role_menu` VALUES ('100', '1019');
INSERT INTO `sys_role_menu` VALUES ('100', '1020');
INSERT INTO `sys_role_menu` VALUES ('100', '1021');
INSERT INTO `sys_role_menu` VALUES ('100', '1022');
INSERT INTO `sys_role_menu` VALUES ('100', '1023');
INSERT INTO `sys_role_menu` VALUES ('100', '1024');
INSERT INTO `sys_role_menu` VALUES ('100', '1025');
INSERT INTO `sys_role_menu` VALUES ('100', '1026');
INSERT INTO `sys_role_menu` VALUES ('100', '1027');
INSERT INTO `sys_role_menu` VALUES ('100', '1028');
INSERT INTO `sys_role_menu` VALUES ('100', '1029');
INSERT INTO `sys_role_menu` VALUES ('100', '1030');
INSERT INTO `sys_role_menu` VALUES ('100', '1031');
INSERT INTO `sys_role_menu` VALUES ('100', '1032');
INSERT INTO `sys_role_menu` VALUES ('100', '1033');
INSERT INTO `sys_role_menu` VALUES ('100', '1034');
INSERT INTO `sys_role_menu` VALUES ('100', '1035');
INSERT INTO `sys_role_menu` VALUES ('100', '1036');
INSERT INTO `sys_role_menu` VALUES ('100', '1037');
INSERT INTO `sys_role_menu` VALUES ('100', '1038');
INSERT INTO `sys_role_menu` VALUES ('100', '1039');
INSERT INTO `sys_role_menu` VALUES ('100', '1040');
INSERT INTO `sys_role_menu` VALUES ('100', '1041');
INSERT INTO `sys_role_menu` VALUES ('100', '1042');
INSERT INTO `sys_role_menu` VALUES ('100', '1043');
INSERT INTO `sys_role_menu` VALUES ('100', '1044');
INSERT INTO `sys_role_menu` VALUES ('100', '1045');
INSERT INTO `sys_role_menu` VALUES ('100', '1046');
INSERT INTO `sys_role_menu` VALUES ('100', '1047');
INSERT INTO `sys_role_menu` VALUES ('100', '1048');
INSERT INTO `sys_role_menu` VALUES ('100', '2000');
INSERT INTO `sys_role_menu` VALUES ('100', '2001');
INSERT INTO `sys_role_menu` VALUES ('100', '2003');
INSERT INTO `sys_role_menu` VALUES ('100', '2004');
INSERT INTO `sys_role_menu` VALUES ('100', '2005');
INSERT INTO `sys_role_menu` VALUES ('100', '2006');
INSERT INTO `sys_role_menu` VALUES ('100', '2007');
INSERT INTO `sys_role_menu` VALUES ('100', '2008');
INSERT INTO `sys_role_menu` VALUES ('100', '2009');
INSERT INTO `sys_role_menu` VALUES ('100', '2010');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', 'admin', '00', 'admin@qq.com', '18566666666', '1', '', '9b166eefb0905b168275e3ebcb9e4f23', '8b96be', '0', '0', '127.0.0.1', '2019-10-13 18:02:53', 'admin', '2018-03-16 11:33:00', '17722630080', '2019-10-13 18:02:53', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '测试', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');
INSERT INTO `sys_user` VALUES ('103', '107', '17722630080', '17722630080', '00', '1@email.com', '17722630080', '0', '', '3904b8f95364742d8408017bb8bdc58f', 'ec79ba', '0', '0', '127.0.0.1', '2019-10-07 01:39:35', 'admin', '2019-10-06 19:39:22', 'admin', '2019-10-13 18:04:04', '');
INSERT INTO `sys_user` VALUES ('104', '107', '13017751223', '13017751223', '00', '2@email.com', '13017751223', '0', '', '16c92f8fb8bc39b412d5fe4f84aa0579', 'ac49a7', '0', '0', '127.0.0.1', '2019-10-13 18:04:11', 'admin', '2019-10-06 19:39:55', 'admin', '2019-10-13 18:04:11', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('1', '2');
INSERT INTO `sys_user_post` VALUES ('2', '2');
INSERT INTO `sys_user_post` VALUES ('100', '1');
INSERT INTO `sys_user_post` VALUES ('101', '1');
INSERT INTO `sys_user_post` VALUES ('103', '1');
INSERT INTO `sys_user_post` VALUES ('104', '1');
INSERT INTO `sys_user_post` VALUES ('105', '4');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '2');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('100', '100');
INSERT INTO `sys_user_role` VALUES ('101', '100');
INSERT INTO `sys_user_role` VALUES ('102', '100');
INSERT INTO `sys_user_role` VALUES ('103', '100');
INSERT INTO `sys_user_role` VALUES ('104', '100');
INSERT INTO `sys_user_role` VALUES ('105', '2');
