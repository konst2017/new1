/*
Navicat MySQL Data Transfer

Source Server         : localhost_3307
Source Server Version : 50523
Source Host           : localhost:3306
Source Database       : yii2_loc2

Target Server Type    : MYSQL
Target Server Version : 50523
File Encoding         : 65001

Date: 2018-11-29 10:03:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '0', 'Электроника', null, null);
INSERT INTO `category` VALUES ('2', '0', 'Компьютеры', null, null);
INSERT INTO `category` VALUES ('3', '0', 'Смартфоны', null, null);
INSERT INTO `category` VALUES ('4', '1', 'Микрофоны', null, null);
INSERT INTO `category` VALUES ('5', '1', 'ТВ', null, null);
INSERT INTO `category` VALUES ('6', '1', 'Мобильники', null, null);
INSERT INTO `category` VALUES ('9', '2', 'Delli', null, null);
INSERT INTO `category` VALUES ('10', '2', 'Hp', null, null);
INSERT INTO `category` VALUES ('11', '2', 'Apple', null, null);
INSERT INTO `category` VALUES ('12', '2', 'Sony', null, null);
INSERT INTO `category` VALUES ('19', '3', 'Sony', null, null);
INSERT INTO `category` VALUES ('20', '3', 'Apple', null, null);
INSERT INTO `category` VALUES ('21', '3', 'Samsung', null, null);
INSERT INTO `category` VALUES ('22', '3', 'Nokia', null, null);

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_author` varchar(255) NOT NULL,
  `comment_text` text NOT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `approved` enum('0','1') NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', 'Андрей', 'Привет, мир!', '0', '1', '2013-12-01 10:24:31', '0');
INSERT INTO `comments` VALUES ('2', 'Валерия', 'Товар подошел', '0', '1', '2013-12-03 14:25:05', '0');
INSERT INTO `comments` VALUES ('3', 'Менеджер', 'Отлично!\r\nОбращайтесь еще :)', '2', '1', '2013-12-04 14:26:02', '1');
INSERT INTO `comments` VALUES ('82', 'конст', '<p>Привет<br />\r\n&nbsp;</p>\r\n', '0', '0', '2018-07-30 13:55:51', '0');
INSERT INTO `comments` VALUES ('83', 'наташа', '<p>Привет всем</p>\r\n', '0', '0', '2018-07-30 13:55:51', '0');
INSERT INTO `comments` VALUES ('84', 'wer', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>круто</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '0', '0', '2018-07-30 13:55:51', '0');
INSERT INTO `comments` VALUES ('5', 'Валерия', 'Спасибо)', '3', '1', '2013-12-31 14:27:15', '0');
INSERT INTO `comments` VALUES ('6', 'Конкурент', 'Тестовый коммент', '0', '1', '2013-12-31 14:28:17', '0');
INSERT INTO `comments` VALUES ('40', 'Андрей', '5', '6', '0', '2014-01-10 22:18:50', '0');
INSERT INTO `comments` VALUES ('41', 'Андрей', 'Привет', '0', '0', '2014-01-10 22:20:29', '0');
INSERT INTO `comments` VALUES ('42', 'Андрей', '1', '0', '0', '2014-01-10 22:29:26', '0');
INSERT INTO `comments` VALUES ('43', 'Андрей', '2', '0', '0', '2014-01-10 22:30:08', '0');
INSERT INTO `comments` VALUES ('44', 'Андрей', '4', '0', '0', '2014-01-10 22:31:41', '0');
INSERT INTO `comments` VALUES ('45', 'Андрей', '2', '0', '0', '2014-01-10 22:33:47', '0');
INSERT INTO `comments` VALUES ('46', 'Андрей', 'Тестируем эффект появления', '45', '0', '2014-01-10 22:36:13', '0');
INSERT INTO `comments` VALUES ('39', 'Андрей', '4', '37', '0', '2014-01-10 22:18:44', '0');
INSERT INTO `comments` VALUES ('38', 'Андрей', '12', '0', '0', '2014-01-10 22:18:14', '0');
INSERT INTO `comments` VALUES ('37', 'Андрей', '123', '6', '0', '2014-01-10 22:18:07', '0');
INSERT INTO `comments` VALUES ('47', 'Андрей', '12345', '38', '0', '2014-01-10 22:36:32', '0');
INSERT INTO `comments` VALUES ('48', 'Андрей', '31231231', '0', '0', '2014-01-10 22:42:30', '0');
INSERT INTO `comments` VALUES ('49', 'Андрей', '1', '0', '0', '2014-01-10 22:56:24', '0');
INSERT INTO `comments` VALUES ('50', 'Андрей', '2', '48', '0', '2014-01-10 22:56:32', '0');
INSERT INTO `comments` VALUES ('51', 'Валерия', 'Привет!', '0', '0', '2014-01-10 23:03:59', '0');
INSERT INTO `comments` VALUES ('52', 'Андрей', '3', '50', '0', '2014-01-31 21:57:42', '0');
INSERT INTO `comments` VALUES ('53', 'Андрей', '123', '0', '0', '2014-01-31 22:13:04', '0');
INSERT INTO `comments` VALUES ('54', 'Андрей', '1', '0', '0', '2014-01-31 22:13:36', '0');
INSERT INTO `comments` VALUES ('55', 'Андрей', '1', '51', '0', '2014-01-31 22:26:47', '0');
INSERT INTO `comments` VALUES ('56', 'Андрей', '2', '0', '0', '2014-01-31 22:26:52', '0');
INSERT INTO `comments` VALUES ('57', 'Андрей', '12', '0', '0', '2014-01-31 22:32:38', '0');
INSERT INTO `comments` VALUES ('58', 'Андрей', '123123', '57', '0', '2014-01-31 22:32:47', '0');
INSERT INTO `comments` VALUES ('59', 'Менеджер', 'Тест', '0', '0', '2014-02-09 13:44:32', '0');
INSERT INTO `comments` VALUES ('60', 'Менеджер', '1', '59', '0', '2014-02-09 13:45:16', '0');
INSERT INTO `comments` VALUES ('61', 'Менеджер', '12', '0', '0', '2014-02-09 13:57:15', '0');
INSERT INTO `comments` VALUES ('62', 'Менеджер', '1', '0', '0', '2014-02-09 14:01:50', '1');
INSERT INTO `comments` VALUES ('63', 'Андрей', '21', '0', '0', '2014-02-09 14:02:08', '0');
INSERT INTO `comments` VALUES ('64', 'Менеджер', '1', '61', '0', '2014-02-09 14:02:25', '1');
INSERT INTO `comments` VALUES ('65', 'Менеджер', '1', '0', '0', '2014-02-09 14:04:19', '1');
INSERT INTO `comments` VALUES ('66', 'Андрей', '1', '65', '0', '2014-02-09 14:04:47', '0');
INSERT INTO `comments` VALUES ('67', 'Просто юзер', 'Тест', '0', '0', '2014-02-09 14:05:07', '0');
INSERT INTO `comments` VALUES ('68', '1', '2', '0', '0', '2014-03-17 22:38:22', '0');
INSERT INTO `comments` VALUES ('69', '1', '2', '0', '0', '2014-03-17 22:39:37', '0');
INSERT INTO `comments` VALUES ('70', '12', '2', '0', '0', '2014-04-12 11:32:45', '0');
INSERT INTO `comments` VALUES ('71', '1', '2', '0', '0', '2014-04-12 11:33:12', '0');
INSERT INTO `comments` VALUES ('72', '1', '2', '49', '0', '2014-04-12 11:33:36', '0');
INSERT INTO `comments` VALUES ('73', 'Менеджер', '123', '0', '0', '2014-04-12 11:55:09', '1');
INSERT INTO `comments` VALUES ('74', 'Менеджер', '123', '0', '0', '2014-04-12 11:56:28', '1');
INSERT INTO `comments` VALUES ('75', 'Андрей', '2', '0', '0', '2014-04-12 11:56:38', '0');
INSERT INTO `comments` VALUES ('78', 'конст', '<p>Привет<br />\r\n&nbsp;</p>\r\n', '0', '0', '2018-07-27 10:06:33', '0');
INSERT INTO `comments` VALUES ('79', 'наташа', '<p>Привет всем</p>\r\n', '0', '0', '2018-07-27 10:06:33', '0');
INSERT INTO `comments` VALUES ('80', 'конст', '<p>Привет<br />\r\n&nbsp;</p>\r\n', '0', '0', '2018-07-27 10:26:26', '0');
INSERT INTO `comments` VALUES ('81', 'наташа', '<p>Привет всем</p>\r\n', '0', '0', '2018-07-27 10:26:26', '0');
INSERT INTO `comments` VALUES ('85', 'конст', '<p>Всем привет</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('86', 'наташа', '<p>ВВ</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('87', 'алекс', '<p>оаапр</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('88', 'алекс', '<p>Привет</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('89', 'алекс', '<p>Привет</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('90', 'алекс', '<p>П</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('91', 'алекс', '<p>П</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('92', 'алекс', '<p>ПА</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('93', 'алекс', '<p>п</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('94', 'алекс', '<p>аап</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('95', 'алекс', '<p>Привет всем<br />\r\n&nbsp;</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('96', 'алекс', '<p>Привет</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('97', 'алекс', '<p>Привет</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('98', 'алекс', '<p>Всё отлично<br />\r\n&nbsp;</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');
INSERT INTO `comments` VALUES ('99', 'алекс', '<p>Всё нормально.</p>\r\n', '0', '0', '2018-10-29 15:01:02', '0');

-- ----------------------------
-- Table structure for `forgot`
-- ----------------------------
DROP TABLE IF EXISTS `forgot`;
CREATE TABLE `forgot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `email` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forgot
-- ----------------------------

-- ----------------------------
-- Table structure for `image`
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', 'Products/Product1/11fa01.jpg', '1', '0', 'Product', '4ff123a05e-3', '');
INSERT INTO `image` VALUES ('2', 'Products/Product1/1b67db.jpg', '1', '0', 'Product', '5b4e42f498-4', '');
INSERT INTO `image` VALUES ('3', 'Products/Product1/ec17c1.jpg', '1', '0', 'Product', '188460cc15-5', '');
INSERT INTO `image` VALUES ('4', 'Products/Product1/34ea12.jpg', '1', '0', 'Product', '70d92c3bfc-6', '');
INSERT INTO `image` VALUES ('5', 'Products/Product1/dcce9b.jpg', '1', '0', 'Product', '0592f7bd11-7', '');
INSERT INTO `image` VALUES ('6', 'Products/Product1/14572d.jpg', '1', '0', 'Product', '261cfe5a20-8', '');
INSERT INTO `image` VALUES ('7', 'Products/Product1/1dd2a4.jpg', '1', '0', 'Product', '79333722da-9', '');
INSERT INTO `image` VALUES ('8', 'Products/Product1/02cbc8.jpg', '1', '0', 'Product', '767688dccd-10', '');
INSERT INTO `image` VALUES ('9', 'Products/Product1/0a345c.jpg', '1', '0', 'Product', 'a5cefc959f-11', '');
INSERT INTO `image` VALUES ('10', 'Products/Product1/7879f3.jpg', '1', '0', 'Product', '8bd38db141-12', '');
INSERT INTO `image` VALUES ('11', 'Products/Product1/77762c.jpg', '1', '0', 'Product', '7c2b689073-13', '');
INSERT INTO `image` VALUES ('12', 'Products/Product1/b60a8b.jpg', '1', '0', 'Product', 'ffe0f95ce7-14', '');
INSERT INTO `image` VALUES ('13', 'Products/Product1/e3b5e4.jpg', '1', '0', 'Product', 'de38f16a77-15', '');
INSERT INTO `image` VALUES ('14', 'Products/Product1/a56812.jpg', '1', '0', 'Product', '48de7ee89b-16', '');
INSERT INTO `image` VALUES ('15', 'Products/Product1/81a7f1.jpg', '1', '0', 'Product', '9502b8db32-17', '');
INSERT INTO `image` VALUES ('16', 'Products/Product1/152bdf.jpg', '1', '0', 'Product', 'b4cd86370e-18', '');
INSERT INTO `image` VALUES ('17', 'Products/Product1/807c48.jpg', '1', '0', 'Product', 'e020ec9600-19', '');
INSERT INTO `image` VALUES ('18', 'Products/Product1/25099f.jpg', '1', '0', 'Product', '6e91b18c05-20', '');
INSERT INTO `image` VALUES ('19', 'Products/Product2/1a9e0f.jpg', '2', '0', 'Product', 'ddb700f4b0-3', '');
INSERT INTO `image` VALUES ('20', 'Products/Product2/c86bb2.jpg', '2', '0', 'Product', '843235bd54-4', '');
INSERT INTO `image` VALUES ('21', 'Products/Product2/dcb4d7.jpg', '2', '0', 'Product', '3c5e120b09-5', '');
INSERT INTO `image` VALUES ('22', 'Products/Product2/3d62a1.jpg', '2', '0', 'Product', '776233eb49-6', '');
INSERT INTO `image` VALUES ('23', 'Products/Product2/7917a1.jpg', '2', '0', 'Product', 'b7964eac78-7', '');
INSERT INTO `image` VALUES ('24', 'Products/Product1/6ae81e.jpg', '1', '0', 'Product', '87cb2dcadb-21', '');
INSERT INTO `image` VALUES ('25', 'Products/Product1/d57a98.jpg', '1', '0', 'Product', '31bae60c46-22', '');
INSERT INTO `image` VALUES ('26', 'Products/Product1/e7b319.jpg', '1', '0', 'Product', '52e8fa400d-23', '');
INSERT INTO `image` VALUES ('27', 'Products/Product1/a9f71e.jpg', '1', '0', 'Product', '602dccdb61-24', '');
INSERT INTO `image` VALUES ('28', 'Products/Product1/4ee355.jpg', '1', '0', 'Product', '399b8e1a52-25', '');
INSERT INTO `image` VALUES ('29', 'Products/Product6/802cc3.jpg', '6', '0', 'Product', 'c0cf1e2e8c-2', '');
INSERT INTO `image` VALUES ('30', 'Products/Product6/a7ccce.jpg', '6', '1', 'Product', '00bb8123bf-1', '');
INSERT INTO `image` VALUES ('31', 'Products/Product7/ae1131.jpg', '7', '0', 'Product', 'a8e2b06523-2', '');
INSERT INTO `image` VALUES ('32', 'Products/Product1/f8e457.jpg', '1', '0', 'Product', '496107e1b7-26', '');
INSERT INTO `image` VALUES ('33', 'Products/Product1/2e0f55.jpg', '1', '0', 'Product', '43807fa193-27', '');
INSERT INTO `image` VALUES ('34', 'Products/Product2/cb69f7.jpg', '2', '0', 'Product', '2b906de7df-8', '');
INSERT INTO `image` VALUES ('35', 'Products/Product8/deb2f9.jpg', '8', '0', 'Product', 'db527169a1-3', '');
INSERT INTO `image` VALUES ('36', 'Products/Product3/2b26d1.jpg', '3', '0', 'Product', '0000458ae2-2', '');
INSERT INTO `image` VALUES ('37', 'Products/Product4/115a09.png', '4', '0', 'Product', 'cd6ae798d4-3', '');
INSERT INTO `image` VALUES ('38', 'Products/Product5/b9e2f9.jpg', '5', '0', 'Product', 'c3221927b6-3', '');
INSERT INTO `image` VALUES ('39', 'Products/Product2/08ba07.jpg', '2', '0', 'Product', 'a3db7436bf-2', '');
INSERT INTO `image` VALUES ('40', 'Products/Product1/8f8223.jpg', '1', '0', 'Product', '399b4b09bb-2', '');
INSERT INTO `image` VALUES ('41', 'Products/Product2/72834b.jpg', '2', '1', 'Product', '118cac0e3d-1', '');
INSERT INTO `image` VALUES ('42', 'Products/Product1/75f56a.jpg', '1', '1', 'Product', 'a6ac08eb59-1', '');
INSERT INTO `image` VALUES ('43', 'Products/Product7/fd4b0b.jpg', '7', '1', 'Product', '55b0e4080b-1', '');
INSERT INTO `image` VALUES ('44', 'Products/Product3/0b24b1.png', '3', '1', 'Product', 'e432728b1b-1', '');
INSERT INTO `image` VALUES ('45', 'Products/Product4/d894c9.jpg', '4', '0', 'Product', '56e1d0b7ae-2', '');
INSERT INTO `image` VALUES ('46', 'Products/Product5/e53de5.jpg', '5', '0', 'Product', '11b277c378-2', '');
INSERT INTO `image` VALUES ('47', 'Products/Product5/be281c.jpg', '5', '1', 'Product', '7706685800-1', '');
INSERT INTO `image` VALUES ('48', 'Products/Product4/374a3b.jpg', '4', '1', 'Product', '203364fd1b-1', '');
INSERT INTO `image` VALUES ('49', 'Products/Product8/826d3e.png', '8', '0', 'Product', '6fe592c705-4', '');
INSERT INTO `image` VALUES ('50', 'Logos/Logo19/4e9d89.png', '19', '0', 'Logo', 'd6830cd185-2', '');
INSERT INTO `image` VALUES ('51', 'Logos/Logo19/ad1e42.jpg', '19', '1', 'Logo', '83e44a957b-1', '');
INSERT INTO `image` VALUES ('52', 'Logos/Logo9/95388d.png', '9', '1', 'Logo', '9627773a2b-1', '');
INSERT INTO `image` VALUES ('53', 'Products/Product8/03fa31.jpg', '8', '0', 'Product', '21e5f70d1d-5', '');
INSERT INTO `image` VALUES ('54', 'Products/Product8/a240db.jpg', '8', '0', 'Product', '5efc5798b0-2', '');
INSERT INTO `image` VALUES ('55', 'Products/Product8/b30aca.jpg', '8', '1', 'Product', '8b01f9cba5-1', '');
INSERT INTO `image` VALUES ('56', 'Logos/Logo3/cec69c.jpg', '3', '0', 'Logo', 'b303b900f9-2', '');
INSERT INTO `image` VALUES ('57', 'Logos/Logo3/8e1316.jpg', '3', '1', 'Logo', '51fb9bca56-1', '');

-- ----------------------------
-- Table structure for `logo`
-- ----------------------------
DROP TABLE IF EXISTS `logo`;
CREATE TABLE `logo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logo
-- ----------------------------
INSERT INTO `logo` VALUES ('3', 'apple', null);
INSERT INTO `logo` VALUES ('9', 'dell', null);
INSERT INTO `logo` VALUES ('19', 'sony', 'sony.jpg');

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1524224397');
INSERT INTO `migration` VALUES ('m140622_111540_create_image_table', '1524224402');
INSERT INTO `migration` VALUES ('m140622_111545_add_name_to_image_table', '1524224403');

-- ----------------------------
-- Table structure for `options`
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES ('1', 'course', 'Курс', '23');
INSERT INTO `options` VALUES ('2', 'email', 'Контактный email', 'admin@catalog.loc');
INSERT INTO `options` VALUES ('3', 'pagination', 'Кол-во товаров на страницу', '6');
INSERT INTO `options` VALUES ('4', 'site_title', 'Название сайта', 'Webformyself Каталог яблочной продукции');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '2018-03-16 10:45:34', '2018-03-16 10:45:34', '2', '76', '0', 'Андрей', 'iwanow@mail.ru', '+375298675678', 'Огарёва 12');
INSERT INTO `order` VALUES ('2', '2018-03-16 10:55:10', '2018-03-16 10:55:10', '1', '0', '0', 'Андрей', 'iwanow@mail.ru', '+375298675678', 'Огарёва 13');
INSERT INTO `order` VALUES ('3', '2018-03-16 11:16:04', '2018-03-16 11:16:04', '1', '100', '0', 'Андрей', 'iwanow@mail.ru', '+375298675678', 'Огарёва 12');
INSERT INTO `order` VALUES ('4', '2018-03-19 09:51:26', '2018-03-19 09:51:26', '3', '168', '0', 'Андрей', 'iwanow@mail.ru', '+375298675678', 'Огарёва 12');
INSERT INTO `order` VALUES ('5', '2018-07-12 15:48:29', '2018-07-12 15:48:29', '7', '161', '0', 'константин', 'spir@mail.ru', '34567890', 'макаёнко 9');
INSERT INTO `order` VALUES ('6', '2018-07-20 15:55:31', '2018-07-20 15:55:31', '1', '25', '0', 'константин', 'spir@mail.ru', '34567890', 'макаёнко 9');
INSERT INTO `order` VALUES ('7', '2018-07-20 16:17:00', '2018-07-20 16:17:00', '1', '25', '0', 'константин', 'spir@mail.ru', '34567890', 'макаёнко 9');
INSERT INTO `order` VALUES ('8', '2018-09-26 15:31:06', '2018-09-26 15:31:06', '1', '10', '0', 'константин', 'konstanti.spirin@mail.ru', '213231231', 'макаёнко 9');
INSERT INTO `order` VALUES ('9', '2018-09-26 15:57:29', '2018-09-26 15:57:29', '1', '10', '0', 'константин', 'spir@mail.ru', '34567890', 'Макаёнко 9');
INSERT INTO `order` VALUES ('10', '2018-09-26 15:57:42', '2018-09-26 15:57:42', '1', '10', '0', 'константин', 'spir@mail.ru', '34567890', 'Макаёнко 9');
INSERT INTO `order` VALUES ('11', '2018-09-27 11:17:24', '2018-09-27 11:17:24', '2', '20', '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9');
INSERT INTO `order` VALUES ('12', '2018-09-27 11:31:32', '2018-09-27 11:31:32', '3', '30', '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9');
INSERT INTO `order` VALUES ('13', '2018-09-27 11:54:09', '2018-09-27 11:54:09', '4', '40', '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9');
INSERT INTO `order` VALUES ('14', '2018-09-27 11:55:14', '2018-09-27 11:55:14', '4', '40', '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9');
INSERT INTO `order` VALUES ('15', '2018-09-27 11:58:34', '2018-09-27 11:58:34', '4', '40', '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'макаёнко 9');
INSERT INTO `order` VALUES ('16', '2018-09-27 11:59:28', '2018-09-27 11:59:28', '1', '56', '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'макаёнко 9');
INSERT INTO `order` VALUES ('17', '2018-09-27 14:03:31', '2018-09-27 14:03:31', '2', '66', '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9');
INSERT INTO `order` VALUES ('18', '2018-10-10 11:55:31', '2018-10-10 11:55:31', '1', '56', '0', 'константин', 'konstanti.spirin@mail.ru', '4567890', 'Макаёнко 9');
INSERT INTO `order` VALUES ('19', '2018-10-17 12:27:26', '2018-10-17 12:27:26', '2', '140', '0', 'константин', 'spirin.costia@yande.ru', '4567890', 'Макаёнко 9');

-- ----------------------------
-- Table structure for `order_items`
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES ('1', '1', '2', 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', '56', '1', '56');
INSERT INTO `order_items` VALUES ('2', '1', '3', 'Блуза Mango 53005681-05 M Бежевая', '20', '1', '20');
INSERT INTO `order_items` VALUES ('3', '2', '5', 'Блузка Kira Plastinina 17-16-17453-SM-29 S', '0', '1', '0');
INSERT INTO `order_items` VALUES ('4', '3', '6', 'Кардиган Levi\'s Icy Grey Heather M', '100', '1', '100');
INSERT INTO `order_items` VALUES ('5', '4', '2', 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', '56', '3', '168');
INSERT INTO `order_items` VALUES ('6', '5', '8', 'sven mk155', '25', '3', '75');
INSERT INTO `order_items` VALUES ('7', '5', '2', 'Established Fact', '56', '1', '56');
INSERT INTO `order_items` VALUES ('8', '5', '1', 'Various Versions', '10', '3', '30');
INSERT INTO `order_items` VALUES ('9', '6', '8', 'sven mk155', '25', '1', '25');
INSERT INTO `order_items` VALUES ('10', '7', '8', 'sven mk155', '25', '1', '25');
INSERT INTO `order_items` VALUES ('11', '8', '1', 'Various Versions', '10', '1', '10');
INSERT INTO `order_items` VALUES ('12', '9', '1', 'Various Versions', '10', '1', '10');
INSERT INTO `order_items` VALUES ('13', '10', '1', 'Various Versions', '10', '1', '10');
INSERT INTO `order_items` VALUES ('14', '11', '1', 'Various Versions', '10', '2', '20');
INSERT INTO `order_items` VALUES ('15', '12', '1', 'Various Versions', '10', '3', '30');
INSERT INTO `order_items` VALUES ('16', '13', '1', 'Various Versions', '10', '4', '40');
INSERT INTO `order_items` VALUES ('17', '14', '1', 'Various Versions', '10', '4', '40');
INSERT INTO `order_items` VALUES ('18', '15', '1', 'Various Versions', '10', '4', '40');
INSERT INTO `order_items` VALUES ('19', '16', '2', 'Established Fact', '56', '1', '56');
INSERT INTO `order_items` VALUES ('20', '17', '2', 'Established Fact', '56', '1', '56');
INSERT INTO `order_items` VALUES ('21', '17', '1', 'Various Versions', '10', '1', '10');
INSERT INTO `order_items` VALUES ('22', '18', '2', 'Established Fact', '56', '1', '56');
INSERT INTO `order_items` VALUES ('23', '19', '4', 'Established Fact', '70', '2', '140');

-- ----------------------------
-- Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `page_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('76', 'Главная', 'index', 'Описание главной', 'ключевики главной', 'Текст главной страницы', '1');
INSERT INTO `pages` VALUES ('77', 'О компании', 'about', 'Описание о компании', 'ключевики о компании', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, laudantium cum eos quia amet voluptates odit rem molestiae corporis architecto labore iure sed id? Officiis, esse, iure, consectetur tenetur labore magni quibusdam repudiandae beatae illum quidem optio repellendus deleniti adipisci mollitia nostrum ea earum voluptas ullam ex odio deserunt fugit dolore facilis qui sit! Fugit, ex, a, atque, deleniti repudiandae voluptatibus magni perspiciatis maxime dignissimos omnis iusto est doloribus doloremque repellat corporis expedita explicabo? Delectus, tempore, molestias ad officia quaerat velit vel veniam natus voluptatum autem quod veritatis harum ut consectetur tempora rem eveniet cum assumenda dolor ullam blanditiis dicta.</p>\r\n<p>Quia, dolores, culpa, incidunt nostrum nemo itaque error facere quod labore accusantium vel eos. Sint, odio, eligendi magni ut ullam aliquam qui iusto voluptatum a consequatur assumenda ea repudiandae maiores amet dignissimos nesciunt eveniet culpa cumque debitis in incidunt ipsum excepturi labore consectetur explicabo quis expedita perspiciatis fugit officiis distinctio? Numquam, blanditiis, ut, earum explicabo placeat repellat architecto provident a ex voluptas odit labore itaque ad! Voluptatibus, molestiae, eaque, sapiente, libero aspernatur non voluptate dolor cupiditate beatae ratione fugit eligendi magnam nesciunt quos reprehenderit nobis necessitatibus soluta ullam repellat possimus dicta consectetur porro quas maxime facere optio consequatur iusto placeat?</p>\r\n<p>Sint, magni, odit repudiandae ducimus velit inventore nihil veniam accusantium natus dolore non dolor totam quidem perspiciatis facere labore cupiditate vitae. Nisi, tempore, corporis, voluptatibus, delectus non architecto atque vel blanditiis sunt illum possimus eveniet veritatis dolorum dignissimos hic! Vero, dolorem eveniet quis blanditiis odit in numquam maxime unde voluptates non asperiores natus quasi. Fugiat, nobis quibusdam rem ullam reiciendis odio sint voluptate placeat impedit non quam odit est cupiditate omnis tempore reprehenderit cum inventore veniam commodi voluptates minima illum dolorum ex saepe quo deleniti quae a sunt ratione tenetur aliquid itaque corporis laborum facilis architecto voluptatem iusto. Officia, vero!</p>', '2');
INSERT INTO `pages` VALUES ('78', 'Контакты', 'contacts', 'Описание Контакты', 'ключевики контакты', 'Текст страницы Контакты', '3');

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------

-- ----------------------------
-- Table structure for `pozel`
-- ----------------------------
DROP TABLE IF EXISTS `pozel`;
CREATE TABLE `pozel` (
  `naim` text NOT NULL,
  `pow` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pozel
-- ----------------------------
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('aleks', null);
INSERT INTO `pozel` VALUES ('sven+mk390', null);
INSERT INTO `pozel` VALUES ('NINA', null);
INSERT INTO `pozel` VALUES ('Various Versions', null);
INSERT INTO `pozel` VALUES ('Various Versions', null);
INSERT INTO `pozel` VALUES ('Various Versions', null);
INSERT INTO `pozel` VALUES ('Various Versions', null);
INSERT INTO `pozel` VALUES ('sven mk155', null);

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '4', 'MK-490', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Исполнение</td>\r\n			<td>Настольный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Кнопка отключения звука</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Звук</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Соотношение &quot;сигнал/шум&quot;</td>\r\n			<td>58 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частотный диапазон</td>\r\n			<td>30-16000 Гц</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Подключение</td>\r\n			<td>Проводное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.5mm Mini-Jack</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Габариты</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина</td>\r\n			<td>24 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>146 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '10', '', '', '12.jpg', '1', '0', '0');
INSERT INTO `product` VALUES ('2', '4', 'TRUST Mico USB Microphone (20378)', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>2 года</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Исполнение</td>\r\n			<td>Настольный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Совместимость</td>\r\n			<td>MacOS, Windows</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип сенсора</td>\r\n			<td>Конденсатор</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Направленность</td>\r\n			<td>Всенаправленный</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Звук</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Соотношение &quot;сигнал/шум&quot;</td>\r\n			<td>58 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Сопротивление</td>\r\n			<td>2200 Ом</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частотный диапазон</td>\r\n			<td>50-16000 Гц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Чувствительность</td>\r\n			<td>45 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Уровень звукового давления</td>\r\n			<td>115 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Подключение</td>\r\n			<td>Проводное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.5mm Mini-Jack</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина кабеля</td>\r\n			<td>1.8 м</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Габариты</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Высота</td>\r\n			<td>13 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ширина</td>\r\n			<td>3.5 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина</td>\r\n			<td>4.3 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>150 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '56', '', '', '12bg.jpg', '1', '0', '0');
INSERT INTO `product` VALUES ('3', '9', 'Vostro 3667-0765', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Windows 10 Домашняя x64</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Процессор</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Производитель процессора</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Модель процессора</td>\r\n			<td>Core i3-6100</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тактовая частота</td>\r\n			<td>3.7 ГГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Кэш L3</td>\r\n			<td>3 Мб</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Оперативная память</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объем</td>\r\n			<td>16 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип оперативной памяти</td>\r\n			<td>DDR4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частота памяти</td>\r\n			<td>2133 МГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Накопитель</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип накопителя</td>\r\n			<td>HDD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем накопителя</td>\r\n			<td>1 Тб</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Графическая система</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип видеокарты</td>\r\n			<td>Интегрированная</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Производитель видеокарты</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Модель видеокарты</td>\r\n			<td>Intel HD Graphics 530</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Встроенное оборудование</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth-адаптер</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wi-Fi</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Картридер</td>\r\n			<td>SD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LAN-адаптер</td>\r\n			<td>100/10 Мбит/с</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDMI</td>\r\n			<td>1 шт.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>6 шт.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB 2.0</td>\r\n			<td>4 шт.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB 3.0</td>\r\n			<td>2 шт.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LAN разъем (RJ-45)</td>\r\n			<td>1 шт.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для микрофона</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Корпус</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Типоразмер корпуса</td>\r\n			<td>Mini-Tower</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Комплектация</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Клавиатура</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Мышь</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Габариты и вес</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Высота</td>\r\n			<td>35.3 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Глубина</td>\r\n			<td>29.4 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ширина</td>\r\n			<td>15.4 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>5.9 кг</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '20', '', '', '10.jpg', '1', '1', '0');
INSERT INTO `product` VALUES ('4', '19', 'SONY Xperia XA1 DS Black', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Общие</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Форм-фактор</td>\r\n			<td>Моноблок</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия ОС на начало продаж</td>\r\n			<td>Android 7.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка 2-х SIM-карт</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Процессор</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Производитель</td>\r\n			<td>MediaTek</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>MediaTek Helio P20 MT6757</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частота</td>\r\n			<td>2.3 ГГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Графический ускоритель</td>\r\n			<td>Mali-880 MP2</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Память</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Карты памяти</td>\r\n			<td>microSD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объем карт памяти</td>\r\n			<td>256 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Экран</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>S-IPS, многоцветный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Кол-во цветов</td>\r\n			<td>16777216</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение</td>\r\n			<td>1280x720 Пикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Сенсорный</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Мультитач</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Стандарты сотовой связи</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 2G-сетях</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарты GSM</td>\r\n			<td>1800, 900, 1900</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 3G-сетях</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 4G(LTE)-сетях</td>\r\n			<td>Есть&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Коммуникации и связь</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wi-Fi</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>ГЛОНАСС, GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Мультимедиа</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка аудио</td>\r\n			<td>MP3, WMA, WAV, Ogg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка видео</td>\r\n			<td>MP4, AVI, 3GP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FM-тюнер</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Камера</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение</td>\r\n			<td>23 Мпикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Встроенная вспышка</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автофокус</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение фронтальной камеры</td>\r\n			<td>8 Мпикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Экранная клавиатура</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Голосовые команды</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Датчики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчик приближения</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчик освещенности</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Звонки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MP3 на звонке</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Громкая связь</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Органайзер</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Календарь</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Калькулятор</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Секундомер</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Будильник</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диктофон</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Разъемы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсный разъем</td>\r\n			<td>Micro USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Питание</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип аккумулятора</td>\r\n			<td>Li-Ion</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Емкость аккумулятора (мА*ч)</td>\r\n			<td>2300 мА*ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Комплектация</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядное устройство</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Габариты и вес</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Высота</td>\r\n			<td>14.5 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ширина</td>\r\n			<td>6.7 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Глубина</td>\r\n			<td>0.8 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>143 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '70', '', '', '1.jpg', '1', '0', '1');
INSERT INTO `product` VALUES ('5', '19', 'Смартфон SONY Xperia XA2 Dual Silver', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Общие</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Форм-фактор</td>\r\n			<td>Моноблок</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Материал корпуса</td>\r\n			<td>Металл, Пластик</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия ОС на начало продаж</td>\r\n			<td>8.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип SIM-карты</td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка 2-х SIM-карт</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Процессор</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Производитель</td>\r\n			<td>Qualcomm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>Snapdragon 630</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частота</td>\r\n			<td>2.2 ГГц</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Графический ускоритель</td>\r\n			<td>Adreno 508</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Память</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Карты памяти</td>\r\n			<td>microSDHC, microSDXC, microSD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Максимальный объем карт памяти</td>\r\n			<td>256 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Экран</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип</td>\r\n			<td>IPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ</td>\r\n			<td>5.2&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Кол-во цветов</td>\r\n			<td>16 млн</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение</td>\r\n			<td>1920x1080 Пикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Сенсорный</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Мультитач</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Стандарты сотовой связи</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 2G-сетях</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарты GSM</td>\r\n			<td>1800, 850, 900, 1900</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 3G-сетях</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Работа в 4G(LTE)-сетях</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Коммуникации и связь</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wi-Fi</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Стандарт Wi-Fi</td>\r\n			<td>IEEE 802.11b, IEEE 802.11a, IEEE 802.11g, IEEE 802.11n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия Bluetooth</td>\r\n			<td>5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A2DP</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация</td>\r\n			<td>ГЛОНАСС, GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Модуль NFC</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Мультимедиа</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество динамиков</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка аудио</td>\r\n			<td>MP3, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка видео</td>\r\n			<td>AVI, MKV, 3GP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FM-тюнер</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Камера</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Двойная камера</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение</td>\r\n			<td>23 Мпикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Встроенная вспышка</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видео</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автофокус</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разрешение фронтальной камеры</td>\r\n			<td>8 Мпикс</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Управление</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Экранная клавиатура</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>QWERTY-клавиатура</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Датчики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Акселерометр</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчик приближения</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчик освещенности</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Геомагнитный датчик (цифровой компас)</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Сканер отпечатков пальцев</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Звонки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MP3 на звонке</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Громкая связь</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Органайзер</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Календарь</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Калькулятор</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Секундомер</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Будильник</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Разъемы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсный разъем</td>\r\n			<td>Micro USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Питание</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип аккумулятора</td>\r\n			<td>Li-Ion</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Емкость аккумулятора (мА*ч)</td>\r\n			<td>3300 мА*ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Время работы в режиме разговора</td>\r\n			<td>39 ч</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Комплектация</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Кабель для связи с ПК</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Зарядное устройство</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Габариты и вес</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Высота</td>\r\n			<td>0.97 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ширина</td>\r\n			<td>7 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Глубина</td>\r\n			<td>14.2 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>171 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Серебристый&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '20', '', '', '1bg.jpg', '1', '0', '0');
INSERT INTO `product` VALUES ('6', '4', 'sven mk150', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Исполнение</td>\r\n			<td>Прищепка</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Звук</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Соотношение &quot;сигнал/шум&quot;</td>\r\n			<td>58 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частотный диапазон</td>\r\n			<td>50-16000 Гц</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Подключение</td>\r\n			<td>Проводное&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.5mm Mini-Jack</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина кабеля</td>\r\n			<td>1.8 м</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Габариты</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>23 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '23', '', '', 'sven mk150.jpg', '0', '0', '0');
INSERT INTO `product` VALUES ('7', '4', 'sven mk200', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Исполнение</td>\r\n			<td>Прищепка</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Звук</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Соотношение &quot;сигнал/шум&quot;</td>\r\n			<td>58 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частотный диапазон</td>\r\n			<td>50-16000 Гц</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Подключение</td>\r\n			<td>Проводное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.5mm Mini-Jack</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина кабеля</td>\r\n			<td>1.8 м</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Габариты</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>23 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', '', '', 'sven mk390.jpg', '0', '0', '0');
INSERT INTO `product` VALUES ('8', '4', 'OKLICK MP-M007', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Страна</td>\r\n			<td>Китай</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Гарантия производителя</td>\r\n			<td>1 год</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Основные характеристики</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Исполнение</td>\r\n			<td>Прищепка</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Звук</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Соотношение &quot;сигнал/шум&quot;</td>\r\n			<td>58 дБ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Частотный диапазон</td>\r\n			<td>50-16000 Гц</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Интерфейсы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Подключение</td>\r\n			<td>Проводное</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.5mm Mini-Jack</td>\r\n			<td>Есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Длина кабеля</td>\r\n			<td>1.8 м</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">Габариты</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Высота</td>\r\n			<td>4.9 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ширина</td>\r\n			<td>3.4 см</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Вес</td>\r\n			<td>23 г</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Белый</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '25', '', '', 'sven mk155.jpg', '0', '0', '0');

-- ----------------------------
-- Table structure for `raspis`
-- ----------------------------
DROP TABLE IF EXISTS `raspis`;
CREATE TABLE `raspis` (
  `email` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of raspis
-- ----------------------------
INSERT INTO `raspis` VALUES ('spirin.costia@yandex.ru');

-- ----------------------------
-- Table structure for `sert`
-- ----------------------------
DROP TABLE IF EXISTS `sert`;
CREATE TABLE `sert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sert
-- ----------------------------
INSERT INTO `sert` VALUES ('1', 'sert1', 'sertifikat-1', '20', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '$2y$13$5ZiGLH2I28GZOeZgSwGz6uM9kOwgBgl.w6A4uo9LZpIPzAdJSZrMK', 'Au5_wrqRLFIO0CSPfm2J0CQUWb6YD5Py');
