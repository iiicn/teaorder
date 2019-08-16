/*
 Navicat Premium Data Transfer

 Source Server         : mysql1
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : test0605

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 16/08/2019 11:26:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tea
-- ----------------------------
DROP TABLE IF EXISTS `tea`;
CREATE TABLE `tea`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `ordertime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
