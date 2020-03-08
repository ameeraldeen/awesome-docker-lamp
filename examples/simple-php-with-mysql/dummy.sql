/*
 @Author Khaled Alam <khaledalam.net@gmail.com> (https://khaledalam.net)

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Host           : localhost:3306
 Source Schema         : dummy
 Target Server Type    : MySQL

 Date: 08/03/2020
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `userid` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(65) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  INDEX `userid`(`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('123', 'Khaled Alam', 'khaledalam.net@gmail.com');

SET FOREIGN_KEY_CHECKS = 1;