/*
 Navicat Premium Data Transfer

 Source Server         : 10.42.11.176
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : 10.42.11.176:3306
 Source Schema         : zzydb

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : 65001

 Date: 03/04/2019 18:12:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_invest
-- ----------------------------
DROP TABLE IF EXISTS `t_invest`;
CREATE TABLE `t_invest`  (
  `invest_id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '投资id',
  `user_id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `item_id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目id',
  `invest_total_money` decimal(20, 8) NULL DEFAULT NULL,
  `item_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_rate` decimal(20, 8) NULL DEFAULT NULL,
  `invest_date` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`invest_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_item
-- ----------------------------
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item`  (
  `item_id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_time` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目时间',
  `item_rate` decimal(20, 8) NULL DEFAULT NULL,
  `item_total` decimal(20, 8) NULL DEFAULT NULL,
  `item_current` decimal(20, 8) NULL DEFAULT NULL,
  `item_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `item_company` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_location` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_start_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发售时间',
  `item_seckill_start` timestamp(0) NULL DEFAULT '0000-00-00 00:00:00',
  `item_seckill_stop` timestamp(0) NULL DEFAULT '0000-00-00 00:00:00',
  `item_quota` decimal(20, 8) NULL DEFAULT NULL COMMENT '秒杀配额',
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_loans
-- ----------------------------
DROP TABLE IF EXISTS `t_loans`;
CREATE TABLE `t_loans`  (
  `loans_id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loans_money` decimal(20, 8) NULL DEFAULT NULL COMMENT '借款总金额',
  `loans_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '借款日期',
  `loans_rate` decimal(20, 8) NULL DEFAULT NULL COMMENT '利率',
  `loans_periods` int(20) NULL DEFAULT NULL COMMENT '还款期数',
  `loans_return_money` decimal(20, 8) NULL DEFAULT NULL COMMENT '每期还款金额',
  `user_id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借款人',
  `loans_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '0未还完，1已还清',
  PRIMARY KEY (`loans_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_nickname` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_cash` decimal(20, 8) NULL DEFAULT 0.00000000 COMMENT '当前现金余额',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
