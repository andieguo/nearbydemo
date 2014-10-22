/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : nearby

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2013-06-24 09:12:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gps`
-- ----------------------------
DROP TABLE IF EXISTS `gps`;
CREATE TABLE `gps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `gps_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gps
-- ----------------------------
INSERT INTO `gps` VALUES ('19', '351565053248644', '115.42', '31.81', '2013-06-17 14:27:56');
INSERT INTO `gps` VALUES ('20', '351565053248644', '113.65', '34.76', '2013-06-17 14:30:08');
INSERT INTO `gps` VALUES ('21', '351565053248644', '113.6598733', '34.80033', '2013-06-17 14:30:41');
INSERT INTO `gps` VALUES ('22', '351565053248644', '113.6597704', '34.8003389', '2013-06-17 15:39:59');
INSERT INTO `gps` VALUES ('23', '351565053248644', '113.6597282', '34.8002608', '2013-06-17 16:03:14');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pic_url` varchar(100) NOT NULL DEFAULT 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg',
  `sex` int(1) NOT NULL DEFAULT '0' COMMENT '0 女 1男',
  `personal_note` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('351565053248644', 'feicien', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', '你好');
