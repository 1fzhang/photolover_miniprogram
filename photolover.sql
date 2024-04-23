/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : photolover

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 27/07/2022 23:50:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators`  (
  `AId` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `APassword` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `APhone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AName` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ASex` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`AId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES ('1', '134', '123456', 'CC', 2);

-- ----------------------------
-- Table structure for back
-- ----------------------------
DROP TABLE IF EXISTS `back`;
CREATE TABLE `back`  (
  `Back_id` int(11) NOT NULL AUTO_INCREMENT,
  `COpen_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Back_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `Back_time` timestamp NULL DEFAULT NULL,
  `Back_check` int(1) NULL DEFAULT 0,
  `Back_back` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`Back_id`) USING BTREE,
  INDEX `COpen_id`(`COpen_id`) USING BTREE,
  CONSTRAINT `back_ibfk_1` FOREIGN KEY (`COpen_id`) REFERENCES `customers` (`COpen_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of back
-- ----------------------------
INSERT INTO `back` VALUES (10, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', '摄影师乱抬价！！', '2022-07-27 09:45:00', 1, '您好，请提供一下摄影师昵称，我们马上为您解决');
INSERT INTO `back` VALUES (11, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', '会员充值未到账！', '2022-07-27 10:01:49', 1, '亲，这边可能是网络问题哦，我们核实情况后马上给您解决!');
INSERT INTO `back` VALUES (12, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', '为什么发票认证选不了个人还是公司！', '2022-07-27 10:02:48', 1, '十分抱歉，后续我们会进行修复，望您谅解。');
INSERT INTO `back` VALUES (13, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', '摄影师在线下收取额外费用！', '2022-07-27 17:34:38', 1, '请您这边提供一下摄影师昵称，我们会马上了解相关情况');
INSERT INTO `back` VALUES (14, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', '可以不可以有一个本地约拍的模块', '2022-07-27 18:36:33', 0, NULL);

-- ----------------------------
-- Table structure for bills
-- ----------------------------
DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills`  (
  `BId` int(11) NOT NULL AUTO_INCREMENT,
  `BName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `BNumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `BAddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `BPhone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `BBank` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `BAccount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`BId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bills
-- ----------------------------
INSERT INTO `bills` VALUES (4, '阿诗丹顿', '2233', '', '', '', '');
INSERT INTO `bills` VALUES (5, '是第三个', '12132323', '', '', '', '');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `COpen_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `CName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CPic` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `CLocation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CPhone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CIdentify` int(11) NULL DEFAULT NULL,
  `CSex` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`COpen_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', '小张11点就睡', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKJic8SHES4xQdZv4x6aZG4TzcaOibokkAicrRIJ35I89ZZNTKTmYBJAWtLqLcu0SdkrBspuUwpNYl0w/132', '广东省,深圳市,罗湖区', '17816723786', 1, 0);
INSERT INTO `customers` VALUES ('ovsff5FYeBSeereYh_qxdff8SZf8', '小张12点就睡', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKJic8SHES4xQdZv4x6aZG4TzcaOibokkAicrRIJ35I89ZZNTKTmYBJAWtLqLcu0SdkrBspuUwpNYl0w/132', '浙江省,宁波市,北仑区', '17882323245', 0, 1);
INSERT INTO `customers` VALUES ('ovsff5FYeBsfdfeYh_qxsfdfgsd8', '小张1点就睡', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKJic8SHES4xQdZv4x6aZG4TzcaOibokkAicrRIJ35I89ZZNTKTmYBJAWtLqLcu0SdkrBspuUwpNYl0w/132', '湖北省,武汉市，洪山区', '13232443564', 0, 1);

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes`  (
  `LId` int(11) NOT NULL AUTO_INCREMENT,
  `COpen_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `WId` int(11) NOT NULL,
  `Ltime_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`LId`) USING BTREE,
  INDEX `COpenId`(`COpen_id`) USING BTREE,
  INDEX `WId_2`(`WId`) USING BTREE,
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`COpen_id`) REFERENCES `customers` (`COpen_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`WId`) REFERENCES `works` (`WId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES (19, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 44, '2022-07-27 09:52:27');
INSERT INTO `likes` VALUES (20, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 45, '2022-07-27 09:52:44');
INSERT INTO `likes` VALUES (23, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 43, '2022-07-27 09:53:49');
INSERT INTO `likes` VALUES (24, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 41, '2022-07-27 18:48:00');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `OId` int(11) NOT NULL AUTO_INCREMENT,
  `POpen_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `COpen_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `WId` int(11) NOT NULL,
  `Price_all` double NULL DEFAULT NULL,
  `OTime_stamp` timestamp NULL DEFAULT NULL,
  `OIf_paid` int(11) NULL DEFAULT NULL,
  `OIf_reviewed` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`OId`) USING BTREE,
  INDEX `POpen_id`(`POpen_id`) USING BTREE,
  INDEX `COpen_id`(`COpen_id`) USING BTREE,
  INDEX `WId`(`WId`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`POpen_id`) REFERENCES `photographers` (`POpen_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`COpen_id`) REFERENCES `customers` (`COpen_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`WId`) REFERENCES `works` (`WId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (8, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 42, 396, '2022-07-26 22:52:53', 0, 1);
INSERT INTO `orders` VALUES (9, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 44, 600, '2022-07-26 22:55:44', 0, 1);
INSERT INTO `orders` VALUES (10, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 42, 396, '2022-07-27 17:14:02', 0, 1);

-- ----------------------------
-- Table structure for photographers
-- ----------------------------
DROP TABLE IF EXISTS `photographers`;
CREATE TABLE `photographers`  (
  `POpen_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `PName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PPic` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `PLocation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PPhone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PIs_vip` int(11) NULL DEFAULT NULL,
  `PIdentify` int(11) NULL DEFAULT NULL,
  `PQualify` int(11) NULL DEFAULT NULL,
  `PSex` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`POpen_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photographers
-- ----------------------------
INSERT INTO `photographers` VALUES ('0f-ve5P-dferrrd3__rcAdggsdxw', '今天有点热', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIcGQaEFsf63BxmrQlrEFaQcklef4EAhAEGtHQW1WtymzRRuEuYfKbOHuqUtxIhuqWwFQQX5cEfhQ/132', '河南省,信阳市,浉河区', '12345569876', 1, 0, 1, NULL);
INSERT INTO `photographers` VALUES ('0f-ve5P-dffhO7j3__rcAmsdsdfw', '不加葱谢谢', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIcGQaEFsf63BxmrQlrEFaQcklef4EAhAEGtHQW1WtymzRRuEuYfKbOHuqUtxIhuqWwFQQX5cEfhQ/132', '浙江省,杭州市,西湖区', '13716849876', 0, 0, 0, 1);
INSERT INTO `photographers` VALUES ('ol-vO5P-Cd0hO7j3__rcAmvabBfc', '无事小神仙', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIcGQaEFsf63BxmrQlrEFaQcklef4EAhAEGtHQW1WtymzRRuEuYfKbOHuqUtxIhuqWwFQQX5cEfhQ/132', '贵州省,贵阳市,南明区', '13242564352', 1, 1, 0, 0);

-- ----------------------------
-- Table structure for requests
-- ----------------------------
DROP TABLE IF EXISTS `requests`;
CREATE TABLE `requests`  (
  `RId` int(11) NOT NULL AUTO_INCREMENT,
  `POpen_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `COpen_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `WId` int(11) NULL DEFAULT NULL,
  `Wprice_per_hour` double NULL DEFAULT NULL,
  `RIf_cloth` int(11) NULL DEFAULT NULL,
  `RIf_make_up` int(11) NULL DEFAULT NULL,
  `RTime_start` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RTime_scale` double NULL DEFAULT NULL,
  `RPrice_all` double NULL DEFAULT NULL,
  `RIf_check` int(11) UNSIGNED NULL DEFAULT NULL,
  `RIf_agree` int(11) NULL DEFAULT NULL,
  `RRefuse_reason` int(11) NULL DEFAULT NULL,
  `RTime_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`RId`) USING BTREE,
  INDEX `COpenId`(`COpen_id`) USING BTREE,
  INDEX `WId`(`WId`) USING BTREE,
  INDEX `POpen_id`(`POpen_id`) USING BTREE,
  CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`COpen_id`) REFERENCES `customers` (`COpen_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `requests_ibfk_3` FOREIGN KEY (`WId`) REFERENCES `works` (`WId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `requests_ibfk_4` FOREIGN KEY (`POpen_id`) REFERENCES `photographers` (`POpen_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of requests
-- ----------------------------
INSERT INTO `requests` VALUES (18, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 42, 99, 0, 0, '2022-09-01', 4, 396, 1, 1, NULL, '2022-07-26 22:50:35');
INSERT INTO `requests` VALUES (19, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 43, 150, 1, 1, '2022-08-01', 2, 400, 1, 0, 1, '2022-07-26 22:52:05');
INSERT INTO `requests` VALUES (20, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 44, 200, 0, 0, '2022-08-03', 3, 600, 1, 1, NULL, '2022-07-26 22:52:21');
INSERT INTO `requests` VALUES (21, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 40, 100, 0, 0, '2023-09-01', 3, 300, 1, 0, 1, '2022-07-26 22:53:51');
INSERT INTO `requests` VALUES (22, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 42, 99, 0, 0, '2022-10-01', 4, 396, 1, 1, NULL, '2022-07-26 23:04:16');
INSERT INTO `requests` VALUES (23, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 40, 100, 1, 1, '2022-09-02', 2, 300, 0, 0, NULL, '2022-07-27 09:51:54');
INSERT INTO `requests` VALUES (24, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 41, 120, 1, 0, '2022-09-01', 4, 530, 0, 0, NULL, '2022-07-27 17:44:22');

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews`  (
  `Rev_id` int(11) NOT NULL AUTO_INCREMENT,
  `OId` int(11) NOT NULL,
  `COpen_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `WId` int(11) NOT NULL,
  `Rev_grade` int(11) NULL DEFAULT NULL,
  `Rev_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `Rev_time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Rev_id`) USING BTREE,
  INDEX `COpenId`(`COpen_id`) USING BTREE,
  INDEX `OId`(`OId`) USING BTREE,
  INDEX `WId`(`WId`) USING BTREE,
  CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`COpen_id`) REFERENCES `customers` (`COpen_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `reviews_ibfk_4` FOREIGN KEY (`OId`) REFERENCES `orders` (`OId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `reviews_ibfk_5` FOREIGN KEY (`WId`) REFERENCES `works` (`WId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviews
-- ----------------------------
INSERT INTO `reviews` VALUES (10, 8, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 42, 5, '摄影师很负责！拍的超好', '2022-07-26 22:59:19');
INSERT INTO `reviews` VALUES (11, 9, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 44, 3, '性价比偏低了，感觉拍的就那样', '2022-07-26 23:00:45');
INSERT INTO `reviews` VALUES (12, 10, 'ovrXt5FYeBS6xf6Yh_qx0CO8SZf8', 42, 5, '是我想要的感觉！', '2022-07-27 19:04:33');

-- ----------------------------
-- Table structure for works
-- ----------------------------
DROP TABLE IF EXISTS `works`;
CREATE TABLE `works`  (
  `WId` int(11) NOT NULL AUTO_INCREMENT,
  `POpen_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `WTitle` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `W_text_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `W_pics` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `W_price_per_hour` double NULL DEFAULT NULL,
  `W_time_stamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `W_likes` int(11) NULL DEFAULT 0,
  `WTags` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `W_pass` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`WId`) USING BTREE,
  INDEX `POpenId`(`POpen_id`) USING BTREE,
  CONSTRAINT `works_ibfk_1` FOREIGN KEY (`POpen_id`) REFERENCES `photographers` (`POpen_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of works
-- ----------------------------
INSERT INTO `works` VALUES (40, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', '关于我在华科教学楼里拍到了致青春的新男主', '小哥哥太好看了呜呜呜呜，欢迎想拍的友友们来找我哦~', 'cc2d9300dd7f4fe699df8c88e09cd508.png,d8ba0fe685974ff7acc63324da4a9d48.png,6bf7916d10c543bd97e21ae4e6988a71.png,', 100, '2022-07-26 22:21:37', 0, '校园', 1);
INSERT INTO `works` VALUES (41, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', '说我是亦卷古月武汉分月不过分吧！', '超喜欢这组的调色风格~', '43a4326784cc43c1a5db59a0229facac.png,489184e00bc74fe08f76383409541744.png,708155f0b57f4677b6743ff30328b053.png,', 120, '2022-07-26 22:25:47', 1, '复古', 1);
INSERT INTO `works` VALUES (42, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', '嗯..怎么不算日系甜妹呢？', '氛围感满满，欢迎找我约拍呀~', 'd154c75be0c248018c838dfc4509339c.png,4eb054d0159349dca2acc6b00fc46c7f.png,a43c0c6b4cb84f62ab165e5a260b296c.png,', 99, '2022-07-26 22:30:28', 0, '日系', 1);
INSERT INTO `works` VALUES (43, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', '快来嗑糖啦~', '带上你的npy来拍照呀', '6714a8107ece469ba2eb9a43a818e7bb.png,acc9a5203aeb41489da65c71082184d2.png,d34126cab2b44f1080e54ca0c51bc1b3.png,', 150, '2022-07-26 22:33:48', 1, '情侣', 1);
INSERT INTO `works` VALUES (44, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', '又是一年毕业季！', '不会吧有人不会对毕业大片心动吧~', '822ab9a55ded407ca4a3e12ada70bff9.png,3c8478bce18c41c68a54d2114b27d6a2.png,bc15a802d37d429eb3ced0776c5bbfa8.png,', 200, '2022-07-26 22:37:14', 1, '校园', 1);
INSERT INTO `works` VALUES (45, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', '夏日约拍', '夏日与你一样值得期待 ​​​', 'ab9f02e51ba44315bee2b0854ba3bdf6.png,a27efe13195b4891a8509b4329c62378.png,3f234cc8813244a79147db449df2c09a.png,', 115, '2022-07-27 09:29:53', 1, '清新', 1);
INSERT INTO `works` VALUES (46, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', 'jinx means jinx.', '英雄联盟-金克丝-双城之战', '94ff5aaf3ce04ebba9053d16c23a2ec1.png,80c08fa918ff413192d31b3eb0d18ab4.png,bd6593caaab74bcdbc790694ae84b14a.png,', 200, '2022-07-27 22:32:57', 0, 'cosplay', 1);
INSERT INTO `works` VALUES (47, 'ol-vO5P-Cd0hO7j3__rcAmvabBfc', '最动人时光，未必地老天荒', '胶片风情侣写真~', '380ca1df74b448e9b34b35b95f76efe2.png,91827383ba8c4c898282af69541b7909.png,e3f1f492d18747d69e311bc36b5a7078.png,', 99, '2022-07-27 17:18:37', 0, '情侣', 1);

SET FOREIGN_KEY_CHECKS = 1;
