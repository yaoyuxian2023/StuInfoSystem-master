/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : stuinfosystem

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2021-04-11 19:13:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` varchar(50) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', '管理员1', '123');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `class_id` varchar(50) NOT NULL,
  `class_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('100012', '计算机科学与技术3班');
INSERT INTO `class` VALUES ('100013', '计算机科学与技术1班');
INSERT INTO `class` VALUES ('100014', '计算机科学与技术2班');
INSERT INTO `class` VALUES ('100015', '计算机科学与技术4班');
INSERT INTO `class` VALUES ('100016', '软件工程1班');
INSERT INTO `class` VALUES ('100017', '软件工程2班');
INSERT INTO `class` VALUES ('112323', '网络工程1班');
INSERT INTO `class` VALUES ('112325', '网络工程3班');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `res_id` int(50) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sub_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `res_num` int(11) NOT NULL,
  `res_term` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('27', '20181685310372', '数据结构', '90', '18-2020-1');
INSERT INTO `result` VALUES ('28', '20181685310372', '计算机操作系统', '88', '18-2020-1');
INSERT INTO `result` VALUES ('30', '20181685310372', '数据库概论', '78', '18-2020-1');
INSERT INTO `result` VALUES ('32', '20181685310271', '高等数学上', '78', '18-2020-1');
INSERT INTO `result` VALUES ('33', '20181685310271', '计算机网络', '97', '18-2020-1');
INSERT INTO `result` VALUES ('34', '20181685310271', '数据结构', '87', '18-2020-1');
INSERT INTO `result` VALUES ('35', '20181685310271', '计算机操作系统', '60', '18-2020-1');
INSERT INTO `result` VALUES ('36', '20181685310271', '大学英语1', '64', '18-2020-1');
INSERT INTO `result` VALUES ('37', '20181685310271', '数据库概论', '77', '18-2020-1');
INSERT INTO `result` VALUES ('38', '20181685310271', 'Java', '96', '18-2020-1');
INSERT INTO `result` VALUES ('39', '20181685310270', '高等数学上', '50', '18-2020-1');
INSERT INTO `result` VALUES ('40', '20181685310270', '计算机网络', '60', '18-2020-1');
INSERT INTO `result` VALUES ('41', '20181685310270', '数据结构', '88', '18-2020-1');
INSERT INTO `result` VALUES ('42', '20181685310270', '计算机操作系统', '60', '18-2020-1');
INSERT INTO `result` VALUES ('43', '20181685310270', '大学英语1', '64', '18-2020-1');
INSERT INTO `result` VALUES ('44', '20181685310270', '数据库概论', '78', '18-2020-1');
INSERT INTO `result` VALUES ('45', '20181685310270', 'Java', '78', '18-2020-1');
INSERT INTO `result` VALUES ('46', '20181685310269', '高等数学上', '88', '18-2020-1');
INSERT INTO `result` VALUES ('47', '20181685310269', '计算机网络', '87', '18-2020-1');
INSERT INTO `result` VALUES ('48', '20181685310269', '数据结构', '58', '18-2020-1');
INSERT INTO `result` VALUES ('49', '20181685310269', '计算机操作系统', '99', '18-2020-1');
INSERT INTO `result` VALUES ('50', '20181685310269', '大学英语1', '88', '18-2020-1');
INSERT INTO `result` VALUES ('51', '20181685310269', '数据库概论', '99', '18-2020-1');
INSERT INTO `result` VALUES ('52', '20181685310269', 'Java', '78', '18-2020-1');
INSERT INTO `result` VALUES ('53', '20181685310268', '高等数学上', '77', '18-2020-1');
INSERT INTO `result` VALUES ('54', '20181685310268', '计算机网络', '88', '18-2020-1');
INSERT INTO `result` VALUES ('55', '20181685310268', '数据结构', '99', '18-2020-1');
INSERT INTO `result` VALUES ('56', '20181685310268', '计算机操作系统', '88', '18-2020-1');
INSERT INTO `result` VALUES ('57', '20181685310268', '大学英语1', '75', '18-2020-1');
INSERT INTO `result` VALUES ('58', '20181685310268', '数据库概论', '68', '18-2020-1');
INSERT INTO `result` VALUES ('59', '20181685310268', 'Java', '78', '18-2020-1');
INSERT INTO `result` VALUES ('60', '20181685310267', '高等数学上', '74', '18-2020-1');
INSERT INTO `result` VALUES ('61', '20181685310267', '计算机网络', '75', '18-2020-1');
INSERT INTO `result` VALUES ('62', '20181685310267', '数据结构', '78', '18-2020-1');
INSERT INTO `result` VALUES ('63', '20181685310267', '计算机操作系统', '87', '18-2020-1');
INSERT INTO `result` VALUES ('64', '20181685310267', '大学英语1', '88', '18-2020-1');
INSERT INTO `result` VALUES ('65', '20181685310267', '数据库概论', '68', '18-2020-1');
INSERT INTO `result` VALUES ('66', '20181685310267', 'Java', '98', '18-2020-1');
INSERT INTO `result` VALUES ('67', '20181685310266', '高等数学上', '85', '18-2020-1');
INSERT INTO `result` VALUES ('68', '20181685310266', '计算机网络', '75', '18-2020-1');
INSERT INTO `result` VALUES ('69', '20181685310266', '数据结构', '98', '18-2020-1');
INSERT INTO `result` VALUES ('70', '20181685310266', '计算机操作系统', '87', '18-2020-1');
INSERT INTO `result` VALUES ('71', '20181685310266', '大学英语1', '44', '18-2020-1');
INSERT INTO `result` VALUES ('72', '20181685310266', '数据库概论', '68', '18-2020-1');
INSERT INTO `result` VALUES ('73', '20181685310266', 'Java', '93', '18-2020-1');
INSERT INTO `result` VALUES ('74', '20181685310265', '高等数学上', '75', '18-2020-1');
INSERT INTO `result` VALUES ('75', '20181685310265', '计算机网络', '77', '18-2020-1');
INSERT INTO `result` VALUES ('76', '20181685310265', '数据结构', '89', '18-2020-1');
INSERT INTO `result` VALUES ('77', '20181685310265', '计算机操作系统', '88', '18-2020-1');
INSERT INTO `result` VALUES ('78', '20181685310265', '大学英语1', '99', '18-2020-1');
INSERT INTO `result` VALUES ('79', '20181685310265', '数据库概论', '61', '18-2020-1');
INSERT INTO `result` VALUES ('80', '20181685310265', 'Java', '100', '18-2020-1');
INSERT INTO `result` VALUES ('81', '20181685310264', '高等数学上', '45', '18-2020-1');
INSERT INTO `result` VALUES ('82', '20181685310264', '计算机网络', '66', '18-2020-1');
INSERT INTO `result` VALUES ('83', '20181685310264', '数据结构', '87', '18-2020-1');
INSERT INTO `result` VALUES ('84', '20181685310264', '计算机操作系统', '96', '18-2020-1');
INSERT INTO `result` VALUES ('85', '20181685310264', '大学英语1', '92', '18-2020-1');
INSERT INTO `result` VALUES ('86', '20181685310264', '数据库概论', '87', '18-2020-1');
INSERT INTO `result` VALUES ('87', '20181685310264', 'Java', '93', '18-2020-1');
INSERT INTO `result` VALUES ('88', '20181685310263', '高等数学上', '80', '18-2020-1');
INSERT INTO `result` VALUES ('89', '20181685310263', '计算机网络', '80', '18-2020-1');
INSERT INTO `result` VALUES ('90', '20181685310263', '数据结构', '87', '18-2020-1');
INSERT INTO `result` VALUES ('91', '20181685310263', '计算机操作系统', '98', '18-2020-1');
INSERT INTO `result` VALUES ('92', '20181685310263', '大学英语1', '83', '18-2020-1');
INSERT INTO `result` VALUES ('93', '20181685310263', '数据库概论', '100', '18-2020-1');
INSERT INTO `result` VALUES ('94', '20181685310263', 'Java', '100', '18-2020-1');
INSERT INTO `result` VALUES ('95', '20181685310262', '高等数学上', '75', '18-2020-1');
INSERT INTO `result` VALUES ('96', '20181685310262', '计算机网络', '75', '18-2020-1');
INSERT INTO `result` VALUES ('97', '20181685310262', '数据结构', '76', '18-2020-1');
INSERT INTO `result` VALUES ('98', '20181685310262', '计算机操作系统', '87', '18-2020-1');
INSERT INTO `result` VALUES ('99', '20181685310262', '大学英语1', '77', '18-2020-1');
INSERT INTO `result` VALUES ('100', '20181685310262', '数据库概论', '80', '18-2020-1');
INSERT INTO `result` VALUES ('101', '20181685310262', 'Java', '80', '18-2020-1');
INSERT INTO `result` VALUES ('102', '20181685310261', '高等数学上', '71', '18-2020-1');
INSERT INTO `result` VALUES ('103', '20181685310261', '计算机网络', '72', '18-2020-1');
INSERT INTO `result` VALUES ('104', '20181685310261', '数据结构', '73', '18-2020-1');
INSERT INTO `result` VALUES ('105', '20181685310261', '计算机操作系统', '87', '18-2020-1');
INSERT INTO `result` VALUES ('106', '20181685310261', '大学英语1', '77', '18-2020-1');
INSERT INTO `result` VALUES ('107', '20181685310261', '数据库概论', '88', '18-2020-1');
INSERT INTO `result` VALUES ('108', '20181685310261', 'Java', '80', '18-2020-1');
INSERT INTO `result` VALUES ('109', '20181775311122', '高等数学上', '77', '18-2020-1');
INSERT INTO `result` VALUES ('110', '20181775311122', '计算机网络', '79', '18-2020-1');
INSERT INTO `result` VALUES ('111', '20181775311122', '数据结构', '85', '18-2020-1');
INSERT INTO `result` VALUES ('112', '20181775311122', '计算机操作系统', '87', '18-2020-1');
INSERT INTO `result` VALUES ('113', '20181775311122', '大学英语1', '73', '18-2020-1');
INSERT INTO `result` VALUES ('114', '20181775311122', '数据库概论', '88', '18-2020-1');
INSERT INTO `result` VALUES ('116', '20181775311123', '高等数学上', '99', '18-2020-1');
INSERT INTO `result` VALUES ('117', '20181775311123', '计算机网络', '98', '18-2020-1');
INSERT INTO `result` VALUES ('118', '20181775311123', '数据结构', '89', '18-2020-1');
INSERT INTO `result` VALUES ('119', '20181775311123', '计算机操作系统', '87', '18-2020-1');
INSERT INTO `result` VALUES ('120', '20181775311123', '大学英语1', '100', '18-2020-1');
INSERT INTO `result` VALUES ('121', '20181775311123', '数据库概论', '88', '18-2020-1');
INSERT INTO `result` VALUES ('123', '20181775311124', '高等数学上', '75', '18-2020-1');
INSERT INTO `result` VALUES ('124', '20181775311124', '计算机网络', '76', '18-2020-1');
INSERT INTO `result` VALUES ('125', '20181775311124', '数据结构', '78', '18-2020-1');
INSERT INTO `result` VALUES ('126', '20181775311124', '计算机操作系统', '87', '18-2020-1');
INSERT INTO `result` VALUES ('127', '20181775311124', '大学英语1', '86', '18-2020-1');
INSERT INTO `result` VALUES ('128', '20181775311124', '数据库概论', '88', '18-2020-1');
INSERT INTO `result` VALUES ('129', '20181775311124', 'Java', '87', '18-2020-1');
INSERT INTO `result` VALUES ('130', '20181775311125', '高等数学上', '85', '18-2020-1');
INSERT INTO `result` VALUES ('131', '20181775311125', '计算机网络', '76', '18-2020-1');
INSERT INTO `result` VALUES ('132', '20181775311125', '数据结构', '86', '18-2020-1');
INSERT INTO `result` VALUES ('133', '20181775311125', '计算机操作系统', '87', '18-2020-1');
INSERT INTO `result` VALUES ('134', '20181775311125', '大学英语1', '76', '18-2020-1');
INSERT INTO `result` VALUES ('135', '20181775311125', '数据库概论', '88', '18-2020-1');
INSERT INTO `result` VALUES ('136', '20181775311125', 'Java', '68', '18-2020-1');
INSERT INTO `result` VALUES ('137', '20181775311126', '高等数学上', '75', '18-2020-1');
INSERT INTO `result` VALUES ('138', '20181775311126', '计算机网络', '86', '18-2020-1');
INSERT INTO `result` VALUES ('139', '20181775311126', '数据结构', '76', '18-2020-1');
INSERT INTO `result` VALUES ('140', '20181775311126', '计算机操作系统', '87', '18-2020-1');
INSERT INTO `result` VALUES ('141', '20181775311126', '大学英语1', '96', '18-2020-1');
INSERT INTO `result` VALUES ('142', '20181775311126', '数据库概论', '78', '18-2020-1');
INSERT INTO `result` VALUES ('143', '20181775311126', 'Java', '98', '18-2020-1');
INSERT INTO `result` VALUES ('144', '20181775311127', '高等数学上', '60', '18-2020-1');
INSERT INTO `result` VALUES ('145', '20181775311127', '计算机网络', '66', '18-2020-1');
INSERT INTO `result` VALUES ('146', '20181775311127', '数据结构', '78', '18-2020-1');
INSERT INTO `result` VALUES ('147', '20181775311127', '计算机操作系统', '87', '18-2020-1');
INSERT INTO `result` VALUES ('148', '20181775311127', '大学英语1', '56', '18-2020-1');
INSERT INTO `result` VALUES ('149', '20181775311127', '数据库概论', '78', '18-2020-1');
INSERT INTO `result` VALUES ('150', '20181775311127', 'Java', '78', '18-2020-1');
INSERT INTO `result` VALUES ('151', '20181775311128', '高等数学上', '80', '18-2020-1');
INSERT INTO `result` VALUES ('152', '20181775311128', '计算机网络', '76', '18-2020-1');
INSERT INTO `result` VALUES ('153', '20181775311128', '数据结构', '78', '18-2020-1');
INSERT INTO `result` VALUES ('154', '20181775311128', '计算机操作系统', '86', '18-2020-1');
INSERT INTO `result` VALUES ('155', '20181775311128', '大学英语1', '66', '18-2020-1');
INSERT INTO `result` VALUES ('156', '20181775311128', '数据库概论', '76', '18-2020-1');
INSERT INTO `result` VALUES ('157', '20181775311128', 'Java', '98', '18-2020-1');
INSERT INTO `result` VALUES ('158', '20181775311129', '高等数学上', '90', '18-2020-1');
INSERT INTO `result` VALUES ('159', '20181775311129', '计算机网络', '86', '18-2020-1');
INSERT INTO `result` VALUES ('160', '20181775311129', '数据结构', '78', '18-2020-1');
INSERT INTO `result` VALUES ('161', '20181775311129', '计算机操作系统', '86', '18-2020-1');
INSERT INTO `result` VALUES ('162', '20181775311129', '大学英语1', '96', '18-2020-1');
INSERT INTO `result` VALUES ('163', '20181775311129', '数据库概论', '86', '18-2020-1');
INSERT INTO `result` VALUES ('164', '20181775311129', 'Java', '78', '18-2020-1');
INSERT INTO `result` VALUES ('165', '20181775311130', '高等数学上', '80', '18-2020-1');
INSERT INTO `result` VALUES ('166', '20181775311130', '计算机网络', '76', '18-2020-1');
INSERT INTO `result` VALUES ('167', '20181775311130', '数据结构', '78', '18-2020-1');
INSERT INTO `result` VALUES ('168', '20181775311130', '计算机操作系统', '76', '18-2020-1');
INSERT INTO `result` VALUES ('169', '20181775311130', '大学英语1', '66', '18-2020-1');
INSERT INTO `result` VALUES ('170', '20181775311130', '数据库概论', '76', '18-2020-1');
INSERT INTO `result` VALUES ('171', '20181775311130', 'Java', '78', '18-2020-1');
INSERT INTO `result` VALUES ('172', '20181775311131', '高等数学上', '80', '18-2020-1');
INSERT INTO `result` VALUES ('173', '20181775311131', '计算机网络', '55', '18-2020-1');
INSERT INTO `result` VALUES ('174', '20181775311131', '数据结构', '69', '18-2020-1');
INSERT INTO `result` VALUES ('175', '20181775311131', '计算机操作系统', '89', '18-2020-1');
INSERT INTO `result` VALUES ('176', '20181775311131', '大学英语1', '66', '18-2020-1');
INSERT INTO `result` VALUES ('177', '20181775311131', '数据库概论', '76', '18-2020-1');
INSERT INTO `result` VALUES ('178', '20181775311131', 'Java', '78', '18-2020-1');
INSERT INTO `result` VALUES ('179', '20181775311132', '高等数学上', '82', '18-2020-1');
INSERT INTO `result` VALUES ('180', '20181775311132', '计算机网络', '53', '18-2020-1');
INSERT INTO `result` VALUES ('181', '20181775311132', '数据结构', '68', '18-2020-1');
INSERT INTO `result` VALUES ('182', '20181775311132', '计算机操作系统', '89', '18-2020-1');
INSERT INTO `result` VALUES ('183', '20181775311132', '大学英语1', '66', '18-2020-1');
INSERT INTO `result` VALUES ('184', '20181775311132', '数据库概论', '88', '18-2020-1');
INSERT INTO `result` VALUES ('186', '20181775311132', '软件工程', '82', '18-2020-2');
INSERT INTO `result` VALUES ('187', '20181775311132', 'Java实验', '53', '18-2020-2');
INSERT INTO `result` VALUES ('188', '20181775311132', '数据机构实验', '68', '18-2020-2');
INSERT INTO `result` VALUES ('189', '20181775311132', '操作系统实验', '89', '18-2020-2');
INSERT INTO `result` VALUES ('190', '20181775311132', '计算机网络实验', '66', '18-2020-2');
INSERT INTO `result` VALUES ('191', '20181775311132', '线性代数', '88', '18-2020-2');
INSERT INTO `result` VALUES ('192', '20181775311132', '大学英语2', '78', '18-2020-2');
INSERT INTO `result` VALUES ('193', '20181775311131', '软件工程', '100', '18-2020-2');
INSERT INTO `result` VALUES ('194', '20181775311131', 'Java实验', '95', '18-2020-2');
INSERT INTO `result` VALUES ('195', '20181775311131', '数据机构实验', '88', '18-2020-2');
INSERT INTO `result` VALUES ('196', '20181775311131', '操作系统实验', '89', '18-2020-2');
INSERT INTO `result` VALUES ('197', '20181775311131', '计算机网络实验', '86', '18-2020-2');
INSERT INTO `result` VALUES ('198', '20181775311131', '线性代数', '88', '18-2020-2');
INSERT INTO `result` VALUES ('199', '20181775311131', '大学英语2', '98', '18-2020-2');
INSERT INTO `result` VALUES ('200', '20181775311130', '软件工程', '90', '18-2020-2');
INSERT INTO `result` VALUES ('201', '20181775311130', 'Java实验', '95', '18-2020-2');
INSERT INTO `result` VALUES ('202', '20181775311130', '数据机构实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('203', '20181775311130', '操作系统实验', '75', '18-2020-2');
INSERT INTO `result` VALUES ('204', '20181775311130', '计算机网络实验', '86', '18-2020-2');
INSERT INTO `result` VALUES ('205', '20181775311130', '线性代数', '98', '18-2020-2');
INSERT INTO `result` VALUES ('206', '20181775311130', '大学英语2', '58', '18-2020-2');
INSERT INTO `result` VALUES ('207', '20181775311129', '软件工程', '80', '18-2020-2');
INSERT INTO `result` VALUES ('208', '20181775311129', 'Java实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('209', '20181775311129', '数据机构实验', '75', '18-2020-2');
INSERT INTO `result` VALUES ('210', '20181775311129', '操作系统实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('211', '20181775311129', '计算机网络实验', '86', '18-2020-2');
INSERT INTO `result` VALUES ('212', '20181775311129', '线性代数', '88', '18-2020-2');
INSERT INTO `result` VALUES ('213', '20181775311129', '大学英语2', '88', '18-2020-2');
INSERT INTO `result` VALUES ('214', '20181775311128', '软件工程', '70', '18-2020-2');
INSERT INTO `result` VALUES ('215', '20181775311128', 'Java实验', '75', '18-2020-2');
INSERT INTO `result` VALUES ('216', '20181775311128', '数据机构实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('217', '20181775311128', '操作系统实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('218', '20181775311128', '计算机网络实验', '96', '18-2020-2');
INSERT INTO `result` VALUES ('219', '20181775311128', '线性代数', '98', '18-2020-2');
INSERT INTO `result` VALUES ('220', '20181775311128', '大学英语2', '88', '18-2020-2');
INSERT INTO `result` VALUES ('221', '20181775311127', '软件工程', '80', '18-2020-2');
INSERT INTO `result` VALUES ('222', '20181775311127', 'Java实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('223', '20181775311127', '数据机构实验', '75', '18-2020-2');
INSERT INTO `result` VALUES ('224', '20181775311127', '操作系统实验', '88', '18-2020-2');
INSERT INTO `result` VALUES ('225', '20181775311127', '计算机网络实验', '96', '18-2020-2');
INSERT INTO `result` VALUES ('226', '20181775311127', '线性代数', '88', '18-2020-2');
INSERT INTO `result` VALUES ('227', '20181775311127', '大学英语2', '88', '18-2020-2');
INSERT INTO `result` VALUES ('228', '20181775311126', '软件工程', '70', '18-2020-2');
INSERT INTO `result` VALUES ('229', '20181775311126', 'Java实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('230', '20181775311126', '数据机构实验', '95', '18-2020-2');
INSERT INTO `result` VALUES ('231', '20181775311126', '操作系统实验', '88', '18-2020-2');
INSERT INTO `result` VALUES ('232', '20181775311126', '计算机网络实验', '86', '18-2020-2');
INSERT INTO `result` VALUES ('233', '20181775311126', '线性代数', '88', '18-2020-2');
INSERT INTO `result` VALUES ('234', '20181775311126', '大学英语2', '78', '18-2020-2');
INSERT INTO `result` VALUES ('235', '20181775311125', '软件工程', '90', '18-2020-2');
INSERT INTO `result` VALUES ('236', '20181775311125', 'Java实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('237', '20181775311125', '数据机构实验', '95', '18-2020-2');
INSERT INTO `result` VALUES ('238', '20181775311125', '操作系统实验', '78', '18-2020-2');
INSERT INTO `result` VALUES ('239', '20181775311125', '计算机网络实验', '86', '18-2020-2');
INSERT INTO `result` VALUES ('240', '20181775311125', '线性代数', '78', '18-2020-2');
INSERT INTO `result` VALUES ('241', '20181775311125', '大学英语2', '78', '18-2020-2');
INSERT INTO `result` VALUES ('242', '20181775311124', '软件工程', '80', '18-2020-2');
INSERT INTO `result` VALUES ('243', '20181775311124', 'Java实验', '75', '18-2020-2');
INSERT INTO `result` VALUES ('244', '20181775311124', '数据机构实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('245', '20181775311124', '操作系统实验', '88', '18-2020-2');
INSERT INTO `result` VALUES ('246', '20181775311124', '计算机网络实验', '76', '18-2020-2');
INSERT INTO `result` VALUES ('247', '20181775311124', '线性代数', '88', '18-2020-2');
INSERT INTO `result` VALUES ('248', '20181775311124', '大学英语2', '78', '18-2020-2');
INSERT INTO `result` VALUES ('249', '20181775311123', '软件工程', '90', '18-2020-2');
INSERT INTO `result` VALUES ('250', '20181775311123', 'Java实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('251', '20181775311123', '数据机构实验', '75', '18-2020-2');
INSERT INTO `result` VALUES ('252', '20181775311123', '操作系统实验', '78', '18-2020-2');
INSERT INTO `result` VALUES ('253', '20181775311123', '计算机网络实验', '76', '18-2020-2');
INSERT INTO `result` VALUES ('254', '20181775311123', '线性代数', '88', '18-2020-2');
INSERT INTO `result` VALUES ('255', '20181775311123', '大学英语2', '78', '18-2020-2');
INSERT INTO `result` VALUES ('256', '20181775311122', '软件工程', '90', '18-2020-2');
INSERT INTO `result` VALUES ('257', '20181775311122', 'Java实验', '95', '18-2020-2');
INSERT INTO `result` VALUES ('258', '20181775311122', '数据机构实验', '95', '18-2020-2');
INSERT INTO `result` VALUES ('259', '20181775311122', '操作系统实验', '98', '18-2020-2');
INSERT INTO `result` VALUES ('260', '20181775311122', '计算机网络实验', '96', '18-2020-2');
INSERT INTO `result` VALUES ('261', '20181775311122', '线性代数', '88', '18-2020-2');
INSERT INTO `result` VALUES ('262', '20181775311122', '大学英语2', '98', '18-2020-2');
INSERT INTO `result` VALUES ('263', '20181685310261', '软件工程', '60', '18-2020-2');
INSERT INTO `result` VALUES ('264', '20181685310261', 'Java实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('265', '20181685310261', '数据机构实验', '77', '18-2020-2');
INSERT INTO `result` VALUES ('266', '20181685310261', '操作系统实验', '88', '18-2020-2');
INSERT INTO `result` VALUES ('267', '20181685310261', '计算机网络实验', '76', '18-2020-2');
INSERT INTO `result` VALUES ('268', '20181685310261', '线性代数', '87', '18-2020-2');
INSERT INTO `result` VALUES ('269', '20181685310261', '大学英语2', '88', '18-2020-2');
INSERT INTO `result` VALUES ('270', '20181685310262', '软件工程', '80', '18-2020-2');
INSERT INTO `result` VALUES ('271', '20181685310262', 'Java实验', '75', '18-2020-2');
INSERT INTO `result` VALUES ('272', '20181685310262', '数据机构实验', '87', '18-2020-2');
INSERT INTO `result` VALUES ('273', '20181685310262', '操作系统实验', '78', '18-2020-2');
INSERT INTO `result` VALUES ('274', '20181685310262', '计算机网络实验', '96', '18-2020-2');
INSERT INTO `result` VALUES ('275', '20181685310262', '线性代数', '77', '18-2020-2');
INSERT INTO `result` VALUES ('276', '20181685310262', '大学英语2', '88', '18-2020-2');
INSERT INTO `result` VALUES ('277', '20181685310263', '软件工程', '70', '18-2020-2');
INSERT INTO `result` VALUES ('278', '20181685310263', 'Java实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('279', '20181685310263', '数据机构实验', '97', '18-2020-2');
INSERT INTO `result` VALUES ('280', '20181685310263', '操作系统实验', '88', '18-2020-2');
INSERT INTO `result` VALUES ('281', '20181685310263', '计算机网络实验', '96', '18-2020-2');
INSERT INTO `result` VALUES ('282', '20181685310263', '线性代数', '97', '18-2020-2');
INSERT INTO `result` VALUES ('283', '20181685310263', '大学英语2', '88', '18-2020-2');
INSERT INTO `result` VALUES ('284', '20181685310264', '软件工程', '90', '18-2020-2');
INSERT INTO `result` VALUES ('285', '20181685310264', 'Java实验', '75', '18-2020-2');
INSERT INTO `result` VALUES ('286', '20181685310264', '数据机构实验', '87', '18-2020-2');
INSERT INTO `result` VALUES ('287', '20181685310264', '操作系统实验', '78', '18-2020-2');
INSERT INTO `result` VALUES ('288', '20181685310264', '计算机网络实验', '86', '18-2020-2');
INSERT INTO `result` VALUES ('289', '20181685310264', '线性代数', '77', '18-2020-2');
INSERT INTO `result` VALUES ('290', '20181685310264', '大学英语2', '88', '18-2020-2');
INSERT INTO `result` VALUES ('291', '20181685310265', '软件工程', '80', '18-2020-2');
INSERT INTO `result` VALUES ('292', '20181685310265', 'Java实验', '95', '18-2020-2');
INSERT INTO `result` VALUES ('293', '20181685310265', '数据机构实验', '77', '18-2020-2');
INSERT INTO `result` VALUES ('294', '20181685310265', '操作系统实验', '88', '18-2020-2');
INSERT INTO `result` VALUES ('295', '20181685310265', '计算机网络实验', '86', '18-2020-2');
INSERT INTO `result` VALUES ('296', '20181685310265', '线性代数', '97', '18-2020-2');
INSERT INTO `result` VALUES ('297', '20181685310265', '大学英语2', '78', '18-2020-2');
INSERT INTO `result` VALUES ('298', '20181685310266', '软件工程', '90', '18-2020-2');
INSERT INTO `result` VALUES ('299', '20181685310266', 'Java实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('300', '20181685310266', '数据机构实验', '77', '18-2020-2');
INSERT INTO `result` VALUES ('301', '20181685310266', '操作系统实验', '98', '18-2020-2');
INSERT INTO `result` VALUES ('302', '20181685310266', '计算机网络实验', '86', '18-2020-2');
INSERT INTO `result` VALUES ('303', '20181685310266', '线性代数', '92', '18-2020-2');
INSERT INTO `result` VALUES ('304', '20181685310266', '大学英语2', '71', '18-2020-2');
INSERT INTO `result` VALUES ('305', '20181685310267', '软件工程', '80', '18-2020-2');
INSERT INTO `result` VALUES ('306', '20181685310267', 'Java实验', '77', '18-2020-2');
INSERT INTO `result` VALUES ('307', '20181685310267', '数据机构实验', '88', '18-2020-2');
INSERT INTO `result` VALUES ('308', '20181685310267', '操作系统实验', '98', '18-2020-2');
INSERT INTO `result` VALUES ('309', '20181685310267', '计算机网络实验', '56', '18-2020-2');
INSERT INTO `result` VALUES ('310', '20181685310267', '线性代数', '76', '18-2020-2');
INSERT INTO `result` VALUES ('311', '20181685310267', '大学英语2', '71', '18-2020-2');
INSERT INTO `result` VALUES ('312', '20181685310268', '软件工程', '90', '18-2020-2');
INSERT INTO `result` VALUES ('313', '20181685310268', 'Java实验', '87', '18-2020-2');
INSERT INTO `result` VALUES ('314', '20181685310268', '数据机构实验', '78', '18-2020-2');
INSERT INTO `result` VALUES ('315', '20181685310268', '操作系统实验', '48', '18-2020-2');
INSERT INTO `result` VALUES ('316', '20181685310268', '计算机网络实验', '86', '18-2020-2');
INSERT INTO `result` VALUES ('317', '20181685310268', '线性代数', '55', '18-2020-2');
INSERT INTO `result` VALUES ('318', '20181685310268', '大学英语2', '66', '18-2020-2');
INSERT INTO `result` VALUES ('319', '20181685310269', '软件工程', '88', '18-2020-2');
INSERT INTO `result` VALUES ('320', '20181685310269', 'Java实验', '87', '18-2020-2');
INSERT INTO `result` VALUES ('321', '20181685310269', '数据机构实验', '78', '18-2020-2');
INSERT INTO `result` VALUES ('322', '20181685310269', '操作系统实验', '76', '18-2020-2');
INSERT INTO `result` VALUES ('323', '20181685310269', '计算机网络实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('324', '20181685310269', '线性代数', '55', '18-2020-2');
INSERT INTO `result` VALUES ('325', '20181685310269', '大学英语2', '86', '18-2020-2');
INSERT INTO `result` VALUES ('326', '20181685310270', '软件工程', '85', '18-2020-2');
INSERT INTO `result` VALUES ('327', '20181685310270', 'Java实验', '84', '18-2020-2');
INSERT INTO `result` VALUES ('328', '20181685310270', '数据机构实验', '77', '18-2020-2');
INSERT INTO `result` VALUES ('329', '20181685310270', '操作系统实验', '76', '18-2020-2');
INSERT INTO `result` VALUES ('330', '20181685310270', '计算机网络实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('331', '20181685310270', '线性代数', '65', '18-2020-2');
INSERT INTO `result` VALUES ('332', '20181685310270', '大学英语2', '86', '18-2020-2');
INSERT INTO `result` VALUES ('333', '20181685310271', '软件工程', '95', '18-2020-2');
INSERT INTO `result` VALUES ('334', '20181685310271', 'Java实验', '94', '18-2020-2');
INSERT INTO `result` VALUES ('335', '20181685310271', '数据机构实验', '87', '18-2020-2');
INSERT INTO `result` VALUES ('336', '20181685310271', '操作系统实验', '76', '18-2020-2');
INSERT INTO `result` VALUES ('337', '20181685310271', '计算机网络实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('338', '20181685310271', '线性代数', '85', '18-2020-2');
INSERT INTO `result` VALUES ('339', '20181685310271', '大学英语2', '76', '18-2020-2');
INSERT INTO `result` VALUES ('340', '20181685310372', '软件工程', '93', '18-2020-2');
INSERT INTO `result` VALUES ('341', '20181685310372', 'Java实验', '92', '18-2020-2');
INSERT INTO `result` VALUES ('342', '20181685310372', '数据机构实验', '85', '18-2020-2');
INSERT INTO `result` VALUES ('343', '20181685310372', '操作系统实验', '89', '18-2020-2');
INSERT INTO `result` VALUES ('344', '20181685310372', '计算机网络实验', '89', '18-2020-2');
INSERT INTO `result` VALUES ('345', '20181685310372', '线性代数', '90', '18-2020-2');
INSERT INTO `result` VALUES ('348', '20181775311132', 'Java', '78', '18-2020-1');
INSERT INTO `result` VALUES ('354', '20181685310372', '大学英语2', '100', '18-2020-2');
INSERT INTO `result` VALUES ('355', '20181775311122', 'Java', '70', '18-2020-1');
INSERT INTO `result` VALUES ('356', '20181685310372', '大学英语1', '100', '18-2020-1');
INSERT INTO `result` VALUES ('357', '20181775311123', 'Java', '80', '18-2020-1');
INSERT INTO `result` VALUES ('358', '20181685310372', '高等数学上', '100', '18-2020-1');
INSERT INTO `result` VALUES ('359', '20181685310372', '计算机网络', '100', '18-2020-1');
INSERT INTO `result` VALUES ('363', '20181685310372', 'Java', '100', '18-2020-1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123',
  `stu_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_sex` int(11) NOT NULL,
  `stu_tele` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20181623110261', '王23', '123', '计算机科学与技术2班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181682210261', '王7', '123', '计算机科学与技术2班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181683510361', '王2', '123', '计算机科学与技术2班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181684340261', '王8', '123', '计算机科学与技术2班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181685210261', '王9', '123', '计算机科学与技术2班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181685310261', '李飞', '123', '计算机科学与技术3班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181685310262', '李1', '123', '计算机科学与技术3班', '1', '18876627771');
INSERT INTO `student` VALUES ('20181685310263', '李2', '123', '计算机科学与技术3班', '0', '18876627772');
INSERT INTO `student` VALUES ('20181685310264', '李3', '123', '计算机科学与技术3班', '0', '18876627773');
INSERT INTO `student` VALUES ('20181685310265', '李4', '123', '计算机科学与技术3班', '1', '18876627774');
INSERT INTO `student` VALUES ('20181685310266', '李5', '123', '计算机科学与技术3班', '1', '18876627775');
INSERT INTO `student` VALUES ('20181685310267', '李6', '123', '计算机科学与技术3班', '0', '18876627776');
INSERT INTO `student` VALUES ('20181685310268', '李7', '123', '计算机科学与技术3班', '0', '18876627777');
INSERT INTO `student` VALUES ('20181685310269', '李8', '123', '计算机科学与技术3班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181685310270', '李9', '123', '计算机科学与技术3班', '1', '18876627728');
INSERT INTO `student` VALUES ('20181685310271', '李12', '123', '计算机科学与技术3班', '1', '18876627738');
INSERT INTO `student` VALUES ('20181685310361', '时玉春', '123', '网络工程1班', '1', '11561651612');
INSERT INTO `student` VALUES ('20181685310372', '林矗', '123', '计算机科学与技术3班', '1', '18876627755');
INSERT INTO `student` VALUES ('20181685312361', '王5', '123', '计算机科学与技术2班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181685313261', '王6', '123', '计算机科学与技术2班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181685314461', '王4', '123', '计算机科学与技术2班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181685321261', '王21', '123', '计算机科学与技术2班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181685440561', '王3', '123', '计算机科学与技术2班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181775310161', '王1', '123', '计算机科学与技术2班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311122', '林1', '123', '计算机科学与技术1班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311123', '林2', '123', '计算机科学与技术1班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181775311124', '林3', '123', '计算机科学与技术1班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311125', '林4', '123', '计算机科学与技术1班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181775311126', '林5', '123', '计算机科学与技术1班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311127', '林6', '123', '计算机科学与技术1班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181775311128', '林7', '123', '计算机科学与技术1班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311129', '林8', '123', '计算机科学与技术1班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181775311130', '林9', '123', '计算机科学与技术1班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311131', '林10', '123', '计算机科学与技术1班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181775311132', '林11', '123', '计算机科学与技术1班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311133', '时1', '123', '计算机科学与技术4班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311134', '时2', '123', '计算机科学与技术4班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181775311135', '时3', '123', '计算机科学与技术4班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311136', '时4', '123', '计算机科学与技术4班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311137', '时5', '123', '计算机科学与技术4班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181775311138', '时6', '123', '计算机科学与技术4班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311139', '时7', '123', '计算机科学与技术4班', '0', '18876627778');
INSERT INTO `student` VALUES ('20181775311140', '时8', '123', '计算机科学与技术4班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311141', '时9', '123', '计算机科学与技术4班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311142', '时10', '123', '计算机科学与技术4班', '1', '18876627778');
INSERT INTO `student` VALUES ('20181775311143', '时11', '123', '计算机科学与技术4班', '1', '18876627778');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `sub_id` varchar(50) NOT NULL,
  `sub_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sub_term` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '高等数学上', '18-2020-1');
INSERT INTO `subject` VALUES ('10', '数据机构实验', '18-2020-2');
INSERT INTO `subject` VALUES ('11', '操作系统实验', '18-2020-2');
INSERT INTO `subject` VALUES ('12', '计算机网络实验', '18-2020-2');
INSERT INTO `subject` VALUES ('13', '线性代数', '18-2020-2');
INSERT INTO `subject` VALUES ('14', '大学英语2', '18-2020-2');
INSERT INTO `subject` VALUES ('2', '计算机网络', '18-2020-1');
INSERT INTO `subject` VALUES ('3', '数据结构', '18-2020-1');
INSERT INTO `subject` VALUES ('4', '计算机操作系统', '18-2020-1');
INSERT INTO `subject` VALUES ('5', '大学英语1', '18-2020-1');
INSERT INTO `subject` VALUES ('6', '数据库概论', '18-2020-1');
INSERT INTO `subject` VALUES ('7', 'Java', '18-2020-1');
INSERT INTO `subject` VALUES ('8', '软件工程', '18-2020-2');
INSERT INTO `subject` VALUES ('9', 'Java实验', '18-2020-2');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tea_id` varchar(255) NOT NULL,
  `tea_name` varchar(50) NOT NULL,
  `tea_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123',
  `tea_sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tea_tele` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1111', '林老师', '123', '0', '18876627266');
INSERT INTO `teacher` VALUES ('1113', '李四', '123', '1', '18876627223');
INSERT INTO `teacher` VALUES ('1114', '张三', '123', '1', '18876627222');
INSERT INTO `teacher` VALUES ('1116', '武天', '123', '1', '18876627232');
INSERT INTO `teacher` VALUES ('1155', '刘老师', '123', '1', '18876627211');
INSERT INTO `teacher` VALUES ('1157', '王五', '123', '0', '18876627222');
INSERT INTO `teacher` VALUES ('1232', '司马懿', '123', '1', '18876627223');
INSERT INTO `teacher` VALUES ('1241', '赵云', '123', '1', '18876627223');
INSERT INTO `teacher` VALUES ('2122', '孟飞', '123', '1', '18876627222');
INSERT INTO `teacher` VALUES ('2321', '刘备', '123', '1', '18876627223');
INSERT INTO `teacher` VALUES ('2341', '诸葛亮', '123', '1', '18876627223');
INSERT INTO `teacher` VALUES ('3241', '张飞', '123', '1', '18876627222');
INSERT INTO `teacher` VALUES ('5324', '曹操', '123', '1', '18876627223');
