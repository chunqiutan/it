/*
Navicat MySQL Data Transfer

Source Server         : 192.168.2.119
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : ie

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2019-05-31 11:03:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_user
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user` (
  `id` int(10) NOT NULL auto_increment,
  `user_name` varchar(10) NOT NULL,
  `user_count` char(10) NOT NULL,
  `user_password` char(20) NOT NULL,
  `is_delete` int(11) NOT NULL default '0',
  `is_cancellation` int(11) NOT NULL default '0' COMMENT '是否注销',
  `is_prohibit` int(11) NOT NULL default '0' COMMENT '是否被禁用',
  `user_role` int(11) NOT NULL default '0' COMMENT '用户角色（用户0、系统管理员1，资源管理员2）',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_user
-- ----------------------------
INSERT INTO `base_user` VALUES ('1', '小亮', '165852', '123', '0', '0', '1', '0');
INSERT INTO `base_user` VALUES ('2', '张三', '12346', '12345', '1', '0', '0', '1');
INSERT INTO `base_user` VALUES ('3', '心水', '12348', '123', '1', '0', '1', '1');
INSERT INTO `base_user` VALUES ('4', '王五', '12456', '123', '1', '0', '0', '0');
INSERT INTO `base_user` VALUES ('5', '李四', '14591', '1', '0', '0', '1', '1');
INSERT INTO `base_user` VALUES ('6', '坛子', '123457', '123456', '0', '0', '0', '1');
INSERT INTO `base_user` VALUES ('7', '好好学习天天向上', '123456', '123456', '0', '0', '0', '0');
INSERT INTO `base_user` VALUES ('8', '春秋', '154596', '123456', '0', '0', '0', '0');
INSERT INTO `base_user` VALUES ('9', '春', '14658', '123456', '0', '0', '0', '0');
INSERT INTO `base_user` VALUES ('10', '毯子', '2355455', '123456', '0', '0', '0', '0');
INSERT INTO `base_user` VALUES ('11', '好好学习天天向上', '199802', '123456', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for source
-- ----------------------------
DROP TABLE IF EXISTS `source`;
CREATE TABLE `source` (
  `source_id` int(11) NOT NULL,
  `source_name` varchar(50) default NULL,
  `source_subordinate` int(11) NOT NULL COMMENT '资源所属',
  `source_version` char(50) default '1.0.0',
  `source_type` varchar(50) NOT NULL,
  `source_size` int(11) NOT NULL default '0',
  `is_delete` int(11) NOT NULL default '0',
  PRIMARY KEY  (`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of source
-- ----------------------------
INSERT INTO `source` VALUES ('1', 'php从入门到放弃', '1', '1.2', '高级程序语言', '15', '0');
INSERT INTO `source` VALUES ('2', 'think of java', '1', '1.1', '高级程序语言', '12', '0');
INSERT INTO `source` VALUES ('3', 'c语言', '1', '1.0', '高级程序语言', '10', '0');
INSERT INTO `source` VALUES ('4', 'javascript', '1', '1.1', '算法类', '1024', '0');
INSERT INTO `source` VALUES ('5', '算法程序竞赛', '3', '1522', '竞赛类', '4633', '0');
INSERT INTO `source` VALUES ('6', 'js实战', '3', '1.0.0', '实践类', '10', '0');
INSERT INTO `source` VALUES ('7', '趣味算法', '2', '1.0', '算法类', '100', '0');
INSERT INTO `source` VALUES ('11', '真', '0', '1.0.0', '实践类', '1222', '0');

-- ----------------------------
-- Table structure for source_type
-- ----------------------------
DROP TABLE IF EXISTS `source_type`;
CREATE TABLE `source_type` (
  `usercount` char(10) NOT NULL,
  `program_language` int(11) NOT NULL default '0' COMMENT '高级程序语言',
  `competition` int(11) NOT NULL default '0' COMMENT '竞赛类',
  `algorithm` int(11) NOT NULL default '0' COMMENT '算法类',
  `hardware` int(11) NOT NULL default '0' COMMENT '硬件类',
  `practice` int(11) NOT NULL default '0' COMMENT '实践类',
  `news` int(11) NOT NULL default '0' COMMENT '最新动态类',
  `other` int(11) NOT NULL default '0' COMMENT '其他类'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of source_type
-- ----------------------------
INSERT INTO `source_type` VALUES ('123456', '2', '1', '2', '3', '1', '4', '5');
INSERT INTO `source_type` VALUES ('123', '2', '1', '2', '3', '4', '5', '5');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` char(10) NOT NULL,
  `user_school` varchar(255) default NULL,
  `user_grade` varchar(255) default NULL,
  `user_major` varchar(255) default NULL COMMENT '专业',
  `user_age` int(11) default NULL COMMENT '用户年龄',
  `user_sex` varchar(1) default NULL,
  `user_preference` int(11) NOT NULL COMMENT '用户偏好',
  `user_level` int(11) default '0' COMMENT '用户知识等级',
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('123', null, null, null, null, null, '0', '0');
INSERT INTO `user_info` VALUES ('123456', 'string', 'string', 'string', '15', '女', '1', '1');
INSERT INTO `user_info` VALUES ('124', '湖南商学院', '大四', '信管', null, null, '1', '4');
