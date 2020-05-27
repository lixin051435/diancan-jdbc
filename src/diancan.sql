/*
Navicat MySQL Data Transfer

Source Server         : 11
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : diancan

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2020-02-29 17:58:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `allusers`
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `ID` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `cx` varchar(50) default '超级管理员',
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('1', 'admin', 'admin', '超级管理员', '2020-03-01 00:00:00');

-- ----------------------------
-- Table structure for `dx`
-- ----------------------------
DROP TABLE IF EXISTS `dx`;
CREATE TABLE `dx` (
  `ID` int(11) NOT NULL auto_increment,
  `leibie` varchar(50) default NULL,
  `content` longtext,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统公告';

-- ----------------------------
-- Records of dx
-- ----------------------------
INSERT INTO `dx` VALUES ('1', '系统公告', '<p>系统公告3</p>\r\n');
INSERT INTO `dx` VALUES ('2', '系统简介', '<p>系统简介1</p>\r\n');

-- ----------------------------
-- Table structure for `gwc`
-- ----------------------------
DROP TABLE IF EXISTS `gwc`;
CREATE TABLE `gwc` (
  `ID` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `bianhao` varchar(50) default NULL,
  `mingcheng` varchar(50) default NULL,
  `tupian` varchar(50) default NULL,
  `jiage` double(10,2) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `shuliang` int(11) default '1',
  `dizhi` varchar(100) default NULL,
  `issh` varchar(10) default '否',
  `isfk` varchar(50) default '否',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gwc
-- ----------------------------
INSERT INTO `gwc` VALUES ('56', 'yh001', 'S129', '土豆肉丝', 'admin/upload/1365944878593.jpg', '32.00', '2020-02-29 17:53:14', '3', 'XXXXXXX', '否', '否');

-- ----------------------------
-- Table structure for `liuyanban`
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban` (
  `ID` int(11) NOT NULL auto_increment,
  `cheng` varchar(50) default NULL,
  `xingbie` varchar(2) default NULL,
  `QQ` varchar(50) default NULL,
  `youxiang` varchar(50) default NULL,
  `dianhua` varchar(50) default NULL,
  `neirong` varchar(255) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `huifuneirong` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of liuyanban
-- ----------------------------
INSERT INTO `liuyanban` VALUES ('27', '5555', '3', '', '', '', '555', '2020-03-01 00:00:00', 'haha');
INSERT INTO `liuyanban` VALUES ('9', '1', '4', '', '', '', '11', '2020-03-01 00:00:00', '111');
INSERT INTO `liuyanban` VALUES ('30', '3', '3', '', '', '', '4', '2020-03-01 00:00:00', 'XXXX');
INSERT INTO `liuyanban` VALUES ('31', '44', '1', '44444444', '44@qq.com', '6666645', '444', '2020-03-01 00:00:00', null);
INSERT INTO `liuyanban` VALUES ('32', '4444', '1', '44444444', '', '', '4444@qq.com', '2020-03-01 00:00:00', null);

-- ----------------------------
-- Table structure for `pinglun`
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `id` int(11) NOT NULL auto_increment,
  `spid` int(11) default NULL,
  `neirong` varchar(800) default NULL,
  `addby` varchar(100) default NULL,
  `addtime` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES ('2', '21', 'XXXX', 'yh001', '2020-02-29 17:42:07');
INSERT INTO `pinglun` VALUES ('3', '23', '换不错，好吃', 'yh001', '2020-02-29 17:53:01');

-- ----------------------------
-- Table structure for `shangpinleibie`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinleibie`;
CREATE TABLE `shangpinleibie` (
  `ID` int(11) NOT NULL default '0',
  `leibiemingcheng` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shangpinleibie
-- ----------------------------
INSERT INTO `shangpinleibie` VALUES ('5', '热菜', '2020-03-01 00:00:00');
INSERT INTO `shangpinleibie` VALUES ('6', '凉菜', '2020-03-01 00:00:00');
INSERT INTO `shangpinleibie` VALUES ('7', '汤', '2020-03-01 00:00:00');

-- ----------------------------
-- Table structure for `shangpinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi` (
  `ID` int(11) NOT NULL auto_increment,
  `bianhao` varchar(50) default NULL,
  `mingcheng` varchar(50) default NULL,
  `leibie` varchar(50) default NULL,
  `tupian` varchar(50) default NULL,
  `beizhu` varchar(800) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `jiage` varchar(50) default NULL,
  `xiaoshou` int(11) default '1',
  `issh` varchar(2) default '否',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES ('12', 'C001', '凉拌黄瓜', '凉菜', 'admin/upload/1365931636671.jpg', '凉拌黄瓜凉拌黄瓜凉拌黄瓜凉拌黄瓜凉拌黄瓜凉拌黄瓜', '2020-03-01 00:00:00', '10', '2', '是');
INSERT INTO `shangpinxinxi` VALUES ('13', 'S002', '凉拌藕片', '凉菜', 'admin/upload/1365943841109.jpg', '凉拌藕片凉拌藕片凉拌藕片', '2020-03-01 00:00:00', '15', '1', '是');
INSERT INTO `shangpinxinxi` VALUES ('14', 'S003', '泡椒凤爪', '凉菜', 'admin/upload/1365943918125.jpg', '泡椒凤爪泡椒凤爪泡椒凤爪泡椒凤爪泡椒凤爪', '2020-03-01 00:00:00', '22', '1', '否');
INSERT INTO `shangpinxinxi` VALUES ('15', 'S004', '冬瓜虾米汤', '汤', 'admin/upload/1365944046203.jpg', '冬瓜虾米汤冬瓜虾米汤冬瓜虾米汤冬瓜虾米汤冬瓜虾米汤', '2020-03-01 00:00:00', '34', '1', '否');
INSERT INTO `shangpinxinxi` VALUES ('18', 'S008', '紫菜蛋汤', '汤', 'admin/upload/1365944628031.jpg', '紫菜蛋汤紫菜蛋汤紫菜蛋汤紫菜蛋汤紫菜蛋汤紫菜蛋汤', '2020-03-01 00:00:00', '7', '1', '是');
INSERT INTO `shangpinxinxi` VALUES ('19', 's5555', '醋溜土豆', '热菜', 'admin/upload/1365944656109.jpg', '醋溜土豆醋溜土豆醋溜土豆醋溜土豆醋溜土豆醋溜土豆', '2020-03-01 00:00:00', '22', '1', '否');
INSERT INTO `shangpinxinxi` VALUES ('20', 'S110', '红烧鲫鱼', '热菜', 'admin/upload/1365944814921.jpg', '红烧鲫鱼红烧鲫鱼红烧鲫鱼红烧鲫鱼红烧鲫鱼', '2020-03-01 00:00:00', '55', '1', '否');
INSERT INTO `shangpinxinxi` VALUES ('21', 'S112', '红烧排骨', '热菜', 'admin/upload/1365944827765.jpg', '红烧排骨红烧排骨红烧排骨红烧排骨红烧排骨红烧排骨', '2020-03-01 00:00:00', '66', '3', '是');
INSERT INTO `shangpinxinxi` VALUES ('22', 'S115', '水煮肉片', '热菜', 'admin/upload/1365944853828.jpg', '水煮肉片水煮肉片水煮肉片水煮肉片水煮肉片水煮肉片', '2020-03-01 00:00:00', '46', '3', '是');
INSERT INTO `shangpinxinxi` VALUES ('23', 'S129', '土豆肉丝', '热菜', 'admin/upload/1365944878593.jpg', '土豆肉丝土豆肉丝土豆肉丝土豆肉丝土豆肉丝土豆肉丝', '2020-02-29 17:53:14', '32', '4', '是');
INSERT INTO `shangpinxinxi` VALUES ('24', 'S125', '香干回锅肉', '汤', 'admin/upload/1365946865781.jpg', '香干回锅肉香干回锅肉香干回锅肉香干回锅肉香干回锅肉', '2020-03-01 00:00:00', '45', '2', '是');

-- ----------------------------
-- Table structure for `xinwentongzhi`
-- ----------------------------
DROP TABLE IF EXISTS `xinwentongzhi`;
CREATE TABLE `xinwentongzhi` (
  `ID` int(11) NOT NULL auto_increment,
  `biaoti` varchar(200) default NULL,
  `leibie` varchar(50) default NULL,
  `neirong` varchar(800) default NULL,
  `tianjiaren` varchar(50) default NULL,
  `shouyetupian` varchar(50) default NULL,
  `dianjilv` varchar(10) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='站内新闻';

-- ----------------------------
-- Records of xinwentongzhi
-- ----------------------------
INSERT INTO `xinwentongzhi` VALUES ('26', '站内新闻1', '站内新闻', '<p>站内新闻1站内新闻1站内新闻1站内新闻1站内新闻1站内新闻1站内新闻1站内新闻1站内新闻1站内新闻1站内新闻1</p>\r\n', 'admin', 'admin/upload/1582965006767.jpg', '13', '2020-03-01 00:00:00');
INSERT INTO `xinwentongzhi` VALUES ('27', '站内新闻2', '站内新闻', '<p>站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2站内新闻2</p>\r\n', 'admin', 'admin/upload/1582964996281.jpg', '2', '2020-03-01 00:00:00');
INSERT INTO `xinwentongzhi` VALUES ('28', '站内新闻3', '站内新闻', '<p>站内新闻3站内新闻3站内新闻3站内新闻3站内新闻3站内新闻3站内新闻3站内新闻3站内新闻3站内新闻3站内新闻3站内新闻3站内新闻3站内新闻3</p>\r\n', 'admin', 'admin/upload/1582964986851.jpg', '1', '2020-03-01 00:00:00');
INSERT INTO `xinwentongzhi` VALUES ('31', '站内新闻4', '站内新闻', '<p>站内新闻4站内新闻4站内新闻4站内新闻4站内新闻4站内新闻4站内新闻4站内新闻4站内新闻4站内新闻4站内新闻4站内新闻4</p>\r\n', 'admin', 'admin/upload/1582964977167.jpg', '19', '2020-03-01 00:00:00');
INSERT INTO `xinwentongzhi` VALUES ('32', '站内新闻5', '站内新闻', '<p>站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5站内新闻5</p>\r\n', 'admin', 'admin/upload/1582964966672.jpg', '45', '2020-03-01 00:00:00');
INSERT INTO `xinwentongzhi` VALUES ('34', '网站须知1', '网站须知', '网站须知1网站须知1网站须知1网站须知1网站须知1网站须知1网站须知1网站须知1网站须知1网站须知1网站须知1网站须知1网站须知1网站须知1网站须知1网站须知1', 'admin', '', '2', '2020-03-01 00:00:00');
INSERT INTO `xinwentongzhi` VALUES ('35', '网站须知2', '网站须知', '网站须知2网站须知2网站须知2网站须知2网站须知2网站须知2网站须知2网站须知2网站须知2网站须知2网站须知2网站须知2网站须知2网站须知2网站须知2网站须知2', 'admin', '', '5', '2020-03-01 00:00:00');
INSERT INTO `xinwentongzhi` VALUES ('36', '使用帮助1', '使用帮助', '使用帮助1使用帮助1使用帮助1使用帮助1使用帮助1使用帮助1使用帮助1使用帮助1使用帮助1使用帮助1使用帮助1', 'admin', '', '1', '2020-03-01 00:00:00');
INSERT INTO `xinwentongzhi` VALUES ('37', '使用帮助2', '使用帮助', '使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2使用帮助2vvv', 'admin', '', '2', '2020-03-01 00:00:00');
INSERT INTO `xinwentongzhi` VALUES ('38', '使用帮助3', '使用帮助', '使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3使用帮助3', 'admin', '', '22', '2020-03-01 00:00:00');

-- ----------------------------
-- Table structure for `yonghujiezhang`
-- ----------------------------
DROP TABLE IF EXISTS `yonghujiezhang`;
CREATE TABLE `yonghujiezhang` (
  `ID` int(11) NOT NULL auto_increment,
  `yonghuming` varchar(50) default NULL,
  `wupinzongjianshu` varchar(50) default NULL,
  `yingfuzonge` varchar(50) default NULL,
  `fukuanfangshi` varchar(50) default NULL,
  `fukuanzhanghao` varchar(50) default NULL,
  `fahuodizhi` varchar(50) default NULL,
  `lianxidianhua` varchar(50) default NULL,
  `lianxiren` varchar(50) default NULL,
  `youbian` varchar(50) default NULL,
  `addtime` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yonghujiezhang
-- ----------------------------
INSERT INTO `yonghujiezhang` VALUES ('8', 'yh001', '3', '135.0', '支付宝', '44444', '4444', '44', '4444', '4444', '2020-03-01 00:00:00');

-- ----------------------------
-- Table structure for `yonghuzhuce`
-- ----------------------------
DROP TABLE IF EXISTS `yonghuzhuce`;
CREATE TABLE `yonghuzhuce` (
  `ID` int(11) NOT NULL auto_increment,
  `yonghuming` varchar(50) default NULL,
  `mima` varchar(50) default NULL,
  `xingming` varchar(50) default NULL,
  `xingbie` varchar(2) default NULL,
  `dianhua` varchar(50) default NULL,
  `shenfenzheng` varchar(50) default NULL,
  `dizhi` varchar(100) default NULL,
  `beizhu` varchar(800) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `issh` varchar(2) default '否',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='注册用户';

-- ----------------------------
-- Records of yonghuzhuce
-- ----------------------------
INSERT INTO `yonghuzhuce` VALUES ('6', 'yh001', 'yh001', '王海', '男', '111111', '1111', '1111333', 'XXXXXX', '2020-03-01 00:00:00', '是');
INSERT INTO `yonghuzhuce` VALUES ('7', 'yh002', 'yh002', '王晓丽', '女', '12133332', '654344433332222', 'AAAAA', 'AAAAA', '2020-03-01 00:00:00', '是');

-- ----------------------------
-- Table structure for `youqinglianjie`
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie` (
  `ID` int(11) NOT NULL auto_increment,
  `wangzhanmingcheng` varchar(50) default NULL,
  `wangzhi` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES ('1', '百度', 'http://www.baidu.com', '2020-03-01 00:00:00');
INSERT INTO `youqinglianjie` VALUES ('2', '谷歌', 'http://www.google.cn', '2020-03-01 00:00:00');
INSERT INTO `youqinglianjie` VALUES ('3', '新浪', 'http://www.sina.com', '2020-03-01 00:00:00');
INSERT INTO `youqinglianjie` VALUES ('4', '雅虎', 'http://www.yahoo.cn', '2020-03-01 00:00:00');
INSERT INTO `youqinglianjie` VALUES ('5', '腾讯网', 'http://www.qq.com', '2020-03-01 00:00:00');
