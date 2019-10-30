/*
Navicat MySQL Data Transfer

Source Server         : uh
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : bwd_boswiasta

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-09-12 17:36:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for detail
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `description` text,
  `duration` int(11) DEFAULT NULL,
  `pax` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO `detail` VALUES ('22', '2', 'Makan', '0', '150', '10000', '1500000');
INSERT INTO `detail` VALUES ('23', '2', 'Obyek Wisata', '0', '150', '32500', '4875000');
INSERT INTO `detail` VALUES ('24', '2', 'Jeep', '1', '150', '500000', '75000000');
INSERT INTO `detail` VALUES ('25', '2', 'JEEP', '1', '150', '500000', '75000000');
INSERT INTO `detail` VALUES ('37', '3', 'Makan', '0', '100', '30000', '3000000');
INSERT INTO `detail` VALUES ('38', '3', 'Obyek Wisata', '0', '100', '20000', '2000000');
INSERT INTO `detail` VALUES ('39', '3', 'Dll', '1', '100', '10000', '1000000');
INSERT INTO `detail` VALUES ('40', '3', 'sdkfjlsdf', '1', '100', '1000', '100000');
INSERT INTO `detail` VALUES ('41', '4', 'Makan', '0', '100', '21000', '2100000');
INSERT INTO `detail` VALUES ('42', '4', 'Obyek Wisata', '0', '100', '1000', '100000');
INSERT INTO `detail` VALUES ('43', '4', 'asdsad', '1', '100', '50000', '5000000');
INSERT INTO `detail` VALUES ('44', '4', 'asdasd', '1', '1', '100000', '100000');

-- ----------------------------
-- Table structure for eat
-- ----------------------------
DROP TABLE IF EXISTS `eat`;
CREATE TABLE `eat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eat
-- ----------------------------
INSERT INTO `eat` VALUES ('28', '2', '1', 'Breakfast', 'mojk', '10000');
INSERT INTO `eat` VALUES ('29', '2', '1', 'Lunch', '', '0');
INSERT INTO `eat` VALUES ('30', '2', '1', 'Dinner', '', '0');
INSERT INTO `eat` VALUES ('40', '3', '1', 'Breakfast', '', '10000');
INSERT INTO `eat` VALUES ('41', '3', '1', 'Lunch', '', '10000');
INSERT INTO `eat` VALUES ('42', '3', '1', 'Dinner', '', '10000');
INSERT INTO `eat` VALUES ('43', '4', '1', 'Breakfast', 'asdas', '10000');
INSERT INTO `eat` VALUES ('44', '4', '1', 'Lunch', '', '10000');
INSERT INTO `eat` VALUES ('45', '4', '1', 'Dinner', '', '1000');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` double DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('40', 'c8a661c245f1bbb8891ce4c80637d92810000.png', 'image/png', '3.15', 'webfile/c8a661c245f1bbb8891ce4c80637d92810000.png', 'users', '3', null, '2018-03-28 16:37:43', '2018-03-28 16:40:38');
INSERT INTO `file` VALUES ('47', '', '', '0', '', 'users', '4', null, '2018-03-29 17:10:07', null);
INSERT INTO `file` VALUES ('48', '', '', '0', '', 'users', '5', null, '2018-04-03 07:08:43', null);
INSERT INTO `file` VALUES ('74', '', '', '0', '', 'users', '6', null, '2018-04-20 07:19:16', null);
INSERT INTO `file` VALUES ('0', '', '', '0', '', 'users', '7', null, '2018-09-12 11:59:46', null);

-- ----------------------------
-- Table structure for object
-- ----------------------------
DROP TABLE IF EXISTS `object`;
CREATE TABLE `object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of object
-- ----------------------------
INSERT INTO `object` VALUES ('10', '2', 'Bromo', '32500');
INSERT INTO `object` VALUES ('16', '3', 'Jogja', '10000');
INSERT INTO `object` VALUES ('17', '3', 'bali', '10000');
INSERT INTO `object` VALUES ('18', '4', 'asd', '1000');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'website_name', 'PT. Delima Sri Gemilang ');
INSERT INTO `settings` VALUES ('2', 'open_time', '08:00 - 20.00');
INSERT INTO `settings` VALUES ('5', 'phone_number', ' 085278736685 ');
INSERT INTO `settings` VALUES ('6', 'whatsapp_number', '081378218884');
INSERT INTO `settings` VALUES ('7', 'title_home', 'Delima Sri Gemilang | Bus Tembilahan & Travel Tembilahan');
INSERT INTO `settings` VALUES ('8', 'keywords', 'travel tembilahan pekanbaru, rumah makan di pekanbaru, travel palembang ke pekanbaru, wisma di pekanbaru, tempat makan enak di panam pekanbaru, travel padang bukittinggi, travel bagan batu, penginapan di rantau prapat, ws pekanbaru, ongkos travel pekanbaru duri, tempat wisata kuliner di pekanbaru, sewa bus padang, travel pekanbaru palembang, kuliner dumai, travel batusangkar padang, wisma pekanbaru, pekanbaru kuliner, tempat makan di dumai, makan malam di pekanbaru, homestay murah di pekanbaru ');
INSERT INTO `settings` VALUES ('9', 'description', 'PT Delima Sri Gemilang adalah perusahaan penyedia jasa Sewa Bus tembilahan & travel tembilahan di riau berdiri sejak tahun 1996');
INSERT INTO `settings` VALUES ('10', 'favicon', 'http://delimasrigemilang.com/source/logo.png');
INSERT INTO `settings` VALUES ('11', 'logo', 'http://delimasrigemilang.com/source/favicon.png');
INSERT INTO `settings` VALUES ('12', 'short_desc', '<p>PT. Delima Sri Gemilang - Perusahaan penyedia jasa Sewa Bus di Riau berdiri sejak tahun 1996. Dengan di dukung oleh armada bus yang prima dan terawat.<br></p>');
INSERT INTO `settings` VALUES ('13', 'office1_address', 'Jl. H. Suntung Ardi No. 144 Tembilahan - Inhil Riau');
INSERT INTO `settings` VALUES ('14', 'office1_phone1', '085278736685');
INSERT INTO `settings` VALUES ('15', 'office1_phone2', '085278736685');
INSERT INTO `settings` VALUES ('16', 'office1_email', 'info@delimasrigemilang.com');
INSERT INTO `settings` VALUES ('17', 'office2_address', 'Jl. Mayjend Soetoyo No. 70A Patihan Wetan - Ponorogo');
INSERT INTO `settings` VALUES ('18', 'office2_phone1', '08125938882');
INSERT INTO `settings` VALUES ('19', 'office2_phone2', '081335222567');
INSERT INTO `settings` VALUES ('20', 'office2_email', 'info@delimasrigemilang.com');
INSERT INTO `settings` VALUES ('21', 'office1_web', 'www.delimasrigemilang.com');
INSERT INTO `settings` VALUES ('22', 'office2_web', 'www.delimasrigemilang.com');

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `pax` varchar(255) DEFAULT NULL,
  `capital` int(11) DEFAULT NULL,
  `hj` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES ('2', 'Simon Daop 1', '2018-09-13', 'Batu Malang 3 Hari 2 Malam', '150', '1042500', '1150000', '3', '2018-09-12 11:05:25', '2018-09-12 11:07:07');
INSERT INTO `transaction` VALUES ('3', 'Daop1 Isep', '2018-09-20', 'Jogja 3 Hari 2 Malam', '100', '61000', '70000', '3', '2018-09-12 11:09:09', '2018-09-12 11:46:16');
INSERT INTO `transaction` VALUES ('4', 'asdasd', '2018-09-10', 'asdasd', '100', '73000', '500000', '3', '2018-09-12 11:10:48', '2018-09-12 11:47:15');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('3', 'helloBWD', 'hello@batuwebdesign.com', 'Batu', 'Webdesign', 'b3fb1b371efb70a15e71b47abd7b80d6', 'Super Administrator', '2', null, '2018-03-28 16:37:43', '2018-09-12 11:59:07');
INSERT INTO `users` VALUES ('7', 'demo', 'demo@batuwebdesign.com', 'Demo', 'Tour System', 'fe01ce2a7fbac8fafaed7c982a04e229', 'Administrator', '3', null, '2018-09-12 11:59:46', '0000-00-00 00:00:00');
