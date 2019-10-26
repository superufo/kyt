/*
 Navicat MySQL Data Transfer

 Source Server         : 47.112.195.158
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 47.112.195.158:3306
 Source Schema         : kyt_manager

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 26/10/2019 16:58:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (18, 'phone_white', '手机白名单', 'PhoneWhite', 'crud', 'com.ruoyi.module', 'module', 'white', '手机白名单', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-10-06 22:54:33', '', '2019-10-07 00:23:46', '');
INSERT INTO `gen_table` VALUES (22, 'merchant', '商户名单', 'Merchant', 'crud', 'com.ruoyi.module', 'module', 'merchant', '商户名单', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-10-13 16:45:55', '', '2019-10-13 16:47:01', '');
INSERT INTO `gen_table` VALUES (24, 'ms_adjust_amount', '', 'MsAdjustAmount', 'crud', 'com.ruoyi.system', 'system', 'amount', NULL, 'ruoyi', NULL, '13017751223', '2019-10-22 13:05:08', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (25, 'ms_alipay', '', 'MsAlipay', 'crud', 'com.ruoyi.system', 'system', 'alipay', NULL, 'ruoyi', NULL, '13017751223', '2019-10-22 13:05:09', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (26, 'ms_alipay_cashcode', '', 'MsAlipayCashcode', 'crud', 'com.ruoyi.system', 'system', 'cashcode', NULL, 'ruoyi', NULL, '13017751223', '2019-10-22 13:05:09', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (27, 'ms_merchant', '', 'MsMerchant', 'crud', 'com.ruoyi.system', 'system', 'merchant', NULL, 'ruoyi', NULL, '13017751223', '2019-10-22 13:05:09', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (28, 'ms_order', '', 'MsOrder', 'crud', 'com.ruoyi.system', 'system', 'order', NULL, 'ruoyi', NULL, '13017751223', '2019-10-22 13:05:09', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (29, 'ms_wechat', '', 'MsWechat', 'crud', 'com.ruoyi.system', 'system', 'wechat', NULL, 'ruoyi', NULL, '13017751223', '2019-10-22 13:05:10', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (30, 'ms_wechat_cashcode', '', 'MsWechatCashcode', 'crud', 'com.ruoyi.system', 'system', 'cashcode', NULL, 'ruoyi', NULL, '13017751223', '2019-10-22 13:05:10', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (31, 'ms_apply', '', 'MsApply', 'crud', 'com.ruoyi.system', 'system', 'apply', NULL, 'ruoyi', NULL, '13017751223', '2019-10-22 13:58:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (32, 'ms_merchant_statistics', '', 'MsMerchantStatistics', 'crud', 'com.ruoyi.system', 'system', 'statistics', NULL, 'ruoyi', NULL, '13017751223', '2019-10-22 13:58:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (33, 'ms_statistics', '', 'MsStatistics', 'crud', 'com.ruoyi.system', 'system', 'statistics', NULL, 'ruoyi', NULL, '13017751223', '2019-10-22 13:58:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (34, 'msdl_agent', '码商代理表', 'MsdlAgent', 'crud', 'com.ruoyi.system', 'system', 'agent', '码商代理', 'ruoyi', NULL, '13017751223', '2019-10-23 11:44:12', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (35, 'msdl_apply', '码商代理申请表', 'MsdlApply', 'crud', 'com.ruoyi.system', 'system', 'apply', '码商代理申请', 'ruoyi', NULL, '13017751223', '2019-10-23 11:44:13', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (36, 'msdl_commision', '码商代理返佣统计', 'MsdlCommision', 'crud', 'com.ruoyi.system', 'system', 'commision', '码商代理返佣统计', 'ruoyi', NULL, '13017751223', '2019-10-23 11:44:13', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (37, 'msdl_order_detail', ' 码商代理交易明细', 'MsdlOrderDetail', 'crud', 'com.ruoyi.system', 'system', 'detail', ' 码商代理交易明细', 'ruoyi', NULL, '13017751223', '2019-10-23 11:44:14', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (38, 'shdl_agent', '码商代理表', 'ShdlAgent', 'crud', 'com.ruoyi.system', 'system', 'agent', '码商代理', 'ruoyi', NULL, '13017751223', '2019-10-24 10:37:24', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (39, 'shdl_apply', '码商代理申请表', 'ShdlApply', 'crud', 'com.ruoyi.system', 'system', 'apply', '码商代理申请', 'ruoyi', NULL, '13017751223', '2019-10-24 10:37:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (40, 'shdl_commision', '码商代理返佣统计', 'ShdlCommision', 'crud', 'com.ruoyi.system', 'system', 'commision', '码商代理返佣统计', 'ruoyi', NULL, '13017751223', '2019-10-24 10:37:27', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (41, 'shdl_order_detail', ' 码商代理交易明细', 'ShdlOrderDetail', 'crud', 'com.ruoyi.system', 'system', 'detail', ' 码商代理交易明细', 'ruoyi', NULL, '13017751223', '2019-10-24 10:37:27', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (42, 'sh_adjust_amount', '商户金额调整', 'ShAdjustAmount', 'crud', 'com.ruoyi.system', 'system', 'amount', '商户金额调整', 'ruoyi', NULL, '13017751223', '2019-10-24 18:22:50', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (43, 'sh_agent', '商户代理表', 'ShAgent', 'crud', 'com.ruoyi.system', 'system', 'agent', '商户代理', 'ruoyi', NULL, '13017751223', '2019-10-24 18:22:50', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (44, 'sh_apply', '商户审核', 'ShApply', 'crud', 'com.ruoyi.system', 'system', 'apply', '商户审核', 'ruoyi', NULL, '13017751223', '2019-10-24 18:22:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (45, 'sh_merchant_statistics', '商户返佣统计', 'ShMerchantStatistics', 'crud', 'com.ruoyi.system', 'system', 'statistics', '商户返佣统计', 'ruoyi', NULL, '13017751223', '2019-10-24 18:22:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (48, 'sys_bank', '银行', 'SysBank', 'crud', 'com.ruoyi.system', 'system', 'bank', '银行', 'ruoyi', NULL, '13017751223', '2019-10-25 16:28:11', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (49, 'sys_bankno', '银行卡', 'SysBankno', 'crud', 'com.ruoyi.system', 'system', 'bankno', '银行卡', 'ruoyi', NULL, '13017751223', '2019-10-25 16:28:11', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (50, 'tj_bill_report', ' 对账统计报表', 'TjBillReport', 'crud', 'com.ruoyi.system', 'system', 'report', ' 对账统计报', 'ruoyi', NULL, '13017751223', '2019-10-25 18:14:16', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (51, 'tj_hsorder_status', '商户订单状态统计', 'TjHsorderStatus', 'crud', 'com.ruoyi.system', 'system', 'status', '商户订单状态统计', 'ruoyi', NULL, '13017751223', '2019-10-25 18:14:16', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (52, 'tj_msorder_status', '商户订单状态统计', 'TjMsorderStatus', 'crud', 'com.ruoyi.system', 'system', 'status', '商户订单状态统计', 'ruoyi', NULL, '13017751223', '2019-10-25 18:14:16', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 406 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (73, '18', 'phone', '手机号', 'varchar(16)', 'String', 'phone', '1', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 1, 'admin', '2019-10-06 22:54:33', NULL, '2019-10-07 00:23:46');
INSERT INTO `gen_table_column` VALUES (99, '22', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-10-13 16:45:55', NULL, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES (100, '22', 'name', '商户名称', 'varchar(32)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2019-10-13 16:45:55', NULL, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES (101, '22', 'ip', '允许接入IP', 'varchar(32)', 'String', 'ip', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2019-10-13 16:45:55', NULL, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES (102, '22', 'mch_id', '商户ID', 'varchar(32)', 'String', 'mchId', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2019-10-13 16:45:55', NULL, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES (103, '22', 'api_key', '接口密钥', 'varchar(128)', 'String', 'apiKey', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2019-10-13 16:45:55', NULL, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES (104, '22', 'depict', '描述', 'varchar(64)', 'String', 'depict', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2019-10-13 16:45:55', NULL, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES (105, '22', 'create_time', '生成时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, '1', '1', 'BETWEEN', 'datetime', '', 7, 'admin', '2019-10-13 16:45:55', NULL, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES (106, '22', 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', NULL, '1', NULL, 'EQ', 'datetime', '', 8, 'admin', '2019-10-13 16:45:55', NULL, '2019-10-13 16:47:01');
INSERT INTO `gen_table_column` VALUES (129, '24', 'id', '自动主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-22 13:05:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (130, '24', 'order_id', '订单编号', 'varchar(32)', 'String', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (131, '24', 'merchant_id', '码商编号	', 'int(11)', 'Long', 'merchantId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (132, '24', 'type', '微调类型 充值微调  佣金微调', 'tinyint(1)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (133, '24', 'amount', '微调金额', 'decimal(10,2)', 'Double', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (134, '24', 'approve', '审核状态', 'tinyint(1)', 'Integer', 'approve', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (135, '24', 'applyer', '申请人', 'varchar(100)', 'String', 'applyer', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (136, '24', 'approver', '审核人', 'varchar(255)', 'String', 'approver', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (137, '24', 'apply_time', '申请时间', 'datetime', 'Date', 'applyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (138, '24', 'approve_time', '审核时间', 'datetime', 'Date', 'approveTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 10, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (139, '25', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (140, '25', 'merchant_id', '码商编号', 'int(11)', 'Long', 'merchantId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (141, '25', 'merchant_account', '码商账号', 'varchar(40)', 'String', 'merchantAccount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (142, '25', 'alipay_name', '微信名称', 'varchar(100)', 'String', 'alipayName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (143, '25', 'state', '状态', 'tinyint(1)', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (144, '25', 'last_trade_time', '最后交易日期', 'datetime', 'Date', 'lastTradeTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (145, '26', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (146, '26', 'merchant_id', '码商编号', 'varchar(255)', 'String', 'merchantId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (147, '26', 'alipay', '微信账号', 'varchar(255)', 'String', 'alipay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (148, '26', 'state', '类型  1 启用 0 禁用', 'tinyint(1)', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (149, '26', 'amount', '金额', 'decimal(12,2)', 'Double', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (150, '26', 'code', '收款码', 'varchar(255)', 'String', 'code', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (151, '26', 'create_time', '创建日期', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (152, '27', 'id', '码商编号', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (153, '27', 'name', '名称', 'varchar(40)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (154, '27', 'account', NULL, 'varchar(40)', 'String', 'account', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (155, '27', 'type', '类型', 'tinyint(1)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (156, '27', 'agent_id', '所属代理', 'int(11)', 'Long', 'agentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (157, '27', 'balance', '余额', 'decimal(12,2)', 'Double', 'balance', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (158, '27', 'freeze_balance', '冻结金额', 'decimal(12,2)', 'Double', 'freezeBalance', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (159, '27', 'wechat_rate', '微信费率', 'decimal(10,4)', 'Double', 'wechatRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (160, '27', 'alipay_rate', '支付宝费率', 'decimal(10,4)', 'Double', 'alipayRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (161, '27', 'state', '状态', 'tinyint(1)', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (162, '27', 'create_date', '创建日期', 'datetime(6)', 'Date', 'createDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (163, '28', 'id', '订单编号', 'varchar(32)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (164, '28', 'merchant_id', '码商编号', 'int(11)', 'Long', 'merchantId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (165, '28', 'merchant_type', '码商类型', 'tinyint(1)', 'Integer', 'merchantType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (166, '28', 'type', '交易类型', 'tinyint(1)', 'Integer', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 4, '13017751223', '2019-10-22 13:05:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (167, '28', 'origin_blance', '变更前金额', 'decimal(12,2)', 'Double', 'originBlance', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (168, '28', 'money', '交易金额', 'decimal(12,2)', 'Double', 'money', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (169, '28', 'blance', '变更后金额', 'varchar(255)', 'String', 'blance', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (170, '28', 'create_date', '交易日期', 'datetime', 'Date', 'createDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 8, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (171, '29', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (172, '29', 'merchant_id', '码商编号', 'int(11)', 'Long', 'merchantId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (173, '29', 'merchant_account', '码商账号', 'varchar(40)', 'String', 'merchantAccount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (174, '29', 'wechat_name', '微信名称', 'varchar(100)', 'String', 'wechatName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (175, '29', 'state', '状态', 'tinyint(1)', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (176, '29', 'last_trade_time', '最后交易日期', 'datetime', 'Date', 'lastTradeTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (177, '30', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (178, '30', 'merchant_id', '码商编号', 'varchar(255)', 'String', 'merchantId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (179, '30', 'wechat', '微信账号', 'varchar(255)', 'String', 'wechat', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (180, '30', 'state', '类型  1 启用 0 禁用', 'tinyint(1)', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (181, '30', 'amount', '金额', 'decimal(12,2)', 'Double', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (182, '30', 'code', '收款码', 'varchar(255)', 'String', 'code', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (183, '30', 'create_time', '创建日期', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, '13017751223', '2019-10-22 13:05:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (184, '31', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (185, '31', 'merchant_id', '码商编号', 'int(11)', 'Long', 'merchantId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (186, '31', 'merchant_name', '码商昵称', 'varchar(200)', 'String', 'merchantName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (187, '31', 'merchant_account', '码商账号', 'varchar(255)', 'String', 'merchantAccount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (188, '31', 'qq', '联系QQ', 'varchar(16)', 'String', 'qq', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (189, '31', 'mobile', '联系手机号', 'bigint(13)', 'Long', 'mobile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (190, '31', 'apply_time', '申请时间', 'datetime', 'Date', 'applyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (191, '31', 'status', NULL, 'tinyint(1)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (192, '31', 'remark', '审核信息', 'varchar(200)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 9, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (193, '32', 'merchant_id', NULL, 'int(11)', 'Long', 'merchantId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (194, '32', 'merchant_type', '码商类型', 'tinyint(1)', 'Integer', 'merchantType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (195, '32', 'amount', '余额', 'decimal(10,2)', 'Double', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (196, '32', 'freeze_amount', '冻结金额', 'decimal(10,2)', 'Double', 'freezeAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (197, '32', 'wechat_count', '微信接单量', 'int(11)', 'Long', 'wechatCount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (198, '32', 'wechat_success_count', '微信成功订单量', 'int(11)', 'Long', 'wechatSuccessCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (199, '32', 'wechat_success_amount', '微信成功金额', 'decimal(10,2)', 'Double', 'wechatSuccessAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (200, '32', 'alipay_cout', '支付宝接单量', 'int(255)', 'Long', 'alipayCout', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (201, '32', 'alipay_success_count', '微信成功订单量', 'int(11)', 'Long', 'alipaySuccessCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (202, '32', 'alipay_success_amount', '微信成功金额', 'decimal(10,2)', 'Double', 'alipaySuccessAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '13017751223', '2019-10-22 13:58:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (203, '33', 'date', NULL, 'date', 'Date', 'date', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 1, '13017751223', '2019-10-22 13:58:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (204, '33', 'merchant_id', '码商编号', 'varchar(255)', 'String', 'merchantId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-22 13:58:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (205, '33', 'pay_type', '支付方式', 'tinyint(1)', 'Integer', 'payType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, '13017751223', '2019-10-22 13:58:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (206, '33', 'order_count', '总订单数量', 'int(11)', 'Long', 'orderCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-22 13:58:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (207, '33', 'success_count', '支付成功订单', 'varchar(255)', 'String', 'successCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-22 13:58:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (208, '33', 'amount', '总订单金额', 'varchar(255)', 'String', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-22 13:58:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (209, '33', 'success_amount', '成功订单金额', 'varchar(255)', 'String', 'successAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-22 13:58:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (210, '33', 'success_rate', '成功率', 'varchar(255)', 'String', 'successRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-22 13:58:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (211, '34', 'id', '代理编号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-23 11:44:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (212, '34', 'parant_id', '所属上级代理', 'int(11)', 'Long', 'parantId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-23 11:44:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (213, '34', 'name', '代理名称', 'varchar(100)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, '13017751223', '2019-10-23 11:44:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (214, '34', 'mobile', '手机', 'varchar(14)', 'String', 'mobile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-23 11:44:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (215, '34', 'passwd', '密码', 'varchar(100)', 'String', 'passwd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-23 11:44:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (216, '34', 'wx_commission_amount', '微信佣金基准金额', 'decimal(10,2)', 'Double', 'wxCommissionAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-23 11:44:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (217, '34', 'wx_commission_rate', '微信佣金比例	\r\n', 'decimal(10,2)', 'Double', 'wxCommissionRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (218, '34', 'ali_commission_amount', '支付宝佣金基准金额', 'decimal(10,2)', 'Double', 'aliCommissionAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (219, '34', 'ali_commission_rate', '支付宝佣金比例	\r\n', 'decimal(10,2)', 'Double', 'aliCommissionRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (220, '34', 'amount', '余额', 'decimal(10,4)', 'Double', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (221, '34', 'freeze_amount', '冻结金额', 'decimal(10,4)', 'Double', 'freezeAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (222, '34', 'state', '状态', 'tinyint(1)', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (223, '34', 'remark', '备注', 'varchar(1000)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 13, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (224, '34', 'create_time', '创建日期', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (225, '35', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (226, '35', 'nickname', '昵称', 'varchar(200)', 'String', 'nickname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (227, '35', 'mobile', '手机', 'varchar(14)', 'String', 'mobile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (228, '35', 'idcard', '身份证号', 'varchar(20)', 'String', 'idcard', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (229, '35', 'realname', '姓名', 'varchar(100)', 'String', 'realname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (230, '35', 'bankname', '银行名称	', 'varchar(100)', 'String', 'bankname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (231, '35', 'bankno', '银行卡编号', 'varchar(30)', 'String', 'bankno', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (232, '35', 'reference', '代理推荐Id', 'int(100)', 'Long', 'reference', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (233, '35', 'type', '申请类型', 'tinyint(255)', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 9, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (234, '35', 'mode', '申请方式', 'varchar(100)', 'String', 'mode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (235, '35', 'remark', '审核信息	', 'varchar(1000)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 11, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (236, '35', 'state', '状态', 'tinyint(1)', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (237, '35', 'apply_time', '申请时间', 'datetime', 'Date', 'applyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (238, '36', 'day', '统计日期', 'date', 'Date', 'day', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 1, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (239, '36', 'type', '类型', 'tinyint(1)', 'Integer', 'type', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'select', '', 2, '13017751223', '2019-10-23 11:44:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (240, '36', 'msdl_agent', '商户代理编号', 'int(11)', 'Long', 'msdlAgent', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 3, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (241, '36', 'level', '层级', 'int(2)', 'Integer', 'level', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (242, '36', 'order_count', '总订单数', 'int(11)', 'Long', 'orderCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (243, '36', 'successs_count', '完成订单数', 'int(11)', 'Long', 'successsCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (244, '36', 'pay_amount', '充值金额', 'decimal(10,4)', 'Double', 'payAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (245, '36', 'income', '到账金额', 'decimal(10,4)', 'Double', 'income', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (246, '36', 'commision', '佣金', 'decimal(10,4)', 'Double', 'commision', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (247, '36', 'rate', '成功率\r\n', 'decimal(10,4)', 'Double', 'rate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (248, '37', 'id', 'id', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (249, '37', 'order_id', '订单编号', 'varchar(32)', 'String', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (250, '37', 'agent_id', '代理编号', 'int(11)', 'Long', 'agentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (251, '37', 'trade_type', '交易类型', 'tinyint(1)', 'Integer', 'tradeType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (252, '37', 'origin_amount', '变更前金额', 'decimal(10,2)', 'Double', 'originAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (253, '37', 'num', '交易金额', 'decimal(10,2)', 'Double', 'num', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (254, '37', 'amount', '变更后金额', 'decimal(10,2)', 'Double', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (255, '37', 'create_time', '交易日期\r\n', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, '13017751223', '2019-10-23 11:44:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (256, '38', 'id', '代理编号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-24 10:37:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (257, '38', 'parant_id', '所属上级代理', 'int(11)', 'Long', 'parantId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-24 10:37:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (258, '38', 'name', '代理名称', 'varchar(100)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, '13017751223', '2019-10-24 10:37:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (259, '38', 'mobile', '手机', 'varchar(14)', 'String', 'mobile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-24 10:37:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (260, '38', 'passwd', '密码', 'varchar(100)', 'String', 'passwd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-24 10:37:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (261, '38', 'wx_commission_amount', '微信佣金基准金额', 'decimal(10,2)', 'Double', 'wxCommissionAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-24 10:37:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (262, '38', 'wx_commission_rate', '微信佣金比例	\r\n', 'decimal(10,2)', 'Double', 'wxCommissionRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-24 10:37:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (263, '38', 'ali_commission_amount', '支付宝佣金基准金额', 'decimal(10,2)', 'Double', 'aliCommissionAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-24 10:37:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (264, '38', 'ali_commission_rate', '支付宝佣金比例	\r\n', 'decimal(10,2)', 'Double', 'aliCommissionRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-24 10:37:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (265, '38', 'amount', '余额', 'decimal(10,4)', 'Double', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '13017751223', '2019-10-24 10:37:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (266, '38', 'freeze_amount', '冻结金额', 'decimal(10,4)', 'Double', 'freezeAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '13017751223', '2019-10-24 10:37:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (267, '38', 'state', '状态', 'tinyint(1)', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '13017751223', '2019-10-24 10:37:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (268, '38', 'remark', '备注', 'varchar(1000)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 13, '13017751223', '2019-10-24 10:37:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (269, '38', 'create_time', '创建日期', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, '13017751223', '2019-10-24 10:37:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (270, '39', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-24 10:37:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (271, '39', 'nickname', '昵称', 'varchar(200)', 'String', 'nickname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (272, '39', 'email', 'email', 'varchar(200)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (273, '39', 'mobile', '手机', 'varchar(14)', 'String', 'mobile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (274, '39', 'idcard', '身份证号', 'varchar(20)', 'String', 'idcard', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (275, '39', 'realname', '姓名', 'varchar(100)', 'String', 'realname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (276, '39', 'bankname', '银行名称	', 'varchar(100)', 'String', 'bankname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (277, '39', 'bankno', '银行卡编号', 'varchar(30)', 'String', 'bankno', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (278, '39', 'reference', '代理推荐Id', 'int(100)', 'Long', 'reference', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (279, '39', 'type', '申请类型', 'tinyint(255)', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 10, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (280, '39', 'mode', '申请方式', 'varchar(100)', 'String', 'mode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (281, '39', 'remark', '审核信息	', 'varchar(1000)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 12, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (282, '39', 'state', '状态', 'tinyint(1)', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (283, '39', 'apply_time', '申请时间', 'datetime', 'Date', 'applyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 14, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (284, '40', 'day', '统计日期', 'date', 'Date', 'day', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 1, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (285, '40', 'type', '类型', 'tinyint(1)', 'Integer', 'type', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'select', '', 2, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (286, '40', 'msdl_agent', '商户代理编号', 'int(11)', 'Long', 'msdlAgent', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 3, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (287, '40', 'level', '层级', 'int(2)', 'Integer', 'level', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (288, '40', 'order_count', '总订单数', 'int(11)', 'Long', 'orderCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (289, '40', 'successs_count', '完成订单数', 'int(11)', 'Long', 'successsCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (290, '40', 'pay_amount', '充值金额', 'decimal(10,4)', 'Double', 'payAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (291, '40', 'income', '到账金额', 'decimal(10,4)', 'Double', 'income', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (292, '40', 'commision', '佣金', 'decimal(10,4)', 'Double', 'commision', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (293, '40', 'rate', '成功率\r\n', 'decimal(10,4)', 'Double', 'rate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (294, '41', 'id', 'id', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (295, '41', 'order_id', '订单编号', 'varchar(32)', 'String', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (296, '41', 'agent_id', '代理编号', 'int(11)', 'Long', 'agentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (297, '41', 'trade_type', '交易类型', 'tinyint(1)', 'Integer', 'tradeType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (298, '41', 'origin_amount', '变更前金额', 'decimal(10,2)', 'Double', 'originAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-24 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (299, '41', 'num', '交易金额', 'decimal(10,2)', 'Double', 'num', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-24 10:37:28', '', NULL);
INSERT INTO `gen_table_column` VALUES (300, '41', 'amount', '变更后金额', 'decimal(10,2)', 'Double', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-24 10:37:28', '', NULL);
INSERT INTO `gen_table_column` VALUES (301, '41', 'create_time', '交易日期\r\n', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, '13017751223', '2019-10-24 10:37:28', '', NULL);
INSERT INTO `gen_table_column` VALUES (302, '42', 'id', '自动主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (303, '42', 'order_id', '订单编号', 'varchar(32)', 'String', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (304, '42', 'server_id', '商户编号', 'int(11)', 'Long', 'serverId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (305, '42', 'type', '微调类型', 'tinyint(1)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (306, '42', 'amount', '微调金额', 'decimal(10,2)', 'Double', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (307, '42', 'approve', '审核状态', 'tinyint(1)', 'Integer', 'approve', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (308, '42', 'applyer', '申请人', 'varchar(100)', 'String', 'applyer', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (309, '42', 'approver', '审核人', 'varchar(255)', 'String', 'approver', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (310, '42', 'apply_time', '申请时间', 'datetime', 'Date', 'applyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (311, '42', 'approve_time', '审核时间', 'datetime', 'Date', 'approveTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 10, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (312, '43', 'id', '代理编号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (313, '43', 'parant_id', '所属上级代理', 'int(11)', 'Long', 'parantId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (314, '43', 'name', '代理名称', 'varchar(100)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (315, '43', 'mobile', '手机', 'varchar(14)', 'String', 'mobile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (316, '43', 'passwd', '密码', 'varchar(100)', 'String', 'passwd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (317, '43', 'wx_commission_amount', '微信佣金基准金额', 'decimal(10,2)', 'Double', 'wxCommissionAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (318, '43', 'wx_commission_rate', '微信佣金比例	\r\n', 'decimal(10,2)', 'Double', 'wxCommissionRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (319, '43', 'ali_commission_amount', '支付宝佣金基准金额', 'decimal(10,2)', 'Double', 'aliCommissionAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (320, '43', 'ali_commission_rate', '支付宝佣金比例	\r\n', 'decimal(10,2)', 'Double', 'aliCommissionRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (321, '43', 'amount', '余额', 'decimal(10,4)', 'Double', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (322, '43', 'freeze_amount', '冻结金额', 'decimal(10,4)', 'Double', 'freezeAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (323, '43', 'state', '状态', 'tinyint(1)', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '13017751223', '2019-10-24 18:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (324, '43', 'remark', '备注', 'varchar(1000)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 13, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (325, '43', 'create_time', '创建日期', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (326, '44', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (327, '44', 'server_id', '服务商编号', 'int(11)', 'Long', 'serverId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (328, '44', 'server_name', '服务商昵称', 'varchar(200)', 'String', 'serverName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (329, '44', 'server_account', '服务商账号', 'varchar(255)', 'String', 'serverAccount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (330, '44', 'qq', '联系QQ', 'varchar(16)', 'String', 'qq', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (331, '44', 'mobile', '联系手机号', 'bigint(13)', 'Long', 'mobile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (332, '44', 'apply_time', '申请时间', 'datetime', 'Date', 'applyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (333, '44', 'status', NULL, 'tinyint(1)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (334, '44', 'remark', '审核信息', 'varchar(200)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 9, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (335, '45', 'server_id', NULL, 'int(11)', 'Long', 'serverId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (336, '45', 'server_type', '码商类型', 'tinyint(1)', 'Integer', 'serverType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (337, '45', 'amount', '余额', 'decimal(10,2)', 'Double', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (338, '45', 'freeze_amount', '冻结金额', 'decimal(10,2)', 'Double', 'freezeAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (339, '45', 'wechat_count', '微信接单量', 'int(11)', 'Long', 'wechatCount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (340, '45', 'wechat_success_count', '微信成功订单量', 'int(11)', 'Long', 'wechatSuccessCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (341, '45', 'wechat_success_amount', '微信成功金额', 'decimal(10,2)', 'Double', 'wechatSuccessAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (342, '45', 'alipay_cout', '支付宝接单量', 'int(255)', 'Long', 'alipayCout', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (343, '45', 'alipay_success_count', '微信成功订单量', 'int(11)', 'Long', 'alipaySuccessCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (344, '45', 'alipay_success_amount', '微信成功金额', 'decimal(10,2)', 'Double', 'alipaySuccessAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '13017751223', '2019-10-24 18:22:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (359, '48', 'id', '编号', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-25 16:28:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (360, '48', 'bank', '银行', 'varchar(255)', 'String', 'bank', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-25 16:28:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (361, '48', 'bankcode', '银行代码', 'int(255)', 'Long', 'bankcode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-25 16:28:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (362, '48', 'logo', 'logo', 'varchar(200)', 'String', 'logo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-25 16:28:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (363, '48', 'state', '状态', 'tinyint(255)', 'Long', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-25 16:28:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (364, '48', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, '13017751223', '2019-10-25 16:28:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (365, '49', 'id', '编号', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-25 16:28:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (366, '49', 'type', '银行卡类型', 'tinyint(1)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, '13017751223', '2019-10-25 16:28:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (367, '49', 'account', '账户名', 'varchar(200)', 'String', 'account', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-25 16:28:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (368, '49', 'bankno', '卡号', 'varchar(200)', 'String', 'bankno', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-25 16:28:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (369, '49', 'bank', '所属银行', 'varchar(200)', 'String', 'bank', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-25 16:28:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (370, '49', 'userid', '用户编号', 'int(11)', 'Long', 'userid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-25 16:28:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (371, '49', 'state', '状态', 'tinyint(1)', 'Integer', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-25 16:28:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (372, '49', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, '13017751223', '2019-10-25 16:28:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (373, '49', 'bank_address', '开户行', 'varchar(200)', 'String', 'bankAddress', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-25 16:28:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (374, '50', 'id', '主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (375, '50', 'wechat_amount', '微信成功交易金额', 'decimal(10,2)', 'Double', 'wechatAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (376, '50', 'alipay_amount', '支付宝成功交易金额', 'decimal(10,2)', 'Double', 'alipayAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (377, '50', 'total_amount', '总交易成功金额', 'decimal(10,2)', 'Double', 'totalAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (378, '50', 'ms_commission', '码商佣金', 'decimal(10,2)', 'Double', 'msCommission', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (379, '50', 'sh_service_charge', '商户会员付款手续费', 'decimal(10,2)', 'Double', 'shServiceCharge', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (380, '50', 'ms_adjust_upamount', '码商账户微调上款', 'decimal(10,2)', 'Double', 'msAdjustUpamount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (381, '50', 'ms_adjust_downamount', '码商账户微调下款', 'decimal(10,2)', 'Double', 'msAdjustDownamount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (382, '50', 'sh_adjust_upamount', '商户账户微调上款', 'decimal(10,2)', 'Double', 'shAdjustUpamount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (383, '50', 'sh_adjust_downamount', '商户账户微调下款', 'decimal(10,2)', 'Double', 'shAdjustDownamount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (384, '50', 'service_pay_amount', '服务码商充值金额', 'decimal(10,2)', 'Double', 'servicePayAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (385, '50', 'sh_fetch_amount', '商户提现金额', 'varchar(255)', 'String', 'shFetchAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (386, '51', 'server_id', '商户编号', 'int(11)', 'Long', 'serverId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (387, '51', 'trade_type', '交易类型', 'tinyint(1)', 'Integer', 'tradeType', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'select', '', 2, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (388, '51', 'trade_count', '总订单数', 'int(11)', 'Long', 'tradeCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (389, '51', 'null_rate', '空单率', 'decimal(10,2)', 'Double', 'nullRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (390, '51', 'ms_finish_order', '码商已完成', 'int(11)', 'Long', 'msFinishOrder', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (391, '51', 'system_finish_order', '系统完成', 'int(11)', 'Long', 'systemFinishOrder', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (392, '51', 'timeout_order_', '超时未到账', 'int(11)', 'Long', 'timeoutOrder', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (393, '51', 'timeout_order_nopay', '超时未付款', 'int(11)', 'Long', 'timeoutOrderNopay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (394, '51', 'order_comfirm', '会员已确认付款', 'int(11)', 'Long', 'orderComfirm', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (395, '51', 'order_waiting', '等待接单', 'int(11)', 'Long', 'orderWaiting', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (396, '51', 'order_receive', '已接单', 'int(11)', 'Long', 'orderReceive', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (397, '51', 'order_waiting_timeout', '接单超时', 'int(11)', 'Long', 'orderWaitingTimeout', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (398, '51', 'order_close', '失败已关闭', 'int(11)', 'Long', 'orderClose', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (399, '52', 'ms_merchant', '码商编号', 'int(11)', 'Long', 'msMerchant', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (400, '52', 'time_length', '类型', 'int(11)', 'Long', 'timeLength', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (401, '52', 'trade_type', '时间长度(分钟)', 'tinyint(1)', 'Integer', 'tradeType', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'select', '', 3, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (402, '52', 'total_order_count', '总订单数', 'int(11)', 'Long', 'totalOrderCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (403, '52', 'order_timeout', '超时订单数', 'int(11)', 'Long', 'orderTimeout', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (404, '52', 'order_amount', '订单总金额', 'decimal(10,2) unsigned', 'Double', 'orderAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '13017751223', '2019-10-25 18:14:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (405, '52', 'order_timeout_amount', '超时订单总金额', 'varchar(255)', 'String', 'orderTimeoutAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '13017751223', '2019-10-25 18:14:16', '', NULL);

-- ----------------------------
-- Table structure for ms_adjust_amount
-- ----------------------------
DROP TABLE IF EXISTS `ms_adjust_amount`;
CREATE TABLE `ms_adjust_amount`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动主键',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '码商编号	',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '微调类型 充值微调  佣金微调',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '微调金额',
  `approve` tinyint(1) NULL DEFAULT NULL COMMENT '审核状态',
  `applyer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `approver` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `apply_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `approve_time` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ms_alipay
-- ----------------------------
DROP TABLE IF EXISTS `ms_alipay`;
CREATE TABLE `ms_alipay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL COMMENT '码商编号',
  `merchant_account` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '码商账号',
  `alipay_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付宝名称',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `last_trade_time` datetime(0) NULL DEFAULT NULL COMMENT '最后交易日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ms_alipay_cashcode
-- ----------------------------
DROP TABLE IF EXISTS `ms_alipay_cashcode`;
CREATE TABLE `ms_alipay_cashcode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '码商编号',
  `alipay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信账号',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '类型  1 启用 0 禁用',
  `amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '金额',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收款码',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ms_apply
-- ----------------------------
DROP TABLE IF EXISTS `ms_apply`;
CREATE TABLE `ms_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '码商编号',
  `merchant_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '码商昵称',
  `merchant_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '码商账号',
  `qq` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系QQ',
  `mobile` bigint(13) NULL DEFAULT NULL COMMENT '联系手机号',
  `apply_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `status` tinyint(1) NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_apply
-- ----------------------------
INSERT INTO `ms_apply` VALUES (1, 100001, '100001', '100001', '22214100001', 13556856812, '2019-10-22 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for ms_merchant
-- ----------------------------
DROP TABLE IF EXISTS `ms_merchant`;
CREATE TABLE `ms_merchant`  (
  `id` int(11) NOT NULL COMMENT '码商编号',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `account` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '类型',
  `agent_id` int(11) NULL DEFAULT NULL COMMENT '所属代理',
  `balance` decimal(12, 2) NULL DEFAULT NULL COMMENT '余额',
  `freeze_balance` decimal(12, 2) NULL DEFAULT NULL COMMENT '冻结金额',
  `wechat_rate` decimal(10, 4) NULL DEFAULT NULL COMMENT '微信费率',
  `alipay_rate` decimal(10, 4) NULL DEFAULT NULL COMMENT '支付宝费率',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `create_date` datetime(6) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ms_merchant_statistics
-- ----------------------------
DROP TABLE IF EXISTS `ms_merchant_statistics`;
CREATE TABLE `ms_merchant_statistics`  (
  `merchant_id` int(11) NOT NULL,
  `merchant_type` tinyint(1) NULL DEFAULT NULL COMMENT '码商类型',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `freeze_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '冻结金额',
  `wechat_count` int(11) NOT NULL COMMENT '微信接单量',
  `wechat_success_count` int(11) NULL DEFAULT NULL COMMENT '微信成功订单量',
  `wechat_success_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '微信成功金额',
  `alipay_cout` int(255) NULL DEFAULT NULL COMMENT '支付宝接单量',
  `alipay_success_count` int(11) NULL DEFAULT NULL COMMENT '微信成功订单量',
  `alipay_success_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '微信成功金额',
  PRIMARY KEY (`merchant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ms_order
-- ----------------------------
DROP TABLE IF EXISTS `ms_order`;
CREATE TABLE `ms_order`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '码商编号',
  `merchant_type` tinyint(1) NULL DEFAULT NULL COMMENT '码商类型',
  `type` tinyint(1) NOT NULL COMMENT '交易类型',
  `origin_blance` decimal(12, 2) NULL DEFAULT NULL COMMENT '变更前金额',
  `money` decimal(12, 2) NULL DEFAULT NULL COMMENT '交易金额',
  `blance` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变更后金额',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '交易日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `ms_statistics`;
CREATE TABLE `ms_statistics`  (
  `date` date NOT NULL,
  `merchant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '码商编号',
  `pay_type` tinyint(1) NULL DEFAULT NULL COMMENT '支付方式',
  `order_count` int(11) NULL DEFAULT NULL COMMENT '总订单数量',
  `success_count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付成功订单',
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总订单金额',
  `success_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成功订单金额',
  `success_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成功率',
  PRIMARY KEY (`date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ms_wechat
-- ----------------------------
DROP TABLE IF EXISTS `ms_wechat`;
CREATE TABLE `ms_wechat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL COMMENT '码商编号',
  `merchant_account` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '码商账号',
  `wechat_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信名称',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `last_trade_time` datetime(0) NULL DEFAULT NULL COMMENT '最后交易日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ms_wechat_cashcode
-- ----------------------------
DROP TABLE IF EXISTS `ms_wechat_cashcode`;
CREATE TABLE `ms_wechat_cashcode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '码商编号',
  `wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信账号',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '类型  1 启用 0 禁用',
  `amount` decimal(12, 2) NULL DEFAULT NULL COMMENT '金额',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收款码',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for msdl_agent
-- ----------------------------
DROP TABLE IF EXISTS `msdl_agent`;
CREATE TABLE `msdl_agent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '代理编号',
  `parant_id` int(11) NULL DEFAULT NULL COMMENT '所属上级代理',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代理名称',
  `mobile` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `passwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `wx_commission_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '微信佣金基准金额',
  `wx_commission_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT '微信佣金比例	\r\n',
  `ali_commission_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付宝佣金基准金额',
  `ali_commission_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付宝佣金比例	\r\n',
  `amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '余额',
  `freeze_amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '冻结金额',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '码商代理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for msdl_apply
-- ----------------------------
DROP TABLE IF EXISTS `msdl_apply`;
CREATE TABLE `msdl_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `mobile` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `idcard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `bankname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行名称	',
  `bankno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行卡编号',
  `reference` int(100) NULL DEFAULT NULL COMMENT '代理推荐Id',
  `type` tinyint(255) NULL DEFAULT NULL COMMENT '申请类型',
  `mode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请方式',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核信息	',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `apply_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '码商代理申请表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for msdl_commision
-- ----------------------------
DROP TABLE IF EXISTS `msdl_commision`;
CREATE TABLE `msdl_commision`  (
  `day` date NOT NULL COMMENT '统计日期',
  `type` tinyint(1) NOT NULL COMMENT '类型',
  `msdl_agent` int(11) NOT NULL COMMENT '商户代理编号',
  `level` int(2) NULL DEFAULT NULL COMMENT '层级',
  `order_count` int(11) NULL DEFAULT NULL COMMENT '总订单数',
  `successs_count` int(11) NULL DEFAULT NULL COMMENT '完成订单数',
  `pay_amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '充值金额',
  `income` decimal(10, 4) NULL DEFAULT NULL COMMENT '到账金额',
  `commision` decimal(10, 4) NULL DEFAULT NULL COMMENT '佣金',
  `rate` decimal(10, 4) NULL DEFAULT NULL COMMENT '成功率\r\n',
  PRIMARY KEY (`day`, `type`, `msdl_agent`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '码商代理返佣统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for msdl_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `msdl_order_detail`;
CREATE TABLE `msdl_order_detail`  (
  `id` int(11) NOT NULL COMMENT 'id',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `agent_id` int(11) NULL DEFAULT NULL COMMENT '代理编号',
  `trade_type` tinyint(1) NULL DEFAULT NULL COMMENT '交易类型',
  `origin_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '变更前金额',
  `num` decimal(10, 2) NOT NULL COMMENT '交易金额',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '变更后金额',
  `create_time` datetime(0) NOT NULL COMMENT '交易日期\r\n',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = ' 码商代理交易明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'HP-ZHAN-041572076084111', 1572080293771, 15000);
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'iZwz90b90ofoz9f88jrg45Z1570383107032', 1572080299781, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1572076090000, -1, 5, 'PAUSED', 'CRON', 1572076084000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1572076095000, -1, 5, 'PAUSED', 'CRON', 1572076084000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1572076100000, -1, 5, 'PAUSED', 'CRON', 1572076085000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sh_adjust_amount
-- ----------------------------
DROP TABLE IF EXISTS `sh_adjust_amount`;
CREATE TABLE `sh_adjust_amount`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动主键',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `server_id` int(11) NULL DEFAULT NULL COMMENT '商户编号',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '微调类型',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '微调金额',
  `approve` tinyint(1) NULL DEFAULT NULL COMMENT '审核状态',
  `applyer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `approver` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `apply_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `approve_time` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户金额调整' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sh_agent
-- ----------------------------
DROP TABLE IF EXISTS `sh_agent`;
CREATE TABLE `sh_agent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '代理编号',
  `parant_id` int(11) NULL DEFAULT NULL COMMENT '所属上级代理',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代理名称',
  `mobile` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `passwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `wx_commission_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '微信佣金基准金额',
  `wx_commission_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT '微信佣金比例	\r\n',
  `ali_commission_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付宝佣金基准金额',
  `ali_commission_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付宝佣金比例	\r\n',
  `amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '余额',
  `freeze_amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '冻结金额',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户代理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sh_apply
-- ----------------------------
DROP TABLE IF EXISTS `sh_apply`;
CREATE TABLE `sh_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NULL DEFAULT NULL COMMENT '服务商编号',
  `server_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务商昵称',
  `server_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务商账号',
  `qq` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系QQ',
  `mobile` bigint(13) NULL DEFAULT NULL COMMENT '联系手机号',
  `apply_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `status` tinyint(1) NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户审核' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sh_merchant_statistics
-- ----------------------------
DROP TABLE IF EXISTS `sh_merchant_statistics`;
CREATE TABLE `sh_merchant_statistics`  (
  `server_id` int(11) NOT NULL,
  `server_type` tinyint(1) NULL DEFAULT NULL COMMENT '码商类型',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `freeze_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '冻结金额',
  `wechat_count` int(11) NOT NULL COMMENT '微信接单量',
  `wechat_success_count` int(11) NULL DEFAULT NULL COMMENT '微信成功订单量',
  `wechat_success_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '微信成功金额',
  `alipay_cout` int(255) NULL DEFAULT NULL COMMENT '支付宝接单量',
  `alipay_success_count` int(11) NULL DEFAULT NULL COMMENT '微信成功订单量',
  `alipay_success_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '微信成功金额',
  PRIMARY KEY (`server_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户返佣统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shdl_agent
-- ----------------------------
DROP TABLE IF EXISTS `shdl_agent`;
CREATE TABLE `shdl_agent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '代理编号',
  `parant_id` int(11) NULL DEFAULT NULL COMMENT '所属上级代理',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代理名称',
  `mobile` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `passwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `wx_commission_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '微信佣金基准金额',
  `wx_commission_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT '微信佣金比例	\r\n',
  `ali_commission_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付宝佣金基准金额',
  `ali_commission_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付宝佣金比例	\r\n',
  `amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '余额',
  `freeze_amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '冻结金额',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '码商代理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shdl_apply
-- ----------------------------
DROP TABLE IF EXISTS `shdl_apply`;
CREATE TABLE `shdl_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'email',
  `mobile` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `idcard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `bankname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行名称	',
  `bankno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行卡编号',
  `reference` int(100) NULL DEFAULT NULL COMMENT '代理推荐Id',
  `type` tinyint(255) NULL DEFAULT NULL COMMENT '申请类型',
  `mode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请方式',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核信息	',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `apply_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '码商代理申请表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shdl_commision
-- ----------------------------
DROP TABLE IF EXISTS `shdl_commision`;
CREATE TABLE `shdl_commision`  (
  `day` date NOT NULL COMMENT '统计日期',
  `type` tinyint(1) NOT NULL COMMENT '类型',
  `msdl_agent` int(11) NOT NULL COMMENT '商户代理编号',
  `level` int(2) NULL DEFAULT NULL COMMENT '层级',
  `order_count` int(11) NULL DEFAULT NULL COMMENT '总订单数',
  `successs_count` int(11) NULL DEFAULT NULL COMMENT '完成订单数',
  `pay_amount` decimal(10, 4) NULL DEFAULT NULL COMMENT '充值金额',
  `income` decimal(10, 4) NULL DEFAULT NULL COMMENT '到账金额',
  `commision` decimal(10, 4) NULL DEFAULT NULL COMMENT '佣金',
  `rate` decimal(10, 4) NULL DEFAULT NULL COMMENT '成功率\r\n',
  PRIMARY KEY (`day`, `type`, `msdl_agent`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '码商代理返佣统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shdl_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `shdl_order_detail`;
CREATE TABLE `shdl_order_detail`  (
  `id` int(11) NOT NULL COMMENT 'id',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `agent_id` int(11) NULL DEFAULT NULL COMMENT '代理编号',
  `trade_type` tinyint(1) NULL DEFAULT NULL COMMENT '交易类型',
  `origin_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '变更前金额',
  `num` decimal(10, 2) NOT NULL COMMENT '交易金额',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '变更后金额',
  `create_time` datetime(0) NOT NULL COMMENT '交易日期\r\n',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = ' 码商代理交易明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_bank
-- ----------------------------
DROP TABLE IF EXISTS `sys_bank`;
CREATE TABLE `sys_bank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行',
  `bankcode` int(255) NULL DEFAULT NULL COMMENT '银行代码',
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logo',
  `state` tinyint(255) NULL DEFAULT NULL COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '银行' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_bankno
-- ----------------------------
DROP TABLE IF EXISTS `sys_bankno`;
CREATE TABLE `sys_bankno`  (
  `id` int(11) NOT NULL COMMENT '编号',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '银行卡类型',
  `account` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户名',
  `bankno` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卡号',
  `bank` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属银行',
  `userid` int(11) NULL DEFAULT NULL COMMENT '用户编号',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `bank_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户行',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '银行卡' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 18:50:30', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 19:03:17', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 18:34:33', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '快易通', 0, 'admin', '15888888888', 'admin@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 18:56:24');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 298 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 18:25:18');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 18:34:57');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 18:35:00');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 18:35:04');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 18:35:06');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 18:35:10');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误3次', '2019-10-06 18:35:14');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误4次', '2019-10-06 18:35:20');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误5次', '2019-10-06 18:35:24');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2019-10-06 18:35:27');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 18:37:48');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 18:39:47');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 18:40:20');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 18:44:44');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 18:47:01');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误3次', '2019-10-06 18:47:47');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误4次', '2019-10-06 18:48:07');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 18:48:21');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:01:20');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:01:33');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 19:01:36');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:01:42');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:10:23');
INSERT INTO `sys_logininfor` VALUES (123, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:10:26');
INSERT INTO `sys_logininfor` VALUES (124, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:16:05');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:16:09');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:17:48');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:17:49');
INSERT INTO `sys_logininfor` VALUES (128, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:17:53');
INSERT INTO `sys_logininfor` VALUES (129, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 19:17:57');
INSERT INTO `sys_logininfor` VALUES (130, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:19:00');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:19:05');
INSERT INTO `sys_logininfor` VALUES (132, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 19:19:16');
INSERT INTO `sys_logininfor` VALUES (133, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误3次', '2019-10-06 19:20:07');
INSERT INTO `sys_logininfor` VALUES (134, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:20:16');
INSERT INTO `sys_logininfor` VALUES (135, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:20:42');
INSERT INTO `sys_logininfor` VALUES (136, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:20:47');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:23:13');
INSERT INTO `sys_logininfor` VALUES (138, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:23:17');
INSERT INTO `sys_logininfor` VALUES (139, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:23:21');
INSERT INTO `sys_logininfor` VALUES (140, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:28:24');
INSERT INTO `sys_logininfor` VALUES (141, 'dev', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:29:04');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:29:47');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:30:36');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:30:48');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:30:52');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:31:33');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:31:51');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:32:24');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:33:18');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 19:34:49');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:34:55');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:43:10');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:45:14');
INSERT INTO `sys_logininfor` VALUES (154, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:45:21');
INSERT INTO `sys_logininfor` VALUES (155, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:46:21');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:46:22');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:46:32');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:49:07');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:49:16');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:50:28');
INSERT INTO `sys_logininfor` VALUES (161, '123123', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:50:34');
INSERT INTO `sys_logininfor` VALUES (162, '123123', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-06 19:50:42');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:50:52');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:51:08');
INSERT INTO `sys_logininfor` VALUES (165, '12321312', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 19:51:16');
INSERT INTO `sys_logininfor` VALUES (166, '12321312', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:51:19');
INSERT INTO `sys_logininfor` VALUES (167, '12321312', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:51:29');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:51:36');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:52:13');
INSERT INTO `sys_logininfor` VALUES (170, '12321312', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:52:19');
INSERT INTO `sys_logininfor` VALUES (171, '12321312', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 19:52:29');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 19:53:01');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 20:13:44');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 20:13:51');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 20:15:41');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 20:15:43');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 20:15:47');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 20:16:20');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 20:47:13');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 20:47:27');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-06 20:51:53');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-06 20:52:01');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-06 20:52:07');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-06 20:52:15');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:09:23');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:09:25');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-07 00:09:30');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:09:35');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:21:54');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误2次', '2019-10-07 00:21:59');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误3次', '2019-10-07 00:22:04');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:22:10');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:27:40');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:27:47');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:35:33');
INSERT INTO `sys_logininfor` VALUES (196, '13017751223', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:35:37');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:36:35');
INSERT INTO `sys_logininfor` VALUES (198, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:36:59');
INSERT INTO `sys_logininfor` VALUES (199, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:37:46');
INSERT INTO `sys_logininfor` VALUES (200, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:38:23');
INSERT INTO `sys_logininfor` VALUES (201, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:38:26');
INSERT INTO `sys_logininfor` VALUES (202, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:38:36');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:38:43');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:51:03');
INSERT INTO `sys_logininfor` VALUES (205, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:51:40');
INSERT INTO `sys_logininfor` VALUES (206, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:52:02');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 00:52:05');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:52:08');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:53:05');
INSERT INTO `sys_logininfor` VALUES (210, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:53:10');
INSERT INTO `sys_logininfor` VALUES (211, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:53:26');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:53:35');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:57:08');
INSERT INTO `sys_logininfor` VALUES (214, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:57:20');
INSERT INTO `sys_logininfor` VALUES (215, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 00:59:39');
INSERT INTO `sys_logininfor` VALUES (216, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 00:59:50');
INSERT INTO `sys_logininfor` VALUES (217, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:02:34');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:02:44');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:03:53');
INSERT INTO `sys_logininfor` VALUES (220, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:04:07');
INSERT INTO `sys_logininfor` VALUES (221, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:06:14');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:06:18');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:07:15');
INSERT INTO `sys_logininfor` VALUES (224, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:07:24');
INSERT INTO `sys_logininfor` VALUES (225, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:07:37');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 01:07:39');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:07:42');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-07 01:07:55');
INSERT INTO `sys_logininfor` VALUES (229, '17722630080', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:07:58');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:09:42');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:26:04');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-07 01:32:02');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 01:32:06');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2019-10-07 01:32:47');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android Mobile', '1', '密码输入错误2次', '2019-10-07 01:32:58');
INSERT INTO `sys_logininfor` VALUES (236, '17722630080', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-10-07 01:33:06');
INSERT INTO `sys_logininfor` VALUES (237, '13017751223', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2019-10-07 01:39:13');
INSERT INTO `sys_logininfor` VALUES (238, '17722630080', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-10-07 01:39:35');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 02:51:22');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-07 02:53:59');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 49', 'Windows 10', '1', '密码输入错误1次', '2019-10-08 11:17:41');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome 49', 'Windows 10', '0', '登录成功', '2019-10-08 11:17:44');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 49', 'Windows 10', '1', '密码输入错误1次', '2019-10-08 15:21:25');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome 49', 'Windows 10', '0', '登录成功', '2019-10-08 15:21:27');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-09 19:45:50');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-09 19:45:56');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-13 06:00:55');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 06:01:03');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-13 06:04:13');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-13 06:04:17');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-13 06:16:03');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-13 06:16:10');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 06:18:14');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 06:26:24');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 06:29:39');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 07:18:33');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 07:21:12');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 07:22:31');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 07:23:43');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '密码输入错误1次', '2019-10-13 15:44:13');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-13 15:44:18');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:22:09');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:55:08');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:55:43');
INSERT INTO `sys_logininfor` VALUES (265, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:55:47');
INSERT INTO `sys_logininfor` VALUES (266, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:55:55');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:55:58');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:57:06');
INSERT INTO `sys_logininfor` VALUES (269, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:57:09');
INSERT INTO `sys_logininfor` VALUES (270, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:57:16');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:57:17');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:57:56');
INSERT INTO `sys_logininfor` VALUES (273, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:58:00');
INSERT INTO `sys_logininfor` VALUES (274, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 17:58:12');
INSERT INTO `sys_logininfor` VALUES (275, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 17:58:34');
INSERT INTO `sys_logininfor` VALUES (276, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 18:01:17');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 18:01:18');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 18:02:26');
INSERT INTO `sys_logininfor` VALUES (279, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 18:02:31');
INSERT INTO `sys_logininfor` VALUES (280, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-13 18:02:49');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 18:02:53');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-13 18:04:06');
INSERT INTO `sys_logininfor` VALUES (283, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 18:04:11');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-21 11:30:16');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-10-21 11:31:47');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-21 11:45:43');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-21 12:07:04');
INSERT INTO `sys_logininfor` VALUES (288, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-21 12:08:00');
INSERT INTO `sys_logininfor` VALUES (289, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-21 14:37:50');
INSERT INTO `sys_logininfor` VALUES (290, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-21 14:38:05');
INSERT INTO `sys_logininfor` VALUES (291, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-21 16:03:58');
INSERT INTO `sys_logininfor` VALUES (292, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-21 16:07:55');
INSERT INTO `sys_logininfor` VALUES (293, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-21 16:35:01');
INSERT INTO `sys_logininfor` VALUES (294, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-21 17:00:46');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-21 17:00:51');
INSERT INTO `sys_logininfor` VALUES (296, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-21 17:00:57');
INSERT INTO `sys_logininfor` VALUES (297, '13017751223', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-24 14:36:27');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2176 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 100, '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-07 00:47:31', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 120, '#', 'menuItem', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-07 00:47:56', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 130, '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-07 00:48:04', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', 'menuItem', 'C', '1', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 19:35:46', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2000, '管理员功能', 0, 1, '#', 'menuItem', 'M', '0', '', 'fa fa-edit', 'admin', '2019-10-07 00:46:41', 'admin', '2019-10-13 15:48:55', '');
INSERT INTO `sys_menu` VALUES (2001, '手机白名单', 2000, 1, '/module/white', 'menuItem', 'C', '0', 'module:white:view', '#', 'admin', '2019-10-07 00:49:05', 'admin', '2019-10-13 15:56:43', '');
INSERT INTO `sys_menu` VALUES (2003, '查询', 2001, 1, '#', 'menuItem', 'F', '0', 'module:white:list', '#', '17722630080', '2019-10-07 01:02:23', '17722630080', '2019-10-07 01:04:42', '');
INSERT INTO `sys_menu` VALUES (2004, '删除', 2001, 2, '#', 'menuItem', 'F', '0', 'module:white:remove', '#', '17722630080', '2019-10-07 01:05:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '新增', 2001, 3, '#', 'menuItem', 'F', '0', 'module:white:add', '#', '17722630080', '2019-10-07 01:05:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '商户管理', 2000, 2, '/module/merchant', 'menuItem', 'C', '0', 'module:merchant:view', 'fa fa-address-book', 'admin', '2019-10-13 15:51:05', '13017751223', '2019-10-13 18:00:02', '');
INSERT INTO `sys_menu` VALUES (2007, '查询', 2006, 1, '#', 'menuItem', 'F', '0', 'module:merchant:list', '#', 'admin', '2019-10-13 15:57:15', 'admin', '2019-10-13 18:02:07', '');
INSERT INTO `sys_menu` VALUES (2008, '删除', 2006, 2, '#', 'menuItem', 'F', '0', 'module:merchant:remove', '#', 'admin', '2019-10-13 15:57:45', 'admin', '2019-10-13 16:20:06', '');
INSERT INTO `sys_menu` VALUES (2009, '修改', 2006, 3, '#', 'menuItem', 'F', '0', 'module:merchant:edit', '#', 'admin', '2019-10-13 15:58:05', 'admin', '2019-10-13 16:20:12', '');
INSERT INTO `sys_menu` VALUES (2010, '新增', 2006, 4, '#', 'menuItem', 'F', '0', 'module:merchant:add', '#', 'admin', '2019-10-13 15:59:19', 'admin', '2019-10-13 16:20:17', '');
INSERT INTO `sys_menu` VALUES (2011, '码商管理', 0, 1, '#', 'menuItem', 'M', '0', '', 'fa fa-address-book', 'admin', '2019-10-21 14:18:37', 'admin', '2019-10-21 15:02:58', '');
INSERT INTO `sys_menu` VALUES (2022, '码商信息管理', 2011, 4, '/system/merchant', '', 'C', '0', 'system:merchant:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商信息管理菜单');
INSERT INTO `sys_menu` VALUES (2023, '码商信息列表', 2011, 4, '/system/merchant/list', '', 'F', '0', 'system:merchant:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商信息列表');
INSERT INTO `sys_menu` VALUES (2024, '码商信息新增', 2011, 4, '/system/merchant/add', '', 'F', '0', 'system:merchant:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商信息新增');
INSERT INTO `sys_menu` VALUES (2025, '码商信息编辑', 2011, 4, '/system/merchant/edit', '', 'F', '0', 'system:merchant:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商信息编辑');
INSERT INTO `sys_menu` VALUES (2026, '码商信息删除', 2011, 4, '/system/merchant/remove', '', 'F', '0', 'system:merchant:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商信息删除');
INSERT INTO `sys_menu` VALUES (2027, '码商交易明细', 2011, 4, '/system/msorder', '', 'C', '0', 'system:msorder:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商交易明细菜单');
INSERT INTO `sys_menu` VALUES (2028, '码商交易明细列表', 2011, 4, '/system/msorder/list', '', 'F', '0', 'system:msorder:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商交易明细列表');
INSERT INTO `sys_menu` VALUES (2029, '码商交易明细新增', 2011, 4, '/system/msorder/add', '', 'F', '0', 'system:msorder:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商交易明细新增');
INSERT INTO `sys_menu` VALUES (2030, '码商交易明细编辑', 2011, 4, '/system/msorder/edit', '', 'F', '0', 'system:msorder:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商交易明细编辑');
INSERT INTO `sys_menu` VALUES (2031, '码商交易明细删除', 2011, 4, '/system/msorder/remove', '', 'F', '0', 'system:msorder:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商交易明细删除');
INSERT INTO `sys_menu` VALUES (2032, '码商账户微调审核', 2011, 4, '/system/amount', '', 'C', '0', 'system:amount:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商账户微调审核菜单');
INSERT INTO `sys_menu` VALUES (2033, '码商账户微调审核列表', 2011, 4, '/system/amount/list', '', 'F', '0', 'system:amount:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商账户微调审核列表');
INSERT INTO `sys_menu` VALUES (2034, '码商账户微调审核新增', 2011, 4, '/system/amount/add', '', 'F', '0', 'system:amount:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商账户微调审核新增');
INSERT INTO `sys_menu` VALUES (2035, '码商账户微调审核编辑', 2011, 4, '/system/amount/edit', '', 'F', '0', 'system:amount:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商账户微调审核编辑');
INSERT INTO `sys_menu` VALUES (2036, '码商账户微调审核删除', 2011, 4, '/system/amount/remove', '', 'F', '0', 'system:amount:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商账户微调审核删除');
INSERT INTO `sys_menu` VALUES (2037, '码商账户微调审核删除', 2011, 4, '/system/amount/remove', '', 'F', '0', 'system:amount:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商账户微调审核删除');
INSERT INTO `sys_menu` VALUES (2038, '微信账号', 2011, 4, '/system/wechat', '', 'C', '0', 'system:wechat:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信账号菜单');
INSERT INTO `sys_menu` VALUES (2039, '微信账号列表', 2011, 4, '/system/wechat/list', '', 'F', '0', 'system:wechat:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信账号列表');
INSERT INTO `sys_menu` VALUES (2040, '微信账号新增', 2011, 4, '/system/wechat/add', '', 'F', '0', 'system:wechat:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信账号新增');
INSERT INTO `sys_menu` VALUES (2041, '微信账号编辑', 2011, 4, '/system/wechat/edit', '', 'F', '0', 'system:wechat:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信账号编辑');
INSERT INTO `sys_menu` VALUES (2042, '微信账号删除', 2011, 4, '/system/wechat/remove', '', 'F', '0', 'system:wechat:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信账号删除');
INSERT INTO `sys_menu` VALUES (2043, '微信账号删除', 2011, 4, '/system/wechat/remove', '', 'F', '0', 'system:wechat:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信账号删除');
INSERT INTO `sys_menu` VALUES (2044, '微信收款码', 2011, 4, '/system/wechatcashcode', '', 'C', '0', 'system:wechatcashcode:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信收款码菜单');
INSERT INTO `sys_menu` VALUES (2045, '微信收款码列表', 2011, 4, '/system/wechatcashcode/list', '', 'F', '0', 'system:wechatcashcode:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信收款码列表');
INSERT INTO `sys_menu` VALUES (2046, '微信收款码新增', 2011, 4, '/system/wechatcashcode/add', '', 'F', '0', 'system:wechatcashcode:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信收款码新增');
INSERT INTO `sys_menu` VALUES (2047, '微信收款码编辑', 2011, 4, '/system/wechatcashcode/edit', '', 'F', '0', 'system:wechatcashcode:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信收款码编辑');
INSERT INTO `sys_menu` VALUES (2048, '微信收款码删除', 2011, 4, '/system/wechatcashcode/remove', '', 'F', '0', 'system:wechatcashcode:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信收款码删除');
INSERT INTO `sys_menu` VALUES (2049, '微信收款码导出', 2011, 4, '/system/wechatcashcode/export', '', 'F', '0', 'system:wechatcashcode:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '微信收款码删除');
INSERT INTO `sys_menu` VALUES (2050, '支付宝账号', 2011, 4, '/system/alipay', '', 'C', '0', 'system:alipay:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝账号菜单');
INSERT INTO `sys_menu` VALUES (2051, '支付宝账号列表', 2011, 4, '/system/alipay/list', '', 'F', '0', 'system:alipay:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝账号列表');
INSERT INTO `sys_menu` VALUES (2052, '支付宝账号新增', 2011, 4, '/system/alipay/add', '', 'F', '0', 'system:alipay:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝账号新增');
INSERT INTO `sys_menu` VALUES (2053, '支付宝账号编辑', 2011, 4, '/system/alipay/edit', '', 'F', '0', 'system:alipay:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝账号编辑');
INSERT INTO `sys_menu` VALUES (2054, '支付宝账号删除', 2011, 4, '/system/alipay/remove', '', 'F', '0', 'system:alipay:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝账号删除');
INSERT INTO `sys_menu` VALUES (2055, '支付宝账号导出', 2011, 4, '/system/alipay/export', '', 'F', '0', 'system:alipay:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝账号导出');
INSERT INTO `sys_menu` VALUES (2056, '支付宝收款码', 2011, 4, '/system/alipaycashcode', '', 'C', '0', 'system:alipaycashcode:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝收款码菜单');
INSERT INTO `sys_menu` VALUES (2057, '支付宝收款码列表', 2011, 4, '/system/alipaycashcode/list', '', 'F', '0', 'system:alipaycashcode:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝收款码列表');
INSERT INTO `sys_menu` VALUES (2058, '支付宝收款码新增', 2011, 4, '/system/alipaycashcode/add', '', 'F', '0', 'system:alipaycashcode:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝收款码新增');
INSERT INTO `sys_menu` VALUES (2059, '支付宝收款码编辑', 2011, 4, '/system/alipaycashcode/edit', '', 'F', '0', 'system:alipaycashcode:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝收款码编辑');
INSERT INTO `sys_menu` VALUES (2060, '支付宝收款码删除', 2011, 4, '/system/alipaycashcode/remove', '', 'F', '0', 'system:alipaycashcode:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝收款码删除');
INSERT INTO `sys_menu` VALUES (2061, '支付宝收款码导出', 2011, 4, '/system/alipaycashcode/export', '', 'F', '0', 'system:alipaycashcode:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '支付宝收款码删除');
INSERT INTO `sys_menu` VALUES (2062, '服务商申请', 2011, 4, '/system/msapply', '', 'C', '0', 'system:msapply:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务商申请菜单');
INSERT INTO `sys_menu` VALUES (2063, '服务商申请列表', 2011, 4, '/system/msapply/list', '', 'F', '0', 'system:msapply:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务商申请列表');
INSERT INTO `sys_menu` VALUES (2064, '服务商申请新增', 2011, 4, '/system/msapply/add', '', 'F', '0', 'system:msapply:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务商申请新增');
INSERT INTO `sys_menu` VALUES (2065, '服务商申请编辑', 2011, 4, '/system/msapply/edit', '', 'F', '0', 'system:msapply:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务商申请编辑');
INSERT INTO `sys_menu` VALUES (2066, '服务商申请删除', 2011, 4, '/system/msapply/remove', '', 'F', '0', 'system:msapply:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务商申请删除');
INSERT INTO `sys_menu` VALUES (2067, '服务商申请导出', 2011, 4, '/system/msapply/export', '', 'F', '0', 'system:msapply:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务商申请导出');
INSERT INTO `sys_menu` VALUES (2068, '在线码商时时统计', 2011, 4, '/system/merchantstatistics', '', 'C', '0', 'system:merchantstatistics:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线码商时时统计菜单');
INSERT INTO `sys_menu` VALUES (2069, '在线码商时时统计列表', 2011, 4, '/system/merchantstatistics/list', '', 'F', '0', 'system:merchantstatistics:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线码商时时统计列表');
INSERT INTO `sys_menu` VALUES (2070, '在线码商时时统计新增', 2011, 4, '/system/merchantstatistics/add', '', 'F', '0', 'system:merchantstatistics:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线码商时时统计新增');
INSERT INTO `sys_menu` VALUES (2071, '在线码商时时统计编辑', 2011, 4, '/system/merchantstatistics/edit', '', 'F', '0', 'system:merchantstatistics:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线码商时时统计编辑');
INSERT INTO `sys_menu` VALUES (2072, '在线码商时时统计删除', 2011, 4, '/system/merchantstatistics/remove', '', 'F', '0', 'system:merchantstatistics:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线码商时时统计删除');
INSERT INTO `sys_menu` VALUES (2073, '在线码商时时统计导出', 2011, 4, '/system/merchantstatistics/export', '', 'F', '0', 'system:merchantstatistics:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线码商时时统计导出');
INSERT INTO `sys_menu` VALUES (2074, '码商订单统计', 2011, 4, '/system/statistics', '', 'C', '0', 'system:statistics:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商订单统计菜单');
INSERT INTO `sys_menu` VALUES (2075, '码商订单统计列表', 2011, 4, '/system/statistics/list', '', 'F', '0', 'system:statistics:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商订单统计列表');
INSERT INTO `sys_menu` VALUES (2076, '码商订单统计新增', 2011, 4, '/system/statistics/add', '', 'F', '0', 'system:statistics:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商订单统计新增');
INSERT INTO `sys_menu` VALUES (2077, '码商订单统计编辑', 2011, 4, '/system/statistics/edit', '', 'F', '0', 'system:statistics:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商订单统计编辑');
INSERT INTO `sys_menu` VALUES (2078, '码商订单统计删除', 2011, 4, '/system/statistics/remove', '', 'F', '0', 'system:statistics:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商订单统计删除');
INSERT INTO `sys_menu` VALUES (2079, '码商订单统计导出', 2011, 4, '/system/statistics/export', '', 'F', '0', 'system:statistics:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商订单统计导出');
INSERT INTO `sys_menu` VALUES (2080, '码商代理', 0, 111, '#', 'menuItem', 'M', '0', NULL, 'fa fa-bars', '13017751223', '2019-10-22 19:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2081, '代理申请', 2080, 4, '/msdl/apply', '', 'C', '0', 'msdl:apply:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理管理');
INSERT INTO `sys_menu` VALUES (2082, '代理管理新增', 2080, 4, '/msdl/agent/add', '', 'F', '0', 'msdl:agent:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理管理新增');
INSERT INTO `sys_menu` VALUES (2083, '代理管理编辑', 2080, 4, '/msdl/agent/edit', '', 'F', '0', 'msdl:agent:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理管理编辑');
INSERT INTO `sys_menu` VALUES (2084, '代理管理删除', 2080, 4, '/msdl/agent/remove', '', 'F', '0', 'msdl:agent:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理管理删除');
INSERT INTO `sys_menu` VALUES (2085, '代理管理导出', 2080, 4, '/msdl/agent/export', '', 'F', '0', 'msdl:agent:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理管理导出');
INSERT INTO `sys_menu` VALUES (2086, '代理管理', 2080, 4, '/msdl/agent', '', 'C', '0', 'msdl:agent:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理管理');
INSERT INTO `sys_menu` VALUES (2087, '代理管理', 2080, 4, '/msdl/agent/list', '', 'F', '0', 'msdl:agent:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理管理列表');
INSERT INTO `sys_menu` VALUES (2088, '代理申请列表', 2080, 4, '/msdl/apply/list', '', 'F', '0', 'msdl:apply:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理管理列表');
INSERT INTO `sys_menu` VALUES (2089, '代理申请新增', 2080, 4, '/msdl/apply/add', '', 'F', '0', 'msdl:apply:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理管理新增');
INSERT INTO `sys_menu` VALUES (2090, '代理申请申请', 2080, 4, '/msdl/apply/edit', '', 'F', '0', 'msdl:apply:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商代理申请');
INSERT INTO `sys_menu` VALUES (2091, '代理申请删除', 2080, 4, '/msdl/apply/remove', '', 'F', '0', 'msdl:apply:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理管理删除');
INSERT INTO `sys_menu` VALUES (2092, '代理申请导出', 2080, 4, '/msdl/apply/export', '', 'F', '0', 'msdl:apply:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理管理导出');
INSERT INTO `sys_menu` VALUES (2093, '码商代理交易明细', 2080, 4, '/msdl/detail', '', 'C', '0', 'msdl:detail:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商代理交易明细');
INSERT INTO `sys_menu` VALUES (2094, '码商代理交易明细列表', 2080, 4, '/msdl/detail/list', '', 'F', '0', 'msdl:detail:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商代理交易明细列表');
INSERT INTO `sys_menu` VALUES (2095, '码商代理交易明细新增', 2080, 4, '/msdl/detail/add', '', 'F', '0', 'msdl:detail:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商代理交易明细新增');
INSERT INTO `sys_menu` VALUES (2096, '码商码商代理交易明细', 2080, 4, '/msdl/detail/edit', '', 'F', '0', 'msdl:detail:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商码商代理交易明细编辑');
INSERT INTO `sys_menu` VALUES (2097, '码商代理交易明细删除', 2080, 4, '/msdl/detail/remove', '', 'F', '0', 'msdl:detail:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商代理交易明细删除');
INSERT INTO `sys_menu` VALUES (2098, '码商代理交易明细导出', 2080, 4, '/msdl/detail/export', '', 'F', '0', 'msdl:detail:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商代理交易明细导出');
INSERT INTO `sys_menu` VALUES (2099, '码商代理返佣统计', 2080, 4, '/msdl/commision', '', 'C', '0', 'msdl:commision:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商代理返佣统计');
INSERT INTO `sys_menu` VALUES (2100, '码商代理返佣统计', 2080, 4, '/msdl/commision/list', '', 'F', '0', 'msdl:commision:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商代理返佣统计列表');
INSERT INTO `sys_menu` VALUES (2101, '码商代理返佣统计新增', 2080, 4, '/msdl/commision/add', '', 'F', '0', 'msdl:commision:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商代理返佣统计新增');
INSERT INTO `sys_menu` VALUES (2102, '码商码商代理返佣统计', 2080, 4, '/msdl/commision/edit', '', 'F', '0', 'msdl:commision:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商码商代理返佣统计编辑');
INSERT INTO `sys_menu` VALUES (2103, '码商代理返佣统计删除', 2080, 4, '/msdl/commision/remove', '', 'F', '0', 'msdl:commision:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商代理返佣统计删除');
INSERT INTO `sys_menu` VALUES (2104, '码商代理返佣统计导出', 2080, 4, '/msdl/commision/export', '', 'F', '0', 'msdl:commision:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '码商代理返佣统计导出');
INSERT INTO `sys_menu` VALUES (2105, '商户代理', 0, 2222, '#', 'menuItem', 'M', '0', NULL, 'fa fa-bars', '13017751223', '2019-10-24 10:34:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2106, '商户代理管理', 2105, 4, '/shdl/agent', '', 'C', '0', 'shdl:agent:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理管理');
INSERT INTO `sys_menu` VALUES (2107, '商户代理管理', 2105, 4, '/shdl/agent/list', '', 'F', '0', 'shdl:agent:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理管理列表');
INSERT INTO `sys_menu` VALUES (2108, '商户代理管理新增', 2105, 4, '/shdl/agent/add', '', 'F', '0', 'shdl:agent:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理管理新增');
INSERT INTO `sys_menu` VALUES (2109, '码商商户代理管理', 2105, 4, '/shdl/agent/edit', '', 'F', '0', 'shdl:agent:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理管理编辑');
INSERT INTO `sys_menu` VALUES (2110, '商户代理管理删除', 2105, 4, '/shdl/agent/remove', '', 'F', '0', 'shdl:agent:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理管理删除');
INSERT INTO `sys_menu` VALUES (2111, '商户代理管理导出', 2105, 4, '/shdl/agent/export', '', 'F', '0', 'shdl:agent:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理管理导出');
INSERT INTO `sys_menu` VALUES (2112, '代理申请', 2105, 4, '/shdl/apply', '', 'C', '0', 'shdl:apply:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理申请');
INSERT INTO `sys_menu` VALUES (2113, '代理申请', 2105, 4, '/shdl/apply/list', '', 'F', '0', 'shdl:apply:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理申请列表');
INSERT INTO `sys_menu` VALUES (2114, '代理申请新增', 2105, 4, '/shdl/apply/add', '', 'F', '0', 'shdl:apply:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理申请新增');
INSERT INTO `sys_menu` VALUES (2115, '码商代理申请', 2105, 4, '/shdl/apply/edit', '', 'F', '0', 'shdl:apply:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理申请编辑');
INSERT INTO `sys_menu` VALUES (2116, '代理申请删除', 2105, 4, '/shdl/apply/remove', '', 'F', '0', 'shdl:apply:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理申请删除');
INSERT INTO `sys_menu` VALUES (2117, '代理申请导出', 2105, 4, '/shdl/apply/export', '', 'F', '0', 'shdl:apply:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代理申请导出');
INSERT INTO `sys_menu` VALUES (2118, '商户代理交易明细', 2105, 4, '/shdl/detail', '', 'C', '0', 'shdl:detail:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理交易明细');
INSERT INTO `sys_menu` VALUES (2119, '商户代理交易明细', 2105, 4, '/shdl/detail/list', '', 'F', '0', 'shdl:detail:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理交易明细列表');
INSERT INTO `sys_menu` VALUES (2121, '商户代理交易明细新增', 2105, 4, '/shdl/detail/add', '', 'F', '0', 'shdl:detail:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理交易明细新增');
INSERT INTO `sys_menu` VALUES (2122, '码商商户代理交易明细', 2105, 4, '/shdl/detail/edit', '', 'F', '0', 'shdl:detail:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理交易明细编辑');
INSERT INTO `sys_menu` VALUES (2123, '商户代理交易明细删除', 2105, 4, '/shdl/detail/remove', '', 'F', '0', 'shdl:detail:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理交易明细删除');
INSERT INTO `sys_menu` VALUES (2124, '商户代理交易明细导出', 2105, 4, '/shdl/detail/export', '', 'F', '0', 'shdl:detail:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理交易明细导出');
INSERT INTO `sys_menu` VALUES (2125, '商户代理返佣统计', 2105, 4, '/shdl/commision', '', 'C', '0', 'shdl:commision:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理返佣统计');
INSERT INTO `sys_menu` VALUES (2126, '商户代理返佣统计', 2105, 4, '/shdl/commision/list', '', 'F', '0', 'shdl:commision:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理返佣统计列表');
INSERT INTO `sys_menu` VALUES (2128, '商户代理返佣统计新增', 2105, 4, '/shdl/commision/add', '', 'F', '0', 'shdl:commision:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理返佣统计新增');
INSERT INTO `sys_menu` VALUES (2129, '码商商户代理返佣统计', 2105, 4, '/shdl/commision/edit', '', 'F', '0', 'shdl:commision:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理返佣统计编辑');
INSERT INTO `sys_menu` VALUES (2130, '商户代理返佣统计删除', 2105, 4, '/shdl/commision/remove', '', 'F', '0', 'shdl:commision:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理返佣统计删除');
INSERT INTO `sys_menu` VALUES (2131, '商户代理返佣统计导出', 2105, 4, '/shdl/commision/export', '', 'F', '0', 'shdl:commision:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户代理返佣统计导出');
INSERT INTO `sys_menu` VALUES (2132, '商户管理', 0, 111111, '#', 'menuItem', 'M', '0', NULL, 'fa fa-cloud', '13017751223', '2019-10-25 11:01:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2133, '商户信息管理', 2132, 4, '/sh/agent', '', 'C', '0', 'sh:agent:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户信息管理');
INSERT INTO `sys_menu` VALUES (2134, '商户信息管理', 2132, 4, '/sh/agent/list', '', 'F', '0', 'sh:agent:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户信息管理列表');
INSERT INTO `sys_menu` VALUES (2135, '商户信息管理新增', 2132, 4, '/sh/agent/add', '', 'F', '0', 'sh:agent:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户信息管理新增');
INSERT INTO `sys_menu` VALUES (2136, '码商商户信息管理', 2132, 4, '/sh/agent/edit', '', 'F', '0', 'sh:agent:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户信息管理编辑');
INSERT INTO `sys_menu` VALUES (2137, '商户信息管理删除', 2132, 4, '/sh/agent/remove', '', 'F', '0', 'sh:agent:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户信息管理删除');
INSERT INTO `sys_menu` VALUES (2138, '商户信息管理导出', 2132, 4, '/sh/agent/export', '', 'F', '0', 'sh:agent:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户信息管理导出');
INSERT INTO `sys_menu` VALUES (2139, '商户审核', 2132, 4, '/sh/apply', '', 'C', '0', 'sh:apply:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户审核');
INSERT INTO `sys_menu` VALUES (2140, '商户审核', 2132, 4, '/sh/apply/list', '', 'F', '0', 'sh:apply:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户审核列表');
INSERT INTO `sys_menu` VALUES (2141, '商户审核新增', 2132, 4, '/sh/apply/add', '', 'F', '0', 'sh:apply:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户审核新增');
INSERT INTO `sys_menu` VALUES (2142, '商户审核编辑', 2132, 4, '/sh/apply/edit', '', 'F', '0', 'sh:apply:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户审核编辑');
INSERT INTO `sys_menu` VALUES (2143, '商户审核删除', 2132, 4, '/sh/apply/remove', '', 'F', '0', 'sh:apply:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户审核删除');
INSERT INTO `sys_menu` VALUES (2144, '商户审核导出', 2132, 4, '/sh/apply/export', '', 'F', '0', 'sh:apply:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户审核导出');
INSERT INTO `sys_menu` VALUES (2145, '商户账户微调审核', 2132, 4, '/sh/amount', '', 'C', '0', 'sh:amount:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户账户微调审核');
INSERT INTO `sys_menu` VALUES (2146, '商户账户微调审核', 2132, 4, '/sh/amount/list', '', 'F', '0', 'sh:amount:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户账户微调审核列表');
INSERT INTO `sys_menu` VALUES (2147, '商户账户微调审核新增', 2132, 4, '/sh/amount/add', '', 'F', '0', 'sh:amount:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户账户微调审核新增');
INSERT INTO `sys_menu` VALUES (2148, '商户账户微调审核编辑', 2132, 4, '/sh/amount/edit', '', 'F', '0', 'sh:amount:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户账户微调审核编辑');
INSERT INTO `sys_menu` VALUES (2149, '商户账户微调审核删除', 2132, 4, '/sh/amount/remove', '', 'F', '0', 'sh:amount:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户账户微调审核删除');
INSERT INTO `sys_menu` VALUES (2150, '商户账户微调审核导出', 2132, 4, '/sh/amount/export', '', 'F', '0', 'sh:amount:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户账户微调审核导出');
INSERT INTO `sys_menu` VALUES (2151, '商户订单统计', 2132, 4, '/sh/statistics', '', 'C', '0', 'sh:statistics:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户订单统计');
INSERT INTO `sys_menu` VALUES (2152, '商户订单统计列表', 2132, 4, '/sh/statistics/list', '', 'F', '0', 'sh:statistics:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户订单统计列表');
INSERT INTO `sys_menu` VALUES (2153, '商户订单统计新增', 2132, 4, '/sh/statistics/add', '', 'F', '0', 'sh:statistics:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户订单统计新增');
INSERT INTO `sys_menu` VALUES (2154, '商户订单统计编辑', 2132, 4, '/sh/statistics/edit', '', 'F', '0', 'sh:statistics:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户订单统计编辑');
INSERT INTO `sys_menu` VALUES (2155, '商户订单统计删除', 2132, 4, '/sh/statistics/remove', '', 'F', '0', 'sh:statistics:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户订单统计删除');
INSERT INTO `sys_menu` VALUES (2156, '商户订单统计导出', 2132, 4, '/sh/statistics/export', '', 'F', '0', 'sh:statistics:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '商户订单统计导出');
INSERT INTO `sys_menu` VALUES (2157, '银行', 1, 4, '/system/bank', '', 'C', '0', 'system:bank:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行');
INSERT INTO `sys_menu` VALUES (2158, '银行列表', 1, 4, '/system/bank/list', '', 'F', '0', 'system:bank:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行列表');
INSERT INTO `sys_menu` VALUES (2159, '银行新增', 1, 4, '/system/bank/add', '', 'F', '0', 'system:bank:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行新增');
INSERT INTO `sys_menu` VALUES (2160, '银行编辑', 1, 4, '/system/bank/edit', '', 'F', '0', 'system:bank:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行编辑');
INSERT INTO `sys_menu` VALUES (2161, '银行删除', 1, 4, '/system/bank/remove', '', 'F', '0', 'system:bank:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行删除');
INSERT INTO `sys_menu` VALUES (2162, '银行导出', 1, 4, '/system/bank/export', '', 'F', '0', 'system:bank:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行导出');
INSERT INTO `sys_menu` VALUES (2163, '银行账号', 1, 4, '/system/bankno', '', 'C', '0', 'system:bankno:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行账号');
INSERT INTO `sys_menu` VALUES (2164, '银行账号列表', 1, 4, '/system/bankno/list', '', 'F', '0', 'system:bankno:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行账号列表');
INSERT INTO `sys_menu` VALUES (2165, '银行账号新增', 1, 4, '/system/bankno/add', '', 'F', '0', 'system:bankno:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行账号新增');
INSERT INTO `sys_menu` VALUES (2166, '银行账号编辑', 1, 4, '/system/bankno/edit', '', 'F', '0', 'system:bankno:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行账号编辑');
INSERT INTO `sys_menu` VALUES (2167, '银行账号删除', 1, 4, '/system/bankno/remove', '', 'F', '0', 'system:bankno:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行账号删除');
INSERT INTO `sys_menu` VALUES (2168, '银行账号导出', 1, 4, '/system/bankno/export', '', 'F', '0', 'system:bankno:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '银行账号导出');
INSERT INTO `sys_menu` VALUES (2169, '统计管理', 0, 111, '#', 'menuItem', 'M', '0', NULL, 'fa fa-bars', '13017751223', '2019-10-22 19:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2170, '对账统计报', 2169, 4, '/tj/report', '', 'C', '0', 'tj:report:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '对账统计报');
INSERT INTO `sys_menu` VALUES (2171, '对账统计报', 2169, 4, '/tj/report/list', '', 'F', '0', 'tj:report:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '对账统计报');
INSERT INTO `sys_menu` VALUES (2172, '对账统计报新增', 2169, 4, '/tj/report/add', '', 'F', '0', 'tj:report:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '对账统计报新增');
INSERT INTO `sys_menu` VALUES (2173, '对账统计报编辑', 2169, 4, '/tj/report/edit', '', 'F', '0', 'tj:report:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '对账统计报编辑');
INSERT INTO `sys_menu` VALUES (2174, '对账统计报删除', 2169, 4, '/tj/report/remove', '', 'F', '0', 'tj:report:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '对账统计报删除');
INSERT INTO `sys_menu` VALUES (2175, '对账统计报导出', 2169, 4, '/tj/report/export', '', 'F', '0', 'tj:report:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '对账统计报导出');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 365 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"3@qq.com\" ],\r\n  \"sex\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:27:15');
INSERT INTO `sys_oper_log` VALUES (101, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"sex\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:27:22');
INSERT INTO `sys_oper_log` VALUES (102, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'POST', 1, 'admin', '研发部门', '/system/notice/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1,2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:27:34');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:29:47');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:30:08');
INSERT INTO `sys_oper_log` VALUES (105, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-yellow\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:31:23');
INSERT INTO `sys_oper_log` VALUES (106, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-green\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:31:41');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:31:53');
INSERT INTO `sys_oper_log` VALUES (108, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"3\" ],\r\n  \"configName\" : [ \"主框架页-侧边栏主题\" ],\r\n  \"configKey\" : [ \"sys.index.sideTheme\" ],\r\n  \"configValue\" : [ \"theme-light\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"深色主题theme-dark，浅色主题theme-light\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:32:03');
INSERT INTO `sys_oper_log` VALUES (109, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \" skin-purple\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:32:24');
INSERT INTO `sys_oper_log` VALUES (110, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-red\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:32:45');
INSERT INTO `sys_oper_log` VALUES (111, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:33:36');
INSERT INTO `sys_oper_log` VALUES (112, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"3\" ],\r\n  \"configName\" : [ \"主框架页-侧边栏主题\" ],\r\n  \"configKey\" : [ \"sys.index.sideTheme\" ],\r\n  \"configValue\" : [ \"theme-dark\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"深色主题theme-dark，浅色主题theme-light\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:33:52');
INSERT INTO `sys_oper_log` VALUES (113, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-red\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:34:16');
INSERT INTO `sys_oper_log` VALUES (114, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"3\" ],\r\n  \"configName\" : [ \"主框架页-侧边栏主题\" ],\r\n  \"configKey\" : [ \"sys.index.sideTheme\" ],\r\n  \"configValue\" : [ \"theme-light\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"深色主题theme-dark，浅色主题theme-light\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:34:33');
INSERT INTO `sys_oper_log` VALUES (115, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"2\" ],\r\n  \"configName\" : [ \"用户管理-账号初始密码\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword\" ],\r\n  \"configValue\" : [ \"5400228\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"初始化密码 123456\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:34:54');
INSERT INTO `sys_oper_log` VALUES (116, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"2\" ],\r\n  \"configName\" : [ \"用户管理-账号初始密码\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"初始化密码 123456\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:48:43');
INSERT INTO `sys_oper_log` VALUES (117, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \" skin-green\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:49:00');
INSERT INTO `sys_oper_log` VALUES (118, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-purple\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:49:16');
INSERT INTO `sys_oper_log` VALUES (119, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:50:18');
INSERT INTO `sys_oper_log` VALUES (120, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:50:30');
INSERT INTO `sys_oper_log` VALUES (121, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"快易通\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 18:54:06');
INSERT INTO `sys_oper_log` VALUES (122, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"快易通\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\", \"2\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1,2\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 18:54:13');
INSERT INTO `sys_oper_log` VALUES (123, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"快易通\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 18:54:16');
INSERT INTO `sys_oper_log` VALUES (124, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"存在下级部门,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2019-10-06 18:55:36');
INSERT INTO `sys_oper_log` VALUES (125, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/109', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:55:42');
INSERT INTO `sys_oper_log` VALUES (126, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/108', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:55:42');
INSERT INTO `sys_oper_log` VALUES (127, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:55:45');
INSERT INTO `sys_oper_log` VALUES (128, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"parentName\" : [ \"无\" ],\r\n  \"deptName\" : [ \"快易通\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"leader\" : [ \"admin\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 18:56:24');
INSERT INTO `sys_oper_log` VALUES (129, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:00:22');
INSERT INTO `sys_oper_log` VALUES (130, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许操作超级管理员用户\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-10-06 19:00:54');
INSERT INTO `sys_oper_log` VALUES (131, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"e9c5d6f3-e8b5-46c8-9835-76bc826e367d\" ]\r\n}', '{\r\n  \"msg\" : \"当前登陆用户无法强退\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-10-06 19:02:39');
INSERT INTO `sys_oper_log` VALUES (132, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"2\" ],\r\n  \"configName\" : [ \"用户管理-账号初始密码\" ],\r\n  \"configKey\" : [ \"sys.user.initPassword\" ],\r\n  \"configValue\" : [ \"123456\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"初始化密码 123456\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:03:17');
INSERT INTO `sys_oper_log` VALUES (133, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\r\n  \"roleName\" : [ \"运维管理员\" ],\r\n  \"roleKey\" : [ \"ceo\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:06:20');
INSERT INTO `sys_oper_log` VALUES (134, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"boss\" ],\r\n  \"roleKey\" : [ \"boss\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:08:47');
INSERT INTO `sys_oper_log` VALUES (135, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"17722630080\" ],\r\n  \"email\" : [ \"1@qq.com\" ],\r\n  \"loginName\" : [ \"17722630080\" ],\r\n  \"password\" : [ \"17722630080\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:09:49');
INSERT INTO `sys_oper_log` VALUES (136, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"17722630080\" ],\r\n  \"email\" : [ \"1@qq.com\" ],\r\n  \"loginName\" : [ \"17722630080\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:10:16');
INSERT INTO `sys_oper_log` VALUES (137, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 'null', 1, '不允许操作超级管理员角色', '2019-10-06 19:11:01');
INSERT INTO `sys_oper_log` VALUES (138, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"boss\" ],\r\n  \"roleKey\" : [ \"boss\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:11:09');
INSERT INTO `sys_oper_log` VALUES (139, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"boss\" ],\r\n  \"roleKey\" : [ \"boss\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:11:14');
INSERT INTO `sys_oper_log` VALUES (140, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:11:32');
INSERT INTO `sys_oper_log` VALUES (141, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', 1, '17722630080', '运维部门', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"userId\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:12:30');
INSERT INTO `sys_oper_log` VALUES (142, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:12:57');
INSERT INTO `sys_oper_log` VALUES (143, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, '17722630080', '运维部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许操作超级管理员用户\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-10-06 19:13:13');
INSERT INTO `sys_oper_log` VALUES (144, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 'null', 1, '不允许操作超级管理员角色', '2019-10-06 19:14:09');
INSERT INTO `sys_oper_log` VALUES (145, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"boss\" ],\r\n  \"roleKey\" : [ \"boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:14:40');
INSERT INTO `sys_oper_log` VALUES (146, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, '17722630080', '运维部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"13017751223\" ],\r\n  \"deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"13017751223\" ],\r\n  \"email\" : [ \"2@qq.com\" ],\r\n  \"loginName\" : [ \"13017751223\" ],\r\n  \"password\" : [ \"13017751223\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:15:41');
INSERT INTO `sys_oper_log` VALUES (147, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"101\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:21:01');
INSERT INTO `sys_oper_log` VALUES (148, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"100\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:21:03');
INSERT INTO `sys_oper_log` VALUES (149, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'dev', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"dev\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"dev\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:21:17');
INSERT INTO `sys_oper_log` VALUES (150, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'dev', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"dev\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:21:24');
INSERT INTO `sys_oper_log` VALUES (151, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'dev', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"18511112222\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"dev\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:21:27');
INSERT INTO `sys_oper_log` VALUES (152, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'dev', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18576438460\" ],\r\n  \"email\" : [ \"1221@qq.com\" ],\r\n  \"loginName\" : [ \"123123123123\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:25:21');
INSERT INTO `sys_oper_log` VALUES (153, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"102\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:25:47');
INSERT INTO `sys_oper_log` VALUES (154, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"102\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:28:44');
INSERT INTO `sys_oper_log` VALUES (155, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"101\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:28:46');
INSERT INTO `sys_oper_log` VALUES (156, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"100\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:28:48');
INSERT INTO `sys_oper_log` VALUES (157, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'dev', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许操作超级管理员用户\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-10-06 19:28:50');
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/115', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2019-10-06 19:35:25');
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"115\" ],\r\n  \"parentId\" : [ \"3\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"系统接口\" ],\r\n  \"url\" : [ \"/tool/swagger\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"tool:swagger:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:35:46');
INSERT INTO `sys_oper_log` VALUES (160, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:37:20');
INSERT INTO `sys_oper_log` VALUES (161, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许操作超级管理员用户\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-10-06 19:37:37');
INSERT INTO `sys_oper_log` VALUES (162, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许操作超级管理员用户\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-10-06 19:37:59');
INSERT INTO `sys_oper_log` VALUES (163, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"17722630080\" ],\r\n  \"email\" : [ \"1@email.com\" ],\r\n  \"loginName\" : [ \"17722630080\" ],\r\n  \"password\" : [ \"17722630080\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:39:22');
INSERT INTO `sys_oper_log` VALUES (164, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"13017751223\" ],\r\n  \"deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"13017751223\" ],\r\n  \"email\" : [ \"2@email.com\" ],\r\n  \"loginName\" : [ \"13017751223\" ],\r\n  \"password\" : [ \"13017751223\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:39:55');
INSERT INTO `sys_oper_log` VALUES (165, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:40:21');
INSERT INTO `sys_oper_log` VALUES (166, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:41:22');
INSERT INTO `sys_oper_log` VALUES (167, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:41:37');
INSERT INTO `sys_oper_log` VALUES (168, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:42:12');
INSERT INTO `sys_oper_log` VALUES (169, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:42:18');
INSERT INTO `sys_oper_log` VALUES (170, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-10-06 19:42:26');
INSERT INTO `sys_oper_log` VALUES (171, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:44:18');
INSERT INTO `sys_oper_log` VALUES (172, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18566666666\" ],\r\n  \"email\" : [ \"admin@qq.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\", \"2\", \"100\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1,2,100\" ],\r\n  \"postIds\" : [ \"1,2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:46:17');
INSERT INTO `sys_oper_log` VALUES (173, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员/开发者\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 'null', 1, '不允许操作超级管理员角色', '2019-10-06 19:47:04');
INSERT INTO `sys_oper_log` VALUES (174, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"123123\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18576438411\" ],\r\n  \"email\" : [ \"12321@qq.com\" ],\r\n  \"loginName\" : [ \"12321312\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:47:55');
INSERT INTO `sys_oper_log` VALUES (175, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', 1, 'admin', '研发部门', '/system/user/resetPwd/105', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', 0, NULL, '2019-10-06 19:49:41');
INSERT INTO `sys_oper_log` VALUES (176, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', 1, 'admin', '研发部门', '/system/user/resetPwd/104', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', 0, NULL, '2019-10-06 19:49:44');
INSERT INTO `sys_oper_log` VALUES (177, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', 1, 'admin', '研发部门', '/system/user/resetPwd/103', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', 0, NULL, '2019-10-06 19:49:46');
INSERT INTO `sys_oper_log` VALUES (178, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', 1, 'admin', '研发部门', '/system/user/resetPwd/105', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', 0, NULL, '2019-10-06 19:50:11');
INSERT INTO `sys_oper_log` VALUES (179, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', 1, 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"105\" ],\r\n  \"loginName\" : [ \"12321312\" ],\r\n  \"password\" : [ \"8888811111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:50:22');
INSERT INTO `sys_oper_log` VALUES (180, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', 1, 'admin', '研发部门', '/system/user/resetPwd/105', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', 0, NULL, '2019-10-06 19:51:01');
INSERT INTO `sys_oper_log` VALUES (181, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', 1, 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"105\" ],\r\n  \"loginName\" : [ \"12321312\" ],\r\n  \"password\" : [ \"123456789\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:51:06');
INSERT INTO `sys_oper_log` VALUES (182, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"5\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:52:01');
INSERT INTO `sys_oper_log` VALUES (183, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:52:11');
INSERT INTO `sys_oper_log` VALUES (184, '重置密码', 2, 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"oldPassword\" : [ \"Admin123456\" ],\r\n  \"newPassword\" : [ \"Admin5400228\" ],\r\n  \"confirm\" : [ \"Admin5400228\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 19:57:54');
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_dept\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 21:15:15');
INSERT INTO `sys_oper_log` VALUES (186, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 21:15:21');
INSERT INTO `sys_oper_log` VALUES (187, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_config\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 21:16:43');
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_config\" ]\r\n}', 'null', 0, NULL, '2019-10-06 21:16:49');
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_job_log\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 21:23:35');
INSERT INTO `sys_oper_log` VALUES (190, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', 'null', 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'schemas\' not found. Available parameters are [array]', '2019-10-06 22:13:15');
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', 'null', 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'schemas\' not found. Available parameters are [array]', '2019-10-06 22:14:50');
INSERT INTO `sys_oper_log` VALUES (192, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', 'null', 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'schemas\' not found. Available parameters are [array]', '2019-10-06 22:18:59');
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', 'null', 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'schemas\' not found. Available parameters are [arg1, arg0, param1, param2]', '2019-10-06 22:20:33');
INSERT INTO `sys_oper_log` VALUES (194, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:21:46');
INSERT INTO `sys_oper_log` VALUES (195, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"4\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:22:14');
INSERT INTO `sys_oper_log` VALUES (196, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:22:15');
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:22:17');
INSERT INTO `sys_oper_log` VALUES (198, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:23:14');
INSERT INTO `sys_oper_log` VALUES (199, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-06 22:23:21');
INSERT INTO `sys_oper_log` VALUES (200, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-06 22:23:36');
INSERT INTO `sys_oper_log` VALUES (201, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-06 22:25:26');
INSERT INTO `sys_oper_log` VALUES (202, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"5\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:25:54');
INSERT INTO `sys_oper_log` VALUES (203, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:43:59');
INSERT INTO `sys_oper_log` VALUES (204, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:44:17');
INSERT INTO `sys_oper_log` VALUES (205, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"7\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:44:56');
INSERT INTO `sys_oper_log` VALUES (206, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"6\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:44:57');
INSERT INTO `sys_oper_log` VALUES (207, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:45:51');
INSERT INTO `sys_oper_log` VALUES (208, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"8\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:46:04');
INSERT INTO `sys_oper_log` VALUES (209, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:46:09');
INSERT INTO `sys_oper_log` VALUES (210, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:48:31');
INSERT INTO `sys_oper_log` VALUES (211, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"order_flow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:48:50');
INSERT INTO `sys_oper_log` VALUES (212, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"user\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:49:04');
INSERT INTO `sys_oper_log` VALUES (213, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"13\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:49:08');
INSERT INTO `sys_oper_log` VALUES (214, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"12\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:49:10');
INSERT INTO `sys_oper_log` VALUES (215, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"11\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:49:12');
INSERT INTO `sys_oper_log` VALUES (216, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"10\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:49:13');
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"9\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:49:15');
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"order_flow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:49:27');
INSERT INTO `sys_oper_log` VALUES (219, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_dict_type\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:49:38');
INSERT INTO `sys_oper_log` VALUES (220, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"15\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:49:41');
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"14\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:49:43');
INSERT INTO `sys_oper_log` VALUES (222, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:51:05');
INSERT INTO `sys_oper_log` VALUES (223, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"16\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:53:23');
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:53:38');
INSERT INTO `sys_oper_log` VALUES (225, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"17\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:54:28');
INSERT INTO `sys_oper_log` VALUES (226, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"phone_white\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 22:54:33');
INSERT INTO `sys_oper_log` VALUES (227, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-06 22:54:56');
INSERT INTO `sys_oper_log` VALUES (228, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"phone_white\" ],\r\n  \"tableComment\" : [ \"手机白名单\" ],\r\n  \"className\" : [ \"PhoneWhite\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"73\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"手机号\" ],\r\n  \"columns[0].javaType\" : [ \"String\" ],\r\n  \"columns[0].javaField\" : [ \"phone\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.modules\" ],\r\n  \"moduleName\" : [ \"modules\" ],\r\n  \"businessName\" : [ \"white\" ],\r\n  \"functionName\" : [ \"手机白名单\" ],\r\n  \"params[treeCode]\" : [ \"\" ],\r\n  \"params[treeParentCode]\" : [ \"\" ],\r\n  \"params[treeName]\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 23:06:53');
INSERT INTO `sys_oper_log` VALUES (229, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-06 23:07:12');
INSERT INTO `sys_oper_log` VALUES (230, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"phone_white\" ],\r\n  \"tableComment\" : [ \"手机白名单\" ],\r\n  \"className\" : [ \"PhoneWhite\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"73\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"手机号\" ],\r\n  \"columns[0].javaType\" : [ \"String\" ],\r\n  \"columns[0].javaField\" : [ \"phone\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].isEdit\" : [ \"1\" ],\r\n  \"columns[0].isList\" : [ \"1\" ],\r\n  \"columns[0].isQuery\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].isRequired\" : [ \"1\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.module\" ],\r\n  \"moduleName\" : [ \"module\" ],\r\n  \"businessName\" : [ \"white\" ],\r\n  \"functionName\" : [ \"手机白名单\" ],\r\n  \"params[treeCode]\" : [ \"\" ],\r\n  \"params[treeParentCode]\" : [ \"\" ],\r\n  \"params[treeName]\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-06 23:47:12');
INSERT INTO `sys_oper_log` VALUES (231, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-06 23:47:15');
INSERT INTO `sys_oper_log` VALUES (232, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_job\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:22:50');
INSERT INTO `sys_oper_log` VALUES (233, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"19\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:23:15');
INSERT INTO `sys_oper_log` VALUES (234, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"phone_white\" ],\r\n  \"tableComment\" : [ \"手机白名单\" ],\r\n  \"className\" : [ \"PhoneWhite\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"73\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"手机号\" ],\r\n  \"columns[0].javaType\" : [ \"String\" ],\r\n  \"columns[0].javaField\" : [ \"phone\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].isEdit\" : [ \"1\" ],\r\n  \"columns[0].isList\" : [ \"1\" ],\r\n  \"columns[0].isQuery\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"LIKE\" ],\r\n  \"columns[0].isRequired\" : [ \"1\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.module\" ],\r\n  \"moduleName\" : [ \"module\" ],\r\n  \"businessName\" : [ \"white\" ],\r\n  \"functionName\" : [ \"手机白名单\" ],\r\n  \"params[treeCode]\" : [ \"\" ],\r\n  \"params[treeParentCode]\" : [ \"\" ],\r\n  \"params[treeName]\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:23:21');
INSERT INTO `sys_oper_log` VALUES (235, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"phone_white\" ],\r\n  \"tableComment\" : [ \"手机白名单\" ],\r\n  \"className\" : [ \"PhoneWhite\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"73\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"手机号\" ],\r\n  \"columns[0].javaType\" : [ \"String\" ],\r\n  \"columns[0].javaField\" : [ \"phone\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].isEdit\" : [ \"1\" ],\r\n  \"columns[0].isList\" : [ \"1\" ],\r\n  \"columns[0].isQuery\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"LIKE\" ],\r\n  \"columns[0].isRequired\" : [ \"1\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.module\" ],\r\n  \"moduleName\" : [ \"module\" ],\r\n  \"businessName\" : [ \"white\" ],\r\n  \"functionName\" : [ \"手机白名单\" ],\r\n  \"params[treeCode]\" : [ \"\" ],\r\n  \"params[treeParentCode]\" : [ \"\" ],\r\n  \"params[treeName]\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:23:37');
INSERT INTO `sys_oper_log` VALUES (236, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"phone_white\" ],\r\n  \"tableComment\" : [ \"手机白名单\" ],\r\n  \"className\" : [ \"PhoneWhite\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"73\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"手机号\" ],\r\n  \"columns[0].javaType\" : [ \"String\" ],\r\n  \"columns[0].javaField\" : [ \"phone\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].isEdit\" : [ \"1\" ],\r\n  \"columns[0].isList\" : [ \"1\" ],\r\n  \"columns[0].isQuery\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"LIKE\" ],\r\n  \"columns[0].isRequired\" : [ \"1\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [ \"com.ruoyi.module\" ],\r\n  \"moduleName\" : [ \"module\" ],\r\n  \"businessName\" : [ \"white\" ],\r\n  \"functionName\" : [ \"手机白名单\" ],\r\n  \"params[treeCode]\" : [ \"\" ],\r\n  \"params[treeParentCode]\" : [ \"\" ],\r\n  \"params[treeName]\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:23:46');
INSERT INTO `sys_oper_log` VALUES (237, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/phone_white', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-07 00:24:09');
INSERT INTO `sys_oper_log` VALUES (238, '手机白名单', 1, 'com.ruoyi.web.controller.module.PhoneWhiteController.addSave()', 'POST', 1, 'admin', '研发部门', '/module/white/add', '127.0.0.1', '内网IP', '{\r\n  \"phone\" : [ \"18576438460\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:34:28');
INSERT INTO `sys_oper_log` VALUES (239, '手机白名单', 3, 'com.ruoyi.web.controller.module.PhoneWhiteController.remove()', 'POST', 1, 'admin', '研发部门', '/module/white/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"18576438460\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:34:49');
INSERT INTO `sys_oper_log` VALUES (240, '重置密码', 2, 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"oldPassword\" : [ \"Admin5400228\" ],\r\n  \"newPassword\" : [ \"5400228\" ],\r\n  \"confirm\" : [ \"5400228\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:38:51');
INSERT INTO `sys_oper_log` VALUES (241, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统参数配置\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-edit\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:46:41');
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"icon\" : [ \"fa fa-gear\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:47:31');
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统参数配置\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"fa fa-edit\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:47:40');
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统参数配置\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"110\" ],\r\n  \"icon\" : [ \"fa fa-edit\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:47:47');
INSERT INTO `sys_oper_log` VALUES (245, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统监控\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"120\" ],\r\n  \"icon\" : [ \"fa fa-video-camera\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:47:56');
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"130\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:48:04');
INSERT INTO `sys_oper_log` VALUES (247, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统参数配置\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-edit\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:48:15');
INSERT INTO `sys_oper_log` VALUES (248, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"白名单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:49:05');
INSERT INTO `sys_oper_log` VALUES (249, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:50:12');
INSERT INTO `sys_oper_log` VALUES (250, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', 1, 'admin', '研发部门', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"userId\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:52:42');
INSERT INTO `sys_oper_log` VALUES (251, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', 'null', 1, '不允许操作超级管理员角色', '2019-10-07 00:52:46');
INSERT INTO `sys_oper_log` VALUES (252, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:53:03');
INSERT INTO `sys_oper_log` VALUES (253, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户查询\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"用户查询\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:55:06');
INSERT INTO `sys_oper_log` VALUES (254, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2002\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:55:14');
INSERT INTO `sys_oper_log` VALUES (255, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:55:45');
INSERT INTO `sys_oper_log` VALUES (256, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,112,111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:59:07');
INSERT INTO `sys_oper_log` VALUES (257, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,112,111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 00:59:32');
INSERT INTO `sys_oper_log` VALUES (258, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,112,111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:01:07');
INSERT INTO `sys_oper_log` VALUES (259, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:01:45');
INSERT INTO `sys_oper_log` VALUES (260, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, '17722630080', '运维部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"白名单查询\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:02:23');
INSERT INTO `sys_oper_log` VALUES (261, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2002\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:03:12');
INSERT INTO `sys_oper_log` VALUES (262, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2003\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"白名单查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:03:28');
INSERT INTO `sys_oper_log` VALUES (263, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2002', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:03:37');
INSERT INTO `sys_oper_log` VALUES (264, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:03:52');
INSERT INTO `sys_oper_log` VALUES (265, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2003\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:04:42');
INSERT INTO `sys_oper_log` VALUES (266, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, '17722630080', '运维部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:remove\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:05:11');
INSERT INTO `sys_oper_log` VALUES (267, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, '17722630080', '运维部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"新增\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:add\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:05:54');
INSERT INTO `sys_oper_log` VALUES (268, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, '17722630080', '运维部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,112,111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:06:11');
INSERT INTO `sys_oper_log` VALUES (269, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:07:13');
INSERT INTO `sys_oper_log` VALUES (270, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,2004,2005,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:07:53');
INSERT INTO `sys_oper_log` VALUES (271, '手机白名单', 1, 'com.ruoyi.web.controller.module.PhoneWhiteController.addSave()', 'POST', 1, '17722630080', '运维部门', '/module/white/add', '127.0.0.1', '内网IP', '{\r\n  \"phone\" : [ \"12313131313\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:08:02');
INSERT INTO `sys_oper_log` VALUES (272, '手机白名单', 3, 'com.ruoyi.web.controller.module.PhoneWhiteController.remove()', 'POST', 1, '17722630080', '运维部门', '/module/white/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"12313131313\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-07 01:08:05');
INSERT INTO `sys_oper_log` VALUES (273, '手机白名单', 1, 'com.ruoyi.web.controller.module.PhoneWhiteController.addSave()', 'POST', 1, '17722630080', '运维部门', '/admin/module/white/add', '127.0.0.1', '内网IP', '{\n  \"phone\" : [ \"18903021030\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2019-10-07 01:39:58');
INSERT INTO `sys_oper_log` VALUES (274, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/system/user/remove', '127.0.0.1', '内网IP', '{\n  \"ids\" : [ \"105\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2019-10-07 01:40:48');
INSERT INTO `sys_oper_log` VALUES (275, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"管理员功能\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-edit\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:48:55');
INSERT INTO `sys_oper_log` VALUES (276, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/mch\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:51:05');
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"手机白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-tablet\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:52:18');
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/mch\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch_mg:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:53:37');
INSERT INTO `sys_oper_log` VALUES (279, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"手机白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:54:09');
INSERT INTO `sys_oper_log` VALUES (280, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/mch\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch_mg:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:54:31');
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/mch\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"mg:mch:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:55:46');
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"手机白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mg:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:56:27');
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2001\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"手机白名单\" ],\r\n  \"url\" : [ \"/module/white\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:56:43');
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/mch\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"mg:mch:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:56:49');
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:57:15');
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch:remove\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:57:45');
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"修改\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch:edit\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:58:05');
INSERT INTO `sys_oper_log` VALUES (288, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"新增\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:mch:add\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 15:59:19');
INSERT INTO `sys_oper_log` VALUES (289, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/admin/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"merchant\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:02:32');
INSERT INTO `sys_oper_log` VALUES (290, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"20\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:03:42');
INSERT INTO `sys_oper_log` VALUES (291, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/admin/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"merchant\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:03:47');
INSERT INTO `sys_oper_log` VALUES (292, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"21\" ],\r\n  \"tableName\" : [ \"merchant\" ],\r\n  \"tableComment\" : [ \"商户名单\" ],\r\n  \"className\" : [ \"Merchant\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"93\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"94\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"允许接入的IP\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"ip\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"95\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"商户身份ID\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"mchId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"96\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"调度接口安全校验码\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"apiKey\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"LIKE\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:04:39');
INSERT INTO `sys_oper_log` VALUES (293, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/admin/tool/gen/genCode/merchant', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-13 16:04:47');
INSERT INTO `sys_oper_log` VALUES (294, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/admin/tool/gen/genCode/merchant', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-13 16:06:00');
INSERT INTO `sys_oper_log` VALUES (295, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"21\" ],\r\n  \"tableName\" : [ \"merchant\" ],\r\n  \"tableComment\" : [ \"商户名单\" ],\r\n  \"className\" : [ \"Merchant\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"93\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"94\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"允许接入的IP\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"ip\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"95\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"商户身份ID\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"mchId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"96\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"调度接口安全校验码\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"apiKey\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"LIKE\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:14:15');
INSERT INTO `sys_oper_log` VALUES (296, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/admin/tool/gen/genCode/merchant', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-13 16:14:18');
INSERT INTO `sys_oper_log` VALUES (297, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/merchant\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"mg:mch:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:19:43');
INSERT INTO `sys_oper_log` VALUES (298, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:20:00');
INSERT INTO `sys_oper_log` VALUES (299, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2008\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:remove\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:20:06');
INSERT INTO `sys_oper_log` VALUES (300, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2009\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"修改\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:edit\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:20:12');
INSERT INTO `sys_oper_log` VALUES (301, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2010\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"新增\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:add\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:20:17');
INSERT INTO `sys_oper_log` VALUES (302, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"21\" ],\r\n  \"tableName\" : [ \"merchant\" ],\r\n  \"tableComment\" : [ \"商户名单\" ],\r\n  \"className\" : [ \"Merchant\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"93\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"94\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"允许接入的IP\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"ip\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"95\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"商户身份ID\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"mchId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"96\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"调度接口安全校验码\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"apiKey\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"LIKE\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:24:49');
INSERT INTO `sys_oper_log` VALUES (303, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/admin/tool/gen/genCode/merchant', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-13 16:24:57');
INSERT INTO `sys_oper_log` VALUES (304, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/admin/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"21\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:45:51');
INSERT INTO `sys_oper_log` VALUES (305, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/admin/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"merchant\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:45:55');
INSERT INTO `sys_oper_log` VALUES (306, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"22\" ],\r\n  \"tableName\" : [ \"merchant\" ],\r\n  \"tableComment\" : [ \"商户名单\" ],\r\n  \"className\" : [ \"Merchant\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"99\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"100\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"商户名称\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"name\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"101\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"允许接入IP\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"ip\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"102\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"商户ID\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"mchId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"LIKE\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].colu', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:47:01');
INSERT INTO `sys_oper_log` VALUES (307, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/admin/tool/gen/genCode/merchant', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-13 16:47:04');
INSERT INTO `sys_oper_log` VALUES (308, '商户名单', 1, 'com.ruoyi.web.controller.module.MerchantController.addSave()', 'POST', 1, 'admin', '研发部门', '/admin/module/merchant/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"测试\" ],\r\n  \"ip\" : [ \"123\" ],\r\n  \"depict\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 16:59:19');
INSERT INTO `sys_oper_log` VALUES (309, '商户名单', 3, 'com.ruoyi.web.controller.module.MerchantController.remove()', 'POST', 1, 'admin', NULL, '/admin/module/merchant/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:01:04');
INSERT INTO `sys_oper_log` VALUES (310, '商户名单', 1, 'com.ruoyi.web.controller.module.MerchantController.addSave()', 'POST', 1, 'admin', NULL, '/admin/module/merchant/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"测试\" ],\r\n  \"ip\" : [ \"192.168.1.125\" ],\r\n  \"depict\" : [ \"112313123112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:01:23');
INSERT INTO `sys_oper_log` VALUES (311, '商户名单', 1, 'com.ruoyi.web.controller.module.MerchantController.addSave()', 'POST', 1, 'admin', NULL, '/admin/module/merchant/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"adasdjakwdljkajkldajkldajlkdajlkdakljdaljkdljkadjlkadlkjadljkadljkalkjdaljkdljkadlkjalkjdaljkdlkajdjlkjakldjkl\" ],\r\n  \"ip\" : [ \"dwajlkdajkldakjldaljkdajlkdljkadljkadjklajldkaljkdljkadjlkljkdaddadada\" ],\r\n  \"depict\" : [ \"wadadadadadajksjkdaljkwjkldaljkdlkjadljkaldjkaljkdwlkjadlkjadlkjalkjlkajdlkjadlkjaldkjwalkjdalkjdlakjdlkjadlkjadljkaljkdwalkjdwa\" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1\r\n### The error may involve com.ruoyi.module.mapper.MerchantMapper.insertMerchant-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into merchant          ( name,             ip,             mch_id,             api_key,             depict,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1\n; Data truncation: Data too long for column \'name\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'name\' at row 1', '2019-10-13 17:05:55');
INSERT INTO `sys_oper_log` VALUES (312, '商户名单', 1, 'com.ruoyi.web.controller.module.MerchantController.addSave()', 'POST', 1, 'admin', NULL, '/admin/module/merchant/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"dadadadadwadwadwadwadwadwadadwad\" ],\r\n  \"ip\" : [ \"awdadadadadadada\" ],\r\n  \"depict\" : [ \"awdadadwa\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:06:17');
INSERT INTO `sys_oper_log` VALUES (313, '商户名单', 2, 'com.ruoyi.web.controller.module.MerchantController.editSave()', 'POST', 1, 'admin', NULL, '/admin/module/merchant/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"name\" : [ \"测试1\" ],\r\n  \"ip\" : [ \"192.168.1.125\" ],\r\n  \"mchId\" : [ \"kytb8fbd349c6d41689\" ],\r\n  \"apiKey\" : [ \"d2acfb79e34d080e08d30b1df1417eb6\" ],\r\n  \"depict\" : [ \"112313123112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:06:25');
INSERT INTO `sys_oper_log` VALUES (314, '商户名单', 3, 'com.ruoyi.web.controller.module.MerchantController.remove()', 'POST', 1, 'admin', NULL, '/admin/module/merchant/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:06:27');
INSERT INTO `sys_oper_log` VALUES (315, '商户名单', 2, 'com.ruoyi.web.controller.module.MerchantController.editSave()', 'POST', 1, 'admin', NULL, '/admin/module/merchant/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"name\" : [ \"测试\" ],\r\n  \"ip\" : [ \"192.168.1.125\" ],\r\n  \"mchId\" : [ \"kytb8fbd349c6d41689\" ],\r\n  \"apiKey\" : [ \"d2acfb79e34d080e08d30b1df1417eb6\" ],\r\n  \"depict\" : [ \"测试而已哦\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:06:38');
INSERT INTO `sys_oper_log` VALUES (316, '商户名单', 2, 'com.ruoyi.web.controller.module.MerchantController.editSave()', 'POST', 1, 'admin', NULL, '/admin/module/merchant/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"name\" : [ \"测试\" ],\r\n  \"ip\" : [ \"192.168.1.125\" ],\r\n  \"depict\" : [ \"测试数据\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:11:09');
INSERT INTO `sys_oper_log` VALUES (317, '商户名单', 2, 'com.ruoyi.web.controller.module.MerchantController.editSave()', 'POST', 1, 'admin', NULL, '/admin/module/merchant/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"name\" : [ \"测试\" ],\r\n  \"ip\" : [ \"192.168.1.125\" ],\r\n  \"depict\" : [ \"测试数据\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:11:21');
INSERT INTO `sys_oper_log` VALUES (318, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,2004,2005,2006,2007,2008,2009,2010,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:55:37');
INSERT INTO `sys_oper_log` VALUES (319, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"104\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"13017751223\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"13017751223\" ],\r\n  \"email\" : [ \"2@email.com\" ],\r\n  \"loginName\" : [ \"13017751223\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\", \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1,100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:56:54');
INSERT INTO `sys_oper_log` VALUES (320, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"103\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"17722630080\" ],\r\n  \"email\" : [ \"1@email.com\" ],\r\n  \"loginName\" : [ \"17722630080\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\", \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1,100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:56:58');
INSERT INTO `sys_oper_log` VALUES (321, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, '13017751223', '运维部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/merchant\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:white:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:59:42');
INSERT INTO `sys_oper_log` VALUES (322, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, '13017751223', '运维部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 17:59:52');
INSERT INTO `sys_oper_log` VALUES (323, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, '13017751223', '运维部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2006\" ],\r\n  \"parentId\" : [ \"2000\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"/module/merchant\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 18:00:02');
INSERT INTO `sys_oper_log` VALUES (324, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, '13017751223', '运维部门', '/admin/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"@RequiresRoles(\\\"admin\\\")\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,2004,2005,2006,2007,2008,2009,2010,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,112,111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 18:00:51');
INSERT INTO `sys_oper_log` VALUES (325, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2006\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"module:merchant:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 18:02:07');
INSERT INTO `sys_oper_log` VALUES (326, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,2004,2005,2006,2007,2008,2009,2010,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 18:02:24');
INSERT INTO `sys_oper_log` VALUES (327, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"104\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"13017751223\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"13017751223\" ],\r\n  \"email\" : [ \"2@email.com\" ],\r\n  \"loginName\" : [ \"13017751223\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 18:03:59');
INSERT INTO `sys_oper_log` VALUES (328, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/admin/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"103\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"17722630080\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"17722630080\" ],\r\n  \"email\" : [ \"1@email.com\" ],\r\n  \"loginName\" : [ \"17722630080\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 18:04:04');
INSERT INTO `sys_oper_log` VALUES (329, '商户名单', 1, 'com.ruoyi.web.controller.module.MerchantController.addSave()', 'POST', 1, '13017751223', '运维部门', '/admin/module/merchant/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"13123\" ],\r\n  \"ip\" : [ \"123213\" ],\r\n  \"depict\" : [ \"12313\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 18:04:56');
INSERT INTO `sys_oper_log` VALUES (330, '商户名单', 3, 'com.ruoyi.web.controller.module.MerchantController.remove()', 'POST', 1, '13017751223', '运维部门', '/admin/module/merchant/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"4\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-13 18:05:00');
INSERT INTO `sys_oper_log` VALUES (331, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, '13017751223', '运维部门', '/manager/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"码商管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-21 14:18:37');
INSERT INTO `sys_oper_log` VALUES (332, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, '13017751223', '运维部门', '/manager/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-21 14:58:02');
INSERT INTO `sys_oper_log` VALUES (333, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, '13017751223', '运维部门', '/manager/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"代码生成\" ],\r\n  \"url\" : [ \"/tool/gen\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:gen:view\" ],\r\n  \"orderNum\" : [ \"123\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-21 17:00:27');
INSERT INTO `sys_oper_log` VALUES (334, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, '13017751223', '运维部门', '/manager/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-21 17:05:44');
INSERT INTO `sys_oper_log` VALUES (335, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, '13017751223', '运维部门', '/manager/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"Boss\" ],\r\n  \"roleKey\" : [ \"Boss\" ],\r\n  \"roleSort\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2000,2001,2003,2004,2005,2006,2007,2008,2009,2010,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,112,111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-21 17:06:09');
INSERT INTO `sys_oper_log` VALUES (336, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, '13017751223', '运维部门', '/manager/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"104\" ],\r\n  \"deptId\" : [ \"107\" ],\r\n  \"userName\" : [ \"13017751223\" ],\r\n  \"dept.deptName\" : [ \"运维部门\" ],\r\n  \"phonenumber\" : [ \"13017751223\" ],\r\n  \"email\" : [ \"2@email.com\" ],\r\n  \"loginName\" : [ \"13017751223\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\", \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1,100\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-21 17:10:51');
INSERT INTO `sys_oper_log` VALUES (337, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, '13017751223', '运维部门', '/manager/system/menu/remove/1060', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2019-10-21 17:23:49');
INSERT INTO `sys_oper_log` VALUES (338, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, '13017751223', '运维部门', '/manager/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"order_flow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-21 18:16:28');
INSERT INTO `sys_oper_log` VALUES (339, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/genCode/order_flow', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-21 18:20:01');
INSERT INTO `sys_oper_log` VALUES (340, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, '13017751223', '运维部门', '/manager/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"ms_alipay_cashcode,ms_alipay,ms_wechat_cashcode,ms_wechat,ms_merchant,ms_adjust_amount,ms_order\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-22 13:05:10');
INSERT INTO `sys_oper_log` VALUES (341, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, '13017751223', '运维部门', '/manager/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"23\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-22 13:05:17');
INSERT INTO `sys_oper_log` VALUES (342, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, '13017751223', '运维部门', '/manager/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"ms_statistics,ms_merchant_statistics,ms_apply\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-22 13:58:59');
INSERT INTO `sys_oper_log` VALUES (343, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"ms_apply,ms_merchant_statistics,ms_statistics,ms_wechat,ms_wechat_cashcode,ms_alipay,ms_alipay_cashcode,ms_merchant,ms_order,ms_adjust_amount\" ]\r\n}', 'null', 0, NULL, '2019-10-22 13:59:24');
INSERT INTO `sys_oper_log` VALUES (344, '【请填写功能名称】', 1, 'com.ruoyi.web.controller.system.MsApplyController.addSave()', 'POST', 1, '13017751223', '运维部门', '/manager/system/msapply/add', '127.0.0.1', '内网IP', '{\r\n  \"merchantId\" : [ \"100001\" ],\r\n  \"merchantName\" : [ \"100001\" ],\r\n  \"merchantAccount\" : [ \"100001\" ],\r\n  \"qq\" : [ \"22214100001\" ],\r\n  \"mobile\" : [ \"13556856812\" ],\r\n  \"applyTime\" : [ \"2019-10-22\" ],\r\n  \"status\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-22 17:23:47');
INSERT INTO `sys_oper_log` VALUES (345, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/genCode/ms_statistics', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2019-10-22 17:45:54');
INSERT INTO `sys_oper_log` VALUES (346, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, '13017751223', '运维部门', '/manager/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"码商代理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"111\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-22 19:00:20');
INSERT INTO `sys_oper_log` VALUES (347, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, '13017751223', '运维部门', '/manager/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"msdl_commision,msdl_order_detail,msdl_agent,msdl_apply\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-23 11:44:14');
INSERT INTO `sys_oper_log` VALUES (348, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"msdl_order_detail,msdl_apply,msdl_commision,msdl_agent\" ]\r\n}', 'null', 0, NULL, '2019-10-23 11:44:24');
INSERT INTO `sys_oper_log` VALUES (349, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, '13017751223', '运维部门', '/manager/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"商户代理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2222\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-24 10:34:43');
INSERT INTO `sys_oper_log` VALUES (350, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, '13017751223', '运维部门', '/manager/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"shdl_apply,shdl_order_detail,shdl_commision,shdl_agent\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-24 10:37:28');
INSERT INTO `sys_oper_log` VALUES (351, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"shdl_commision,shdl_order_detail,shdl_apply,shdl_agent\" ]\r\n}', 'null', 0, NULL, '2019-10-24 10:37:38');
INSERT INTO `sys_oper_log` VALUES (352, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, '13017751223', '运维部门', '/manager/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sh_apply,sh_adjust_amount,sh_merchant_statistics,sh_agent\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-24 18:22:51');
INSERT INTO `sys_oper_log` VALUES (353, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sh_apply,sh_merchant_statistics,sh_adjust_amount,sh_agent\" ]\r\n}', 'null', 0, NULL, '2019-10-24 18:23:01');
INSERT INTO `sys_oper_log` VALUES (354, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, '13017751223', '运维部门', '/manager/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"商户管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"111111\" ],\r\n  \"icon\" : [ \"fa fa-cloud\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-25 11:01:50');
INSERT INTO `sys_oper_log` VALUES (355, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, '13017751223', '运维部门', '/manager/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_bankno,sys_bank\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-25 15:38:16');
INSERT INTO `sys_oper_log` VALUES (356, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_bankno,sys_bank\" ]\r\n}', 'null', 0, NULL, '2019-10-25 15:38:23');
INSERT INTO `sys_oper_log` VALUES (357, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_bankno,sys_bank\" ]\r\n}', 'null', 0, NULL, '2019-10-25 15:52:19');
INSERT INTO `sys_oper_log` VALUES (358, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, '13017751223', '运维部门', '/manager/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"47,46\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-25 16:28:05');
INSERT INTO `sys_oper_log` VALUES (359, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, '13017751223', '运维部门', '/manager/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_bank,sys_bankno\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-25 16:28:12');
INSERT INTO `sys_oper_log` VALUES (360, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_bank,sys_bankno\" ]\r\n}', 'null', 0, NULL, '2019-10-25 16:28:20');
INSERT INTO `sys_oper_log` VALUES (361, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, '13017751223', '运维部门', '/manager/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"tj_hsorder_status,tj_msorder_status,tj_bill_report\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-10-25 18:14:16');
INSERT INTO `sys_oper_log` VALUES (362, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"tj_bill_report,tj_hsorder_status,tj_msorder_status\" ]\r\n}', 'null', 0, NULL, '2019-10-25 18:14:42');
INSERT INTO `sys_oper_log` VALUES (363, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"tj_bill_report,tj_hsorder_status,tj_msorder_status\" ]\r\n}', 'null', 0, NULL, '2019-10-26 11:38:36');
INSERT INTO `sys_oper_log` VALUES (364, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, '13017751223', '运维部门', '/manager/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"tj_msorder_status\" ]\r\n}', 'null', 0, NULL, '2019-10-26 15:45:49');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '5', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-06 19:52:11', '普通角色');
INSERT INTO `sys_role` VALUES (100, 'Boss', 'Boss', 0, '1', '0', '0', 'admin', '2019-10-06 19:06:20', '13017751223', '2019-10-21 17:06:08', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 101);
INSERT INTO `sys_role_menu` VALUES (100, 102);
INSERT INTO `sys_role_menu` VALUES (100, 103);
INSERT INTO `sys_role_menu` VALUES (100, 104);
INSERT INTO `sys_role_menu` VALUES (100, 105);
INSERT INTO `sys_role_menu` VALUES (100, 106);
INSERT INTO `sys_role_menu` VALUES (100, 107);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 109);
INSERT INTO `sys_role_menu` VALUES (100, 111);
INSERT INTO `sys_role_menu` VALUES (100, 112);
INSERT INTO `sys_role_menu` VALUES (100, 114);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1000);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1007);
INSERT INTO `sys_role_menu` VALUES (100, 1008);
INSERT INTO `sys_role_menu` VALUES (100, 1009);
INSERT INTO `sys_role_menu` VALUES (100, 1010);
INSERT INTO `sys_role_menu` VALUES (100, 1011);
INSERT INTO `sys_role_menu` VALUES (100, 1012);
INSERT INTO `sys_role_menu` VALUES (100, 1013);
INSERT INTO `sys_role_menu` VALUES (100, 1014);
INSERT INTO `sys_role_menu` VALUES (100, 1015);
INSERT INTO `sys_role_menu` VALUES (100, 1016);
INSERT INTO `sys_role_menu` VALUES (100, 1017);
INSERT INTO `sys_role_menu` VALUES (100, 1018);
INSERT INTO `sys_role_menu` VALUES (100, 1019);
INSERT INTO `sys_role_menu` VALUES (100, 1020);
INSERT INTO `sys_role_menu` VALUES (100, 1021);
INSERT INTO `sys_role_menu` VALUES (100, 1022);
INSERT INTO `sys_role_menu` VALUES (100, 1023);
INSERT INTO `sys_role_menu` VALUES (100, 1024);
INSERT INTO `sys_role_menu` VALUES (100, 1025);
INSERT INTO `sys_role_menu` VALUES (100, 1026);
INSERT INTO `sys_role_menu` VALUES (100, 1027);
INSERT INTO `sys_role_menu` VALUES (100, 1028);
INSERT INTO `sys_role_menu` VALUES (100, 1029);
INSERT INTO `sys_role_menu` VALUES (100, 1030);
INSERT INTO `sys_role_menu` VALUES (100, 1031);
INSERT INTO `sys_role_menu` VALUES (100, 1032);
INSERT INTO `sys_role_menu` VALUES (100, 1033);
INSERT INTO `sys_role_menu` VALUES (100, 1034);
INSERT INTO `sys_role_menu` VALUES (100, 1035);
INSERT INTO `sys_role_menu` VALUES (100, 1036);
INSERT INTO `sys_role_menu` VALUES (100, 1037);
INSERT INTO `sys_role_menu` VALUES (100, 1038);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1040);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 1046);
INSERT INTO `sys_role_menu` VALUES (100, 1047);
INSERT INTO `sys_role_menu` VALUES (100, 1048);
INSERT INTO `sys_role_menu` VALUES (100, 1056);
INSERT INTO `sys_role_menu` VALUES (100, 1057);
INSERT INTO `sys_role_menu` VALUES (100, 1058);
INSERT INTO `sys_role_menu` VALUES (100, 1059);
INSERT INTO `sys_role_menu` VALUES (100, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2005);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2010);
INSERT INTO `sys_role_menu` VALUES (100, 2011);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2026);
INSERT INTO `sys_role_menu` VALUES (100, 2027);
INSERT INTO `sys_role_menu` VALUES (100, 2028);
INSERT INTO `sys_role_menu` VALUES (100, 2029);
INSERT INTO `sys_role_menu` VALUES (100, 2030);
INSERT INTO `sys_role_menu` VALUES (100, 2031);
INSERT INTO `sys_role_menu` VALUES (100, 2032);
INSERT INTO `sys_role_menu` VALUES (100, 2033);
INSERT INTO `sys_role_menu` VALUES (100, 2034);
INSERT INTO `sys_role_menu` VALUES (100, 2035);
INSERT INTO `sys_role_menu` VALUES (100, 2036);
INSERT INTO `sys_role_menu` VALUES (100, 2037);
INSERT INTO `sys_role_menu` VALUES (100, 2038);
INSERT INTO `sys_role_menu` VALUES (100, 2039);
INSERT INTO `sys_role_menu` VALUES (100, 2040);
INSERT INTO `sys_role_menu` VALUES (100, 2041);
INSERT INTO `sys_role_menu` VALUES (100, 2042);
INSERT INTO `sys_role_menu` VALUES (100, 2043);
INSERT INTO `sys_role_menu` VALUES (100, 2044);
INSERT INTO `sys_role_menu` VALUES (100, 2045);
INSERT INTO `sys_role_menu` VALUES (100, 2046);
INSERT INTO `sys_role_menu` VALUES (100, 2047);
INSERT INTO `sys_role_menu` VALUES (100, 2048);
INSERT INTO `sys_role_menu` VALUES (100, 2049);
INSERT INTO `sys_role_menu` VALUES (100, 2050);
INSERT INTO `sys_role_menu` VALUES (100, 2051);
INSERT INTO `sys_role_menu` VALUES (100, 2052);
INSERT INTO `sys_role_menu` VALUES (100, 2053);
INSERT INTO `sys_role_menu` VALUES (100, 2054);
INSERT INTO `sys_role_menu` VALUES (100, 2055);
INSERT INTO `sys_role_menu` VALUES (100, 2056);
INSERT INTO `sys_role_menu` VALUES (100, 2057);
INSERT INTO `sys_role_menu` VALUES (100, 2058);
INSERT INTO `sys_role_menu` VALUES (100, 2059);
INSERT INTO `sys_role_menu` VALUES (100, 2060);
INSERT INTO `sys_role_menu` VALUES (100, 2061);
INSERT INTO `sys_role_menu` VALUES (100, 2062);
INSERT INTO `sys_role_menu` VALUES (100, 2063);
INSERT INTO `sys_role_menu` VALUES (100, 2064);
INSERT INTO `sys_role_menu` VALUES (100, 2065);
INSERT INTO `sys_role_menu` VALUES (100, 2066);
INSERT INTO `sys_role_menu` VALUES (100, 2067);
INSERT INTO `sys_role_menu` VALUES (100, 2068);
INSERT INTO `sys_role_menu` VALUES (100, 2069);
INSERT INTO `sys_role_menu` VALUES (100, 2070);
INSERT INTO `sys_role_menu` VALUES (100, 2071);
INSERT INTO `sys_role_menu` VALUES (100, 2072);
INSERT INTO `sys_role_menu` VALUES (100, 2073);
INSERT INTO `sys_role_menu` VALUES (100, 2074);
INSERT INTO `sys_role_menu` VALUES (100, 2075);
INSERT INTO `sys_role_menu` VALUES (100, 2076);
INSERT INTO `sys_role_menu` VALUES (100, 2077);
INSERT INTO `sys_role_menu` VALUES (100, 2078);
INSERT INTO `sys_role_menu` VALUES (100, 2079);
INSERT INTO `sys_role_menu` VALUES (100, 2080);
INSERT INTO `sys_role_menu` VALUES (100, 2081);
INSERT INTO `sys_role_menu` VALUES (100, 2082);
INSERT INTO `sys_role_menu` VALUES (100, 2083);
INSERT INTO `sys_role_menu` VALUES (100, 2084);
INSERT INTO `sys_role_menu` VALUES (100, 2085);
INSERT INTO `sys_role_menu` VALUES (100, 2086);
INSERT INTO `sys_role_menu` VALUES (100, 2087);
INSERT INTO `sys_role_menu` VALUES (100, 2088);
INSERT INTO `sys_role_menu` VALUES (100, 2089);
INSERT INTO `sys_role_menu` VALUES (100, 2090);
INSERT INTO `sys_role_menu` VALUES (100, 2091);
INSERT INTO `sys_role_menu` VALUES (100, 2092);
INSERT INTO `sys_role_menu` VALUES (100, 2093);
INSERT INTO `sys_role_menu` VALUES (100, 2094);
INSERT INTO `sys_role_menu` VALUES (100, 2095);
INSERT INTO `sys_role_menu` VALUES (100, 2096);
INSERT INTO `sys_role_menu` VALUES (100, 2097);
INSERT INTO `sys_role_menu` VALUES (100, 2098);
INSERT INTO `sys_role_menu` VALUES (100, 2099);
INSERT INTO `sys_role_menu` VALUES (100, 2100);
INSERT INTO `sys_role_menu` VALUES (100, 2101);
INSERT INTO `sys_role_menu` VALUES (100, 2102);
INSERT INTO `sys_role_menu` VALUES (100, 2103);
INSERT INTO `sys_role_menu` VALUES (100, 2104);
INSERT INTO `sys_role_menu` VALUES (100, 2105);
INSERT INTO `sys_role_menu` VALUES (100, 2106);
INSERT INTO `sys_role_menu` VALUES (100, 2107);
INSERT INTO `sys_role_menu` VALUES (100, 2108);
INSERT INTO `sys_role_menu` VALUES (100, 2109);
INSERT INTO `sys_role_menu` VALUES (100, 2110);
INSERT INTO `sys_role_menu` VALUES (100, 2111);
INSERT INTO `sys_role_menu` VALUES (100, 2112);
INSERT INTO `sys_role_menu` VALUES (100, 2113);
INSERT INTO `sys_role_menu` VALUES (100, 2114);
INSERT INTO `sys_role_menu` VALUES (100, 2115);
INSERT INTO `sys_role_menu` VALUES (100, 2116);
INSERT INTO `sys_role_menu` VALUES (100, 2117);
INSERT INTO `sys_role_menu` VALUES (100, 2118);
INSERT INTO `sys_role_menu` VALUES (100, 2119);
INSERT INTO `sys_role_menu` VALUES (100, 2121);
INSERT INTO `sys_role_menu` VALUES (100, 2122);
INSERT INTO `sys_role_menu` VALUES (100, 2123);
INSERT INTO `sys_role_menu` VALUES (100, 2124);
INSERT INTO `sys_role_menu` VALUES (100, 2125);
INSERT INTO `sys_role_menu` VALUES (100, 2126);
INSERT INTO `sys_role_menu` VALUES (100, 2128);
INSERT INTO `sys_role_menu` VALUES (100, 2129);
INSERT INTO `sys_role_menu` VALUES (100, 2130);
INSERT INTO `sys_role_menu` VALUES (100, 2131);
INSERT INTO `sys_role_menu` VALUES (100, 2132);
INSERT INTO `sys_role_menu` VALUES (100, 2133);
INSERT INTO `sys_role_menu` VALUES (100, 2134);
INSERT INTO `sys_role_menu` VALUES (100, 2135);
INSERT INTO `sys_role_menu` VALUES (100, 2136);
INSERT INTO `sys_role_menu` VALUES (100, 2137);
INSERT INTO `sys_role_menu` VALUES (100, 2138);
INSERT INTO `sys_role_menu` VALUES (100, 2139);
INSERT INTO `sys_role_menu` VALUES (100, 2140);
INSERT INTO `sys_role_menu` VALUES (100, 2141);
INSERT INTO `sys_role_menu` VALUES (100, 2142);
INSERT INTO `sys_role_menu` VALUES (100, 2143);
INSERT INTO `sys_role_menu` VALUES (100, 2144);
INSERT INTO `sys_role_menu` VALUES (100, 2145);
INSERT INTO `sys_role_menu` VALUES (100, 2146);
INSERT INTO `sys_role_menu` VALUES (100, 2147);
INSERT INTO `sys_role_menu` VALUES (100, 2148);
INSERT INTO `sys_role_menu` VALUES (100, 2149);
INSERT INTO `sys_role_menu` VALUES (100, 2150);
INSERT INTO `sys_role_menu` VALUES (100, 2151);
INSERT INTO `sys_role_menu` VALUES (100, 2152);
INSERT INTO `sys_role_menu` VALUES (100, 2153);
INSERT INTO `sys_role_menu` VALUES (100, 2154);
INSERT INTO `sys_role_menu` VALUES (100, 2155);
INSERT INTO `sys_role_menu` VALUES (100, 2156);
INSERT INTO `sys_role_menu` VALUES (100, 2157);
INSERT INTO `sys_role_menu` VALUES (100, 2158);
INSERT INTO `sys_role_menu` VALUES (100, 2159);
INSERT INTO `sys_role_menu` VALUES (100, 2160);
INSERT INTO `sys_role_menu` VALUES (100, 2161);
INSERT INTO `sys_role_menu` VALUES (100, 2162);
INSERT INTO `sys_role_menu` VALUES (100, 2163);
INSERT INTO `sys_role_menu` VALUES (100, 2164);
INSERT INTO `sys_role_menu` VALUES (100, 2165);
INSERT INTO `sys_role_menu` VALUES (100, 2166);
INSERT INTO `sys_role_menu` VALUES (100, 2167);
INSERT INTO `sys_role_menu` VALUES (100, 2168);
INSERT INTO `sys_role_menu` VALUES (100, 2169);
INSERT INTO `sys_role_menu` VALUES (2169, 2170);
INSERT INTO `sys_role_menu` VALUES (2169, 2171);
INSERT INTO `sys_role_menu` VALUES (2169, 2172);
INSERT INTO `sys_role_menu` VALUES (2169, 2173);
INSERT INTO `sys_role_menu` VALUES (2169, 2174);
INSERT INTO `sys_role_menu` VALUES (2169, 2175);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'admin', '00', 'admin@qq.com', '18566666666', '1', '', '9b166eefb0905b168275e3ebcb9e4f23', '8b96be', '0', '0', '127.0.0.1', '2019-10-13 18:02:53', 'admin', '2018-03-16 11:33:00', '17722630080', '2019-10-13 18:02:53', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '测试', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');
INSERT INTO `sys_user` VALUES (103, 107, '17722630080', '17722630080', '00', '1@email.com', '17722630080', '0', '', '3904b8f95364742d8408017bb8bdc58f', 'ec79ba', '0', '0', '127.0.0.1', '2019-10-07 01:39:35', 'admin', '2019-10-06 19:39:22', 'admin', '2019-10-13 18:04:04', '');
INSERT INTO `sys_user` VALUES (104, 107, '13017751223', '13017751223', '00', '2@email.com', '13017751223', '0', '', '16c92f8fb8bc39b412d5fe4f84aa0579', 'ac49a7', '0', '0', '127.0.0.1', '2019-10-24 14:36:26', 'admin', '2019-10-06 19:39:55', '13017751223', '2019-10-24 14:36:27', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('24822b95-3a69-4e63-83ef-fe91869f9b5c', '13017751223', '运维部门', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2019-10-26 15:45:41', '2019-10-26 16:51:29', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (1, 2);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 1);
INSERT INTO `sys_user_post` VALUES (101, 1);
INSERT INTO `sys_user_post` VALUES (103, 1);
INSERT INTO `sys_user_post` VALUES (104, 1);
INSERT INTO `sys_user_post` VALUES (105, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (1, 2);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);
INSERT INTO `sys_user_role` VALUES (101, 100);
INSERT INTO `sys_user_role` VALUES (102, 100);
INSERT INTO `sys_user_role` VALUES (103, 100);
INSERT INTO `sys_user_role` VALUES (104, 1);
INSERT INTO `sys_user_role` VALUES (104, 100);
INSERT INTO `sys_user_role` VALUES (105, 2);

-- ----------------------------
-- Table structure for tj_bill_report
-- ----------------------------
DROP TABLE IF EXISTS `tj_bill_report`;
CREATE TABLE `tj_bill_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wechat_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '微信成功交易金额',
  `alipay_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付宝成功交易金额',
  `total_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '总交易成功金额',
  `ms_commission` decimal(10, 2) NULL DEFAULT NULL COMMENT '码商佣金',
  `sh_service_charge` decimal(10, 2) NULL DEFAULT NULL COMMENT '商户会员付款手续费',
  `ms_adjust_upamount` decimal(10, 2) NULL DEFAULT NULL COMMENT '码商账户微调上款',
  `ms_adjust_downamount` decimal(10, 2) NULL DEFAULT NULL COMMENT '码商账户微调下款',
  `sh_adjust_upamount` decimal(10, 2) NULL DEFAULT NULL COMMENT '商户账户微调上款',
  `sh_adjust_downamount` decimal(10, 2) NULL DEFAULT NULL COMMENT '商户账户微调下款',
  `service_pay_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '服务码商充值金额',
  `sh_fetch_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商户提现金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = ' 对账统计报表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tj_hsorder_status
-- ----------------------------
DROP TABLE IF EXISTS `tj_hsorder_status`;
CREATE TABLE `tj_hsorder_status`  (
  `server_id` int(11) NOT NULL COMMENT '商户编号',
  `trade_type` tinyint(1) NOT NULL COMMENT '交易类型',
  `trade_count` int(11) NULL DEFAULT NULL COMMENT '总订单数',
  `null_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT '空单率',
  `ms_finish_order` int(11) NULL DEFAULT NULL COMMENT '码商已完成',
  `system_finish_order` int(11) NULL DEFAULT NULL COMMENT '系统完成',
  `timeout_order_` int(11) NULL DEFAULT NULL COMMENT '超时未到账',
  `timeout_order_nopay` int(11) NULL DEFAULT NULL COMMENT '超时未付款',
  `order_comfirm` int(11) NULL DEFAULT NULL COMMENT '会员已确认付款',
  `order_waiting` int(11) NULL DEFAULT NULL COMMENT '等待接单',
  `order_receive` int(11) NULL DEFAULT NULL COMMENT '已接单',
  `order_waiting_timeout` int(11) NULL DEFAULT NULL COMMENT '接单超时',
  `order_close` int(11) NULL DEFAULT NULL COMMENT '失败已关闭',
  PRIMARY KEY (`server_id`, `trade_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户订单状态统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tj_msorder_status
-- ----------------------------
DROP TABLE IF EXISTS `tj_msorder_status`;
CREATE TABLE `tj_msorder_status`  (
  `ms_merchant` int(11) NOT NULL COMMENT '码商编号',
  `time_length` int(11) NOT NULL COMMENT '类型',
  `trade_type` tinyint(1) NOT NULL COMMENT '时间长度(分钟)',
  `total_order_count` int(11) NULL DEFAULT NULL COMMENT '总订单数',
  `order_timeout` int(11) NULL DEFAULT NULL COMMENT '超时订单数',
  `order_amount` decimal(10, 2) UNSIGNED NULL DEFAULT NULL COMMENT '订单总金额',
  `order_timeout_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '超时订单总金额',
  PRIMARY KEY (`ms_merchant`, `time_length`, `trade_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户订单状态统计' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
