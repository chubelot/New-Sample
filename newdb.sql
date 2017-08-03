/*
Navicat MySQL Data Transfer

Source Server         : loc al
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : newdb

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2017-08-03 09:33:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `template_id` int(10) unsigned DEFAULT NULL,
  `userfile` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', '11', '1', 'images/userupload/C5Rear.jpg', '2014-04-08 01:55:28', '2014-04-08 01:55:28', '4');
INSERT INTO `images` VALUES ('2', '11', '1', 'images/userupload/car1.jpg', '2014-04-08 01:56:30', '2014-04-08 01:56:30', '4');
INSERT INTO `images` VALUES ('3', '16', '1', 'images/userupload/car2.jpg', '2014-05-21 04:40:19', '2014-05-21 04:40:19', '4');
INSERT INTO `images` VALUES ('4', '15', '1', 'images/userupload/w_FW-Flag-8.5x14_Thumb.jpg', '2014-05-21 04:43:05', '2014-05-21 04:43:05', '4');

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storeId` int(10) NOT NULL,
  `orderId` int(11) NOT NULL,
  `BalanceAmount` decimal(18,4) NOT NULL,
  `paidDateUtc` datetime DEFAULT NULL,
  `disclamer` text,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `statusId` int(10) DEFAULT NULL,
  `imageid` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invoices
-- ----------------------------
INSERT INTO `invoices` VALUES ('1', '1', '1', '152.0000', '2017-06-16 04:50:26', 'yest he did it', '2017-06-14 04:50:59', '2017-06-16 04:51:47', '2', '1');
INSERT INTO `invoices` VALUES ('2', '25', '22', '52.0000', '2017-06-20 04:52:34', 'non li [pake fel i', '2017-06-12 04:52:49', '2017-06-11 04:52:53', '2', '2');
INSERT INTO `invoices` VALUES ('3', '25', '52', '452.0000', '2017-06-05 04:53:26', 'sak konnen nap gade ', '2017-06-05 04:53:47', '2017-06-05 04:53:52', '2', '3');
INSERT INTO `invoices` VALUES ('4', '2', '8785', '9652.0000', '2016-05-24 00:00:00', 'se sali ye wi nou ap swiv', '2017-06-19 04:55:01', '2017-06-12 04:55:08', '2', '4');

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES ('1', 'Petion-Vill', 'Haiti', '2015-12-10 16:57:22', '2015-12-10 16:57:25');
INSERT INTO `locations` VALUES ('2', 'Tampa', 'USA', '2015-12-10 16:57:28', '2015-12-10 16:57:31');
