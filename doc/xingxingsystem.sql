/*
 Navicat Premium Data Transfer

 Source Server         : a
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : xingxingsystem

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 04/11/2019 16:20:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES (1, 'admin', 'admin', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/fd39cbfb5c5445d3bdefa295650b7759.jpg');

-- ----------------------------
-- Table structure for tb_banner
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE `tb_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'banner：id',
  `photos_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播地址',
  `photos_upload_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图上传时间',
  `photos_jumps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播跳转链接',
  `photos_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_banner
-- ----------------------------
INSERT INTO `tb_banner` VALUES (52, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/1aab41fc5efb4ea4b7ee185e76ebfb77.tmp', '2019-10-09 09:17:36', 'http://www.baidu.com', '罗小黑战记');
INSERT INTO `tb_banner` VALUES (53, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/04355dd490c9471a9a055deab6dcbf6b.tmp', '2019-10-09 09:18:33', 'http://www.baidu.com', '全职高手');
INSERT INTO `tb_banner` VALUES (54, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/9075bbe3b3e54154b58e719529487df4.tmp', '2019-10-09 09:19:08', 'http://www.baidu.com', '中国惊奇先生');
INSERT INTO `tb_banner` VALUES (55, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/ff56547816fa46b5984573151260a398.tmp', '2019-10-09 09:19:55', 'http://www.baidu.com', '干物妹');
INSERT INTO `tb_banner` VALUES (60, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/a92c9f51aaed406aa3d702b48472527d.tmp', '2019-10-09 09:31:58', 'http://www.baidu.com', '蝙蝠侠 黑暗骑士');
INSERT INTO `tb_banner` VALUES (69, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/16e11de8a2164c14b75668526a904b9a.tmp', '2019-10-14 02:09:48', 'http://www.baidu.com', '魔道祖师');
INSERT INTO `tb_banner` VALUES (70, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/bacb9b331bc1485c9593e49c798760a0.tmp', '2019-10-14 43:09:48', 'http://www.baidu.com', '大侦探皮卡丘');
INSERT INTO `tb_banner` VALUES (71, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/e94bb51f92e14814910fa5dac375e85d.tmp', '2019-10-14 16:09:49', 'http://www.baidu.coam', '天师下山');
INSERT INTO `tb_banner` VALUES (72, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/12468938108b455eadb468c2c14548fd.tmp', '2019-10-14 07:09:50', 'http://www.baidu.com', '黑白无双');

-- ----------------------------
-- Table structure for tb_browse_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_browse_record`;
CREATE TABLE `tb_browse_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '我的记录：浏览记录中的id',
  `user_id` int(50) NULL DEFAULT NULL,
  `browse_record_id` int(50) NULL DEFAULT NULL COMMENT '浏览视频id',
  `browse_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_browse_record
-- ----------------------------
INSERT INTO `tb_browse_record` VALUES (2, 1, 4, '2019-10-13 19:58:22');
INSERT INTO `tb_browse_record` VALUES (5, 9, 2, '2019-10-13 20:32:45');

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `user_comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `point_num` int(11) NULL DEFAULT NULL,
  `comment_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK45c1cuqlljd60ihc9j0962ekq`(`user_id`) USING BTREE,
  INDEX `FK25yq6m5c4vax01aigvvir07qi`(`user_name`) USING BTREE,
  CONSTRAINT `FK25yq6m5c4vax01aigvvir07qi` FOREIGN KEY (`user_name`) REFERENCES `tb_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK45c1cuqlljd60ihc9j0962ekq` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `id` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES (1, 4, 1, '111111', '2019-10-01 20:00:11', NULL, NULL, NULL);
INSERT INTO `tb_comment` VALUES (2, 1, 9, '22222', '2019-10-02 20:00:11', NULL, NULL, NULL);
INSERT INTO `tb_comment` VALUES (3, 1, 13, '22222333', '2019-10-03 20:00:11', NULL, NULL, NULL);
INSERT INTO `tb_comment` VALUES (4, 4, 10, '445454545', '2019-10-03 20:00:1', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_consumption_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_consumption_record`;
CREATE TABLE `tb_consumption_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消费记录表的id',
  `user_id` int(11) NULL DEFAULT NULL,
  `consumption_amount` double(255, 2) NULL DEFAULT NULL COMMENT '消费金额',
  `consumption_items` int(20) NULL DEFAULT NULL COMMENT '消费项目1是修改昵称 2是打赏',
  `consumption_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_consumption_record
-- ----------------------------
INSERT INTO `tb_consumption_record` VALUES (1, 9, 1.00, 2, '2019-10-04 17:58:45');
INSERT INTO `tb_consumption_record` VALUES (2, 12, 1.00, 2, '2019-10-07 19:48:33');
INSERT INTO `tb_consumption_record` VALUES (3, 12, 2.00, 2, '2019-10-07 19:54:33');
INSERT INTO `tb_consumption_record` VALUES (4, 12, 2.00, 2, '2019-10-07 20:16:01');
INSERT INTO `tb_consumption_record` VALUES (12, 12, 1.00, 2, '2019-10-10 21:15:37');
INSERT INTO `tb_consumption_record` VALUES (13, 12, 1.00, 2, '2019-10-10 21:16:59');
INSERT INTO `tb_consumption_record` VALUES (14, 12, 1.00, 2, '2019-10-10 21:17:00');
INSERT INTO `tb_consumption_record` VALUES (15, 19, 6.00, 2, '2019-10-10 21:17:00');
INSERT INTO `tb_consumption_record` VALUES (16, 19, 12.00, 2, '2019-10-10 21:17:00');
INSERT INTO `tb_consumption_record` VALUES (17, 12, 1.00, 2, '2019-10-12 16:34:09');
INSERT INTO `tb_consumption_record` VALUES (18, 18, 1.00, 2, '2019-10-12 17:26:13');
INSERT INTO `tb_consumption_record` VALUES (19, 9, 2.00, 2, '2019-10-12 18:01:56');
INSERT INTO `tb_consumption_record` VALUES (20, 12, 2.00, 2, '2019-10-14 08:56:35');
INSERT INTO `tb_consumption_record` VALUES (21, 12, 2.00, 2, '2019-10-14 09:20:25');
INSERT INTO `tb_consumption_record` VALUES (22, 19, 2.00, 2, '2019-10-14 09:36:36');
INSERT INTO `tb_consumption_record` VALUES (23, 20, 2.00, 2, '2019-10-14 09:46:10');

-- ----------------------------
-- Table structure for tb_first_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_first_menu`;
CREATE TABLE `tb_first_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一级菜单',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_first_menu
-- ----------------------------
INSERT INTO `tb_first_menu` VALUES (1, '动漫');
INSERT INTO `tb_first_menu` VALUES (3, '番剧');
INSERT INTO `tb_first_menu` VALUES (4, '港剧');
INSERT INTO `tb_first_menu` VALUES (13, '国产');

-- ----------------------------
-- Table structure for tb_integral
-- ----------------------------
DROP TABLE IF EXISTS `tb_integral`;
CREATE TABLE `tb_integral`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分表',
  `user_id` int(11) NULL DEFAULT NULL,
  `integral
_num` int(255) NOT NULL COMMENT '积分值：充值送积分，开通会员送积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_integral_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_integral_record`;
CREATE TABLE `tb_integral_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分记录表',
  `user_id` int(11) NULL DEFAULT NULL,
  `operation_project` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '两个项目，充值送积分，开会员送积分，这是增加操作\r\n积分可以购买会员，这是扣除操作',
  `operation_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '什么时间对积分的变动',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_jc_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_jc_record`;
CREATE TABLE `tb_jc_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '我的记录：节操记录表中的id',
  `user_id` int(11) NULL DEFAULT NULL,
  `subtract_project` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扣分项目',
  `subtract_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扣分时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_jc_record
-- ----------------------------
INSERT INTO `tb_jc_record` VALUES (1, 9, '12332', '2019-10-12 05:50:20');
INSERT INTO `tb_jc_record` VALUES (2, 1, '123', '2019-09-09');

-- ----------------------------
-- Table structure for tb_label
-- ----------------------------
DROP TABLE IF EXISTS `tb_label`;
CREATE TABLE `tb_label`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签表：\r\n         标签写定义几个名称，例如：“暴力”，“血腥”，“色情”  等\r\n\r\n  对应的标签在代码中定义各个标签扣除的分数',
  `label_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_login_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_login_record`;
CREATE TABLE `tb_login_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '我的记录：登录记录表的id',
  `user_id` int(11) NULL DEFAULT NULL,
  `user_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户的IP地址',
  `login_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '我的登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 536 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_login_record
-- ----------------------------
INSERT INTO `tb_login_record` VALUES (372, 9, '10.6.23.81', '2019-10-12 17:12:09');
INSERT INTO `tb_login_record` VALUES (373, 12, '0:0:0:0:0:0:0:1', '2019-10-12 17:21:41');
INSERT INTO `tb_login_record` VALUES (374, 18, '0:0:0:0:0:0:0:1', '2019-10-12 17:24:42');
INSERT INTO `tb_login_record` VALUES (375, 9, '0:0:0:0:0:0:0:1', '2019-10-12 17:26:55');
INSERT INTO `tb_login_record` VALUES (376, 12, '0:0:0:0:0:0:0:1', '2019-10-12 17:48:36');
INSERT INTO `tb_login_record` VALUES (377, 9, '0:0:0:0:0:0:0:1', '2019-10-12 17:49:29');
INSERT INTO `tb_login_record` VALUES (378, 9, '0:0:0:0:0:0:0:1', '2019-10-12 17:56:28');
INSERT INTO `tb_login_record` VALUES (379, 9, '0:0:0:0:0:0:0:1', '2019-10-12 18:00:34');
INSERT INTO `tb_login_record` VALUES (380, 9, '0:0:0:0:0:0:0:1', '2019-10-12 18:12:01');
INSERT INTO `tb_login_record` VALUES (381, 9, '0:0:0:0:0:0:0:1', '2019-10-12 19:02:47');
INSERT INTO `tb_login_record` VALUES (382, 9, '0:0:0:0:0:0:0:1', '2019-10-12 19:22:51');
INSERT INTO `tb_login_record` VALUES (383, 9, '0:0:0:0:0:0:0:1', '2019-10-12 19:53:30');
INSERT INTO `tb_login_record` VALUES (384, 9, '0:0:0:0:0:0:0:1', '2019-10-12 19:54:30');
INSERT INTO `tb_login_record` VALUES (385, 9, '0:0:0:0:0:0:0:1', '2019-10-12 20:11:26');
INSERT INTO `tb_login_record` VALUES (386, 9, '0:0:0:0:0:0:0:1', '2019-10-12 20:11:33');
INSERT INTO `tb_login_record` VALUES (387, 9, '0:0:0:0:0:0:0:1', '2019-10-12 20:11:39');
INSERT INTO `tb_login_record` VALUES (388, 9, '0:0:0:0:0:0:0:1', '2019-10-12 20:26:19');
INSERT INTO `tb_login_record` VALUES (389, 9, '0:0:0:0:0:0:0:1', '2019-10-12 20:26:35');
INSERT INTO `tb_login_record` VALUES (390, 9, '0:0:0:0:0:0:0:1', '2019-10-12 20:28:29');
INSERT INTO `tb_login_record` VALUES (391, 9, '0:0:0:0:0:0:0:1', '2019-10-12 20:28:48');
INSERT INTO `tb_login_record` VALUES (392, 9, '0:0:0:0:0:0:0:1', '2019-10-12 20:35:06');
INSERT INTO `tb_login_record` VALUES (393, 9, '0:0:0:0:0:0:0:1', '2019-10-13 14:41:50');
INSERT INTO `tb_login_record` VALUES (394, 9, '0:0:0:0:0:0:0:1', '2019-10-13 14:47:24');
INSERT INTO `tb_login_record` VALUES (395, 9, '0:0:0:0:0:0:0:1', '2019-10-13 15:05:55');
INSERT INTO `tb_login_record` VALUES (396, 9, '0:0:0:0:0:0:0:1', '2019-10-13 15:06:47');
INSERT INTO `tb_login_record` VALUES (397, 9, '0:0:0:0:0:0:0:1', '2019-10-13 15:15:00');
INSERT INTO `tb_login_record` VALUES (398, 9, '0:0:0:0:0:0:0:1', '2019-10-13 15:26:18');
INSERT INTO `tb_login_record` VALUES (399, 9, '0:0:0:0:0:0:0:1', '2019-10-13 15:50:31');
INSERT INTO `tb_login_record` VALUES (400, 9, '0:0:0:0:0:0:0:1', '2019-10-13 15:51:21');
INSERT INTO `tb_login_record` VALUES (401, 9, '0:0:0:0:0:0:0:1', '2019-10-13 15:59:21');
INSERT INTO `tb_login_record` VALUES (402, 9, '0:0:0:0:0:0:0:1', '2019-10-13 16:04:09');
INSERT INTO `tb_login_record` VALUES (403, 9, '0:0:0:0:0:0:0:1', '2019-10-13 16:04:17');
INSERT INTO `tb_login_record` VALUES (404, 9, '0:0:0:0:0:0:0:1', '2019-10-13 16:06:28');
INSERT INTO `tb_login_record` VALUES (405, 9, '0:0:0:0:0:0:0:1', '2019-10-13 16:10:23');
INSERT INTO `tb_login_record` VALUES (406, 9, '0:0:0:0:0:0:0:1', '2019-10-13 16:13:50');
INSERT INTO `tb_login_record` VALUES (407, 9, '0:0:0:0:0:0:0:1', '2019-10-13 16:24:53');
INSERT INTO `tb_login_record` VALUES (408, 9, '0:0:0:0:0:0:0:1', '2019-10-13 16:27:51');
INSERT INTO `tb_login_record` VALUES (409, 9, '0:0:0:0:0:0:0:1', '2019-10-13 16:30:26');
INSERT INTO `tb_login_record` VALUES (410, 9, '0:0:0:0:0:0:0:1', '2019-10-13 16:38:10');
INSERT INTO `tb_login_record` VALUES (411, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:12:02');
INSERT INTO `tb_login_record` VALUES (412, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:13:22');
INSERT INTO `tb_login_record` VALUES (413, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:14:08');
INSERT INTO `tb_login_record` VALUES (414, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:14:22');
INSERT INTO `tb_login_record` VALUES (415, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:14:32');
INSERT INTO `tb_login_record` VALUES (416, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:16:15');
INSERT INTO `tb_login_record` VALUES (417, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:17:28');
INSERT INTO `tb_login_record` VALUES (418, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:17:57');
INSERT INTO `tb_login_record` VALUES (419, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:24:47');
INSERT INTO `tb_login_record` VALUES (420, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:24:52');
INSERT INTO `tb_login_record` VALUES (421, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:27:49');
INSERT INTO `tb_login_record` VALUES (422, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:28:00');
INSERT INTO `tb_login_record` VALUES (423, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:28:37');
INSERT INTO `tb_login_record` VALUES (424, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:29:04');
INSERT INTO `tb_login_record` VALUES (425, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:29:31');
INSERT INTO `tb_login_record` VALUES (426, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:30:36');
INSERT INTO `tb_login_record` VALUES (427, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:31:42');
INSERT INTO `tb_login_record` VALUES (428, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:32:05');
INSERT INTO `tb_login_record` VALUES (429, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:32:24');
INSERT INTO `tb_login_record` VALUES (430, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:33:09');
INSERT INTO `tb_login_record` VALUES (431, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:33:50');
INSERT INTO `tb_login_record` VALUES (432, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:34:13');
INSERT INTO `tb_login_record` VALUES (433, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:35:08');
INSERT INTO `tb_login_record` VALUES (434, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:36:12');
INSERT INTO `tb_login_record` VALUES (435, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:37:58');
INSERT INTO `tb_login_record` VALUES (436, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:38:48');
INSERT INTO `tb_login_record` VALUES (437, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:39:08');
INSERT INTO `tb_login_record` VALUES (438, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:39:38');
INSERT INTO `tb_login_record` VALUES (439, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:40:01');
INSERT INTO `tb_login_record` VALUES (440, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:41:44');
INSERT INTO `tb_login_record` VALUES (441, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:42:52');
INSERT INTO `tb_login_record` VALUES (442, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:43:11');
INSERT INTO `tb_login_record` VALUES (443, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:43:27');
INSERT INTO `tb_login_record` VALUES (444, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:43:54');
INSERT INTO `tb_login_record` VALUES (445, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:45:13');
INSERT INTO `tb_login_record` VALUES (446, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:45:18');
INSERT INTO `tb_login_record` VALUES (447, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:46:17');
INSERT INTO `tb_login_record` VALUES (448, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:47:02');
INSERT INTO `tb_login_record` VALUES (449, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:47:41');
INSERT INTO `tb_login_record` VALUES (450, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:49:15');
INSERT INTO `tb_login_record` VALUES (451, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:49:32');
INSERT INTO `tb_login_record` VALUES (452, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:50:08');
INSERT INTO `tb_login_record` VALUES (453, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:52:06');
INSERT INTO `tb_login_record` VALUES (454, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:52:59');
INSERT INTO `tb_login_record` VALUES (455, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:53:36');
INSERT INTO `tb_login_record` VALUES (456, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:53:39');
INSERT INTO `tb_login_record` VALUES (457, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:53:59');
INSERT INTO `tb_login_record` VALUES (458, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:55:23');
INSERT INTO `tb_login_record` VALUES (459, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:56:24');
INSERT INTO `tb_login_record` VALUES (460, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:56:49');
INSERT INTO `tb_login_record` VALUES (461, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:57:52');
INSERT INTO `tb_login_record` VALUES (462, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:58:39');
INSERT INTO `tb_login_record` VALUES (463, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:59:01');
INSERT INTO `tb_login_record` VALUES (464, 19, '0:0:0:0:0:0:0:1', '2019-10-13 17:59:23');
INSERT INTO `tb_login_record` VALUES (465, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:21:07');
INSERT INTO `tb_login_record` VALUES (466, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:27:04');
INSERT INTO `tb_login_record` VALUES (467, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:28:53');
INSERT INTO `tb_login_record` VALUES (468, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:28:54');
INSERT INTO `tb_login_record` VALUES (469, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:31:30');
INSERT INTO `tb_login_record` VALUES (470, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:46:55');
INSERT INTO `tb_login_record` VALUES (471, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:48:43');
INSERT INTO `tb_login_record` VALUES (472, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:49:49');
INSERT INTO `tb_login_record` VALUES (473, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:52:29');
INSERT INTO `tb_login_record` VALUES (474, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:54:19');
INSERT INTO `tb_login_record` VALUES (475, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:54:20');
INSERT INTO `tb_login_record` VALUES (476, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:54:30');
INSERT INTO `tb_login_record` VALUES (477, 9, '0:0:0:0:0:0:0:1', '2019-10-13 20:55:42');
INSERT INTO `tb_login_record` VALUES (478, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:05:03');
INSERT INTO `tb_login_record` VALUES (479, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:05:24');
INSERT INTO `tb_login_record` VALUES (480, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:10:29');
INSERT INTO `tb_login_record` VALUES (481, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:10:29');
INSERT INTO `tb_login_record` VALUES (482, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:26:05');
INSERT INTO `tb_login_record` VALUES (483, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:29:36');
INSERT INTO `tb_login_record` VALUES (484, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:32:40');
INSERT INTO `tb_login_record` VALUES (485, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:34:05');
INSERT INTO `tb_login_record` VALUES (486, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:34:05');
INSERT INTO `tb_login_record` VALUES (487, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:34:06');
INSERT INTO `tb_login_record` VALUES (488, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:34:46');
INSERT INTO `tb_login_record` VALUES (489, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:34:46');
INSERT INTO `tb_login_record` VALUES (490, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:36:36');
INSERT INTO `tb_login_record` VALUES (491, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:39:52');
INSERT INTO `tb_login_record` VALUES (492, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:39:52');
INSERT INTO `tb_login_record` VALUES (493, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:39:53');
INSERT INTO `tb_login_record` VALUES (494, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:40:35');
INSERT INTO `tb_login_record` VALUES (495, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:40:35');
INSERT INTO `tb_login_record` VALUES (496, 9, '0:0:0:0:0:0:0:1', '2019-10-13 21:40:35');
INSERT INTO `tb_login_record` VALUES (497, 12, '0:0:0:0:0:0:0:1', '2019-10-14 08:53:09');
INSERT INTO `tb_login_record` VALUES (498, 12, '0:0:0:0:0:0:0:1', '2019-10-14 09:08:27');
INSERT INTO `tb_login_record` VALUES (499, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:13:03');
INSERT INTO `tb_login_record` VALUES (500, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:13:18');
INSERT INTO `tb_login_record` VALUES (501, 12, '0:0:0:0:0:0:0:1', '2019-10-14 09:13:32');
INSERT INTO `tb_login_record` VALUES (502, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:13:32');
INSERT INTO `tb_login_record` VALUES (503, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:15:43');
INSERT INTO `tb_login_record` VALUES (504, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:15:43');
INSERT INTO `tb_login_record` VALUES (505, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:15:44');
INSERT INTO `tb_login_record` VALUES (506, 12, '0:0:0:0:0:0:0:1', '2019-10-14 09:16:26');
INSERT INTO `tb_login_record` VALUES (507, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:19:39');
INSERT INTO `tb_login_record` VALUES (508, 12, '0:0:0:0:0:0:0:1', '2019-10-14 09:19:49');
INSERT INTO `tb_login_record` VALUES (509, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:20:49');
INSERT INTO `tb_login_record` VALUES (510, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:20:52');
INSERT INTO `tb_login_record` VALUES (511, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:29:03');
INSERT INTO `tb_login_record` VALUES (512, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:29:03');
INSERT INTO `tb_login_record` VALUES (513, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:32:09');
INSERT INTO `tb_login_record` VALUES (514, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:32:32');
INSERT INTO `tb_login_record` VALUES (515, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:33:07');
INSERT INTO `tb_login_record` VALUES (516, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:33:13');
INSERT INTO `tb_login_record` VALUES (517, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:33:43');
INSERT INTO `tb_login_record` VALUES (518, 20, '0:0:0:0:0:0:0:1', '2019-10-14 09:33:54');
INSERT INTO `tb_login_record` VALUES (519, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:34:37');
INSERT INTO `tb_login_record` VALUES (520, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:34:59');
INSERT INTO `tb_login_record` VALUES (521, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:35:02');
INSERT INTO `tb_login_record` VALUES (522, 9, '0:0:0:0:0:0:0:1', '2019-10-14 09:35:26');
INSERT INTO `tb_login_record` VALUES (523, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:35:36');
INSERT INTO `tb_login_record` VALUES (524, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:36:01');
INSERT INTO `tb_login_record` VALUES (525, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:36:06');
INSERT INTO `tb_login_record` VALUES (526, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:37:14');
INSERT INTO `tb_login_record` VALUES (527, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:39:10');
INSERT INTO `tb_login_record` VALUES (528, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:45:42');
INSERT INTO `tb_login_record` VALUES (529, 19, '0:0:0:0:0:0:0:1', '2019-10-14 09:51:31');
INSERT INTO `tb_login_record` VALUES (530, 1, '0:0:0:0:0:0:0:1', '2019-10-14 09:59:10');
INSERT INTO `tb_login_record` VALUES (531, 14, '0:0:0:0:0:0:0:1', '2019-10-14 10:00:04');
INSERT INTO `tb_login_record` VALUES (532, 14, '0:0:0:0:0:0:0:1', '2019-10-14 10:00:20');
INSERT INTO `tb_login_record` VALUES (533, 1, '0:0:0:0:0:0:0:1', '2019-10-14 10:10:42');
INSERT INTO `tb_login_record` VALUES (534, 19, '0:0:0:0:0:0:0:1', '2019-10-14 10:18:54');
INSERT INTO `tb_login_record` VALUES (535, 9, '0:0:0:0:0:0:0:1', '2019-10-14 10:29:10');

-- ----------------------------
-- Table structure for tb_membership_level
-- ----------------------------
DROP TABLE IF EXISTS `tb_membership_level`;
CREATE TABLE `tb_membership_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员等级表',
  `membership_level` int(7) NULL DEFAULT NULL COMMENT '会员等级',
  `recharge_discount` double(11, 0) NULL DEFAULT NULL COMMENT '充值折扣',
  `consumption_discount` double(11, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_membership_level
-- ----------------------------
INSERT INTO `tb_membership_level` VALUES (1, 1, NULL, NULL);
INSERT INTO `tb_membership_level` VALUES (2, 2, NULL, NULL);
INSERT INTO `tb_membership_level` VALUES (3, 3, NULL, NULL);
INSERT INTO `tb_membership_level` VALUES (4, 4, NULL, NULL);
INSERT INTO `tb_membership_level` VALUES (5, 5, NULL, NULL);
INSERT INTO `tb_membership_level` VALUES (6, 6, NULL, NULL);
INSERT INTO `tb_membership_level` VALUES (7, 7, NULL, NULL);

-- ----------------------------
-- Table structure for tb_my_album
-- ----------------------------
DROP TABLE IF EXISTS `tb_my_album`;
CREATE TABLE `tb_my_album`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人空间中的我的相册表',
  `album_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相册表名称，默认相册为ID1  ',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_my_album
-- ----------------------------
INSERT INTO `tb_my_album` VALUES (1, '默认相册', 1);
INSERT INTO `tb_my_album` VALUES (2, '啊啊啊', 1);

-- ----------------------------
-- Table structure for tb_my_collection
-- ----------------------------
DROP TABLE IF EXISTS `tb_my_collection`;
CREATE TABLE `tb_my_collection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人空间：主页：我的收藏  id',
  `userid` int(11) NULL DEFAULT NULL,
  `collection_video_id` int(11) NULL DEFAULT NULL COMMENT '收藏视频id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_my_dynamics
-- ----------------------------
DROP TABLE IF EXISTS `tb_my_dynamics`;
CREATE TABLE `tb_my_dynamics`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人空间：主页：我的动态：动态列表id',
  `user_id` int(11) NULL DEFAULT NULL,
  `dynamic_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态内容（汉字）',
  `dynamic_photos_address` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态图片地址',
  `dynamic_date` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '  发布动态时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_my_dynamics
-- ----------------------------
INSERT INTO `tb_my_dynamics` VALUES (1, 1, '我是演示的案例', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/a5061b71782b4aaf814fb834aeae1bfd.jpeg', '2019-10-04 20:37:05');
INSERT INTO `tb_my_dynamics` VALUES (2, 1, '有许多要分享的', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/3359cccfabb3400ca803edf144fbdafe.jpeg', '2019-10-05 16:38:14');
INSERT INTO `tb_my_dynamics` VALUES (3, 1, '开心啊', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/4afc32556eec467b920be8af6394c29d.jpeg', '2019-10-05 16:43:09');
INSERT INTO `tb_my_dynamics` VALUES (4, 1, '倒序查询', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/fd7a47420c314d1cb8f9b9b48838b7fe.jpeg', '2019-10-05 16:47:46');
INSERT INTO `tb_my_dynamics` VALUES (5, 1, '倒序好不好使', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/863ea8c667664e43b92f0655176f03db.jpeg', '2019-10-05 16:50:46');
INSERT INTO `tb_my_dynamics` VALUES (6, 1, '哦', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/0a308d52365d4d299dc5ff53430aef75.jpeg', '2019-10-05 16:53:34');
INSERT INTO `tb_my_dynamics` VALUES (7, 1, '倒序', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/a8020a0adcd54483af0ea493ebd1d0fb.jpeg', '2019-10-05 17:02:28');
INSERT INTO `tb_my_dynamics` VALUES (8, 1, '只想分享给你一人', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/6a4d15567cb740a09ab55c15514cbbac.jpeg', '2019-10-07 09:10:40');
INSERT INTO `tb_my_dynamics` VALUES (9, 1, '哈哈哈哈', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/fe0e18039f7f41679224d2f10cae003f.jpeg', '2019-10-07 09:12:25');
INSERT INTO `tb_my_dynamics` VALUES (14, 12, '这是一张图片', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/3532924e49cb462db9e5e887e12cbef0.jpeg', '2019-10-09 20:08:42');
INSERT INTO `tb_my_dynamics` VALUES (15, 12, '测试一下', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/e850c4cebd8b4e008d3ae64d3cbbbdce.jpg', '2019-10-10 09:26:24');
INSERT INTO `tb_my_dynamics` VALUES (16, 9, '该出去转转了', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/4fe300afb831427a8aca403802df937f.jpg', '2019-10-13 15:52:43');
INSERT INTO `tb_my_dynamics` VALUES (17, 20, '今天好冷啊', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/2d4b909f86154696accc254662692b33.jpg', '2019-10-14 09:48:54');
INSERT INTO `tb_my_dynamics` VALUES (18, 20, '今晚吃什么呀', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/a1f5830d260f40609b459666857aba40.jpg', '2019-10-14 09:49:30');

-- ----------------------------
-- Table structure for tb_my_photos
-- ----------------------------
DROP TABLE IF EXISTS `tb_my_photos`;
CREATE TABLE `tb_my_photos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人空间：主页：我的相册id',
  `user_id` int(11) NULL DEFAULT NULL,
  `photo_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片地址',
  `upload_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传时间',
  `file_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `album_id` int(11) NOT NULL DEFAULT 1 COMMENT '关联相册表的id  1为默认相册',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_my_photos
-- ----------------------------
INSERT INTO `tb_my_photos` VALUES (28, 20, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/52426d7ab03942709f3b6a855382067a.jpg', NULL, NULL, 1);
INSERT INTO `tb_my_photos` VALUES (29, 20, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/89912c9e30244910b6377f2d9aa2f611.jpg', NULL, NULL, 1);
INSERT INTO `tb_my_photos` VALUES (30, 20, 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/52426d7ab03942709f3b6a855382067a.jpg', NULL, NULL, 1);

-- ----------------------------
-- Table structure for tb_recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_recharge_record`;
CREATE TABLE `tb_recharge_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '充值记录的id',
  `user_id` int(11) NULL DEFAULT NULL,
  `recharge_amount` double(255, 2) NULL DEFAULT NULL COMMENT '充值金额',
  `recharge_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '充值时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_recharge_record
-- ----------------------------
INSERT INTO `tb_recharge_record` VALUES (1, 9, 6.00, '2019-10-04 17:30:10');
INSERT INTO `tb_recharge_record` VALUES (2, 9, 6.00, '2019-10-04 17:38:20');
INSERT INTO `tb_recharge_record` VALUES (19, 12, 666.00, '2019-10-06 18:19:08');
INSERT INTO `tb_recharge_record` VALUES (20, 12, 888.00, '2019-10-07 15:37:04');
INSERT INTO `tb_recharge_record` VALUES (21, 12, 6.00, '2019-10-07 17:26:02');
INSERT INTO `tb_recharge_record` VALUES (22, 12, 11.00, '2019-10-07 17:32:27');
INSERT INTO `tb_recharge_record` VALUES (23, 12, 23.00, '2019-10-08 09:16:19');
INSERT INTO `tb_recharge_record` VALUES (33, 12, 11.00, '2019-10-14 09:16:59');
INSERT INTO `tb_recharge_record` VALUES (34, 12, 11.00, '2019-10-14 09:17:11');
INSERT INTO `tb_recharge_record` VALUES (35, 12, 6.00, '2019-10-14 09:18:35');
INSERT INTO `tb_recharge_record` VALUES (36, 12, 2.00, '2019-10-14 09:20:02');
INSERT INTO `tb_recharge_record` VALUES (37, 20, 6.00, '2019-10-14 09:38:30');
INSERT INTO `tb_recharge_record` VALUES (38, 20, 666.00, '2019-10-14 09:38:59');

-- ----------------------------
-- Table structure for tb_reply
-- ----------------------------
DROP TABLE IF EXISTS `tb_reply`;
CREATE TABLE `tb_reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reply_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reply_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` int(11) NULL DEFAULT NULL,
  `video_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKgbgbj6d2fk0qesues77ds4wkv`(`comment_id`) USING BTREE,
  INDEX `FKkjv6in4jhfr484po2uqetymy9`(`user_id`) USING BTREE,
  INDEX `FK6epaley6r3v5pxvjc6sh74os1`(`user_name`) USING BTREE,
  INDEX `FK5x474royovi5yavivxfx0lagn`(`video_id`) USING BTREE,
  CONSTRAINT `FK5x474royovi5yavivxfx0lagn` FOREIGN KEY (`video_id`) REFERENCES `tb_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK6epaley6r3v5pxvjc6sh74os1` FOREIGN KEY (`user_name`) REFERENCES `tb_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKgbgbj6d2fk0qesues77ds4wkv` FOREIGN KEY (`comment_id`) REFERENCES `tb_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKkjv6in4jhfr484po2uqetymy9` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_reply
-- ----------------------------
INSERT INTO `tb_reply` VALUES (1, 4, 1, '11111', NULL, NULL, NULL, NULL);
INSERT INTO `tb_reply` VALUES (2, 3, 9, '2222', NULL, NULL, NULL, NULL);
INSERT INTO `tb_reply` VALUES (3, 1, 13, '3333', NULL, NULL, NULL, NULL);
INSERT INTO `tb_reply` VALUES (4, 2, 13, '222222', NULL, NULL, NULL, NULL);
INSERT INTO `tb_reply` VALUES (5, 2, 1, '555555', NULL, NULL, NULL, NULL);
INSERT INTO `tb_reply` VALUES (6, 3, 9, '66666', NULL, NULL, NULL, NULL);
INSERT INTO `tb_reply` VALUES (7, 3, 13, '8999999', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_two_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_two_menu`;
CREATE TABLE `tb_two_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '二级菜单',
  `menu2_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二级菜单名称',
  `first_menu_id` int(20) NULL DEFAULT NULL COMMENT '一级菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_two_menu
-- ----------------------------
INSERT INTO `tb_two_menu` VALUES (1, '热血', 1);
INSERT INTO `tb_two_menu` VALUES (2, '校园', 1);
INSERT INTO `tb_two_menu` VALUES (3, '耽美', 1);
INSERT INTO `tb_two_menu` VALUES (4, '奇幻', 3);
INSERT INTO `tb_two_menu` VALUES (5, '搞笑', 3);
INSERT INTO `tb_two_menu` VALUES (6, '日常', 3);
INSERT INTO `tb_two_menu` VALUES (9, '黑帮', 4);
INSERT INTO `tb_two_menu` VALUES (10, '呵呵', 4);
INSERT INTO `tb_two_menu` VALUES (11, '武侠', 13);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `user_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `user_context` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户签名',
  `user_birthday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户出生年月',
  `user_sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '用户性别1为男性，0为女性，2为保密',
  `user_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `recovery_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '回收状态0为未回收，1为回收',
  `ice_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '冻结状态0为未冻结，1',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '封号状态0为未封号，1为封号',
  `c_money` double(255, 2) NOT NULL DEFAULT 30.00 COMMENT '金额C币',
  `user_telephone_num` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `user_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `jc_num` int(100) NOT NULL DEFAULT 80 COMMENT '节操值默认添加80',
  `membership_level_id` int(7) NOT NULL DEFAULT 1 COMMENT '会员等级ID 默认为绑定下表ID1   为0级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '213055', '739741', '赵一凡', '这个人很懒什么都没写哦~', '1970401', '2', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/ce5bb6db430c452d90f75363dfe3b29a.tmp', '0', '0', '1', 100.00, '15124873908', '1171636270@qq.com', 80, 1);
INSERT INTO `tb_user` VALUES (9, '232231', '5958231', '李文岚', '今天阳光明媚', '19960127', '1', 'http://localhost:8080/uploadFile/1.jpg', '0', '0', '0', 102.00, '15804780093', '1846038231@qq.com', 80, 1);
INSERT INTO `tb_user` VALUES (10, '520624', '19970128', '白子明', '这个人很懒什么都没写哦~', '19970128', '1', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/18b07f04cc02448da8c28876b407014b.png', '0', '0', '0', 100.00, '15334998979', '1639180478@qq.com', 80, 1);
INSERT INTO `tb_user` VALUES (12, '796524', '19960102', '马冉', '这个人很懒什么都没写哦~', '19960102', '0', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/98667eee1a314c399e763ca34b60f2ff.tmp', '0', '0', '0', 200.00, '15164747652', '214398632@qq.com', 80, 1);
INSERT INTO `tb_user` VALUES (13, '191467', '123456', '杨志超', '这个人很懒什么都没写哦~', '19950425', '1', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/9391ac6e84d74630bec28e7d8d499c51.tmp', '0', '0', '0', 100.00, '18648067111', '446913432@qq.com', 80, 1);
INSERT INTO `tb_user` VALUES (14, '239832', '19960508', '肖伟', '这个人很懒什么都没写哦~', '19960508', '2', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/a61ce7240ce6496495660ec2995dfcc1.tmp', '0', '0', '0', 100.00, '15847960540', '924354692@qq.com', 80, 1);
INSERT INTO `tb_user` VALUES (15, '992823', '19970717', '韩东昊', '这个人很懒什么都没写哦~', '19970717', '2', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/0787cc5d6165448da095bb81485179ff.tmp', '0', '0', '0', 100.00, '15049165953', '773859403@qq.com', 80, 1);
INSERT INTO `tb_user` VALUES (18, '610251', '19970104', '王冰冰', '这个人很懒，什么都没写哦~≧▽≦', '19970104', '2', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/e340078e1bf34294b9a27544164c53e8.tmp', '0', '0', '0', 100.00, '18347664671', '2669799631@qq.com', 80, 1);
INSERT INTO `tb_user` VALUES (19, '1', '1', '王冰冰', '这个人很懒，什么都没写哦~≧▽≦', '19970104', '2', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/e340078e1bf34294b9a27544164c53e8.tmp', '0', '0', '0', 102.00, '18347664671', '2669799631@qq.com', 80, 1);
INSERT INTO `tb_user` VALUES (20, '485880', '2', '赵二凡3', '这个人很懒，什么都没写哦~≧▽≦', '19980505', '2', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/fae121757cdf48e296a1b2a3ed374d38.tmp', '0', '0', '0', 774.00, '123456789', '2727116248@qq.com', 80, 1);

-- ----------------------------
-- Table structure for tb_video_upload
-- ----------------------------
DROP TABLE IF EXISTS `tb_video_upload`;
CREATE TABLE `tb_video_upload`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人空间主页视频上传列表：id',
  `user_id` int(11) NULL DEFAULT NULL,
  `video_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频名称',
  `video_cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频封面图片',
  `video_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频地址',
  `upload_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传时间',
  `top_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '1是，0否       是否置顶',
  `points_num` int(255) NULL DEFAULT NULL COMMENT '点赞数量',
  `examine_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '审核状态0未审核，1已审核',
  `audit_pass` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '默认为0，视频通过为1，驳回为2',
  `viewing_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '0为非会员可观看，1为会员观看（判断是否大于0）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_video_upload
-- ----------------------------
INSERT INTO `tb_video_upload` VALUES (4, 9, 'w', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/cab678ca1092440ea17df5519d89b7ee.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/7833f21a5489470098d1fb624b7cd125.mp4', '2019-10-07', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (6, 9, 'b', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/110437ba8f114b6b90752fac349f851b.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/dd644c8fbc1340f5bae045a9e318d07b.mp4', '2019-10-07', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (12, 9, '尼古拉斯赵四儿', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/af9417f4717c403b86a05a0a996ecdec.JPG', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/b103649945884defaa803b99232eb765.mp4', '2019-10-09', '0', 0, '1', '1', '0');
INSERT INTO `tb_video_upload` VALUES (13, 9, '热的快炸了', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/73c0f23b6d1f4a81abd2d00c0e21d0e6.JPG', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/af33904f8c2d47cdb4992f054fae7b97.mp4', '2019-10-09', '0', 0, '1', '2', '0');
INSERT INTO `tb_video_upload` VALUES (15, 9, '别耍嘴', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/ebfefa20e35448369a4ffe715a5f6d70.JPG', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/9f6263053a6049ec8553d5e38ad190ea.mp4', '2019-10-09', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (16, 9, '口碑', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/589a7061c53a430ab14091e8c12f0d48.JPG', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/8e29cb179aef440f95fa24cde5793e93.mp4', '2019-10-09', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (17, 9, '中国好酒往哪搁', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/959ddf0f777c4106bbb83e4d627a9f9f.JPG', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/376e56044825493fb4b8ad852c61cb92.mp4', '2019-10-09', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (18, 9, '你好牛', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/acaaa05248cd473db413e12479803bb8.JPG', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/cd5f95e674614fa98f01439864b02088.mp4', '2019-10-09', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (19, 9, 'z', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/374b83e03fd84d53b4122a02f317d855.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/f8e16b284b09417ba797ab071074537b.mp4', '2019-10-09', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (20, 18, 'm', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/eca2b61b6e294610a327266226e7f39b.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/e3ec1481ad2342a3af8e80a4565ad314.mp4', '2019-10-09', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (21, 18, 'k', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/1238f0558cf247e29dbe8674bd9a8def.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/ce62959aa0ee4e71a94739c88af012b8.mp4', '2019-10-09', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (22, 18, 'i', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/32ec54eb91a04e5fbe953be0ec893b89.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/6d5ed7d4a2b94fad935354d25b917439.mp4', '2019-10-10', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (24, 18, 'q', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/5eef709a6707498e8556e20fa69bf70a.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/a602cd0810c14684ba14ea105c5e21a3.mp4', '2019-10-11', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (25, 18, 'x', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/7a0efd87d3584b7680368352e8877094.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/ca54b70d40b0422bb8038d1dc3648ce8.mp4', '2019-10-11', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (26, 12, 'mm', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/2587ed9d0b8d47f5acc3535cf17a0307.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/f31e05a1d3f94178902cdc4047e87e77.mp4', '2019-10-12', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (27, 12, 'mm', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/196912951445443fa357e00c45a8c329.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/f5d136ad0eca41dface60e8aebca409a.mp4', '2019-10-12', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (28, 12, 'mmm', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/00301c7ab826417486cbc622eaf308e7.jpeg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/acc741a0990449198918125d7c82abc4.mp4', '2019-10-12', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (29, 19, 'q', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/259a811349ae4e56b140ce9a3114cd84.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/caa2504332a04e2cb53acab1bffb9a1a.mp4', '2019-10-14', '0', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (30, 20, '成吉思汗', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/4c4313e29ea2498889ad031449aa301d.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/cdca395c7f314ecf9d9e8a5aef0fde82.mp4', '2019-10-14', '1', 0, '0', '0', '0');
INSERT INTO `tb_video_upload` VALUES (31, 20, '你好牛', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/e23e3fc687dc48359bbc0fad1f334c53.jpg', 'http://changguiying.oss-cn-beijing.aliyuncs.com/yc1/df088010a85b4676a4d71bd15b769c44.mp4', '2019-10-14', '0', 0, '0', '0', '0');

SET FOREIGN_KEY_CHECKS = 1;
