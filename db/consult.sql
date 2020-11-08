/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : consult

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2020-01-02 09:56:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `consult_configarea`
-- ----------------------------
DROP TABLE IF EXISTS `consult_configarea`;
CREATE TABLE `consult_configarea` (
  `areaCode` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `areaName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `state` int(1) DEFAULT NULL COMMENT '0 有效，1 失效',
  PRIMARY KEY (`areaCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consult_configarea
-- ----------------------------
INSERT INTO `consult_configarea` VALUES ('HN1', 'HN1', '1');
INSERT INTO `consult_configarea` VALUES ('HN2', 'HN2', '1');
INSERT INTO `consult_configarea` VALUES ('HN3', 'HN3', '1');
INSERT INTO `consult_configarea` VALUES ('HN4', 'HN4', '1');

-- ----------------------------
-- Table structure for `consult_content`
-- ----------------------------
DROP TABLE IF EXISTS `consult_content`;
CREATE TABLE `consult_content` (
  `itemIndex` int(100) DEFAULT NULL,
  `content` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '0--22个问题的征询内容， 1--11个问题的',
  `state` int(1) DEFAULT NULL COMMENT '0 有效，1 失效',
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of consult_content
-- ----------------------------
INSERT INTO `consult_content` VALUES ('1', '是否经常头昏、眼花、耳鸣、晕血、晕针及有美尼尔病。', '0', '0', '1');
INSERT INTO `consult_content` VALUES ('2', '是否有性病、麻风病、艾滋病，以及HIV-1、HIV-2抗体阳性。', '0', '0', '2');
INSERT INTO `consult_content` VALUES ('3', '是否有肝病史、乙型肝炎表面抗原阳性、HVC抗体阳性。', '0', '0', '3');
INSERT INTO `consult_content` VALUES ('4', '是否患反复发作过敏性疾病、荨麻疹、支气管哮喘、药物过敏。', '0', '0', '4');
INSERT INTO `consult_content` VALUES ('5', '是否有肺结核、肾结核、淋巴结核、骨结核。', '0', '0', '5');
INSERT INTO `consult_content` VALUES ('6', '是否有心血管疾病及病史，各种心脏病、高血压、低血压、心肌炎、血栓性静脉炎。', '0', '0', '6');
INSERT INTO `consult_content` VALUES ('7', '是否有呼吸道疾病（包括慢性支气管炎、肺气肿、支气管扩张、肺功能不全）。', '0', '0', '7');
INSERT INTO `consult_content` VALUES ('8', '是否有消化系统疾病（如较严重的胃及十二指肠溃疡、慢性胃肠炎、慢性胰腺炎）。', '0', '0', '8');
INSERT INTO `consult_content` VALUES ('9', '是否有泌尿系统疾病（如急慢性肾炎、慢性泌尿系统感染、肾病综合征及急慢性肾功能不全）。', '0', '0', '9');
INSERT INTO `consult_content` VALUES ('10', '是否有各种血液病（包括贫血、白血病、真性红细胞增多症及各种出血凝血性疾病）。', '0', '0', '10');
INSERT INTO `consult_content` VALUES ('11', '是否有内分泌疾病或代谢障碍性疾病（如甲亢、肢端肥大症、尿崩症、糖尿病等）。', '0', '0', '11');
INSERT INTO `consult_content` VALUES ('12', '是否有器质性神经系统疾患或精神病（如脑炎、脑外伤后遗症、癫痫、精神分裂症、癔症、严重神经衰等）。', '0', '0', '12');
INSERT INTO `consult_content` VALUES ('13', '是否有寄生虫病及地方病（如黑热病、吸血虫病、丝虫病、钩虫病、绦虫病、肺吸虫病、克山病、大骨等）。', '0', '0', '13');
INSERT INTO `consult_content` VALUES ('14', '是否患恶性肿瘤及影响健康的良性肿瘤。', '0', '0', '14');
INSERT INTO `consult_content` VALUES ('15', '是否做过切除胃、肾、胆囊、脾、肺等重要脏器手术。', '0', '0', '15');
INSERT INTO `consult_content` VALUES ('16', '是否接触过有害物质或放射性物质。', '0', '0', '16');
INSERT INTO `consult_content` VALUES ('17', '是否是易感染人免疫缺陷病毒的高危人群，有吸毒、同性恋及有多个性伙伴。', '0', '0', '17');
INSERT INTO `consult_content` VALUES ('18', '是否患克雅病（克罗依茨-雅克布病，CJD）和变异性克雅病（vCJD)及有家族病史者，接受过人和动物脑垂体来源物质（如生长激素、促性激素、甲状腺刺激素等）治疗，接受器官（含角膜、骨髓、硬脑壳）移植。是否暴露于牛海绵状脑病（BSE）和vCJD。', '0', '0', '18');
INSERT INTO `consult_content` VALUES ('19', '是否患慢性皮肤病，特别是传染性、过敏性及炎症性全身皮肤病（如黄癣、广泛性湿疹及全身性牛皮癣等）。', '0', '0', '19');
INSERT INTO `consult_content` VALUES ('20', '是否患自身免疫性疾病及胶原性疾病（如系统性红斑狼疮、皮肌炎、硬皮病等）。', '0', '0', '20');
INSERT INTO `consult_content` VALUES ('21', '是否被携带狂犬病病毒的动物咬伤过。', '0', '0', '21');
INSERT INTO `consult_content` VALUES ('22', '是否患有医生认为不能供血浆的其他疾病。', '0', '0', '22');
INSERT INTO `consult_content` VALUES ('1', '近2周内是否拔过牙或做其它小手术？', '1', '0', '23');
INSERT INTO `consult_content` VALUES ('2', '近一周内是否患感冒、急性肠胃炎？', '1', '0', '24');
INSERT INTO `consult_content` VALUES ('3', '近一个月内是否患过急性泌尿系统感染，半年内是否患过肺炎？', '1', '0', '25');
INSERT INTO `consult_content` VALUES ('4', '近期是否外出去过某些传染病和防疫部门特定的传染病流行高危地区？半年内是否患过痢疾，一年内是否患过伤寒、布氏杆菌病，三年内是否有患过疟疾？', '1', '0', '26');
INSERT INTO `consult_content` VALUES ('5', '半年内是否有献过全血？两年内是否接受过输血治疗？', '1', '0', '27');
INSERT INTO `consult_content` VALUES ('6', '被血液或者组织液污染的器材致伤或者污染伤口以及施行纹身术后未满1年者？', '1', '0', '28');
INSERT INTO `consult_content` VALUES ('7', '是否与传染病患者有密切接触，自接触之日起至该病最长潜伏期？', '1', '0', '29');
INSERT INTO `consult_content` VALUES ('8', '接受动物血清制品者于最后一次注射后4周内？一年内是否接受乙型肝炎免疫球蛋白注射？', '1', '0', '30');
INSERT INTO `consult_content` VALUES ('9', '近2周内是否接受过麻疹、腮腺炎、黄热、脊髓灰质炎、甲型肝炎减毒活疫苗免疫注射？4周内是否接受过风疹活疫苗、狂犬病疫苗注射？', '1', '0', '31');
INSERT INTO `consult_content` VALUES ('10', '妇女是否月经前后三天、月经失调、妊娠期、流产后未满六个月，分娩及哺乳期未满一年者。', '1', '0', '32');
INSERT INTO `consult_content` VALUES ('11', '是否到其他单采血浆站供过浆？', '1', '0', '33');

-- ----------------------------
-- Table structure for `consult_contract`
-- ----------------------------
DROP TABLE IF EXISTS `consult_contract`;
CREATE TABLE `consult_contract` (
  `Contract_ID` int(12) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `psptId` varchar(20) NOT NULL,
  `Contract_code` varchar(50) NOT NULL,
  `state` int(1) DEFAULT NULL,
  `activeTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Contract_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of consult_contract
-- ----------------------------

-- ----------------------------
-- Table structure for `consult_idcardinfo`
-- ----------------------------
DROP TABLE IF EXISTS `consult_idcardinfo`;
CREATE TABLE `consult_idcardinfo` (
  `psptId` varchar(20) COLLATE utf8_bin DEFAULT '',
  `Name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Sex` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `Address` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `activeTime` datetime DEFAULT NULL COMMENT '身份信息表 consult_idcardinfo',
  `innerId` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nation` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`innerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of consult_idcardinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `consult_record`
-- ----------------------------
DROP TABLE IF EXISTS `consult_record`;
CREATE TABLE `consult_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `psptId` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `activeTime` datetime DEFAULT NULL,
  `autograph` varchar(200) COLLATE utf8_bin DEFAULT '' COMMENT 'http://192.168.250.11/upload/image.png,//供浆者签名地址',
  `ispass` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '“TYGJ/ZSJJ/YJJJ”,//同意供浆、暂时拒绝、永久拒绝',
  `docautograph` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'http://192.168.250.11/upload/image.png,//医生签名地址',
  `fingerprint` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'http://192.168.250.11/upload/image.png,//指纹图片表',
  `remark` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '“fldajfkldsjlkafjsdljf” 备注',
  `print_flag` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of consult_record
-- ----------------------------

-- ----------------------------
-- Table structure for `consult_recordcount`
-- ----------------------------
DROP TABLE IF EXISTS `consult_recordcount`;
CREATE TABLE `consult_recordcount` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `psptId` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `isproduce` int(100) DEFAULT NULL COMMENT '记录已打印数',
  `unproduce` int(100) DEFAULT NULL COMMENT '记录未打印数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of consult_recordcount
-- ----------------------------

-- ----------------------------
-- Table structure for `qq_client`
-- ----------------------------
DROP TABLE IF EXISTS `qq_client`;
CREATE TABLE `qq_client` (
  `client_id` varchar(50) COLLATE utf8_bin NOT NULL,
  `client_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `in_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `expire` int(10) NOT NULL COMMENT '有效期，单位小时',
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of qq_client
-- ----------------------------
INSERT INTO `qq_client` VALUES ('vhieioe', '??', '2019-06-28 15:30:37', '3400');

-- ----------------------------
-- Table structure for `zg_goods`
-- ----------------------------
DROP TABLE IF EXISTS `zg_goods`;
CREATE TABLE `zg_goods` (
  `goodCode` varchar(10) COLLATE utf8_bin NOT NULL,
  `goodName` varchar(100) COLLATE utf8_bin NOT NULL,
  `count` int(100) NOT NULL,
  PRIMARY KEY (`goodCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of zg_goods
-- ----------------------------
INSERT INTO `zg_goods` VALUES ('iphone 1', 'iphone 1', '100');

-- ----------------------------
-- Table structure for `zg_logger`
-- ----------------------------
DROP TABLE IF EXISTS `zg_logger`;
CREATE TABLE `zg_logger` (
  `loggerId` int(10) NOT NULL AUTO_INCREMENT,
  `loggerClassName` varchar(50) COLLATE utf8_bin NOT NULL,
  `loggerMethodName` varchar(50) COLLATE utf8_bin NOT NULL,
  `loggerTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `loggerContent` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `loggerError` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `isError` varchar(1) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`loggerId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of zg_logger
-- ----------------------------
INSERT INTO `zg_logger` VALUES ('1', 'xx', 'ee', '2019-03-20 12:28:29', 'ytreytery', null, '1');
INSERT INTO `zg_logger` VALUES ('2', 'AreaServiceImpl', 'queryAreaByAreaCode', '2019-03-20 12:57:07', '[{\"areaCode\":\"HB\",\"areaName\":\"??\",\"state\":1}]', null, 'n');
INSERT INTO `zg_logger` VALUES ('3', 'AreaServiceImpl', 'queryAreaByAreaCode', '2019-03-20 13:04:50', '[{\"areaCode\":\"HN\",\"areaName\":\"??\",\"state\":1}]', null, 'n');
INSERT INTO `zg_logger` VALUES ('4', 'AreaServiceImpl', 'queryAreaByAreaCode', '2019-03-20 13:52:27', '[]', null, 'n');
INSERT INTO `zg_logger` VALUES ('5', 'jack', 'jack', '2019-03-20 20:45:38', 'jack', null, 'n');
INSERT INTO `zg_logger` VALUES ('6', 'AreaServiceImpl', 'queryAreaByAreaCode', '2019-03-20 21:36:00', '[{\"areaCode\":\"HLJ\",\"areaName\":\"HLJ\",\"state\":1}]', null, 'n');
INSERT INTO `zg_logger` VALUES ('7', 'AreaServiceImpl', 'queryAreaByAreaCode', '2019-03-20 21:38:40', '[{\"areaCode\":\"XJ\",\"areaName\":\"XJ\",\"state\":1}]', null, 'n');
INSERT INTO `zg_logger` VALUES ('8', 'ee1', 'xx3', '2019-04-04 20:38:56', 'xxxxxxxxxx', null, 'n');
INSERT INTO `zg_logger` VALUES ('9', 'CacheAop', 'queryAreaByAreaCode', '2019-04-04 21:16:08', '[{\"areaCode\":\"JSxxx\",\"areaName\":\"JSxxx\",\"state\":1}]', null, 'n');
INSERT INTO `zg_logger` VALUES ('10', 'CacheAop', 'queryAreaByAreaCode', '2019-04-04 21:29:47', '[{\"areaCode\":\"JSxxx\",\"areaName\":\"JSxxx\",\"state\":1}]', null, 'n');

-- ----------------------------
-- Table structure for `zg_order`
-- ----------------------------
DROP TABLE IF EXISTS `zg_order`;
CREATE TABLE `zg_order` (
  `orderId` int(10) NOT NULL AUTO_INCREMENT,
  `orderMoney` int(10) NOT NULL,
  `orderTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `orderStatus` varchar(10) COLLATE utf8_bin NOT NULL,
  `version` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of zg_order
-- ----------------------------
INSERT INTO `zg_order` VALUES ('1', '11', '2019-03-21 15:12:09', '1', '1');
INSERT INTO `zg_order` VALUES ('2', '12', '2019-03-21 15:45:48', '1', '1');
INSERT INTO `zg_order` VALUES ('3', '16', '2019-03-21 15:47:09', '1', '1');
INSERT INTO `zg_order` VALUES ('4', '16', '2019-03-21 21:00:36', '1', '1');
INSERT INTO `zg_order` VALUES ('5', '1000', '2019-03-21 21:23:40', '1', '1');
INSERT INTO `zg_order` VALUES ('8', '567', '2019-03-25 15:39:37', '1', '0');
INSERT INTO `zg_order` VALUES ('12', '888', '2019-03-25 16:16:01', '1', '0');
INSERT INTO `zg_order` VALUES ('13', '100', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('14', '101', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('15', '102', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('16', '103', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('17', '104', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('18', '105', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('19', '106', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('20', '107', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('21', '108', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('22', '109', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('23', '110', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('24', '111', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('25', '112', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('26', '113', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('27', '114', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('28', '115', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('29', '116', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('30', '117', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('31', '118', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('32', '119', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('33', '120', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('34', '121', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('35', '122', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('36', '123', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('37', '124', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('38', '125', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('39', '126', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('40', '127', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('41', '128', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('42', '129', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('43', '130', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('44', '131', '2019-04-09 21:23:37', '1', '1');
INSERT INTO `zg_order` VALUES ('45', '132', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('46', '133', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('47', '134', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('48', '135', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('49', '136', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('50', '137', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('51', '138', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('52', '139', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('53', '140', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('54', '141', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('55', '142', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('56', '143', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('57', '144', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('58', '145', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('59', '146', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('60', '147', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('61', '148', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('62', '149', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('63', '150', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('64', '151', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('65', '152', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('66', '153', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('67', '154', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('68', '155', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('69', '156', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('70', '157', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('71', '158', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('72', '159', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('73', '160', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('74', '161', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('75', '162', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('76', '163', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('77', '164', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('78', '165', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('79', '166', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('80', '167', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('81', '168', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('82', '169', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('83', '170', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('84', '171', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('85', '172', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('86', '173', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('87', '174', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('88', '175', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('89', '176', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('90', '177', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('91', '178', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('92', '179', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('93', '180', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('94', '181', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('95', '182', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('96', '183', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('97', '184', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('98', '185', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('99', '186', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('100', '187', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('101', '188', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('102', '189', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('103', '190', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('104', '191', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('105', '192', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('106', '193', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('107', '194', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('108', '195', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('109', '196', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('110', '197', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('111', '198', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('112', '199', '2019-03-27 12:20:39', '1', '1');
INSERT INTO `zg_order` VALUES ('113', '100', '2019-03-27 12:22:52', '1', '1');
INSERT INTO `zg_order` VALUES ('114', '998', '2019-04-09 21:51:30', '1', '1');

-- ----------------------------
-- Table structure for `zg_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `zg_ticket`;
CREATE TABLE `zg_ticket` (
  `ticketId` int(10) NOT NULL,
  `ticketCount` int(10) NOT NULL,
  `ticketStatus` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ticketTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `version` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of zg_ticket
-- ----------------------------
INSERT INTO `zg_ticket` VALUES ('12306', '99', '1', '2019-12-31 15:28:32', '1');

-- ----------------------------
-- Function structure for `fristPinyin`
-- ----------------------------
DROP FUNCTION IF EXISTS `fristPinyin`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fristPinyin`(P_NAME VARCHAR(255)) RETURNS varchar(255) CHARSET gbk
BEGIN
 
    DECLARE V_RETURN VARCHAR(255);
 
    SET V_RETURN = ELT(INTERVAL(CONV(HEX(left(CONVERT(P_NAME USING gbk),1)),16,10), 
 
        0xB0A1,0xB0C5,0xB2C1,0xB4EE,0xB6EA,0xB7A2,0xB8C1,0xB9FE,0xBBF7, 
 
        0xBFA6,0xC0AC,0xC2E8,0xC4C3,0xC5B6,0xC5BE,0xC6DA,0xC8BB,
 
        0xC8F6,0xCBFA,0xCDDA,0xCEF4,0xD1B9,0xD4D1),    
 
    'A','B','C','D','E','F','G','H','J','K','L','M','N','O','P','Q','R','S','T','W','X','Y','Z');
 
    RETURN V_RETURN;
 
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `pinyin`
-- ----------------------------
DROP FUNCTION IF EXISTS `pinyin`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `pinyin`(P_NAME VARCHAR(255)) RETURNS varchar(255) CHARSET utf8
BEGIN
    DECLARE V_COMPARE VARCHAR(255);
    DECLARE V_RETURN VARCHAR(255);
    DECLARE I INT;
  
    SET I = 1;
    SET V_RETURN = '';
    while I < LENGTH(P_NAME) do
        SET V_COMPARE = SUBSTR(P_NAME, I, 1);
        IF (V_COMPARE != '') THEN
            #SET V_RETURN = CONCAT(V_RETURN, ',', V_COMPARE);
            SET V_RETURN = CONCAT(V_RETURN, fristPinyin(V_COMPARE));
            #SET V_RETURN = fristPinyin(V_COMPARE);
        END IF;
        SET I = I + 1;
    end while;
    IF (ISNULL(V_RETURN) or V_RETURN = '') THEN
        SET V_RETURN = P_NAME;
    END IF;
    RETURN V_RETURN;
END
;;
DELIMITER ;
