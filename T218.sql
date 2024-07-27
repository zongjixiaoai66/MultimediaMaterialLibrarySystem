/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t218`;
CREATE DATABASE IF NOT EXISTS `t218` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t218`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/duomeitisucaiku/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/duomeitisucaiku/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/duomeitisucaiku/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-25 03:11:31'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-25 03:11:31'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-25 03:11:31'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-25 03:11:31'),
	(5, 'sucai_types', '素材类型', 1, '音频', NULL, NULL, '2022-03-25 03:11:31'),
	(6, 'sucai_types', '素材类型', 2, '声音', NULL, NULL, '2022-03-25 03:11:31'),
	(7, 'sucai_types', '素材类型', 3, '静态图片', NULL, NULL, '2022-03-25 03:11:31'),
	(8, 'sucai_types', '素材类型', 4, '视频', NULL, NULL, '2022-03-25 03:11:31'),
	(9, 'sucai_types', '素材类型', 5, '动画', NULL, NULL, '2022-03-25 03:11:31'),
	(10, 'sucai_erji_types', '二级类型', 1, '音频类型1', 1, NULL, '2022-03-25 03:11:31'),
	(11, 'sucai_erji_types', '二级类型', 2, '音频类型2', 1, NULL, '2022-03-25 03:11:31'),
	(12, 'sucai_erji_types', '二级类型', 3, '声音类型1', 2, NULL, '2022-03-25 03:11:31'),
	(13, 'sucai_erji_types', '二级类型', 4, '声音类型2', 2, NULL, '2022-03-25 03:11:31'),
	(14, 'sucai_erji_types', '二级类型', 5, '静态图片类型1', 3, NULL, '2022-03-25 03:11:31'),
	(15, 'sucai_erji_types', '二级类型', 6, '静态图片类型2', 3, NULL, '2022-03-25 03:11:32'),
	(16, 'sucai_erji_types', '二级类型', 7, '视频类型2', 4, NULL, '2022-03-25 03:11:32'),
	(17, 'sucai_erji_types', '二级类型', 8, '视频类型2', 4, NULL, '2022-03-25 03:11:32'),
	(18, 'sucai_erji_types', '二级类型', 9, '动画类型2', 5, NULL, '2022-03-25 03:11:32'),
	(19, 'sucai_erji_types', '二级类型', 10, '动画类型2', 5, NULL, '2022-03-25 03:11:32'),
	(20, 'sucai_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-25 03:11:32'),
	(21, 'sucai_order_types', '订单类型', 1, '已支付', NULL, NULL, '2022-03-25 03:11:32'),
	(24, 'sucai_order_types', '订单类型', 5, '已评价', NULL, NULL, '2022-03-25 03:11:32'),
	(25, 'sucai_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-03-25 03:11:32'),
	(26, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-25 03:11:32'),
	(27, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-25 03:11:32'),
	(28, 'single_seach_types', '单页数据类型', 1, '网站介绍', NULL, NULL, '2022-03-25 03:11:32'),
	(29, 'single_seach_types', '单页数据类型', 2, '联系我们', NULL, NULL, '2022-03-25 03:11:32'),
	(30, 'single_seach_types', '单页数据类型', 3, '领导介绍', NULL, NULL, '2022-03-25 03:11:32'),
	(31, 'sucai_erji_types', '二级类型', 11, '动画类型3', 5, '', '2022-03-25 05:14:45'),
	(32, 'sucai_erji_types', '二级类型', 12, '视频类型3', 4, '', '2022-03-25 05:15:02');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/duomeitisucaiku/upload/gonggao1.jpg', 1, '2022-03-25 03:11:36', '公告详情1', '2022-03-25 03:11:36'),
	(2, '公告名称2', 'http://localhost:8080/duomeitisucaiku/upload/gonggao2.jpg', 2, '2022-03-25 03:11:36', '公告详情2', '2022-03-25 03:11:36'),
	(3, '公告名称3', 'http://localhost:8080/duomeitisucaiku/upload/gonggao3.jpg', 1, '2022-03-25 03:11:36', '公告详情3', '2022-03-25 03:11:36'),
	(4, '公告名称4', 'http://localhost:8080/duomeitisucaiku/upload/gonggao4.jpg', 1, '2022-03-25 03:11:36', '公告详情4', '2022-03-25 03:11:36'),
	(5, '公告名称5', 'http://localhost:8080/duomeitisucaiku/upload/gonggao5.jpg', 1, '2022-03-25 03:11:36', '公告详情5', '2022-03-25 03:11:36');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, '留言标题1', '留言内容1', '2022-03-25 03:11:36', '回复信息1', '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(2, 3, '留言标题2', '留言内容2', '2022-03-25 03:11:36', '回复信息2', '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(3, 2, '留言标题3', '留言内容3', '2022-03-25 03:11:36', '回复信息3', '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(4, 1, '留言标题4', '留言内容4', '2022-03-25 03:11:36', '回复信息4', '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(5, 1, '留言标题5', '留言内容5', '2022-03-25 03:11:36', '回复信息5', '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(6, 2, '11', '22', '2022-03-25 05:05:16', '3333333333', '2022-03-25 05:15:16', '2022-03-25 05:05:16'),
	(7, 1, '66', '666', '2024-06-09 10:46:23', NULL, NULL, '2024-06-09 10:46:23'),
	(8, 1, '66', '666', '2024-06-09 10:46:25', NULL, NULL, '2024-06-09 10:46:25');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_content`, `create_time`) VALUES
	(1, '网站介绍', 1, '<p>网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍</p>', '2022-03-25 03:29:50'),
	(2, '联系我们', 3, '<p>联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们</p>', '2022-03-25 03:30:01'),
	(3, '联系我们', 2, '<p>联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们</p><p><br></p><p><img src="http://localhost:8080/duomeitisucaiku/upload/1648185337427.jpg"></p><p>safdsags</p>', '2022-03-25 03:30:23');

DROP TABLE IF EXISTS `sucai`;
CREATE TABLE IF NOT EXISTS `sucai` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `sucai_uuid_number` varchar(200) DEFAULT NULL COMMENT '素材编号  Search111 ',
  `sucai_name` varchar(200) DEFAULT NULL COMMENT '素材名称  Search111 ',
  `sucai_types` int DEFAULT NULL COMMENT '素材类型 Search111',
  `sucai_erji_types` int DEFAULT NULL COMMENT '二级类型 Search111',
  `sucai_photo` varchar(200) DEFAULT NULL COMMENT '素材照片',
  `sucai_zhanshi_photo` varchar(200) DEFAULT NULL COMMENT '素材展示照片',
  `sucai_video` varchar(200) DEFAULT NULL COMMENT '素材展示视频',
  `sucai_music` varchar(200) DEFAULT NULL COMMENT '素材展示音频',
  `sucai_old_money` decimal(10,2) DEFAULT NULL COMMENT '素材原价 ',
  `sucai_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `sucai_file` varchar(200) DEFAULT NULL COMMENT '素材文件',
  `sucai_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `sucai_content` text COMMENT '素材详细介绍',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `sucai_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='素材';

DELETE FROM `sucai`;
INSERT INTO `sucai` (`id`, `yonghu_id`, `sucai_uuid_number`, `sucai_name`, `sucai_types`, `sucai_erji_types`, `sucai_photo`, `sucai_zhanshi_photo`, `sucai_video`, `sucai_music`, `sucai_old_money`, `sucai_new_money`, `sucai_file`, `sucai_clicknum`, `sucai_content`, `shangxia_types`, `sucai_delete`, `create_time`) VALUES
	(1, 3, '164817789699114', '素材名称1', 2, 3, 'http://localhost:8080/duomeitisucaiku/upload/gonggao1.jpg', 'http://localhost:8080/duomeitisucaiku/upload/gonggao1.jpg', 'http://localhost:8080/duomeitisucaiku/upload/video.mp4', 'http://localhost:8080/duomeitisucaiku/upload/music.mp3', 839.21, 326.75, 'http://localhost:8080/duomeitisucaiku/upload/file.rar', 298, '素材详细介绍1', 1, 1, '2022-03-25 03:11:36'),
	(2, 2, '164817789699116', '素材名称2', 5, 9, 'http://localhost:8080/duomeitisucaiku/upload/gonggao2.jpg', 'http://localhost:8080/duomeitisucaiku/upload/gonggao2.jpg', 'http://localhost:8080/duomeitisucaiku/upload/video.mp4', 'http://localhost:8080/duomeitisucaiku/upload/music.mp3', 709.06, 209.32, 'http://localhost:8080/duomeitisucaiku/upload/file.rar', 442, '素材详细介绍2', 1, 1, '2022-03-25 03:11:36'),
	(3, 3, '16481778969912', '素材名称3', 3, 5, 'http://localhost:8080/duomeitisucaiku/upload/gonggao3.jpg', 'http://localhost:8080/duomeitisucaiku/upload/gonggao3.jpg', 'http://localhost:8080/duomeitisucaiku/upload/video.mp4', 'http://localhost:8080/duomeitisucaiku/upload/music.mp3', 518.06, 351.15, 'http://localhost:8080/duomeitisucaiku/upload/file.rar', 299, '素材详细介绍3', 1, 1, '2022-03-25 03:11:36'),
	(4, 1, '16481778969914', '素材名称4', 1, 2, 'http://localhost:8080/duomeitisucaiku/upload/gonggao4.jpg', 'http://localhost:8080/duomeitisucaiku/upload/gonggao4.jpg', 'http://localhost:8080/duomeitisucaiku/upload/video.mp4', 'http://localhost:8080/duomeitisucaiku/upload/music.mp3', 978.22, 71.53, 'http://localhost:8080/duomeitisucaiku/upload/file.rar', 36, '素材详细介绍4', 1, 1, '2022-03-25 03:11:36'),
	(5, 1, '164817789699114', '素材名称5', 3, 6, 'http://localhost:8080/duomeitisucaiku/upload/gonggao5.jpg', 'http://localhost:8080/duomeitisucaiku/upload/gonggao5.jpg', 'http://localhost:8080/duomeitisucaiku/upload/video.mp4', 'http://localhost:8080/duomeitisucaiku/upload/music.mp3', 982.15, 66.29, 'http://localhost:8080/duomeitisucaiku/upload/file.rar', 55, '素材详细介绍5', 1, 1, '2022-03-25 03:11:36');

DROP TABLE IF EXISTS `sucai_collection`;
CREATE TABLE IF NOT EXISTS `sucai_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sucai_id` int DEFAULT NULL COMMENT '素材',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `sucai_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='素材收藏';

DELETE FROM `sucai_collection`;
INSERT INTO `sucai_collection` (`id`, `sucai_id`, `yonghu_id`, `sucai_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(2, 2, 1, 1, '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(3, 3, 2, 1, '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(4, 4, 2, 1, '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(5, 5, 3, 1, '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(6, 3, 1, 1, '2024-06-09 10:46:49', '2024-06-09 10:46:49');

DROP TABLE IF EXISTS `sucai_commentback`;
CREATE TABLE IF NOT EXISTS `sucai_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sucai_id` int DEFAULT NULL COMMENT '素材',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `sucai_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='素材评价';

DELETE FROM `sucai_commentback`;
INSERT INTO `sucai_commentback` (`id`, `sucai_id`, `yonghu_id`, `sucai_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '评价内容1', '2022-03-25 03:11:36', '回复信息1', '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(2, 2, 1, '评价内容2', '2022-03-25 03:11:36', '回复信息2', '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(3, 3, 1, '评价内容3', '2022-03-25 03:11:36', '回复信息3', '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(4, 4, 3, '评价内容4', '2022-03-25 03:11:36', '回复信息4', '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(5, 5, 3, '评价内容5', '2022-03-25 03:11:36', '回复信息5', '2022-03-25 03:11:36', '2022-03-25 03:11:36'),
	(6, 2, 1, '1111', '2022-03-25 03:56:42', '333', '2022-03-25 05:17:01', '2022-03-25 03:56:42'),
	(7, 5, 2, '2222', '2022-03-25 05:17:14', NULL, NULL, '2022-03-25 05:17:14'),
	(8, 3, 2, '233333', '2022-03-25 05:17:50', NULL, NULL, '2022-03-25 05:17:50');

DROP TABLE IF EXISTS `sucai_order`;
CREATE TABLE IF NOT EXISTS `sucai_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sucai_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `sucai_id` int DEFAULT NULL COMMENT '素材',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `sucai_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `sucai_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `sucai_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='素材订单';

DELETE FROM `sucai_order`;
INSERT INTO `sucai_order` (`id`, `sucai_order_uuid_number`, `sucai_id`, `yonghu_id`, `sucai_order_true_price`, `sucai_order_types`, `sucai_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1648179996872', 2, 1, 209.32, 5, 1, '2022-03-25 03:46:37', '2022-03-25 03:46:37'),
	(5, '1648185077032', 1, 2, 326.75, 1, 1, '2022-03-25 05:11:17', '2022-03-25 05:11:17'),
	(6, '1648185084604', 3, 2, 351.15, 5, 1, '2022-03-25 05:11:25', '2022-03-25 05:11:25'),
	(7, '1648185249439', 5, 2, 66.29, 5, 1, '2022-03-25 05:14:09', '2022-03-25 05:14:09'),
	(8, '1717930010444', 3, 1, 351.15, 1, 1, '2024-06-09 10:46:50', '2024-06-09 10:46:50');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'nmaw9xhh00jw83zb1lc5afqtc3crp6vm', '2022-03-25 03:10:12', '2024-06-09 11:44:40'),
	(2, 1, 'a1', 'yonghu', '用户', 'rxevlkn0jpucr5j22l263m0h1f1l34lt', '2022-03-25 03:30:39', '2024-06-09 11:46:05'),
	(3, 2, 'a2', 'yonghu', '用户', '119198ed6oisnmeez7s54xmumfp8m7zq', '2022-03-25 05:04:55', '2022-03-25 06:17:29');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `new_money`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/duomeitisucaiku/upload/yonghu1.jpg', 1, 156.37, '1@qq.com', '2022-03-25 03:11:36'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/duomeitisucaiku/upload/yonghu2.jpg', 2, 543.65, '2@qq.com', '2022-03-25 03:11:36'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/duomeitisucaiku/upload/yonghu3.jpg', 1, 1265.51, '3@qq.com', '2022-03-25 03:11:36');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
