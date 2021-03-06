/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : meedesk_meeting

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 28/05/2020 15:46:24
*/

ALTER USER 'root'@'localhost' IDENTIFIED BY 'pts123456.';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'pts123456.' WITH GRANT OPTION;
show variables like '%max_allowed_packet%';  
set global max_allowed_packet = 2*1024*1024*10; 
CREATE DATABASE meedesk_meeting DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
use meedesk_meeting;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_configs
-- ----------------------------
DROP TABLE IF EXISTS `base_configs`;
CREATE TABLE `base_configs` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingRoomId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `backgroundUrl` longblob,
  `defaultPage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `backgroundIndex` int(11) DEFAULT NULL,
  `clientPowerBoot` tinyint(1) DEFAULT NULL,
  `comProt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `showSeatName` tinyint(1) DEFAULT NULL,
  `screeShutdown` tinyint(1) DEFAULT NULL,
  `autoLogin` tinyint(1) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  `logo` longblob,
  `showLogo` tinyint(1) DEFAULT NULL,
  `record_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `record_account` varchar(255) DEFAULT NULL,
  `record_pwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chat_team
-- ----------------------------
DROP TABLE IF EXISTS `chat_team`;
CREATE TABLE `chat_team` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meetingInfoId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '会议ID',
  `craete_date` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `flag` tinyint(1) DEFAULT '1' COMMENT '时都有效',
  `founder` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) DEFAULT NULL,
  `cid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
BEGIN;
INSERT INTO `city` VALUES (1, '110000', '北京市', NULL);
INSERT INTO `city` VALUES (2, '120000', '天津市', NULL);
INSERT INTO `city` VALUES (3, '130000', '河北省', NULL);
INSERT INTO `city` VALUES (4, '140000', '山西省', NULL);
INSERT INTO `city` VALUES (5, '150000', '内蒙古自治区', NULL);
INSERT INTO `city` VALUES (6, '210000', '辽宁省', NULL);
INSERT INTO `city` VALUES (7, '220000', '吉林省', NULL);
INSERT INTO `city` VALUES (8, '230000', '黑龙江省', NULL);
INSERT INTO `city` VALUES (9, '310000', '上海市', NULL);
INSERT INTO `city` VALUES (10, '320000', '江苏省', NULL);
INSERT INTO `city` VALUES (11, '330000', '浙江省', NULL);
INSERT INTO `city` VALUES (12, '340000', '安徽省', NULL);
INSERT INTO `city` VALUES (13, '350000', '福建省', NULL);
INSERT INTO `city` VALUES (14, '360000', '江西省', NULL);
INSERT INTO `city` VALUES (15, '370000', '山东省', NULL);
INSERT INTO `city` VALUES (16, '410000', '河南省', NULL);
INSERT INTO `city` VALUES (17, '420000', '湖北省', NULL);
INSERT INTO `city` VALUES (18, '430000', '湖南省', NULL);
INSERT INTO `city` VALUES (19, '440000', '广东省', NULL);
INSERT INTO `city` VALUES (20, '450000', '广西壮族自治区', NULL);
INSERT INTO `city` VALUES (21, '460000', '海南省', NULL);
INSERT INTO `city` VALUES (22, '500000', '重庆市', NULL);
INSERT INTO `city` VALUES (23, '510000', '四川省', NULL);
INSERT INTO `city` VALUES (24, '520000', '贵州省', NULL);
INSERT INTO `city` VALUES (25, '530000', '云南省', NULL);
INSERT INTO `city` VALUES (26, '540000', '西藏自治区', NULL);
INSERT INTO `city` VALUES (27, '610000', '陕西省', NULL);
INSERT INTO `city` VALUES (28, '620000', '甘肃省', NULL);
INSERT INTO `city` VALUES (29, '630000', '青海省', NULL);
INSERT INTO `city` VALUES (30, '640000', '宁夏回族自治区', NULL);
INSERT INTO `city` VALUES (31, '650000', '新疆维吾尔自治区', NULL);
INSERT INTO `city` VALUES (32, '710000', '台湾省', NULL);
INSERT INTO `city` VALUES (33, '810000', '香港特别行政区', NULL);
INSERT INTO `city` VALUES (34, '820000', '澳门特别行政区', NULL);
INSERT INTO `city` VALUES (35, '110100', '市辖区', '110000');
INSERT INTO `city` VALUES (36, '110200', '县', '110000');
INSERT INTO `city` VALUES (37, '120100', '市辖区', '120000');
INSERT INTO `city` VALUES (38, '120200', '县', '120000');
INSERT INTO `city` VALUES (39, '130100', '石家庄市', '130000');
INSERT INTO `city` VALUES (40, '130200', '唐山市', '130000');
INSERT INTO `city` VALUES (41, '130300', '秦皇岛市', '130000');
INSERT INTO `city` VALUES (42, '130400', '邯郸市', '130000');
INSERT INTO `city` VALUES (43, '130500', '邢台市', '130000');
INSERT INTO `city` VALUES (44, '130600', '保定市', '130000');
INSERT INTO `city` VALUES (45, '130700', '张家口市', '130000');
INSERT INTO `city` VALUES (46, '130800', '承德市', '130000');
INSERT INTO `city` VALUES (47, '130900', '沧州市', '130000');
INSERT INTO `city` VALUES (48, '131000', '廊坊市', '130000');
INSERT INTO `city` VALUES (49, '131100', '衡水市', '130000');
INSERT INTO `city` VALUES (50, '140100', '太原市', '140000');
INSERT INTO `city` VALUES (51, '140200', '大同市', '140000');
INSERT INTO `city` VALUES (52, '140300', '阳泉市', '140000');
INSERT INTO `city` VALUES (53, '140400', '长治市', '140000');
INSERT INTO `city` VALUES (54, '140500', '晋城市', '140000');
INSERT INTO `city` VALUES (55, '140600', '朔州市', '140000');
INSERT INTO `city` VALUES (56, '140700', '晋中市', '140000');
INSERT INTO `city` VALUES (57, '140800', '运城市', '140000');
INSERT INTO `city` VALUES (58, '140900', '忻州市', '140000');
INSERT INTO `city` VALUES (59, '141000', '临汾市', '140000');
INSERT INTO `city` VALUES (60, '141100', '吕梁市', '140000');
INSERT INTO `city` VALUES (61, '150100', '呼和浩特市', '150000');
INSERT INTO `city` VALUES (62, '150200', '包头市', '150000');
INSERT INTO `city` VALUES (63, '150300', '乌海市', '150000');
INSERT INTO `city` VALUES (64, '150400', '赤峰市', '150000');
INSERT INTO `city` VALUES (65, '150500', '通辽市', '150000');
INSERT INTO `city` VALUES (66, '150600', '鄂尔多斯市', '150000');
INSERT INTO `city` VALUES (67, '150700', '呼伦贝尔市', '150000');
INSERT INTO `city` VALUES (68, '150800', '巴彦淖尔市', '150000');
INSERT INTO `city` VALUES (69, '150900', '乌兰察布市', '150000');
INSERT INTO `city` VALUES (70, '152200', '兴安盟', '150000');
INSERT INTO `city` VALUES (71, '152500', '锡林郭勒盟', '150000');
INSERT INTO `city` VALUES (72, '152900', '阿拉善盟', '150000');
INSERT INTO `city` VALUES (73, '210100', '沈阳市', '210000');
INSERT INTO `city` VALUES (74, '210200', '大连市', '210000');
INSERT INTO `city` VALUES (75, '210300', '鞍山市', '210000');
INSERT INTO `city` VALUES (76, '210400', '抚顺市', '210000');
INSERT INTO `city` VALUES (77, '210500', '本溪市', '210000');
INSERT INTO `city` VALUES (78, '210600', '丹东市', '210000');
INSERT INTO `city` VALUES (79, '210700', '锦州市', '210000');
INSERT INTO `city` VALUES (80, '210800', '营口市', '210000');
INSERT INTO `city` VALUES (81, '210900', '阜新市', '210000');
INSERT INTO `city` VALUES (82, '211000', '辽阳市', '210000');
INSERT INTO `city` VALUES (83, '211100', '盘锦市', '210000');
INSERT INTO `city` VALUES (84, '211200', '铁岭市', '210000');
INSERT INTO `city` VALUES (85, '211300', '朝阳市', '210000');
INSERT INTO `city` VALUES (86, '211400', '葫芦岛市', '210000');
INSERT INTO `city` VALUES (87, '220100', '长春市', '220000');
INSERT INTO `city` VALUES (88, '220200', '吉林市', '220000');
INSERT INTO `city` VALUES (89, '220300', '四平市', '220000');
INSERT INTO `city` VALUES (90, '220400', '辽源市', '220000');
INSERT INTO `city` VALUES (91, '220500', '通化市', '220000');
INSERT INTO `city` VALUES (92, '220600', '白山市', '220000');
INSERT INTO `city` VALUES (93, '220700', '松原市', '220000');
INSERT INTO `city` VALUES (94, '220800', '白城市', '220000');
INSERT INTO `city` VALUES (95, '222400', '延边朝鲜族自治州', '220000');
INSERT INTO `city` VALUES (96, '230100', '哈尔滨市', '230000');
INSERT INTO `city` VALUES (97, '230200', '齐齐哈尔市', '230000');
INSERT INTO `city` VALUES (98, '230300', '鸡西市', '230000');
INSERT INTO `city` VALUES (99, '230400', '鹤岗市', '230000');
INSERT INTO `city` VALUES (100, '230500', '双鸭山市', '230000');
INSERT INTO `city` VALUES (101, '230600', '大庆市', '230000');
INSERT INTO `city` VALUES (102, '230700', '伊春市', '230000');
INSERT INTO `city` VALUES (103, '230800', '佳木斯市', '230000');
INSERT INTO `city` VALUES (104, '230900', '七台河市', '230000');
INSERT INTO `city` VALUES (105, '231000', '牡丹江市', '230000');
INSERT INTO `city` VALUES (106, '231100', '黑河市', '230000');
INSERT INTO `city` VALUES (107, '231200', '绥化市', '230000');
INSERT INTO `city` VALUES (108, '232700', '大兴安岭地区', '230000');
INSERT INTO `city` VALUES (109, '310100', '市辖区', '310000');
INSERT INTO `city` VALUES (110, '310200', '县', '310000');
INSERT INTO `city` VALUES (111, '320100', '南京市', '320000');
INSERT INTO `city` VALUES (112, '320200', '无锡市', '320000');
INSERT INTO `city` VALUES (113, '320300', '徐州市', '320000');
INSERT INTO `city` VALUES (114, '320400', '常州市', '320000');
INSERT INTO `city` VALUES (115, '320500', '苏州市', '320000');
INSERT INTO `city` VALUES (116, '320600', '南通市', '320000');
INSERT INTO `city` VALUES (117, '320700', '连云港市', '320000');
INSERT INTO `city` VALUES (118, '320800', '淮安市', '320000');
INSERT INTO `city` VALUES (119, '320900', '盐城市', '320000');
INSERT INTO `city` VALUES (120, '321000', '扬州市', '320000');
INSERT INTO `city` VALUES (121, '321100', '镇江市', '320000');
INSERT INTO `city` VALUES (122, '321200', '泰州市', '320000');
INSERT INTO `city` VALUES (123, '321300', '宿迁市', '320000');
INSERT INTO `city` VALUES (124, '330100', '杭州市', '330000');
INSERT INTO `city` VALUES (125, '330200', '宁波市', '330000');
INSERT INTO `city` VALUES (126, '330300', '温州市', '330000');
INSERT INTO `city` VALUES (127, '330400', '嘉兴市', '330000');
INSERT INTO `city` VALUES (128, '330500', '湖州市', '330000');
INSERT INTO `city` VALUES (129, '330600', '绍兴市', '330000');
INSERT INTO `city` VALUES (130, '330700', '金华市', '330000');
INSERT INTO `city` VALUES (131, '330800', '衢州市', '330000');
INSERT INTO `city` VALUES (132, '330900', '舟山市', '330000');
INSERT INTO `city` VALUES (133, '331000', '台州市', '330000');
INSERT INTO `city` VALUES (134, '331100', '丽水市', '330000');
INSERT INTO `city` VALUES (135, '340100', '合肥市', '340000');
INSERT INTO `city` VALUES (136, '340200', '芜湖市', '340000');
INSERT INTO `city` VALUES (137, '340300', '蚌埠市', '340000');
INSERT INTO `city` VALUES (138, '340400', '淮南市', '340000');
INSERT INTO `city` VALUES (139, '340500', '马鞍山市', '340000');
INSERT INTO `city` VALUES (140, '340600', '淮北市', '340000');
INSERT INTO `city` VALUES (141, '340700', '铜陵市', '340000');
INSERT INTO `city` VALUES (142, '340800', '安庆市', '340000');
INSERT INTO `city` VALUES (143, '341000', '黄山市', '340000');
INSERT INTO `city` VALUES (144, '341100', '滁州市', '340000');
INSERT INTO `city` VALUES (145, '341200', '阜阳市', '340000');
INSERT INTO `city` VALUES (146, '341300', '宿州市', '340000');
INSERT INTO `city` VALUES (147, '341400', '巢湖市', '340000');
INSERT INTO `city` VALUES (148, '341500', '六安市', '340000');
INSERT INTO `city` VALUES (149, '341600', '亳州市', '340000');
INSERT INTO `city` VALUES (150, '341700', '池州市', '340000');
INSERT INTO `city` VALUES (151, '341800', '宣城市', '340000');
INSERT INTO `city` VALUES (152, '350100', '福州市', '350000');
INSERT INTO `city` VALUES (153, '350200', '厦门市', '350000');
INSERT INTO `city` VALUES (154, '350300', '莆田市', '350000');
INSERT INTO `city` VALUES (155, '350400', '三明市', '350000');
INSERT INTO `city` VALUES (156, '350500', '泉州市', '350000');
INSERT INTO `city` VALUES (157, '350600', '漳州市', '350000');
INSERT INTO `city` VALUES (158, '350700', '南平市', '350000');
INSERT INTO `city` VALUES (159, '350800', '龙岩市', '350000');
INSERT INTO `city` VALUES (160, '350900', '宁德市', '350000');
INSERT INTO `city` VALUES (161, '360100', '南昌市', '360000');
INSERT INTO `city` VALUES (162, '360200', '景德镇市', '360000');
INSERT INTO `city` VALUES (163, '360300', '萍乡市', '360000');
INSERT INTO `city` VALUES (164, '360400', '九江市', '360000');
INSERT INTO `city` VALUES (165, '360500', '新余市', '360000');
INSERT INTO `city` VALUES (166, '360600', '鹰潭市', '360000');
INSERT INTO `city` VALUES (167, '360700', '赣州市', '360000');
INSERT INTO `city` VALUES (168, '360800', '吉安市', '360000');
INSERT INTO `city` VALUES (169, '360900', '宜春市', '360000');
INSERT INTO `city` VALUES (170, '361000', '抚州市', '360000');
INSERT INTO `city` VALUES (171, '361100', '上饶市', '360000');
INSERT INTO `city` VALUES (172, '370100', '济南市', '370000');
INSERT INTO `city` VALUES (173, '370200', '青岛市', '370000');
INSERT INTO `city` VALUES (174, '370300', '淄博市', '370000');
INSERT INTO `city` VALUES (175, '370400', '枣庄市', '370000');
INSERT INTO `city` VALUES (176, '370500', '东营市', '370000');
INSERT INTO `city` VALUES (177, '370600', '烟台市', '370000');
INSERT INTO `city` VALUES (178, '370700', '潍坊市', '370000');
INSERT INTO `city` VALUES (179, '370800', '济宁市', '370000');
INSERT INTO `city` VALUES (180, '370900', '泰安市', '370000');
INSERT INTO `city` VALUES (181, '371000', '威海市', '370000');
INSERT INTO `city` VALUES (182, '371100', '日照市', '370000');
INSERT INTO `city` VALUES (183, '371200', '莱芜市', '370000');
INSERT INTO `city` VALUES (184, '371300', '临沂市', '370000');
INSERT INTO `city` VALUES (185, '371400', '德州市', '370000');
INSERT INTO `city` VALUES (186, '371500', '聊城市', '370000');
INSERT INTO `city` VALUES (187, '371600', '滨州市', '370000');
INSERT INTO `city` VALUES (188, '371700', '荷泽市', '370000');
INSERT INTO `city` VALUES (189, '410100', '郑州市', '410000');
INSERT INTO `city` VALUES (190, '410200', '开封市', '410000');
INSERT INTO `city` VALUES (191, '410300', '洛阳市', '410000');
INSERT INTO `city` VALUES (192, '410400', '平顶山市', '410000');
INSERT INTO `city` VALUES (193, '410500', '安阳市', '410000');
INSERT INTO `city` VALUES (194, '410600', '鹤壁市', '410000');
INSERT INTO `city` VALUES (195, '410700', '新乡市', '410000');
INSERT INTO `city` VALUES (196, '410800', '焦作市', '410000');
INSERT INTO `city` VALUES (197, '410900', '濮阳市', '410000');
INSERT INTO `city` VALUES (198, '411000', '许昌市', '410000');
INSERT INTO `city` VALUES (199, '411100', '漯河市', '410000');
INSERT INTO `city` VALUES (200, '411200', '三门峡市', '410000');
INSERT INTO `city` VALUES (201, '411300', '南阳市', '410000');
INSERT INTO `city` VALUES (202, '411400', '商丘市', '410000');
INSERT INTO `city` VALUES (203, '411500', '信阳市', '410000');
INSERT INTO `city` VALUES (204, '411600', '周口市', '410000');
INSERT INTO `city` VALUES (205, '411700', '驻马店市', '410000');
INSERT INTO `city` VALUES (206, '420100', '武汉市', '420000');
INSERT INTO `city` VALUES (207, '420200', '黄石市', '420000');
INSERT INTO `city` VALUES (208, '420300', '十堰市', '420000');
INSERT INTO `city` VALUES (209, '420500', '宜昌市', '420000');
INSERT INTO `city` VALUES (210, '420600', '襄樊市', '420000');
INSERT INTO `city` VALUES (211, '420700', '鄂州市', '420000');
INSERT INTO `city` VALUES (212, '420800', '荆门市', '420000');
INSERT INTO `city` VALUES (213, '420900', '孝感市', '420000');
INSERT INTO `city` VALUES (214, '421000', '荆州市', '420000');
INSERT INTO `city` VALUES (215, '421100', '黄冈市', '420000');
INSERT INTO `city` VALUES (216, '421200', '咸宁市', '420000');
INSERT INTO `city` VALUES (217, '421300', '随州市', '420000');
INSERT INTO `city` VALUES (218, '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `city` VALUES (219, '429000', '省直辖行政单位', '420000');
INSERT INTO `city` VALUES (220, '430100', '长沙市', '430000');
INSERT INTO `city` VALUES (221, '430200', '株洲市', '430000');
INSERT INTO `city` VALUES (222, '430300', '湘潭市', '430000');
INSERT INTO `city` VALUES (223, '430400', '衡阳市', '430000');
INSERT INTO `city` VALUES (224, '430500', '邵阳市', '430000');
INSERT INTO `city` VALUES (225, '430600', '岳阳市', '430000');
INSERT INTO `city` VALUES (226, '430700', '常德市', '430000');
INSERT INTO `city` VALUES (227, '430800', '张家界市', '430000');
INSERT INTO `city` VALUES (228, '430900', '益阳市', '430000');
INSERT INTO `city` VALUES (229, '431000', '郴州市', '430000');
INSERT INTO `city` VALUES (230, '431100', '永州市', '430000');
INSERT INTO `city` VALUES (231, '431200', '怀化市', '430000');
INSERT INTO `city` VALUES (232, '431300', '娄底市', '430000');
INSERT INTO `city` VALUES (233, '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `city` VALUES (234, '440100', '广州市', '440000');
INSERT INTO `city` VALUES (235, '440200', '韶关市', '440000');
INSERT INTO `city` VALUES (236, '440300', '深圳市', '440000');
INSERT INTO `city` VALUES (237, '440400', '珠海市', '440000');
INSERT INTO `city` VALUES (238, '440500', '汕头市', '440000');
INSERT INTO `city` VALUES (239, '440600', '佛山市', '440000');
INSERT INTO `city` VALUES (240, '440700', '江门市', '440000');
INSERT INTO `city` VALUES (241, '440800', '湛江市', '440000');
INSERT INTO `city` VALUES (242, '440900', '茂名市', '440000');
INSERT INTO `city` VALUES (243, '441200', '肇庆市', '440000');
INSERT INTO `city` VALUES (244, '441300', '惠州市', '440000');
INSERT INTO `city` VALUES (245, '441400', '梅州市', '440000');
INSERT INTO `city` VALUES (246, '441500', '汕尾市', '440000');
INSERT INTO `city` VALUES (247, '441600', '河源市', '440000');
INSERT INTO `city` VALUES (248, '441700', '阳江市', '440000');
INSERT INTO `city` VALUES (249, '441800', '清远市', '440000');
INSERT INTO `city` VALUES (250, '441900', '东莞市', '440000');
INSERT INTO `city` VALUES (251, '442000', '中山市', '440000');
INSERT INTO `city` VALUES (252, '445100', '潮州市', '440000');
INSERT INTO `city` VALUES (253, '445200', '揭阳市', '440000');
INSERT INTO `city` VALUES (254, '445300', '云浮市', '440000');
INSERT INTO `city` VALUES (255, '450100', '南宁市', '450000');
INSERT INTO `city` VALUES (256, '450200', '柳州市', '450000');
INSERT INTO `city` VALUES (257, '450300', '桂林市', '450000');
INSERT INTO `city` VALUES (258, '450400', '梧州市', '450000');
INSERT INTO `city` VALUES (259, '450500', '北海市', '450000');
INSERT INTO `city` VALUES (260, '450600', '防城港市', '450000');
INSERT INTO `city` VALUES (261, '450700', '钦州市', '450000');
INSERT INTO `city` VALUES (262, '450800', '贵港市', '450000');
INSERT INTO `city` VALUES (263, '450900', '玉林市', '450000');
INSERT INTO `city` VALUES (264, '451000', '百色市', '450000');
INSERT INTO `city` VALUES (265, '451100', '贺州市', '450000');
INSERT INTO `city` VALUES (266, '451200', '河池市', '450000');
INSERT INTO `city` VALUES (267, '451300', '来宾市', '450000');
INSERT INTO `city` VALUES (268, '451400', '崇左市', '450000');
INSERT INTO `city` VALUES (269, '460100', '海口市', '460000');
INSERT INTO `city` VALUES (270, '460200', '三亚市', '460000');
INSERT INTO `city` VALUES (271, '469000', '省直辖县级行政单位', '460000');
INSERT INTO `city` VALUES (272, '500100', '市辖区', '500000');
INSERT INTO `city` VALUES (273, '500200', '县', '500000');
INSERT INTO `city` VALUES (274, '500300', '市', '500000');
INSERT INTO `city` VALUES (275, '510100', '成都市', '510000');
INSERT INTO `city` VALUES (276, '510300', '自贡市', '510000');
INSERT INTO `city` VALUES (277, '510400', '攀枝花市', '510000');
INSERT INTO `city` VALUES (278, '510500', '泸州市', '510000');
INSERT INTO `city` VALUES (279, '510600', '德阳市', '510000');
INSERT INTO `city` VALUES (280, '510700', '绵阳市', '510000');
INSERT INTO `city` VALUES (281, '510800', '广元市', '510000');
INSERT INTO `city` VALUES (282, '510900', '遂宁市', '510000');
INSERT INTO `city` VALUES (283, '511000', '内江市', '510000');
INSERT INTO `city` VALUES (284, '511100', '乐山市', '510000');
INSERT INTO `city` VALUES (285, '511300', '南充市', '510000');
INSERT INTO `city` VALUES (286, '511400', '眉山市', '510000');
INSERT INTO `city` VALUES (287, '511500', '宜宾市', '510000');
INSERT INTO `city` VALUES (288, '511600', '广安市', '510000');
INSERT INTO `city` VALUES (289, '511700', '达州市', '510000');
INSERT INTO `city` VALUES (290, '511800', '雅安市', '510000');
INSERT INTO `city` VALUES (291, '511900', '巴中市', '510000');
INSERT INTO `city` VALUES (292, '512000', '资阳市', '510000');
INSERT INTO `city` VALUES (293, '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `city` VALUES (294, '513300', '甘孜藏族自治州', '510000');
INSERT INTO `city` VALUES (295, '513400', '凉山彝族自治州', '510000');
INSERT INTO `city` VALUES (296, '520100', '贵阳市', '520000');
INSERT INTO `city` VALUES (297, '520200', '六盘水市', '520000');
INSERT INTO `city` VALUES (298, '520300', '遵义市', '520000');
INSERT INTO `city` VALUES (299, '520400', '安顺市', '520000');
INSERT INTO `city` VALUES (300, '522200', '铜仁地区', '520000');
INSERT INTO `city` VALUES (301, '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `city` VALUES (302, '522400', '毕节地区', '520000');
INSERT INTO `city` VALUES (303, '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `city` VALUES (304, '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `city` VALUES (305, '530100', '昆明市', '530000');
INSERT INTO `city` VALUES (306, '530300', '曲靖市', '530000');
INSERT INTO `city` VALUES (307, '530400', '玉溪市', '530000');
INSERT INTO `city` VALUES (308, '530500', '保山市', '530000');
INSERT INTO `city` VALUES (309, '530600', '昭通市', '530000');
INSERT INTO `city` VALUES (310, '530700', '丽江市', '530000');
INSERT INTO `city` VALUES (311, '530800', '思茅市', '530000');
INSERT INTO `city` VALUES (312, '530900', '临沧市', '530000');
INSERT INTO `city` VALUES (313, '532300', '楚雄彝族自治州', '530000');
INSERT INTO `city` VALUES (314, '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `city` VALUES (315, '532600', '文山壮族苗族自治州', '530000');
INSERT INTO `city` VALUES (316, '532800', '西双版纳傣族自治州', '530000');
INSERT INTO `city` VALUES (317, '532900', '大理白族自治州', '530000');
INSERT INTO `city` VALUES (318, '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `city` VALUES (319, '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `city` VALUES (320, '533400', '迪庆藏族自治州', '530000');
INSERT INTO `city` VALUES (321, '540100', '拉萨市', '540000');
INSERT INTO `city` VALUES (322, '542100', '昌都地区', '540000');
INSERT INTO `city` VALUES (323, '542200', '山南地区', '540000');
INSERT INTO `city` VALUES (324, '542300', '日喀则地区', '540000');
INSERT INTO `city` VALUES (325, '542400', '那曲地区', '540000');
INSERT INTO `city` VALUES (326, '542500', '阿里地区', '540000');
INSERT INTO `city` VALUES (327, '542600', '林芝地区', '540000');
INSERT INTO `city` VALUES (328, '610100', '西安市', '610000');
INSERT INTO `city` VALUES (329, '610200', '铜川市', '610000');
INSERT INTO `city` VALUES (330, '610300', '宝鸡市', '610000');
INSERT INTO `city` VALUES (331, '610400', '咸阳市', '610000');
INSERT INTO `city` VALUES (332, '610500', '渭南市', '610000');
INSERT INTO `city` VALUES (333, '610600', '延安市', '610000');
INSERT INTO `city` VALUES (334, '610700', '汉中市', '610000');
INSERT INTO `city` VALUES (335, '610800', '榆林市', '610000');
INSERT INTO `city` VALUES (336, '610900', '安康市', '610000');
INSERT INTO `city` VALUES (337, '611000', '商洛市', '610000');
INSERT INTO `city` VALUES (338, '620100', '兰州市', '620000');
INSERT INTO `city` VALUES (339, '620200', '嘉峪关市', '620000');
INSERT INTO `city` VALUES (340, '620300', '金昌市', '620000');
INSERT INTO `city` VALUES (341, '620400', '白银市', '620000');
INSERT INTO `city` VALUES (342, '620500', '天水市', '620000');
INSERT INTO `city` VALUES (343, '620600', '武威市', '620000');
INSERT INTO `city` VALUES (344, '620700', '张掖市', '620000');
INSERT INTO `city` VALUES (345, '620800', '平凉市', '620000');
INSERT INTO `city` VALUES (346, '620900', '酒泉市', '620000');
INSERT INTO `city` VALUES (347, '621000', '庆阳市', '620000');
INSERT INTO `city` VALUES (348, '621100', '定西市', '620000');
INSERT INTO `city` VALUES (349, '621200', '陇南市', '620000');
INSERT INTO `city` VALUES (350, '622900', '临夏回族自治州', '620000');
INSERT INTO `city` VALUES (351, '623000', '甘南藏族自治州', '620000');
INSERT INTO `city` VALUES (352, '630100', '西宁市', '630000');
INSERT INTO `city` VALUES (353, '632100', '海东地区', '630000');
INSERT INTO `city` VALUES (354, '632200', '海北藏族自治州', '630000');
INSERT INTO `city` VALUES (355, '632300', '黄南藏族自治州', '630000');
INSERT INTO `city` VALUES (356, '632500', '海南藏族自治州', '630000');
INSERT INTO `city` VALUES (357, '632600', '果洛藏族自治州', '630000');
INSERT INTO `city` VALUES (358, '632700', '玉树藏族自治州', '630000');
INSERT INTO `city` VALUES (359, '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `city` VALUES (360, '640100', '银川市', '640000');
INSERT INTO `city` VALUES (361, '640200', '石嘴山市', '640000');
INSERT INTO `city` VALUES (362, '640300', '吴忠市', '640000');
INSERT INTO `city` VALUES (363, '640400', '固原市', '640000');
INSERT INTO `city` VALUES (364, '640500', '中卫市', '640000');
INSERT INTO `city` VALUES (365, '650100', '乌鲁木齐市', '650000');
INSERT INTO `city` VALUES (366, '650200', '克拉玛依市', '650000');
INSERT INTO `city` VALUES (367, '652100', '吐鲁番地区', '650000');
INSERT INTO `city` VALUES (368, '652200', '哈密地区', '650000');
INSERT INTO `city` VALUES (369, '652300', '昌吉回族自治州', '650000');
INSERT INTO `city` VALUES (370, '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `city` VALUES (371, '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `city` VALUES (372, '652900', '阿克苏地区', '650000');
INSERT INTO `city` VALUES (373, '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `city` VALUES (374, '653100', '喀什地区', '650000');
INSERT INTO `city` VALUES (375, '653200', '和田地区', '650000');
INSERT INTO `city` VALUES (376, '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `city` VALUES (377, '654200', '塔城地区', '650000');
INSERT INTO `city` VALUES (378, '654300', '阿勒泰地区', '650000');
INSERT INTO `city` VALUES (379, '659000', '省直辖行政单位', '650000');
INSERT INTO `city` VALUES (380, '110101', '东城区', '110100');
INSERT INTO `city` VALUES (381, '110102', '西城区', '110100');
INSERT INTO `city` VALUES (382, '110103', '崇文区', '110100');
INSERT INTO `city` VALUES (383, '110104', '宣武区', '110100');
INSERT INTO `city` VALUES (384, '110105', '朝阳区', '110100');
INSERT INTO `city` VALUES (385, '110106', '丰台区', '110100');
INSERT INTO `city` VALUES (386, '110107', '石景山区', '110100');
INSERT INTO `city` VALUES (387, '110108', '海淀区', '110100');
INSERT INTO `city` VALUES (388, '110109', '门头沟区', '110100');
INSERT INTO `city` VALUES (389, '110111', '房山区', '110100');
INSERT INTO `city` VALUES (390, '110112', '通州区', '110100');
INSERT INTO `city` VALUES (391, '110113', '顺义区', '110100');
INSERT INTO `city` VALUES (392, '110114', '昌平区', '110100');
INSERT INTO `city` VALUES (393, '110115', '大兴区', '110100');
INSERT INTO `city` VALUES (394, '110116', '怀柔区', '110100');
INSERT INTO `city` VALUES (395, '110117', '平谷区', '110100');
INSERT INTO `city` VALUES (396, '110228', '密云县', '110200');
INSERT INTO `city` VALUES (397, '110229', '延庆县', '110200');
INSERT INTO `city` VALUES (398, '120101', '和平区', '120100');
INSERT INTO `city` VALUES (399, '120102', '河东区', '120100');
INSERT INTO `city` VALUES (400, '120103', '河西区', '120100');
INSERT INTO `city` VALUES (401, '120104', '南开区', '120100');
INSERT INTO `city` VALUES (402, '120105', '河北区', '120100');
INSERT INTO `city` VALUES (403, '120106', '红桥区', '120100');
INSERT INTO `city` VALUES (404, '120107', '塘沽区', '120100');
INSERT INTO `city` VALUES (405, '120108', '汉沽区', '120100');
INSERT INTO `city` VALUES (406, '120109', '大港区', '120100');
INSERT INTO `city` VALUES (407, '120110', '东丽区', '120100');
INSERT INTO `city` VALUES (408, '120111', '西青区', '120100');
INSERT INTO `city` VALUES (409, '120112', '津南区', '120100');
INSERT INTO `city` VALUES (410, '120113', '北辰区', '120100');
INSERT INTO `city` VALUES (411, '120114', '武清区', '120100');
INSERT INTO `city` VALUES (412, '120115', '宝坻区', '120100');
INSERT INTO `city` VALUES (413, '120221', '宁河县', '120200');
INSERT INTO `city` VALUES (414, '120223', '静海县', '120200');
INSERT INTO `city` VALUES (415, '120225', '蓟　县', '120200');
INSERT INTO `city` VALUES (416, '130101', '市辖区', '130100');
INSERT INTO `city` VALUES (417, '130102', '长安区', '130100');
INSERT INTO `city` VALUES (418, '130103', '桥东区', '130100');
INSERT INTO `city` VALUES (419, '130104', '桥西区', '130100');
INSERT INTO `city` VALUES (420, '130105', '新华区', '130100');
INSERT INTO `city` VALUES (421, '130107', '井陉矿区', '130100');
INSERT INTO `city` VALUES (422, '130108', '裕华区', '130100');
INSERT INTO `city` VALUES (423, '130121', '井陉县', '130100');
INSERT INTO `city` VALUES (424, '130123', '正定县', '130100');
INSERT INTO `city` VALUES (425, '130124', '栾城县', '130100');
INSERT INTO `city` VALUES (426, '130125', '行唐县', '130100');
INSERT INTO `city` VALUES (427, '130126', '灵寿县', '130100');
INSERT INTO `city` VALUES (428, '130127', '高邑县', '130100');
INSERT INTO `city` VALUES (429, '130128', '深泽县', '130100');
INSERT INTO `city` VALUES (430, '130129', '赞皇县', '130100');
INSERT INTO `city` VALUES (431, '130130', '无极县', '130100');
INSERT INTO `city` VALUES (432, '130131', '平山县', '130100');
INSERT INTO `city` VALUES (433, '130132', '元氏县', '130100');
INSERT INTO `city` VALUES (434, '130133', '赵　县', '130100');
INSERT INTO `city` VALUES (435, '130181', '辛集市', '130100');
INSERT INTO `city` VALUES (436, '130182', '藁城市', '130100');
INSERT INTO `city` VALUES (437, '130183', '晋州市', '130100');
INSERT INTO `city` VALUES (438, '130184', '新乐市', '130100');
INSERT INTO `city` VALUES (439, '130185', '鹿泉市', '130100');
INSERT INTO `city` VALUES (440, '130201', '市辖区', '130200');
INSERT INTO `city` VALUES (441, '130202', '路南区', '130200');
INSERT INTO `city` VALUES (442, '130203', '路北区', '130200');
INSERT INTO `city` VALUES (443, '130204', '古冶区', '130200');
INSERT INTO `city` VALUES (444, '130205', '开平区', '130200');
INSERT INTO `city` VALUES (445, '130207', '丰南区', '130200');
INSERT INTO `city` VALUES (446, '130208', '丰润区', '130200');
INSERT INTO `city` VALUES (447, '130223', '滦　县', '130200');
INSERT INTO `city` VALUES (448, '130224', '滦南县', '130200');
INSERT INTO `city` VALUES (449, '130225', '乐亭县', '130200');
INSERT INTO `city` VALUES (450, '130227', '迁西县', '130200');
INSERT INTO `city` VALUES (451, '130229', '玉田县', '130200');
INSERT INTO `city` VALUES (452, '130230', '唐海县', '130200');
INSERT INTO `city` VALUES (453, '130281', '遵化市', '130200');
INSERT INTO `city` VALUES (454, '130283', '迁安市', '130200');
INSERT INTO `city` VALUES (455, '130301', '市辖区', '130300');
INSERT INTO `city` VALUES (456, '130302', '海港区', '130300');
INSERT INTO `city` VALUES (457, '130303', '山海关区', '130300');
INSERT INTO `city` VALUES (458, '130304', '北戴河区', '130300');
INSERT INTO `city` VALUES (459, '130321', '青龙满族自治县', '130300');
INSERT INTO `city` VALUES (460, '130322', '昌黎县', '130300');
INSERT INTO `city` VALUES (461, '130323', '抚宁县', '130300');
INSERT INTO `city` VALUES (462, '130324', '卢龙县', '130300');
INSERT INTO `city` VALUES (463, '130401', '市辖区', '130400');
INSERT INTO `city` VALUES (464, '130402', '邯山区', '130400');
INSERT INTO `city` VALUES (465, '130403', '丛台区', '130400');
INSERT INTO `city` VALUES (466, '130404', '复兴区', '130400');
INSERT INTO `city` VALUES (467, '130406', '峰峰矿区', '130400');
INSERT INTO `city` VALUES (468, '130421', '邯郸县', '130400');
INSERT INTO `city` VALUES (469, '130423', '临漳县', '130400');
INSERT INTO `city` VALUES (470, '130424', '成安县', '130400');
INSERT INTO `city` VALUES (471, '130425', '大名县', '130400');
INSERT INTO `city` VALUES (472, '130426', '涉　县', '130400');
INSERT INTO `city` VALUES (473, '130427', '磁　县', '130400');
INSERT INTO `city` VALUES (474, '130428', '肥乡县', '130400');
INSERT INTO `city` VALUES (475, '130429', '永年县', '130400');
INSERT INTO `city` VALUES (476, '130430', '邱　县', '130400');
INSERT INTO `city` VALUES (477, '130431', '鸡泽县', '130400');
INSERT INTO `city` VALUES (478, '130432', '广平县', '130400');
INSERT INTO `city` VALUES (479, '130433', '馆陶县', '130400');
INSERT INTO `city` VALUES (480, '130434', '魏　县', '130400');
INSERT INTO `city` VALUES (481, '130435', '曲周县', '130400');
INSERT INTO `city` VALUES (482, '130481', '武安市', '130400');
INSERT INTO `city` VALUES (483, '130501', '市辖区', '130500');
INSERT INTO `city` VALUES (484, '130502', '桥东区', '130500');
INSERT INTO `city` VALUES (485, '130503', '桥西区', '130500');
INSERT INTO `city` VALUES (486, '130521', '邢台县', '130500');
INSERT INTO `city` VALUES (487, '130522', '临城县', '130500');
INSERT INTO `city` VALUES (488, '130523', '内丘县', '130500');
INSERT INTO `city` VALUES (489, '130524', '柏乡县', '130500');
INSERT INTO `city` VALUES (490, '130525', '隆尧县', '130500');
INSERT INTO `city` VALUES (491, '130526', '任　县', '130500');
INSERT INTO `city` VALUES (492, '130527', '南和县', '130500');
INSERT INTO `city` VALUES (493, '130528', '宁晋县', '130500');
INSERT INTO `city` VALUES (494, '130529', '巨鹿县', '130500');
INSERT INTO `city` VALUES (495, '130530', '新河县', '130500');
INSERT INTO `city` VALUES (496, '130531', '广宗县', '130500');
INSERT INTO `city` VALUES (497, '130532', '平乡县', '130500');
INSERT INTO `city` VALUES (498, '130533', '威　县', '130500');
INSERT INTO `city` VALUES (499, '130534', '清河县', '130500');
INSERT INTO `city` VALUES (500, '130535', '临西县', '130500');
INSERT INTO `city` VALUES (501, '130581', '南宫市', '130500');
INSERT INTO `city` VALUES (502, '130582', '沙河市', '130500');
INSERT INTO `city` VALUES (503, '130601', '市辖区', '130600');
INSERT INTO `city` VALUES (504, '130602', '新市区', '130600');
INSERT INTO `city` VALUES (505, '130603', '北市区', '130600');
INSERT INTO `city` VALUES (506, '130604', '南市区', '130600');
INSERT INTO `city` VALUES (507, '130621', '满城县', '130600');
INSERT INTO `city` VALUES (508, '130622', '清苑县', '130600');
INSERT INTO `city` VALUES (509, '130623', '涞水县', '130600');
INSERT INTO `city` VALUES (510, '130624', '阜平县', '130600');
INSERT INTO `city` VALUES (511, '130625', '徐水县', '130600');
INSERT INTO `city` VALUES (512, '130626', '定兴县', '130600');
INSERT INTO `city` VALUES (513, '130627', '唐　县', '130600');
INSERT INTO `city` VALUES (514, '130628', '高阳县', '130600');
INSERT INTO `city` VALUES (515, '130629', '容城县', '130600');
INSERT INTO `city` VALUES (516, '130630', '涞源县', '130600');
INSERT INTO `city` VALUES (517, '130631', '望都县', '130600');
INSERT INTO `city` VALUES (518, '130632', '安新县', '130600');
INSERT INTO `city` VALUES (519, '130633', '易　县', '130600');
INSERT INTO `city` VALUES (520, '130634', '曲阳县', '130600');
INSERT INTO `city` VALUES (521, '130635', '蠡　县', '130600');
INSERT INTO `city` VALUES (522, '130636', '顺平县', '130600');
INSERT INTO `city` VALUES (523, '130637', '博野县', '130600');
INSERT INTO `city` VALUES (524, '130638', '雄　县', '130600');
INSERT INTO `city` VALUES (525, '130681', '涿州市', '130600');
INSERT INTO `city` VALUES (526, '130682', '定州市', '130600');
INSERT INTO `city` VALUES (527, '130683', '安国市', '130600');
INSERT INTO `city` VALUES (528, '130684', '高碑店市', '130600');
INSERT INTO `city` VALUES (529, '130701', '市辖区', '130700');
INSERT INTO `city` VALUES (530, '130702', '桥东区', '130700');
INSERT INTO `city` VALUES (531, '130703', '桥西区', '130700');
INSERT INTO `city` VALUES (532, '130705', '宣化区', '130700');
INSERT INTO `city` VALUES (533, '130706', '下花园区', '130700');
INSERT INTO `city` VALUES (534, '130721', '宣化县', '130700');
INSERT INTO `city` VALUES (535, '130722', '张北县', '130700');
INSERT INTO `city` VALUES (536, '130723', '康保县', '130700');
INSERT INTO `city` VALUES (537, '130724', '沽源县', '130700');
INSERT INTO `city` VALUES (538, '130725', '尚义县', '130700');
INSERT INTO `city` VALUES (539, '130726', '蔚　县', '130700');
INSERT INTO `city` VALUES (540, '130727', '阳原县', '130700');
INSERT INTO `city` VALUES (541, '130728', '怀安县', '130700');
INSERT INTO `city` VALUES (542, '130729', '万全县', '130700');
INSERT INTO `city` VALUES (543, '130730', '怀来县', '130700');
INSERT INTO `city` VALUES (544, '130731', '涿鹿县', '130700');
INSERT INTO `city` VALUES (545, '130732', '赤城县', '130700');
INSERT INTO `city` VALUES (546, '130733', '崇礼县', '130700');
INSERT INTO `city` VALUES (547, '130801', '市辖区', '130800');
INSERT INTO `city` VALUES (548, '130802', '双桥区', '130800');
INSERT INTO `city` VALUES (549, '130803', '双滦区', '130800');
INSERT INTO `city` VALUES (550, '130804', '鹰手营子矿区', '130800');
INSERT INTO `city` VALUES (551, '130821', '承德县', '130800');
INSERT INTO `city` VALUES (552, '130822', '兴隆县', '130800');
INSERT INTO `city` VALUES (553, '130823', '平泉县', '130800');
INSERT INTO `city` VALUES (554, '130824', '滦平县', '130800');
INSERT INTO `city` VALUES (555, '130825', '隆化县', '130800');
INSERT INTO `city` VALUES (556, '130826', '丰宁满族自治县', '130800');
INSERT INTO `city` VALUES (557, '130827', '宽城满族自治县', '130800');
INSERT INTO `city` VALUES (558, '130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `city` VALUES (559, '130901', '市辖区', '130900');
INSERT INTO `city` VALUES (560, '130902', '新华区', '130900');
INSERT INTO `city` VALUES (561, '130903', '运河区', '130900');
INSERT INTO `city` VALUES (562, '130921', '沧　县', '130900');
INSERT INTO `city` VALUES (563, '130922', '青　县', '130900');
INSERT INTO `city` VALUES (564, '130923', '东光县', '130900');
INSERT INTO `city` VALUES (565, '130924', '海兴县', '130900');
INSERT INTO `city` VALUES (566, '130925', '盐山县', '130900');
INSERT INTO `city` VALUES (567, '130926', '肃宁县', '130900');
INSERT INTO `city` VALUES (568, '130927', '南皮县', '130900');
INSERT INTO `city` VALUES (569, '130928', '吴桥县', '130900');
INSERT INTO `city` VALUES (570, '130929', '献　县', '130900');
INSERT INTO `city` VALUES (571, '130930', '孟村回族自治县', '130900');
INSERT INTO `city` VALUES (572, '130981', '泊头市', '130900');
INSERT INTO `city` VALUES (573, '130982', '任丘市', '130900');
INSERT INTO `city` VALUES (574, '130983', '黄骅市', '130900');
INSERT INTO `city` VALUES (575, '130984', '河间市', '130900');
INSERT INTO `city` VALUES (576, '131001', '市辖区', '131000');
INSERT INTO `city` VALUES (577, '131002', '安次区', '131000');
INSERT INTO `city` VALUES (578, '131003', '广阳区', '131000');
INSERT INTO `city` VALUES (579, '131022', '固安县', '131000');
INSERT INTO `city` VALUES (580, '131023', '永清县', '131000');
INSERT INTO `city` VALUES (581, '131024', '香河县', '131000');
INSERT INTO `city` VALUES (582, '131025', '大城县', '131000');
INSERT INTO `city` VALUES (583, '131026', '文安县', '131000');
INSERT INTO `city` VALUES (584, '131028', '大厂回族自治县', '131000');
INSERT INTO `city` VALUES (585, '131081', '霸州市', '131000');
INSERT INTO `city` VALUES (586, '131082', '三河市', '131000');
INSERT INTO `city` VALUES (587, '131101', '市辖区', '131100');
INSERT INTO `city` VALUES (588, '131102', '桃城区', '131100');
INSERT INTO `city` VALUES (589, '131121', '枣强县', '131100');
INSERT INTO `city` VALUES (590, '131122', '武邑县', '131100');
INSERT INTO `city` VALUES (591, '131123', '武强县', '131100');
INSERT INTO `city` VALUES (592, '131124', '饶阳县', '131100');
INSERT INTO `city` VALUES (593, '131125', '安平县', '131100');
INSERT INTO `city` VALUES (594, '131126', '故城县', '131100');
INSERT INTO `city` VALUES (595, '131127', '景　县', '131100');
INSERT INTO `city` VALUES (596, '131128', '阜城县', '131100');
INSERT INTO `city` VALUES (597, '131181', '冀州市', '131100');
INSERT INTO `city` VALUES (598, '131182', '深州市', '131100');
INSERT INTO `city` VALUES (599, '140101', '市辖区', '140100');
INSERT INTO `city` VALUES (600, '140105', '小店区', '140100');
INSERT INTO `city` VALUES (601, '140106', '迎泽区', '140100');
INSERT INTO `city` VALUES (602, '140107', '杏花岭区', '140100');
INSERT INTO `city` VALUES (603, '140108', '尖草坪区', '140100');
INSERT INTO `city` VALUES (604, '140109', '万柏林区', '140100');
INSERT INTO `city` VALUES (605, '140110', '晋源区', '140100');
INSERT INTO `city` VALUES (606, '140121', '清徐县', '140100');
INSERT INTO `city` VALUES (607, '140122', '阳曲县', '140100');
INSERT INTO `city` VALUES (608, '140123', '娄烦县', '140100');
INSERT INTO `city` VALUES (609, '140181', '古交市', '140100');
INSERT INTO `city` VALUES (610, '140201', '市辖区', '140200');
INSERT INTO `city` VALUES (611, '140202', '城　区', '140200');
INSERT INTO `city` VALUES (612, '140203', '矿　区', '140200');
INSERT INTO `city` VALUES (613, '140211', '南郊区', '140200');
INSERT INTO `city` VALUES (614, '140212', '新荣区', '140200');
INSERT INTO `city` VALUES (615, '140221', '阳高县', '140200');
INSERT INTO `city` VALUES (616, '140222', '天镇县', '140200');
INSERT INTO `city` VALUES (617, '140223', '广灵县', '140200');
INSERT INTO `city` VALUES (618, '140224', '灵丘县', '140200');
INSERT INTO `city` VALUES (619, '140225', '浑源县', '140200');
INSERT INTO `city` VALUES (620, '140226', '左云县', '140200');
INSERT INTO `city` VALUES (621, '140227', '大同县', '140200');
INSERT INTO `city` VALUES (622, '140301', '市辖区', '140300');
INSERT INTO `city` VALUES (623, '140302', '城　区', '140300');
INSERT INTO `city` VALUES (624, '140303', '矿　区', '140300');
INSERT INTO `city` VALUES (625, '140311', '郊　区', '140300');
INSERT INTO `city` VALUES (626, '140321', '平定县', '140300');
INSERT INTO `city` VALUES (627, '140322', '盂　县', '140300');
INSERT INTO `city` VALUES (628, '140401', '市辖区', '140400');
INSERT INTO `city` VALUES (629, '140402', '城　区', '140400');
INSERT INTO `city` VALUES (630, '140411', '郊　区', '140400');
INSERT INTO `city` VALUES (631, '140421', '长治县', '140400');
INSERT INTO `city` VALUES (632, '140423', '襄垣县', '140400');
INSERT INTO `city` VALUES (633, '140424', '屯留县', '140400');
INSERT INTO `city` VALUES (634, '140425', '平顺县', '140400');
INSERT INTO `city` VALUES (635, '140426', '黎城县', '140400');
INSERT INTO `city` VALUES (636, '140427', '壶关县', '140400');
INSERT INTO `city` VALUES (637, '140428', '长子县', '140400');
INSERT INTO `city` VALUES (638, '140429', '武乡县', '140400');
INSERT INTO `city` VALUES (639, '140430', '沁　县', '140400');
INSERT INTO `city` VALUES (640, '140431', '沁源县', '140400');
INSERT INTO `city` VALUES (641, '140481', '潞城市', '140400');
INSERT INTO `city` VALUES (642, '140501', '市辖区', '140500');
INSERT INTO `city` VALUES (643, '140502', '城　区', '140500');
INSERT INTO `city` VALUES (644, '140521', '沁水县', '140500');
INSERT INTO `city` VALUES (645, '140522', '阳城县', '140500');
INSERT INTO `city` VALUES (646, '140524', '陵川县', '140500');
INSERT INTO `city` VALUES (647, '140525', '泽州县', '140500');
INSERT INTO `city` VALUES (648, '140581', '高平市', '140500');
INSERT INTO `city` VALUES (649, '140601', '市辖区', '140600');
INSERT INTO `city` VALUES (650, '140602', '朔城区', '140600');
INSERT INTO `city` VALUES (651, '140603', '平鲁区', '140600');
INSERT INTO `city` VALUES (652, '140621', '山阴县', '140600');
INSERT INTO `city` VALUES (653, '140622', '应　县', '140600');
INSERT INTO `city` VALUES (654, '140623', '右玉县', '140600');
INSERT INTO `city` VALUES (655, '140624', '怀仁县', '140600');
INSERT INTO `city` VALUES (656, '140701', '市辖区', '140700');
INSERT INTO `city` VALUES (657, '140702', '榆次区', '140700');
INSERT INTO `city` VALUES (658, '140721', '榆社县', '140700');
INSERT INTO `city` VALUES (659, '140722', '左权县', '140700');
INSERT INTO `city` VALUES (660, '140723', '和顺县', '140700');
INSERT INTO `city` VALUES (661, '140724', '昔阳县', '140700');
INSERT INTO `city` VALUES (662, '140725', '寿阳县', '140700');
INSERT INTO `city` VALUES (663, '140726', '太谷县', '140700');
INSERT INTO `city` VALUES (664, '140727', '祁　县', '140700');
INSERT INTO `city` VALUES (665, '140728', '平遥县', '140700');
INSERT INTO `city` VALUES (666, '140729', '灵石县', '140700');
INSERT INTO `city` VALUES (667, '140781', '介休市', '140700');
INSERT INTO `city` VALUES (668, '140801', '市辖区', '140800');
INSERT INTO `city` VALUES (669, '140802', '盐湖区', '140800');
INSERT INTO `city` VALUES (670, '140821', '临猗县', '140800');
INSERT INTO `city` VALUES (671, '140822', '万荣县', '140800');
INSERT INTO `city` VALUES (672, '140823', '闻喜县', '140800');
INSERT INTO `city` VALUES (673, '140824', '稷山县', '140800');
INSERT INTO `city` VALUES (674, '140825', '新绛县', '140800');
INSERT INTO `city` VALUES (675, '140826', '绛　县', '140800');
INSERT INTO `city` VALUES (676, '140827', '垣曲县', '140800');
INSERT INTO `city` VALUES (677, '140828', '夏　县', '140800');
INSERT INTO `city` VALUES (678, '140829', '平陆县', '140800');
INSERT INTO `city` VALUES (679, '140830', '芮城县', '140800');
INSERT INTO `city` VALUES (680, '140881', '永济市', '140800');
INSERT INTO `city` VALUES (681, '140882', '河津市', '140800');
INSERT INTO `city` VALUES (682, '140901', '市辖区', '140900');
INSERT INTO `city` VALUES (683, '140902', '忻府区', '140900');
INSERT INTO `city` VALUES (684, '140921', '定襄县', '140900');
INSERT INTO `city` VALUES (685, '140922', '五台县', '140900');
INSERT INTO `city` VALUES (686, '140923', '代　县', '140900');
INSERT INTO `city` VALUES (687, '140924', '繁峙县', '140900');
INSERT INTO `city` VALUES (688, '140925', '宁武县', '140900');
INSERT INTO `city` VALUES (689, '140926', '静乐县', '140900');
INSERT INTO `city` VALUES (690, '140927', '神池县', '140900');
INSERT INTO `city` VALUES (691, '140928', '五寨县', '140900');
INSERT INTO `city` VALUES (692, '140929', '岢岚县', '140900');
INSERT INTO `city` VALUES (693, '140930', '河曲县', '140900');
INSERT INTO `city` VALUES (694, '140931', '保德县', '140900');
INSERT INTO `city` VALUES (695, '140932', '偏关县', '140900');
INSERT INTO `city` VALUES (696, '140981', '原平市', '140900');
INSERT INTO `city` VALUES (697, '141001', '市辖区', '141000');
INSERT INTO `city` VALUES (698, '141002', '尧都区', '141000');
INSERT INTO `city` VALUES (699, '141021', '曲沃县', '141000');
INSERT INTO `city` VALUES (700, '141022', '翼城县', '141000');
INSERT INTO `city` VALUES (701, '141023', '襄汾县', '141000');
INSERT INTO `city` VALUES (702, '141024', '洪洞县', '141000');
INSERT INTO `city` VALUES (703, '141025', '古　县', '141000');
INSERT INTO `city` VALUES (704, '141026', '安泽县', '141000');
INSERT INTO `city` VALUES (705, '141027', '浮山县', '141000');
INSERT INTO `city` VALUES (706, '141028', '吉　县', '141000');
INSERT INTO `city` VALUES (707, '141029', '乡宁县', '141000');
INSERT INTO `city` VALUES (708, '141030', '大宁县', '141000');
INSERT INTO `city` VALUES (709, '141031', '隰　县', '141000');
INSERT INTO `city` VALUES (710, '141032', '永和县', '141000');
INSERT INTO `city` VALUES (711, '141033', '蒲　县', '141000');
INSERT INTO `city` VALUES (712, '141034', '汾西县', '141000');
INSERT INTO `city` VALUES (713, '141081', '侯马市', '141000');
INSERT INTO `city` VALUES (714, '141082', '霍州市', '141000');
INSERT INTO `city` VALUES (715, '141101', '市辖区', '141100');
INSERT INTO `city` VALUES (716, '141102', '离石区', '141100');
INSERT INTO `city` VALUES (717, '141121', '文水县', '141100');
INSERT INTO `city` VALUES (718, '141122', '交城县', '141100');
INSERT INTO `city` VALUES (719, '141123', '兴　县', '141100');
INSERT INTO `city` VALUES (720, '141124', '临　县', '141100');
INSERT INTO `city` VALUES (721, '141125', '柳林县', '141100');
INSERT INTO `city` VALUES (722, '141126', '石楼县', '141100');
INSERT INTO `city` VALUES (723, '141127', '岚　县', '141100');
INSERT INTO `city` VALUES (724, '141128', '方山县', '141100');
INSERT INTO `city` VALUES (725, '141129', '中阳县', '141100');
INSERT INTO `city` VALUES (726, '141130', '交口县', '141100');
INSERT INTO `city` VALUES (727, '141181', '孝义市', '141100');
INSERT INTO `city` VALUES (728, '141182', '汾阳市', '141100');
INSERT INTO `city` VALUES (729, '150101', '市辖区', '150100');
INSERT INTO `city` VALUES (730, '150102', '新城区', '150100');
INSERT INTO `city` VALUES (731, '150103', '回民区', '150100');
INSERT INTO `city` VALUES (732, '150104', '玉泉区', '150100');
INSERT INTO `city` VALUES (733, '150105', '赛罕区', '150100');
INSERT INTO `city` VALUES (734, '150121', '土默特左旗', '150100');
INSERT INTO `city` VALUES (735, '150122', '托克托县', '150100');
INSERT INTO `city` VALUES (736, '150123', '和林格尔县', '150100');
INSERT INTO `city` VALUES (737, '150124', '清水河县', '150100');
INSERT INTO `city` VALUES (738, '150125', '武川县', '150100');
INSERT INTO `city` VALUES (739, '150201', '市辖区', '150200');
INSERT INTO `city` VALUES (740, '150202', '东河区', '150200');
INSERT INTO `city` VALUES (741, '150203', '昆都仑区', '150200');
INSERT INTO `city` VALUES (742, '150204', '青山区', '150200');
INSERT INTO `city` VALUES (743, '150205', '石拐区', '150200');
INSERT INTO `city` VALUES (744, '150206', '白云矿区', '150200');
INSERT INTO `city` VALUES (745, '150207', '九原区', '150200');
INSERT INTO `city` VALUES (746, '150221', '土默特右旗', '150200');
INSERT INTO `city` VALUES (747, '150222', '固阳县', '150200');
INSERT INTO `city` VALUES (748, '150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `city` VALUES (749, '150301', '市辖区', '150300');
INSERT INTO `city` VALUES (750, '150302', '海勃湾区', '150300');
INSERT INTO `city` VALUES (751, '150303', '海南区', '150300');
INSERT INTO `city` VALUES (752, '150304', '乌达区', '150300');
INSERT INTO `city` VALUES (753, '150401', '市辖区', '150400');
INSERT INTO `city` VALUES (754, '150402', '红山区', '150400');
INSERT INTO `city` VALUES (755, '150403', '元宝山区', '150400');
INSERT INTO `city` VALUES (756, '150404', '松山区', '150400');
INSERT INTO `city` VALUES (757, '150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `city` VALUES (758, '150422', '巴林左旗', '150400');
INSERT INTO `city` VALUES (759, '150423', '巴林右旗', '150400');
INSERT INTO `city` VALUES (760, '150424', '林西县', '150400');
INSERT INTO `city` VALUES (761, '150425', '克什克腾旗', '150400');
INSERT INTO `city` VALUES (762, '150426', '翁牛特旗', '150400');
INSERT INTO `city` VALUES (763, '150428', '喀喇沁旗', '150400');
INSERT INTO `city` VALUES (764, '150429', '宁城县', '150400');
INSERT INTO `city` VALUES (765, '150430', '敖汉旗', '150400');
INSERT INTO `city` VALUES (766, '150501', '市辖区', '150500');
INSERT INTO `city` VALUES (767, '150502', '科尔沁区', '150500');
INSERT INTO `city` VALUES (768, '150521', '科尔沁左翼中旗', '150500');
INSERT INTO `city` VALUES (769, '150522', '科尔沁左翼后旗', '150500');
INSERT INTO `city` VALUES (770, '150523', '开鲁县', '150500');
INSERT INTO `city` VALUES (771, '150524', '库伦旗', '150500');
INSERT INTO `city` VALUES (772, '150525', '奈曼旗', '150500');
INSERT INTO `city` VALUES (773, '150526', '扎鲁特旗', '150500');
INSERT INTO `city` VALUES (774, '150581', '霍林郭勒市', '150500');
INSERT INTO `city` VALUES (775, '150602', '东胜区', '150600');
INSERT INTO `city` VALUES (776, '150621', '达拉特旗', '150600');
INSERT INTO `city` VALUES (777, '150622', '准格尔旗', '150600');
INSERT INTO `city` VALUES (778, '150623', '鄂托克前旗', '150600');
INSERT INTO `city` VALUES (779, '150624', '鄂托克旗', '150600');
INSERT INTO `city` VALUES (780, '150625', '杭锦旗', '150600');
INSERT INTO `city` VALUES (781, '150626', '乌审旗', '150600');
INSERT INTO `city` VALUES (782, '150627', '伊金霍洛旗', '150600');
INSERT INTO `city` VALUES (783, '150701', '市辖区', '150700');
INSERT INTO `city` VALUES (784, '150702', '海拉尔区', '150700');
INSERT INTO `city` VALUES (785, '150721', '阿荣旗', '150700');
INSERT INTO `city` VALUES (786, '150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `city` VALUES (787, '150723', '鄂伦春自治旗', '150700');
INSERT INTO `city` VALUES (788, '150724', '鄂温克族自治旗', '150700');
INSERT INTO `city` VALUES (789, '150725', '陈巴尔虎旗', '150700');
INSERT INTO `city` VALUES (790, '150726', '新巴尔虎左旗', '150700');
INSERT INTO `city` VALUES (791, '150727', '新巴尔虎右旗', '150700');
INSERT INTO `city` VALUES (792, '150781', '满洲里市', '150700');
INSERT INTO `city` VALUES (793, '150782', '牙克石市', '150700');
INSERT INTO `city` VALUES (794, '150783', '扎兰屯市', '150700');
INSERT INTO `city` VALUES (795, '150784', '额尔古纳市', '150700');
INSERT INTO `city` VALUES (796, '150785', '根河市', '150700');
INSERT INTO `city` VALUES (797, '150801', '市辖区', '150800');
INSERT INTO `city` VALUES (798, '150802', '临河区', '150800');
INSERT INTO `city` VALUES (799, '150821', '五原县', '150800');
INSERT INTO `city` VALUES (800, '150822', '磴口县', '150800');
INSERT INTO `city` VALUES (801, '150823', '乌拉特前旗', '150800');
INSERT INTO `city` VALUES (802, '150824', '乌拉特中旗', '150800');
INSERT INTO `city` VALUES (803, '150825', '乌拉特后旗', '150800');
INSERT INTO `city` VALUES (804, '150826', '杭锦后旗', '150800');
INSERT INTO `city` VALUES (1230, '150901', '市辖区', '150900');
INSERT INTO `city` VALUES (1231, '150902', '集宁区', '150900');
INSERT INTO `city` VALUES (1232, '150921', '卓资县', '150900');
INSERT INTO `city` VALUES (1233, '150922', '化德县', '150900');
INSERT INTO `city` VALUES (1234, '150923', '商都县', '150900');
INSERT INTO `city` VALUES (1235, '150924', '兴和县', '150900');
INSERT INTO `city` VALUES (1236, '150925', '凉城县', '150900');
INSERT INTO `city` VALUES (1237, '150926', '察哈尔右翼前旗', '150900');
INSERT INTO `city` VALUES (1238, '150927', '察哈尔右翼中旗', '150900');
INSERT INTO `city` VALUES (1239, '150928', '察哈尔右翼后旗', '150900');
INSERT INTO `city` VALUES (1240, '150929', '四子王旗', '150900');
INSERT INTO `city` VALUES (1241, '150981', '丰镇市', '150900');
INSERT INTO `city` VALUES (1242, '152201', '乌兰浩特市', '152200');
INSERT INTO `city` VALUES (1243, '152202', '阿尔山市', '152200');
INSERT INTO `city` VALUES (1244, '152221', '科尔沁右翼前旗', '152200');
INSERT INTO `city` VALUES (1245, '152222', '科尔沁右翼中旗', '152200');
INSERT INTO `city` VALUES (1246, '152223', '扎赉特旗', '152200');
INSERT INTO `city` VALUES (1247, '152224', '突泉县', '152200');
INSERT INTO `city` VALUES (1248, '152501', '二连浩特市', '152500');
INSERT INTO `city` VALUES (1249, '152502', '锡林浩特市', '152500');
INSERT INTO `city` VALUES (1250, '152522', '阿巴嘎旗', '152500');
INSERT INTO `city` VALUES (1251, '152523', '苏尼特左旗', '152500');
INSERT INTO `city` VALUES (1252, '152524', '苏尼特右旗', '152500');
INSERT INTO `city` VALUES (1253, '152525', '东乌珠穆沁旗', '152500');
INSERT INTO `city` VALUES (1254, '152526', '西乌珠穆沁旗', '152500');
INSERT INTO `city` VALUES (1255, '152527', '太仆寺旗', '152500');
INSERT INTO `city` VALUES (1256, '152528', '镶黄旗', '152500');
INSERT INTO `city` VALUES (1257, '152529', '正镶白旗', '152500');
INSERT INTO `city` VALUES (1258, '152530', '正蓝旗', '152500');
INSERT INTO `city` VALUES (1259, '152531', '多伦县', '152500');
INSERT INTO `city` VALUES (1260, '152921', '阿拉善左旗', '152900');
INSERT INTO `city` VALUES (1261, '152922', '阿拉善右旗', '152900');
INSERT INTO `city` VALUES (1262, '152923', '额济纳旗', '152900');
INSERT INTO `city` VALUES (1263, '210101', '市辖区', '210100');
INSERT INTO `city` VALUES (1264, '210102', '和平区', '210100');
INSERT INTO `city` VALUES (1265, '210103', '沈河区', '210100');
INSERT INTO `city` VALUES (1266, '210104', '大东区', '210100');
INSERT INTO `city` VALUES (1267, '210105', '皇姑区', '210100');
INSERT INTO `city` VALUES (1268, '210106', '铁西区', '210100');
INSERT INTO `city` VALUES (1269, '210111', '苏家屯区', '210100');
INSERT INTO `city` VALUES (1270, '210112', '东陵区', '210100');
INSERT INTO `city` VALUES (1271, '210113', '新城子区', '210100');
INSERT INTO `city` VALUES (1272, '210114', '于洪区', '210100');
INSERT INTO `city` VALUES (1273, '210122', '辽中县', '210100');
INSERT INTO `city` VALUES (1274, '210123', '康平县', '210100');
INSERT INTO `city` VALUES (1275, '210124', '法库县', '210100');
INSERT INTO `city` VALUES (1276, '210181', '新民市', '210100');
INSERT INTO `city` VALUES (1277, '210201', '市辖区', '210200');
INSERT INTO `city` VALUES (1278, '210202', '中山区', '210200');
INSERT INTO `city` VALUES (1279, '210203', '西岗区', '210200');
INSERT INTO `city` VALUES (1280, '210204', '沙河口区', '210200');
INSERT INTO `city` VALUES (1281, '210211', '甘井子区', '210200');
INSERT INTO `city` VALUES (1282, '210212', '旅顺口区', '210200');
INSERT INTO `city` VALUES (1283, '210213', '金州区', '210200');
INSERT INTO `city` VALUES (1284, '210224', '长海县', '210200');
INSERT INTO `city` VALUES (1285, '210281', '瓦房店市', '210200');
INSERT INTO `city` VALUES (1286, '210282', '普兰店市', '210200');
INSERT INTO `city` VALUES (1287, '210283', '庄河市', '210200');
INSERT INTO `city` VALUES (1288, '210301', '市辖区', '210300');
INSERT INTO `city` VALUES (1289, '210302', '铁东区', '210300');
INSERT INTO `city` VALUES (1290, '210303', '铁西区', '210300');
INSERT INTO `city` VALUES (1291, '210304', '立山区', '210300');
INSERT INTO `city` VALUES (1292, '210311', '千山区', '210300');
INSERT INTO `city` VALUES (1293, '210321', '台安县', '210300');
INSERT INTO `city` VALUES (1294, '210323', '岫岩满族自治县', '210300');
INSERT INTO `city` VALUES (1295, '210381', '海城市', '210300');
INSERT INTO `city` VALUES (1296, '210401', '市辖区', '210400');
INSERT INTO `city` VALUES (1297, '210402', '新抚区', '210400');
INSERT INTO `city` VALUES (1298, '210403', '东洲区', '210400');
INSERT INTO `city` VALUES (1299, '210404', '望花区', '210400');
INSERT INTO `city` VALUES (1300, '210411', '顺城区', '210400');
INSERT INTO `city` VALUES (1301, '210421', '抚顺县', '210400');
INSERT INTO `city` VALUES (1302, '210422', '新宾满族自治县', '210400');
INSERT INTO `city` VALUES (1303, '210423', '清原满族自治县', '210400');
INSERT INTO `city` VALUES (1304, '210501', '市辖区', '210500');
INSERT INTO `city` VALUES (1305, '210502', '平山区', '210500');
INSERT INTO `city` VALUES (1306, '210503', '溪湖区', '210500');
INSERT INTO `city` VALUES (1307, '210504', '明山区', '210500');
INSERT INTO `city` VALUES (1308, '210505', '南芬区', '210500');
INSERT INTO `city` VALUES (1309, '210521', '本溪满族自治县', '210500');
INSERT INTO `city` VALUES (1310, '210522', '桓仁满族自治县', '210500');
INSERT INTO `city` VALUES (1311, '210601', '市辖区', '210600');
INSERT INTO `city` VALUES (1312, '210602', '元宝区', '210600');
INSERT INTO `city` VALUES (1313, '210603', '振兴区', '210600');
INSERT INTO `city` VALUES (1314, '210604', '振安区', '210600');
INSERT INTO `city` VALUES (1315, '210624', '宽甸满族自治县', '210600');
INSERT INTO `city` VALUES (1316, '210681', '东港市', '210600');
INSERT INTO `city` VALUES (1317, '210682', '凤城市', '210600');
INSERT INTO `city` VALUES (1318, '210701', '市辖区', '210700');
INSERT INTO `city` VALUES (1319, '210702', '古塔区', '210700');
INSERT INTO `city` VALUES (1320, '210703', '凌河区', '210700');
INSERT INTO `city` VALUES (1321, '210711', '太和区', '210700');
INSERT INTO `city` VALUES (1322, '210726', '黑山县', '210700');
INSERT INTO `city` VALUES (1323, '210727', '义　县', '210700');
INSERT INTO `city` VALUES (1324, '210781', '凌海市', '210700');
INSERT INTO `city` VALUES (1325, '210782', '北宁市', '210700');
INSERT INTO `city` VALUES (1326, '210801', '市辖区', '210800');
INSERT INTO `city` VALUES (1327, '210802', '站前区', '210800');
INSERT INTO `city` VALUES (1328, '210803', '西市区', '210800');
INSERT INTO `city` VALUES (1329, '210804', '鲅鱼圈区', '210800');
INSERT INTO `city` VALUES (1330, '210811', '老边区', '210800');
INSERT INTO `city` VALUES (1331, '210881', '盖州市', '210800');
INSERT INTO `city` VALUES (1332, '210882', '大石桥市', '210800');
INSERT INTO `city` VALUES (1333, '210901', '市辖区', '210900');
INSERT INTO `city` VALUES (1334, '210902', '海州区', '210900');
INSERT INTO `city` VALUES (1335, '210903', '新邱区', '210900');
INSERT INTO `city` VALUES (1336, '210904', '太平区', '210900');
INSERT INTO `city` VALUES (1337, '210905', '清河门区', '210900');
INSERT INTO `city` VALUES (1338, '210911', '细河区', '210900');
INSERT INTO `city` VALUES (1339, '210921', '阜新蒙古族自治县', '210900');
INSERT INTO `city` VALUES (1340, '210922', '彰武县', '210900');
INSERT INTO `city` VALUES (1341, '211001', '市辖区', '211000');
INSERT INTO `city` VALUES (1342, '211002', '白塔区', '211000');
INSERT INTO `city` VALUES (1343, '211003', '文圣区', '211000');
INSERT INTO `city` VALUES (1344, '211004', '宏伟区', '211000');
INSERT INTO `city` VALUES (1345, '211005', '弓长岭区', '211000');
INSERT INTO `city` VALUES (1346, '211011', '太子河区', '211000');
INSERT INTO `city` VALUES (1347, '211021', '辽阳县', '211000');
INSERT INTO `city` VALUES (1348, '211081', '灯塔市', '211000');
INSERT INTO `city` VALUES (1349, '211101', '市辖区', '211100');
INSERT INTO `city` VALUES (1350, '211102', '双台子区', '211100');
INSERT INTO `city` VALUES (1351, '211103', '兴隆台区', '211100');
INSERT INTO `city` VALUES (1352, '211121', '大洼县', '211100');
INSERT INTO `city` VALUES (1353, '211122', '盘山县', '211100');
INSERT INTO `city` VALUES (1354, '211201', '市辖区', '211200');
INSERT INTO `city` VALUES (1355, '211202', '银州区', '211200');
INSERT INTO `city` VALUES (1356, '211204', '清河区', '211200');
INSERT INTO `city` VALUES (1357, '211221', '铁岭县', '211200');
INSERT INTO `city` VALUES (1358, '211223', '西丰县', '211200');
INSERT INTO `city` VALUES (1359, '211224', '昌图县', '211200');
INSERT INTO `city` VALUES (1360, '211281', '调兵山市', '211200');
INSERT INTO `city` VALUES (1361, '211282', '开原市', '211200');
INSERT INTO `city` VALUES (1362, '211301', '市辖区', '211300');
INSERT INTO `city` VALUES (1363, '211302', '双塔区', '211300');
INSERT INTO `city` VALUES (1364, '211303', '龙城区', '211300');
INSERT INTO `city` VALUES (1365, '211321', '朝阳县', '211300');
INSERT INTO `city` VALUES (1366, '211322', '建平县', '211300');
INSERT INTO `city` VALUES (1367, '211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `city` VALUES (1368, '211381', '北票市', '211300');
INSERT INTO `city` VALUES (1369, '211382', '凌源市', '211300');
INSERT INTO `city` VALUES (1370, '211401', '市辖区', '211400');
INSERT INTO `city` VALUES (1371, '211402', '连山区', '211400');
INSERT INTO `city` VALUES (1372, '211403', '龙港区', '211400');
INSERT INTO `city` VALUES (1373, '211404', '南票区', '211400');
INSERT INTO `city` VALUES (1374, '211421', '绥中县', '211400');
INSERT INTO `city` VALUES (1375, '211422', '建昌县', '211400');
INSERT INTO `city` VALUES (1376, '211481', '兴城市', '211400');
INSERT INTO `city` VALUES (1377, '220101', '市辖区', '220100');
INSERT INTO `city` VALUES (1378, '220102', '南关区', '220100');
INSERT INTO `city` VALUES (1379, '220103', '宽城区', '220100');
INSERT INTO `city` VALUES (1380, '220104', '朝阳区', '220100');
INSERT INTO `city` VALUES (1381, '220105', '二道区', '220100');
INSERT INTO `city` VALUES (1382, '220106', '绿园区', '220100');
INSERT INTO `city` VALUES (1383, '220112', '双阳区', '220100');
INSERT INTO `city` VALUES (1384, '220122', '农安县', '220100');
INSERT INTO `city` VALUES (1385, '220181', '九台市', '220100');
INSERT INTO `city` VALUES (1386, '220182', '榆树市', '220100');
INSERT INTO `city` VALUES (1387, '220183', '德惠市', '220100');
INSERT INTO `city` VALUES (1388, '220201', '市辖区', '220200');
INSERT INTO `city` VALUES (1389, '220202', '昌邑区', '220200');
INSERT INTO `city` VALUES (1390, '220203', '龙潭区', '220200');
INSERT INTO `city` VALUES (1391, '220204', '船营区', '220200');
INSERT INTO `city` VALUES (1392, '220211', '丰满区', '220200');
INSERT INTO `city` VALUES (1393, '220221', '永吉县', '220200');
INSERT INTO `city` VALUES (1394, '220281', '蛟河市', '220200');
INSERT INTO `city` VALUES (1395, '220282', '桦甸市', '220200');
INSERT INTO `city` VALUES (1396, '220283', '舒兰市', '220200');
INSERT INTO `city` VALUES (1397, '220284', '磐石市', '220200');
INSERT INTO `city` VALUES (1398, '220301', '市辖区', '220300');
INSERT INTO `city` VALUES (1399, '220302', '铁西区', '220300');
INSERT INTO `city` VALUES (1400, '220303', '铁东区', '220300');
INSERT INTO `city` VALUES (1401, '220322', '梨树县', '220300');
INSERT INTO `city` VALUES (1402, '220323', '伊通满族自治县', '220300');
INSERT INTO `city` VALUES (1403, '220381', '公主岭市', '220300');
INSERT INTO `city` VALUES (1404, '220382', '双辽市', '220300');
INSERT INTO `city` VALUES (1405, '220401', '市辖区', '220400');
INSERT INTO `city` VALUES (1406, '220402', '龙山区', '220400');
INSERT INTO `city` VALUES (1407, '220403', '西安区', '220400');
INSERT INTO `city` VALUES (1408, '220421', '东丰县', '220400');
INSERT INTO `city` VALUES (1409, '220422', '东辽县', '220400');
INSERT INTO `city` VALUES (1410, '220501', '市辖区', '220500');
INSERT INTO `city` VALUES (1411, '220502', '东昌区', '220500');
INSERT INTO `city` VALUES (1412, '220503', '二道江区', '220500');
INSERT INTO `city` VALUES (1413, '220521', '通化县', '220500');
INSERT INTO `city` VALUES (1414, '220523', '辉南县', '220500');
INSERT INTO `city` VALUES (1415, '220524', '柳河县', '220500');
INSERT INTO `city` VALUES (1416, '220581', '梅河口市', '220500');
INSERT INTO `city` VALUES (1417, '220582', '集安市', '220500');
INSERT INTO `city` VALUES (1418, '220601', '市辖区', '220600');
INSERT INTO `city` VALUES (1419, '220602', '八道江区', '220600');
INSERT INTO `city` VALUES (1420, '220621', '抚松县', '220600');
INSERT INTO `city` VALUES (1421, '220622', '靖宇县', '220600');
INSERT INTO `city` VALUES (1422, '220623', '长白朝鲜族自治县', '220600');
INSERT INTO `city` VALUES (1423, '220625', '江源县', '220600');
INSERT INTO `city` VALUES (1424, '220681', '临江市', '220600');
INSERT INTO `city` VALUES (1425, '220701', '市辖区', '220700');
INSERT INTO `city` VALUES (1426, '220702', '宁江区', '220700');
INSERT INTO `city` VALUES (1427, '220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `city` VALUES (1428, '220722', '长岭县', '220700');
INSERT INTO `city` VALUES (1429, '220723', '乾安县', '220700');
INSERT INTO `city` VALUES (1430, '220724', '扶余县', '220700');
INSERT INTO `city` VALUES (1431, '220801', '市辖区', '220800');
INSERT INTO `city` VALUES (1432, '220802', '洮北区', '220800');
INSERT INTO `city` VALUES (1433, '220821', '镇赉县', '220800');
INSERT INTO `city` VALUES (1434, '220822', '通榆县', '220800');
INSERT INTO `city` VALUES (1435, '220881', '洮南市', '220800');
INSERT INTO `city` VALUES (1436, '220882', '大安市', '220800');
INSERT INTO `city` VALUES (1437, '222401', '延吉市', '222400');
INSERT INTO `city` VALUES (1438, '222402', '图们市', '222400');
INSERT INTO `city` VALUES (1439, '222403', '敦化市', '222400');
INSERT INTO `city` VALUES (1440, '222404', '珲春市', '222400');
INSERT INTO `city` VALUES (1441, '222405', '龙井市', '222400');
INSERT INTO `city` VALUES (1442, '222406', '和龙市', '222400');
INSERT INTO `city` VALUES (1443, '222424', '汪清县', '222400');
INSERT INTO `city` VALUES (1444, '222426', '安图县', '222400');
INSERT INTO `city` VALUES (1445, '230101', '市辖区', '230100');
INSERT INTO `city` VALUES (1446, '230102', '道里区', '230100');
INSERT INTO `city` VALUES (1447, '230103', '南岗区', '230100');
INSERT INTO `city` VALUES (1448, '230104', '道外区', '230100');
INSERT INTO `city` VALUES (1449, '230106', '香坊区', '230100');
INSERT INTO `city` VALUES (1450, '230107', '动力区', '230100');
INSERT INTO `city` VALUES (1451, '230108', '平房区', '230100');
INSERT INTO `city` VALUES (1452, '230109', '松北区', '230100');
INSERT INTO `city` VALUES (1453, '230111', '呼兰区', '230100');
INSERT INTO `city` VALUES (1454, '230123', '依兰县', '230100');
INSERT INTO `city` VALUES (1455, '230124', '方正县', '230100');
INSERT INTO `city` VALUES (1456, '230125', '宾　县', '230100');
INSERT INTO `city` VALUES (1457, '230126', '巴彦县', '230100');
INSERT INTO `city` VALUES (1458, '230127', '木兰县', '230100');
INSERT INTO `city` VALUES (1459, '230128', '通河县', '230100');
INSERT INTO `city` VALUES (1460, '230129', '延寿县', '230100');
INSERT INTO `city` VALUES (1461, '230181', '阿城市', '230100');
INSERT INTO `city` VALUES (1462, '230182', '双城市', '230100');
INSERT INTO `city` VALUES (1463, '230183', '尚志市', '230100');
INSERT INTO `city` VALUES (1464, '230184', '五常市', '230100');
INSERT INTO `city` VALUES (1465, '230201', '市辖区', '230200');
INSERT INTO `city` VALUES (1466, '230202', '龙沙区', '230200');
INSERT INTO `city` VALUES (1467, '230203', '建华区', '230200');
INSERT INTO `city` VALUES (1468, '230204', '铁锋区', '230200');
INSERT INTO `city` VALUES (1469, '230205', '昂昂溪区', '230200');
INSERT INTO `city` VALUES (1470, '230206', '富拉尔基区', '230200');
INSERT INTO `city` VALUES (1471, '230207', '碾子山区', '230200');
INSERT INTO `city` VALUES (1472, '230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `city` VALUES (1473, '230221', '龙江县', '230200');
INSERT INTO `city` VALUES (1474, '230223', '依安县', '230200');
INSERT INTO `city` VALUES (1475, '230224', '泰来县', '230200');
INSERT INTO `city` VALUES (1476, '230225', '甘南县', '230200');
INSERT INTO `city` VALUES (1477, '230227', '富裕县', '230200');
INSERT INTO `city` VALUES (1478, '230229', '克山县', '230200');
INSERT INTO `city` VALUES (1479, '230230', '克东县', '230200');
INSERT INTO `city` VALUES (1480, '230231', '拜泉县', '230200');
INSERT INTO `city` VALUES (1481, '230281', '讷河市', '230200');
INSERT INTO `city` VALUES (1482, '230301', '市辖区', '230300');
INSERT INTO `city` VALUES (1483, '230302', '鸡冠区', '230300');
INSERT INTO `city` VALUES (1484, '230303', '恒山区', '230300');
INSERT INTO `city` VALUES (1485, '230304', '滴道区', '230300');
INSERT INTO `city` VALUES (1486, '230305', '梨树区', '230300');
INSERT INTO `city` VALUES (1487, '230306', '城子河区', '230300');
INSERT INTO `city` VALUES (1488, '230307', '麻山区', '230300');
INSERT INTO `city` VALUES (1489, '230321', '鸡东县', '230300');
INSERT INTO `city` VALUES (1490, '230381', '虎林市', '230300');
INSERT INTO `city` VALUES (1491, '230382', '密山市', '230300');
INSERT INTO `city` VALUES (1492, '230401', '市辖区', '230400');
INSERT INTO `city` VALUES (1493, '230402', '向阳区', '230400');
INSERT INTO `city` VALUES (1494, '230403', '工农区', '230400');
INSERT INTO `city` VALUES (1495, '230404', '南山区', '230400');
INSERT INTO `city` VALUES (1496, '230405', '兴安区', '230400');
INSERT INTO `city` VALUES (1497, '230406', '东山区', '230400');
INSERT INTO `city` VALUES (1498, '230407', '兴山区', '230400');
INSERT INTO `city` VALUES (1499, '230421', '萝北县', '230400');
INSERT INTO `city` VALUES (1500, '230422', '绥滨县', '230400');
INSERT INTO `city` VALUES (1501, '230501', '市辖区', '230500');
INSERT INTO `city` VALUES (1502, '230502', '尖山区', '230500');
INSERT INTO `city` VALUES (1503, '230503', '岭东区', '230500');
INSERT INTO `city` VALUES (1504, '230505', '四方台区', '230500');
INSERT INTO `city` VALUES (1505, '230506', '宝山区', '230500');
INSERT INTO `city` VALUES (1506, '230521', '集贤县', '230500');
INSERT INTO `city` VALUES (1507, '230522', '友谊县', '230500');
INSERT INTO `city` VALUES (1508, '230523', '宝清县', '230500');
INSERT INTO `city` VALUES (1509, '230524', '饶河县', '230500');
INSERT INTO `city` VALUES (1510, '230601', '市辖区', '230600');
INSERT INTO `city` VALUES (1511, '230602', '萨尔图区', '230600');
INSERT INTO `city` VALUES (1512, '230603', '龙凤区', '230600');
INSERT INTO `city` VALUES (1513, '230604', '让胡路区', '230600');
INSERT INTO `city` VALUES (1514, '230605', '红岗区', '230600');
INSERT INTO `city` VALUES (1515, '230606', '大同区', '230600');
INSERT INTO `city` VALUES (1516, '230621', '肇州县', '230600');
INSERT INTO `city` VALUES (1517, '230622', '肇源县', '230600');
INSERT INTO `city` VALUES (1518, '230623', '林甸县', '230600');
INSERT INTO `city` VALUES (1519, '230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `city` VALUES (1520, '230701', '市辖区', '230700');
INSERT INTO `city` VALUES (1521, '230702', '伊春区', '230700');
INSERT INTO `city` VALUES (1522, '230703', '南岔区', '230700');
INSERT INTO `city` VALUES (1523, '230704', '友好区', '230700');
INSERT INTO `city` VALUES (1524, '230705', '西林区', '230700');
INSERT INTO `city` VALUES (1525, '230706', '翠峦区', '230700');
INSERT INTO `city` VALUES (1526, '230707', '新青区', '230700');
INSERT INTO `city` VALUES (1527, '230708', '美溪区', '230700');
INSERT INTO `city` VALUES (1528, '230709', '金山屯区', '230700');
INSERT INTO `city` VALUES (1529, '230710', '五营区', '230700');
INSERT INTO `city` VALUES (1530, '230711', '乌马河区', '230700');
INSERT INTO `city` VALUES (1531, '230712', '汤旺河区', '230700');
INSERT INTO `city` VALUES (1532, '230713', '带岭区', '230700');
INSERT INTO `city` VALUES (1533, '230714', '乌伊岭区', '230700');
INSERT INTO `city` VALUES (1534, '230715', '红星区', '230700');
INSERT INTO `city` VALUES (1535, '230716', '上甘岭区', '230700');
INSERT INTO `city` VALUES (1536, '230722', '嘉荫县', '230700');
INSERT INTO `city` VALUES (1537, '230781', '铁力市', '230700');
INSERT INTO `city` VALUES (1538, '230801', '市辖区', '230800');
INSERT INTO `city` VALUES (1539, '230802', '永红区', '230800');
INSERT INTO `city` VALUES (1540, '230803', '向阳区', '230800');
INSERT INTO `city` VALUES (1541, '230804', '前进区', '230800');
INSERT INTO `city` VALUES (1542, '230805', '东风区', '230800');
INSERT INTO `city` VALUES (1543, '230811', '郊　区', '230800');
INSERT INTO `city` VALUES (1544, '230822', '桦南县', '230800');
INSERT INTO `city` VALUES (1545, '230826', '桦川县', '230800');
INSERT INTO `city` VALUES (1546, '230828', '汤原县', '230800');
INSERT INTO `city` VALUES (1547, '230833', '抚远县', '230800');
INSERT INTO `city` VALUES (1548, '230881', '同江市', '230800');
INSERT INTO `city` VALUES (1549, '230882', '富锦市', '230800');
INSERT INTO `city` VALUES (1550, '230901', '市辖区', '230900');
INSERT INTO `city` VALUES (1551, '230902', '新兴区', '230900');
INSERT INTO `city` VALUES (1552, '230903', '桃山区', '230900');
INSERT INTO `city` VALUES (1553, '230904', '茄子河区', '230900');
INSERT INTO `city` VALUES (1554, '230921', '勃利县', '230900');
INSERT INTO `city` VALUES (1555, '231001', '市辖区', '231000');
INSERT INTO `city` VALUES (1556, '231002', '东安区', '231000');
INSERT INTO `city` VALUES (1557, '231003', '阳明区', '231000');
INSERT INTO `city` VALUES (1558, '231004', '爱民区', '231000');
INSERT INTO `city` VALUES (1559, '231005', '西安区', '231000');
INSERT INTO `city` VALUES (1560, '231024', '东宁县', '231000');
INSERT INTO `city` VALUES (1561, '231025', '林口县', '231000');
INSERT INTO `city` VALUES (1562, '231081', '绥芬河市', '231000');
INSERT INTO `city` VALUES (1563, '231083', '海林市', '231000');
INSERT INTO `city` VALUES (1564, '231084', '宁安市', '231000');
INSERT INTO `city` VALUES (1565, '231085', '穆棱市', '231000');
INSERT INTO `city` VALUES (1566, '231101', '市辖区', '231100');
INSERT INTO `city` VALUES (1567, '231102', '爱辉区', '231100');
INSERT INTO `city` VALUES (1568, '231121', '嫩江县', '231100');
INSERT INTO `city` VALUES (1569, '231123', '逊克县', '231100');
INSERT INTO `city` VALUES (1570, '231124', '孙吴县', '231100');
INSERT INTO `city` VALUES (1571, '231181', '北安市', '231100');
INSERT INTO `city` VALUES (1572, '231182', '五大连池市', '231100');
INSERT INTO `city` VALUES (1573, '231201', '市辖区', '231200');
INSERT INTO `city` VALUES (1574, '231202', '北林区', '231200');
INSERT INTO `city` VALUES (1575, '231221', '望奎县', '231200');
INSERT INTO `city` VALUES (1576, '231222', '兰西县', '231200');
INSERT INTO `city` VALUES (1577, '231223', '青冈县', '231200');
INSERT INTO `city` VALUES (1578, '231224', '庆安县', '231200');
INSERT INTO `city` VALUES (1579, '231225', '明水县', '231200');
INSERT INTO `city` VALUES (1580, '231226', '绥棱县', '231200');
INSERT INTO `city` VALUES (1581, '231281', '安达市', '231200');
INSERT INTO `city` VALUES (1582, '231282', '肇东市', '231200');
INSERT INTO `city` VALUES (1583, '231283', '海伦市', '231200');
INSERT INTO `city` VALUES (1584, '232721', '呼玛县', '232700');
INSERT INTO `city` VALUES (1585, '232722', '塔河县', '232700');
INSERT INTO `city` VALUES (1586, '232723', '漠河县', '232700');
INSERT INTO `city` VALUES (1587, '310101', '黄浦区', '310100');
INSERT INTO `city` VALUES (1588, '310103', '卢湾区', '310100');
INSERT INTO `city` VALUES (1589, '310104', '徐汇区', '310100');
INSERT INTO `city` VALUES (1590, '310105', '长宁区', '310100');
INSERT INTO `city` VALUES (1591, '310106', '静安区', '310100');
INSERT INTO `city` VALUES (1592, '310107', '普陀区', '310100');
INSERT INTO `city` VALUES (1593, '310108', '闸北区', '310100');
INSERT INTO `city` VALUES (1594, '310109', '虹口区', '310100');
INSERT INTO `city` VALUES (1595, '310110', '杨浦区', '310100');
INSERT INTO `city` VALUES (1596, '310112', '闵行区', '310100');
INSERT INTO `city` VALUES (1597, '310113', '宝山区', '310100');
INSERT INTO `city` VALUES (1598, '310114', '嘉定区', '310100');
INSERT INTO `city` VALUES (1599, '310115', '浦东新区', '310100');
INSERT INTO `city` VALUES (1600, '310116', '金山区', '310100');
INSERT INTO `city` VALUES (1601, '310117', '松江区', '310100');
INSERT INTO `city` VALUES (1602, '310118', '青浦区', '310100');
INSERT INTO `city` VALUES (1603, '310119', '南汇区', '310100');
INSERT INTO `city` VALUES (1604, '310120', '奉贤区', '310100');
INSERT INTO `city` VALUES (1605, '310230', '崇明县', '310200');
INSERT INTO `city` VALUES (1606, '320101', '市辖区', '320100');
INSERT INTO `city` VALUES (1607, '320102', '玄武区', '320100');
INSERT INTO `city` VALUES (1608, '320103', '白下区', '320100');
INSERT INTO `city` VALUES (1609, '320104', '秦淮区', '320100');
INSERT INTO `city` VALUES (1610, '320105', '建邺区', '320100');
INSERT INTO `city` VALUES (1611, '320106', '鼓楼区', '320100');
INSERT INTO `city` VALUES (1612, '320107', '下关区', '320100');
INSERT INTO `city` VALUES (1613, '320111', '浦口区', '320100');
INSERT INTO `city` VALUES (1614, '320113', '栖霞区', '320100');
INSERT INTO `city` VALUES (1615, '320114', '雨花台区', '320100');
INSERT INTO `city` VALUES (1616, '320115', '江宁区', '320100');
INSERT INTO `city` VALUES (1617, '320116', '六合区', '320100');
INSERT INTO `city` VALUES (1618, '320124', '溧水县', '320100');
INSERT INTO `city` VALUES (1619, '320125', '高淳县', '320100');
INSERT INTO `city` VALUES (1620, '320201', '市辖区', '320200');
INSERT INTO `city` VALUES (1621, '320202', '崇安区', '320200');
INSERT INTO `city` VALUES (1622, '320203', '南长区', '320200');
INSERT INTO `city` VALUES (1623, '320204', '北塘区', '320200');
INSERT INTO `city` VALUES (1624, '320205', '锡山区', '320200');
INSERT INTO `city` VALUES (1625, '320206', '惠山区', '320200');
INSERT INTO `city` VALUES (1626, '320211', '滨湖区', '320200');
INSERT INTO `city` VALUES (1627, '320281', '江阴市', '320200');
INSERT INTO `city` VALUES (1628, '320282', '宜兴市', '320200');
INSERT INTO `city` VALUES (1629, '320301', '市辖区', '320300');
INSERT INTO `city` VALUES (1630, '320302', '鼓楼区', '320300');
INSERT INTO `city` VALUES (1631, '320303', '云龙区', '320300');
INSERT INTO `city` VALUES (1632, '320304', '九里区', '320300');
INSERT INTO `city` VALUES (1633, '320305', '贾汪区', '320300');
INSERT INTO `city` VALUES (1634, '320311', '泉山区', '320300');
INSERT INTO `city` VALUES (1635, '320321', '丰　县', '320300');
INSERT INTO `city` VALUES (1636, '320322', '沛　县', '320300');
INSERT INTO `city` VALUES (1637, '320323', '铜山县', '320300');
INSERT INTO `city` VALUES (1638, '320324', '睢宁县', '320300');
INSERT INTO `city` VALUES (1639, '320381', '新沂市', '320300');
INSERT INTO `city` VALUES (1640, '320382', '邳州市', '320300');
INSERT INTO `city` VALUES (1641, '320401', '市辖区', '320400');
INSERT INTO `city` VALUES (1642, '320402', '天宁区', '320400');
INSERT INTO `city` VALUES (1643, '320404', '钟楼区', '320400');
INSERT INTO `city` VALUES (1644, '320405', '戚墅堰区', '320400');
INSERT INTO `city` VALUES (1645, '320411', '新北区', '320400');
INSERT INTO `city` VALUES (1646, '320412', '武进区', '320400');
INSERT INTO `city` VALUES (1647, '320481', '溧阳市', '320400');
INSERT INTO `city` VALUES (1648, '320482', '金坛市', '320400');
INSERT INTO `city` VALUES (1649, '320501', '市辖区', '320500');
INSERT INTO `city` VALUES (1650, '320502', '沧浪区', '320500');
INSERT INTO `city` VALUES (1651, '320503', '平江区', '320500');
INSERT INTO `city` VALUES (1652, '320504', '金阊区', '320500');
INSERT INTO `city` VALUES (1653, '320505', '虎丘区', '320500');
INSERT INTO `city` VALUES (1654, '320506', '吴中区', '320500');
INSERT INTO `city` VALUES (1655, '320507', '相城区', '320500');
INSERT INTO `city` VALUES (1656, '320581', '常熟市', '320500');
INSERT INTO `city` VALUES (1657, '320582', '张家港市', '320500');
INSERT INTO `city` VALUES (1658, '320583', '昆山市', '320500');
INSERT INTO `city` VALUES (1659, '320584', '吴江市', '320500');
INSERT INTO `city` VALUES (1660, '320585', '太仓市', '320500');
INSERT INTO `city` VALUES (1661, '320601', '市辖区', '320600');
INSERT INTO `city` VALUES (1662, '320602', '崇川区', '320600');
INSERT INTO `city` VALUES (1663, '320611', '港闸区', '320600');
INSERT INTO `city` VALUES (1664, '320621', '海安县', '320600');
INSERT INTO `city` VALUES (1665, '320623', '如东县', '320600');
INSERT INTO `city` VALUES (1666, '320681', '启东市', '320600');
INSERT INTO `city` VALUES (1667, '320682', '如皋市', '320600');
INSERT INTO `city` VALUES (1668, '320683', '通州市', '320600');
INSERT INTO `city` VALUES (1669, '320684', '海门市', '320600');
INSERT INTO `city` VALUES (1670, '320701', '市辖区', '320700');
INSERT INTO `city` VALUES (1671, '320703', '连云区', '320700');
INSERT INTO `city` VALUES (1672, '320705', '新浦区', '320700');
INSERT INTO `city` VALUES (1673, '320706', '海州区', '320700');
INSERT INTO `city` VALUES (1674, '320721', '赣榆县', '320700');
INSERT INTO `city` VALUES (1675, '320722', '东海县', '320700');
INSERT INTO `city` VALUES (1676, '320723', '灌云县', '320700');
INSERT INTO `city` VALUES (1677, '320724', '灌南县', '320700');
INSERT INTO `city` VALUES (1678, '320801', '市辖区', '320800');
INSERT INTO `city` VALUES (1679, '320802', '清河区', '320800');
INSERT INTO `city` VALUES (1680, '320803', '楚州区', '320800');
INSERT INTO `city` VALUES (1681, '320804', '淮阴区', '320800');
INSERT INTO `city` VALUES (1682, '320811', '清浦区', '320800');
INSERT INTO `city` VALUES (1683, '320826', '涟水县', '320800');
INSERT INTO `city` VALUES (1684, '320829', '洪泽县', '320800');
INSERT INTO `city` VALUES (1685, '320830', '盱眙县', '320800');
INSERT INTO `city` VALUES (1686, '320831', '金湖县', '320800');
INSERT INTO `city` VALUES (1687, '320901', '市辖区', '320900');
INSERT INTO `city` VALUES (1688, '320902', '亭湖区', '320900');
INSERT INTO `city` VALUES (1689, '320903', '盐都区', '320900');
INSERT INTO `city` VALUES (1690, '320921', '响水县', '320900');
INSERT INTO `city` VALUES (1691, '320922', '滨海县', '320900');
INSERT INTO `city` VALUES (1692, '320923', '阜宁县', '320900');
INSERT INTO `city` VALUES (1693, '320924', '射阳县', '320900');
INSERT INTO `city` VALUES (1694, '320925', '建湖县', '320900');
INSERT INTO `city` VALUES (1695, '320981', '东台市', '320900');
INSERT INTO `city` VALUES (1696, '320982', '大丰市', '320900');
INSERT INTO `city` VALUES (1697, '321001', '市辖区', '321000');
INSERT INTO `city` VALUES (1698, '321002', '广陵区', '321000');
INSERT INTO `city` VALUES (1699, '321003', '邗江区', '321000');
INSERT INTO `city` VALUES (1700, '321011', '郊　区', '321000');
INSERT INTO `city` VALUES (1701, '321023', '宝应县', '321000');
INSERT INTO `city` VALUES (1702, '321081', '仪征市', '321000');
INSERT INTO `city` VALUES (1703, '321084', '高邮市', '321000');
INSERT INTO `city` VALUES (1704, '321088', '江都市', '321000');
INSERT INTO `city` VALUES (1705, '321101', '市辖区', '321100');
INSERT INTO `city` VALUES (1706, '321102', '京口区', '321100');
INSERT INTO `city` VALUES (1707, '321111', '润州区', '321100');
INSERT INTO `city` VALUES (1708, '321112', '丹徒区', '321100');
INSERT INTO `city` VALUES (1709, '321181', '丹阳市', '321100');
INSERT INTO `city` VALUES (1710, '321182', '扬中市', '321100');
INSERT INTO `city` VALUES (1711, '321183', '句容市', '321100');
INSERT INTO `city` VALUES (1712, '321201', '市辖区', '321200');
INSERT INTO `city` VALUES (1713, '321202', '海陵区', '321200');
INSERT INTO `city` VALUES (1714, '321203', '高港区', '321200');
INSERT INTO `city` VALUES (1715, '321281', '兴化市', '321200');
INSERT INTO `city` VALUES (1716, '321282', '靖江市', '321200');
INSERT INTO `city` VALUES (1717, '321283', '泰兴市', '321200');
INSERT INTO `city` VALUES (1718, '321284', '姜堰市', '321200');
INSERT INTO `city` VALUES (1719, '321301', '市辖区', '321300');
INSERT INTO `city` VALUES (1720, '321302', '宿城区', '321300');
INSERT INTO `city` VALUES (1721, '321311', '宿豫区', '321300');
INSERT INTO `city` VALUES (1722, '321322', '沭阳县', '321300');
INSERT INTO `city` VALUES (1723, '321323', '泗阳县', '321300');
INSERT INTO `city` VALUES (1724, '321324', '泗洪县', '321300');
INSERT INTO `city` VALUES (1725, '330101', '市辖区', '330100');
INSERT INTO `city` VALUES (1726, '330102', '上城区', '330100');
INSERT INTO `city` VALUES (1727, '330103', '下城区', '330100');
INSERT INTO `city` VALUES (1728, '330104', '江干区', '330100');
INSERT INTO `city` VALUES (1729, '330105', '拱墅区', '330100');
INSERT INTO `city` VALUES (1730, '330106', '西湖区', '330100');
INSERT INTO `city` VALUES (1731, '330108', '滨江区', '330100');
INSERT INTO `city` VALUES (1732, '330109', '萧山区', '330100');
INSERT INTO `city` VALUES (1733, '330110', '余杭区', '330100');
INSERT INTO `city` VALUES (1734, '330122', '桐庐县', '330100');
INSERT INTO `city` VALUES (1735, '330127', '淳安县', '330100');
INSERT INTO `city` VALUES (1736, '330182', '建德市', '330100');
INSERT INTO `city` VALUES (1737, '330183', '富阳市', '330100');
INSERT INTO `city` VALUES (1738, '330185', '临安市', '330100');
INSERT INTO `city` VALUES (1739, '330201', '市辖区', '330200');
INSERT INTO `city` VALUES (1740, '330203', '海曙区', '330200');
INSERT INTO `city` VALUES (1741, '330204', '江东区', '330200');
INSERT INTO `city` VALUES (1742, '330205', '江北区', '330200');
INSERT INTO `city` VALUES (1743, '330206', '北仑区', '330200');
INSERT INTO `city` VALUES (1744, '330211', '镇海区', '330200');
INSERT INTO `city` VALUES (1745, '330212', '鄞州区', '330200');
INSERT INTO `city` VALUES (1746, '330225', '象山县', '330200');
INSERT INTO `city` VALUES (1747, '330226', '宁海县', '330200');
INSERT INTO `city` VALUES (1748, '330281', '余姚市', '330200');
INSERT INTO `city` VALUES (1749, '330282', '慈溪市', '330200');
INSERT INTO `city` VALUES (1750, '330283', '奉化市', '330200');
INSERT INTO `city` VALUES (1751, '330301', '市辖区', '330300');
INSERT INTO `city` VALUES (1752, '330302', '鹿城区', '330300');
INSERT INTO `city` VALUES (1753, '330303', '龙湾区', '330300');
INSERT INTO `city` VALUES (1754, '330304', '瓯海区', '330300');
INSERT INTO `city` VALUES (1755, '330322', '洞头县', '330300');
INSERT INTO `city` VALUES (1756, '330324', '永嘉县', '330300');
INSERT INTO `city` VALUES (1757, '330326', '平阳县', '330300');
INSERT INTO `city` VALUES (1758, '330327', '苍南县', '330300');
INSERT INTO `city` VALUES (1759, '330328', '文成县', '330300');
INSERT INTO `city` VALUES (1760, '330329', '泰顺县', '330300');
INSERT INTO `city` VALUES (1761, '330381', '瑞安市', '330300');
INSERT INTO `city` VALUES (1762, '330382', '乐清市', '330300');
INSERT INTO `city` VALUES (1763, '330401', '市辖区', '330400');
INSERT INTO `city` VALUES (1764, '330402', '秀城区', '330400');
INSERT INTO `city` VALUES (1765, '330411', '秀洲区', '330400');
INSERT INTO `city` VALUES (1766, '330421', '嘉善县', '330400');
INSERT INTO `city` VALUES (1767, '330424', '海盐县', '330400');
INSERT INTO `city` VALUES (1768, '330481', '海宁市', '330400');
INSERT INTO `city` VALUES (1769, '330482', '平湖市', '330400');
INSERT INTO `city` VALUES (1770, '330483', '桐乡市', '330400');
INSERT INTO `city` VALUES (1771, '330501', '市辖区', '330500');
INSERT INTO `city` VALUES (1772, '330502', '吴兴区', '330500');
INSERT INTO `city` VALUES (1773, '330503', '南浔区', '330500');
INSERT INTO `city` VALUES (1774, '330521', '德清县', '330500');
INSERT INTO `city` VALUES (1775, '330522', '长兴县', '330500');
INSERT INTO `city` VALUES (1776, '330523', '安吉县', '330500');
INSERT INTO `city` VALUES (1777, '330601', '市辖区', '330600');
INSERT INTO `city` VALUES (1778, '330602', '越城区', '330600');
INSERT INTO `city` VALUES (1779, '330621', '绍兴县', '330600');
INSERT INTO `city` VALUES (1780, '330624', '新昌县', '330600');
INSERT INTO `city` VALUES (1781, '330681', '诸暨市', '330600');
INSERT INTO `city` VALUES (1782, '330682', '上虞市', '330600');
INSERT INTO `city` VALUES (1783, '330683', '嵊州市', '330600');
INSERT INTO `city` VALUES (1784, '330701', '市辖区', '330700');
INSERT INTO `city` VALUES (1785, '330702', '婺城区', '330700');
INSERT INTO `city` VALUES (1786, '330703', '金东区', '330700');
INSERT INTO `city` VALUES (1787, '330723', '武义县', '330700');
INSERT INTO `city` VALUES (1788, '330726', '浦江县', '330700');
INSERT INTO `city` VALUES (1789, '330727', '磐安县', '330700');
INSERT INTO `city` VALUES (1790, '330781', '兰溪市', '330700');
INSERT INTO `city` VALUES (1791, '330782', '义乌市', '330700');
INSERT INTO `city` VALUES (1792, '330783', '东阳市', '330700');
INSERT INTO `city` VALUES (1793, '330784', '永康市', '330700');
INSERT INTO `city` VALUES (1794, '330801', '市辖区', '330800');
INSERT INTO `city` VALUES (1795, '330802', '柯城区', '330800');
INSERT INTO `city` VALUES (1796, '330803', '衢江区', '330800');
INSERT INTO `city` VALUES (1797, '330822', '常山县', '330800');
INSERT INTO `city` VALUES (1798, '330824', '开化县', '330800');
INSERT INTO `city` VALUES (1799, '330825', '龙游县', '330800');
INSERT INTO `city` VALUES (1800, '330881', '江山市', '330800');
INSERT INTO `city` VALUES (1801, '330901', '市辖区', '330900');
INSERT INTO `city` VALUES (1802, '330902', '定海区', '330900');
INSERT INTO `city` VALUES (1803, '330903', '普陀区', '330900');
INSERT INTO `city` VALUES (1804, '330921', '岱山县', '330900');
INSERT INTO `city` VALUES (1805, '330922', '嵊泗县', '330900');
INSERT INTO `city` VALUES (1806, '331001', '市辖区', '331000');
INSERT INTO `city` VALUES (1807, '331002', '椒江区', '331000');
INSERT INTO `city` VALUES (1808, '331003', '黄岩区', '331000');
INSERT INTO `city` VALUES (1809, '331004', '路桥区', '331000');
INSERT INTO `city` VALUES (1810, '331021', '玉环县', '331000');
INSERT INTO `city` VALUES (1811, '331022', '三门县', '331000');
INSERT INTO `city` VALUES (1812, '331023', '天台县', '331000');
INSERT INTO `city` VALUES (1813, '331024', '仙居县', '331000');
INSERT INTO `city` VALUES (1814, '331081', '温岭市', '331000');
INSERT INTO `city` VALUES (1815, '331082', '临海市', '331000');
INSERT INTO `city` VALUES (1816, '331101', '市辖区', '331100');
INSERT INTO `city` VALUES (1817, '331102', '莲都区', '331100');
INSERT INTO `city` VALUES (1818, '331121', '青田县', '331100');
INSERT INTO `city` VALUES (1819, '331122', '缙云县', '331100');
INSERT INTO `city` VALUES (1820, '331123', '遂昌县', '331100');
INSERT INTO `city` VALUES (1821, '331124', '松阳县', '331100');
INSERT INTO `city` VALUES (1822, '331125', '云和县', '331100');
INSERT INTO `city` VALUES (1823, '331126', '庆元县', '331100');
INSERT INTO `city` VALUES (1824, '331127', '景宁畲族自治县', '331100');
INSERT INTO `city` VALUES (1825, '331181', '龙泉市', '331100');
INSERT INTO `city` VALUES (1826, '340101', '市辖区', '340100');
INSERT INTO `city` VALUES (1827, '340102', '瑶海区', '340100');
INSERT INTO `city` VALUES (1828, '340103', '庐阳区', '340100');
INSERT INTO `city` VALUES (1829, '340104', '蜀山区', '340100');
INSERT INTO `city` VALUES (1830, '340111', '包河区', '340100');
INSERT INTO `city` VALUES (1831, '340121', '长丰县', '340100');
INSERT INTO `city` VALUES (1832, '340122', '肥东县', '340100');
INSERT INTO `city` VALUES (1833, '340123', '肥西县', '340100');
INSERT INTO `city` VALUES (1834, '340201', '市辖区', '340200');
INSERT INTO `city` VALUES (1835, '340202', '镜湖区', '340200');
INSERT INTO `city` VALUES (1836, '340203', '马塘区', '340200');
INSERT INTO `city` VALUES (1837, '340204', '新芜区', '340200');
INSERT INTO `city` VALUES (1838, '340207', '鸠江区', '340200');
INSERT INTO `city` VALUES (1839, '340221', '芜湖县', '340200');
INSERT INTO `city` VALUES (1840, '340222', '繁昌县', '340200');
INSERT INTO `city` VALUES (1841, '340223', '南陵县', '340200');
INSERT INTO `city` VALUES (1842, '340301', '市辖区', '340300');
INSERT INTO `city` VALUES (1843, '340302', '龙子湖区', '340300');
INSERT INTO `city` VALUES (1844, '340303', '蚌山区', '340300');
INSERT INTO `city` VALUES (1845, '340304', '禹会区', '340300');
INSERT INTO `city` VALUES (1846, '340311', '淮上区', '340300');
INSERT INTO `city` VALUES (1847, '340321', '怀远县', '340300');
INSERT INTO `city` VALUES (1848, '340322', '五河县', '340300');
INSERT INTO `city` VALUES (1849, '340323', '固镇县', '340300');
INSERT INTO `city` VALUES (1850, '340401', '市辖区', '340400');
INSERT INTO `city` VALUES (1851, '340402', '大通区', '340400');
INSERT INTO `city` VALUES (1852, '340403', '田家庵区', '340400');
INSERT INTO `city` VALUES (1853, '340404', '谢家集区', '340400');
INSERT INTO `city` VALUES (1854, '340405', '八公山区', '340400');
INSERT INTO `city` VALUES (1855, '340406', '潘集区', '340400');
INSERT INTO `city` VALUES (1856, '340421', '凤台县', '340400');
INSERT INTO `city` VALUES (1857, '340501', '市辖区', '340500');
INSERT INTO `city` VALUES (1858, '340502', '金家庄区', '340500');
INSERT INTO `city` VALUES (1859, '340503', '花山区', '340500');
INSERT INTO `city` VALUES (1860, '340504', '雨山区', '340500');
INSERT INTO `city` VALUES (1861, '340521', '当涂县', '340500');
INSERT INTO `city` VALUES (1862, '340601', '市辖区', '340600');
INSERT INTO `city` VALUES (1863, '340602', '杜集区', '340600');
INSERT INTO `city` VALUES (1864, '340603', '相山区', '340600');
INSERT INTO `city` VALUES (1865, '340604', '烈山区', '340600');
INSERT INTO `city` VALUES (1866, '340621', '濉溪县', '340600');
INSERT INTO `city` VALUES (1867, '340701', '市辖区', '340700');
INSERT INTO `city` VALUES (1868, '340702', '铜官山区', '340700');
INSERT INTO `city` VALUES (1869, '340703', '狮子山区', '340700');
INSERT INTO `city` VALUES (1870, '340711', '郊　区', '340700');
INSERT INTO `city` VALUES (1871, '340721', '铜陵县', '340700');
INSERT INTO `city` VALUES (1872, '340801', '市辖区', '340800');
INSERT INTO `city` VALUES (1873, '340802', '迎江区', '340800');
INSERT INTO `city` VALUES (1874, '340803', '大观区', '340800');
INSERT INTO `city` VALUES (1875, '340811', '郊　区', '340800');
INSERT INTO `city` VALUES (1876, '340822', '怀宁县', '340800');
INSERT INTO `city` VALUES (1877, '340823', '枞阳县', '340800');
INSERT INTO `city` VALUES (1878, '340824', '潜山县', '340800');
INSERT INTO `city` VALUES (1879, '340825', '太湖县', '340800');
INSERT INTO `city` VALUES (1880, '340826', '宿松县', '340800');
INSERT INTO `city` VALUES (1881, '340827', '望江县', '340800');
INSERT INTO `city` VALUES (1882, '340828', '岳西县', '340800');
INSERT INTO `city` VALUES (1883, '340881', '桐城市', '340800');
INSERT INTO `city` VALUES (1884, '341001', '市辖区', '341000');
INSERT INTO `city` VALUES (1885, '341002', '屯溪区', '341000');
INSERT INTO `city` VALUES (1886, '341003', '黄山区', '341000');
INSERT INTO `city` VALUES (1887, '341004', '徽州区', '341000');
INSERT INTO `city` VALUES (1888, '341021', '歙　县', '341000');
INSERT INTO `city` VALUES (1889, '341022', '休宁县', '341000');
INSERT INTO `city` VALUES (1890, '341023', '黟　县', '341000');
INSERT INTO `city` VALUES (1891, '341024', '祁门县', '341000');
INSERT INTO `city` VALUES (1892, '341101', '市辖区', '341100');
INSERT INTO `city` VALUES (1893, '341102', '琅琊区', '341100');
INSERT INTO `city` VALUES (1894, '341103', '南谯区', '341100');
INSERT INTO `city` VALUES (1895, '341122', '来安县', '341100');
INSERT INTO `city` VALUES (1896, '341124', '全椒县', '341100');
INSERT INTO `city` VALUES (1897, '341125', '定远县', '341100');
INSERT INTO `city` VALUES (1898, '341126', '凤阳县', '341100');
INSERT INTO `city` VALUES (1899, '341181', '天长市', '341100');
INSERT INTO `city` VALUES (1900, '341182', '明光市', '341100');
INSERT INTO `city` VALUES (1901, '341201', '市辖区', '341200');
INSERT INTO `city` VALUES (1902, '341202', '颍州区', '341200');
INSERT INTO `city` VALUES (1903, '341203', '颍东区', '341200');
INSERT INTO `city` VALUES (1904, '341204', '颍泉区', '341200');
INSERT INTO `city` VALUES (1905, '341221', '临泉县', '341200');
INSERT INTO `city` VALUES (1906, '341222', '太和县', '341200');
INSERT INTO `city` VALUES (1907, '341225', '阜南县', '341200');
INSERT INTO `city` VALUES (1908, '341226', '颍上县', '341200');
INSERT INTO `city` VALUES (1909, '341282', '界首市', '341200');
INSERT INTO `city` VALUES (1910, '341301', '市辖区', '341300');
INSERT INTO `city` VALUES (1911, '341302', '墉桥区', '341300');
INSERT INTO `city` VALUES (1912, '341321', '砀山县', '341300');
INSERT INTO `city` VALUES (1913, '341322', '萧　县', '341300');
INSERT INTO `city` VALUES (1914, '341323', '灵璧县', '341300');
INSERT INTO `city` VALUES (1915, '341324', '泗　县', '341300');
INSERT INTO `city` VALUES (1916, '341401', '市辖区', '341400');
INSERT INTO `city` VALUES (1917, '341402', '居巢区', '341400');
INSERT INTO `city` VALUES (1918, '341421', '庐江县', '341400');
INSERT INTO `city` VALUES (1919, '341422', '无为县', '341400');
INSERT INTO `city` VALUES (1920, '341423', '含山县', '341400');
INSERT INTO `city` VALUES (1921, '341424', '和　县', '341400');
INSERT INTO `city` VALUES (1922, '341501', '市辖区', '341500');
INSERT INTO `city` VALUES (1923, '341502', '金安区', '341500');
INSERT INTO `city` VALUES (1924, '341503', '裕安区', '341500');
INSERT INTO `city` VALUES (1925, '341521', '寿　县', '341500');
INSERT INTO `city` VALUES (1926, '341522', '霍邱县', '341500');
INSERT INTO `city` VALUES (1927, '341523', '舒城县', '341500');
INSERT INTO `city` VALUES (1928, '341524', '金寨县', '341500');
INSERT INTO `city` VALUES (1929, '341525', '霍山县', '341500');
INSERT INTO `city` VALUES (1930, '341601', '市辖区', '341600');
INSERT INTO `city` VALUES (1931, '341602', '谯城区', '341600');
INSERT INTO `city` VALUES (1932, '341621', '涡阳县', '341600');
INSERT INTO `city` VALUES (1933, '341622', '蒙城县', '341600');
INSERT INTO `city` VALUES (1934, '341623', '利辛县', '341600');
INSERT INTO `city` VALUES (1935, '341701', '市辖区', '341700');
INSERT INTO `city` VALUES (1936, '341702', '贵池区', '341700');
INSERT INTO `city` VALUES (1937, '341721', '东至县', '341700');
INSERT INTO `city` VALUES (1938, '341722', '石台县', '341700');
INSERT INTO `city` VALUES (1939, '341723', '青阳县', '341700');
INSERT INTO `city` VALUES (1940, '341801', '市辖区', '341800');
INSERT INTO `city` VALUES (1941, '341802', '宣州区', '341800');
INSERT INTO `city` VALUES (1942, '341821', '郎溪县', '341800');
INSERT INTO `city` VALUES (1943, '341822', '广德县', '341800');
INSERT INTO `city` VALUES (1944, '341823', '泾　县', '341800');
INSERT INTO `city` VALUES (1945, '341824', '绩溪县', '341800');
INSERT INTO `city` VALUES (1946, '341825', '旌德县', '341800');
INSERT INTO `city` VALUES (1947, '341881', '宁国市', '341800');
INSERT INTO `city` VALUES (1948, '350101', '市辖区', '350100');
INSERT INTO `city` VALUES (1949, '350102', '鼓楼区', '350100');
INSERT INTO `city` VALUES (1950, '350103', '台江区', '350100');
INSERT INTO `city` VALUES (1951, '350104', '仓山区', '350100');
INSERT INTO `city` VALUES (1952, '350105', '马尾区', '350100');
INSERT INTO `city` VALUES (1953, '350111', '晋安区', '350100');
INSERT INTO `city` VALUES (1954, '350121', '闽侯县', '350100');
INSERT INTO `city` VALUES (1955, '350122', '连江县', '350100');
INSERT INTO `city` VALUES (1956, '350123', '罗源县', '350100');
INSERT INTO `city` VALUES (1957, '350124', '闽清县', '350100');
INSERT INTO `city` VALUES (1958, '350125', '永泰县', '350100');
INSERT INTO `city` VALUES (1959, '350128', '平潭县', '350100');
INSERT INTO `city` VALUES (1960, '350181', '福清市', '350100');
INSERT INTO `city` VALUES (1961, '350182', '长乐市', '350100');
INSERT INTO `city` VALUES (1962, '350201', '市辖区', '350200');
INSERT INTO `city` VALUES (1963, '350203', '思明区', '350200');
INSERT INTO `city` VALUES (1964, '350205', '海沧区', '350200');
INSERT INTO `city` VALUES (1965, '350206', '湖里区', '350200');
INSERT INTO `city` VALUES (1966, '350211', '集美区', '350200');
INSERT INTO `city` VALUES (1967, '350212', '同安区', '350200');
INSERT INTO `city` VALUES (1968, '350213', '翔安区', '350200');
INSERT INTO `city` VALUES (1969, '350301', '市辖区', '350300');
INSERT INTO `city` VALUES (1970, '350302', '城厢区', '350300');
INSERT INTO `city` VALUES (1971, '350303', '涵江区', '350300');
INSERT INTO `city` VALUES (1972, '350304', '荔城区', '350300');
INSERT INTO `city` VALUES (1973, '350305', '秀屿区', '350300');
INSERT INTO `city` VALUES (1974, '350322', '仙游县', '350300');
INSERT INTO `city` VALUES (1975, '350401', '市辖区', '350400');
INSERT INTO `city` VALUES (1976, '350402', '梅列区', '350400');
INSERT INTO `city` VALUES (1977, '350403', '三元区', '350400');
INSERT INTO `city` VALUES (1978, '350421', '明溪县', '350400');
INSERT INTO `city` VALUES (1979, '350423', '清流县', '350400');
INSERT INTO `city` VALUES (1980, '350424', '宁化县', '350400');
INSERT INTO `city` VALUES (1981, '350425', '大田县', '350400');
INSERT INTO `city` VALUES (1982, '350426', '尤溪县', '350400');
INSERT INTO `city` VALUES (1983, '350427', '沙　县', '350400');
INSERT INTO `city` VALUES (1984, '350428', '将乐县', '350400');
INSERT INTO `city` VALUES (1985, '350429', '泰宁县', '350400');
INSERT INTO `city` VALUES (1986, '350430', '建宁县', '350400');
INSERT INTO `city` VALUES (1987, '350481', '永安市', '350400');
INSERT INTO `city` VALUES (1988, '350501', '市辖区', '350500');
INSERT INTO `city` VALUES (1989, '350502', '鲤城区', '350500');
INSERT INTO `city` VALUES (1990, '350503', '丰泽区', '350500');
INSERT INTO `city` VALUES (1991, '350504', '洛江区', '350500');
INSERT INTO `city` VALUES (1992, '350505', '泉港区', '350500');
INSERT INTO `city` VALUES (1993, '350521', '惠安县', '350500');
INSERT INTO `city` VALUES (1994, '350524', '安溪县', '350500');
INSERT INTO `city` VALUES (1995, '350525', '永春县', '350500');
INSERT INTO `city` VALUES (1996, '350526', '德化县', '350500');
INSERT INTO `city` VALUES (1997, '350527', '金门县', '350500');
INSERT INTO `city` VALUES (1998, '350581', '石狮市', '350500');
INSERT INTO `city` VALUES (1999, '350582', '晋江市', '350500');
INSERT INTO `city` VALUES (2000, '350583', '南安市', '350500');
INSERT INTO `city` VALUES (2001, '350601', '市辖区', '350600');
INSERT INTO `city` VALUES (2002, '350602', '芗城区', '350600');
INSERT INTO `city` VALUES (2003, '350603', '龙文区', '350600');
INSERT INTO `city` VALUES (2004, '350622', '云霄县', '350600');
INSERT INTO `city` VALUES (2005, '350623', '漳浦县', '350600');
INSERT INTO `city` VALUES (2006, '350624', '诏安县', '350600');
INSERT INTO `city` VALUES (2007, '350625', '长泰县', '350600');
INSERT INTO `city` VALUES (2008, '350626', '东山县', '350600');
INSERT INTO `city` VALUES (2009, '350627', '南靖县', '350600');
INSERT INTO `city` VALUES (2010, '350628', '平和县', '350600');
INSERT INTO `city` VALUES (2011, '350629', '华安县', '350600');
INSERT INTO `city` VALUES (2012, '350681', '龙海市', '350600');
INSERT INTO `city` VALUES (2013, '350701', '市辖区', '350700');
INSERT INTO `city` VALUES (2014, '350702', '延平区', '350700');
INSERT INTO `city` VALUES (2015, '350721', '顺昌县', '350700');
INSERT INTO `city` VALUES (2016, '350722', '浦城县', '350700');
INSERT INTO `city` VALUES (2017, '350723', '光泽县', '350700');
INSERT INTO `city` VALUES (2018, '350724', '松溪县', '350700');
INSERT INTO `city` VALUES (2019, '350725', '政和县', '350700');
INSERT INTO `city` VALUES (2020, '350781', '邵武市', '350700');
INSERT INTO `city` VALUES (2021, '350782', '武夷山市', '350700');
INSERT INTO `city` VALUES (2022, '350783', '建瓯市', '350700');
INSERT INTO `city` VALUES (2023, '350784', '建阳市', '350700');
INSERT INTO `city` VALUES (2024, '350801', '市辖区', '350800');
INSERT INTO `city` VALUES (2025, '350802', '新罗区', '350800');
INSERT INTO `city` VALUES (2026, '350821', '长汀县', '350800');
INSERT INTO `city` VALUES (2027, '350822', '永定县', '350800');
INSERT INTO `city` VALUES (2028, '350823', '上杭县', '350800');
INSERT INTO `city` VALUES (2029, '350824', '武平县', '350800');
INSERT INTO `city` VALUES (2030, '350825', '连城县', '350800');
INSERT INTO `city` VALUES (2031, '350881', '漳平市', '350800');
INSERT INTO `city` VALUES (2032, '350901', '市辖区', '350900');
INSERT INTO `city` VALUES (2033, '350902', '蕉城区', '350900');
INSERT INTO `city` VALUES (2034, '350921', '霞浦县', '350900');
INSERT INTO `city` VALUES (2035, '350922', '古田县', '350900');
INSERT INTO `city` VALUES (2036, '350923', '屏南县', '350900');
INSERT INTO `city` VALUES (2037, '350924', '寿宁县', '350900');
INSERT INTO `city` VALUES (2038, '350925', '周宁县', '350900');
INSERT INTO `city` VALUES (2039, '350926', '柘荣县', '350900');
INSERT INTO `city` VALUES (2040, '350981', '福安市', '350900');
INSERT INTO `city` VALUES (2041, '350982', '福鼎市', '350900');
INSERT INTO `city` VALUES (2042, '360101', '市辖区', '360100');
INSERT INTO `city` VALUES (2043, '360102', '东湖区', '360100');
INSERT INTO `city` VALUES (2044, '360103', '西湖区', '360100');
INSERT INTO `city` VALUES (2045, '360104', '青云谱区', '360100');
INSERT INTO `city` VALUES (2046, '360105', '湾里区', '360100');
INSERT INTO `city` VALUES (2047, '360111', '青山湖区', '360100');
INSERT INTO `city` VALUES (2048, '360121', '南昌县', '360100');
INSERT INTO `city` VALUES (2049, '360122', '新建县', '360100');
INSERT INTO `city` VALUES (2050, '360123', '安义县', '360100');
INSERT INTO `city` VALUES (2051, '360124', '进贤县', '360100');
INSERT INTO `city` VALUES (2052, '360201', '市辖区', '360200');
INSERT INTO `city` VALUES (2053, '360202', '昌江区', '360200');
INSERT INTO `city` VALUES (2054, '360203', '珠山区', '360200');
INSERT INTO `city` VALUES (2055, '360222', '浮梁县', '360200');
INSERT INTO `city` VALUES (2056, '360281', '乐平市', '360200');
INSERT INTO `city` VALUES (2057, '360301', '市辖区', '360300');
INSERT INTO `city` VALUES (2058, '360302', '安源区', '360300');
INSERT INTO `city` VALUES (2059, '360313', '湘东区', '360300');
INSERT INTO `city` VALUES (2060, '360321', '莲花县', '360300');
INSERT INTO `city` VALUES (2061, '360322', '上栗县', '360300');
INSERT INTO `city` VALUES (2062, '360323', '芦溪县', '360300');
INSERT INTO `city` VALUES (2063, '360401', '市辖区', '360400');
INSERT INTO `city` VALUES (2064, '360402', '庐山区', '360400');
INSERT INTO `city` VALUES (2065, '360403', '浔阳区', '360400');
INSERT INTO `city` VALUES (2066, '360421', '九江县', '360400');
INSERT INTO `city` VALUES (2067, '360423', '武宁县', '360400');
INSERT INTO `city` VALUES (2068, '360424', '修水县', '360400');
INSERT INTO `city` VALUES (2069, '360425', '永修县', '360400');
INSERT INTO `city` VALUES (2070, '360426', '德安县', '360400');
INSERT INTO `city` VALUES (2071, '360427', '星子县', '360400');
INSERT INTO `city` VALUES (2072, '360428', '都昌县', '360400');
INSERT INTO `city` VALUES (2073, '360429', '湖口县', '360400');
INSERT INTO `city` VALUES (2074, '360430', '彭泽县', '360400');
INSERT INTO `city` VALUES (2075, '360481', '瑞昌市', '360400');
INSERT INTO `city` VALUES (2076, '360501', '市辖区', '360500');
INSERT INTO `city` VALUES (2077, '360502', '渝水区', '360500');
INSERT INTO `city` VALUES (2078, '360521', '分宜县', '360500');
INSERT INTO `city` VALUES (2079, '360601', '市辖区', '360600');
INSERT INTO `city` VALUES (2080, '360602', '月湖区', '360600');
INSERT INTO `city` VALUES (2081, '360622', '余江县', '360600');
INSERT INTO `city` VALUES (2082, '360681', '贵溪市', '360600');
INSERT INTO `city` VALUES (2083, '360701', '市辖区', '360700');
INSERT INTO `city` VALUES (2084, '360702', '章贡区', '360700');
INSERT INTO `city` VALUES (2085, '360721', '赣　县', '360700');
INSERT INTO `city` VALUES (2086, '360722', '信丰县', '360700');
INSERT INTO `city` VALUES (2087, '360723', '大余县', '360700');
INSERT INTO `city` VALUES (2088, '360724', '上犹县', '360700');
INSERT INTO `city` VALUES (2089, '360725', '崇义县', '360700');
INSERT INTO `city` VALUES (2090, '360726', '安远县', '360700');
INSERT INTO `city` VALUES (2091, '360727', '龙南县', '360700');
INSERT INTO `city` VALUES (2092, '360728', '定南县', '360700');
INSERT INTO `city` VALUES (2093, '360729', '全南县', '360700');
INSERT INTO `city` VALUES (2094, '360730', '宁都县', '360700');
INSERT INTO `city` VALUES (2095, '360731', '于都县', '360700');
INSERT INTO `city` VALUES (2096, '360732', '兴国县', '360700');
INSERT INTO `city` VALUES (2097, '360733', '会昌县', '360700');
INSERT INTO `city` VALUES (2098, '360734', '寻乌县', '360700');
INSERT INTO `city` VALUES (2099, '360735', '石城县', '360700');
INSERT INTO `city` VALUES (2100, '360781', '瑞金市', '360700');
INSERT INTO `city` VALUES (2101, '360782', '南康市', '360700');
INSERT INTO `city` VALUES (2102, '360801', '市辖区', '360800');
INSERT INTO `city` VALUES (2103, '360802', '吉州区', '360800');
INSERT INTO `city` VALUES (2104, '360803', '青原区', '360800');
INSERT INTO `city` VALUES (2105, '360821', '吉安县', '360800');
INSERT INTO `city` VALUES (2106, '360822', '吉水县', '360800');
INSERT INTO `city` VALUES (2107, '360823', '峡江县', '360800');
INSERT INTO `city` VALUES (2108, '360824', '新干县', '360800');
INSERT INTO `city` VALUES (2109, '360825', '永丰县', '360800');
INSERT INTO `city` VALUES (2110, '360826', '泰和县', '360800');
INSERT INTO `city` VALUES (2111, '360827', '遂川县', '360800');
INSERT INTO `city` VALUES (2112, '360828', '万安县', '360800');
INSERT INTO `city` VALUES (2113, '360829', '安福县', '360800');
INSERT INTO `city` VALUES (2114, '360830', '永新县', '360800');
INSERT INTO `city` VALUES (2115, '360881', '井冈山市', '360800');
INSERT INTO `city` VALUES (2116, '360901', '市辖区', '360900');
INSERT INTO `city` VALUES (2117, '360902', '袁州区', '360900');
INSERT INTO `city` VALUES (2118, '360921', '奉新县', '360900');
INSERT INTO `city` VALUES (2119, '360922', '万载县', '360900');
INSERT INTO `city` VALUES (2120, '360923', '上高县', '360900');
INSERT INTO `city` VALUES (2121, '360924', '宜丰县', '360900');
INSERT INTO `city` VALUES (2122, '360925', '靖安县', '360900');
INSERT INTO `city` VALUES (2123, '360926', '铜鼓县', '360900');
INSERT INTO `city` VALUES (2124, '360981', '丰城市', '360900');
INSERT INTO `city` VALUES (2125, '360982', '樟树市', '360900');
INSERT INTO `city` VALUES (2126, '360983', '高安市', '360900');
INSERT INTO `city` VALUES (2127, '361001', '市辖区', '361000');
INSERT INTO `city` VALUES (2128, '361002', '临川区', '361000');
INSERT INTO `city` VALUES (2129, '361021', '南城县', '361000');
INSERT INTO `city` VALUES (2130, '361022', '黎川县', '361000');
INSERT INTO `city` VALUES (2131, '361023', '南丰县', '361000');
INSERT INTO `city` VALUES (2132, '361024', '崇仁县', '361000');
INSERT INTO `city` VALUES (2133, '361025', '乐安县', '361000');
INSERT INTO `city` VALUES (2134, '361026', '宜黄县', '361000');
INSERT INTO `city` VALUES (2135, '361027', '金溪县', '361000');
INSERT INTO `city` VALUES (2136, '361028', '资溪县', '361000');
INSERT INTO `city` VALUES (2137, '361029', '东乡县', '361000');
INSERT INTO `city` VALUES (2138, '361030', '广昌县', '361000');
INSERT INTO `city` VALUES (2139, '361101', '市辖区', '361100');
INSERT INTO `city` VALUES (2140, '361102', '信州区', '361100');
INSERT INTO `city` VALUES (2141, '361121', '上饶县', '361100');
INSERT INTO `city` VALUES (2142, '361122', '广丰县', '361100');
INSERT INTO `city` VALUES (2143, '361123', '玉山县', '361100');
INSERT INTO `city` VALUES (2144, '361124', '铅山县', '361100');
INSERT INTO `city` VALUES (2145, '361125', '横峰县', '361100');
INSERT INTO `city` VALUES (2146, '361126', '弋阳县', '361100');
INSERT INTO `city` VALUES (2147, '361127', '余干县', '361100');
INSERT INTO `city` VALUES (2148, '361128', '鄱阳县', '361100');
INSERT INTO `city` VALUES (2149, '361129', '万年县', '361100');
INSERT INTO `city` VALUES (2150, '361130', '婺源县', '361100');
INSERT INTO `city` VALUES (2151, '361181', '德兴市', '361100');
INSERT INTO `city` VALUES (2152, '370101', '市辖区', '370100');
INSERT INTO `city` VALUES (2153, '370102', '历下区', '370100');
INSERT INTO `city` VALUES (2154, '370103', '市中区', '370100');
INSERT INTO `city` VALUES (2155, '370104', '槐荫区', '370100');
INSERT INTO `city` VALUES (2156, '370105', '天桥区', '370100');
INSERT INTO `city` VALUES (2157, '370112', '历城区', '370100');
INSERT INTO `city` VALUES (2158, '370113', '长清区', '370100');
INSERT INTO `city` VALUES (2159, '370124', '平阴县', '370100');
INSERT INTO `city` VALUES (2160, '370125', '济阳县', '370100');
INSERT INTO `city` VALUES (2161, '370126', '商河县', '370100');
INSERT INTO `city` VALUES (2162, '370181', '章丘市', '370100');
INSERT INTO `city` VALUES (2163, '370201', '市辖区', '370200');
INSERT INTO `city` VALUES (2164, '370202', '市南区', '370200');
INSERT INTO `city` VALUES (2165, '370203', '市北区', '370200');
INSERT INTO `city` VALUES (2166, '370205', '四方区', '370200');
INSERT INTO `city` VALUES (2167, '370211', '黄岛区', '370200');
INSERT INTO `city` VALUES (2168, '370212', '崂山区', '370200');
INSERT INTO `city` VALUES (2169, '370213', '李沧区', '370200');
INSERT INTO `city` VALUES (2170, '370214', '城阳区', '370200');
INSERT INTO `city` VALUES (2171, '370281', '胶州市', '370200');
INSERT INTO `city` VALUES (2172, '370282', '即墨市', '370200');
INSERT INTO `city` VALUES (2173, '370283', '平度市', '370200');
INSERT INTO `city` VALUES (2174, '370284', '胶南市', '370200');
INSERT INTO `city` VALUES (2175, '370285', '莱西市', '370200');
INSERT INTO `city` VALUES (2176, '370301', '市辖区', '370300');
INSERT INTO `city` VALUES (2177, '370302', '淄川区', '370300');
INSERT INTO `city` VALUES (2178, '370303', '张店区', '370300');
INSERT INTO `city` VALUES (2179, '370304', '博山区', '370300');
INSERT INTO `city` VALUES (2180, '370305', '临淄区', '370300');
INSERT INTO `city` VALUES (2181, '370306', '周村区', '370300');
INSERT INTO `city` VALUES (2182, '370321', '桓台县', '370300');
INSERT INTO `city` VALUES (2183, '370322', '高青县', '370300');
INSERT INTO `city` VALUES (2184, '370323', '沂源县', '370300');
INSERT INTO `city` VALUES (2185, '370401', '市辖区', '370400');
INSERT INTO `city` VALUES (2186, '370402', '市中区', '370400');
INSERT INTO `city` VALUES (2187, '370403', '薛城区', '370400');
INSERT INTO `city` VALUES (2188, '370404', '峄城区', '370400');
INSERT INTO `city` VALUES (2189, '370405', '台儿庄区', '370400');
INSERT INTO `city` VALUES (2190, '370406', '山亭区', '370400');
INSERT INTO `city` VALUES (2191, '370481', '滕州市', '370400');
INSERT INTO `city` VALUES (2192, '370501', '市辖区', '370500');
INSERT INTO `city` VALUES (2193, '370502', '东营区', '370500');
INSERT INTO `city` VALUES (2194, '370503', '河口区', '370500');
INSERT INTO `city` VALUES (2195, '370521', '垦利县', '370500');
INSERT INTO `city` VALUES (2196, '370522', '利津县', '370500');
INSERT INTO `city` VALUES (2197, '370523', '广饶县', '370500');
INSERT INTO `city` VALUES (2198, '370601', '市辖区', '370600');
INSERT INTO `city` VALUES (2199, '370602', '芝罘区', '370600');
INSERT INTO `city` VALUES (2200, '370611', '福山区', '370600');
INSERT INTO `city` VALUES (2201, '370612', '牟平区', '370600');
INSERT INTO `city` VALUES (2202, '370613', '莱山区', '370600');
INSERT INTO `city` VALUES (2203, '370634', '长岛县', '370600');
INSERT INTO `city` VALUES (2204, '370681', '龙口市', '370600');
INSERT INTO `city` VALUES (2205, '370682', '莱阳市', '370600');
INSERT INTO `city` VALUES (2206, '370683', '莱州市', '370600');
INSERT INTO `city` VALUES (2207, '370684', '蓬莱市', '370600');
INSERT INTO `city` VALUES (2208, '370685', '招远市', '370600');
INSERT INTO `city` VALUES (2209, '370686', '栖霞市', '370600');
INSERT INTO `city` VALUES (2210, '370687', '海阳市', '370600');
INSERT INTO `city` VALUES (2211, '370701', '市辖区', '370700');
INSERT INTO `city` VALUES (2212, '370702', '潍城区', '370700');
INSERT INTO `city` VALUES (2213, '370703', '寒亭区', '370700');
INSERT INTO `city` VALUES (2214, '370704', '坊子区', '370700');
INSERT INTO `city` VALUES (2215, '370705', '奎文区', '370700');
INSERT INTO `city` VALUES (2216, '370724', '临朐县', '370700');
INSERT INTO `city` VALUES (2217, '370725', '昌乐县', '370700');
INSERT INTO `city` VALUES (2218, '370781', '青州市', '370700');
INSERT INTO `city` VALUES (2219, '370782', '诸城市', '370700');
INSERT INTO `city` VALUES (2220, '370783', '寿光市', '370700');
INSERT INTO `city` VALUES (2221, '370784', '安丘市', '370700');
INSERT INTO `city` VALUES (2222, '370785', '高密市', '370700');
INSERT INTO `city` VALUES (2223, '370786', '昌邑市', '370700');
INSERT INTO `city` VALUES (2224, '370801', '市辖区', '370800');
INSERT INTO `city` VALUES (2225, '370802', '市中区', '370800');
INSERT INTO `city` VALUES (2226, '370811', '任城区', '370800');
INSERT INTO `city` VALUES (2227, '370826', '微山县', '370800');
INSERT INTO `city` VALUES (2228, '370827', '鱼台县', '370800');
INSERT INTO `city` VALUES (2229, '370828', '金乡县', '370800');
INSERT INTO `city` VALUES (2230, '370829', '嘉祥县', '370800');
INSERT INTO `city` VALUES (2231, '370830', '汶上县', '370800');
INSERT INTO `city` VALUES (2232, '370831', '泗水县', '370800');
INSERT INTO `city` VALUES (2233, '370832', '梁山县', '370800');
INSERT INTO `city` VALUES (2234, '370881', '曲阜市', '370800');
INSERT INTO `city` VALUES (2235, '370882', '兖州市', '370800');
INSERT INTO `city` VALUES (2236, '370883', '邹城市', '370800');
INSERT INTO `city` VALUES (2237, '370901', '市辖区', '370900');
INSERT INTO `city` VALUES (2238, '370902', '泰山区', '370900');
INSERT INTO `city` VALUES (2239, '370903', '岱岳区', '370900');
INSERT INTO `city` VALUES (2240, '370921', '宁阳县', '370900');
INSERT INTO `city` VALUES (2241, '370923', '东平县', '370900');
INSERT INTO `city` VALUES (2242, '370982', '新泰市', '370900');
INSERT INTO `city` VALUES (2243, '370983', '肥城市', '370900');
INSERT INTO `city` VALUES (2244, '371001', '市辖区', '371000');
INSERT INTO `city` VALUES (2245, '371002', '环翠区', '371000');
INSERT INTO `city` VALUES (2246, '371081', '文登市', '371000');
INSERT INTO `city` VALUES (2247, '371082', '荣成市', '371000');
INSERT INTO `city` VALUES (2248, '371083', '乳山市', '371000');
INSERT INTO `city` VALUES (2249, '371101', '市辖区', '371100');
INSERT INTO `city` VALUES (2250, '371102', '东港区', '371100');
INSERT INTO `city` VALUES (2251, '371103', '岚山区', '371100');
INSERT INTO `city` VALUES (2252, '371121', '五莲县', '371100');
INSERT INTO `city` VALUES (2253, '371122', '莒　县', '371100');
INSERT INTO `city` VALUES (2254, '371201', '市辖区', '371200');
INSERT INTO `city` VALUES (2255, '371202', '莱城区', '371200');
INSERT INTO `city` VALUES (2256, '371203', '钢城区', '371200');
INSERT INTO `city` VALUES (2257, '371301', '市辖区', '371300');
INSERT INTO `city` VALUES (2258, '371302', '兰山区', '371300');
INSERT INTO `city` VALUES (2259, '371311', '罗庄区', '371300');
INSERT INTO `city` VALUES (2260, '371312', '河东区', '371300');
INSERT INTO `city` VALUES (2261, '371321', '沂南县', '371300');
INSERT INTO `city` VALUES (2262, '371322', '郯城县', '371300');
INSERT INTO `city` VALUES (2263, '371323', '沂水县', '371300');
INSERT INTO `city` VALUES (2264, '371324', '苍山县', '371300');
INSERT INTO `city` VALUES (2265, '371325', '费　县', '371300');
INSERT INTO `city` VALUES (2266, '371326', '平邑县', '371300');
INSERT INTO `city` VALUES (2267, '371327', '莒南县', '371300');
INSERT INTO `city` VALUES (2268, '371328', '蒙阴县', '371300');
INSERT INTO `city` VALUES (2269, '371329', '临沭县', '371300');
INSERT INTO `city` VALUES (2270, '371401', '市辖区', '371400');
INSERT INTO `city` VALUES (2271, '371402', '德城区', '371400');
INSERT INTO `city` VALUES (2272, '371421', '陵　县', '371400');
INSERT INTO `city` VALUES (2273, '371422', '宁津县', '371400');
INSERT INTO `city` VALUES (2274, '371423', '庆云县', '371400');
INSERT INTO `city` VALUES (2275, '371424', '临邑县', '371400');
INSERT INTO `city` VALUES (2276, '371425', '齐河县', '371400');
INSERT INTO `city` VALUES (2277, '371426', '平原县', '371400');
INSERT INTO `city` VALUES (2278, '371427', '夏津县', '371400');
INSERT INTO `city` VALUES (2279, '371428', '武城县', '371400');
INSERT INTO `city` VALUES (2280, '371481', '乐陵市', '371400');
INSERT INTO `city` VALUES (2281, '371482', '禹城市', '371400');
INSERT INTO `city` VALUES (2282, '371501', '市辖区', '371500');
INSERT INTO `city` VALUES (2283, '371502', '东昌府区', '371500');
INSERT INTO `city` VALUES (2284, '371521', '阳谷县', '371500');
INSERT INTO `city` VALUES (2285, '371522', '莘　县', '371500');
INSERT INTO `city` VALUES (2286, '371523', '茌平县', '371500');
INSERT INTO `city` VALUES (2287, '371524', '东阿县', '371500');
INSERT INTO `city` VALUES (2288, '371525', '冠　县', '371500');
INSERT INTO `city` VALUES (2289, '371526', '高唐县', '371500');
INSERT INTO `city` VALUES (2290, '371581', '临清市', '371500');
INSERT INTO `city` VALUES (2291, '371601', '市辖区', '371600');
INSERT INTO `city` VALUES (2292, '371602', '滨城区', '371600');
INSERT INTO `city` VALUES (2293, '371621', '惠民县', '371600');
INSERT INTO `city` VALUES (2294, '371622', '阳信县', '371600');
INSERT INTO `city` VALUES (2295, '371623', '无棣县', '371600');
INSERT INTO `city` VALUES (2296, '371624', '沾化县', '371600');
INSERT INTO `city` VALUES (2297, '371625', '博兴县', '371600');
INSERT INTO `city` VALUES (2298, '371626', '邹平县', '371600');
INSERT INTO `city` VALUES (2299, '371701', '市辖区', '371700');
INSERT INTO `city` VALUES (2300, '371702', '牡丹区', '371700');
INSERT INTO `city` VALUES (2301, '371721', '曹　县', '371700');
INSERT INTO `city` VALUES (2302, '371722', '单　县', '371700');
INSERT INTO `city` VALUES (2303, '371723', '成武县', '371700');
INSERT INTO `city` VALUES (2304, '371724', '巨野县', '371700');
INSERT INTO `city` VALUES (2305, '371725', '郓城县', '371700');
INSERT INTO `city` VALUES (2306, '371726', '鄄城县', '371700');
INSERT INTO `city` VALUES (2307, '371727', '定陶县', '371700');
INSERT INTO `city` VALUES (2308, '371728', '东明县', '371700');
INSERT INTO `city` VALUES (2309, '410101', '市辖区', '410100');
INSERT INTO `city` VALUES (2310, '410102', '中原区', '410100');
INSERT INTO `city` VALUES (2311, '410103', '二七区', '410100');
INSERT INTO `city` VALUES (2312, '410104', '管城回族区', '410100');
INSERT INTO `city` VALUES (2313, '410105', '金水区', '410100');
INSERT INTO `city` VALUES (2314, '410106', '上街区', '410100');
INSERT INTO `city` VALUES (2315, '410108', '邙山区', '410100');
INSERT INTO `city` VALUES (2316, '410122', '中牟县', '410100');
INSERT INTO `city` VALUES (2317, '410181', '巩义市', '410100');
INSERT INTO `city` VALUES (2318, '410182', '荥阳市', '410100');
INSERT INTO `city` VALUES (2319, '410183', '新密市', '410100');
INSERT INTO `city` VALUES (2320, '410184', '新郑市', '410100');
INSERT INTO `city` VALUES (2321, '410185', '登封市', '410100');
INSERT INTO `city` VALUES (2322, '410201', '市辖区', '410200');
INSERT INTO `city` VALUES (2323, '410202', '龙亭区', '410200');
INSERT INTO `city` VALUES (2324, '410203', '顺河回族区', '410200');
INSERT INTO `city` VALUES (2325, '410204', '鼓楼区', '410200');
INSERT INTO `city` VALUES (2326, '410205', '南关区', '410200');
INSERT INTO `city` VALUES (2327, '410211', '郊　区', '410200');
INSERT INTO `city` VALUES (2328, '410221', '杞　县', '410200');
INSERT INTO `city` VALUES (2329, '410222', '通许县', '410200');
INSERT INTO `city` VALUES (2330, '410223', '尉氏县', '410200');
INSERT INTO `city` VALUES (2331, '410224', '开封县', '410200');
INSERT INTO `city` VALUES (2332, '410225', '兰考县', '410200');
INSERT INTO `city` VALUES (2333, '410301', '市辖区', '410300');
INSERT INTO `city` VALUES (2334, '410302', '老城区', '410300');
INSERT INTO `city` VALUES (2335, '410303', '西工区', '410300');
INSERT INTO `city` VALUES (2336, '410304', '廛河回族区', '410300');
INSERT INTO `city` VALUES (2337, '410305', '涧西区', '410300');
INSERT INTO `city` VALUES (2338, '410306', '吉利区', '410300');
INSERT INTO `city` VALUES (2339, '410307', '洛龙区', '410300');
INSERT INTO `city` VALUES (2340, '410322', '孟津县', '410300');
INSERT INTO `city` VALUES (2341, '410323', '新安县', '410300');
INSERT INTO `city` VALUES (2342, '410324', '栾川县', '410300');
INSERT INTO `city` VALUES (2343, '410325', '嵩　县', '410300');
INSERT INTO `city` VALUES (2344, '410326', '汝阳县', '410300');
INSERT INTO `city` VALUES (2345, '410327', '宜阳县', '410300');
INSERT INTO `city` VALUES (2346, '410328', '洛宁县', '410300');
INSERT INTO `city` VALUES (2347, '410329', '伊川县', '410300');
INSERT INTO `city` VALUES (2348, '410381', '偃师市', '410300');
INSERT INTO `city` VALUES (2349, '410401', '市辖区', '410400');
INSERT INTO `city` VALUES (2350, '410402', '新华区', '410400');
INSERT INTO `city` VALUES (2351, '410403', '卫东区', '410400');
INSERT INTO `city` VALUES (2352, '410404', '石龙区', '410400');
INSERT INTO `city` VALUES (2353, '410411', '湛河区', '410400');
INSERT INTO `city` VALUES (2354, '410421', '宝丰县', '410400');
INSERT INTO `city` VALUES (2355, '410422', '叶　县', '410400');
INSERT INTO `city` VALUES (2356, '410423', '鲁山县', '410400');
INSERT INTO `city` VALUES (2357, '410425', '郏　县', '410400');
INSERT INTO `city` VALUES (2358, '410481', '舞钢市', '410400');
INSERT INTO `city` VALUES (2359, '410482', '汝州市', '410400');
INSERT INTO `city` VALUES (2360, '410501', '市辖区', '410500');
INSERT INTO `city` VALUES (2361, '410502', '文峰区', '410500');
INSERT INTO `city` VALUES (2362, '410503', '北关区', '410500');
INSERT INTO `city` VALUES (2363, '410505', '殷都区', '410500');
INSERT INTO `city` VALUES (2364, '410506', '龙安区', '410500');
INSERT INTO `city` VALUES (2365, '410522', '安阳县', '410500');
INSERT INTO `city` VALUES (2366, '410523', '汤阴县', '410500');
INSERT INTO `city` VALUES (2367, '410526', '滑　县', '410500');
INSERT INTO `city` VALUES (2368, '410527', '内黄县', '410500');
INSERT INTO `city` VALUES (2369, '410581', '林州市', '410500');
INSERT INTO `city` VALUES (2370, '410601', '市辖区', '410600');
INSERT INTO `city` VALUES (2371, '410602', '鹤山区', '410600');
INSERT INTO `city` VALUES (2372, '410603', '山城区', '410600');
INSERT INTO `city` VALUES (2373, '410611', '淇滨区', '410600');
INSERT INTO `city` VALUES (2374, '410621', '浚　县', '410600');
INSERT INTO `city` VALUES (2375, '410622', '淇　县', '410600');
INSERT INTO `city` VALUES (2376, '410701', '市辖区', '410700');
INSERT INTO `city` VALUES (2377, '410702', '红旗区', '410700');
INSERT INTO `city` VALUES (2378, '410703', '卫滨区', '410700');
INSERT INTO `city` VALUES (2379, '410704', '凤泉区', '410700');
INSERT INTO `city` VALUES (2380, '410711', '牧野区', '410700');
INSERT INTO `city` VALUES (2381, '410721', '新乡县', '410700');
INSERT INTO `city` VALUES (2382, '410724', '获嘉县', '410700');
INSERT INTO `city` VALUES (2383, '410725', '原阳县', '410700');
INSERT INTO `city` VALUES (2384, '410726', '延津县', '410700');
INSERT INTO `city` VALUES (2385, '410727', '封丘县', '410700');
INSERT INTO `city` VALUES (2386, '410728', '长垣县', '410700');
INSERT INTO `city` VALUES (2387, '410781', '卫辉市', '410700');
INSERT INTO `city` VALUES (2388, '410782', '辉县市', '410700');
INSERT INTO `city` VALUES (2389, '410801', '市辖区', '410800');
INSERT INTO `city` VALUES (2390, '410802', '解放区', '410800');
INSERT INTO `city` VALUES (2391, '410803', '中站区', '410800');
INSERT INTO `city` VALUES (2392, '410804', '马村区', '410800');
INSERT INTO `city` VALUES (2393, '410811', '山阳区', '410800');
INSERT INTO `city` VALUES (2394, '410821', '修武县', '410800');
INSERT INTO `city` VALUES (2395, '410822', '博爱县', '410800');
INSERT INTO `city` VALUES (2396, '410823', '武陟县', '410800');
INSERT INTO `city` VALUES (2397, '410825', '温　县', '410800');
INSERT INTO `city` VALUES (2398, '410881', '济源市', '410800');
INSERT INTO `city` VALUES (2399, '410882', '沁阳市', '410800');
INSERT INTO `city` VALUES (2400, '410883', '孟州市', '410800');
INSERT INTO `city` VALUES (2401, '410901', '市辖区', '410900');
INSERT INTO `city` VALUES (2402, '410902', '华龙区', '410900');
INSERT INTO `city` VALUES (2403, '410922', '清丰县', '410900');
INSERT INTO `city` VALUES (2404, '410923', '南乐县', '410900');
INSERT INTO `city` VALUES (2405, '410926', '范　县', '410900');
INSERT INTO `city` VALUES (2406, '410927', '台前县', '410900');
INSERT INTO `city` VALUES (2407, '410928', '濮阳县', '410900');
INSERT INTO `city` VALUES (2408, '411001', '市辖区', '411000');
INSERT INTO `city` VALUES (2409, '411002', '魏都区', '411000');
INSERT INTO `city` VALUES (2410, '411023', '许昌县', '411000');
INSERT INTO `city` VALUES (2411, '411024', '鄢陵县', '411000');
INSERT INTO `city` VALUES (2412, '411025', '襄城县', '411000');
INSERT INTO `city` VALUES (2413, '411081', '禹州市', '411000');
INSERT INTO `city` VALUES (2414, '411082', '长葛市', '411000');
INSERT INTO `city` VALUES (2415, '411101', '市辖区', '411100');
INSERT INTO `city` VALUES (2416, '411102', '源汇区', '411100');
INSERT INTO `city` VALUES (2417, '411103', '郾城区', '411100');
INSERT INTO `city` VALUES (2418, '411104', '召陵区', '411100');
INSERT INTO `city` VALUES (2419, '411121', '舞阳县', '411100');
INSERT INTO `city` VALUES (2420, '411122', '临颍县', '411100');
INSERT INTO `city` VALUES (2421, '411201', '市辖区', '411200');
INSERT INTO `city` VALUES (2422, '411202', '湖滨区', '411200');
INSERT INTO `city` VALUES (2423, '411221', '渑池县', '411200');
INSERT INTO `city` VALUES (2424, '411222', '陕　县', '411200');
INSERT INTO `city` VALUES (2425, '411224', '卢氏县', '411200');
INSERT INTO `city` VALUES (2426, '411281', '义马市', '411200');
INSERT INTO `city` VALUES (2427, '411282', '灵宝市', '411200');
INSERT INTO `city` VALUES (2428, '411301', '市辖区', '411300');
INSERT INTO `city` VALUES (2429, '411302', '宛城区', '411300');
INSERT INTO `city` VALUES (2430, '411303', '卧龙区', '411300');
INSERT INTO `city` VALUES (2431, '411321', '南召县', '411300');
INSERT INTO `city` VALUES (2432, '411322', '方城县', '411300');
INSERT INTO `city` VALUES (2433, '411323', '西峡县', '411300');
INSERT INTO `city` VALUES (2434, '411324', '镇平县', '411300');
INSERT INTO `city` VALUES (2435, '411325', '内乡县', '411300');
INSERT INTO `city` VALUES (2436, '411326', '淅川县', '411300');
INSERT INTO `city` VALUES (2437, '411327', '社旗县', '411300');
INSERT INTO `city` VALUES (2438, '411328', '唐河县', '411300');
INSERT INTO `city` VALUES (2439, '411329', '新野县', '411300');
INSERT INTO `city` VALUES (2440, '411330', '桐柏县', '411300');
INSERT INTO `city` VALUES (2441, '411381', '邓州市', '411300');
INSERT INTO `city` VALUES (2442, '411401', '市辖区', '411400');
INSERT INTO `city` VALUES (2443, '411402', '梁园区', '411400');
INSERT INTO `city` VALUES (2444, '411403', '睢阳区', '411400');
INSERT INTO `city` VALUES (2445, '411421', '民权县', '411400');
INSERT INTO `city` VALUES (2446, '411422', '睢　县', '411400');
INSERT INTO `city` VALUES (2447, '411423', '宁陵县', '411400');
INSERT INTO `city` VALUES (2448, '411424', '柘城县', '411400');
INSERT INTO `city` VALUES (2449, '411425', '虞城县', '411400');
INSERT INTO `city` VALUES (2450, '411426', '夏邑县', '411400');
INSERT INTO `city` VALUES (2451, '411481', '永城市', '411400');
INSERT INTO `city` VALUES (2452, '411501', '市辖区', '411500');
INSERT INTO `city` VALUES (2453, '411502', '师河区', '411500');
INSERT INTO `city` VALUES (2454, '411503', '平桥区', '411500');
INSERT INTO `city` VALUES (2455, '411521', '罗山县', '411500');
INSERT INTO `city` VALUES (2456, '411522', '光山县', '411500');
INSERT INTO `city` VALUES (2457, '411523', '新　县', '411500');
INSERT INTO `city` VALUES (2458, '411524', '商城县', '411500');
INSERT INTO `city` VALUES (2459, '411525', '固始县', '411500');
INSERT INTO `city` VALUES (2460, '411526', '潢川县', '411500');
INSERT INTO `city` VALUES (2461, '411527', '淮滨县', '411500');
INSERT INTO `city` VALUES (2462, '411528', '息　县', '411500');
INSERT INTO `city` VALUES (2463, '411601', '市辖区', '411600');
INSERT INTO `city` VALUES (2464, '411602', '川汇区', '411600');
INSERT INTO `city` VALUES (2465, '411621', '扶沟县', '411600');
INSERT INTO `city` VALUES (2466, '411622', '西华县', '411600');
INSERT INTO `city` VALUES (2467, '411623', '商水县', '411600');
INSERT INTO `city` VALUES (2468, '411624', '沈丘县', '411600');
INSERT INTO `city` VALUES (2469, '411625', '郸城县', '411600');
INSERT INTO `city` VALUES (2470, '411626', '淮阳县', '411600');
INSERT INTO `city` VALUES (2471, '411627', '太康县', '411600');
INSERT INTO `city` VALUES (2472, '411628', '鹿邑县', '411600');
INSERT INTO `city` VALUES (2473, '411681', '项城市', '411600');
INSERT INTO `city` VALUES (2474, '411701', '市辖区', '411700');
INSERT INTO `city` VALUES (2475, '411702', '驿城区', '411700');
INSERT INTO `city` VALUES (2476, '411721', '西平县', '411700');
INSERT INTO `city` VALUES (2477, '411722', '上蔡县', '411700');
INSERT INTO `city` VALUES (2478, '411723', '平舆县', '411700');
INSERT INTO `city` VALUES (2479, '411724', '正阳县', '411700');
INSERT INTO `city` VALUES (2480, '411725', '确山县', '411700');
INSERT INTO `city` VALUES (2481, '411726', '泌阳县', '411700');
INSERT INTO `city` VALUES (2482, '411727', '汝南县', '411700');
INSERT INTO `city` VALUES (2483, '411728', '遂平县', '411700');
INSERT INTO `city` VALUES (2484, '411729', '新蔡县', '411700');
INSERT INTO `city` VALUES (2485, '420101', '市辖区', '420100');
INSERT INTO `city` VALUES (2486, '420102', '江岸区', '420100');
INSERT INTO `city` VALUES (2487, '420103', '江汉区', '420100');
INSERT INTO `city` VALUES (2488, '420104', '乔口区', '420100');
INSERT INTO `city` VALUES (2489, '420105', '汉阳区', '420100');
INSERT INTO `city` VALUES (2490, '420106', '武昌区', '420100');
INSERT INTO `city` VALUES (2491, '420107', '青山区', '420100');
INSERT INTO `city` VALUES (2492, '420111', '洪山区', '420100');
INSERT INTO `city` VALUES (2493, '420112', '东西湖区', '420100');
INSERT INTO `city` VALUES (2494, '420113', '汉南区', '420100');
INSERT INTO `city` VALUES (2495, '420114', '蔡甸区', '420100');
INSERT INTO `city` VALUES (2496, '420115', '江夏区', '420100');
INSERT INTO `city` VALUES (2497, '420116', '黄陂区', '420100');
INSERT INTO `city` VALUES (2498, '420117', '新洲区', '420100');
INSERT INTO `city` VALUES (2499, '420201', '市辖区', '420200');
INSERT INTO `city` VALUES (2500, '420202', '黄石港区', '420200');
INSERT INTO `city` VALUES (2501, '420203', '西塞山区', '420200');
INSERT INTO `city` VALUES (2502, '420204', '下陆区', '420200');
INSERT INTO `city` VALUES (2503, '420205', '铁山区', '420200');
INSERT INTO `city` VALUES (2504, '420222', '阳新县', '420200');
INSERT INTO `city` VALUES (2505, '420281', '大冶市', '420200');
INSERT INTO `city` VALUES (2506, '420301', '市辖区', '420300');
INSERT INTO `city` VALUES (2507, '420302', '茅箭区', '420300');
INSERT INTO `city` VALUES (2508, '420303', '张湾区', '420300');
INSERT INTO `city` VALUES (2509, '420321', '郧　县', '420300');
INSERT INTO `city` VALUES (2510, '420322', '郧西县', '420300');
INSERT INTO `city` VALUES (2511, '420323', '竹山县', '420300');
INSERT INTO `city` VALUES (2512, '420324', '竹溪县', '420300');
INSERT INTO `city` VALUES (2513, '420325', '房　县', '420300');
INSERT INTO `city` VALUES (2514, '420381', '丹江口市', '420300');
INSERT INTO `city` VALUES (2515, '420501', '市辖区', '420500');
INSERT INTO `city` VALUES (2516, '420502', '西陵区', '420500');
INSERT INTO `city` VALUES (2517, '420503', '伍家岗区', '420500');
INSERT INTO `city` VALUES (2518, '420504', '点军区', '420500');
INSERT INTO `city` VALUES (2519, '420505', '猇亭区', '420500');
INSERT INTO `city` VALUES (2520, '420506', '夷陵区', '420500');
INSERT INTO `city` VALUES (2521, '420525', '远安县', '420500');
INSERT INTO `city` VALUES (2522, '420526', '兴山县', '420500');
INSERT INTO `city` VALUES (2523, '420527', '秭归县', '420500');
INSERT INTO `city` VALUES (2524, '420528', '长阳土家族自治县', '420500');
INSERT INTO `city` VALUES (2525, '420529', '五峰土家族自治县', '420500');
INSERT INTO `city` VALUES (2526, '420581', '宜都市', '420500');
INSERT INTO `city` VALUES (2527, '420582', '当阳市', '420500');
INSERT INTO `city` VALUES (2528, '420583', '枝江市', '420500');
INSERT INTO `city` VALUES (2529, '420601', '市辖区', '420600');
INSERT INTO `city` VALUES (2530, '420602', '襄城区', '420600');
INSERT INTO `city` VALUES (2531, '420606', '樊城区', '420600');
INSERT INTO `city` VALUES (2532, '420607', '襄阳区', '420600');
INSERT INTO `city` VALUES (2533, '420624', '南漳县', '420600');
INSERT INTO `city` VALUES (2534, '420625', '谷城县', '420600');
INSERT INTO `city` VALUES (2535, '420626', '保康县', '420600');
INSERT INTO `city` VALUES (2536, '420682', '老河口市', '420600');
INSERT INTO `city` VALUES (2537, '420683', '枣阳市', '420600');
INSERT INTO `city` VALUES (2538, '420684', '宜城市', '420600');
INSERT INTO `city` VALUES (2539, '420701', '市辖区', '420700');
INSERT INTO `city` VALUES (2540, '420702', '梁子湖区', '420700');
INSERT INTO `city` VALUES (2541, '420703', '华容区', '420700');
INSERT INTO `city` VALUES (2542, '420704', '鄂城区', '420700');
INSERT INTO `city` VALUES (2543, '420801', '市辖区', '420800');
INSERT INTO `city` VALUES (2544, '420802', '东宝区', '420800');
INSERT INTO `city` VALUES (2545, '420804', '掇刀区', '420800');
INSERT INTO `city` VALUES (2546, '420821', '京山县', '420800');
INSERT INTO `city` VALUES (2547, '420822', '沙洋县', '420800');
INSERT INTO `city` VALUES (2548, '420881', '钟祥市', '420800');
INSERT INTO `city` VALUES (2549, '420901', '市辖区', '420900');
INSERT INTO `city` VALUES (2550, '420902', '孝南区', '420900');
INSERT INTO `city` VALUES (2551, '420921', '孝昌县', '420900');
INSERT INTO `city` VALUES (2552, '420922', '大悟县', '420900');
INSERT INTO `city` VALUES (2553, '420923', '云梦县', '420900');
INSERT INTO `city` VALUES (2554, '420981', '应城市', '420900');
INSERT INTO `city` VALUES (2555, '420982', '安陆市', '420900');
INSERT INTO `city` VALUES (2556, '420984', '汉川市', '420900');
INSERT INTO `city` VALUES (2557, '421001', '市辖区', '421000');
INSERT INTO `city` VALUES (2558, '421002', '沙市区', '421000');
INSERT INTO `city` VALUES (2559, '421003', '荆州区', '421000');
INSERT INTO `city` VALUES (2560, '421022', '公安县', '421000');
INSERT INTO `city` VALUES (2561, '421023', '监利县', '421000');
INSERT INTO `city` VALUES (2562, '421024', '江陵县', '421000');
INSERT INTO `city` VALUES (2563, '421081', '石首市', '421000');
INSERT INTO `city` VALUES (2564, '421083', '洪湖市', '421000');
INSERT INTO `city` VALUES (2565, '421087', '松滋市', '421000');
INSERT INTO `city` VALUES (2566, '421101', '市辖区', '421100');
INSERT INTO `city` VALUES (2567, '421102', '黄州区', '421100');
INSERT INTO `city` VALUES (2568, '421121', '团风县', '421100');
INSERT INTO `city` VALUES (2569, '421122', '红安县', '421100');
INSERT INTO `city` VALUES (2570, '421123', '罗田县', '421100');
INSERT INTO `city` VALUES (2571, '421124', '英山县', '421100');
INSERT INTO `city` VALUES (2572, '421125', '浠水县', '421100');
INSERT INTO `city` VALUES (2573, '421126', '蕲春县', '421100');
INSERT INTO `city` VALUES (2574, '421127', '黄梅县', '421100');
INSERT INTO `city` VALUES (2575, '421181', '麻城市', '421100');
INSERT INTO `city` VALUES (2576, '421182', '武穴市', '421100');
INSERT INTO `city` VALUES (2577, '421201', '市辖区', '421200');
INSERT INTO `city` VALUES (2578, '421202', '咸安区', '421200');
INSERT INTO `city` VALUES (2579, '421221', '嘉鱼县', '421200');
INSERT INTO `city` VALUES (2580, '421222', '通城县', '421200');
INSERT INTO `city` VALUES (2581, '421223', '崇阳县', '421200');
INSERT INTO `city` VALUES (2582, '421224', '通山县', '421200');
INSERT INTO `city` VALUES (2583, '421281', '赤壁市', '421200');
INSERT INTO `city` VALUES (2584, '421301', '市辖区', '421300');
INSERT INTO `city` VALUES (2585, '421302', '曾都区', '421300');
INSERT INTO `city` VALUES (2586, '421381', '广水市', '421300');
INSERT INTO `city` VALUES (2587, '422801', '恩施市', '422800');
INSERT INTO `city` VALUES (2588, '422802', '利川市', '422800');
INSERT INTO `city` VALUES (2589, '422822', '建始县', '422800');
INSERT INTO `city` VALUES (2590, '422823', '巴东县', '422800');
INSERT INTO `city` VALUES (2591, '422825', '宣恩县', '422800');
INSERT INTO `city` VALUES (2592, '422826', '咸丰县', '422800');
INSERT INTO `city` VALUES (2593, '422827', '来凤县', '422800');
INSERT INTO `city` VALUES (2594, '422828', '鹤峰县', '422800');
INSERT INTO `city` VALUES (2595, '429004', '仙桃市', '429000');
INSERT INTO `city` VALUES (2596, '429005', '潜江市', '429000');
INSERT INTO `city` VALUES (2597, '429006', '天门市', '429000');
INSERT INTO `city` VALUES (2598, '429021', '神农架林区', '429000');
INSERT INTO `city` VALUES (2599, '430101', '市辖区', '430100');
INSERT INTO `city` VALUES (2600, '430102', '芙蓉区', '430100');
INSERT INTO `city` VALUES (2601, '430103', '天心区', '430100');
INSERT INTO `city` VALUES (2602, '430104', '岳麓区', '430100');
INSERT INTO `city` VALUES (2603, '430105', '开福区', '430100');
INSERT INTO `city` VALUES (2604, '430111', '雨花区', '430100');
INSERT INTO `city` VALUES (2605, '430121', '长沙县', '430100');
INSERT INTO `city` VALUES (2606, '430122', '望城县', '430100');
INSERT INTO `city` VALUES (2607, '430124', '宁乡县', '430100');
INSERT INTO `city` VALUES (2608, '430181', '浏阳市', '430100');
INSERT INTO `city` VALUES (2609, '430201', '市辖区', '430200');
INSERT INTO `city` VALUES (2610, '430202', '荷塘区', '430200');
INSERT INTO `city` VALUES (2611, '430203', '芦淞区', '430200');
INSERT INTO `city` VALUES (2612, '430204', '石峰区', '430200');
INSERT INTO `city` VALUES (2613, '430211', '天元区', '430200');
INSERT INTO `city` VALUES (2614, '430221', '株洲县', '430200');
INSERT INTO `city` VALUES (2615, '430223', '攸　县', '430200');
INSERT INTO `city` VALUES (2616, '430224', '茶陵县', '430200');
INSERT INTO `city` VALUES (2617, '430225', '炎陵县', '430200');
INSERT INTO `city` VALUES (2618, '430281', '醴陵市', '430200');
INSERT INTO `city` VALUES (2619, '430301', '市辖区', '430300');
INSERT INTO `city` VALUES (2620, '430302', '雨湖区', '430300');
INSERT INTO `city` VALUES (2621, '430304', '岳塘区', '430300');
INSERT INTO `city` VALUES (2622, '430321', '湘潭县', '430300');
INSERT INTO `city` VALUES (2623, '430381', '湘乡市', '430300');
INSERT INTO `city` VALUES (2624, '430382', '韶山市', '430300');
INSERT INTO `city` VALUES (2625, '430401', '市辖区', '430400');
INSERT INTO `city` VALUES (2626, '430405', '珠晖区', '430400');
INSERT INTO `city` VALUES (2627, '430406', '雁峰区', '430400');
INSERT INTO `city` VALUES (2628, '430407', '石鼓区', '430400');
INSERT INTO `city` VALUES (2629, '430408', '蒸湘区', '430400');
INSERT INTO `city` VALUES (2630, '430412', '南岳区', '430400');
INSERT INTO `city` VALUES (2631, '430421', '衡阳县', '430400');
INSERT INTO `city` VALUES (2632, '430422', '衡南县', '430400');
INSERT INTO `city` VALUES (2633, '430423', '衡山县', '430400');
INSERT INTO `city` VALUES (2634, '430424', '衡东县', '430400');
INSERT INTO `city` VALUES (2635, '430426', '祁东县', '430400');
INSERT INTO `city` VALUES (2636, '430481', '耒阳市', '430400');
INSERT INTO `city` VALUES (2637, '430482', '常宁市', '430400');
INSERT INTO `city` VALUES (2638, '430501', '市辖区', '430500');
INSERT INTO `city` VALUES (2639, '430502', '双清区', '430500');
INSERT INTO `city` VALUES (2640, '430503', '大祥区', '430500');
INSERT INTO `city` VALUES (2641, '430511', '北塔区', '430500');
INSERT INTO `city` VALUES (2642, '430521', '邵东县', '430500');
INSERT INTO `city` VALUES (2643, '430522', '新邵县', '430500');
INSERT INTO `city` VALUES (2644, '430523', '邵阳县', '430500');
INSERT INTO `city` VALUES (2645, '430524', '隆回县', '430500');
INSERT INTO `city` VALUES (2646, '430525', '洞口县', '430500');
INSERT INTO `city` VALUES (2647, '430527', '绥宁县', '430500');
INSERT INTO `city` VALUES (2648, '430528', '新宁县', '430500');
INSERT INTO `city` VALUES (2649, '430529', '城步苗族自治县', '430500');
INSERT INTO `city` VALUES (2650, '430581', '武冈市', '430500');
INSERT INTO `city` VALUES (2651, '430601', '市辖区', '430600');
INSERT INTO `city` VALUES (2652, '430602', '岳阳楼区', '430600');
INSERT INTO `city` VALUES (2653, '430603', '云溪区', '430600');
INSERT INTO `city` VALUES (2654, '430611', '君山区', '430600');
INSERT INTO `city` VALUES (2655, '430621', '岳阳县', '430600');
INSERT INTO `city` VALUES (2656, '430623', '华容县', '430600');
INSERT INTO `city` VALUES (2657, '430624', '湘阴县', '430600');
INSERT INTO `city` VALUES (2658, '430626', '平江县', '430600');
INSERT INTO `city` VALUES (2659, '430681', '汨罗市', '430600');
INSERT INTO `city` VALUES (2660, '430682', '临湘市', '430600');
INSERT INTO `city` VALUES (2661, '430701', '市辖区', '430700');
INSERT INTO `city` VALUES (2662, '430702', '武陵区', '430700');
INSERT INTO `city` VALUES (2663, '430703', '鼎城区', '430700');
INSERT INTO `city` VALUES (2664, '430721', '安乡县', '430700');
INSERT INTO `city` VALUES (2665, '430722', '汉寿县', '430700');
INSERT INTO `city` VALUES (2666, '430723', '澧　县', '430700');
INSERT INTO `city` VALUES (2667, '430724', '临澧县', '430700');
INSERT INTO `city` VALUES (2668, '430725', '桃源县', '430700');
INSERT INTO `city` VALUES (2669, '430726', '石门县', '430700');
INSERT INTO `city` VALUES (2670, '430781', '津市市', '430700');
INSERT INTO `city` VALUES (2671, '430801', '市辖区', '430800');
INSERT INTO `city` VALUES (2672, '430802', '永定区', '430800');
INSERT INTO `city` VALUES (2673, '430811', '武陵源区', '430800');
INSERT INTO `city` VALUES (2674, '430821', '慈利县', '430800');
INSERT INTO `city` VALUES (2675, '430822', '桑植县', '430800');
INSERT INTO `city` VALUES (2676, '430901', '市辖区', '430900');
INSERT INTO `city` VALUES (2677, '430902', '资阳区', '430900');
INSERT INTO `city` VALUES (2678, '430903', '赫山区', '430900');
INSERT INTO `city` VALUES (2679, '430921', '南　县', '430900');
INSERT INTO `city` VALUES (2680, '430922', '桃江县', '430900');
INSERT INTO `city` VALUES (2681, '430923', '安化县', '430900');
INSERT INTO `city` VALUES (2682, '430981', '沅江市', '430900');
INSERT INTO `city` VALUES (2683, '431001', '市辖区', '431000');
INSERT INTO `city` VALUES (2684, '431002', '北湖区', '431000');
INSERT INTO `city` VALUES (2685, '431003', '苏仙区', '431000');
INSERT INTO `city` VALUES (2686, '431021', '桂阳县', '431000');
INSERT INTO `city` VALUES (2687, '431022', '宜章县', '431000');
INSERT INTO `city` VALUES (2688, '431023', '永兴县', '431000');
INSERT INTO `city` VALUES (2689, '431024', '嘉禾县', '431000');
INSERT INTO `city` VALUES (2690, '431025', '临武县', '431000');
INSERT INTO `city` VALUES (2691, '431026', '汝城县', '431000');
INSERT INTO `city` VALUES (2692, '431027', '桂东县', '431000');
INSERT INTO `city` VALUES (2693, '431028', '安仁县', '431000');
INSERT INTO `city` VALUES (2694, '431081', '资兴市', '431000');
INSERT INTO `city` VALUES (2695, '431101', '市辖区', '431100');
INSERT INTO `city` VALUES (2696, '431102', '芝山区', '431100');
INSERT INTO `city` VALUES (2697, '431103', '冷水滩区', '431100');
INSERT INTO `city` VALUES (2698, '431121', '祁阳县', '431100');
INSERT INTO `city` VALUES (2699, '431122', '东安县', '431100');
INSERT INTO `city` VALUES (2700, '431123', '双牌县', '431100');
INSERT INTO `city` VALUES (2701, '431124', '道　县', '431100');
INSERT INTO `city` VALUES (2702, '431125', '江永县', '431100');
INSERT INTO `city` VALUES (2703, '431126', '宁远县', '431100');
INSERT INTO `city` VALUES (2704, '431127', '蓝山县', '431100');
INSERT INTO `city` VALUES (2705, '431128', '新田县', '431100');
INSERT INTO `city` VALUES (2706, '431129', '江华瑶族自治县', '431100');
INSERT INTO `city` VALUES (2707, '431201', '市辖区', '431200');
INSERT INTO `city` VALUES (2708, '431202', '鹤城区', '431200');
INSERT INTO `city` VALUES (2709, '431221', '中方县', '431200');
INSERT INTO `city` VALUES (2710, '431222', '沅陵县', '431200');
INSERT INTO `city` VALUES (2711, '431223', '辰溪县', '431200');
INSERT INTO `city` VALUES (2712, '431224', '溆浦县', '431200');
INSERT INTO `city` VALUES (2713, '431225', '会同县', '431200');
INSERT INTO `city` VALUES (2714, '431226', '麻阳苗族自治县', '431200');
INSERT INTO `city` VALUES (2715, '431227', '新晃侗族自治县', '431200');
INSERT INTO `city` VALUES (2716, '431228', '芷江侗族自治县', '431200');
INSERT INTO `city` VALUES (2717, '431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `city` VALUES (2718, '431230', '通道侗族自治县', '431200');
INSERT INTO `city` VALUES (2719, '431281', '洪江市', '431200');
INSERT INTO `city` VALUES (2720, '431301', '市辖区', '431300');
INSERT INTO `city` VALUES (2721, '431302', '娄星区', '431300');
INSERT INTO `city` VALUES (2722, '431321', '双峰县', '431300');
INSERT INTO `city` VALUES (2723, '431322', '新化县', '431300');
INSERT INTO `city` VALUES (2724, '431381', '冷水江市', '431300');
INSERT INTO `city` VALUES (2725, '431382', '涟源市', '431300');
INSERT INTO `city` VALUES (2726, '433101', '吉首市', '433100');
INSERT INTO `city` VALUES (2727, '433122', '泸溪县', '433100');
INSERT INTO `city` VALUES (2728, '433123', '凤凰县', '433100');
INSERT INTO `city` VALUES (2729, '433124', '花垣县', '433100');
INSERT INTO `city` VALUES (2730, '433125', '保靖县', '433100');
INSERT INTO `city` VALUES (2731, '433126', '古丈县', '433100');
INSERT INTO `city` VALUES (2732, '433127', '永顺县', '433100');
INSERT INTO `city` VALUES (2733, '433130', '龙山县', '433100');
INSERT INTO `city` VALUES (2734, '440101', '市辖区', '440100');
INSERT INTO `city` VALUES (2735, '440102', '东山区', '440100');
INSERT INTO `city` VALUES (2736, '440103', '荔湾区', '440100');
INSERT INTO `city` VALUES (2737, '440104', '越秀区', '440100');
INSERT INTO `city` VALUES (2738, '440105', '海珠区', '440100');
INSERT INTO `city` VALUES (2739, '440106', '天河区', '440100');
INSERT INTO `city` VALUES (2740, '440107', '芳村区', '440100');
INSERT INTO `city` VALUES (2741, '440111', '白云区', '440100');
INSERT INTO `city` VALUES (2742, '440112', '黄埔区', '440100');
INSERT INTO `city` VALUES (2743, '440113', '番禺区', '440100');
INSERT INTO `city` VALUES (2744, '440114', '花都区', '440100');
INSERT INTO `city` VALUES (2745, '440183', '增城市', '440100');
INSERT INTO `city` VALUES (2746, '440184', '从化市', '440100');
INSERT INTO `city` VALUES (2747, '440201', '市辖区', '440200');
INSERT INTO `city` VALUES (2748, '440203', '武江区', '440200');
INSERT INTO `city` VALUES (2749, '440204', '浈江区', '440200');
INSERT INTO `city` VALUES (2750, '440205', '曲江区', '440200');
INSERT INTO `city` VALUES (2751, '440222', '始兴县', '440200');
INSERT INTO `city` VALUES (2752, '440224', '仁化县', '440200');
INSERT INTO `city` VALUES (2753, '440229', '翁源县', '440200');
INSERT INTO `city` VALUES (2754, '440232', '乳源瑶族自治县', '440200');
INSERT INTO `city` VALUES (2755, '440233', '新丰县', '440200');
INSERT INTO `city` VALUES (2756, '440281', '乐昌市', '440200');
INSERT INTO `city` VALUES (2757, '440282', '南雄市', '440200');
INSERT INTO `city` VALUES (2758, '440301', '市辖区', '440300');
INSERT INTO `city` VALUES (2759, '440303', '罗湖区', '440300');
INSERT INTO `city` VALUES (2760, '440304', '福田区', '440300');
INSERT INTO `city` VALUES (2761, '440305', '南山区', '440300');
INSERT INTO `city` VALUES (2762, '440306', '宝安区', '440300');
INSERT INTO `city` VALUES (2763, '440307', '龙岗区', '440300');
INSERT INTO `city` VALUES (2764, '440308', '盐田区', '440300');
INSERT INTO `city` VALUES (2765, '440401', '市辖区', '440400');
INSERT INTO `city` VALUES (2766, '440402', '香洲区', '440400');
INSERT INTO `city` VALUES (2767, '440403', '斗门区', '440400');
INSERT INTO `city` VALUES (2768, '440404', '金湾区', '440400');
INSERT INTO `city` VALUES (2769, '440501', '市辖区', '440500');
INSERT INTO `city` VALUES (2770, '440507', '龙湖区', '440500');
INSERT INTO `city` VALUES (2771, '440511', '金平区', '440500');
INSERT INTO `city` VALUES (2772, '440512', '濠江区', '440500');
INSERT INTO `city` VALUES (2773, '440513', '潮阳区', '440500');
INSERT INTO `city` VALUES (2774, '440514', '潮南区', '440500');
INSERT INTO `city` VALUES (2775, '440515', '澄海区', '440500');
INSERT INTO `city` VALUES (2776, '440523', '南澳县', '440500');
INSERT INTO `city` VALUES (2777, '440601', '市辖区', '440600');
INSERT INTO `city` VALUES (2778, '440604', '禅城区', '440600');
INSERT INTO `city` VALUES (2779, '440605', '南海区', '440600');
INSERT INTO `city` VALUES (2780, '440606', '顺德区', '440600');
INSERT INTO `city` VALUES (2781, '440607', '三水区', '440600');
INSERT INTO `city` VALUES (2782, '440608', '高明区', '440600');
INSERT INTO `city` VALUES (2783, '440701', '市辖区', '440700');
INSERT INTO `city` VALUES (2784, '440703', '蓬江区', '440700');
INSERT INTO `city` VALUES (2785, '440704', '江海区', '440700');
INSERT INTO `city` VALUES (2786, '440705', '新会区', '440700');
INSERT INTO `city` VALUES (2787, '440781', '台山市', '440700');
INSERT INTO `city` VALUES (2788, '440783', '开平市', '440700');
INSERT INTO `city` VALUES (2789, '440784', '鹤山市', '440700');
INSERT INTO `city` VALUES (2790, '440785', '恩平市', '440700');
INSERT INTO `city` VALUES (2791, '440801', '市辖区', '440800');
INSERT INTO `city` VALUES (2792, '440802', '赤坎区', '440800');
INSERT INTO `city` VALUES (2793, '440803', '霞山区', '440800');
INSERT INTO `city` VALUES (2794, '440804', '坡头区', '440800');
INSERT INTO `city` VALUES (2795, '440811', '麻章区', '440800');
INSERT INTO `city` VALUES (2796, '440823', '遂溪县', '440800');
INSERT INTO `city` VALUES (2797, '440825', '徐闻县', '440800');
INSERT INTO `city` VALUES (2798, '440881', '廉江市', '440800');
INSERT INTO `city` VALUES (2799, '440882', '雷州市', '440800');
INSERT INTO `city` VALUES (2800, '440883', '吴川市', '440800');
INSERT INTO `city` VALUES (2801, '440901', '市辖区', '440900');
INSERT INTO `city` VALUES (2802, '440902', '茂南区', '440900');
INSERT INTO `city` VALUES (2803, '440903', '茂港区', '440900');
INSERT INTO `city` VALUES (2804, '440923', '电白县', '440900');
INSERT INTO `city` VALUES (2805, '440981', '高州市', '440900');
INSERT INTO `city` VALUES (2806, '440982', '化州市', '440900');
INSERT INTO `city` VALUES (2807, '440983', '信宜市', '440900');
INSERT INTO `city` VALUES (2808, '441201', '市辖区', '441200');
INSERT INTO `city` VALUES (2809, '441202', '端州区', '441200');
INSERT INTO `city` VALUES (2810, '441203', '鼎湖区', '441200');
INSERT INTO `city` VALUES (2811, '441223', '广宁县', '441200');
INSERT INTO `city` VALUES (2812, '441224', '怀集县', '441200');
INSERT INTO `city` VALUES (2813, '441225', '封开县', '441200');
INSERT INTO `city` VALUES (2814, '441226', '德庆县', '441200');
INSERT INTO `city` VALUES (2815, '441283', '高要市', '441200');
INSERT INTO `city` VALUES (2816, '441284', '四会市', '441200');
INSERT INTO `city` VALUES (2817, '441301', '市辖区', '441300');
INSERT INTO `city` VALUES (2818, '441302', '惠城区', '441300');
INSERT INTO `city` VALUES (2819, '441303', '惠阳区', '441300');
INSERT INTO `city` VALUES (2820, '441322', '博罗县', '441300');
INSERT INTO `city` VALUES (2821, '441323', '惠东县', '441300');
INSERT INTO `city` VALUES (2822, '441324', '龙门县', '441300');
INSERT INTO `city` VALUES (2823, '441401', '市辖区', '441400');
INSERT INTO `city` VALUES (2824, '441402', '梅江区', '441400');
INSERT INTO `city` VALUES (2825, '441421', '梅　县', '441400');
INSERT INTO `city` VALUES (2826, '441422', '大埔县', '441400');
INSERT INTO `city` VALUES (2827, '441423', '丰顺县', '441400');
INSERT INTO `city` VALUES (2828, '441424', '五华县', '441400');
INSERT INTO `city` VALUES (2829, '441426', '平远县', '441400');
INSERT INTO `city` VALUES (2830, '441427', '蕉岭县', '441400');
INSERT INTO `city` VALUES (2831, '441481', '兴宁市', '441400');
INSERT INTO `city` VALUES (2832, '441501', '市辖区', '441500');
INSERT INTO `city` VALUES (2833, '441502', '城　区', '441500');
INSERT INTO `city` VALUES (2834, '441521', '海丰县', '441500');
INSERT INTO `city` VALUES (2835, '441523', '陆河县', '441500');
INSERT INTO `city` VALUES (2836, '441581', '陆丰市', '441500');
INSERT INTO `city` VALUES (2837, '441601', '市辖区', '441600');
INSERT INTO `city` VALUES (2838, '441602', '源城区', '441600');
INSERT INTO `city` VALUES (2839, '441621', '紫金县', '441600');
INSERT INTO `city` VALUES (2840, '441622', '龙川县', '441600');
INSERT INTO `city` VALUES (2841, '441623', '连平县', '441600');
INSERT INTO `city` VALUES (2842, '441624', '和平县', '441600');
INSERT INTO `city` VALUES (2843, '441625', '东源县', '441600');
INSERT INTO `city` VALUES (2844, '441701', '市辖区', '441700');
INSERT INTO `city` VALUES (2845, '441702', '江城区', '441700');
INSERT INTO `city` VALUES (2846, '441721', '阳西县', '441700');
INSERT INTO `city` VALUES (2847, '441723', '阳东县', '441700');
INSERT INTO `city` VALUES (2848, '441781', '阳春市', '441700');
INSERT INTO `city` VALUES (2849, '441801', '市辖区', '441800');
INSERT INTO `city` VALUES (2850, '441802', '清城区', '441800');
INSERT INTO `city` VALUES (2851, '441821', '佛冈县', '441800');
INSERT INTO `city` VALUES (2852, '441823', '阳山县', '441800');
INSERT INTO `city` VALUES (2853, '441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `city` VALUES (2854, '441826', '连南瑶族自治县', '441800');
INSERT INTO `city` VALUES (2855, '441827', '清新县', '441800');
INSERT INTO `city` VALUES (2856, '441881', '英德市', '441800');
INSERT INTO `city` VALUES (2857, '441882', '连州市', '441800');
INSERT INTO `city` VALUES (2858, '445101', '市辖区', '445100');
INSERT INTO `city` VALUES (2859, '445102', '湘桥区', '445100');
INSERT INTO `city` VALUES (2860, '445121', '潮安县', '445100');
INSERT INTO `city` VALUES (2861, '445122', '饶平县', '445100');
INSERT INTO `city` VALUES (2862, '445201', '市辖区', '445200');
INSERT INTO `city` VALUES (2863, '445202', '榕城区', '445200');
INSERT INTO `city` VALUES (2864, '445221', '揭东县', '445200');
INSERT INTO `city` VALUES (2865, '445222', '揭西县', '445200');
INSERT INTO `city` VALUES (2866, '445224', '惠来县', '445200');
INSERT INTO `city` VALUES (2867, '445281', '普宁市', '445200');
INSERT INTO `city` VALUES (2868, '445301', '市辖区', '445300');
INSERT INTO `city` VALUES (2869, '445302', '云城区', '445300');
INSERT INTO `city` VALUES (2870, '445321', '新兴县', '445300');
INSERT INTO `city` VALUES (2871, '445322', '郁南县', '445300');
INSERT INTO `city` VALUES (2872, '445323', '云安县', '445300');
INSERT INTO `city` VALUES (2873, '445381', '罗定市', '445300');
INSERT INTO `city` VALUES (2874, '450101', '市辖区', '450100');
INSERT INTO `city` VALUES (2875, '450102', '兴宁区', '450100');
INSERT INTO `city` VALUES (2876, '450103', '青秀区', '450100');
INSERT INTO `city` VALUES (2877, '450105', '江南区', '450100');
INSERT INTO `city` VALUES (2878, '450107', '西乡塘区', '450100');
INSERT INTO `city` VALUES (2879, '450108', '良庆区', '450100');
INSERT INTO `city` VALUES (2880, '450109', '邕宁区', '450100');
INSERT INTO `city` VALUES (2881, '450122', '武鸣县', '450100');
INSERT INTO `city` VALUES (2882, '450123', '隆安县', '450100');
INSERT INTO `city` VALUES (2883, '450124', '马山县', '450100');
INSERT INTO `city` VALUES (2884, '450125', '上林县', '450100');
INSERT INTO `city` VALUES (2885, '450126', '宾阳县', '450100');
INSERT INTO `city` VALUES (2886, '450127', '横　县', '450100');
INSERT INTO `city` VALUES (2887, '450201', '市辖区', '450200');
INSERT INTO `city` VALUES (2888, '450202', '城中区', '450200');
INSERT INTO `city` VALUES (2889, '450203', '鱼峰区', '450200');
INSERT INTO `city` VALUES (2890, '450204', '柳南区', '450200');
INSERT INTO `city` VALUES (2891, '450205', '柳北区', '450200');
INSERT INTO `city` VALUES (2892, '450221', '柳江县', '450200');
INSERT INTO `city` VALUES (2893, '450222', '柳城县', '450200');
INSERT INTO `city` VALUES (2894, '450223', '鹿寨县', '450200');
INSERT INTO `city` VALUES (2895, '450224', '融安县', '450200');
INSERT INTO `city` VALUES (2896, '450225', '融水苗族自治县', '450200');
INSERT INTO `city` VALUES (2897, '450226', '三江侗族自治县', '450200');
INSERT INTO `city` VALUES (2898, '450301', '市辖区', '450300');
INSERT INTO `city` VALUES (2899, '450302', '秀峰区', '450300');
INSERT INTO `city` VALUES (2900, '450303', '叠彩区', '450300');
INSERT INTO `city` VALUES (2901, '450304', '象山区', '450300');
INSERT INTO `city` VALUES (2902, '450305', '七星区', '450300');
INSERT INTO `city` VALUES (2903, '450311', '雁山区', '450300');
INSERT INTO `city` VALUES (2904, '450321', '阳朔县', '450300');
INSERT INTO `city` VALUES (2905, '450322', '临桂县', '450300');
INSERT INTO `city` VALUES (2906, '450323', '灵川县', '450300');
INSERT INTO `city` VALUES (2907, '450324', '全州县', '450300');
INSERT INTO `city` VALUES (2908, '450325', '兴安县', '450300');
INSERT INTO `city` VALUES (2909, '450326', '永福县', '450300');
INSERT INTO `city` VALUES (2910, '450327', '灌阳县', '450300');
INSERT INTO `city` VALUES (2911, '450328', '龙胜各族自治县', '450300');
INSERT INTO `city` VALUES (2912, '450329', '资源县', '450300');
INSERT INTO `city` VALUES (2913, '450330', '平乐县', '450300');
INSERT INTO `city` VALUES (2914, '450331', '荔蒲县', '450300');
INSERT INTO `city` VALUES (2915, '450332', '恭城瑶族自治县', '450300');
INSERT INTO `city` VALUES (2916, '450401', '市辖区', '450400');
INSERT INTO `city` VALUES (2917, '450403', '万秀区', '450400');
INSERT INTO `city` VALUES (2918, '450404', '蝶山区', '450400');
INSERT INTO `city` VALUES (2919, '450405', '长洲区', '450400');
INSERT INTO `city` VALUES (2920, '450421', '苍梧县', '450400');
INSERT INTO `city` VALUES (2921, '450422', '藤　县', '450400');
INSERT INTO `city` VALUES (2922, '450423', '蒙山县', '450400');
INSERT INTO `city` VALUES (2923, '450481', '岑溪市', '450400');
INSERT INTO `city` VALUES (2924, '450501', '市辖区', '450500');
INSERT INTO `city` VALUES (2925, '450502', '海城区', '450500');
INSERT INTO `city` VALUES (2926, '450503', '银海区', '450500');
INSERT INTO `city` VALUES (2927, '450512', '铁山港区', '450500');
INSERT INTO `city` VALUES (2928, '450521', '合浦县', '450500');
INSERT INTO `city` VALUES (2929, '450601', '市辖区', '450600');
INSERT INTO `city` VALUES (2930, '450602', '港口区', '450600');
INSERT INTO `city` VALUES (2931, '450603', '防城区', '450600');
INSERT INTO `city` VALUES (2932, '450621', '上思县', '450600');
INSERT INTO `city` VALUES (2933, '450681', '东兴市', '450600');
INSERT INTO `city` VALUES (2934, '450701', '市辖区', '450700');
INSERT INTO `city` VALUES (2935, '450702', '钦南区', '450700');
INSERT INTO `city` VALUES (2936, '450703', '钦北区', '450700');
INSERT INTO `city` VALUES (2937, '450721', '灵山县', '450700');
INSERT INTO `city` VALUES (2938, '450722', '浦北县', '450700');
INSERT INTO `city` VALUES (2939, '450801', '市辖区', '450800');
INSERT INTO `city` VALUES (2940, '450802', '港北区', '450800');
INSERT INTO `city` VALUES (2941, '450803', '港南区', '450800');
INSERT INTO `city` VALUES (2942, '450804', '覃塘区', '450800');
INSERT INTO `city` VALUES (2943, '450821', '平南县', '450800');
INSERT INTO `city` VALUES (2944, '450881', '桂平市', '450800');
INSERT INTO `city` VALUES (2945, '450901', '市辖区', '450900');
INSERT INTO `city` VALUES (2946, '450902', '玉州区', '450900');
INSERT INTO `city` VALUES (2947, '450921', '容　县', '450900');
INSERT INTO `city` VALUES (2948, '450922', '陆川县', '450900');
INSERT INTO `city` VALUES (2949, '450923', '博白县', '450900');
INSERT INTO `city` VALUES (2950, '450924', '兴业县', '450900');
INSERT INTO `city` VALUES (2951, '450981', '北流市', '450900');
INSERT INTO `city` VALUES (2952, '451001', '市辖区', '451000');
INSERT INTO `city` VALUES (2953, '451002', '右江区', '451000');
INSERT INTO `city` VALUES (2954, '451021', '田阳县', '451000');
INSERT INTO `city` VALUES (2955, '451022', '田东县', '451000');
INSERT INTO `city` VALUES (2956, '451023', '平果县', '451000');
INSERT INTO `city` VALUES (2957, '451024', '德保县', '451000');
INSERT INTO `city` VALUES (2958, '451025', '靖西县', '451000');
INSERT INTO `city` VALUES (2959, '451026', '那坡县', '451000');
INSERT INTO `city` VALUES (2960, '451027', '凌云县', '451000');
INSERT INTO `city` VALUES (2961, '451028', '乐业县', '451000');
INSERT INTO `city` VALUES (2962, '451029', '田林县', '451000');
INSERT INTO `city` VALUES (2963, '451030', '西林县', '451000');
INSERT INTO `city` VALUES (2964, '451031', '隆林各族自治县', '451000');
INSERT INTO `city` VALUES (2965, '451101', '市辖区', '451100');
INSERT INTO `city` VALUES (2966, '451102', '八步区', '451100');
INSERT INTO `city` VALUES (2967, '451121', '昭平县', '451100');
INSERT INTO `city` VALUES (2968, '451122', '钟山县', '451100');
INSERT INTO `city` VALUES (2969, '451123', '富川瑶族自治县', '451100');
INSERT INTO `city` VALUES (2970, '451201', '市辖区', '451200');
INSERT INTO `city` VALUES (2971, '451202', '金城江区', '451200');
INSERT INTO `city` VALUES (2972, '451221', '南丹县', '451200');
INSERT INTO `city` VALUES (2973, '451222', '天峨县', '451200');
INSERT INTO `city` VALUES (2974, '451223', '凤山县', '451200');
INSERT INTO `city` VALUES (2975, '451224', '东兰县', '451200');
INSERT INTO `city` VALUES (2976, '451225', '罗城仫佬族自治县', '451200');
INSERT INTO `city` VALUES (2977, '451226', '环江毛南族自治县', '451200');
INSERT INTO `city` VALUES (2978, '451227', '巴马瑶族自治县', '451200');
INSERT INTO `city` VALUES (2979, '451228', '都安瑶族自治县', '451200');
INSERT INTO `city` VALUES (2980, '451229', '大化瑶族自治县', '451200');
INSERT INTO `city` VALUES (2981, '451281', '宜州市', '451200');
INSERT INTO `city` VALUES (2982, '451301', '市辖区', '451300');
INSERT INTO `city` VALUES (2983, '451302', '兴宾区', '451300');
INSERT INTO `city` VALUES (2984, '451321', '忻城县', '451300');
INSERT INTO `city` VALUES (2985, '451322', '象州县', '451300');
INSERT INTO `city` VALUES (2986, '451323', '武宣县', '451300');
INSERT INTO `city` VALUES (2987, '451324', '金秀瑶族自治县', '451300');
INSERT INTO `city` VALUES (2988, '451381', '合山市', '451300');
INSERT INTO `city` VALUES (2989, '451401', '市辖区', '451400');
INSERT INTO `city` VALUES (2990, '451402', '江洲区', '451400');
INSERT INTO `city` VALUES (2991, '451421', '扶绥县', '451400');
INSERT INTO `city` VALUES (2992, '451422', '宁明县', '451400');
INSERT INTO `city` VALUES (2993, '451423', '龙州县', '451400');
INSERT INTO `city` VALUES (2994, '451424', '大新县', '451400');
INSERT INTO `city` VALUES (2995, '451425', '天等县', '451400');
INSERT INTO `city` VALUES (2996, '451481', '凭祥市', '451400');
INSERT INTO `city` VALUES (2997, '460101', '市辖区', '460100');
INSERT INTO `city` VALUES (2998, '460105', '秀英区', '460100');
INSERT INTO `city` VALUES (2999, '460106', '龙华区', '460100');
INSERT INTO `city` VALUES (3000, '460107', '琼山区', '460100');
INSERT INTO `city` VALUES (3001, '460108', '美兰区', '460100');
INSERT INTO `city` VALUES (3002, '460201', '市辖区', '460200');
INSERT INTO `city` VALUES (3003, '469001', '五指山市', '469000');
INSERT INTO `city` VALUES (3004, '469002', '琼海市', '469000');
INSERT INTO `city` VALUES (3005, '469003', '儋州市', '469000');
INSERT INTO `city` VALUES (3006, '469005', '文昌市', '469000');
INSERT INTO `city` VALUES (3007, '469006', '万宁市', '469000');
INSERT INTO `city` VALUES (3008, '469007', '东方市', '469000');
INSERT INTO `city` VALUES (3009, '469025', '定安县', '469000');
INSERT INTO `city` VALUES (3010, '469026', '屯昌县', '469000');
INSERT INTO `city` VALUES (3011, '469027', '澄迈县', '469000');
INSERT INTO `city` VALUES (3012, '469028', '临高县', '469000');
INSERT INTO `city` VALUES (3013, '469030', '白沙黎族自治县', '469000');
INSERT INTO `city` VALUES (3014, '469031', '昌江黎族自治县', '469000');
INSERT INTO `city` VALUES (3015, '469033', '乐东黎族自治县', '469000');
INSERT INTO `city` VALUES (3016, '469034', '陵水黎族自治县', '469000');
INSERT INTO `city` VALUES (3017, '469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `city` VALUES (3018, '469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `city` VALUES (3019, '469037', '西沙群岛', '469000');
INSERT INTO `city` VALUES (3020, '469038', '南沙群岛', '469000');
INSERT INTO `city` VALUES (3021, '469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `city` VALUES (3022, '500101', '万州区', '500100');
INSERT INTO `city` VALUES (3023, '500102', '涪陵区', '500100');
INSERT INTO `city` VALUES (3024, '500103', '渝中区', '500100');
INSERT INTO `city` VALUES (3025, '500104', '大渡口区', '500100');
INSERT INTO `city` VALUES (3026, '500105', '江北区', '500100');
INSERT INTO `city` VALUES (3027, '500106', '沙坪坝区', '500100');
INSERT INTO `city` VALUES (3028, '500107', '九龙坡区', '500100');
INSERT INTO `city` VALUES (3029, '500108', '南岸区', '500100');
INSERT INTO `city` VALUES (3030, '500109', '北碚区', '500100');
INSERT INTO `city` VALUES (3031, '500110', '万盛区', '500100');
INSERT INTO `city` VALUES (3032, '500111', '双桥区', '500100');
INSERT INTO `city` VALUES (3033, '500112', '渝北区', '500100');
INSERT INTO `city` VALUES (3034, '500113', '巴南区', '500100');
INSERT INTO `city` VALUES (3035, '500114', '黔江区', '500100');
INSERT INTO `city` VALUES (3036, '500115', '长寿区', '500100');
INSERT INTO `city` VALUES (3037, '500222', '綦江县', '500200');
INSERT INTO `city` VALUES (3038, '500223', '潼南县', '500200');
INSERT INTO `city` VALUES (3039, '500224', '铜梁县', '500200');
INSERT INTO `city` VALUES (3040, '500225', '大足县', '500200');
INSERT INTO `city` VALUES (3041, '500226', '荣昌县', '500200');
INSERT INTO `city` VALUES (3042, '500227', '璧山县', '500200');
INSERT INTO `city` VALUES (3043, '500228', '梁平县', '500200');
INSERT INTO `city` VALUES (3044, '500229', '城口县', '500200');
INSERT INTO `city` VALUES (3045, '500230', '丰都县', '500200');
INSERT INTO `city` VALUES (3046, '500231', '垫江县', '500200');
INSERT INTO `city` VALUES (3047, '500232', '武隆县', '500200');
INSERT INTO `city` VALUES (3048, '500233', '忠　县', '500200');
INSERT INTO `city` VALUES (3049, '500234', '开　县', '500200');
INSERT INTO `city` VALUES (3050, '500235', '云阳县', '500200');
INSERT INTO `city` VALUES (3051, '500236', '奉节县', '500200');
INSERT INTO `city` VALUES (3052, '500237', '巫山县', '500200');
INSERT INTO `city` VALUES (3053, '500238', '巫溪县', '500200');
INSERT INTO `city` VALUES (3054, '500240', '石柱土家族自治县', '500200');
INSERT INTO `city` VALUES (3055, '500241', '秀山土家族苗族自治县', '500200');
INSERT INTO `city` VALUES (3056, '500242', '酉阳土家族苗族自治县', '500200');
INSERT INTO `city` VALUES (3057, '500243', '彭水苗族土家族自治县', '500200');
INSERT INTO `city` VALUES (3058, '500381', '江津市', '500300');
INSERT INTO `city` VALUES (3059, '500382', '合川市', '500300');
INSERT INTO `city` VALUES (3060, '500383', '永川市', '500300');
INSERT INTO `city` VALUES (3061, '500384', '南川市', '500300');
INSERT INTO `city` VALUES (3062, '510101', '市辖区', '510100');
INSERT INTO `city` VALUES (3063, '510104', '锦江区', '510100');
INSERT INTO `city` VALUES (3064, '510105', '青羊区', '510100');
INSERT INTO `city` VALUES (3065, '510106', '金牛区', '510100');
INSERT INTO `city` VALUES (3066, '510107', '武侯区', '510100');
INSERT INTO `city` VALUES (3067, '510108', '成华区', '510100');
INSERT INTO `city` VALUES (3068, '510112', '龙泉驿区', '510100');
INSERT INTO `city` VALUES (3069, '510113', '青白江区', '510100');
INSERT INTO `city` VALUES (3070, '510114', '新都区', '510100');
INSERT INTO `city` VALUES (3071, '510115', '温江县', '510100');
INSERT INTO `city` VALUES (3072, '510121', '金堂县', '510100');
INSERT INTO `city` VALUES (3073, '510122', '双流县', '510100');
INSERT INTO `city` VALUES (3074, '510124', '郫　县', '510100');
INSERT INTO `city` VALUES (3075, '510129', '大邑县', '510100');
INSERT INTO `city` VALUES (3076, '510131', '蒲江县', '510100');
INSERT INTO `city` VALUES (3077, '510132', '新津县', '510100');
INSERT INTO `city` VALUES (3078, '510181', '都江堰市', '510100');
INSERT INTO `city` VALUES (3079, '510182', '彭州市', '510100');
INSERT INTO `city` VALUES (3080, '510183', '邛崃市', '510100');
INSERT INTO `city` VALUES (3081, '510184', '崇州市', '510100');
INSERT INTO `city` VALUES (3082, '510301', '市辖区', '510300');
INSERT INTO `city` VALUES (3083, '510302', '自流井区', '510300');
INSERT INTO `city` VALUES (3084, '510303', '贡井区', '510300');
INSERT INTO `city` VALUES (3085, '510304', '大安区', '510300');
INSERT INTO `city` VALUES (3086, '510311', '沿滩区', '510300');
INSERT INTO `city` VALUES (3087, '510321', '荣　县', '510300');
INSERT INTO `city` VALUES (3088, '510322', '富顺县', '510300');
INSERT INTO `city` VALUES (3089, '510401', '市辖区', '510400');
INSERT INTO `city` VALUES (3090, '510402', '东　区', '510400');
INSERT INTO `city` VALUES (3091, '510403', '西　区', '510400');
INSERT INTO `city` VALUES (3092, '510411', '仁和区', '510400');
INSERT INTO `city` VALUES (3093, '510421', '米易县', '510400');
INSERT INTO `city` VALUES (3094, '510422', '盐边县', '510400');
INSERT INTO `city` VALUES (3095, '510501', '市辖区', '510500');
INSERT INTO `city` VALUES (3096, '510502', '江阳区', '510500');
INSERT INTO `city` VALUES (3097, '510503', '纳溪区', '510500');
INSERT INTO `city` VALUES (3098, '510504', '龙马潭区', '510500');
INSERT INTO `city` VALUES (3099, '510521', '泸　县', '510500');
INSERT INTO `city` VALUES (3100, '510522', '合江县', '510500');
INSERT INTO `city` VALUES (3101, '510524', '叙永县', '510500');
INSERT INTO `city` VALUES (3102, '510525', '古蔺县', '510500');
INSERT INTO `city` VALUES (3103, '510601', '市辖区', '510600');
INSERT INTO `city` VALUES (3104, '510603', '旌阳区', '510600');
INSERT INTO `city` VALUES (3105, '510623', '中江县', '510600');
INSERT INTO `city` VALUES (3106, '510626', '罗江县', '510600');
INSERT INTO `city` VALUES (3107, '510681', '广汉市', '510600');
INSERT INTO `city` VALUES (3108, '510682', '什邡市', '510600');
INSERT INTO `city` VALUES (3109, '510683', '绵竹市', '510600');
INSERT INTO `city` VALUES (3110, '510701', '市辖区', '510700');
INSERT INTO `city` VALUES (3111, '510703', '涪城区', '510700');
INSERT INTO `city` VALUES (3112, '510704', '游仙区', '510700');
INSERT INTO `city` VALUES (3113, '510722', '三台县', '510700');
INSERT INTO `city` VALUES (3114, '510723', '盐亭县', '510700');
INSERT INTO `city` VALUES (3115, '510724', '安　县', '510700');
INSERT INTO `city` VALUES (3116, '510725', '梓潼县', '510700');
INSERT INTO `city` VALUES (3117, '510726', '北川羌族自治县', '510700');
INSERT INTO `city` VALUES (3118, '510727', '平武县', '510700');
INSERT INTO `city` VALUES (3119, '510781', '江油市', '510700');
INSERT INTO `city` VALUES (3120, '510801', '市辖区', '510800');
INSERT INTO `city` VALUES (3121, '510802', '市中区', '510800');
INSERT INTO `city` VALUES (3122, '510811', '元坝区', '510800');
INSERT INTO `city` VALUES (3123, '510812', '朝天区', '510800');
INSERT INTO `city` VALUES (3124, '510821', '旺苍县', '510800');
INSERT INTO `city` VALUES (3125, '510822', '青川县', '510800');
INSERT INTO `city` VALUES (3126, '510823', '剑阁县', '510800');
INSERT INTO `city` VALUES (3127, '510824', '苍溪县', '510800');
INSERT INTO `city` VALUES (3128, '510901', '市辖区', '510900');
INSERT INTO `city` VALUES (3129, '510903', '船山区', '510900');
INSERT INTO `city` VALUES (3130, '510904', '安居区', '510900');
INSERT INTO `city` VALUES (3131, '510921', '蓬溪县', '510900');
INSERT INTO `city` VALUES (3132, '510922', '射洪县', '510900');
INSERT INTO `city` VALUES (3133, '510923', '大英县', '510900');
INSERT INTO `city` VALUES (3134, '511001', '市辖区', '511000');
INSERT INTO `city` VALUES (3135, '511002', '市中区', '511000');
INSERT INTO `city` VALUES (3136, '511011', '东兴区', '511000');
INSERT INTO `city` VALUES (3137, '511024', '威远县', '511000');
INSERT INTO `city` VALUES (3138, '511025', '资中县', '511000');
INSERT INTO `city` VALUES (3139, '511028', '隆昌县', '511000');
INSERT INTO `city` VALUES (3140, '511101', '市辖区', '511100');
INSERT INTO `city` VALUES (3141, '511102', '市中区', '511100');
INSERT INTO `city` VALUES (3142, '511111', '沙湾区', '511100');
INSERT INTO `city` VALUES (3143, '511112', '五通桥区', '511100');
INSERT INTO `city` VALUES (3144, '511113', '金口河区', '511100');
INSERT INTO `city` VALUES (3145, '511123', '犍为县', '511100');
INSERT INTO `city` VALUES (3146, '511124', '井研县', '511100');
INSERT INTO `city` VALUES (3147, '511126', '夹江县', '511100');
INSERT INTO `city` VALUES (3148, '511129', '沐川县', '511100');
INSERT INTO `city` VALUES (3149, '511132', '峨边彝族自治县', '511100');
INSERT INTO `city` VALUES (3150, '511133', '马边彝族自治县', '511100');
INSERT INTO `city` VALUES (3151, '511181', '峨眉山市', '511100');
INSERT INTO `city` VALUES (3152, '511301', '市辖区', '511300');
INSERT INTO `city` VALUES (3153, '511302', '顺庆区', '511300');
INSERT INTO `city` VALUES (3154, '511303', '高坪区', '511300');
INSERT INTO `city` VALUES (3155, '511304', '嘉陵区', '511300');
INSERT INTO `city` VALUES (3156, '511321', '南部县', '511300');
INSERT INTO `city` VALUES (3157, '511322', '营山县', '511300');
INSERT INTO `city` VALUES (3158, '511323', '蓬安县', '511300');
INSERT INTO `city` VALUES (3159, '511324', '仪陇县', '511300');
INSERT INTO `city` VALUES (3160, '511325', '西充县', '511300');
INSERT INTO `city` VALUES (3161, '511381', '阆中市', '511300');
INSERT INTO `city` VALUES (3162, '511401', '市辖区', '511400');
INSERT INTO `city` VALUES (3163, '511402', '东坡区', '511400');
INSERT INTO `city` VALUES (3164, '511421', '仁寿县', '511400');
INSERT INTO `city` VALUES (3165, '511422', '彭山县', '511400');
INSERT INTO `city` VALUES (3166, '511423', '洪雅县', '511400');
INSERT INTO `city` VALUES (3167, '511424', '丹棱县', '511400');
INSERT INTO `city` VALUES (3168, '511425', '青神县', '511400');
INSERT INTO `city` VALUES (3169, '511501', '市辖区', '511500');
INSERT INTO `city` VALUES (3170, '511502', '翠屏区', '511500');
INSERT INTO `city` VALUES (3171, '511521', '宜宾县', '511500');
INSERT INTO `city` VALUES (3172, '511522', '南溪县', '511500');
INSERT INTO `city` VALUES (3173, '511523', '江安县', '511500');
INSERT INTO `city` VALUES (3174, '511524', '长宁县', '511500');
INSERT INTO `city` VALUES (3175, '511525', '高　县', '511500');
INSERT INTO `city` VALUES (3176, '511526', '珙　县', '511500');
INSERT INTO `city` VALUES (3177, '511527', '筠连县', '511500');
INSERT INTO `city` VALUES (3178, '511528', '兴文县', '511500');
INSERT INTO `city` VALUES (3179, '511529', '屏山县', '511500');
INSERT INTO `city` VALUES (3180, '511601', '市辖区', '511600');
INSERT INTO `city` VALUES (3181, '511602', '广安区', '511600');
INSERT INTO `city` VALUES (3182, '511621', '岳池县', '511600');
INSERT INTO `city` VALUES (3183, '511622', '武胜县', '511600');
INSERT INTO `city` VALUES (3184, '511623', '邻水县', '511600');
INSERT INTO `city` VALUES (3185, '511681', '华莹市', '511600');
INSERT INTO `city` VALUES (3186, '511701', '市辖区', '511700');
INSERT INTO `city` VALUES (3187, '511702', '通川区', '511700');
INSERT INTO `city` VALUES (3188, '511721', '达　县', '511700');
INSERT INTO `city` VALUES (3189, '511722', '宣汉县', '511700');
INSERT INTO `city` VALUES (3190, '511723', '开江县', '511700');
INSERT INTO `city` VALUES (3191, '511724', '大竹县', '511700');
INSERT INTO `city` VALUES (3192, '511725', '渠　县', '511700');
INSERT INTO `city` VALUES (3193, '511781', '万源市', '511700');
INSERT INTO `city` VALUES (3194, '511801', '市辖区', '511800');
INSERT INTO `city` VALUES (3195, '511802', '雨城区', '511800');
INSERT INTO `city` VALUES (3196, '511821', '名山县', '511800');
INSERT INTO `city` VALUES (3197, '511822', '荥经县', '511800');
INSERT INTO `city` VALUES (3198, '511823', '汉源县', '511800');
INSERT INTO `city` VALUES (3199, '511824', '石棉县', '511800');
INSERT INTO `city` VALUES (3200, '511825', '天全县', '511800');
INSERT INTO `city` VALUES (3201, '511826', '芦山县', '511800');
INSERT INTO `city` VALUES (3202, '511827', '宝兴县', '511800');
INSERT INTO `city` VALUES (3203, '511901', '市辖区', '511900');
INSERT INTO `city` VALUES (3204, '511902', '巴州区', '511900');
INSERT INTO `city` VALUES (3205, '511921', '通江县', '511900');
INSERT INTO `city` VALUES (3206, '511922', '南江县', '511900');
INSERT INTO `city` VALUES (3207, '511923', '平昌县', '511900');
INSERT INTO `city` VALUES (3208, '512001', '市辖区', '512000');
INSERT INTO `city` VALUES (3209, '512002', '雁江区', '512000');
INSERT INTO `city` VALUES (3210, '512021', '安岳县', '512000');
INSERT INTO `city` VALUES (3211, '512022', '乐至县', '512000');
INSERT INTO `city` VALUES (3212, '512081', '简阳市', '512000');
INSERT INTO `city` VALUES (3213, '513221', '汶川县', '513200');
INSERT INTO `city` VALUES (3214, '513222', '理　县', '513200');
INSERT INTO `city` VALUES (3215, '513223', '茂　县', '513200');
INSERT INTO `city` VALUES (3216, '513224', '松潘县', '513200');
INSERT INTO `city` VALUES (3217, '513225', '九寨沟县', '513200');
INSERT INTO `city` VALUES (3218, '513226', '金川县', '513200');
INSERT INTO `city` VALUES (3219, '513227', '小金县', '513200');
INSERT INTO `city` VALUES (3220, '513228', '黑水县', '513200');
INSERT INTO `city` VALUES (3221, '513229', '马尔康县', '513200');
INSERT INTO `city` VALUES (3222, '513230', '壤塘县', '513200');
INSERT INTO `city` VALUES (3223, '513231', '阿坝县', '513200');
INSERT INTO `city` VALUES (3224, '513232', '若尔盖县', '513200');
INSERT INTO `city` VALUES (3225, '513233', '红原县', '513200');
INSERT INTO `city` VALUES (3226, '513321', '康定县', '513300');
INSERT INTO `city` VALUES (3227, '513322', '泸定县', '513300');
INSERT INTO `city` VALUES (3228, '513323', '丹巴县', '513300');
INSERT INTO `city` VALUES (3229, '513324', '九龙县', '513300');
INSERT INTO `city` VALUES (3230, '513325', '雅江县', '513300');
INSERT INTO `city` VALUES (3231, '513326', '道孚县', '513300');
INSERT INTO `city` VALUES (3232, '513327', '炉霍县', '513300');
INSERT INTO `city` VALUES (3233, '513328', '甘孜县', '513300');
INSERT INTO `city` VALUES (3234, '513329', '新龙县', '513300');
INSERT INTO `city` VALUES (3235, '513330', '德格县', '513300');
INSERT INTO `city` VALUES (3236, '513331', '白玉县', '513300');
INSERT INTO `city` VALUES (3237, '513332', '石渠县', '513300');
INSERT INTO `city` VALUES (3238, '513333', '色达县', '513300');
INSERT INTO `city` VALUES (3239, '513334', '理塘县', '513300');
INSERT INTO `city` VALUES (3240, '513335', '巴塘县', '513300');
INSERT INTO `city` VALUES (3241, '513336', '乡城县', '513300');
INSERT INTO `city` VALUES (3242, '513337', '稻城县', '513300');
INSERT INTO `city` VALUES (3243, '513338', '得荣县', '513300');
INSERT INTO `city` VALUES (3244, '513401', '西昌市', '513400');
INSERT INTO `city` VALUES (3245, '513422', '木里藏族自治县', '513400');
INSERT INTO `city` VALUES (3246, '513423', '盐源县', '513400');
INSERT INTO `city` VALUES (3247, '513424', '德昌县', '513400');
INSERT INTO `city` VALUES (3248, '513425', '会理县', '513400');
INSERT INTO `city` VALUES (3249, '513426', '会东县', '513400');
INSERT INTO `city` VALUES (3250, '513427', '宁南县', '513400');
INSERT INTO `city` VALUES (3251, '513428', '普格县', '513400');
INSERT INTO `city` VALUES (3252, '513429', '布拖县', '513400');
INSERT INTO `city` VALUES (3253, '513430', '金阳县', '513400');
INSERT INTO `city` VALUES (3254, '513431', '昭觉县', '513400');
INSERT INTO `city` VALUES (3255, '513432', '喜德县', '513400');
INSERT INTO `city` VALUES (3256, '513433', '冕宁县', '513400');
INSERT INTO `city` VALUES (3257, '513434', '越西县', '513400');
INSERT INTO `city` VALUES (3258, '513435', '甘洛县', '513400');
INSERT INTO `city` VALUES (3259, '513436', '美姑县', '513400');
INSERT INTO `city` VALUES (3260, '513437', '雷波县', '513400');
INSERT INTO `city` VALUES (3261, '520101', '市辖区', '520100');
INSERT INTO `city` VALUES (3262, '520102', '南明区', '520100');
INSERT INTO `city` VALUES (3263, '520103', '云岩区', '520100');
INSERT INTO `city` VALUES (3264, '520111', '花溪区', '520100');
INSERT INTO `city` VALUES (3265, '520112', '乌当区', '520100');
INSERT INTO `city` VALUES (3266, '520113', '白云区', '520100');
INSERT INTO `city` VALUES (3267, '520114', '小河区', '520100');
INSERT INTO `city` VALUES (3268, '520121', '开阳县', '520100');
INSERT INTO `city` VALUES (3269, '520122', '息烽县', '520100');
INSERT INTO `city` VALUES (3270, '520123', '修文县', '520100');
INSERT INTO `city` VALUES (3271, '520181', '清镇市', '520100');
INSERT INTO `city` VALUES (3272, '520201', '钟山区', '520200');
INSERT INTO `city` VALUES (3273, '520203', '六枝特区', '520200');
INSERT INTO `city` VALUES (3274, '520221', '水城县', '520200');
INSERT INTO `city` VALUES (3275, '520222', '盘　县', '520200');
INSERT INTO `city` VALUES (3276, '520301', '市辖区', '520300');
INSERT INTO `city` VALUES (3277, '520302', '红花岗区', '520300');
INSERT INTO `city` VALUES (3278, '520303', '汇川区', '520300');
INSERT INTO `city` VALUES (3279, '520321', '遵义县', '520300');
INSERT INTO `city` VALUES (3280, '520322', '桐梓县', '520300');
INSERT INTO `city` VALUES (3281, '520323', '绥阳县', '520300');
INSERT INTO `city` VALUES (3282, '520324', '正安县', '520300');
INSERT INTO `city` VALUES (3283, '520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `city` VALUES (3284, '520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `city` VALUES (3285, '520327', '凤冈县', '520300');
INSERT INTO `city` VALUES (3286, '520328', '湄潭县', '520300');
INSERT INTO `city` VALUES (3287, '520329', '余庆县', '520300');
INSERT INTO `city` VALUES (3288, '520330', '习水县', '520300');
INSERT INTO `city` VALUES (3289, '520381', '赤水市', '520300');
INSERT INTO `city` VALUES (3290, '520382', '仁怀市', '520300');
INSERT INTO `city` VALUES (3291, '520401', '市辖区', '520400');
INSERT INTO `city` VALUES (3292, '520402', '西秀区', '520400');
INSERT INTO `city` VALUES (3293, '520421', '平坝县', '520400');
INSERT INTO `city` VALUES (3294, '520422', '普定县', '520400');
INSERT INTO `city` VALUES (3295, '520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `city` VALUES (3296, '520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `city` VALUES (3297, '520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `city` VALUES (3298, '522201', '铜仁市', '522200');
INSERT INTO `city` VALUES (3299, '522222', '江口县', '522200');
INSERT INTO `city` VALUES (3300, '522223', '玉屏侗族自治县', '522200');
INSERT INTO `city` VALUES (3301, '522224', '石阡县', '522200');
INSERT INTO `city` VALUES (3302, '522225', '思南县', '522200');
INSERT INTO `city` VALUES (3303, '522226', '印江土家族苗族自治县', '522200');
INSERT INTO `city` VALUES (3304, '522227', '德江县', '522200');
INSERT INTO `city` VALUES (3305, '522228', '沿河土家族自治县', '522200');
INSERT INTO `city` VALUES (3306, '522229', '松桃苗族自治县', '522200');
INSERT INTO `city` VALUES (3307, '522230', '万山特区', '522200');
INSERT INTO `city` VALUES (3308, '522301', '兴义市', '522300');
INSERT INTO `city` VALUES (3309, '522322', '兴仁县', '522300');
INSERT INTO `city` VALUES (3310, '522323', '普安县', '522300');
INSERT INTO `city` VALUES (3311, '522324', '晴隆县', '522300');
INSERT INTO `city` VALUES (3312, '522325', '贞丰县', '522300');
INSERT INTO `city` VALUES (3313, '522326', '望谟县', '522300');
INSERT INTO `city` VALUES (3314, '522327', '册亨县', '522300');
INSERT INTO `city` VALUES (3315, '522328', '安龙县', '522300');
INSERT INTO `city` VALUES (3316, '522401', '毕节市', '522400');
INSERT INTO `city` VALUES (3317, '522422', '大方县', '522400');
INSERT INTO `city` VALUES (3318, '522423', '黔西县', '522400');
INSERT INTO `city` VALUES (3319, '522424', '金沙县', '522400');
INSERT INTO `city` VALUES (3320, '522425', '织金县', '522400');
INSERT INTO `city` VALUES (3321, '522426', '纳雍县', '522400');
INSERT INTO `city` VALUES (3322, '522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `city` VALUES (3323, '522428', '赫章县', '522400');
INSERT INTO `city` VALUES (3324, '522601', '凯里市', '522600');
INSERT INTO `city` VALUES (3325, '522622', '黄平县', '522600');
INSERT INTO `city` VALUES (3326, '522623', '施秉县', '522600');
INSERT INTO `city` VALUES (3327, '522624', '三穗县', '522600');
INSERT INTO `city` VALUES (3328, '522625', '镇远县', '522600');
INSERT INTO `city` VALUES (3329, '522626', '岑巩县', '522600');
INSERT INTO `city` VALUES (3330, '522627', '天柱县', '522600');
INSERT INTO `city` VALUES (3331, '522628', '锦屏县', '522600');
INSERT INTO `city` VALUES (3332, '522629', '剑河县', '522600');
INSERT INTO `city` VALUES (3333, '522630', '台江县', '522600');
INSERT INTO `city` VALUES (3334, '522631', '黎平县', '522600');
INSERT INTO `city` VALUES (3335, '522632', '榕江县', '522600');
INSERT INTO `city` VALUES (3336, '522633', '从江县', '522600');
INSERT INTO `city` VALUES (3337, '522634', '雷山县', '522600');
INSERT INTO `city` VALUES (3338, '522635', '麻江县', '522600');
INSERT INTO `city` VALUES (3339, '522636', '丹寨县', '522600');
INSERT INTO `city` VALUES (3340, '522701', '都匀市', '522700');
INSERT INTO `city` VALUES (3341, '522702', '福泉市', '522700');
INSERT INTO `city` VALUES (3342, '522722', '荔波县', '522700');
INSERT INTO `city` VALUES (3343, '522723', '贵定县', '522700');
INSERT INTO `city` VALUES (3344, '522725', '瓮安县', '522700');
INSERT INTO `city` VALUES (3345, '522726', '独山县', '522700');
INSERT INTO `city` VALUES (3346, '522727', '平塘县', '522700');
INSERT INTO `city` VALUES (3347, '522728', '罗甸县', '522700');
INSERT INTO `city` VALUES (3348, '522729', '长顺县', '522700');
INSERT INTO `city` VALUES (3349, '522730', '龙里县', '522700');
INSERT INTO `city` VALUES (3350, '522731', '惠水县', '522700');
INSERT INTO `city` VALUES (3351, '522732', '三都水族自治县', '522700');
INSERT INTO `city` VALUES (3352, '530101', '市辖区', '530100');
INSERT INTO `city` VALUES (3353, '530102', '五华区', '530100');
INSERT INTO `city` VALUES (3354, '530103', '盘龙区', '530100');
INSERT INTO `city` VALUES (3355, '530111', '官渡区', '530100');
INSERT INTO `city` VALUES (3356, '530112', '西山区', '530100');
INSERT INTO `city` VALUES (3357, '530113', '东川区', '530100');
INSERT INTO `city` VALUES (3358, '530121', '呈贡县', '530100');
INSERT INTO `city` VALUES (3359, '530122', '晋宁县', '530100');
INSERT INTO `city` VALUES (3360, '530124', '富民县', '530100');
INSERT INTO `city` VALUES (3361, '530125', '宜良县', '530100');
INSERT INTO `city` VALUES (3362, '530126', '石林彝族自治县', '530100');
INSERT INTO `city` VALUES (3363, '530127', '嵩明县', '530100');
INSERT INTO `city` VALUES (3364, '530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `city` VALUES (3365, '530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `city` VALUES (3366, '530181', '安宁市', '530100');
INSERT INTO `city` VALUES (3367, '530301', '市辖区', '530300');
INSERT INTO `city` VALUES (3368, '530302', '麒麟区', '530300');
INSERT INTO `city` VALUES (3369, '530321', '马龙县', '530300');
INSERT INTO `city` VALUES (3370, '530322', '陆良县', '530300');
INSERT INTO `city` VALUES (3371, '530323', '师宗县', '530300');
INSERT INTO `city` VALUES (3372, '530324', '罗平县', '530300');
INSERT INTO `city` VALUES (3373, '530325', '富源县', '530300');
INSERT INTO `city` VALUES (3374, '530326', '会泽县', '530300');
INSERT INTO `city` VALUES (3375, '530328', '沾益县', '530300');
INSERT INTO `city` VALUES (3376, '530381', '宣威市', '530300');
INSERT INTO `city` VALUES (3377, '530401', '市辖区', '530400');
INSERT INTO `city` VALUES (3378, '530402', '红塔区', '530400');
INSERT INTO `city` VALUES (3379, '530421', '江川县', '530400');
INSERT INTO `city` VALUES (3380, '530422', '澄江县', '530400');
INSERT INTO `city` VALUES (3381, '530423', '通海县', '530400');
INSERT INTO `city` VALUES (3382, '530424', '华宁县', '530400');
INSERT INTO `city` VALUES (3383, '530425', '易门县', '530400');
INSERT INTO `city` VALUES (3384, '530426', '峨山彝族自治县', '530400');
INSERT INTO `city` VALUES (3385, '530427', '新平彝族傣族自治县', '530400');
INSERT INTO `city` VALUES (3386, '530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `city` VALUES (3387, '530501', '市辖区', '530500');
INSERT INTO `city` VALUES (3388, '530502', '隆阳区', '530500');
INSERT INTO `city` VALUES (3389, '530521', '施甸县', '530500');
INSERT INTO `city` VALUES (3390, '530522', '腾冲县', '530500');
INSERT INTO `city` VALUES (3391, '530523', '龙陵县', '530500');
INSERT INTO `city` VALUES (3392, '530524', '昌宁县', '530500');
INSERT INTO `city` VALUES (3393, '530601', '市辖区', '530600');
INSERT INTO `city` VALUES (3394, '530602', '昭阳区', '530600');
INSERT INTO `city` VALUES (3395, '530621', '鲁甸县', '530600');
INSERT INTO `city` VALUES (3396, '530622', '巧家县', '530600');
INSERT INTO `city` VALUES (3397, '530623', '盐津县', '530600');
INSERT INTO `city` VALUES (3398, '530624', '大关县', '530600');
INSERT INTO `city` VALUES (3399, '530625', '永善县', '530600');
INSERT INTO `city` VALUES (3400, '530626', '绥江县', '530600');
INSERT INTO `city` VALUES (3401, '530627', '镇雄县', '530600');
INSERT INTO `city` VALUES (3402, '530628', '彝良县', '530600');
INSERT INTO `city` VALUES (3403, '530629', '威信县', '530600');
INSERT INTO `city` VALUES (3404, '530630', '水富县', '530600');
INSERT INTO `city` VALUES (3405, '530701', '市辖区', '530700');
INSERT INTO `city` VALUES (3406, '530702', '古城区', '530700');
INSERT INTO `city` VALUES (3407, '530721', '玉龙纳西族自治县', '530700');
INSERT INTO `city` VALUES (3408, '530722', '永胜县', '530700');
INSERT INTO `city` VALUES (3409, '530723', '华坪县', '530700');
INSERT INTO `city` VALUES (3410, '530724', '宁蒗彝族自治县', '530700');
INSERT INTO `city` VALUES (3411, '530801', '市辖区', '530800');
INSERT INTO `city` VALUES (3412, '530802', '翠云区', '530800');
INSERT INTO `city` VALUES (3413, '530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `city` VALUES (3414, '530822', '墨江哈尼族自治县', '530800');
INSERT INTO `city` VALUES (3415, '530823', '景东彝族自治县', '530800');
INSERT INTO `city` VALUES (3416, '530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `city` VALUES (3417, '530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `city` VALUES (3418, '530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `city` VALUES (3419, '530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `city` VALUES (3420, '530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `city` VALUES (3421, '530829', '西盟佤族自治县', '530800');
INSERT INTO `city` VALUES (3422, '530901', '市辖区', '530900');
INSERT INTO `city` VALUES (3423, '530902', '临翔区', '530900');
INSERT INTO `city` VALUES (3424, '530921', '凤庆县', '530900');
INSERT INTO `city` VALUES (3425, '530922', '云　县', '530900');
INSERT INTO `city` VALUES (3426, '530923', '永德县', '530900');
INSERT INTO `city` VALUES (3427, '530924', '镇康县', '530900');
INSERT INTO `city` VALUES (3428, '530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `city` VALUES (3429, '530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `city` VALUES (3430, '530927', '沧源佤族自治县', '530900');
INSERT INTO `city` VALUES (3431, '532301', '楚雄市', '532300');
INSERT INTO `city` VALUES (3432, '532322', '双柏县', '532300');
INSERT INTO `city` VALUES (3433, '532323', '牟定县', '532300');
INSERT INTO `city` VALUES (3434, '532324', '南华县', '532300');
INSERT INTO `city` VALUES (3435, '532325', '姚安县', '532300');
INSERT INTO `city` VALUES (3436, '532326', '大姚县', '532300');
INSERT INTO `city` VALUES (3437, '532327', '永仁县', '532300');
INSERT INTO `city` VALUES (3438, '532328', '元谋县', '532300');
INSERT INTO `city` VALUES (3439, '532329', '武定县', '532300');
INSERT INTO `city` VALUES (3440, '532331', '禄丰县', '532300');
INSERT INTO `city` VALUES (3441, '532501', '个旧市', '532500');
INSERT INTO `city` VALUES (3442, '532502', '开远市', '532500');
INSERT INTO `city` VALUES (3443, '532522', '蒙自县', '532500');
INSERT INTO `city` VALUES (3444, '532523', '屏边苗族自治县', '532500');
INSERT INTO `city` VALUES (3445, '532524', '建水县', '532500');
INSERT INTO `city` VALUES (3446, '532525', '石屏县', '532500');
INSERT INTO `city` VALUES (3447, '532526', '弥勒县', '532500');
INSERT INTO `city` VALUES (3448, '532527', '泸西县', '532500');
INSERT INTO `city` VALUES (3449, '532528', '元阳县', '532500');
INSERT INTO `city` VALUES (3450, '532529', '红河县', '532500');
INSERT INTO `city` VALUES (3451, '532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `city` VALUES (3452, '532531', '绿春县', '532500');
INSERT INTO `city` VALUES (3453, '532532', '河口瑶族自治县', '532500');
INSERT INTO `city` VALUES (3454, '532621', '文山县', '532600');
INSERT INTO `city` VALUES (3455, '532622', '砚山县', '532600');
INSERT INTO `city` VALUES (3456, '532623', '西畴县', '532600');
INSERT INTO `city` VALUES (3457, '532624', '麻栗坡县', '532600');
INSERT INTO `city` VALUES (3458, '532625', '马关县', '532600');
INSERT INTO `city` VALUES (3459, '532626', '丘北县', '532600');
INSERT INTO `city` VALUES (3460, '532627', '广南县', '532600');
INSERT INTO `city` VALUES (3461, '532628', '富宁县', '532600');
INSERT INTO `city` VALUES (3462, '532801', '景洪市', '532800');
INSERT INTO `city` VALUES (3463, '532822', '勐海县', '532800');
INSERT INTO `city` VALUES (3464, '532823', '勐腊县', '532800');
INSERT INTO `city` VALUES (3465, '532901', '大理市', '532900');
INSERT INTO `city` VALUES (3466, '532922', '漾濞彝族自治县', '532900');
INSERT INTO `city` VALUES (3467, '532923', '祥云县', '532900');
INSERT INTO `city` VALUES (3468, '532924', '宾川县', '532900');
INSERT INTO `city` VALUES (3469, '532925', '弥渡县', '532900');
INSERT INTO `city` VALUES (3470, '532926', '南涧彝族自治县', '532900');
INSERT INTO `city` VALUES (3471, '532927', '巍山彝族回族自治县', '532900');
INSERT INTO `city` VALUES (3472, '532928', '永平县', '532900');
INSERT INTO `city` VALUES (3473, '532929', '云龙县', '532900');
INSERT INTO `city` VALUES (3474, '532930', '洱源县', '532900');
INSERT INTO `city` VALUES (3475, '532931', '剑川县', '532900');
INSERT INTO `city` VALUES (3476, '532932', '鹤庆县', '532900');
INSERT INTO `city` VALUES (3477, '533102', '瑞丽市', '533100');
INSERT INTO `city` VALUES (3478, '533103', '潞西市', '533100');
INSERT INTO `city` VALUES (3479, '533122', '梁河县', '533100');
INSERT INTO `city` VALUES (3480, '533123', '盈江县', '533100');
INSERT INTO `city` VALUES (3481, '533124', '陇川县', '533100');
INSERT INTO `city` VALUES (3482, '533321', '泸水县', '533300');
INSERT INTO `city` VALUES (3483, '533323', '福贡县', '533300');
INSERT INTO `city` VALUES (3484, '533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `city` VALUES (3485, '533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `city` VALUES (3486, '533421', '香格里拉县', '533400');
INSERT INTO `city` VALUES (3487, '533422', '德钦县', '533400');
INSERT INTO `city` VALUES (3488, '533423', '维西傈僳族自治县', '533400');
INSERT INTO `city` VALUES (3489, '540101', '市辖区', '540100');
INSERT INTO `city` VALUES (3490, '540102', '城关区', '540100');
INSERT INTO `city` VALUES (3491, '540121', '林周县', '540100');
INSERT INTO `city` VALUES (3492, '540122', '当雄县', '540100');
INSERT INTO `city` VALUES (3493, '540123', '尼木县', '540100');
INSERT INTO `city` VALUES (3494, '540124', '曲水县', '540100');
INSERT INTO `city` VALUES (3495, '540125', '堆龙德庆县', '540100');
INSERT INTO `city` VALUES (3496, '540126', '达孜县', '540100');
INSERT INTO `city` VALUES (3497, '540127', '墨竹工卡县', '540100');
INSERT INTO `city` VALUES (3498, '542121', '昌都县', '542100');
INSERT INTO `city` VALUES (3499, '542122', '江达县', '542100');
INSERT INTO `city` VALUES (3500, '542123', '贡觉县', '542100');
INSERT INTO `city` VALUES (3501, '542124', '类乌齐县', '542100');
INSERT INTO `city` VALUES (3502, '542125', '丁青县', '542100');
INSERT INTO `city` VALUES (3503, '542126', '察雅县', '542100');
INSERT INTO `city` VALUES (3504, '542127', '八宿县', '542100');
INSERT INTO `city` VALUES (3505, '542128', '左贡县', '542100');
INSERT INTO `city` VALUES (3506, '542129', '芒康县', '542100');
INSERT INTO `city` VALUES (3507, '542132', '洛隆县', '542100');
INSERT INTO `city` VALUES (3508, '542133', '边坝县', '542100');
INSERT INTO `city` VALUES (3509, '542221', '乃东县', '542200');
INSERT INTO `city` VALUES (3510, '542222', '扎囊县', '542200');
INSERT INTO `city` VALUES (3511, '542223', '贡嘎县', '542200');
INSERT INTO `city` VALUES (3512, '542224', '桑日县', '542200');
INSERT INTO `city` VALUES (3513, '542225', '琼结县', '542200');
INSERT INTO `city` VALUES (3514, '542226', '曲松县', '542200');
INSERT INTO `city` VALUES (3515, '542227', '措美县', '542200');
INSERT INTO `city` VALUES (3516, '542228', '洛扎县', '542200');
INSERT INTO `city` VALUES (3517, '542229', '加查县', '542200');
INSERT INTO `city` VALUES (3518, '542231', '隆子县', '542200');
INSERT INTO `city` VALUES (3519, '542232', '错那县', '542200');
INSERT INTO `city` VALUES (3520, '542233', '浪卡子县', '542200');
INSERT INTO `city` VALUES (3521, '542301', '日喀则市', '542300');
INSERT INTO `city` VALUES (3522, '542322', '南木林县', '542300');
INSERT INTO `city` VALUES (3523, '542323', '江孜县', '542300');
INSERT INTO `city` VALUES (3524, '542324', '定日县', '542300');
INSERT INTO `city` VALUES (3525, '542325', '萨迦县', '542300');
INSERT INTO `city` VALUES (3526, '542326', '拉孜县', '542300');
INSERT INTO `city` VALUES (3527, '542327', '昂仁县', '542300');
INSERT INTO `city` VALUES (3528, '542328', '谢通门县', '542300');
INSERT INTO `city` VALUES (3529, '542329', '白朗县', '542300');
INSERT INTO `city` VALUES (3530, '542330', '仁布县', '542300');
INSERT INTO `city` VALUES (3531, '542331', '康马县', '542300');
INSERT INTO `city` VALUES (3532, '542332', '定结县', '542300');
INSERT INTO `city` VALUES (3533, '542333', '仲巴县', '542300');
INSERT INTO `city` VALUES (3534, '542334', '亚东县', '542300');
INSERT INTO `city` VALUES (3535, '542335', '吉隆县', '542300');
INSERT INTO `city` VALUES (3536, '542336', '聂拉木县', '542300');
INSERT INTO `city` VALUES (3537, '542337', '萨嘎县', '542300');
INSERT INTO `city` VALUES (3538, '542338', '岗巴县', '542300');
INSERT INTO `city` VALUES (3539, '542421', '那曲县', '542400');
INSERT INTO `city` VALUES (3540, '542422', '嘉黎县', '542400');
INSERT INTO `city` VALUES (3541, '542423', '比如县', '542400');
INSERT INTO `city` VALUES (3542, '542424', '聂荣县', '542400');
INSERT INTO `city` VALUES (3543, '542425', '安多县', '542400');
INSERT INTO `city` VALUES (3544, '542426', '申扎县', '542400');
INSERT INTO `city` VALUES (3545, '542427', '索　县', '542400');
INSERT INTO `city` VALUES (3546, '542428', '班戈县', '542400');
INSERT INTO `city` VALUES (3547, '542429', '巴青县', '542400');
INSERT INTO `city` VALUES (3548, '542430', '尼玛县', '542400');
INSERT INTO `city` VALUES (3549, '542521', '普兰县', '542500');
INSERT INTO `city` VALUES (3550, '542522', '札达县', '542500');
INSERT INTO `city` VALUES (3551, '542523', '噶尔县', '542500');
INSERT INTO `city` VALUES (3552, '542524', '日土县', '542500');
INSERT INTO `city` VALUES (3553, '542525', '革吉县', '542500');
INSERT INTO `city` VALUES (3554, '542526', '改则县', '542500');
INSERT INTO `city` VALUES (3555, '542527', '措勤县', '542500');
INSERT INTO `city` VALUES (3556, '542621', '林芝县', '542600');
INSERT INTO `city` VALUES (3557, '542622', '工布江达县', '542600');
INSERT INTO `city` VALUES (3558, '542623', '米林县', '542600');
INSERT INTO `city` VALUES (3559, '542624', '墨脱县', '542600');
INSERT INTO `city` VALUES (3560, '542625', '波密县', '542600');
INSERT INTO `city` VALUES (3561, '542626', '察隅县', '542600');
INSERT INTO `city` VALUES (3562, '542627', '朗　县', '542600');
INSERT INTO `city` VALUES (3563, '610101', '市辖区', '610100');
INSERT INTO `city` VALUES (3564, '610102', '新城区', '610100');
INSERT INTO `city` VALUES (3565, '610103', '碑林区', '610100');
INSERT INTO `city` VALUES (3566, '610104', '莲湖区', '610100');
INSERT INTO `city` VALUES (3567, '610111', '灞桥区', '610100');
INSERT INTO `city` VALUES (3568, '610112', '未央区', '610100');
INSERT INTO `city` VALUES (3569, '610113', '雁塔区', '610100');
INSERT INTO `city` VALUES (3570, '610114', '阎良区', '610100');
INSERT INTO `city` VALUES (3571, '610115', '临潼区', '610100');
INSERT INTO `city` VALUES (3572, '610116', '长安区', '610100');
INSERT INTO `city` VALUES (3573, '610122', '蓝田县', '610100');
INSERT INTO `city` VALUES (3574, '610124', '周至县', '610100');
INSERT INTO `city` VALUES (3575, '610125', '户　县', '610100');
INSERT INTO `city` VALUES (3576, '610126', '高陵县', '610100');
INSERT INTO `city` VALUES (3577, '610201', '市辖区', '610200');
INSERT INTO `city` VALUES (3578, '610202', '王益区', '610200');
INSERT INTO `city` VALUES (3579, '610203', '印台区', '610200');
INSERT INTO `city` VALUES (3580, '610204', '耀州区', '610200');
INSERT INTO `city` VALUES (3581, '610222', '宜君县', '610200');
INSERT INTO `city` VALUES (3582, '610301', '市辖区', '610300');
INSERT INTO `city` VALUES (3583, '610302', '渭滨区', '610300');
INSERT INTO `city` VALUES (3584, '610303', '金台区', '610300');
INSERT INTO `city` VALUES (3585, '610304', '陈仓区', '610300');
INSERT INTO `city` VALUES (3586, '610322', '凤翔县', '610300');
INSERT INTO `city` VALUES (3587, '610323', '岐山县', '610300');
INSERT INTO `city` VALUES (3588, '610324', '扶风县', '610300');
INSERT INTO `city` VALUES (3589, '610326', '眉　县', '610300');
INSERT INTO `city` VALUES (3590, '610327', '陇　县', '610300');
INSERT INTO `city` VALUES (3591, '610328', '千阳县', '610300');
INSERT INTO `city` VALUES (3592, '610329', '麟游县', '610300');
INSERT INTO `city` VALUES (3593, '610330', '凤　县', '610300');
INSERT INTO `city` VALUES (3594, '610331', '太白县', '610300');
INSERT INTO `city` VALUES (3595, '610401', '市辖区', '610400');
INSERT INTO `city` VALUES (3596, '610402', '秦都区', '610400');
INSERT INTO `city` VALUES (3597, '610403', '杨凌区', '610400');
INSERT INTO `city` VALUES (3598, '610404', '渭城区', '610400');
INSERT INTO `city` VALUES (3599, '610422', '三原县', '610400');
INSERT INTO `city` VALUES (3600, '610423', '泾阳县', '610400');
INSERT INTO `city` VALUES (3601, '610424', '乾　县', '610400');
INSERT INTO `city` VALUES (3602, '610425', '礼泉县', '610400');
INSERT INTO `city` VALUES (3603, '610426', '永寿县', '610400');
INSERT INTO `city` VALUES (3604, '610427', '彬　县', '610400');
INSERT INTO `city` VALUES (3605, '610428', '长武县', '610400');
INSERT INTO `city` VALUES (3606, '610429', '旬邑县', '610400');
INSERT INTO `city` VALUES (3607, '610430', '淳化县', '610400');
INSERT INTO `city` VALUES (3608, '610431', '武功县', '610400');
INSERT INTO `city` VALUES (3609, '610481', '兴平市', '610400');
INSERT INTO `city` VALUES (3610, '610501', '市辖区', '610500');
INSERT INTO `city` VALUES (3611, '610502', '临渭区', '610500');
INSERT INTO `city` VALUES (3612, '610521', '华　县', '610500');
INSERT INTO `city` VALUES (3613, '610522', '潼关县', '610500');
INSERT INTO `city` VALUES (3614, '610523', '大荔县', '610500');
INSERT INTO `city` VALUES (3615, '610524', '合阳县', '610500');
INSERT INTO `city` VALUES (3616, '610525', '澄城县', '610500');
INSERT INTO `city` VALUES (3617, '610526', '蒲城县', '610500');
INSERT INTO `city` VALUES (3618, '610527', '白水县', '610500');
INSERT INTO `city` VALUES (3619, '610528', '富平县', '610500');
INSERT INTO `city` VALUES (3620, '610581', '韩城市', '610500');
INSERT INTO `city` VALUES (3621, '610582', '华阴市', '610500');
INSERT INTO `city` VALUES (3622, '610601', '市辖区', '610600');
INSERT INTO `city` VALUES (3623, '610602', '宝塔区', '610600');
INSERT INTO `city` VALUES (3624, '610621', '延长县', '610600');
INSERT INTO `city` VALUES (3625, '610622', '延川县', '610600');
INSERT INTO `city` VALUES (3626, '610623', '子长县', '610600');
INSERT INTO `city` VALUES (3627, '610624', '安塞县', '610600');
INSERT INTO `city` VALUES (3628, '610625', '志丹县', '610600');
INSERT INTO `city` VALUES (3629, '610626', '吴旗县', '610600');
INSERT INTO `city` VALUES (3630, '610627', '甘泉县', '610600');
INSERT INTO `city` VALUES (3631, '610628', '富　县', '610600');
INSERT INTO `city` VALUES (3632, '610629', '洛川县', '610600');
INSERT INTO `city` VALUES (3633, '610630', '宜川县', '610600');
INSERT INTO `city` VALUES (3634, '610631', '黄龙县', '610600');
INSERT INTO `city` VALUES (3635, '610632', '黄陵县', '610600');
INSERT INTO `city` VALUES (3636, '610701', '市辖区', '610700');
INSERT INTO `city` VALUES (3637, '610702', '汉台区', '610700');
INSERT INTO `city` VALUES (3638, '610721', '南郑县', '610700');
INSERT INTO `city` VALUES (3639, '610722', '城固县', '610700');
INSERT INTO `city` VALUES (3640, '610723', '洋　县', '610700');
INSERT INTO `city` VALUES (3641, '610724', '西乡县', '610700');
INSERT INTO `city` VALUES (3642, '610725', '勉　县', '610700');
INSERT INTO `city` VALUES (3643, '610726', '宁强县', '610700');
INSERT INTO `city` VALUES (3644, '610727', '略阳县', '610700');
INSERT INTO `city` VALUES (3645, '610728', '镇巴县', '610700');
INSERT INTO `city` VALUES (3646, '610729', '留坝县', '610700');
INSERT INTO `city` VALUES (3647, '610730', '佛坪县', '610700');
INSERT INTO `city` VALUES (3648, '610801', '市辖区', '610800');
INSERT INTO `city` VALUES (3649, '610802', '榆阳区', '610800');
INSERT INTO `city` VALUES (3650, '610821', '神木县', '610800');
INSERT INTO `city` VALUES (3651, '610822', '府谷县', '610800');
INSERT INTO `city` VALUES (3652, '610823', '横山县', '610800');
INSERT INTO `city` VALUES (3653, '610824', '靖边县', '610800');
INSERT INTO `city` VALUES (3654, '610825', '定边县', '610800');
INSERT INTO `city` VALUES (3655, '610826', '绥德县', '610800');
INSERT INTO `city` VALUES (3656, '610827', '米脂县', '610800');
INSERT INTO `city` VALUES (3657, '610828', '佳　县', '610800');
INSERT INTO `city` VALUES (3658, '610829', '吴堡县', '610800');
INSERT INTO `city` VALUES (3659, '610830', '清涧县', '610800');
INSERT INTO `city` VALUES (3660, '610831', '子洲县', '610800');
INSERT INTO `city` VALUES (3661, '610901', '市辖区', '610900');
INSERT INTO `city` VALUES (3662, '610902', '汉滨区', '610900');
INSERT INTO `city` VALUES (3663, '610921', '汉阴县', '610900');
INSERT INTO `city` VALUES (3664, '610922', '石泉县', '610900');
INSERT INTO `city` VALUES (3665, '610923', '宁陕县', '610900');
INSERT INTO `city` VALUES (3666, '610924', '紫阳县', '610900');
INSERT INTO `city` VALUES (3667, '610925', '岚皋县', '610900');
INSERT INTO `city` VALUES (3668, '610926', '平利县', '610900');
INSERT INTO `city` VALUES (3669, '610927', '镇坪县', '610900');
INSERT INTO `city` VALUES (3670, '610928', '旬阳县', '610900');
INSERT INTO `city` VALUES (3671, '610929', '白河县', '610900');
INSERT INTO `city` VALUES (3672, '611001', '市辖区', '611000');
INSERT INTO `city` VALUES (3673, '611002', '商州区', '611000');
INSERT INTO `city` VALUES (3674, '611021', '洛南县', '611000');
INSERT INTO `city` VALUES (3675, '611022', '丹凤县', '611000');
INSERT INTO `city` VALUES (3676, '611023', '商南县', '611000');
INSERT INTO `city` VALUES (3677, '611024', '山阳县', '611000');
INSERT INTO `city` VALUES (3678, '611025', '镇安县', '611000');
INSERT INTO `city` VALUES (3679, '611026', '柞水县', '611000');
INSERT INTO `city` VALUES (3680, '620101', '市辖区', '620100');
INSERT INTO `city` VALUES (3681, '620102', '城关区', '620100');
INSERT INTO `city` VALUES (3682, '620103', '七里河区', '620100');
INSERT INTO `city` VALUES (3683, '620104', '西固区', '620100');
INSERT INTO `city` VALUES (3684, '620105', '安宁区', '620100');
INSERT INTO `city` VALUES (3685, '620111', '红古区', '620100');
INSERT INTO `city` VALUES (3686, '620121', '永登县', '620100');
INSERT INTO `city` VALUES (3687, '620122', '皋兰县', '620100');
INSERT INTO `city` VALUES (3688, '620123', '榆中县', '620100');
INSERT INTO `city` VALUES (3689, '620201', '市辖区', '620200');
INSERT INTO `city` VALUES (3690, '620301', '市辖区', '620300');
INSERT INTO `city` VALUES (3691, '620302', '金川区', '620300');
INSERT INTO `city` VALUES (3692, '620321', '永昌县', '620300');
INSERT INTO `city` VALUES (3693, '620401', '市辖区', '620400');
INSERT INTO `city` VALUES (3694, '620402', '白银区', '620400');
INSERT INTO `city` VALUES (3695, '620403', '平川区', '620400');
INSERT INTO `city` VALUES (3696, '620421', '靖远县', '620400');
INSERT INTO `city` VALUES (3697, '620422', '会宁县', '620400');
INSERT INTO `city` VALUES (3698, '620423', '景泰县', '620400');
INSERT INTO `city` VALUES (3699, '620501', '市辖区', '620500');
INSERT INTO `city` VALUES (3700, '620502', '秦城区', '620500');
INSERT INTO `city` VALUES (3701, '620503', '北道区', '620500');
INSERT INTO `city` VALUES (3702, '620521', '清水县', '620500');
INSERT INTO `city` VALUES (3703, '620522', '秦安县', '620500');
INSERT INTO `city` VALUES (3704, '620523', '甘谷县', '620500');
INSERT INTO `city` VALUES (3705, '620524', '武山县', '620500');
INSERT INTO `city` VALUES (3706, '620525', '张家川回族自治县', '620500');
INSERT INTO `city` VALUES (3707, '620601', '市辖区', '620600');
INSERT INTO `city` VALUES (3708, '620602', '凉州区', '620600');
INSERT INTO `city` VALUES (3709, '620621', '民勤县', '620600');
INSERT INTO `city` VALUES (3710, '620622', '古浪县', '620600');
INSERT INTO `city` VALUES (3711, '620623', '天祝藏族自治县', '620600');
INSERT INTO `city` VALUES (3712, '620701', '市辖区', '620700');
INSERT INTO `city` VALUES (3713, '620702', '甘州区', '620700');
INSERT INTO `city` VALUES (3714, '620721', '肃南裕固族自治县', '620700');
INSERT INTO `city` VALUES (3715, '620722', '民乐县', '620700');
INSERT INTO `city` VALUES (3716, '620723', '临泽县', '620700');
INSERT INTO `city` VALUES (3717, '620724', '高台县', '620700');
INSERT INTO `city` VALUES (3718, '620725', '山丹县', '620700');
INSERT INTO `city` VALUES (3719, '620801', '市辖区', '620800');
INSERT INTO `city` VALUES (3720, '620802', '崆峒区', '620800');
INSERT INTO `city` VALUES (3721, '620821', '泾川县', '620800');
INSERT INTO `city` VALUES (3722, '620822', '灵台县', '620800');
INSERT INTO `city` VALUES (3723, '620823', '崇信县', '620800');
INSERT INTO `city` VALUES (3724, '620824', '华亭县', '620800');
INSERT INTO `city` VALUES (3725, '620825', '庄浪县', '620800');
INSERT INTO `city` VALUES (3726, '620826', '静宁县', '620800');
INSERT INTO `city` VALUES (3727, '620901', '市辖区', '620900');
INSERT INTO `city` VALUES (3728, '620902', '肃州区', '620900');
INSERT INTO `city` VALUES (3729, '620921', '金塔县', '620900');
INSERT INTO `city` VALUES (3730, '620922', '安西县', '620900');
INSERT INTO `city` VALUES (3731, '620923', '肃北蒙古族自治县', '620900');
INSERT INTO `city` VALUES (3732, '620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `city` VALUES (3733, '620981', '玉门市', '620900');
INSERT INTO `city` VALUES (3734, '620982', '敦煌市', '620900');
INSERT INTO `city` VALUES (3735, '621001', '市辖区', '621000');
INSERT INTO `city` VALUES (3736, '621002', '西峰区', '621000');
INSERT INTO `city` VALUES (3737, '621021', '庆城县', '621000');
INSERT INTO `city` VALUES (3738, '621022', '环　县', '621000');
INSERT INTO `city` VALUES (3739, '621023', '华池县', '621000');
INSERT INTO `city` VALUES (3740, '621024', '合水县', '621000');
INSERT INTO `city` VALUES (3741, '621025', '正宁县', '621000');
INSERT INTO `city` VALUES (3742, '621026', '宁　县', '621000');
INSERT INTO `city` VALUES (3743, '621027', '镇原县', '621000');
INSERT INTO `city` VALUES (3744, '621101', '市辖区', '621100');
INSERT INTO `city` VALUES (3745, '621102', '安定区', '621100');
INSERT INTO `city` VALUES (3746, '621121', '通渭县', '621100');
INSERT INTO `city` VALUES (3747, '621122', '陇西县', '621100');
INSERT INTO `city` VALUES (3748, '621123', '渭源县', '621100');
INSERT INTO `city` VALUES (3749, '621124', '临洮县', '621100');
INSERT INTO `city` VALUES (3750, '621125', '漳　县', '621100');
INSERT INTO `city` VALUES (3751, '621126', '岷　县', '621100');
INSERT INTO `city` VALUES (3752, '621201', '市辖区', '621200');
INSERT INTO `city` VALUES (3753, '621202', '武都区', '621200');
INSERT INTO `city` VALUES (3754, '621221', '成　县', '621200');
INSERT INTO `city` VALUES (3755, '621222', '文　县', '621200');
INSERT INTO `city` VALUES (3756, '621223', '宕昌县', '621200');
INSERT INTO `city` VALUES (3757, '621224', '康　县', '621200');
INSERT INTO `city` VALUES (3758, '621225', '西和县', '621200');
INSERT INTO `city` VALUES (3759, '621226', '礼　县', '621200');
INSERT INTO `city` VALUES (3760, '621227', '徽　县', '621200');
INSERT INTO `city` VALUES (3761, '621228', '两当县', '621200');
INSERT INTO `city` VALUES (3762, '622901', '临夏市', '622900');
INSERT INTO `city` VALUES (3763, '622921', '临夏县', '622900');
INSERT INTO `city` VALUES (3764, '622922', '康乐县', '622900');
INSERT INTO `city` VALUES (3765, '622923', '永靖县', '622900');
INSERT INTO `city` VALUES (3766, '622924', '广河县', '622900');
INSERT INTO `city` VALUES (3767, '622925', '和政县', '622900');
INSERT INTO `city` VALUES (3768, '622926', '东乡族自治县', '622900');
INSERT INTO `city` VALUES (3769, '622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `city` VALUES (3770, '623001', '合作市', '623000');
INSERT INTO `city` VALUES (3771, '623021', '临潭县', '623000');
INSERT INTO `city` VALUES (3772, '623022', '卓尼县', '623000');
INSERT INTO `city` VALUES (3773, '623023', '舟曲县', '623000');
INSERT INTO `city` VALUES (3774, '623024', '迭部县', '623000');
INSERT INTO `city` VALUES (3775, '623025', '玛曲县', '623000');
INSERT INTO `city` VALUES (3776, '623026', '碌曲县', '623000');
INSERT INTO `city` VALUES (3777, '623027', '夏河县', '623000');
INSERT INTO `city` VALUES (3778, '630101', '市辖区', '630100');
INSERT INTO `city` VALUES (3779, '630102', '城东区', '630100');
INSERT INTO `city` VALUES (3780, '630103', '城中区', '630100');
INSERT INTO `city` VALUES (3781, '630104', '城西区', '630100');
INSERT INTO `city` VALUES (3782, '630105', '城北区', '630100');
INSERT INTO `city` VALUES (3783, '630121', '大通回族土族自治县', '630100');
INSERT INTO `city` VALUES (3784, '630122', '湟中县', '630100');
INSERT INTO `city` VALUES (3785, '630123', '湟源县', '630100');
INSERT INTO `city` VALUES (3786, '632121', '平安县', '632100');
INSERT INTO `city` VALUES (3787, '632122', '民和回族土族自治县', '632100');
INSERT INTO `city` VALUES (3788, '632123', '乐都县', '632100');
INSERT INTO `city` VALUES (3789, '632126', '互助土族自治县', '632100');
INSERT INTO `city` VALUES (3790, '632127', '化隆回族自治县', '632100');
INSERT INTO `city` VALUES (3791, '632128', '循化撒拉族自治县', '632100');
INSERT INTO `city` VALUES (3792, '632221', '门源回族自治县', '632200');
INSERT INTO `city` VALUES (3793, '632222', '祁连县', '632200');
INSERT INTO `city` VALUES (3794, '632223', '海晏县', '632200');
INSERT INTO `city` VALUES (3795, '632224', '刚察县', '632200');
INSERT INTO `city` VALUES (3796, '632321', '同仁县', '632300');
INSERT INTO `city` VALUES (3797, '632322', '尖扎县', '632300');
INSERT INTO `city` VALUES (3798, '632323', '泽库县', '632300');
INSERT INTO `city` VALUES (3799, '632324', '河南蒙古族自治县', '632300');
INSERT INTO `city` VALUES (3800, '632521', '共和县', '632500');
INSERT INTO `city` VALUES (3801, '632522', '同德县', '632500');
INSERT INTO `city` VALUES (3802, '632523', '贵德县', '632500');
INSERT INTO `city` VALUES (3803, '632524', '兴海县', '632500');
INSERT INTO `city` VALUES (3804, '632525', '贵南县', '632500');
INSERT INTO `city` VALUES (3805, '632621', '玛沁县', '632600');
INSERT INTO `city` VALUES (3806, '632622', '班玛县', '632600');
INSERT INTO `city` VALUES (3807, '632623', '甘德县', '632600');
INSERT INTO `city` VALUES (3808, '632624', '达日县', '632600');
INSERT INTO `city` VALUES (3809, '632625', '久治县', '632600');
INSERT INTO `city` VALUES (3810, '632626', '玛多县', '632600');
INSERT INTO `city` VALUES (3811, '632721', '玉树县', '632700');
INSERT INTO `city` VALUES (3812, '632722', '杂多县', '632700');
INSERT INTO `city` VALUES (3813, '632723', '称多县', '632700');
INSERT INTO `city` VALUES (3814, '632724', '治多县', '632700');
INSERT INTO `city` VALUES (3815, '632725', '囊谦县', '632700');
INSERT INTO `city` VALUES (3816, '632726', '曲麻莱县', '632700');
INSERT INTO `city` VALUES (3817, '632801', '格尔木市', '632800');
INSERT INTO `city` VALUES (3818, '632802', '德令哈市', '632800');
INSERT INTO `city` VALUES (3819, '632821', '乌兰县', '632800');
INSERT INTO `city` VALUES (3820, '632822', '都兰县', '632800');
INSERT INTO `city` VALUES (3821, '632823', '天峻县', '632800');
INSERT INTO `city` VALUES (3822, '640101', '市辖区', '640100');
INSERT INTO `city` VALUES (3823, '640104', '兴庆区', '640100');
INSERT INTO `city` VALUES (3824, '640105', '西夏区', '640100');
INSERT INTO `city` VALUES (3825, '640106', '金凤区', '640100');
INSERT INTO `city` VALUES (3826, '640121', '永宁县', '640100');
INSERT INTO `city` VALUES (3827, '640122', '贺兰县', '640100');
INSERT INTO `city` VALUES (3828, '640181', '灵武市', '640100');
INSERT INTO `city` VALUES (3829, '640201', '市辖区', '640200');
INSERT INTO `city` VALUES (3830, '640202', '大武口区', '640200');
INSERT INTO `city` VALUES (3831, '640205', '惠农区', '640200');
INSERT INTO `city` VALUES (3832, '640221', '平罗县', '640200');
INSERT INTO `city` VALUES (3833, '640301', '市辖区', '640300');
INSERT INTO `city` VALUES (3834, '640302', '利通区', '640300');
INSERT INTO `city` VALUES (3835, '640323', '盐池县', '640300');
INSERT INTO `city` VALUES (3836, '640324', '同心县', '640300');
INSERT INTO `city` VALUES (3837, '640381', '青铜峡市', '640300');
INSERT INTO `city` VALUES (3838, '640401', '市辖区', '640400');
INSERT INTO `city` VALUES (3839, '640402', '原州区', '640400');
INSERT INTO `city` VALUES (3840, '640422', '西吉县', '640400');
INSERT INTO `city` VALUES (3841, '640423', '隆德县', '640400');
INSERT INTO `city` VALUES (3842, '640424', '泾源县', '640400');
INSERT INTO `city` VALUES (3843, '640425', '彭阳县', '640400');
INSERT INTO `city` VALUES (3844, '640501', '市辖区', '640500');
INSERT INTO `city` VALUES (3845, '640502', '沙坡头区', '640500');
INSERT INTO `city` VALUES (3846, '640521', '中宁县', '640500');
INSERT INTO `city` VALUES (3847, '640522', '海原县', '640400');
INSERT INTO `city` VALUES (3848, '650101', '市辖区', '650100');
INSERT INTO `city` VALUES (3849, '650102', '天山区', '650100');
INSERT INTO `city` VALUES (3850, '650103', '沙依巴克区', '650100');
INSERT INTO `city` VALUES (3851, '650104', '新市区', '650100');
INSERT INTO `city` VALUES (3852, '650105', '水磨沟区', '650100');
INSERT INTO `city` VALUES (3853, '650106', '头屯河区', '650100');
INSERT INTO `city` VALUES (3854, '650107', '达坂城区', '650100');
INSERT INTO `city` VALUES (3855, '650108', '东山区', '650100');
INSERT INTO `city` VALUES (3856, '650121', '乌鲁木齐县', '650100');
INSERT INTO `city` VALUES (3857, '650201', '市辖区', '650200');
INSERT INTO `city` VALUES (3858, '650202', '独山子区', '650200');
INSERT INTO `city` VALUES (3859, '650203', '克拉玛依区', '650200');
INSERT INTO `city` VALUES (3860, '650204', '白碱滩区', '650200');
INSERT INTO `city` VALUES (3861, '650205', '乌尔禾区', '650200');
INSERT INTO `city` VALUES (3862, '652101', '吐鲁番市', '652100');
INSERT INTO `city` VALUES (3863, '652122', '鄯善县', '652100');
INSERT INTO `city` VALUES (3864, '652123', '托克逊县', '652100');
INSERT INTO `city` VALUES (3865, '652201', '哈密市', '652200');
INSERT INTO `city` VALUES (3866, '652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `city` VALUES (3867, '652223', '伊吾县', '652200');
INSERT INTO `city` VALUES (3868, '652301', '昌吉市', '652300');
INSERT INTO `city` VALUES (3869, '652302', '阜康市', '652300');
INSERT INTO `city` VALUES (3870, '652303', '米泉市', '652300');
INSERT INTO `city` VALUES (3871, '652323', '呼图壁县', '652300');
INSERT INTO `city` VALUES (3872, '652324', '玛纳斯县', '652300');
INSERT INTO `city` VALUES (3873, '652325', '奇台县', '652300');
INSERT INTO `city` VALUES (3874, '652327', '吉木萨尔县', '652300');
INSERT INTO `city` VALUES (3875, '652328', '木垒哈萨克自治县', '652300');
INSERT INTO `city` VALUES (3876, '652701', '博乐市', '652700');
INSERT INTO `city` VALUES (3877, '652722', '精河县', '652700');
INSERT INTO `city` VALUES (3878, '652723', '温泉县', '652700');
INSERT INTO `city` VALUES (3879, '652801', '库尔勒市', '652800');
INSERT INTO `city` VALUES (3880, '652822', '轮台县', '652800');
INSERT INTO `city` VALUES (3881, '652823', '尉犁县', '652800');
INSERT INTO `city` VALUES (3882, '652824', '若羌县', '652800');
INSERT INTO `city` VALUES (3883, '652825', '且末县', '652800');
INSERT INTO `city` VALUES (3884, '652826', '焉耆回族自治县', '652800');
INSERT INTO `city` VALUES (3885, '652827', '和静县', '652800');
INSERT INTO `city` VALUES (3886, '652828', '和硕县', '652800');
INSERT INTO `city` VALUES (3887, '652829', '博湖县', '652800');
INSERT INTO `city` VALUES (3888, '652901', '阿克苏市', '652900');
INSERT INTO `city` VALUES (3889, '652922', '温宿县', '652900');
INSERT INTO `city` VALUES (3890, '652923', '库车县', '652900');
INSERT INTO `city` VALUES (3891, '652924', '沙雅县', '652900');
INSERT INTO `city` VALUES (3892, '652925', '新和县', '652900');
INSERT INTO `city` VALUES (3893, '652926', '拜城县', '652900');
INSERT INTO `city` VALUES (3894, '652927', '乌什县', '652900');
INSERT INTO `city` VALUES (3895, '652928', '阿瓦提县', '652900');
INSERT INTO `city` VALUES (3896, '652929', '柯坪县', '652900');
INSERT INTO `city` VALUES (3897, '653001', '阿图什市', '653000');
INSERT INTO `city` VALUES (3898, '653022', '阿克陶县', '653000');
INSERT INTO `city` VALUES (3899, '653023', '阿合奇县', '653000');
INSERT INTO `city` VALUES (3900, '653024', '乌恰县', '653000');
INSERT INTO `city` VALUES (3901, '653101', '喀什市', '653100');
INSERT INTO `city` VALUES (3902, '653121', '疏附县', '653100');
INSERT INTO `city` VALUES (3903, '653122', '疏勒县', '653100');
INSERT INTO `city` VALUES (3904, '653123', '英吉沙县', '653100');
INSERT INTO `city` VALUES (3905, '653124', '泽普县', '653100');
INSERT INTO `city` VALUES (3906, '653125', '莎车县', '653100');
INSERT INTO `city` VALUES (3907, '653126', '叶城县', '653100');
INSERT INTO `city` VALUES (3908, '653127', '麦盖提县', '653100');
INSERT INTO `city` VALUES (3909, '653128', '岳普湖县', '653100');
INSERT INTO `city` VALUES (3910, '653129', '伽师县', '653100');
INSERT INTO `city` VALUES (3911, '653130', '巴楚县', '653100');
INSERT INTO `city` VALUES (3912, '653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `city` VALUES (3913, '653201', '和田市', '653200');
INSERT INTO `city` VALUES (3914, '653221', '和田县', '653200');
INSERT INTO `city` VALUES (3915, '653222', '墨玉县', '653200');
INSERT INTO `city` VALUES (3916, '653223', '皮山县', '653200');
INSERT INTO `city` VALUES (3917, '653224', '洛浦县', '653200');
INSERT INTO `city` VALUES (3918, '653225', '策勒县', '653200');
INSERT INTO `city` VALUES (3919, '653226', '于田县', '653200');
INSERT INTO `city` VALUES (3920, '653227', '民丰县', '653200');
INSERT INTO `city` VALUES (3921, '654002', '伊宁市', '654000');
INSERT INTO `city` VALUES (3922, '654003', '奎屯市', '654000');
INSERT INTO `city` VALUES (3923, '654021', '伊宁县', '654000');
INSERT INTO `city` VALUES (3924, '654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `city` VALUES (3925, '654023', '霍城县', '654000');
INSERT INTO `city` VALUES (3926, '654024', '巩留县', '654000');
INSERT INTO `city` VALUES (3927, '654025', '新源县', '654000');
INSERT INTO `city` VALUES (3928, '654026', '昭苏县', '654000');
INSERT INTO `city` VALUES (3929, '654027', '特克斯县', '654000');
INSERT INTO `city` VALUES (3930, '654028', '尼勒克县', '654000');
INSERT INTO `city` VALUES (3931, '654201', '塔城市', '654200');
INSERT INTO `city` VALUES (3932, '654202', '乌苏市', '654200');
INSERT INTO `city` VALUES (3933, '654221', '额敏县', '654200');
INSERT INTO `city` VALUES (3934, '654223', '沙湾县', '654200');
INSERT INTO `city` VALUES (3935, '654224', '托里县', '654200');
INSERT INTO `city` VALUES (3936, '654225', '裕民县', '654200');
INSERT INTO `city` VALUES (3937, '654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `city` VALUES (3938, '654301', '阿勒泰市', '654300');
INSERT INTO `city` VALUES (3939, '654321', '布尔津县', '654300');
INSERT INTO `city` VALUES (3940, '654322', '富蕴县', '654300');
INSERT INTO `city` VALUES (3941, '654323', '福海县', '654300');
INSERT INTO `city` VALUES (3942, '654324', '哈巴河县', '654300');
INSERT INTO `city` VALUES (3943, '654325', '青河县', '654300');
INSERT INTO `city` VALUES (3944, '654326', '吉木乃县', '654300');
INSERT INTO `city` VALUES (3945, '659001', '石河子市', '659000');
INSERT INTO `city` VALUES (3946, '659002', '阿拉尔市', '659000');
INSERT INTO `city` VALUES (3947, '659003', '图木舒克市', '659000');
INSERT INTO `city` VALUES (3948, '659004', '五家渠市', '659000');
INSERT INTO `city` VALUES (3949, '710100', '台北市', '710000');
INSERT INTO `city` VALUES (3950, '710200', '高雄市', '710000');
INSERT INTO `city` VALUES (3951, '710300', '基隆市', '710000');
INSERT INTO `city` VALUES (3952, '710400', '台中市', '710000');
INSERT INTO `city` VALUES (3953, '710500', '台南市', '710000');
INSERT INTO `city` VALUES (3954, '710600', '新竹市', '710000');
INSERT INTO `city` VALUES (3955, '710700', '嘉义市', '710000');
INSERT INTO `city` VALUES (3956, '710800', '新北市', '710000');
INSERT INTO `city` VALUES (3957, '712200', '宜兰县', '710000');
INSERT INTO `city` VALUES (3958, '712300', '桃园市', '710000');
INSERT INTO `city` VALUES (3959, '712400', '新竹县', '710000');
INSERT INTO `city` VALUES (3960, '712500', '苗栗县', '710000');
INSERT INTO `city` VALUES (3961, '712700', '彰化县', '710000');
INSERT INTO `city` VALUES (3962, '712800', '南投县', '710000');
INSERT INTO `city` VALUES (3963, '712900', '云林县', '710000');
INSERT INTO `city` VALUES (3964, '713000', '嘉义县', '710000');
INSERT INTO `city` VALUES (3965, '713300', '屏东县', '710000');
INSERT INTO `city` VALUES (3966, '713400', '台东县', '710000');
INSERT INTO `city` VALUES (3967, '713500', '花莲县', '710000');
INSERT INTO `city` VALUES (3968, '713600', '澎湖县', '710000');
INSERT INTO `city` VALUES (3969, '810100', '香港岛', '810000');
INSERT INTO `city` VALUES (3970, '810200', '九龙', '810000');
INSERT INTO `city` VALUES (3971, '810300', '新界', '810000');
INSERT INTO `city` VALUES (3972, '820100', '澳门半岛', '820000');
INSERT INTO `city` VALUES (3973, '820200', '氹仔岛', '820000');
INSERT INTO `city` VALUES (3974, '820300', '路环岛', '820000');
COMMIT;

-- ----------------------------
-- Table structure for cloud_drive
-- ----------------------------
DROP TABLE IF EXISTS `cloud_drive`;
CREATE TABLE `cloud_drive` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cloud_drive_folders
-- ----------------------------
DROP TABLE IF EXISTS `cloud_drive_folders`;
CREATE TABLE `cloud_drive_folders` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for conferee
-- ----------------------------
DROP TABLE IF EXISTS `conferee`;
CREATE TABLE `conferee` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingInfoId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `seatId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `host` int(11) DEFAULT NULL,
  `vote` tinyint(1) DEFAULT NULL,
  `signInDate` timestamp NULL DEFAULT NULL,
  `signInImg` longblob,
  `signInIp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descb` tinyint(1) DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  `org_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for deskcards
-- ----------------------------
DROP TABLE IF EXISTS `deskcards`;
CREATE TABLE `deskcards` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingRoomId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `backgroundUrl` longblob,
  `departForeground` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nameForeground` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `JobForeground` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `departFontsize` float DEFAULT NULL,
  `nameFontsize` float DEFAULT NULL,
  `jobFontsize` float DEFAULT NULL,
  `departFontFamily` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nameFontFamily` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `jobFontFamily` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `departTop` float DEFAULT NULL,
  `nameTop` float DEFAULT NULL,
  `jobTop` float DEFAULT NULL,
  `departLeft` float DEFAULT NULL,
  `nameLeft` float DEFAULT NULL,
  `jobLeft` float DEFAULT NULL,
  `isShow` int(11) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  `logo` longblob,
  `showLogo` int(11) DEFAULT NULL,
  `jobIsShow` tinyint(1) DEFAULT '1',
  `departIsShow` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for discussion
-- ----------------------------
DROP TABLE IF EXISTS `discussion`;
CREATE TABLE `discussion` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingInfoId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `state` tinyint(4) DEFAULT NULL,
  `anonymity` tinyint(4) DEFAULT '1',
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `flag` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for discussion_files
-- ----------------------------
DROP TABLE IF EXISTS `discussion_files`;
CREATE TABLE `discussion_files` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discussionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `folder_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for file_capacity
-- ----------------------------
DROP TABLE IF EXISTS `file_capacity`;
CREATE TABLE `file_capacity` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `max_byte` bigint(20) DEFAULT NULL,
  `use_byte` bigint(20) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for file_permissions
-- ----------------------------
DROP TABLE IF EXISTS `file_permissions`;
CREATE TABLE `file_permissions` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件ID',
  `personnel_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户ID',
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  `conferee_type` int(1) DEFAULT NULL COMMENT '参会人员类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for industry
-- ----------------------------
DROP TABLE IF EXISTS `industry`;
CREATE TABLE `industry` (
  `id` int(11) DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of industry
-- ----------------------------
BEGIN;
INSERT INTO `industry` VALUES (1, '互联网/信息技术', 0);
INSERT INTO `industry` VALUES (2, '制造业', 0);
INSERT INTO `industry` VALUES (3, '贸易/批发/零售', 0);
INSERT INTO `industry` VALUES (4, '房地产业', 0);
INSERT INTO `industry` VALUES (5, '建筑业', 0);
INSERT INTO `industry` VALUES (6, '金融业', 0);
INSERT INTO `industry` VALUES (7, '服务业', 0);
INSERT INTO `industry` VALUES (8, '运输/物流/仓储', 0);
INSERT INTO `industry` VALUES (9, '教育行业', 0);
INSERT INTO `industry` VALUES (10, '文体/娱乐/传媒', 0);
INSERT INTO `industry` VALUES (11, '商业服务/租赁', 0);
INSERT INTO `industry` VALUES (12, '医疗医药', 0);
INSERT INTO `industry` VALUES (13, '政府/事业单位', 0);
INSERT INTO `industry` VALUES (14, '社会组织', 0);
INSERT INTO `industry` VALUES (15, '科研服务', 0);
INSERT INTO `industry` VALUES (16, '公共/环境', 0);
INSERT INTO `industry` VALUES (17, '居民服务', 0);
INSERT INTO `industry` VALUES (18, '开采业', 0);
INSERT INTO `industry` VALUES (19, '农/林/牧/渔', 0);
INSERT INTO `industry` VALUES (20, '电/热/燃气/水供应', 0);
INSERT INTO `industry` VALUES (21, '亲朋好友', 0);
INSERT INTO `industry` VALUES (22, '计算机软件', 1);
INSERT INTO `industry` VALUES (23, '硬件设施服务', 1);
INSERT INTO `industry` VALUES (24, '电子商务', 1);
INSERT INTO `industry` VALUES (25, '游戏', 1);
INSERT INTO `industry` VALUES (26, '企业应用', 1);
INSERT INTO `industry` VALUES (27, '即时通讯', 1);
INSERT INTO `industry` VALUES (28, '影音视频', 1);
INSERT INTO `industry` VALUES (29, '社交网络', 1);
INSERT INTO `industry` VALUES (30, '网络安全', 1);
INSERT INTO `industry` VALUES (31, '软件开发', 1);
INSERT INTO `industry` VALUES (32, '系统集成', 1);
INSERT INTO `industry` VALUES (33, '电信运营服务', 1);
INSERT INTO `industry` VALUES (34, '广播电视传输', 1);
INSERT INTO `industry` VALUES (35, '卫星传输服务', 1);
INSERT INTO `industry` VALUES (36, '信息技术咨询', 1);
INSERT INTO `industry` VALUES (37, '其他软件服务', 1);
INSERT INTO `industry` VALUES (38, '其他互联网', 1);
INSERT INTO `industry` VALUES (40, '日用/化妆品', 2);
INSERT INTO `industry` VALUES (41, '食品/饮料', 2);
INSERT INTO `industry` VALUES (42, '服装服饰', 2);
INSERT INTO `industry` VALUES (43, '家电/数码', 2);
INSERT INTO `industry` VALUES (44, '奢侈品/珠宝', 2);
INSERT INTO `industry` VALUES (45, '酒品', 2);
INSERT INTO `industry` VALUES (46, '烟草业', 2);
INSERT INTO `industry` VALUES (47, '办公/工艺品', 2);
INSERT INTO `industry` VALUES (48, '家具', 2);
INSERT INTO `industry` VALUES (49, '化学纤维', 2);
INSERT INTO `industry` VALUES (50, '金属制品', 2);
INSERT INTO `industry` VALUES (51, '汽车交通', 2);
INSERT INTO `industry` VALUES (52, '通信/计算机', 2);
INSERT INTO `industry` VALUES (53, '电子/半导体', 2);
INSERT INTO `industry` VALUES (54, '纺织业', 2);
INSERT INTO `industry` VALUES (55, '皮/革/毛/羽/鞋', 2);
INSERT INTO `industry` VALUES (56, '木材草编制造', 2);
INSERT INTO `industry` VALUES (57, '造纸和纸制品', 2);
INSERT INTO `industry` VALUES (58, '石化/炼焦/燃料', 2);
INSERT INTO `industry` VALUES (59, '化工原料制品', 2);
INSERT INTO `industry` VALUES (60, '橡胶和塑料', 2);
INSERT INTO `industry` VALUES (61, '非金属矿物', 2);
INSERT INTO `industry` VALUES (62, '黑色金属冶炼', 2);
INSERT INTO `industry` VALUES (63, '有色金属冶炼', 2);
INSERT INTO `industry` VALUES (64, '通用设备制造', 2);
INSERT INTO `industry` VALUES (65, '专用设备制造', 2);
INSERT INTO `industry` VALUES (66, '其他运输设备', 2);
INSERT INTO `industry` VALUES (67, '电气机械/器材', 2);
INSERT INTO `industry` VALUES (68, '仪器仪表制造', 2);
INSERT INTO `industry` VALUES (69, '废弃资源利用', 2);
INSERT INTO `industry` VALUES (70, '金属/机械修理', 2);
INSERT INTO `industry` VALUES (71, '其他制造业', 2);
INSERT INTO `industry` VALUES (72, '临时促销', 3);
INSERT INTO `industry` VALUES (73, '进出口', 3);
INSERT INTO `industry` VALUES (74, '批发', 3);
INSERT INTO `industry` VALUES (75, '商店/超市', 3);
INSERT INTO `industry` VALUES (76, '电视/电话销售', 3);
INSERT INTO `industry` VALUES (77, '零售', 3);
INSERT INTO `industry` VALUES (78, '零售服务', 3);
INSERT INTO `industry` VALUES (79, '其他贸易', 3);
INSERT INTO `industry` VALUES (81, '房地产开发', 4);
INSERT INTO `industry` VALUES (82, '房地产中介', 4);
INSERT INTO `industry` VALUES (83, '房地产代理', 4);
INSERT INTO `industry` VALUES (84, '房地产策划', 4);
INSERT INTO `industry` VALUES (85, '房地产租赁', 4);
INSERT INTO `industry` VALUES (86, '物业管理', 4);
INSERT INTO `industry` VALUES (87, '商业地产', 4);
INSERT INTO `industry` VALUES (88, '住宅地产', 4);
INSERT INTO `industry` VALUES (89, '工业地产', 4);
INSERT INTO `industry` VALUES (90, '养老地产', 4);
INSERT INTO `industry` VALUES (91, '产业园区', 4);
INSERT INTO `industry` VALUES (92, '地产行政机构', 4);
INSERT INTO `industry` VALUES (93, '地产服务机构', 4);
INSERT INTO `industry` VALUES (94, '其他地产', 4);
INSERT INTO `industry` VALUES (95, '建筑设计', 5);
INSERT INTO `industry` VALUES (96, '建筑建材', 5);
INSERT INTO `industry` VALUES (97, '家居建材', 5);
INSERT INTO `industry` VALUES (98, '建筑行政机构', 5);
INSERT INTO `industry` VALUES (99, '建筑服务机构', 5);
INSERT INTO `industry` VALUES (100, '房屋建筑', 5);
INSERT INTO `industry` VALUES (101, '土木工程', 5);
INSERT INTO `industry` VALUES (102, '建筑安装', 5);
INSERT INTO `industry` VALUES (103, '装修装潢', 5);
INSERT INTO `industry` VALUES (104, '其他建筑业', 5);
INSERT INTO `industry` VALUES (105, '银行', 6);
INSERT INTO `industry` VALUES (106, '保险', 6);
INSERT INTO `industry` VALUES (107, '证券', 6);
INSERT INTO `industry` VALUES (108, '投资', 6);
INSERT INTO `industry` VALUES (109, '基金', 6);
INSERT INTO `industry` VALUES (110, '互联网金融', 6);
INSERT INTO `industry` VALUES (111, '其他金融业', 6);
INSERT INTO `industry` VALUES (112, '连锁酒店', 7);
INSERT INTO `industry` VALUES (113, '普通酒店', 7);
INSERT INTO `industry` VALUES (114, '其他酒店住宿', 7);
INSERT INTO `industry` VALUES (115, '普通餐饮', 7);
INSERT INTO `industry` VALUES (116, '连锁餐饮', 7);
INSERT INTO `industry` VALUES (117, '外卖餐饮', 7);
INSERT INTO `industry` VALUES (118, '其他餐饮', 7);
INSERT INTO `industry` VALUES (119, '旅游景点/场所', 7);
INSERT INTO `industry` VALUES (120, '娱乐健身', 7);
INSERT INTO `industry` VALUES (121, '家政服务', 7);
INSERT INTO `industry` VALUES (122, '中介代理', 7);
INSERT INTO `industry` VALUES (123, '网吧', 7);
INSERT INTO `industry` VALUES (124, '出行交通服务', 7);
INSERT INTO `industry` VALUES (125, '旅行社', 7);
INSERT INTO `industry` VALUES (126, '其他旅游服务', 7);
INSERT INTO `industry` VALUES (127, '客票服务', 7);
INSERT INTO `industry` VALUES (128, '其他服务业', 7);
INSERT INTO `industry` VALUES (129, '仓储业', 8);
INSERT INTO `industry` VALUES (130, '道路运输业', 8);
INSERT INTO `industry` VALUES (131, '铁路运输业', 8);
INSERT INTO `industry` VALUES (132, '水上运输业', 8);
INSERT INTO `industry` VALUES (133, '航空运输业', 8);
INSERT INTO `industry` VALUES (134, '管道运输业', 8);
INSERT INTO `industry` VALUES (135, '其他运输业', 8);
INSERT INTO `industry` VALUES (136, '装卸搬运业', 8);
INSERT INTO `industry` VALUES (137, '运输代理业', 8);
INSERT INTO `industry` VALUES (138, '客票代理业', 8);
INSERT INTO `industry` VALUES (139, '邮政服务', 8);
INSERT INTO `industry` VALUES (140, '快递服务', 8);
INSERT INTO `industry` VALUES (141, '配送揽收服务', 8);
INSERT INTO `industry` VALUES (142, '其他快递服务', 8);
INSERT INTO `industry` VALUES (143, '高等教育', 9);
INSERT INTO `industry` VALUES (144, '初中等教育', 9);
INSERT INTO `industry` VALUES (145, '学前教育', 9);
INSERT INTO `industry` VALUES (146, '教育培训机构', 9);
INSERT INTO `industry` VALUES (147, '技能培训', 9);
INSERT INTO `industry` VALUES (148, '在线教育', 9);
INSERT INTO `industry` VALUES (149, '特殊教育', 9);
INSERT INTO `industry` VALUES (150, '教育服务机构', 9);
INSERT INTO `industry` VALUES (151, '教育行政机构', 9);
INSERT INTO `industry` VALUES (152, '课后服务', 9);
INSERT INTO `industry` VALUES (153, '其他教育', 9);
INSERT INTO `industry` VALUES (154, '新闻', 10);
INSERT INTO `industry` VALUES (155, '广告/公关', 10);
INSERT INTO `industry` VALUES (156, '报纸/杂志', 10);
INSERT INTO `industry` VALUES (157, '广播', 10);
INSERT INTO `industry` VALUES (158, '影视', 10);
INSERT INTO `industry` VALUES (159, '出版', 10);
INSERT INTO `industry` VALUES (160, '文化艺术业', 10);
INSERT INTO `industry` VALUES (161, '体育', 10);
INSERT INTO `industry` VALUES (162, '动漫', 10);
INSERT INTO `industry` VALUES (163, '媒体', 10);
INSERT INTO `industry` VALUES (164, '其他文体', 10);
INSERT INTO `industry` VALUES (165, '其他娱乐', 10);
INSERT INTO `industry` VALUES (166, '其他传媒', 10);
INSERT INTO `industry` VALUES (167, '会计审计服务', 11);
INSERT INTO `industry` VALUES (168, '人力资源服务', 11);
INSERT INTO `industry` VALUES (169, '管理咨询服务', 11);
INSERT INTO `industry` VALUES (170, '法律服务', 11);
INSERT INTO `industry` VALUES (171, '检测认证服务', 11);
INSERT INTO `industry` VALUES (172, '翻译服务', 11);
INSERT INTO `industry` VALUES (173, '咨询调查服务', 11);
INSERT INTO `industry` VALUES (174, '知识产权服务', 11);
INSERT INTO `industry` VALUES (175, '安全保护服务', 11);
INSERT INTO `industry` VALUES (176, '其他商务服务', 11);
INSERT INTO `industry` VALUES (177, '机械设备租赁', 11);
INSERT INTO `industry` VALUES (178, '文化用品租赁', 11);
INSERT INTO `industry` VALUES (179, '其他租赁', 11);
INSERT INTO `industry` VALUES (180, '民营医院', 12);
INSERT INTO `industry` VALUES (181, '公立医院', 12);
INSERT INTO `industry` VALUES (182, '社区医院', 12);
INSERT INTO `industry` VALUES (183, '医疗软件', 12);
INSERT INTO `industry` VALUES (184, '美容整形', 12);
INSERT INTO `industry` VALUES (185, '药品器械', 12);
INSERT INTO `industry` VALUES (186, '健康管理', 12);
INSERT INTO `industry` VALUES (187, '药店连锁', 12);
INSERT INTO `industry` VALUES (188, '医疗创新', 12);
INSERT INTO `industry` VALUES (189, '疾病防控机构', 12);
INSERT INTO `industry` VALUES (190, '护理休养机构', 12);
INSERT INTO `industry` VALUES (191, '其他医疗机构', 12);
INSERT INTO `industry` VALUES (192, '党群/党委', 13);
INSERT INTO `industry` VALUES (193, '党群/团委', 13);
INSERT INTO `industry` VALUES (194, '民生/民政', 13);
INSERT INTO `industry` VALUES (195, '民生/文化', 13);
INSERT INTO `industry` VALUES (196, '民生/广电', 13);
INSERT INTO `industry` VALUES (197, '民生/人社', 13);
INSERT INTO `industry` VALUES (198, '民生/交通', 13);
INSERT INTO `industry` VALUES (199, '民生/卫生', 13);
INSERT INTO `industry` VALUES (200, '政法/公安', 13);
INSERT INTO `industry` VALUES (201, '政法/检察院', 13);
INSERT INTO `industry` VALUES (202, '政法/法院', 13);
INSERT INTO `industry` VALUES (203, '政法/司法', 13);
INSERT INTO `industry` VALUES (204, '经发/发改委', 13);
INSERT INTO `industry` VALUES (205, '经发/经信委', 13);
INSERT INTO `industry` VALUES (206, '经发/商务局', 13);
INSERT INTO `industry` VALUES (207, '经发/统计局', 13);
INSERT INTO `industry` VALUES (208, '城建/规划', 13);
INSERT INTO `industry` VALUES (209, '城建/国土', 13);
INSERT INTO `industry` VALUES (210, '城建/建设', 13);
INSERT INTO `industry` VALUES (211, '监管/税务', 13);
INSERT INTO `industry` VALUES (212, '监管/海关', 13);
INSERT INTO `industry` VALUES (213, '监管/工商', 13);
INSERT INTO `industry` VALUES (214, '监管/环保', 13);
INSERT INTO `industry` VALUES (215, '监管/物价', 13);
INSERT INTO `industry` VALUES (216, '监管/药品', 13);
INSERT INTO `industry` VALUES (217, '市委/市政府', 13);
INSERT INTO `industry` VALUES (218, '县委/县政府', 13);
INSERT INTO `industry` VALUES (219, '省委/省政府', 13);
INSERT INTO `industry` VALUES (220, '镇级政府', 13);
INSERT INTO `industry` VALUES (221, '公共设施管理', 13);
INSERT INTO `industry` VALUES (222, '其他政府部门', 13);
INSERT INTO `industry` VALUES (223, '其他事业单位', 13);
INSERT INTO `industry` VALUES (224, '公益机构', 14);
INSERT INTO `industry` VALUES (225, '行业协会', 14);
INSERT INTO `industry` VALUES (226, '宗教组织', 14);
INSERT INTO `industry` VALUES (227, '学生组织', 14);
INSERT INTO `industry` VALUES (228, '共青团', 14);
INSERT INTO `industry` VALUES (229, '国际机构', 14);
INSERT INTO `industry` VALUES (230, '非营利机构', 14);
INSERT INTO `industry` VALUES (231, '工会', 14);
INSERT INTO `industry` VALUES (232, '基金会', 14);
INSERT INTO `industry` VALUES (233, '村委会/居委会', 14);
INSERT INTO `industry` VALUES (234, '其他社会组织', 14);
INSERT INTO `industry` VALUES (235, '试验/研究所', 15);
INSERT INTO `industry` VALUES (236, '专业技术服务', 15);
INSERT INTO `industry` VALUES (237, '科技推广应用', 15);
INSERT INTO `industry` VALUES (238, '生态环境治理', 16);
INSERT INTO `industry` VALUES (239, '水利管理', 16);
INSERT INTO `industry` VALUES (240, '居民服务业', 17);
INSERT INTO `industry` VALUES (241, '产品修理业', 17);
INSERT INTO `industry` VALUES (242, '其他服务业', 17);
INSERT INTO `industry` VALUES (243, '煤炭', 18);
INSERT INTO `industry` VALUES (244, '石油/天然气/炼化/石化', 18);
INSERT INTO `industry` VALUES (245, '黑色金属', 18);
INSERT INTO `industry` VALUES (246, '有色金属', 18);
INSERT INTO `industry` VALUES (247, '非金属', 18);
INSERT INTO `industry` VALUES (248, '开采辅助活动', 18);
INSERT INTO `industry` VALUES (249, '其他采矿业', 18);
INSERT INTO `industry` VALUES (250, '农业', 19);
INSERT INTO `industry` VALUES (251, '林业', 19);
INSERT INTO `industry` VALUES (252, '畜牧业', 19);
INSERT INTO `industry` VALUES (253, '渔业', 19);
INSERT INTO `industry` VALUES (254, '农林牧渔服务', 19);
INSERT INTO `industry` VALUES (255, '电/热生产供应', 20);
INSERT INTO `industry` VALUES (256, '燃气生产供应', 20);
INSERT INTO `industry` VALUES (257, '水生产供应', 20);
INSERT INTO `industry` VALUES (258, '家庭', 21);
INSERT INTO `industry` VALUES (259, '同学', 21);
INSERT INTO `industry` VALUES (260, '朋友', 21);
COMMIT;

-- ----------------------------
-- Table structure for issue_options
-- ----------------------------
DROP TABLE IF EXISTS `issue_options`;
CREATE TABLE `issue_options` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `discussionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for meeting_files
-- ----------------------------
DROP TABLE IF EXISTS `meeting_files`;
CREATE TABLE `meeting_files` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingInfoId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `folder_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for meeting_folders
-- ----------------------------
DROP TABLE IF EXISTS `meeting_folders`;
CREATE TABLE `meeting_folders` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingInfoId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for meeting_info
-- ----------------------------
DROP TABLE IF EXISTS `meeting_info`;
CREATE TABLE `meeting_info` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingRoomId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `startAt` timestamp NULL DEFAULT NULL,
  `endAt` timestamp NULL DEFAULT NULL,
  `creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for meeting_media
-- ----------------------------
DROP TABLE IF EXISTS `meeting_media`;
CREATE TABLE `meeting_media` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingInfoId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for meeting_notice
-- ----------------------------
DROP TABLE IF EXISTS `meeting_notice`;
CREATE TABLE `meeting_notice` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meetingInfo_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `secret_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `flag` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for meeting_recorded
-- ----------------------------
DROP TABLE IF EXISTS `meeting_recorded`;
CREATE TABLE `meeting_recorded` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meetingInfoId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `recordId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `flag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for meeting_room
-- ----------------------------
DROP TABLE IF EXISTS `meeting_room`;
CREATE TABLE `meeting_room` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `seatUrl` longblob COMMENT '座位图',
  `bgUrl` longblob COMMENT '背景图',
  `create_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  `update_date` timestamp NULL DEFAULT NULL,
  `org_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for meeting_summary
-- ----------------------------
DROP TABLE IF EXISTS `meeting_summary`;
CREATE TABLE `meeting_summary` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `personnel_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人ID',
  `info_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '会议ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件地址',
  `share` tinyint(1) DEFAULT NULL COMMENT '是否为共享文件',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件类型',
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件唯一标识',
  `update_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会议记录表';

-- ----------------------------
-- Table structure for meeting_videos
-- ----------------------------
DROP TABLE IF EXISTS `meeting_videos`;
CREATE TABLE `meeting_videos` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingInfoId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  `size` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for meeting_votecon
-- ----------------------------
DROP TABLE IF EXISTS `meeting_votecon`;
CREATE TABLE `meeting_votecon` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `discussion_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `issue_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `waiver` tinyint(4) DEFAULT '1',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `signData` longblob,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `flag` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `leader` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  `region` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contacts_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contacts_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for personnel
-- ----------------------------
DROP TABLE IF EXISTS `personnel`;
CREATE TABLE `personnel` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dept_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `call` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recorded_configs
-- ----------------------------
DROP TABLE IF EXISTS `recorded_configs`;
CREATE TABLE `recorded_configs` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recordedIp` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `recordedUserName` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `recordedPassword` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `flag` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for screen_seeting
-- ----------------------------
DROP TABLE IF EXISTS `screen_seeting`;
CREATE TABLE `screen_seeting` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingRoomId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isShowMeetingName` int(11) DEFAULT NULL,
  `bgUrl` longblob,
  `isShowdeFinedTitle` int(11) DEFAULT NULL,
  `titleLeft` float DEFAULT NULL,
  `titleTop` float DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titleFontSize` int(11) DEFAULT NULL,
  `titleFontFamily` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titleFontColor` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isShowLogo` int(11) DEFAULT NULL,
  `logo` longblob,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for seats
-- ----------------------------
DROP TABLE IF EXISTS `seats`;
CREATE TABLE `seats` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingRoomId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for seats_settings
-- ----------------------------
DROP TABLE IF EXISTS `seats_settings`;
CREATE TABLE `seats_settings` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `meetingRoomId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dotSize` int(11) DEFAULT '100',
  `textSpacing` int(11) DEFAULT '100',
  `textFontSize` int(11) DEFAULT '25',
  `textColor` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  `seatsImg` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for team_personnel
-- ----------------------------
DROP TABLE IF EXISTS `team_personnel`;
CREATE TABLE `team_personnel` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `team_id` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组ID',
  `personnel_id` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '成员ID',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `flag` tinyint(1) DEFAULT '1' COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `call` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wake_mac
-- ----------------------------
DROP TABLE IF EXISTS `wake_mac`;
CREATE TABLE `wake_mac` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '会议室ID',
  `mac` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'mac地址',
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
