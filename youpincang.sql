/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : youpincang

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-06-28 18:42:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态，0禁用，1启用',
  `openid` varchar(64) NOT NULL DEFAULT '' COMMENT '管理员微信号',
  `last_login` int(32) NOT NULL DEFAULT '0',
  `last_ip` varchar(32) NOT NULL DEFAULT '',
  `role_id` int(10) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `login_num` int(32) NOT NULL DEFAULT '0',
  `create_by` varchar(16) NOT NULL DEFAULT '' COMMENT '创建者',
  `created` int(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', 'ohs_4sgyk31vkfKLHy2wg5HrrGeo', '1467100204', '127.0.0.1', '1', '496', '', '1360085491');

-- ----------------------------
-- Table structure for `index_image`
-- ----------------------------
DROP TABLE IF EXISTS `index_image`;
CREATE TABLE `index_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 大图，1小图',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(512) NOT NULL DEFAULT '' COMMENT '地址',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='首页图片表';

-- ----------------------------
-- Records of index_image
-- ----------------------------
INSERT INTO `index_image` VALUES ('1', '0', 'asdfasd', '/upload/1606/2817/28/577243491f43a.png', 'sfasd', '0', '1467105928');
INSERT INTO `index_image` VALUES ('2', '0', 'asdfasd', '/upload/1606/2817/28/5772435536236.jpg', 'sdfsd', '3', '1467105940');
INSERT INTO `index_image` VALUES ('3', '1', '生活百货', '/upload/1606/2817/29/57724393567ff.jpg', '/news/4.html', '1', '1467106239');
INSERT INTO `index_image` VALUES ('4', '1', '饰品系列', '/upload/1606/2817/35/577244c77181e.jpg', '', '0', '1467106510');
INSERT INTO `index_image` VALUES ('5', '1', '创意家居', '/upload/1606/2817/36/5772450fc2d70.jpg', '', '0', '1467106584');
INSERT INTO `index_image` VALUES ('6', '1', '健康美容', '/upload/1606/2817/37/5772453e9fd98.jpg', '', '0', '1467106627');
INSERT INTO `index_image` VALUES ('7', '1', '文体礼品', '/upload/1606/2817/37/5772454c9f8e8.jpg', '', '0', '1467106641');
INSERT INTO `index_image` VALUES ('8', '1', '季节性产品', '/upload/1606/2817/37/5772455879646.jpg', '', '0', '1467106655');
INSERT INTO `index_image` VALUES ('9', '1', '精品包饰', '/upload/1606/2817/37/57724565c09f6.jpg', '', '0', '1467106681');
INSERT INTO `index_image` VALUES ('10', '1', '数码配件', '/upload/1606/2817/38/5772457e83335.jpg', '', '0', '1467106690');
INSERT INTO `index_image` VALUES ('11', '1', '饰品系列', '/upload/1606/2817/38/57724587c9e31.jpg', '', '0', '1467106701');
INSERT INTO `index_image` VALUES ('12', '1', '纺织品系列', '/upload/1606/2817/38/57724592d48a0.jpg', '', '0', '1467106712');
INSERT INTO `index_image` VALUES ('13', '0', '', '/upload/1606/2817/49/577248103ff81.png', '', '0', '1467107345');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '标题',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 普通网页，1 图片列表 2 图片轮播',
  `summary` varchar(512) NOT NULL DEFAULT '' COMMENT '摘要',
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类',
  `image` longtext COMMENT '图片地址',
  `content` longtext,
  `view_count` smallint(6) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否热门',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '发布时间',
  `seo_title` varchar(64) NOT NULL DEFAULT '' COMMENT '标题',
  `seo_keyword` varchar(512) NOT NULL DEFAULT '' COMMENT '关键词',
  `seo_description` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('2', '品牌简介', '0', '', '5', '', '&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;0px&#59;padding:&#32;0px&#59;border:&#32;0px&#59;color:&#32;rgb(51,&#32;51,&#32;51)&#59;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;font&#45;size:&#32;12px&#59;white&#45;space:&#32;normal&#59;line&#45;height:&#32;24px&#59;text&#45;indent:&#32;28px&#59;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#34;&#62;MINISO名創優品是日本快时尚设计师品牌，总部位于日本东京，由日本设计师三宅顺也和中国青年企业家叶国富先生共同创办，三宅顺也先生同时兼任首席设计师。MINISO名創優品，是“时尚休闲生活优品消费”领域的倡导者。&#60;&#47;p&#62;&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;0px&#59;padding:&#32;0px&#59;border:&#32;0px&#59;color:&#32;rgb(51,&#32;51,&#32;51)&#59;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;font&#45;size:&#32;12px&#59;white&#45;space:&#32;normal&#59;line&#45;height:&#32;24px&#59;text&#45;indent:&#32;28px&#59;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#34;&#62;MINISO名創優品奉行“简约、自然、富质感”的生活哲学和“自然、自在，回归本质”的品牌主张，以每七天上一批炫酷新款、走低价新锐路线、定位快时尚休闲百货连锁的品牌核心优势赢得消费者们的亲睐和热捧，在时尚消费前沿市场先后刮起“生活优品消费”之风。2013年由赛曼基金携手中国广州财团引进，由广东葆扬投资管理有限公司运营，MINISO名創優品开始进驻中国，全面布局在华时尚休闲百货市场。&#60;&#47;p&#62;&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;0px&#59;padding:&#32;0px&#59;border:&#32;0px&#59;color:&#32;rgb(51,&#32;51,&#32;51)&#59;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;font&#45;size:&#32;12px&#59;white&#45;space:&#32;normal&#59;line&#45;height:&#32;24px&#59;text&#45;indent:&#32;28px&#59;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#34;&#62;&#60;span&#32;style&#61;&#34;font&#45;size:&#32;12px&#59;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#34;&#62;MINISO&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;size:&#32;12px&#59;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#34;&#62;名創優品自2013年正式走出日本后，积极开拓国际市场，两年多时间全球开店超1400家，2015年营收突破50亿元，预计2016年营收将达到100亿元，被无印良品、优衣库和屈臣氏等列为“全球最可怕的竞争对手”。在中国市场，MINISO名創優品也被苹果中国经销商视为“第一敌人”。目前，MINISO名創優品店铺已覆盖阿联酋迪拜、加拿大、美国、澳大利亚、墨西哥、菲律宾、新加坡、韩国、俄罗斯、马来西亚、泰国、缅甸、蒙古和中国香港、中国台湾、&#60;&#47;span&#62;&#38;nbsp&#59;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#34;&#62;北京、上海、广州&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#59;text&#45;indent:&#32;28px&#34;&#62;等全球&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#59;text&#45;indent:&#32;28px&#34;&#62;200&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#59;text&#45;indent:&#32;28px&#34;&#62;多个国家和地区，平均每月开店&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#59;text&#45;indent:&#32;28px&#34;&#62;80&#45;100&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#59;text&#45;indent:&#32;28px&#34;&#62;家，预计&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#59;text&#45;indent:&#32;28px&#34;&#62;2020&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#59;text&#45;indent:&#32;28px&#34;&#62;年在全球开店&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#59;text&#45;indent:&#32;28px&#34;&#62;6000&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#59;text&#45;indent:&#32;28px&#34;&#62;家，营收突破&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#59;text&#45;indent:&#32;28px&#34;&#62;600&#60;&#47;span&#62;&#60;span&#32;style&#61;&#34;font&#45;family:&#32;微软雅黑,&#32;sans&#45;serif&#59;font&#45;size:&#32;12px&#59;text&#45;indent:&#32;28px&#34;&#62;亿。&#60;&#47;span&#62;&#60;&#47;p&#62;&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;0px&#59;padding:&#32;0px&#59;border:&#32;0px&#59;color:&#32;rgb(51,&#32;51,&#32;51)&#59;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;font&#45;size:&#32;12px&#59;white&#45;space:&#32;normal&#59;line&#45;height:&#32;24px&#59;text&#45;indent:&#32;28px&#59;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#34;&#62;MINISO名創優品一直倡导优质生活理念，并秉承“尊重消费者”的品牌精神，致力于为消费者提供真正&#34;优质、创意、低价&#34;的产品。MINISO名創優品的产品简约自然，品质优良且紧跟全球时尚潮流，产品价格大部分在10&#45;29元间，深受18到35岁的小资、白领等主流消费人群的喜爱。&#60;&#47;p&#62;&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;0px&#59;padding:&#32;0px&#59;border:&#32;0px&#59;color:&#32;rgb(51,&#32;51,&#32;51)&#59;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;font&#45;size:&#32;12px&#59;white&#45;space:&#32;normal&#59;line&#45;height:&#32;24px&#59;text&#45;indent:&#32;28px&#59;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#34;&#62;MINISO名創優品同时开创了新型的时尚休闲生活方式集合店，与餐饮、快时尚服饰、娱乐共同成为百货公司和购物中心的主力店铺，并在实现优质生活百货的&#34;快时尚&#34;消费主张的同时，着力于营造全新的时尚休闲购物氛围，让顾客在消费中体验快乐、时尚、健康的生活方式。&#38;nbsp&#59;&#60;&#47;p&#62;&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;0px&#59;padding:&#32;0px&#59;border:&#32;0px&#59;color:&#32;rgb(51,&#32;51,&#32;51)&#59;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;font&#45;size:&#32;12px&#59;white&#45;space:&#32;normal&#59;line&#45;height:&#32;24px&#59;text&#45;indent:&#32;28px&#59;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#34;&#62;MINISO名創優品始终将优化商品结构和商品管理列为首要条件，坚持从世界各地选取合适的优质素材，其中超过80％的产品设计源于日本、韩国、瑞典、丹麦、新加坡、马来西亚及中国等地。在坚持优质产品和时尚创意的同时，MINISO名創優品也极其注重顾客购物体验，致力于优质服务文化的打造。MINISO名創優品在全球的店面大多选取繁华人气商圈，全力打造一个贴近民生并具有时尚调性的休闲百货品牌，为消费者带来更多更好的购物体验，将MINISO名創優品休闲、时尚、超值、优质、创意的品牌调性在体验层面完美体现。&#60;&#47;p&#62;&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;0px&#59;padding:&#32;0px&#59;border:&#32;0px&#59;color:&#32;rgb(51,&#32;51,&#32;51)&#59;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;font&#45;size:&#32;12px&#59;white&#45;space:&#32;normal&#59;text&#45;align:&#32;center&#59;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#34;&#62;&#38;nbsp&#59;&#60;img&#32;alt&#61;&#34;&#34;&#32;width&#61;&#34;700&#34;&#32;height&#61;&#34;1294&#34;&#32;src&#61;&#34;&#47;ueditor&#47;php&#47;upload&#47;image&#47;20160627&#47;1467013740101296.jpg&#34;&#32;style&#61;&#34;&#59;padding:&#32;0px&#59;border:&#32;none&#34;&#47;&#62;&#60;&#47;p&#62;&#60;p&#62;&#60;br&#47;&#62;&#60;&#47;p&#62;', '10', '0', '1467013788', '', '', '');
INSERT INTO `news` VALUES ('3', '品牌诞生', '0', '', '5', '', '&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;0px&#59;padding:&#32;0px&#59;border:&#32;0px&#59;color:&#32;rgb(51,&#32;51,&#32;51)&#59;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;font&#45;size:&#32;12px&#59;white&#45;space:&#32;normal&#59;line&#45;height:&#32;30px&#59;text&#45;align:&#32;center&#59;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#34;&#62;&#38;nbsp&#59;&#60;&#47;p&#62;&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;5px&#59;padding:&#32;0px&#59;border:&#32;0px&#59;color:&#32;rgb(51,&#32;51,&#32;51)&#59;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;font&#45;size:&#32;12px&#59;white&#45;space:&#32;normal&#59;line&#45;height:&#32;22px&#59;text&#45;align:&#32;center&#59;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#34;&#62;&#60;img&#32;src&#61;&#34;&#47;ueditor&#47;php&#47;upload&#47;image&#47;20160627&#47;1467014985237621.jpg&#34;&#32;alt&#61;&#34;&#34;&#32;style&#61;&#34;&#59;padding:&#32;0px&#59;border:&#32;none&#34;&#47;&#62;&#60;&#47;p&#62;&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;0px&#59;padding:&#32;0px&#59;border:&#32;0px&#34;&#62;随着世界经济的空前繁荣，一方面来自欧美的奢侈品牌受到消费者的盲目追捧&#59;&#32;而另一方面，仿冒低质的商品充斥着市场。这两方面致使民众的消费方式呈现出一种两极分化的现象。作为对这种盛行局面的反思与批判,MINISO名創優品诞生了！&#60;&#47;p&#62;&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;0px&#59;padding:&#32;0px&#59;border:&#32;0px&#34;&#62;MINISO名創優品注重品质对品牌的真正价值，同时在生活和改善生活的物品间维持合理的平衡，成为全球生活优品消费市场的开创者。&#60;&#47;p&#62;&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;margin&#45;bottom:&#32;0px&#59;padding:&#32;0px&#59;border:&#32;0px&#59;color:&#32;rgb(51,&#32;51,&#32;51)&#59;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;font&#45;size:&#32;12px&#59;white&#45;space:&#32;normal&#59;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#34;&#62;&#38;nbsp&#59;&#60;&#47;p&#62;&#60;p&#62;&#60;br&#47;&#62;&#60;&#47;p&#62;', '0', '0', '1467014986', '', '', '');
INSERT INTO `news` VALUES ('4', '生活百货', '1', '', '6', '/upload/1606/2716/19/5770e195c84ce.jpg,/upload/1606/2716/19/5770e195d7702.jpg,/upload/1606/2716/19/5770e195ec6f7.jpg,/upload/1606/2716/19/5770e1960962b.jpg,/upload/1606/2716/19/5770e1961cac7.jpg,/upload/1606/2716/19/5770e1962d46b.jpg,/upload/1606/2716/19/5770e19641c90.jpg,/upload/1606/2716/19/5770e1965512c.jpg', '&#60;p&#32;style&#61;&#34;margin&#45;top:&#32;0px&#59;&#32;margin&#45;bottom:&#32;0px&#59;&#32;padding:&#32;0px&#59;&#32;border:&#32;0px&#59;&#32;color:&#32;rgb(51,&#32;51,&#32;51)&#59;&#32;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;&#32;font&#45;size:&#32;12px&#59;&#32;white&#45;space:&#32;normal&#59;&#32;line&#45;height:&#32;30px&#59;&#32;text&#45;indent:&#32;21pt&#59;&#32;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#59;&#34;&#62;MINISO名創優品以生活休闲时尚百货为主，囊括创意家居、健康美容、潮流饰品、办公用品、文体礼品、季节性产品和数码配件等多个品类，涵盖生活所需的方方面面。优质的产品源自对生活的感悟。MINISO名創優品师从自然，在追求品质的同时，兼顾到自然资源、环境保护，让简约、清新、设计精良的产品融合自然，贴近生活。&#60;&#47;p&#62;', '9', '0', '1467015334', '', '', '');
INSERT INTO `news` VALUES ('5', '店铺展示', '2', '', '8', '/upload/1606/2716/26/5770e339c2723.jpg,/upload/1606/2716/26/5770e339d57d8.jpg,/upload/1606/2716/26/5770e339e888c.jpg,/upload/1606/2716/26/5770e33a0e84a.jpg,/upload/1606/2716/26/5770e33a21ce7.jpg,/upload/1606/2716/26/5770e33a3268b.jpg,/upload/1606/2716/26/5770e33a47a68.jpg,/upload/1606/2716/26/5770e33a5af04.jpg', null, '25', '0', '1467015995', '', '', '');
INSERT INTO `news` VALUES ('6', '全球店铺分布', '4', '', '8', '', '&#60;p&#62;&#60;img&#32;src&#61;&#34;&#47;ueditor&#47;php&#47;upload&#47;image&#47;20160627&#47;1467016015195794.jpg&#34;&#32;title&#61;&#34;1467016015195794.jpg&#34;&#32;alt&#61;&#34;Chrysanthemum.jpg&#34;&#47;&#62;&#60;&#47;p&#62;', '6', '0', '1467016019', '', '', '');
INSERT INTO `news` VALUES ('7', '联系方式', '4', '', '9', '', '&#60;p&#62;sadfasdfasdfas&#60;&#47;p&#62;', '4', '0', '1467016183', '', '', '');
INSERT INTO `news` VALUES ('8', '加盟合作', '4', '', '10', '', '&#60;p&#62;杀敌发斯蒂芬&#32;是短发是&#60;&#47;p&#62;', '4', '0', '1467016205', '', '', '');
INSERT INTO `news` VALUES ('9', '名创优品•中国质造专题——毫米之内做创新 把代工做成一种品牌（之一）', '3', '当前，全球迎来新一轮制造业产业革命，各国纷纷推出“再工业化”战略，力图抢占国际竞争制高点。随着“中国制造2025”的提出，“中国制造”也迎来了发展新风口。值得关注的是，一批中国制造企业默默耕耘数年，已率先踏上了转型升级“快车道”，他们与拥有众多门店优势的实体零售企业合作，不断整合升级产业链，提高产品科技含量和附加值，重塑中国制造的竞争新优势', '16', '/upload/1606/2716/19/5770e195c84ce.jpg,/upload/1606/2716/19/5770e195d7702.jpg,/upload/1606/2716/19/5770e195ec6f7.jpg,/upload/1606/2716/19/5770e1960962b.jpg,/upload/1606/2716/19/5770e1961cac7.jpg,/upload/1606/2716/19/5770e1962d46b.jpg,/upload/1606/2716/19/5770e19641c90.jpg,/upload/1606/2716/19/5770e1965512c.jpg', '&#60;p&#62;&#60;img&#32;src&#61;&#34;&#47;ueditor&#47;php&#47;upload&#47;image&#47;20160627&#47;1467016240132193.jpg&#34;&#32;title&#61;&#34;1467016240132193.jpg&#34;&#32;alt&#61;&#34;Lighthouse.jpg&#34;&#47;&#62;&#60;&#47;p&#62;', '5', '0', '1467016242', '', '', '');
INSERT INTO `news` VALUES ('10', '俄罗斯签约圆满成功 名创优品优质低价横扫欧亚大陆', '3', '2016年6月23日，日本快时尚设计师品牌名创优品全球扩张再下一城：与俄罗斯顶级零售公司Venom Group正式签订全面战略合作协议。出席此次签约仪式的有：俄罗斯代表Elmar Geybatov和VAQIF ASLAN OGLU VAGIF Ismayil、名创优品全球联合创始人兼首席设计师三宅顺也先生、名创优品全球联合创始人叶国富先生及名创优品亚太区副总裁李敏信先生', '17', '/upload/1606/2716/26/5770e339c2723.jpg,/upload/1606/2716/26/5770e339d57d8.jpg,/upload/1606/2716/26/5770e339e888c.jpg,/upload/1606/2716/26/5770e33a0e84a.jpg,/upload/1606/2716/26/5770e33a21ce7.jpg,/upload/1606/2716/26/5770e33a3268b.jpg,/upload/1606/2716/26/5770e33a47a68.jpg,/upload/1606/2716/26/5770e33a5af04.jpg', '&#60;p&#62;&#60;a&#32;href&#61;&#34;http:&#47;&#47;www.miniso.com&#47;article_content.php?aid&#61;7668&#34;&#32;target&#61;&#34;_blank&#34;&#32;style&#61;&#34;color:&#32;rgb(51,&#32;51,&#32;51)&#59;&#32;font&#45;size:&#32;12px&#59;&#32;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;&#32;line&#45;height:&#32;30px&#59;&#32;white&#45;space:&#32;normal&#59;&#32;text&#45;decoration:&#32;none&#32;&#33;important&#59;&#32;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#59;&#34;&#62;2016年6月23日，日本快时尚设计师品牌名创优品全球扩张再下一城：与俄罗斯顶级零售公司Venom&#32;Group正式签订全面战略合作协议。出席此次签约仪式的有：俄罗斯代表Elmar&#32;Geybatov和VAQIF&#32;ASLAN&#32;OGLU&#32;VAGIF&#32;Ismayil、名创优品全球联合创始人兼首席设计师三宅顺也先生、名创优品全球联合创始人叶国富先生及名创优品亚太区副总裁李敏信先生&#60;&#47;a&#62;&#60;a&#32;href&#61;&#34;http:&#47;&#47;www.miniso.com&#47;article_content.php?aid&#61;7668&#34;&#32;target&#61;&#34;_blank&#34;&#32;style&#61;&#34;color:&#32;rgb(51,&#32;51,&#32;51)&#59;&#32;font&#45;size:&#32;12px&#59;&#32;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;&#32;line&#45;height:&#32;30px&#59;&#32;white&#45;space:&#32;normal&#59;&#32;text&#45;decoration:&#32;none&#32;&#33;important&#59;&#32;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#59;&#34;&#62;2016年6月23日，日本快时尚设计师品牌名创优品全球扩张再下一城：与俄罗斯顶级零售公司Venom&#32;Group正式签订全面战略合作协议。出席此次签约仪式的有：俄罗斯代表Elmar&#32;Geybatov和VAQIF&#32;ASLAN&#32;OGLU&#32;VAGIF&#32;Ismayil、名创优品全球联合创始人兼首席设计师三宅顺也先生、名创优品全球联合创始人叶国富先生及名创优品亚太区副总裁李敏信先生&#60;&#47;a&#62;&#60;a&#32;href&#61;&#34;http:&#47;&#47;www.miniso.com&#47;article_content.php?aid&#61;7668&#34;&#32;target&#61;&#34;_blank&#34;&#32;style&#61;&#34;color:&#32;rgb(51,&#32;51,&#32;51)&#59;&#32;font&#45;size:&#32;12px&#59;&#32;font&#45;family:&#32;微软雅黑,&#32;宋体&#59;&#32;line&#45;height:&#32;30px&#59;&#32;white&#45;space:&#32;normal&#59;&#32;text&#45;decoration:&#32;none&#32;&#33;important&#59;&#32;background&#45;color:&#32;rgb(241,&#32;242,&#32;243)&#59;&#34;&#62;2016年6月23日，日本快时尚设计师品牌名创优品全球扩张再下一城：与俄罗斯顶级零售公司Venom&#32;Group正式签订全面战略合作协议。出席此次签约仪式的有：俄罗斯代表Elmar&#32;Geybatov和VAQIF&#32;ASLAN&#32;OGLU&#32;VAGIF&#32;Ismayil、名创优品全球联合创始人兼首席设计师三宅顺也先生、名创优品全球联合创始人叶国富先生及名创优品亚太区副总裁李敏信先生&#60;&#47;a&#62;&#60;&#47;p&#62;', '0', '0', '1467016533', '', '', '');

-- ----------------------------
-- Table structure for `news_category`
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '新闻类名称',
  `pid` tinyint(2) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `image` longtext COMMENT '图片集合',
  `created` int(32) NOT NULL DEFAULT '0',
  `seo_title` varchar(64) NOT NULL DEFAULT '' COMMENT '标题',
  `seo_keyword` varchar(512) NOT NULL DEFAULT '' COMMENT '关键词',
  `seo_description` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_category
-- ----------------------------
INSERT INTO `news_category` VALUES ('8', '店铺', '0', '4', null, '1466997076', '', '', null);
INSERT INTO `news_category` VALUES ('7', '新闻', '0', '3', null, '1466997045', '', '', null);
INSERT INTO `news_category` VALUES ('6', '产品', '0', '2', '/upload/1606/2716/34/5770e52cc40b1.jpg', '1466997039', '', '', null);
INSERT INTO `news_category` VALUES ('5', '品牌', '0', '1', null, '1466997028', '', '', null);
INSERT INTO `news_category` VALUES ('9', '联系', '0', '5', null, '1466997091', '', '', null);
INSERT INTO `news_category` VALUES ('10', '合作', '0', '6', null, '1466997097', '', '', null);
INSERT INTO `news_category` VALUES ('16', '媒体报道', '7', '0', '/upload/1606/2716/35/5770e537c858f.jpg', '1467008803', '', '', null);
INSERT INTO `news_category` VALUES ('17', '新闻资讯', '7', '0', '/upload/1606/2716/35/5770e53bebce4.jpg', '1467008810', '', '', null);

-- ----------------------------
-- Table structure for `setting`
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统设置表';

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('address', 'qqqq');
INSERT INTO `setting` VALUES ('banquan', 'xdfsdfs');
INSERT INTO `setting` VALUES ('beian', '粤ICP备16037284号');
INSERT INTO `setting` VALUES ('description', '');
INSERT INTO `setting` VALUES ('keyword', '');
INSERT INTO `setting` VALUES ('phone', '4008500076');
INSERT INTO `setting` VALUES ('title', '优品仓');
INSERT INTO `setting` VALUES ('wechat', '/upload/1606/2818/36/57725312a93e6.png');

-- ----------------------------
-- Table structure for `upload`
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_type` int(10) NOT NULL DEFAULT '0' COMMENT '用户类型，管理平台0',
  `user_id` int(10) NOT NULL COMMENT '用户ID',
  `item_type` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `file` varchar(50) NOT NULL,
  `size` int(10) NOT NULL DEFAULT '0',
  `ext` varchar(5) NOT NULL,
  `thumbs` varchar(32) NOT NULL COMMENT '缩略图',
  `uniqid` varchar(15) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1->被使用，2->已删除',
  `created` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `file` (`file`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COMMENT='上传表';

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES ('1', '0', '0', '0', '0', '573c4331bf0af.jpg', '/upload/1605/1818/25/573c4331bf0af.jpg', '162944', 'jpg', '', '', '1', '1463567153');
INSERT INTO `upload` VALUES ('2', '0', '0', '0', '0', '573c43782e07a.jpg', '/upload/1605/1818/27/573c43782e07a.jpg', '233009', 'jpg', '', '', '1', '1463567224');
INSERT INTO `upload` VALUES ('3', '0', '0', '0', '0', '573c438838ff0.jpg', '/upload/1605/1818/27/573c438838ff0.jpg', '233009', 'jpg', '', '', '1', '1463567240');
INSERT INTO `upload` VALUES ('4', '0', '0', '0', '0', '573c43c2c4bae.jpg', '/upload/1605/1818/28/573c43c2c4bae.jpg', '233009', 'jpg', '', '', '1', '1463567298');
INSERT INTO `upload` VALUES ('5', '0', '0', '0', '0', '573c440b11133.jpg', '/upload/1605/1818/29/573c440b11133.jpg', '233009', 'jpg', '', '', '1', '1463567371');
INSERT INTO `upload` VALUES ('6', '0', '0', '0', '0', '573c4432918e8.jpg', '/upload/1605/1818/30/573c4432918e8.jpg', '233009', 'jpg', '', '', '1', '1463567410');
INSERT INTO `upload` VALUES ('7', '0', '0', '0', '0', '573c4479c41c9.jpg', '/upload/1605/1818/31/573c4479c41c9.jpg', '233009', 'jpg', '', '', '1', '1463567481');
INSERT INTO `upload` VALUES ('8', '0', '0', '0', '0', '573c44878456b.jpg', '/upload/1605/1818/31/573c44878456b.jpg', '233009', 'jpg', '', '', '1', '1463567495');
INSERT INTO `upload` VALUES ('9', '0', '0', '0', '0', '573c449dd0557.jpg', '/upload/1605/1818/31/573c449dd0557.jpg', '233009', 'jpg', '', '', '1', '1463567517');
INSERT INTO `upload` VALUES ('10', '0', '0', '0', '0', '573c44cd61e9e.jpg', '/upload/1605/1818/32/573c44cd61e9e.jpg', '233009', 'jpg', '', '', '1', '1463567565');
INSERT INTO `upload` VALUES ('11', '0', '0', '0', '0', '573c44e18559f.jpg', '/upload/1605/1818/33/573c44e18559f.jpg', '162944', 'jpg', '', '', '1', '1463567585');
INSERT INTO `upload` VALUES ('12', '0', '0', '0', '0', '573c44e8906fa.jpg', '/upload/1605/1818/33/573c44e8906fa.jpg', '233009', 'jpg', '', '', '1', '1463567592');
INSERT INTO `upload` VALUES ('13', '0', '0', '0', '0', '573c44e89f92d.jpg', '/upload/1605/1818/33/573c44e89f92d.jpg', '162944', 'jpg', '', '', '1', '1463567592');
INSERT INTO `upload` VALUES ('14', '0', '0', '0', '0', '573c45177d50d.jpg', '/upload/1605/1818/33/573c45177d50d.jpg', '162944', 'jpg', '', '', '1', '1463567639');
INSERT INTO `upload` VALUES ('15', '0', '0', '0', '0', '573c452d935a5.jpg', '/upload/1605/1818/34/573c452d935a5.jpg', '233009', 'jpg', '', '', '1', '1463567661');
INSERT INTO `upload` VALUES ('16', '0', '0', '0', '0', '573c453e19065.jpg', '/upload/1605/1818/34/573c453e19065.jpg', '233009', 'jpg', '', '', '1', '1463567678');
INSERT INTO `upload` VALUES ('17', '0', '0', '0', '0', '573c45e14fcb4.jpg', '/upload/1605/1818/37/573c45e14fcb4.jpg', '162944', 'jpg', '', '', '1', '1463567841');
INSERT INTO `upload` VALUES ('18', '0', '0', '0', '0', '573c45f52a3ac.jpg', '/upload/1605/1818/37/573c45f52a3ac.jpg', '233009', 'jpg', '', '', '1', '1463567861');
INSERT INTO `upload` VALUES ('19', '0', '0', '0', '0', '573c46054d9c7.jpg', '/upload/1605/1818/37/573c46054d9c7.jpg', '233009', 'jpg', '', '', '1', '1463567877');
INSERT INTO `upload` VALUES ('20', '0', '0', '0', '0', '573c461d4f2ac.jpg', '/upload/1605/1818/38/573c461d4f2ac.jpg', '233009', 'jpg', '', '', '1', '1463567901');
INSERT INTO `upload` VALUES ('21', '0', '0', '0', '0', '573c46364b1f1.jpg', '/upload/1605/1818/38/573c46364b1f1.jpg', '233009', 'jpg', '', '', '1', '1463567926');
INSERT INTO `upload` VALUES ('22', '0', '0', '0', '0', '573c46452d0e4.jpg', '/upload/1605/1818/39/573c46452d0e4.jpg', '233009', 'jpg', '', '', '1', '1463567941');
INSERT INTO `upload` VALUES ('23', '0', '0', '0', '0', '573c465091119.jpg', '/upload/1605/1818/39/573c465091119.jpg', '233009', 'jpg', '', '', '1', '1463567952');
INSERT INTO `upload` VALUES ('24', '0', '0', '0', '0', '573c465af0eab.jpg', '/upload/1605/1818/39/573c465af0eab.jpg', '233009', 'jpg', '', '', '1', '1463567962');
INSERT INTO `upload` VALUES ('25', '0', '0', '0', '0', '573c468ef2602.jpg', '/upload/1605/1818/40/573c468ef2602.jpg', '233009', 'jpg', '', '', '1', '1463568014');
INSERT INTO `upload` VALUES ('26', '0', '0', '0', '0', '573c46ce4d7d0.jpg', '/upload/1605/1818/41/573c46ce4d7d0.jpg', '233009', 'jpg', '', '', '1', '1463568078');
INSERT INTO `upload` VALUES ('27', '0', '0', '0', '0', '573c4711271d7.jpg', '/upload/1605/1818/42/573c4711271d7.jpg', '233009', 'jpg', '', '', '1', '1463568145');
INSERT INTO `upload` VALUES ('28', '0', '0', '0', '0', '573c4718ea4ad.jpg', '/upload/1605/1818/42/573c4718ea4ad.jpg', '233009', 'jpg', '', '', '1', '1463568152');
INSERT INTO `upload` VALUES ('29', '0', '0', '0', '0', '573d162d387db.jpg', '/upload/1605/1909/26/573d162d387db.jpg', '233009', 'jpg', '', '', '1', '1463621165');
INSERT INTO `upload` VALUES ('30', '0', '0', '0', '0', '573d16a47442f.jpg', '/upload/1605/1909/28/573d16a47442f.jpg', '233009', 'jpg', '', '', '1', '1463621284');
INSERT INTO `upload` VALUES ('31', '0', '0', '0', '0', '573d16b0dea2f.jpg', '/upload/1605/1909/28/573d16b0dea2f.jpg', '233009', 'jpg', '', '', '1', '1463621296');
INSERT INTO `upload` VALUES ('32', '0', '0', '0', '0', '573d16be3a071.jpg', '/upload/1605/1909/28/573d16be3a071.jpg', '233009', 'jpg', '', '', '1', '1463621310');
INSERT INTO `upload` VALUES ('33', '0', '0', '0', '0', '573d170768373.jpg', '/upload/1605/1909/29/573d170768373.jpg', '220014', 'jpg', '', '', '1', '1463621383');
INSERT INTO `upload` VALUES ('34', '0', '0', '0', '0', '573d170b7e7d5.jpg', '/upload/1605/1909/29/573d170b7e7d5.jpg', '233009', 'jpg', '', '', '1', '1463621387');
INSERT INTO `upload` VALUES ('35', '0', '0', '0', '0', '573d17135ab5e.jpg', '/upload/1605/1909/29/573d17135ab5e.jpg', '220014', 'jpg', '', '', '1', '1463621395');
INSERT INTO `upload` VALUES ('36', '0', '0', '0', '0', '573d17198ecca.jpg', '/upload/1605/1909/30/573d17198ecca.jpg', '220014', 'jpg', '', '', '1', '1463621401');
INSERT INTO `upload` VALUES ('37', '0', '0', '0', '0', '573d1719b0fb2.jpg', '/upload/1605/1909/30/573d1719b0fb2.jpg', '233009', 'jpg', '', '', '1', '1463621401');
INSERT INTO `upload` VALUES ('38', '0', '0', '0', '0', '573d1719cadc8.jpg', '/upload/1605/1909/30/573d1719cadc8.jpg', '162944', 'jpg', '', '', '1', '1463621401');
INSERT INTO `upload` VALUES ('39', '0', '0', '0', '0', '573d185bd2883.jpg', '/upload/1605/1909/35/573d185bd2883.jpg', '220014', 'jpg', '', '', '1', '1463621723');
INSERT INTO `upload` VALUES ('40', '0', '0', '0', '0', '573d1878a0e2a.jpg', '/upload/1605/1909/35/573d1878a0e2a.jpg', '220014', 'jpg', '', '', '1', '1463621752');
INSERT INTO `upload` VALUES ('41', '0', '0', '0', '0', '573d187b07d7a.jpg', '/upload/1605/1909/35/573d187b07d7a.jpg', '233009', 'jpg', '', '', '1', '1463621755');
INSERT INTO `upload` VALUES ('42', '0', '0', '0', '0', '573d187e05715.jpg', '/upload/1605/1909/35/573d187e05715.jpg', '162944', 'jpg', '', '', '1', '1463621758');
INSERT INTO `upload` VALUES ('43', '0', '0', '0', '0', '573d18ade63b9.jpg', '/upload/1605/1909/36/573d18ade63b9.jpg', '220014', 'jpg', '', '', '1', '1463621805');
INSERT INTO `upload` VALUES ('44', '0', '0', '0', '0', '573d18ebecf55.jpg', '/upload/1605/1909/37/573d18ebecf55.jpg', '233009', 'jpg', '', '', '1', '1463621867');
INSERT INTO `upload` VALUES ('45', '0', '0', '0', '0', '573d193cd56e1.jpg', '/upload/1605/1909/39/573d193cd56e1.jpg', '220014', 'jpg', '', '', '1', '1463621948');
INSERT INTO `upload` VALUES ('46', '0', '0', '0', '0', '573d197e0c311.jpg', '/upload/1605/1909/40/573d197e0c311.jpg', '233009', 'jpg', '', '', '1', '1463622014');
INSERT INTO `upload` VALUES ('47', '0', '0', '0', '0', '573d1988ee2c9.jpg', '/upload/1605/1909/40/573d1988ee2c9.jpg', '220014', 'jpg', '', '', '1', '1463622024');
INSERT INTO `upload` VALUES ('48', '0', '0', '0', '0', '573d1b5b98a64.jpg', '/upload/1605/1909/48/573d1b5b98a64.jpg', '220014', 'jpg', '', '', '1', '1463622491');
INSERT INTO `upload` VALUES ('49', '0', '0', '0', '0', '573d1d7363189.jpg', '/upload/1605/1909/57/573d1d7363189.jpg', '233009', 'jpg', '', '', '1', '1463623027');
INSERT INTO `upload` VALUES ('50', '0', '0', '0', '0', '573d1d8f7d1f9.jpg', '/upload/1605/1909/57/573d1d8f7d1f9.jpg', '233009', 'jpg', '', '', '1', '1463623055');
INSERT INTO `upload` VALUES ('51', '0', '0', '0', '0', '573d1d9f3419b.jpg', '/upload/1605/1909/57/573d1d9f3419b.jpg', '135487', 'jpg', '', '', '1', '1463623071');
INSERT INTO `upload` VALUES ('52', '0', '0', '0', '0', '573d1dd5a23c5.jpg', '/upload/1605/1909/58/573d1dd5a23c5.jpg', '233009', 'jpg', '', '', '1', '1463623125');
INSERT INTO `upload` VALUES ('53', '0', '0', '0', '0', '573d1e0c0aa6c.jpg', '/upload/1605/1909/59/573d1e0c0aa6c.jpg', '220014', 'jpg', '', '', '1', '1463623180');
INSERT INTO `upload` VALUES ('54', '0', '0', '0', '0', '573d1ed812df2.jpg', '/upload/1605/1910/03/573d1ed812df2.jpg', '233009', 'jpg', '', '', '1', '1463623384');
INSERT INTO `upload` VALUES ('55', '0', '0', '0', '0', '573d1ee21a947.jpg', '/upload/1605/1910/03/573d1ee21a947.jpg', '162944', 'jpg', '', '', '1', '1463623394');
INSERT INTO `upload` VALUES ('56', '0', '0', '0', '0', '573d1f0b23b2b.jpg', '/upload/1605/1910/03/573d1f0b23b2b.jpg', '233009', 'jpg', '', '', '1', '1463623435');
INSERT INTO `upload` VALUES ('57', '0', '0', '0', '0', '573d1f11a81d1.jpg', '/upload/1605/1910/04/573d1f11a81d1.jpg', '162944', 'jpg', '', '', '1', '1463623441');
INSERT INTO `upload` VALUES ('58', '0', '0', '0', '0', '573d201533dd5.jpg', '/upload/1605/1910/08/573d201533dd5.jpg', '162944', 'jpg', '', '', '1', '1463623701');
INSERT INTO `upload` VALUES ('59', '0', '0', '0', '0', '573d24bb04c22.jpg', '/upload/1605/1910/28/573d24bb04c22.jpg', '162944', 'jpg', '', '', '1', '1463624891');
INSERT INTO `upload` VALUES ('60', '0', '0', '0', '0', '573d24c0571bb.jpg', '/upload/1605/1910/28/573d24c0571bb.jpg', '135487', 'jpg', '', '', '1', '1463624896');
INSERT INTO `upload` VALUES ('61', '0', '0', '0', '0', '573d9321a5956.jpg', '/upload/1605/1918/19/573d9321a5956.jpg', '220014', 'jpg', '', '', '1', '1463653153');
INSERT INTO `upload` VALUES ('62', '0', '0', '0', '0', '5770970ad26fb.jpg', '/upload/1606/2711/01/5770970ad26fb.jpg', '220014', 'jpg', '', '', '1', '1466996490');
INSERT INTO `upload` VALUES ('63', '0', '0', '0', '0', '5770970ae1d17.jpg', '/upload/1606/2711/01/5770970ae1d17.jpg', '233009', 'jpg', '', '', '1', '1466996490');
INSERT INTO `upload` VALUES ('64', '0', '0', '0', '0', '5770e129abef6.jpg', '/upload/1606/2716/17/5770e129abef6.jpg', '220014', 'jpg', '', '', '1', '1467015465');
INSERT INTO `upload` VALUES ('65', '0', '0', '0', '0', '5770e129c265b.jpg', '/upload/1606/2716/17/5770e129c265b.jpg', '233009', 'jpg', '', '', '1', '1467015465');
INSERT INTO `upload` VALUES ('66', '0', '0', '0', '0', '5770e129e5114.jpg', '/upload/1606/2716/17/5770e129e5114.jpg', '162944', 'jpg', '', '', '1', '1467015465');
INSERT INTO `upload` VALUES ('67', '0', '0', '0', '0', '5770e12a09579.jpg', '/upload/1606/2716/17/5770e12a09579.jpg', '135487', 'jpg', '', '', '1', '1467015466');
INSERT INTO `upload` VALUES ('68', '0', '0', '0', '0', '5770e12a32d93.jpg', '/upload/1606/2716/17/5770e12a32d93.jpg', '253448', 'jpg', '', '', '1', '1467015466');
INSERT INTO `upload` VALUES ('69', '0', '0', '0', '0', '5770e12a4a881.jpg', '/upload/1606/2716/17/5770e12a4a881.jpg', '169762', 'jpg', '', '', '1', '1467015466');
INSERT INTO `upload` VALUES ('70', '0', '0', '0', '0', '5770e12a5ecbd.jpg', '/upload/1606/2716/17/5770e12a5ecbd.jpg', '202263', 'jpg', '', '', '1', '1467015466');
INSERT INTO `upload` VALUES ('71', '0', '0', '0', '0', '5770e12a7b9b4.jpg', '/upload/1606/2716/17/5770e12a7b9b4.jpg', '161781', 'jpg', '', '', '1', '1467015466');
INSERT INTO `upload` VALUES ('72', '0', '0', '0', '0', '5770e195c84ce.jpg', '/upload/1606/2716/19/5770e195c84ce.jpg', '220014', 'jpg', '', '', '1', '1467015573');
INSERT INTO `upload` VALUES ('73', '0', '0', '0', '0', '5770e195d7702.jpg', '/upload/1606/2716/19/5770e195d7702.jpg', '233009', 'jpg', '', '', '1', '1467015573');
INSERT INTO `upload` VALUES ('74', '0', '0', '0', '0', '5770e195ec6f7.jpg', '/upload/1606/2716/19/5770e195ec6f7.jpg', '162944', 'jpg', '', '', '1', '1467015573');
INSERT INTO `upload` VALUES ('75', '0', '0', '0', '0', '5770e1960962b.jpg', '/upload/1606/2716/19/5770e1960962b.jpg', '135487', 'jpg', '', '', '1', '1467015574');
INSERT INTO `upload` VALUES ('76', '0', '0', '0', '0', '5770e1961cac7.jpg', '/upload/1606/2716/19/5770e1961cac7.jpg', '253448', 'jpg', '', '', '1', '1467015574');
INSERT INTO `upload` VALUES ('77', '0', '0', '0', '0', '5770e1962d46b.jpg', '/upload/1606/2716/19/5770e1962d46b.jpg', '169762', 'jpg', '', '', '1', '1467015574');
INSERT INTO `upload` VALUES ('78', '0', '0', '0', '0', '5770e19641c90.jpg', '/upload/1606/2716/19/5770e19641c90.jpg', '202263', 'jpg', '', '', '1', '1467015574');
INSERT INTO `upload` VALUES ('79', '0', '0', '0', '0', '5770e1965512c.jpg', '/upload/1606/2716/19/5770e1965512c.jpg', '161781', 'jpg', '', '', '1', '1467015574');
INSERT INTO `upload` VALUES ('80', '0', '0', '0', '0', '5770e339c2723.jpg', '/upload/1606/2716/26/5770e339c2723.jpg', '220014', 'jpg', '', '', '1', '1467015993');
INSERT INTO `upload` VALUES ('81', '0', '0', '0', '0', '5770e339d57d8.jpg', '/upload/1606/2716/26/5770e339d57d8.jpg', '233009', 'jpg', '', '', '1', '1467015993');
INSERT INTO `upload` VALUES ('82', '0', '0', '0', '0', '5770e339e888c.jpg', '/upload/1606/2716/26/5770e339e888c.jpg', '162944', 'jpg', '', '', '1', '1467015993');
INSERT INTO `upload` VALUES ('83', '0', '0', '0', '0', '5770e33a0e84a.jpg', '/upload/1606/2716/26/5770e33a0e84a.jpg', '135487', 'jpg', '', '', '1', '1467015994');
INSERT INTO `upload` VALUES ('84', '0', '0', '0', '0', '5770e33a21ce7.jpg', '/upload/1606/2716/26/5770e33a21ce7.jpg', '253448', 'jpg', '', '', '1', '1467015994');
INSERT INTO `upload` VALUES ('85', '0', '0', '0', '0', '5770e33a3268b.jpg', '/upload/1606/2716/26/5770e33a3268b.jpg', '169762', 'jpg', '', '', '1', '1467015994');
INSERT INTO `upload` VALUES ('86', '0', '0', '0', '0', '5770e33a47a68.jpg', '/upload/1606/2716/26/5770e33a47a68.jpg', '202263', 'jpg', '', '', '1', '1467015994');
INSERT INTO `upload` VALUES ('87', '0', '0', '0', '0', '5770e33a5af04.jpg', '/upload/1606/2716/26/5770e33a5af04.jpg', '161781', 'jpg', '', '', '1', '1467015994');
INSERT INTO `upload` VALUES ('88', '0', '0', '0', '0', '5770e52cc40b1.jpg', '/upload/1606/2716/34/5770e52cc40b1.jpg', '220014', 'jpg', '', '', '1', '1467016492');
INSERT INTO `upload` VALUES ('89', '0', '0', '0', '0', '5770e537c858f.jpg', '/upload/1606/2716/35/5770e537c858f.jpg', '135487', 'jpg', '', '', '1', '1467016503');
INSERT INTO `upload` VALUES ('90', '0', '0', '0', '0', '5770e53bebce4.jpg', '/upload/1606/2716/35/5770e53bebce4.jpg', '169762', 'jpg', '', '', '1', '1467016507');
INSERT INTO `upload` VALUES ('91', '0', '0', '0', '0', '57722c33908b4.jpg', '/upload/1606/2815/50/57722c33908b4.jpg', '220014', 'jpg', '', '', '1', '1467100211');
INSERT INTO `upload` VALUES ('92', '0', '0', '0', '0', '57722c33a4138.jpg', '/upload/1606/2815/50/57722c33a4138.jpg', '233009', 'jpg', '', '', '1', '1467100211');
INSERT INTO `upload` VALUES ('93', '0', '0', '0', '0', '57724241e2904.jpg', '/upload/1606/2817/24/57724241e2904.jpg', '212502', 'jpg', '', '', '1', '1467105857');
INSERT INTO `upload` VALUES ('94', '0', '0', '0', '0', '5772428757657.jpg', '/upload/1606/2817/25/5772428757657.jpg', '212502', 'jpg', '', '', '1', '1467105927');
INSERT INTO `upload` VALUES ('95', '0', '0', '0', '0', '57724291acfd7.png', '/upload/1606/2817/25/57724291acfd7.png', '25290', 'png', '', '', '1', '1467105937');
INSERT INTO `upload` VALUES ('96', '0', '0', '0', '0', '577242d28bb75.png', '/upload/1606/2817/26/577242d28bb75.png', '25290', 'png', '', '', '1', '1467106002');
INSERT INTO `upload` VALUES ('97', '0', '0', '0', '0', '577243491f43a.png', '/upload/1606/2817/28/577243491f43a.png', '25290', 'png', '', '', '1', '1467106121');
INSERT INTO `upload` VALUES ('98', '0', '0', '0', '0', '5772435536236.jpg', '/upload/1606/2817/28/5772435536236.jpg', '212502', 'jpg', '', '', '1', '1467106133');
INSERT INTO `upload` VALUES ('99', '0', '0', '0', '0', '57724393567ff.jpg', '/upload/1606/2817/29/57724393567ff.jpg', '6287', 'jpg', '', '', '1', '1467106195');
INSERT INTO `upload` VALUES ('100', '0', '0', '0', '0', '577244c77181e.jpg', '/upload/1606/2817/35/577244c77181e.jpg', '6511', 'jpg', '', '', '1', '1467106503');
INSERT INTO `upload` VALUES ('101', '0', '0', '0', '0', '5772450fc2d70.jpg', '/upload/1606/2817/36/5772450fc2d70.jpg', '6561', 'jpg', '', '', '1', '1467106575');
INSERT INTO `upload` VALUES ('102', '0', '0', '0', '0', '5772453e9fd98.jpg', '/upload/1606/2817/37/5772453e9fd98.jpg', '5906', 'jpg', '', '', '1', '1467106622');
INSERT INTO `upload` VALUES ('103', '0', '0', '0', '0', '5772454c9f8e8.jpg', '/upload/1606/2817/37/5772454c9f8e8.jpg', '5478', 'jpg', '', '', '1', '1467106636');
INSERT INTO `upload` VALUES ('104', '0', '0', '0', '0', '5772455879646.jpg', '/upload/1606/2817/37/5772455879646.jpg', '6167', 'jpg', '', '', '1', '1467106648');
INSERT INTO `upload` VALUES ('105', '0', '0', '0', '0', '57724565c09f6.jpg', '/upload/1606/2817/37/57724565c09f6.jpg', '5442', 'jpg', '', '', '1', '1467106661');
INSERT INTO `upload` VALUES ('106', '0', '0', '0', '0', '5772457e83335.jpg', '/upload/1606/2817/38/5772457e83335.jpg', '5664', 'jpg', '', '', '1', '1467106686');
INSERT INTO `upload` VALUES ('107', '0', '0', '0', '0', '57724587c9e31.jpg', '/upload/1606/2817/38/57724587c9e31.jpg', '5685', 'jpg', '', '', '1', '1467106695');
INSERT INTO `upload` VALUES ('108', '0', '0', '0', '0', '57724592d48a0.jpg', '/upload/1606/2817/38/57724592d48a0.jpg', '17390', 'jpg', '', '', '1', '1467106706');
INSERT INTO `upload` VALUES ('109', '0', '0', '0', '0', '577248103ff81.png', '/upload/1606/2817/49/577248103ff81.png', '140046', 'png', '', '', '1', '1467107344');
INSERT INTO `upload` VALUES ('110', '0', '0', '0', '0', '5772516702df0.png', '/upload/1606/2818/28/5772516702df0.png', '140046', 'png', '', '', '1', '1467109735');
INSERT INTO `upload` VALUES ('111', '0', '0', '0', '0', '577251ebb2cbf.png', '/upload/1606/2818/31/577251ebb2cbf.png', '4123', 'png', '', '', '1', '1467109867');
INSERT INTO `upload` VALUES ('112', '0', '0', '0', '0', '577252ab062cd.png', '/upload/1606/2818/34/577252ab062cd.png', '4123', 'png', '', '', '1', '1467110059');
INSERT INTO `upload` VALUES ('113', '0', '0', '0', '0', '577252de67929.png', '/upload/1606/2818/35/577252de67929.png', '4123', 'png', '', '', '1', '1467110110');
INSERT INTO `upload` VALUES ('114', '0', '0', '0', '0', '577252f7a1c94.png', '/upload/1606/2818/35/577252f7a1c94.png', '4123', 'png', '', '', '1', '1467110135');
INSERT INTO `upload` VALUES ('115', '0', '0', '0', '0', '57725312a93e6.png', '/upload/1606/2818/36/57725312a93e6.png', '4123', 'png', '', '', '1', '1467110162');
