/*
Navicat MySQL Data Transfer

Source Server         : asdf
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : message

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-30 16:22:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(10) NOT NULL,
  `u_pwd` varchar(10) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '谢大脚', '123');
INSERT INTO `user` VALUES ('2', '亚索', '123');
INSERT INTO `user` VALUES ('3', '贾克斯', '123');
INSERT INTO `user` VALUES ('4', '盲僧', '123');
INSERT INTO `user` VALUES ('5', '啊木木', '456');
