/*
Navicat MySQL Data Transfer

Source Server         : asdf
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : message

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-30 09:21:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg` (
  `m_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_name` varchar(10) NOT NULL,
  `m_content` varchar(255) NOT NULL,
  `m_time` datetime NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES ('1', '谢大脚', '来了老弟', '2019-03-12 09:18:44');
INSERT INTO `msg` VALUES ('2', '亚索', '面对疾风吧', '2019-03-12 09:19:03');
INSERT INTO `msg` VALUES ('3', '贾克斯', '一个能打的都没有', '2019-02-27 09:19:19');
INSERT INTO `msg` VALUES ('4', '盲僧', '一库', '2019-03-28 09:19:43');
INSERT INTO `msg` VALUES ('5', '啊木木', '还记得我吗？能和我做朋友吗？', '2019-03-27 09:20:32');
