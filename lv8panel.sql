/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.40.83
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : lv8panel

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 12/11/2021 17:19:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chats
-- ----------------------------
DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ticketid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chats
-- ----------------------------
INSERT INTO `chats` VALUES (1, '2109120006', 'haris rifai', 'Hi ini Test data', '2021-09-12 08:23:59', '2021-09-12 08:23:59');
INSERT INTO `chats` VALUES (2, '2109120006', 'haris rifai', 'Masuk Ngak Datanya', '2021-09-12 08:23:59', '2021-09-12 08:23:59');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `renewal_date` date NULL DEFAULT NULL,
  `namedisplay` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lantai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `extnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `digital` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES (1, '2021-10-10', 'Lia', 'Anggun Kreasi', 'Front Office', '1', '101', '1', NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (2, '2021-10-10', 'Lia', 'Anggun Kreasi', 'Front Office', '1', '102', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (3, '2021-10-10', 'Meeting Room', 'Anggun Kreasi', 'Front Office', '1', '103', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (4, '2021-10-10', 'Buyer Tommy', 'Anggun Kreasi', 'QC', '1', '106', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (5, '2021-10-10', 'QC Buyer', 'Anggun Kreasi', 'QC Buyer 4', '1', '107', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (6, '2021-10-10', 'Ramesh Sundaram', 'Anggun Kreasi', 'CEO', '1', '108', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (7, '2021-10-10', 'Wanto', 'Anggun Kreasi', 'QC Fabric', '1', '109', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (8, '2021-10-10', 'Pos Depan', 'Anggun Kreasi', 'Security', '1', '110', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (9, '2021-10-10', 'Sugeng/Anah/Feti', 'Anggun Kreasi', 'Warehouse', '1', '111', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (10, '2021-10-10', 'Vena/Tanto', 'Anggun Kreasi', 'Warehouse Fabric', '1', '112', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (11, '2021-10-10', 'Dea', 'Anggun Kreasi', 'Received', '1', '113', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (12, '2021-10-10', 'Ahad/Dwi', 'Anggun Kreasi', 'Maintenance', '1', '114', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (13, '2021-10-10', 'Yuli', 'Anggun Kreasi', 'Marker', '1', '115', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (14, '2021-10-10', 'Buyer Asmara', 'Anggun Kreasi', 'Asmara', '1', '118', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (15, '2021-10-10', 'Buyer SOT', 'Anggun Kreasi', 'SOT', '1', '119', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (16, '2021-10-10', 'Restu/Tugini/Erna', 'Anggun Kreasi', 'Marker', '1', '120', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (17, '2021-10-10', 'Bayu/Budi/Alfi', 'Anggun Kreasi', 'Pattern', '1', '121', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (18, '2021-10-10', 'Arasu', 'Anggun Kreasi', 'Sample', '1', '122', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (19, '2021-10-10', 'Afri/Putut', 'Anggun Kreasi', 'Pattern', '1', '123', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (20, '2021-10-10', 'Imam/Indar', 'Anggun Kreasi', 'QA', '1', '124', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (21, '2021-10-10', 'Nora', 'Anggun Kreasi', 'Sample Adm', '1', '126', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (22, '2021-10-10', 'Dewi/Aji', 'Anggun Kreasi', 'Cutting', '1', '147', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (23, '2021-10-10', 'Rizal/Nur/Novi', 'Anggun Kreasi', 'Finishing', '1', '148', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (24, '2021-10-10', 'Udin', 'Anggun Kreasi', 'Laser Sample', '1', '150', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (25, '2021-10-10', 'Nurul', 'Anggun Kreasi', 'Finish Pattern', '1', '155', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (26, '2021-10-10', 'Embro', 'Anggun Kreasi', 'Embro', '1', '169', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (27, '2021-10-10', 'Shena', 'Anggun Kreasi', 'Lab', '1', '170', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (28, '2021-10-10', 'Alvi', 'Anggun Kreasi', 'WH Acc', '1', '171', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (29, '2021-10-10', 'Klinik', 'Anggun Kreasi', 'Klinik', '1', '173', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (30, '2021-10-10', 'Loading', 'Anggun Kreasi', 'Finishing', '1', '177', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (31, '2021-10-10', 'Toa', 'Anggun Kreasi', 'GA', '1', '179', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (32, '2021-10-10', 'Teguh', 'Anggun Kreasi', 'Security', '1', '188', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (33, '2021-10-10', 'Pos Timur', 'Anggun Kreasi', 'Security', '1', '196', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (34, '2021-10-10', 'Lilis', 'Anggun Kreasi', 'QC Finishing', '1', '197', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (35, '2021-10-10', 'Washing', 'Anggun Kreasi', 'Washing', '1', '198', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (36, '2021-10-10', 'Beacukai', 'Anggun Kreasi', 'Bea Cukai', '1', '199', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (37, '2021-10-10', 'Balbir', 'Anggun Kreasi', 'Production', '2', '200', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (38, '2021-10-10', 'Dian/Vera', 'Anggun Kreasi', 'Production', '2', '201', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (39, '2021-10-10', 'Ratna/Tomas', 'Anggun Kreasi', 'PPIC', '2', '202', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (40, '2021-10-10', 'Niken/Siwi', 'Anggun Kreasi', 'QC', '2', '203', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (41, '2021-10-10', 'Friza/Yani', 'Anggun Kreasi', 'PPIC', '2', '204', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (42, '2021-10-10', 'Meri', 'Anggun Kreasi', 'PPIC', '2', '205', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (43, '2021-10-10', 'Nurul/Evelin', 'Anggun Kreasi', 'IE', '2', '206', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (44, '2021-10-10', 'Dinesh', 'Anggun Kreasi', 'IE', '2', '207', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (45, '2021-10-10', 'Karsim', 'Anggun Kreasi', 'Production', '2', '208', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (46, '2021-10-10', 'Yanto', 'Anggun Kreasi', 'Mekanik', '2', '209', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (47, '2021-10-10', 'Budi/Haris/Yudi', 'Anggun Kreasi', 'Exim', '2', '210', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (48, '2021-10-10', 'Imam/Yeni/Nanda/Heni', 'Anggun Kreasi', 'Exim Lokal', '2', '211', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (49, '2021-10-10', 'Arifin/Haris', 'Anggun Kreasi', 'IT', '1', '212', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (50, '2021-10-10', 'Sigit', 'Anggun Kreasi', 'IT', '2', '213', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (51, '2021-10-10', 'Kenso', 'Anggun Kreasi', 'Exim', '2', '215', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (52, '2021-10-10', 'Moch Fajar/Diksan', 'Anggun Kreasi', 'Purchase', '2', '216', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (53, '2021-10-10', 'Prajakti/Haryo', 'Anggun Kreasi', 'Purchase', '2', '217', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (54, '2021-10-10', 'Luluc/Wiji', 'Anggun Kreasi', 'Purchase', '2', '218', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (55, '2021-10-10', 'Titi/Andaru/Citra/Fauzi', 'Anggun Kreasi', 'Accounting', '2', '220', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-14 11:07:15');
INSERT INTO `contacts` VALUES (56, '2021-10-10', 'Kiky', 'Anggun Kreasi', 'Hrd Ga', '2', '221', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-25 03:29:02');
INSERT INTO `contacts` VALUES (57, '2021-10-10', 'Phillea', 'Anggun Kreasi', 'Accounting', '2', '222', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (58, '2021-10-10', 'Thenappan/Heri', 'Anggun Kreasi', 'Accounting', '2', '223', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (59, '2021-10-10', 'Ummi', 'Anggun Kreasi', 'Accounting', '2', '224', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (60, '2021-10-10', 'Pipit/ERA/Ewin', 'Anggun Kreasi', 'Hrd Ga', '2', '225', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-25 03:29:28');
INSERT INTO `contacts` VALUES (61, '2021-10-10', 'Rulis', 'Anggun Kreasi', 'Sewing', '2', '227', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (62, '2021-10-10', 'Lili/Rina', 'Anggun Kreasi', 'PPIC', '2', '228', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (63, '2021-10-10', 'Vacant', 'Anggun Kreasi', 'PPIC', '2', '229', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (64, '2021-10-10', 'Mohit', 'Anggun Kreasi', 'Comercial', '2', '230', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (65, '2021-10-10', 'Totok/Geovani/Atta/VIDHA', 'Anggun Kreasi', 'Comercial', '2', '231', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (66, '2021-10-10', 'Sachit/April/Faulin', 'Anggun Kreasi', 'Comercial', '2', '232', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (67, '2021-10-10', 'Arya/Trias/Amy/Lina', 'Anggun Kreasi', 'Comercial', '2', '233', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (68, '2021-10-10', 'Ely', 'Anggun Kreasi', 'Comercial', '2', '234', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (69, '2021-10-10', 'Merry/Yanti', 'Anggun Kreasi', 'Comercial', '2', '235', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (70, '2021-10-10', 'Deris', 'Anggun Kreasi', 'Comercial', '2', '237', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (71, '2021-10-10', 'Herna', 'Anggun Kreasi', 'Comercial', '2', '238', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (72, '2021-10-10', 'Oktavia', 'Anggun Kreasi', 'Comercial', '2', '239', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (73, '2021-10-10', 'Thananjayan', 'Anggun Kreasi', 'Comercial', '2', '240', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (74, '2021-10-10', 'Saurabh', 'Anggun Kreasi', 'Design', '2', '241', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (75, '2021-10-10', 'Nova/Nug/Patty', 'Anggun Kreasi', 'Design', '2', '242', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (76, '2021-10-10', 'Temi', 'Anggun Kreasi', 'QC Accessories', '2', '245', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (77, '2021-10-10', 'Siti/Ika', 'Anggun Kreasi', 'Wh Accessories', '2', '246', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (78, '2021-10-10', 'Abhishek', 'Anggun Kreasi', 'Marketing', '2', '250', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (79, '2021-10-10', 'Dita/Ana/Nana/Fenty', 'Anggun Kreasi', 'Marketing', '2', '251', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');
INSERT INTO `contacts` VALUES (80, '2021-10-10', 'Sanjay', 'Anggun Kreasi', 'QC Manager', '2', '255', NULL, NULL, '1', '1', '2021-10-12 06:14:43', '2021-10-12 06:14:43');

-- ----------------------------
-- Table structure for departements
-- ----------------------------
DROP TABLE IF EXISTS `departements`;
CREATE TABLE `departements`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departements
-- ----------------------------
INSERT INTO `departements` VALUES (1, 'AKG', 'Accounting', '1', '1', NULL, NULL);
INSERT INTO `departements` VALUES (2, 'AKG', 'Finishing', '1', '1', NULL, NULL);
INSERT INTO `departements` VALUES (3, 'AKG', 'Commercial', '1', '1', NULL, NULL);
INSERT INTO `departements` VALUES (4, 'AKG', 'HRD GA', '1', '1', NULL, NULL);
INSERT INTO `departements` VALUES (5, 'AKG', 'Design', '1', '1', NULL, NULL);
INSERT INTO `departements` VALUES (6, 'AKG', 'Production', '1', '1', NULL, NULL);
INSERT INTO `departements` VALUES (7, 'AKG', 'IT', '1', '1', NULL, NULL);

-- ----------------------------
-- Table structure for emailaccounts
-- ----------------------------
DROP TABLE IF EXISTS `emailaccounts`;
CREATE TABLE `emailaccounts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_usr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_usr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pwd_usr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_usr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remark_usr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `month_date` date NULL DEFAULT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 220 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emailaccounts
-- ----------------------------
INSERT INTO `emailaccounts` VALUES (1, 'Citra', 'citra.acc@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Accounting', '', '2020-10-10', '1', '1', '2020-10-09 10:07:31', '2020-10-09 10:07:31');
INSERT INTO `emailaccounts` VALUES (2, 'adit acc', 'adit.acc@anggunkreasi.com', 'Anggun0621@akg!', 'O365 Basic', 'Accounting', '', '2021-06-09', '1', '1', '2020-10-09 10:08:51', '2020-10-09 10:08:51');
INSERT INTO `emailaccounts` VALUES (3, 'andaru', 'andaru.acc@anggunkreasi.com', 'Andaru0392@akg!', 'O365 Basic', 'Accounting', '', '2020-10-09', '1', '1', '2021-06-09 08:25:19', '2021-06-09 08:25:19');
INSERT INTO `emailaccounts` VALUES (4, 'phillea', 'phillea.acc@anggunkreasi.com', 'Phillea1020@akg!', 'O365 Basic', 'Accounting', '', '2020-10-16', '1', '1', '2020-10-09 10:09:41', '2020-10-09 10:09:41');
INSERT INTO `emailaccounts` VALUES (5, 'Titi', 'titi.acc@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Accounting', '', '2020-10-10', '1', '1', '2020-10-09 10:20:42', '2020-10-09 10:20:42');
INSERT INTO `emailaccounts` VALUES (6, 'Fauzi Ahmad', 'fauziahmad@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Accounting', '', '2020-10-10', '1', '1', '2021-09-10 10:14:52', '2021-09-10 10:14:52');
INSERT INTO `emailaccounts` VALUES (7, 'Haryadi', 'haryadi@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Accounting', '', '2020-10-10', '1', '1', '2020-10-09 10:21:21', '2020-10-09 10:21:21');
INSERT INTO `emailaccounts` VALUES (8, 'Ummi', 'ummi@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Accounting', '', '2020-10-10', '1', '1', '2020-10-09 10:25:09', '2020-10-09 10:25:09');
INSERT INTO `emailaccounts` VALUES (9, 'Nova Riani', 'nova.pd@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Design', '', '2020-10-10', '1', '1', '2020-11-04 03:51:48', '2020-11-04 03:51:48');
INSERT INTO `emailaccounts` VALUES (10, 'Nugroho', 'nug@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Design', '', '2020-10-10', '1', '1', '2020-10-09 10:28:35', '2020-10-09 10:28:35');
INSERT INTO `emailaccounts` VALUES (11, 'Patty Amalia', 'pattyamalia@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Design', '', '2020-10-10', '1', '1', '2020-10-09 14:05:04', '2020-10-09 14:05:04');
INSERT INTO `emailaccounts` VALUES (12, 'saurabh', 'saurabh@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Design', '', '2020-10-10', '1', '1', '2020-10-09 14:08:38', '2020-10-09 14:08:38');
INSERT INTO `emailaccounts` VALUES (13, 'Vero pd', 'vero.pd@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Design', '', '2020-10-10', '1', '1', '2020-10-09 07:53:46', '2020-10-09 07:53:46');
INSERT INTO `emailaccounts` VALUES (14, 'Yunita', 'yunita.pd@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Design', '', '2020-10-10', '1', '1', '2020-10-09 14:15:08', '2020-10-09 14:15:08');
INSERT INTO `emailaccounts` VALUES (15, 'Budi Darmawan', 'budi.exim@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Exim', '', '2020-10-10', '1', '1', '2020-10-10 03:31:34', '2020-10-10 03:31:34');
INSERT INTO `emailaccounts` VALUES (16, 'Vika', 'vika.exim@anggunkreasi.com', 'Vika0599@akg!', 'O365 Basic', 'Exim', '', '2021-01-28', '1', '1', '2020-10-10 03:33:39', '2020-10-10 03:33:39');
INSERT INTO `emailaccounts` VALUES (17, 'heni', 'heni.exim@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Exim', '', '2020-10-10', '1', '1', '2021-09-08 08:57:16', '2021-09-08 08:57:16');
INSERT INTO `emailaccounts` VALUES (18, 'Imam Cahyono', 'imam.cahyono@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Exim', '', '2020-10-10', '1', '1', '2021-07-14 09:22:41', '2021-07-14 09:22:41');
INSERT INTO `emailaccounts` VALUES (19, 'Kenzo', 'kenzo.exim@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Exim', '', '2020-10-10', '1', '1', '2020-10-10 03:35:21', '2020-10-10 03:35:21');
INSERT INTO `emailaccounts` VALUES (20, 'Nanda Bagus', 'nandabagus.exim@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Exim', '', '2020-10-10', '1', '1', '2021-08-31 03:45:27', '2021-08-31 03:45:27');
INSERT INTO `emailaccounts` VALUES (21, 'yeni krismayanti', 'yeni.exim@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Exim', '', '2020-10-10', '1', '1', '2021-07-28 07:33:39', '2021-07-28 07:33:39');
INSERT INTO `emailaccounts` VALUES (22, 'Yudi Desapora', 'yudi.exim@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Exim', '', '2020-10-10', '1', '1', '2020-10-10 03:36:35', '2020-10-10 03:36:35');
INSERT INTO `emailaccounts` VALUES (23, 'Haris Triswantoro', 'haris.exim@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Exim', '', '2020-10-10', '1', '1', '2020-10-10 03:38:06', '2020-10-10 03:38:06');
INSERT INTO `emailaccounts` VALUES (24, 'tanjung exim', 'tanjung.exim@anggunkreasi.com', 'Anggun1195@akg!', 'O365 Basic', 'Exim', '', '2021-01-13', '1', '1', '2020-10-10 06:43:41', '2020-10-10 06:43:41');
INSERT INTO `emailaccounts` VALUES (25, 'Admin Recruitment', 'adm.recruitment@anggunkreasi.com', 'Anggun0921@akg!', 'O365 Basic', 'HRD & GA', '', '2021-09-10', '1', '1', '2021-02-03 01:47:40', '2021-02-03 01:47:40');
INSERT INTO `emailaccounts` VALUES (26, 'ika compliance', 'ika.compliance@anggunkreasi.com', 'Ika0295@akg!', 'O365 Basic', 'HRD & GA', '', '2021-09-17', '1', '1', '2021-10-12 06:36:55', '2021-10-12 06:36:55');
INSERT INTO `emailaccounts` VALUES (27, 'SGTC', 'sgtc@anggunkreasi.com', 'Anggun0521@akg!', 'O365 Basic', 'HRD & GA', '', '2021-05-18', '1', '1', '2020-10-23 02:59:54', '2020-10-23 02:59:54');
INSERT INTO `emailaccounts` VALUES (28, 'Adm Hrd', 'adm.hrd@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2021-02-23 03:20:41', '2021-02-23 03:20:41');
INSERT INTO `emailaccounts` VALUES (29, 'Dewintiya', 'dewintiya@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2020-10-09 08:59:56', '2020-10-09 08:59:56');
INSERT INTO `emailaccounts` VALUES (30, 'Era dwi', 'era@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2020-10-09 09:01:29', '2020-10-09 09:01:29');
INSERT INTO `emailaccounts` VALUES (31, 'Kiky', 'training@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2021-06-17 08:28:36', '2021-06-17 08:28:36');
INSERT INTO `emailaccounts` VALUES (32, 'klinik', 'klinik@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2020-10-10 07:22:40', '2020-10-10 07:22:40');
INSERT INTO `emailaccounts` VALUES (33, 'Liatri', 'lia@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2021-09-17 01:37:38', '2021-09-17 01:37:38');
INSERT INTO `emailaccounts` VALUES (34, 'Maharani', 'maharani@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2021-07-28 06:27:56', '2021-07-28 06:27:56');
INSERT INTO `emailaccounts` VALUES (35, 'Pipit', 'pipit@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2021-02-26 01:44:41', '2021-02-26 01:44:41');
INSERT INTO `emailaccounts` VALUES (36, 'Rahajeng', 'rahajeng@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2020-10-09 09:04:49', '2020-10-09 09:04:49');
INSERT INTO `emailaccounts` VALUES (37, 'Recruitment', 'recruitment@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2021-09-15 03:40:39', '2021-09-15 03:40:39');
INSERT INTO `emailaccounts` VALUES (38, 'Sita', 'Laksita@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2021-08-04 03:33:42', '2021-08-04 03:33:42');
INSERT INTO `emailaccounts` VALUES (39, 'teguh', 'teguh@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'HRD & GA', '', '2020-10-10', '1', '1', '2021-03-12 10:09:49', '2021-03-12 10:09:49');
INSERT INTO `emailaccounts` VALUES (40, 'Devitasari', 'devitasari@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', 'HRD & GA', '', '2020-10-10', '1', '1', '2020-10-10 06:44:01', '2020-10-10 06:44:01');
INSERT INTO `emailaccounts` VALUES (41, 'Ie1', 'ie1@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'IE', '', '2020-10-10', '1', '1', '2021-02-09 03:15:54', '2021-02-09 03:15:54');
INSERT INTO `emailaccounts` VALUES (42, 'Nurul', 'ie2@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'IE', '', '2020-10-10', '1', '1', '2021-08-19 02:51:09', '2021-08-19 02:51:09');
INSERT INTO `emailaccounts` VALUES (43, 'Tomas', 'tomas@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'IE', '', '2020-10-10', '1', '1', '2021-09-08 07:44:52', '2021-09-08 07:44:52');
INSERT INTO `emailaccounts` VALUES (44, 'Wuri', 'wury@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'IE', '', '2020-10-10', '1', '1', '2021-10-01 03:00:53', '2021-10-01 03:00:53');
INSERT INTO `emailaccounts` VALUES (45, 'dinesh', 'dines@ameyaindo.com', 'Hat50347', 'O365 Basic', 'IE', '', '0000-00-00', '1', '1', '2020-10-16 02:08:19', '2020-10-16 02:08:19');
INSERT INTO `emailaccounts` VALUES (46, 'Breyan IQT', 'breyan.iqt@anggunkreasi.com', 'Breyan0120@akg!', 'O365 Basic', 'IQT', '', '2021-07-14', '1', '1', '2020-10-19 02:50:48', '2020-10-19 02:50:48');
INSERT INTO `emailaccounts` VALUES (47, 'Isti IQT', 'isti.iqt@anggunkreasi.com', 'Isti0594@akg!', 'O365 Basic', 'IQT', '', '2021-07-28', '1', '1', '2020-10-10 06:43:47', '2020-10-10 06:43:47');
INSERT INTO `emailaccounts` VALUES (48, 'Sigit IQT', 'sigit.iqt@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'IQT', '', '2021-04-07', '1', '1', '2021-10-05 02:39:20', '2021-10-05 02:39:20');
INSERT INTO `emailaccounts` VALUES (49, 'wahyu iqt', 'wahyu.iqt@anggunkreasi.com', 'Wahyu1087@akg!', 'O365 Basic', 'IQT', '', '2021-07-28', '1', '1', '2021-10-13 02:41:50', '2021-10-13 02:41:50');
INSERT INTO `emailaccounts` VALUES (50, 'Windi Sugiarto', 'windi.iqt@anggunkreasi.com', 'Windi0588@akg!', 'O365 Basic', 'IQT', '', '2021-06-16', '1', '1', '2021-05-10 07:42:18', '2021-05-10 07:42:18');
INSERT INTO `emailaccounts` VALUES (51, 'Wiwin IQT', 'wiwin.iqt@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'IQT', '', '2020-10-16', '1', '1', '2021-01-26 05:25:55', '2021-01-26 05:25:55');
INSERT INTO `emailaccounts` VALUES (52, 'Nurul IQT', 'nurul.iqt@anggunkreasi.com', '', 'O365 Basic', 'IQT', '', '2020-10-10', '1', '1', '2020-10-10 06:44:13', '2020-10-10 06:44:13');
INSERT INTO `emailaccounts` VALUES (53, 'Tari IQT', 'tari.iqt@anggunkreasi.com', '', 'O365 Basic', 'IQT', '', '2020-10-10', '1', '1', '2021-06-18 02:03:16', '2021-06-18 02:03:16');
INSERT INTO `emailaccounts` VALUES (54, 'arifin', 'arifin@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'IT', '', '2020-10-09', '1', '1', '2021-03-26 03:11:17', '2021-03-26 03:11:17');
INSERT INTO `emailaccounts` VALUES (55, 'Haris Rifai', 'harisrifai@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'IT', '', '2020-10-10', '1', '1', '2020-12-21 08:33:48', '2020-12-21 08:33:48');
INSERT INTO `emailaccounts` VALUES (56, 'Sigit Cahyono', 'sigit@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'IT', '', '2020-12-17', '1', '1', '2021-05-18 02:20:28', '2021-05-18 02:20:28');
INSERT INTO `emailaccounts` VALUES (57, 'Support IT', 'support.it@anggunkreasi.com', '', 'O365 Basic', 'IT', '', '2021-01-27', '1', '1', '2020-12-17 05:55:30', '2020-12-17 05:55:30');
INSERT INTO `emailaccounts` VALUES (58, 'System', 'system@anggunkreasi.com', '', 'O365 Basic', 'IT', '', '2021-04-23', '1', '1', '2021-04-07 10:54:15', '2021-04-07 10:54:15');
INSERT INTO `emailaccounts` VALUES (59, 'IT Anggun', 'it@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Standard', 'IT', '', '2020-06-30', '1', '1', '2021-10-13 02:33:31', '2021-10-13 02:33:31');
INSERT INTO `emailaccounts` VALUES (60, 'Ismarwanto', 'ismarwanto@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'IT', '', '2020-06-30', '1', '1', '2021-01-27 07:36:49', '2021-01-27 07:36:49');
INSERT INTO `emailaccounts` VALUES (61, 'ahad', 'ahad@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Maintenace', '', '2020-10-09', '1', '1', '2021-04-23 06:13:37', '2021-04-23 06:13:37');
INSERT INTO `emailaccounts` VALUES (62, 'contact', 'contact@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Marketing', '', '2020-10-10', '1', '1', '2021-06-17 08:41:33', '2021-06-17 08:41:33');
INSERT INTO `emailaccounts` VALUES (63, 'Mohit', 'mohit@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Marketing', '', '2020-10-10', '1', '1', '2021-08-31 03:46:02', '2021-08-31 03:46:02');
INSERT INTO `emailaccounts` VALUES (64, 'Rina', 'rina@anggunkreasi.com', 'Anggun0601@akg!', 'O365 Basic', 'Marketing', '', '2021-05-10', '1', '1', '2020-10-10 06:44:16', '2020-10-10 06:44:16');
INSERT INTO `emailaccounts` VALUES (65, 'Dita Aryani', 'dita@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Marketing', '', '2020-10-10', '1', '1', '2021-06-04 08:56:29', '2021-06-04 08:56:29');
INSERT INTO `emailaccounts` VALUES (66, 'Fenti', 'fenty@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Marketing', '', '2020-10-10', '1', '1', '2021-01-28 01:43:15', '2021-01-28 01:43:15');
INSERT INTO `emailaccounts` VALUES (67, 'indriana', 'indriana@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Marketing', '', '2020-10-10', '1', '1', '2021-07-28 06:27:06', '2021-07-28 06:27:06');
INSERT INTO `emailaccounts` VALUES (68, 'septiana', 'septiana@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Marketing', '', '2019-06-17', '1', '1', '2021-10-12 06:34:17', '2021-10-12 06:34:17');
INSERT INTO `emailaccounts` VALUES (69, 'Anggun Kreasi Garmen', 'showroom@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Standard', 'Marketing', '', '2020-10-20', '1', '1', '2020-10-09 09:54:19', '2020-10-09 09:54:19');
INSERT INTO `emailaccounts` VALUES (70, 'mekanik', 'mekanik@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Mekanik', '', '2020-10-10', '1', '1', '2021-06-16 01:21:15', '2021-06-16 01:21:15');
INSERT INTO `emailaccounts` VALUES (71, 'arya', 'arya@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-09', '1', '1', '2021-06-21 01:26:58', '2021-06-21 01:26:58');
INSERT INTO `emailaccounts` VALUES (72, 'atta', 'atta@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-16 09:11:34', '2020-10-16 09:11:34');
INSERT INTO `emailaccounts` VALUES (73, 'Dicky  Panji Nugroho', 'dickypanji@anggunkreasi.com', 'Dicky1199@akg!', 'O365 Basic', 'Merchandiser', '', '2021-02-03', '1', '1', '2020-10-10 03:32:25', '2020-10-10 03:32:25');
INSERT INTO `emailaccounts` VALUES (74, 'Dipta', 'dipta.wh@anggunkreasi.com', ' Dipta1021@akg!', 'O365 Basic', 'Merchandiser', '', '2021-10-12', '1', '1', '2019-10-30 10:52:52', '2019-10-30 10:52:52');
INSERT INTO `emailaccounts` VALUES (75, 'disti', 'disti@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-23', '1', '1', '2020-06-30 06:18:38', '2020-06-30 06:18:38');
INSERT INTO `emailaccounts` VALUES (76, 'Ella Yordania', 'ellayordania@anggunkreasi.com', 'Ella0101@akg!', 'O365 Basic', 'Merchandiser', '', '2021-02-23', '1', '1', '2020-10-10 06:44:08', '2020-10-10 06:44:08');
INSERT INTO `emailaccounts` VALUES (77, 'faulin', 'faulin@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-09', '1', '1', '2020-10-10 06:44:44', '2020-10-10 06:44:44');
INSERT INTO `emailaccounts` VALUES (78, 'Gesti', 'gesti@anggunkreasi.com', 'Anggun0490@akg!', 'O365 Basic', 'Merchandiser', '', '2021-06-17', '1', '1', '2020-10-10 06:44:45', '2020-10-10 06:44:45');
INSERT INTO `emailaccounts` VALUES (79, 'Lintang', 'lintang@anggunkreasi.com', 'Anggun1198@akg!', 'O365 Basic', 'Merchandiser', '', '2021-09-15', '1', '1', '2020-10-10 06:44:08', '2020-10-10 06:44:08');
INSERT INTO `emailaccounts` VALUES (80, 'Lioba Evita', 'lioba.evita@anggunkreasi.com', 'Lioba0996@akg!', 'O365 Basic', 'Merchandiser', '', '2021-08-04', '1', '1', '2020-10-10 06:44:09', '2020-10-10 06:44:09');
INSERT INTO `emailaccounts` VALUES (81, 'Mirna', 'mirna@anggunkreasi.com', 'Anggun1101@akg!', 'O365 Basic', 'Merchandiser', '', '2021-03-12', '1', '1', '2020-10-10 06:45:05', '2020-10-10 06:45:05');
INSERT INTO `emailaccounts` VALUES (82, 'Muhammad  Rizki', 'rizki@anggunkreasi.com', 'Anggun1296@akg!', 'O365 Basic', 'Merchandiser', '', '2021-02-09', '1', '1', '2020-10-10 06:44:47', '2020-10-10 06:44:47');
INSERT INTO `emailaccounts` VALUES (83, 'Niko', 'niko@anggunkreasi.com', '', 'O365 Basic', 'Merchandiser', '', '2021-08-19', '1', '1', '2020-10-10 06:45:13', '2020-10-10 06:45:13');
INSERT INTO `emailaccounts` VALUES (84, 'Sachit', 'sachit@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:43:42', '2020-10-10 06:43:42');
INSERT INTO `emailaccounts` VALUES (85, 'Santi Retno Hapsari', 'santirhapsari@anggunkreasi.com', 'Anggun0975@akg!', 'O365 Basic', 'Merchandiser', '', '2021-06-18', '1', '1', '2020-10-10 06:43:43', '2020-10-10 06:43:43');
INSERT INTO `emailaccounts` VALUES (86, 'Savira', 'savira@anggunkreasi.com', 'Anggun0220@akg!', 'O365 Basic', 'Merchandiser', '', '2021-03-26', '1', '1', '2020-10-10 06:43:43', '2020-10-10 06:43:43');
INSERT INTO `emailaccounts` VALUES (87, 'Theo Effendi', 'theo.effendi@anggunkreasi.com', 'Theo0720@akg!', 'O365 Basic', 'Merchandiser', '', '2021-06-17', '1', '1', '2020-10-10 06:43:43', '2020-10-10 06:43:43');
INSERT INTO `emailaccounts` VALUES (88, 'Vidha', 'vidha@anggunkreasi.com', 'Akg@anggun2021!', 'O365 Basic', 'Merchandiser', '', '2021-06-04', '1', '1', '2020-10-10 06:44:08', '2020-10-10 06:44:08');
INSERT INTO `emailaccounts` VALUES (89, 'Wiwiet Septiani Rahayu', 'wiwiet@anggunkreasi.com', 'Anggun1897@akg!', 'O365 Basic', 'Merchandiser', '', '2021-06-21', '1', '1', '2020-10-10 06:44:58', '2020-10-10 06:44:58');
INSERT INTO `emailaccounts` VALUES (90, 'Thananjayan-TJ', 'thananjayan@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Standard', 'Merchandiser', '', '2019-10-30', '1', '1', '2020-10-10 06:43:45', '2020-10-10 06:43:45');
INSERT INTO `emailaccounts` VALUES (91, 'April', 'april@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:45:09', '2020-10-10 06:45:09');
INSERT INTO `emailaccounts` VALUES (92, 'Deris', 'deris@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:44:47', '2020-10-10 06:44:47');
INSERT INTO `emailaccounts` VALUES (93, 'Dyaning', 'dyaning@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:43:45', '2020-10-10 06:43:45');
INSERT INTO `emailaccounts` VALUES (94, 'Ely', 'ely@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:43:46', '2020-10-10 06:43:46');
INSERT INTO `emailaccounts` VALUES (95, 'Geovani', 'geovani@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:43:46', '2020-10-10 06:43:46');
INSERT INTO `emailaccounts` VALUES (96, 'Putri Milenia', 'milenia@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:43:46', '2020-10-10 06:43:46');
INSERT INTO `emailaccounts` VALUES (97, 'Trias', 'trias@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:44:55', '2020-10-10 06:44:55');
INSERT INTO `emailaccounts` VALUES (98, 'wulanpuji', 'wulanpuji@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:43:47', '2020-10-10 06:43:47');
INSERT INTO `emailaccounts` VALUES (99, 'Yanti', 'yanti@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:44:56', '2020-10-10 06:44:56');
INSERT INTO `emailaccounts` VALUES (100, 'frando', 'frando@anggunkreasi.com', 'Anggun2993@akg', 'O365 Basic', 'Merchandiser', '', '2020-12-10', '1', '1', '2020-10-10 06:43:47', '2020-10-10 06:43:47');
INSERT INTO `emailaccounts` VALUES (101, 'herna', 'herna@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-09', '1', '1', '2020-10-10 06:43:48', '2020-10-10 06:43:48');
INSERT INTO `emailaccounts` VALUES (102, 'Totok Sugiyanto', 'totok@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:43:49', '2020-10-10 06:43:49');
INSERT INTO `emailaccounts` VALUES (103, 'amy saputri', 'amysaputri@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', 'Merchandiser', '', '2020-10-09', '1', '1', '2020-10-10 06:43:50', '2020-10-10 06:43:50');
INSERT INTO `emailaccounts` VALUES (104, 'Merry', 'merry@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:43:50', '2020-10-10 06:43:50');
INSERT INTO `emailaccounts` VALUES (105, 'Rindayuana', 'rindayuana@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', 'Merchandiser', '', '2020-10-10', '1', '1', '2020-10-10 06:43:51', '2020-10-10 06:43:51');
INSERT INTO `emailaccounts` VALUES (106, 'sf_ucfirst([EMail_LocalPart])+Docu.Scanned*#', 'octavia@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', 'Merchandiser', '', '2019-06-17', '1', '1', '2020-10-10 06:43:52', '2020-10-10 06:43:52');
INSERT INTO `emailaccounts` VALUES (107, 'Dedi Setiawan', 'dedisetiawan@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'PPIC', '', '2020-10-10', '1', '1', '2020-10-10 06:43:51', '2020-10-10 06:43:51');
INSERT INTO `emailaccounts` VALUES (108, 'Friza Rahmanita', 'friza@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'PPIC', '', '2020-10-10', '1', '1', '2020-10-10 06:43:52', '2020-10-10 06:43:52');
INSERT INTO `emailaccounts` VALUES (109, 'Lili PPIC', 'lili.ppic@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'PPIC', '', '2020-10-10', '1', '1', '2020-10-10 06:45:07', '2020-10-10 06:45:07');
INSERT INTO `emailaccounts` VALUES (110, 'PPIC', 'ppic@anggunkreasi.com', 'Anggun@123', 'O365 Basic', 'PPIC', '', '2020-10-10', '1', '1', '2020-10-10 06:43:52', '2020-10-10 06:43:52');
INSERT INTO `emailaccounts` VALUES (111, 'PPIC 2', 'ppic2@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'PPIC', '', '2020-10-10', '1', '1', '2020-10-10 06:43:53', '2020-10-10 06:43:53');
INSERT INTO `emailaccounts` VALUES (112, 'admin produksi', 'adm.production@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-09', '1', '1', '2020-10-10 06:43:54', '2020-10-10 06:43:54');
INSERT INTO `emailaccounts` VALUES (113, 'CNC', 'cnc@anggunkreasi.com', 'Anggun0721@akg!', 'O365 Basic', 'Production', '', '2021-07-28', '1', '1', '2020-10-10 06:44:19', '2020-10-10 06:44:19');
INSERT INTO `emailaccounts` VALUES (114, 'component', 'component@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:44:55', '2020-10-10 06:44:55');
INSERT INTO `emailaccounts` VALUES (115, 'Cutting', 'cutting@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:43:55', '2020-10-10 06:43:55');
INSERT INTO `emailaccounts` VALUES (116, 'Jono', 'jono@anggunkreasi.com', 'Anggun0486@akg!', 'O365 Basic', 'Production', '', '2021-02-26', '1', '1', '2020-10-10 06:44:59', '2020-10-10 06:44:59');
INSERT INTO `emailaccounts` VALUES (117, 'sewfree', 'sewfree@anggunkreasi.com', 'Anggun21220@akg!', 'O365 Basic', 'Production', '', '2020-12-21', '1', '1', '2020-10-10 06:43:55', '2020-10-10 06:43:55');
INSERT INTO `emailaccounts` VALUES (118, 'washing', 'washing@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-09', '1', '1', '2020-10-10 06:43:56', '2020-10-10 06:43:56');
INSERT INTO `emailaccounts` VALUES (119, 'balbir', 'balbir@anggunkreasi.com', 'Awnla0981akg', 'O365 Standard', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:43:56', '2020-10-10 06:43:56');
INSERT INTO `emailaccounts` VALUES (120, 'Dewimurniasih', 'dewimurniasih@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:43:56', '2020-10-10 06:43:56');
INSERT INTO `emailaccounts` VALUES (121, 'Embroidery', 'embroidery@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:43:57', '2020-10-10 06:43:57');
INSERT INTO `emailaccounts` VALUES (122, 'Joko Endro', 'jokoendro@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:43:57', '2020-10-10 06:43:57');
INSERT INTO `emailaccounts` VALUES (123, 'laser cutting', 'laser.cutting@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:43:57', '2020-10-10 06:43:57');
INSERT INTO `emailaccounts` VALUES (124, 'Lilis', 'lilis@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:43:59', '2020-10-10 06:43:59');
INSERT INTO `emailaccounts` VALUES (125, 'Packing', 'packing@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:43:59', '2020-10-10 06:43:59');
INSERT INTO `emailaccounts` VALUES (126, 'Product integrity', 'product.integrity@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:44:00', '2020-10-10 06:44:00');
INSERT INTO `emailaccounts` VALUES (127, 'ratna', 'planning@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:44:01', '2020-10-10 06:44:01');
INSERT INTO `emailaccounts` VALUES (128, 'Rista', 'finishing.accessories@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-10', '1', '1', '2020-10-10 06:44:02', '2020-10-10 06:44:02');
INSERT INTO `emailaccounts` VALUES (129, 'Karsim', 'karsim@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Production', '', '2020-10-13', '1', '1', '2020-10-10 06:44:02', '2020-10-10 06:44:02');
INSERT INTO `emailaccounts` VALUES (130, 'adm purchase', 'adm.purchase@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Purchase', '', '2020-10-10', '1', '1', '2020-10-10 06:43:51', '2020-10-10 06:43:51');
INSERT INTO `emailaccounts` VALUES (131, 'Rita Aprilia', 'ritaaprilia@anggunkreasi.com', 'Anggun0498@akg!', 'O365 Basic', 'Purchase', '', '2021-01-26', '1', '1', '2020-10-10 06:44:03', '2020-10-10 06:44:03');
INSERT INTO `emailaccounts` VALUES (132, 'Diksan', 'diksan@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Purchase', '', '2020-10-10', '1', '1', '2020-10-10 06:44:43', '2020-10-10 06:44:43');
INSERT INTO `emailaccounts` VALUES (133, 'Haryo', 'haryo@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Purchase', '', '2020-10-10', '1', '1', '2020-10-10 06:44:04', '2020-10-10 06:44:04');
INSERT INTO `emailaccounts` VALUES (134, 'Luluc', 'luluc@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Purchase', '', '2020-10-10', '1', '1', '2020-10-10 06:44:05', '2020-10-10 06:44:05');
INSERT INTO `emailaccounts` VALUES (135, 'Moch Fajar', 'moch.fajar@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Purchase', '', '2020-10-10', '1', '1', '2020-10-10 06:44:04', '2020-10-10 06:44:04');
INSERT INTO `emailaccounts` VALUES (136, 'prajakti', 'prajakti@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Purchase', '', '2020-10-10', '1', '1', '2020-10-10 06:44:05', '2020-10-10 06:44:05');
INSERT INTO `emailaccounts` VALUES (137, 'General Purchase', 'g.purchase@anggunkreasi.com', 'Indri1498@akg!', 'O365 Basic', 'Purchase', '', '2021-03-17', '1', '1', '2020-10-10 06:44:05', '2020-10-10 06:44:05');
INSERT INTO `emailaccounts` VALUES (138, 'qa jss', 'qa.jss@anggunkreasi.com', 'Jss1020@akg!', 'O365 Basic', 'QA', '', '2020-10-19', '1', '1', '2020-10-10 06:44:05', '2020-10-10 06:44:05');
INSERT INTO `emailaccounts` VALUES (139, 'accessories qc', 'accessories.qc@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'QC', '', '2020-10-09', '1', '1', '2020-10-10 06:44:06', '2020-10-10 06:44:06');
INSERT INTO `emailaccounts` VALUES (140, 'Biju', 'biju@anggunkreasi.com', 'Anggun0578@akg!', 'O365 Basic', 'QC', '', '2021-09-08', '1', '1', '2020-10-10 06:44:06', '2020-10-10 06:44:06');
INSERT INTO `emailaccounts` VALUES (141, 'Lina Kurniawati', 'lina.kurniawati@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'QC', '', '2020-10-09', '1', '1', '2020-10-10 06:45:05', '2020-10-10 06:45:05');
INSERT INTO `emailaccounts` VALUES (142, 'QC Finishing', 'finishing.qc@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'QC', '', '2020-10-10', '1', '1', '2020-10-10 06:45:12', '2020-10-10 06:45:12');
INSERT INTO `emailaccounts` VALUES (143, 'QC Preparation', 'preparation.qc@anggunkreasi.com', 'Preparation0196@akg!', 'O365 Basic', 'QC', '', '2021-10-05', '1', '1', '2020-10-10 06:45:07', '2020-10-10 06:45:07');
INSERT INTO `emailaccounts` VALUES (144, 'Fabric', 'fabric.qc@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'QC', '', '2020-10-10', '1', '1', '2020-10-10 06:44:09', '2020-10-10 06:44:09');
INSERT INTO `emailaccounts` VALUES (145, 'Lab Anggun', 'lab@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'QC', '', '2020-10-10', '1', '1', '2020-10-10 06:44:10', '2020-10-10 06:44:10');
INSERT INTO `emailaccounts` VALUES (146, 'Linda', 'linda@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'QC', '', '2020-10-10', '1', '1', '2020-10-10 06:44:06', '2020-10-10 06:44:06');
INSERT INTO `emailaccounts` VALUES (147, 'QC Admin', 'qcadm@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'QC', '', '2020-10-10', '1', '1', '2020-10-10 06:44:10', '2020-10-10 06:44:10');
INSERT INTO `emailaccounts` VALUES (148, 'Siwi', 'siwi@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'QC', '', '2020-10-10', '1', '1', '2020-10-10 06:44:10', '2020-10-10 06:44:10');
INSERT INTO `emailaccounts` VALUES (149, 'Sanjay', 'sanjay@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', 'QC', '', '2020-09-17', '1', '1', '2020-10-10 06:44:58', '2020-10-10 06:44:58');
INSERT INTO `emailaccounts` VALUES (150, 'arieprasetya', 'arieprasetya@anggunkreasi.com', '', 'O365 Basic', 'Sample', '', '2020-10-09', '1', '1', '2020-10-10 06:44:11', '2020-10-10 06:44:11');
INSERT INTO `emailaccounts` VALUES (151, 'bayu', 'bayu@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:13', '2020-10-10 06:44:13');
INSERT INTO `emailaccounts` VALUES (152, 'adm pattern', 'adm.pattern@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-09', '1', '1', '2020-10-10 06:44:07', '2020-10-10 06:44:07');
INSERT INTO `emailaccounts` VALUES (153, 'admin sample', 'adm.sample@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-09', '1', '1', '2020-10-10 06:44:48', '2020-10-10 06:44:48');
INSERT INTO `emailaccounts` VALUES (154, 'ambar pattern', 'ambar.pattern@anggunkreasi.com', 'Ambar1120@akg!', 'O365 Basic', 'Sample', '', '2020-11-04', '1', '1', '2019-06-17 08:05:36', '2019-06-17 08:05:36');
INSERT INTO `emailaccounts` VALUES (155, 'arasu', 'arasu@anggunkreasi.com', 'Anggun0668akg', 'O365 Basic', 'Sample', '', '2020-10-09', '1', '1', '2020-10-10 06:44:14', '2020-10-10 06:44:14');
INSERT INTO `emailaccounts` VALUES (156, 'Budi Sample', 'budi.sample@anggunkreasi.com', '', 'O365 Basic', 'Sample', '', '2021-08-31', '1', '1', '2020-10-10 06:44:15', '2020-10-10 06:44:15');
INSERT INTO `emailaccounts` VALUES (157, 'Rani', 'rani.pattern@anggunkreasi.com', 'Rani2720@akg!', 'O365 Basic', 'Sample', '', '2021-10-13', '1', '1', '2020-10-10 06:44:15', '2020-10-10 06:44:15');
INSERT INTO `emailaccounts` VALUES (158, 'Suheldi', 'suheldi.pattern@anggunkreasi.com', 'Suheldi1073@akg!', 'O365 Basic', 'Sample', '', '2021-10-13', '1', '1', '2020-10-10 06:44:09', '2020-10-10 06:44:09');
INSERT INTO `emailaccounts` VALUES (159, 'Thessa', 'thessa.sample@anggunkreasi.com', 'Thessa0620@akg!', 'O365 Basic', 'Sample', '', '2021-08-31', '1', '1', '2020-10-10 06:44:15', '2020-10-10 06:44:15');
INSERT INTO `emailaccounts` VALUES (160, 'Alfa sample', 'qa3.sample@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:45:06', '2020-10-10 06:45:06');
INSERT INTO `emailaccounts` VALUES (161, 'Astri QA', 'qa.sample@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:45', '2020-10-10 06:44:45');
INSERT INTO `emailaccounts` VALUES (162, 'damarprasetyo', 'damarprasetyo@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:16', '2020-10-10 06:44:16');
INSERT INTO `emailaccounts` VALUES (163, 'Dendi', 'dendi.pattern@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:21', '2020-10-10 06:44:21');
INSERT INTO `emailaccounts` VALUES (164, 'dimar pattern', 'dimar.pattern@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:21', '2020-10-10 06:44:21');
INSERT INTO `emailaccounts` VALUES (165, 'Ebaharoni', 'ebaharoni@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:45:12', '2020-10-10 06:45:12');
INSERT INTO `emailaccounts` VALUES (166, 'Imam Hambali', 'imam@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:22', '2020-10-10 06:44:22');
INSERT INTO `emailaccounts` VALUES (167, 'Indar Ningsih', 'indar@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:45:04', '2020-10-10 06:45:04');
INSERT INTO `emailaccounts` VALUES (168, 'Irwan', 'irwan.pattern@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:45:10', '2020-10-10 06:45:10');
INSERT INTO `emailaccounts` VALUES (169, 'Laser Sample', 'laser.sample@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:23', '2020-10-10 06:44:23');
INSERT INTO `emailaccounts` VALUES (170, 'marker', 'marker@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:23', '2020-10-10 06:44:23');
INSERT INTO `emailaccounts` VALUES (171, 'Nurul Khasanah', 'finish.pattern@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:44', '2020-10-10 06:44:44');
INSERT INTO `emailaccounts` VALUES (172, 'pattern', 'pattern@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:24', '2020-10-10 06:44:24');
INSERT INTO `emailaccounts` VALUES (173, 'Pattern 2', 'pattern2@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:02', '2020-10-10 06:44:02');
INSERT INTO `emailaccounts` VALUES (174, 'Pattern 3', 'pattern3@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:57', '2020-10-10 06:44:57');
INSERT INTO `emailaccounts` VALUES (175, 'Rina pattern', 'rina.pattern@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:43:44', '2020-10-10 06:43:44');
INSERT INTO `emailaccounts` VALUES (176, 'Sample Marker', 'sample.marker@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-12-10 02:09:11', '2020-12-10 02:09:11');
INSERT INTO `emailaccounts` VALUES (177, 'sample preparation', 'sample.preparation@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2021-03-17 08:40:23', '2021-03-17 08:40:23');
INSERT INTO `emailaccounts` VALUES (178, 'Suti Sample', 'qa2.sample@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:43:49', '2020-10-10 06:43:49');
INSERT INTO `emailaccounts` VALUES (179, 'Yuli Anita', 'yuli@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-09 14:03:13', '2020-10-09 14:03:13');
INSERT INTO `emailaccounts` VALUES (180, 'Zivo, Maya', 'zivo.pattern@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'Sample', '', '2020-10-10', '1', '1', '2020-10-13 08:14:16', '2020-10-13 08:14:16');
INSERT INTO `emailaccounts` VALUES (181, 'Denny pattern', 'denny.pattern@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', 'Sample', '', '2020-10-10', '1', '1', '2021-01-13 06:34:50', '2021-01-13 06:34:50');
INSERT INTO `emailaccounts` VALUES (182, 'Heru Pattern', 'heru.pattern@anggunkreasi.com', 'Heru1079@akg!', 'no lisence', 'Sample', '', '2020-11-27', '1', '1', '2020-10-20 02:35:14', '2020-10-20 02:35:14');
INSERT INTO `emailaccounts` VALUES (183, 'Putut sample', 'putut.sample@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', 'Sample', '', '2020-10-10', '1', '1', '2020-10-10 06:44:19', '2020-10-10 06:44:19');
INSERT INTO `emailaccounts` VALUES (184, 'Accessories WH', 'accessories.wh@anggunkreasi.com', 'Kreasigarmen@20', 'O365 Basic', 'WH', '', '2020-10-09', '1', '1', '2020-06-30 07:02:11', '2020-06-30 07:02:11');
INSERT INTO `emailaccounts` VALUES (185, 'General WH', 'general.wh@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'WH', '', '2020-10-09', '0', '0', '2020-10-09 10:25:39', '2020-10-09 10:25:39');
INSERT INTO `emailaccounts` VALUES (186, 'Warehouse  Deadstock', 'deadstock.wh@anggunkreasi.com', 'Deadstock1021@akg!', 'O365 Basic', 'wh', '', '2021-10-12', '0', '0', '2020-10-09 10:27:18', '2020-10-09 10:27:18');
INSERT INTO `emailaccounts` VALUES (187, 'finishing wh', 'finishing.wh@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'WH', '', '2020-10-10', '0', '0', '2020-11-13 02:05:36', '2020-11-13 02:05:36');
INSERT INTO `emailaccounts` VALUES (188, 'Receiving', 'receiving@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'WH', '', '2020-10-10', '0', '0', '2020-10-16 07:56:25', '2020-10-16 07:56:25');
INSERT INTO `emailaccounts` VALUES (189, 'Sugeng Winardi', 'sugeng.whs@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'WH', '', '2020-10-10', '0', '0', '2020-10-09 14:07:01', '2020-10-09 14:07:01');
INSERT INTO `emailaccounts` VALUES (190, 'Tanto', 'tanto.wh@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'WH', '', '2020-10-10', '0', '0', '2020-10-09 14:12:57', '2020-10-09 14:12:57');
INSERT INTO `emailaccounts` VALUES (191, 'warehouse fabric', 'fabric.wh@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'WH', '', '2020-10-10', '0', '0', '2020-10-10 06:44:48', '2020-10-10 06:44:48');
INSERT INTO `emailaccounts` VALUES (192, 'Dipta', 'dipta.deadstock@anggunkreasi.com', 'Kreasigarmen@2020', 'O365 Basic', 'WH', '', '2020-10-10', '0', '0', '2020-10-10 06:43:42', '2020-10-10 06:43:42');
INSERT INTO `emailaccounts` VALUES (193, 'Ika Wh', 'ika.wh@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', 'WH', '', '2020-10-09', '0', '0', '2020-10-10 06:44:57', '2020-10-10 06:44:57');
INSERT INTO `emailaccounts` VALUES (194, 'Nur  Wijayanti', 'nur.wijayanti@anggunkreasi.com', 'Nur0691@akg!', 'O365 Basic', '', '', '2021-09-08', '0', '0', '2020-10-10 06:43:43', '2020-10-10 06:43:43');
INSERT INTO `emailaccounts` VALUES (195, 'Nurul Dwi', 'nurul.dwi@anggunkreasi.com', 'Nurul1296@akg!', 'O365 Basic', '', '', '2021-10-01', '0', '0', '2020-10-16 07:21:05', '2020-10-16 07:21:05');
INSERT INTO `emailaccounts` VALUES (196, 'agnes', 'agnes@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-09', '0', '0', '2020-11-27 07:15:57', '2020-11-27 07:15:57');
INSERT INTO `emailaccounts` VALUES (197, 'Anisa Kun', 'anisakun@anggunkreasi.com', 'Anisa1091@akg!', 'no lisence', '', '', '2020-11-13', '0', '0', '2020-10-09 08:56:10', '2020-10-09 08:56:10');
INSERT INTO `emailaccounts` VALUES (198, 'aprilia', 'aprilia@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-16', '0', '0', '2020-10-08 07:41:32', '2020-10-08 07:41:32');
INSERT INTO `emailaccounts` VALUES (199, 'Ardhy', 'ardhy@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-09', '0', '0', '2020-10-10 06:45:08', '2020-10-10 06:45:08');
INSERT INTO `emailaccounts` VALUES (200, 'arief sanjaya', 'arif.acc@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-09', '0', '0', '2020-10-10 06:44:00', '2020-10-10 06:44:00');
INSERT INTO `emailaccounts` VALUES (201, 'azura', 'azura@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-10', '0', '0', '2020-12-28 08:21:41', '2020-12-28 08:21:41');
INSERT INTO `emailaccounts` VALUES (202, 'Dean chris', 'dean.exim@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-10', '0', '0', '2020-12-21 08:29:42', '2020-12-21 08:29:42');
INSERT INTO `emailaccounts` VALUES (203, 'gema', 'gema@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-16', '0', '0', '2020-10-10 06:44:54', '2020-10-10 06:44:54');
INSERT INTO `emailaccounts` VALUES (204, 'it', 'it@anggunkreasi.onmicrosoft.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-08', '0', '0', '2020-10-10 06:45:00', '2020-10-10 06:45:00');
INSERT INTO `emailaccounts` VALUES (205, 'melysadesy', 'melysadesy@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-10', '0', '0', '2020-10-10 06:44:46', '2020-10-10 06:44:46');
INSERT INTO `emailaccounts` VALUES (206, 'mitha', 'mitha@anggunkreasi.com', 'Anggun1712@akg', 'no lisence', '', '', '2020-12-28', '0', '0', '2020-10-10 06:44:12', '2020-10-10 06:44:12');
INSERT INTO `emailaccounts` VALUES (207, 'pinta', 'pinta@anggunkreasi.com', 'Anggun0498@akg!', 'no lisence', '', '', '2020-12-21', '0', '0', '2020-10-10 06:44:22', '2020-10-10 06:44:22');
INSERT INTO `emailaccounts` VALUES (208, 'rindapratiwi', 'rindapratiwi@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-10', '0', '0', '2020-09-17 03:05:34', '2020-09-17 03:05:34');
INSERT INTO `emailaccounts` VALUES (209, 'rizal', 'rizalsaputra@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-10', '0', '0', '2019-06-17 07:54:16', '2019-06-17 07:54:16');
INSERT INTO `emailaccounts` VALUES (210, 'Safitri', 'safitri.wh@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-10', '0', '0', '2020-10-10 06:44:14', '2020-10-10 06:44:14');
INSERT INTO `emailaccounts` VALUES (211, 'sri susanti', 'santi@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-10', '0', '0', '2021-02-26 09:08:30', '2021-02-26 09:08:30');
INSERT INTO `emailaccounts` VALUES (212, 'Thenappan', 'thenappan_ameyaindo.com#EXT#@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2021-02-26', '0', '0', '2019-11-07 02:10:40', '2019-11-07 02:10:40');
INSERT INTO `emailaccounts` VALUES (213, 'theresia widjaya', 'theresia@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2019-11-07', '0', '0', '2020-10-10 06:44:20', '2020-10-10 06:44:20');
INSERT INTO `emailaccounts` VALUES (214, 'Tri Wahyuni', 'triwahyuni@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-10', '0', '0', '2020-10-10 06:45:09', '2020-10-10 06:45:09');
INSERT INTO `emailaccounts` VALUES (215, 'yenitrisnawati', 'yenitrisnawati@anggunkreasi.com', 'Kreasigarmen@2020', 'no lisence', '', '', '2020-10-10', '0', '0', '2020-10-10 06:45:09', '2020-10-10 06:45:09');
INSERT INTO `emailaccounts` VALUES (216, 'Ari sub', 'arisub@ameyaindo.com', '123123', 'O365 Basic', '', '', '2020-10-10', '3', '1', '2020-10-10 06:45:09', '2020-10-10 06:45:09');
INSERT INTO `emailaccounts` VALUES (217, 'abhishek ', 'abhishek@ameyaindo.com', NULL, 'O365 Basic', 'Comercial', 'Expart', '2020-10-10', '1', '1', '2020-10-10 00:00:00', '2020-10-10 00:00:00');
INSERT INTO `emailaccounts` VALUES (218, 'Dysa pramesya', 'dysa.pramesya@anggunkreasi.com', 'Dysa1097@akg!', 'O365 Basic', 'Comercial', 'Dysa1097@akg!', '2021-10-19', '1', '1', '2021-10-19 02:56:31', '2021-10-19 02:56:31');
INSERT INTO `emailaccounts` VALUES (219, 'ppic2', 'ppic2@anggunkreasi.com', 'KReasigarmen@2020', 'O365 Basic', 'Production', 'KReasigarmen@2020', '2021-10-21', '1', '1', '2021-10-21 02:59:28', '2021-10-21 02:59:50');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for komputers
-- ----------------------------
DROP TABLE IF EXISTS `komputers`;
CREATE TABLE `komputers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `userpc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0',
  `hostname_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `os_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `brand` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `processor_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ram_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hdd_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ups` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `office_actv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `antivir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` int(2) NULL DEFAULT NULL,
  `remark` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `remote` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 224 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of komputers
-- ----------------------------
INSERT INTO `komputers` VALUES (1, '192.168.40.26', 'Ewin', 'A_HRD_5', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', '2017-03-01 00:00:00', '2021-10-07 09:03:38', 'a-hrd_5-pc@ad');
INSERT INTO `komputers` VALUES (2, '192.168.40.25', 'Liatri', 'A-GA_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', NULL, '2021-10-06 10:17:15', NULL);
INSERT INTO `komputers` VALUES (3, '192.168.40.27', 'Era', 'A-HRD_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (4, '192.168.40.22', 'kiky', 'A-HRD_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (5, '192.168.40.23', 'Ika Complience', 'A-HRD_3', 'WIN 10', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', NULL, '2021-10-11 06:23:50', NULL);
INSERT INTO `komputers` VALUES (6, '192.168.40.31', 'Rani', 'A-HRD_4', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (7, '192.168.40.28', 'VERO', 'A-HRD_6', 'WIN 10', 'HP', 'AIO', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', '2017-12-22 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (8, '192.168.40.29', 'Putri', 'A-HRD_7', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', '2018-02-16 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (9, '192.168.40.32', 'Dita', 'A-HRD_8', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', '2018-05-20 00:00:00', '2021-10-01 16:18:02', 'desktop-3udjdmg@ad');
INSERT INTO `komputers` VALUES (10, '192.168.40.33', 'A-HRD_9', 'A-HRD_9', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', '2019-11-11 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (11, '192.168.40.30', 'Rokhana', 'A-SECURITY_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', '2017-03-15 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (12, '192.168.40.186', 'Lora', 'ADMSAMPLE', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'Production', '1', 1, '0', '2017-12-11 00:00:00', '2021-10-06 08:40:25', NULL);
INSERT INTO `komputers` VALUES (13, '192.168.40.153', 'Agnes', 'D-MD_13', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2018-06-05 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (14, '192.168.40.41', 'Abhisek', 'AIO-ABHISHEK', 'WIN 10', 'LENOVO', 'AIO', 'i7', '16', '500', '1', '1', '1', 'Comercial', '1', 1, '0', '2018-12-01 00:00:00', '2021-10-14 03:20:07', NULL);
INSERT INTO `komputers` VALUES (15, '192.168.40.50', 'AIO SHOWROOM', 'AIO-SHOWROOM', 'WIN 10', 'DELL', 'AIO', 'i3', '8', '500', '1', '1', '1', 'IT', '1', 1, '0', NULL, '2021-10-07 09:04:30', '461946364');
INSERT INTO `komputers` VALUES (16, '192.168.41.15', 'MERCHANDISER', 'AKG-HPE-MD2.LT.2', 'OTHER', 'HPE', 'SWITCH', '0', '0', '0', '0', '0', '0', 'IT', '1', 1, '0', '0000-00-00 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (17, '192.168.41.9', 'LOBY', 'AKG-HPE-SWT1.LT.1', 'OTHER', 'HPE', 'SWITCH', '0', '0', '0', '0', '0', '0', 'IT', '1', 1, '0', '0000-00-00 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (18, '192.168.41.14', 'SAMPLE', 'AKG-HPE-SWT1.LT.1', 'OTHER', 'HPE', 'SWITCH', '0', '0', '0', '0', '0', '0', 'IT', '1', 1, '0', '0000-00-00 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (19, '192.168.41.11', 'SERVER LT2', 'AKG-HPE-SWT1.LT.2', 'OTHER', 'HPE', 'SWITCH', '0', '0', '0', '0', '0', '0', 'IT', '1', 1, '0', '0000-00-00 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (20, '192.168.41.13', 'MERCHANDISER', 'AKG-HPE-SWT1.LT.2', 'OTHER', 'HPE', 'SWITCH', '0', '0', '0', '0', '0', '0', 'IT', '1', 1, '0', '0000-00-00 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (21, '192.168.41.12', 'SERVER LT2', 'AKG-HPE-SWT2.LT.2', 'OTHER', 'HPE', 'SWITCH', '0', '0', '0', '0', '0', '0', 'IT', '1', 1, '0', '0000-00-00 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (22, '192.168.40.149', 'D-MD_10', 'Amy', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2018-05-03 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (23, '192.168.40.247', 'D-MD_20', 'April-MD', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2019-08-12 00:00:00', '2021-11-12 07:06:31', '522274465');
INSERT INTO `komputers` VALUES (24, '192.168.40.185', 'Arasu', 'ARASU', 'WIN 10', 'LENOVO', 'LAPTOP', 'i3', '4', '500', '1', '1', '1', 'Production', '1', 1, '0', NULL, '2021-10-06 08:40:47', '840246014');
INSERT INTO `komputers` VALUES (25, '192.168.40.123', 'MD', 'Arya', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2018-03-01 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (26, '192.168.40.152', 'DESKTOP-B3OAPNL', 'Atta', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, 'remote anggun@123  pwd itjuga  ', '2018-06-04 00:00:00', '2021-10-22 03:37:53', 'desktop-b3oapnl@ad');
INSERT INTO `komputers` VALUES (27, '192.168.40.227', 'D-MD_21', 'Azura', 'WIN 10', 'DELL', 'AIO', 'i3', '4', '500', '1', '1', '1', 'Commercial', '1', 1, '0', NULL, '2021-11-12 04:22:27', '437266640');
INSERT INTO `komputers` VALUES (28, '192.168.40.92', 'Dian', 'B-PROD_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (29, '192.168.40.90', 'Rizal', 'B-PROD_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2017-04-05 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (30, '192.168.40.93', 'Karsim', 'B-PROD_3', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2017-12-28 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (31, '192.168.40.94', 'melia', 'B-PROD_4', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2019-07-29 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (32, '192.168.42.186', 'B-PROD_5', 'B-PROD_5', 'WIN 10', 'DELL', 'AIO', 'i3', '8', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (33, '192.168.40.54', 'Balbir', 'B-PROD_FM', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-02-22 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (34, '192.168.40.251', 'Bea Cukai', 'BEA_CUKAI', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'BEACUKAI', '1', 1, '0', '2017-04-06 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (35, '192.168.40.252', 'Bea Cukai', 'BEACUKAI_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'BEACUKAI', '1', 1, '0', '2017-11-23 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (36, '192.168.40.102', 'Ummi', 'C-ACC_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'Acounting', '1', 1, '0', NULL, '2021-10-07 09:05:08', 'c-acc_1-pc@ad');
INSERT INTO `komputers` VALUES (37, '192.168.40.101', 'Duwi', 'C-ACC_2', 'WIN 10', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'Acounting', '1', 1, '0', NULL, '2021-10-12 06:24:53', NULL);
INSERT INTO `komputers` VALUES (38, '192.168.40.39', 'Arif', 'C-ACC_3', 'WIN 7', 'Other', 'PC Rakitan', 'i3', '4', '500', '1', '1', '1', 'Acounting', '1', 1, '0', NULL, '2021-10-19 14:55:15', NULL);
INSERT INTO `komputers` VALUES (39, '192.168.40.104', 'Citra', 'C-ACC_4', 'WIN 10', 'LENOVO', 'AiO', 'i3', '4', '500', '1', '1', '1', 'Acounting', '1', 1, '0', '2017-12-22 00:00:00', '2021-10-19 14:57:08', 'c-acc_4@ad');
INSERT INTO `komputers` VALUES (40, '192.168.40.105', 'Andaru', 'C-ACC_5', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'ACCOUNTING', '1', 1, '0', '2018-07-07 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (41, '192.168.40.37', 'Titi', 'C-ACC_6', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'ACCOUNTING', '1', 1, '0', '2018-10-26 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (42, '192.168.40.38', 'Taxs', 'C-ACC_7', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'ACCOUNTING', '1', 1, '0', '2019-04-08 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (43, '192.168.40.40', 'Fauzie', 'C-ACC_8', 'WIN 10', 'DELL', 'AIO', 'i3', '4', '500', '1', '1', '1', 'ACCOUNTING', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (44, '192.168.40.116', 'Totok-MD', 'D-MD_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2017-11-09 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (45, '192.168.40.150', 'Merry', 'D-MD_11', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2018-05-07 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (46, '192.168.40.151', 'OCHA', 'D-MD_12', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2018-05-15 00:00:00', '2021-10-01 16:18:02', 'desktop-tpi9ggv@ad');
INSERT INTO `komputers` VALUES (47, '192.168.40.154', 'Yanti', 'D-MD_14', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2018-07-07 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (48, '192.168.40.155', 'Deris', 'D-MD_15', 'WIN 10', 'LENOVO', 'AiO', 'i3', '8', '500', '1', '1', '1', 'Comercial', '1', 1, '0', '2018-07-19 00:00:00', '2021-10-18 02:11:30', 'd-md_15@ad');
INSERT INTO `komputers` VALUES (49, '192.168.40.156', 'Wulan 41.225', 'D-MD_16', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2018-08-03 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (50, '192.168.40.157', 'TRIAS', 'D-MD_17', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2019-04-29 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (51, '192.168.40.158', 'Herna', 'D-MD_18', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2019-07-29 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (52, '192.168.40.70', 'Gema', 'D-MD_19', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2019-08-08 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (53, '192.168.40.117', 'Wiwiet', 'D-MD_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2017-11-09 00:00:00', '2021-10-01 16:18:02', '670827235');
INSERT INTO `komputers` VALUES (54, '192.168.40.125', 'Mitha', 'D-MD_22', 'WIN 10', 'INTEL', 'PC', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2017-12-15 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (55, '192.168.41.249', 'Ella Yordania', 'D-MD_23', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '0', '1', '1', 'MD', '1', 1, 'AIO X AMEYA', '2021-02-23 00:00:00', '2021-10-01 16:18:02', '401611473');
INSERT INTO `komputers` VALUES (56, '192.168.41.71', 'D-MD_24', 'D-MD_24', 'WIN 10', 'DELL', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (57, '192.168.41.210', 'D-MD_25', 'D-MD_25', 'WIN 10', 'DELL', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (58, '192.168.42.197', 'Maike', 'D-MD_26', 'WIN 10', 'DELL', 'AIO', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, 'AIO X AMEYA', NULL, '2021-10-01 16:18:02', '430165486');
INSERT INTO `komputers` VALUES (59, '192.168.40.119', 'D-MD_4', 'D-MD_4', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2017-11-09 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (60, '192.168.40.122', 'DIANING', 'D-MD_6', 'WIN 10', 'DELL', 'AIO', 'i3', '8', '500', '1', '1', '1', 'MD', '1', 1, '0', '2018-03-01 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (61, '192.168.40.124', 'There', 'D-MD_8', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2018-03-01 00:00:00', '2021-10-01 16:18:02', '710605217');
INSERT INTO `komputers` VALUES (62, '192.168.42.10', 'DBAKG-BACKUP', 'DBAKG-BACKUP', 'WIN 10', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (63, '192.168.40.111', 'Heni', 'E-EXIM_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'EXIM', '1', 1, '0', '2017-07-21 00:00:00', '2021-10-07 09:07:43', '404355092');
INSERT INTO `komputers` VALUES (64, '192.168.40.82', 'yudi', 'E-EXIM_10', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'EXIM', '1', 1, '0', '2019-07-29 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (65, '192.168.40.62', 'AIO', 'E-EXIM_11', 'WIN 10', 'DELL', 'AIO', 'i3', '4', '500', '1', '1', '1', 'EXIM', '1', 1, '0', NULL, '2021-10-01 16:18:02', '548904789');
INSERT INTO `komputers` VALUES (66, '192.168.40.112', 'Yeni', 'E-EXIM_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'EXIM', '1', 1, '0', '2017-07-21 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (67, '192.168.40.113', 'Budi', 'E-EXIM_3', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'EXIM', '1', 1, '0', '2017-11-03 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (68, '192.168.40.226', 'NOVI', 'E-EXIM_4', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'EXIM', '1', 1, '0', '2017-11-04 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (69, '192.168.40.115', 'Nanda', 'E-EXIM_5', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'EXIM', '1', 1, '0', '2018-01-25 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (70, '192.168.40.110', 'Haris', 'E-EXIM_6', 'WIN 10', 'LENOVO', 'AIO', 'i3', '8', '500', '1', '1', '1', 'Comercial', '1', 1, '0', '2018-03-06 00:00:00', '2021-10-12 02:51:12', 'xxxxx');
INSERT INTO `komputers` VALUES (71, '192.168.40.109', 'PUTRI MILENIA', 'E-EXIM_7', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'EXIM', '1', 1, '0', '2018-03-06 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (72, '192.168.40.108', 'Kenzo', 'E-EXIM_8', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'EXIM', '1', 1, '0', '2018-07-19 00:00:00', '2021-10-01 16:18:02', '414695937');
INSERT INTO `komputers` VALUES (73, '192.168.40.107', 'PEB | Budi', 'E-EXIM_9', 'WIN 10', 'LENOVO', 'AIO', 'i3', '8', '500', '1', '1', '1', 'EXIM', '1', 1, '0', '2019-01-17 00:00:00', '2021-10-01 16:18:02', 'desktop-mrpr8l2@ad');
INSERT INTO `komputers` VALUES (74, '192.168.42.3', 'CRS GDM TIMUR', 'E4:8D:8C:A9:18:B7', 'OTHER', 'MIKROTIK', 'SWITCH', '0', '0', '0', '0', '0', '0', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (75, '192.168.40.68', 'EMBRO-PC', 'EMBRO-PC', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-07 09:08:18', '00:1F:C6:28:2E:C6');
INSERT INTO `komputers` VALUES (76, '192.168.40.221', 'EXIM Printer', 'EXIM Printer', 'OTHER', 'EPSON', 'PRINTER', '0', '0', '0', '1', '1', '1', 'EXIM', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (77, '192.168.40.106', 'IMAM', 'EXIM-IMAM', 'WIN 10', 'LENOVO', 'LAPTOP', 'i3', '8', '500', '1', '1', '1', 'EXIM', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (78, '192.168.40.34', 'Klinik', 'F-KLININK_1', 'WIN 10', 'DELL', 'AIO', 'i3', '4', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (79, '192.168.40.118', 'D-MD_3', 'Faulin-MD', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2017-11-09 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (80, '192.168.40.229', 'NOVA', 'G-DESAIN_4', 'WIN 10', 'DELL', 'AIO', 'i3', '4', '500', '1', '1', '1', 'DESAIN', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (81, '192.168.40.239', 'ZIVOX', 'G-DESAIN_6', 'WIN 7', 'DELL', 'PC', 'i7', '16', '1000', '1', '1', '1', 'SAMPLE', '1', 1, 'PC DELL XPS', '2020-06-01 00:00:00', '2021-10-06 08:47:18', NULL);
INSERT INTO `komputers` VALUES (82, '192.168.40.230', 'Nugroho', 'G-DESAIN_7', 'WIN 7', 'DELL', 'PC', 'i7', '16', '1000', '1', '1', '1', 'DESAIN', '1', 1, 'PC DELL XPS', '2020-06-01 00:00:00', '2021-11-12 02:49:22', '218539463');
INSERT INTO `komputers` VALUES (83, '192.168.40.129', 'Patty', 'G-Design', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'DESAIN', '1', 1, '0', '2018-05-22 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (84, '192.168.40.126', 'Windi', 'G-Design_1', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'DESAIN', '1', 1, '0', '2017-12-19 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (85, '192.168.40.127', 'Yunita', 'G-Design_2', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'DESAIN', '1', 1, '0', '2017-12-22 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (86, '192.168.40.129', 'Patty', 'G-Design_3', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'DESAIN', '1', 1, '0', '2018-09-14 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (87, '192.168.40.128', 'Nugroho', 'G-Design_5', 'WIN 10', '0', 'PC', 'i3', '8', '500', '1', '1', '1', 'DESAIN', '1', 1, '0', '2018-03-19 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (88, '192.168.40.120', 'MD', 'Geovani-MD', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', '2017-11-09 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (89, '192.168.40.85', 'Dita', 'H-MARKETING_1', 'WIN 10', 'LENOVO', 'AiO', 'i3', '8', '500', '1', '1', '1', 'Comercial', '1', 1, '0', '2018-06-28 00:00:00', '2021-10-14 03:19:04', 'desktop-rbc5dir@ad');
INSERT INTO `komputers` VALUES (90, '192.168.40.86', 'Ana MKT', 'H-MARKETING_2', 'WIN 10', 'LENOVO', 'AIO', 'i3', '8', '500', '1', '1', '1', 'Comercial', '1', 1, '0', '2018-06-28 00:00:00', '2021-10-25 02:36:48', 'desktop-gg3q7k8@ad');
INSERT INTO `komputers` VALUES (91, '192.168.40.87', 'Fauzie', 'H-MARKETING_3', 'WIN 10', 'LENOVO', 'AIO', 'i3', '8', '500', '1', '1', '1', 'Comercial', '1', 1, '0', '2018-12-14 00:00:00', '2021-10-14 03:20:38', NULL);
INSERT INTO `komputers` VALUES (92, '192.168.40.88', 'Fenty', 'H-MARKETING_4', 'WIN 10', 'LENOVO', 'AIO', 'i3', '8', '500', '1', '1', '1', 'Comercial', '1', 1, '0', '2019-01-18 00:00:00', '2021-10-14 03:20:24', NULL);
INSERT INTO `komputers` VALUES (93, '192.168.42.155', 'H-MARKETING_5', 'H-MARKETING_5', 'WIN 10', 'DELL', 'AIO', 'i3', '8', '500', '1', '1', '1', 'Comercial', '1', 1, '0', NULL, '2021-10-14 03:20:52', '185415581');
INSERT INTO `komputers` VALUES (94, '192.168.42.160', 'Sitha', 'HRD_L3', 'WIN 10', 'LENOVO', 'LAPTOP', 'i3', '8', '250', '1', '1', '1', 'HRD GA', '1', 1, '0', NULL, '2021-10-01 16:18:02', '731843665');
INSERT INTO `komputers` VALUES (95, '192.168.40.180', 'Erna', 'I-ADMPATTERN', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-06-05 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (96, '192.168.40.206', 'Riska', 'I-ADMSAMPLE_2', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2018-03-13 00:00:00', '2021-10-07 09:09:01', '937284750');
INSERT INTO `komputers` VALUES (97, '192.168.40.181', 'Restu', 'I-CAD_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (98, '192.168.40.182', 'Tri', 'I-CAD_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (99, '192.168.40.176', 'Singgih', 'I-CAD_3', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-11-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (100, '192.168.40.184', 'Tugini', 'I-MARKER_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-10-05 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (101, '192.168.40.187', 'Aji', 'I-PATTERN_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-10-05 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (102, '192.168.40.171', 'Dadang', 'I-POLA_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-11-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (103, '192.168.40.172', 'Heri', 'I-POLA_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-11-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (104, '192.168.40.173', 'Bayu', 'I-POLA_3', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-11-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (105, '192.168.40.189', 'Windy', 'I-POLA_4', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-11-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (106, '192.168.40.188', 'Marino', 'I-POLA_5', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (107, '192.168.40.169', 'Dendi', 'I-SAMPLE_1', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2018-02-22 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (108, '192.168.40.204', 'Rita', 'I-SAMPLE_10', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2018-08-07 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (109, '192.168.40.205', 'Alfi', 'I-SAMPLE_11', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2018-09-26 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (110, '192.168.40.208', 'Dimar', 'I-SAMPLE_12', 'WIN 7', 'Other', 'PC Rakitan', 'i5', '4', '500', '1', '1', '1', 'Production', '1', 1, '0', '2018-10-03 00:00:00', '2021-10-25 03:07:04', '192.168.40.208');
INSERT INTO `komputers` VALUES (111, '192.168.42.14', 'cutting', 'I-SAMPLE_13', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2018-11-19 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (112, '192.168.40.209', 'I-SAMPLE_14', 'I-SAMPLE_14', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2019-06-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (113, '192.168.40.168', 'Dini', 'I-SAMPLE_15', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-12-11 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (114, '192.168.40.178', 'I-SAMPLE_15', 'I-SAMPLE_15', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2019-06-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (115, '192.168.40.41', 'DESKTOP-IARFQKU', 'I-SAMPLE_16', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2019-08-21 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (116, '192.168.40.235', 'I-SAMPLE_17', 'I-SAMPLE_17', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2019-10-01 00:00:00', '2021-10-01 16:18:02', '878176913');
INSERT INTO `komputers` VALUES (117, '192.168.40.223', 'Putut', 'I-Sample_18', 'WIN 10', 'DELL', 'AIO', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (118, '192.168.41.250', 'I-SAMPLE_19', 'I-SAMPLE_19', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2021-07-01 00:00:00', '2021-10-01 16:18:02', '649038906');
INSERT INTO `komputers` VALUES (119, '192.168.40.190', 'Rizky', 'I-SAMPLE_2', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', NULL, '2021-10-01 16:18:02', '615111402');
INSERT INTO `komputers` VALUES (120, '192.168.40.174', 'Indar', 'I-SAMPLE_3', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-11-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (121, '192.168.40.175', 'Budi', 'I-SAMPLE_4', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-11-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (122, '192.168.40.167', 'Fitri', 'I-SAMPLE_5', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2018-06-04 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (123, '192.168.40.166', 'Udin', 'I-SAMPLE_6', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2018-06-04 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (124, '192.168.40.201', 'arfi', 'I-SAMPLE_7', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2018-08-03 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (125, '192.168.40.202', 'Nurul', 'I-SAMPLE_8', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2018-08-03 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (126, '192.168.40.203', 'I-SAMPLE_9', 'I-SAMPLE_9', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2018-08-07 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (127, '192.168.40.9', 'SCANNER', 'FINISHING', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'IT', '1', 1, '0', '2018-05-03 00:00:00', '2021-10-01 16:18:02', '173668673');
INSERT INTO `komputers` VALUES (128, '192.168.40.83', 'Haris', 'IT', 'WIN 10', 'LENOVO', 'AIO', 'i3', '8', '1000', '1', '1', '1', 'IT', '1', 1, '0', '2019-08-05 00:00:00', '2021-10-12 02:50:16', '371 661 798');
INSERT INTO `komputers` VALUES (129, '192.168.41.39', 'IT', 'IT-LAPTOP', 'WIN 10', 'LENOVO', 'LAPTOP', 'i3', '4', '500', '1', '1', '1', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', '949799467');
INSERT INTO `komputers` VALUES (130, '192.168.40.146', 'Imam', 'K-QA_1', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'Production', '1', 1, '0', '2018-03-11 00:00:00', '2021-10-07 03:19:57', 'desktop-97h3n4b@ad');
INSERT INTO `komputers` VALUES (131, '192.168.40.141', 'Fajar', 'K-QC_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (132, '192.168.40.225', 'SIWI', 'K-QC_10', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (133, '192.168.40.142', 'Temi', 'K-QC_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (134, '192.168.40.143', 'Sigit', 'K-QC_3', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (135, '192.168.40.144', 'Lilis', 'K-QC_4', 'WIN 10', 'INTEL', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2017-09-08 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (136, '192.168.40.147', 'Anang', 'K-QC_5', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-09-14 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (137, '192.168.40.96', 'Niken', 'K-QC_6', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-10-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (138, '192.168.40.98', 'Wiwin', 'K-QC_8', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-10-15 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (139, '192.168.40.97', 'Fabric', 'K-QC_9', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-11-19 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (140, '192.168.40.193', 'IQT', 'K-QC_lab_2', 'WIN 10', 'HP', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2017-11-03 00:00:00', '2021-10-01 16:18:02', '377800936');
INSERT INTO `komputers` VALUES (141, '192.168.40.145', 'Tari', 'K-QCBUYER_1', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2017-12-19 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (142, '192.168.40.1', 'IT', 'Kerio', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'IT', '1', 1, '0', '2017-11-15 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (143, '192.168.40.119', 'MD Manager', 'L-MD_2', 'WIN 10', 'DELL', 'LAPTOP', 'i3', '4', '500', '1', '1', '1', 'MD', '1', 1, '0', NULL, '2021-10-01 16:18:02', '622 740 478');
INSERT INTO `komputers` VALUES (144, '192.168.40.148', 'Shena', 'LAB', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-03-02 00:00:00', '2021-10-01 16:18:02', '480971173');
INSERT INTO `komputers` VALUES (145, '192.168.42.222', 'LAB-AIO', 'LAB-2-AIO', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2020-11-03 00:00:00', '2021-10-01 16:18:02', 's-ppic_6@ad');
INSERT INTO `komputers` VALUES (146, '192.168.40.21', 'Laptop PIPIT', 'L-HRD_1', 'WIN 10', 'LENOVO', 'LAPTOP', 'i3', '8', '500', '1', '1', '1', 'HRD GA', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (147, '192.168.40.71', 'Sugeng', 'M-WH_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (148, '192.168.40.80', 'Dyah', 'M-WH_10', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2019-01-29 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (149, '192.168.40.64', 'Yuli', 'M-WH_11', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2019-01-29 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (150, '192.168.40.63', 'Tanto', 'M-WH_12', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2019-03-27 00:00:00', '2021-11-12 04:21:06', 'desktop-8g4cn85@ad');
INSERT INTO `komputers` VALUES (151, '192.168.40.72', 'Anah', 'M-WH_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (152, '192.168.40.73', 'Vena', 'M-WH_3', 'WIN 10', 'HP', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2017-11-03 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (153, '192.168.40.74', 'Safitri', 'M-WH_4', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2017-12-27 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (154, '192.168.40.75', 'Alfi', 'M-WH_5', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-03-16 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (155, '192.168.40.76', 'Siti', 'M-WH_6', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-03-23 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (156, '192.168.40.77', 'Budi', 'M-WH_7', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-10-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (157, '192.168.40.78', 'Dipta', 'M-WH_8', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-10-15 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (158, '192.168.40.79', 'Dea WH', 'M-WH_9', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'Production', '1', 1, '0', '2018-11-19 00:00:00', '2021-10-08 07:24:58', 'desktop-bufqhb3@ad');
INSERT INTO `komputers` VALUES (159, '192.168.40.177', 'Yuli', 'Marker', 'WIN 7', 'Other', 'PC Rakitan', 'i5', '4', '500', '1', '1', '1', 'Production', '1', 1, '0', '2017-12-21 00:00:00', '2021-10-25 08:36:14', 'jamesbond-pc-20@ad');
INSERT INTO `komputers` VALUES (160, '192.168.40.170', 'Desi', 'Marker', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'SAMPLE', '1', 1, '0', '2017-11-10 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (161, '192.168.42.12', 'Mesin Laser', 'Mesin Laser', 'OTHER', '0', 'MACHINE', '0', '0', '0', '0', '0', '0', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (162, '192.168.42.11', 'Mesin Laser', 'Mesin Laser', 'OTHER', '0', 'MACHINE', '0', '0', '0', '0', '0', '0', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (163, '192.168.40.192', 'RATNA', 'N-PLANNING_1', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2019-10-01 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (164, '192.168.40.198', 'N-PLANNING_2', 'N-PLANNING_2', 'WIN 7', '0', 'PC', 'i5', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2019-10-01 00:00:00', '2021-10-07 09:11:01', '734431982');
INSERT INTO `komputers` VALUES (165, '192.168.40.65', 'Frida', 'O-MEKANIK_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'MEKANIK', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (166, '192.168.40.61', 'Adm. Mtn', 'O-MTN_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (167, '192.168.40.130', 'Wiji', 'P-PURCHASE_1', 'WIN 10', 'HP', 'AIO', 'i3', '8', '500', '1', '1', '1', 'PURCHASE', '1', 1, '0', '2017-12-07 00:00:00', '2021-10-01 16:18:02', '285685393');
INSERT INTO `komputers` VALUES (168, '192.168.40.198\n', 'Much Fajar', 'P-PURCHASE_1-PC', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PURCHASE', '1', 1, '0', '2018-03-01 00:00:00', '2021-10-01 16:18:02', '842080304');
INSERT INTO `komputers` VALUES (169, '192.168.40.139', 'Haryo', 'P-PURCHASE_2', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PURCHASE', '1', 1, '0', '2018-05-17 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (170, '192.168.40.138', 'DIKSAN', 'P-PURCHASE_3', 'WIN 10', 'LENOVO', 'AIO', 'i3', '8', '500', '1', '1', '1', 'PURCHASE', '1', 1, '0', '2018-03-01 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (171, '192.168.40.140', 'PRAJAKTI', 'P-PURCHASE_3', 'WIN 10', 'LENOVO', 'AIO', 'i3', '8', '500', '1', '1', '1', 'PURCHASE', '1', 1, '0', '2018-09-18 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (172, '192.168.40.138', 'Diksan', 'P-PURCHASE_4', 'WIN 10', 'LENOVO', 'AIO', 'i3', '8', '500', '1', '1', '1', 'PURCHASE', '1', 1, '0', '2018-09-18 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (173, '192.168.40.136', 'luluc', 'P-PURCHASE_5', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PURCHASE', '1', 1, '0', '2018-11-19 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (174, '192.168.42.251', 'General Purchase', 'P-PURCHASE_6', 'WIN 10', 'LENOVO', 'AIO', 'i3', '8', '500', '1', '1', '1', 'PURCHASE', '1', 1, '0', NULL, '2021-10-01 16:18:02', '370295204');
INSERT INTO `komputers` VALUES (175, '192.168.40.137', 'Pak Moch', 'P-PURCHASE_7', 'WIN 10', 'DELL', 'AIO', 'i3', '8', '250', '1', '1', '1', 'PURCHASE', '1', 1, '0', NULL, '2021-10-01 16:18:02', '439415468');
INSERT INTO `komputers` VALUES (176, '192168', 'P-PURCHASE_8', 'P-PURCHASE_8', 'WIN 10', 'DELL', 'AIO', 'i3', '8', '250', '1', '1', '1', 'PURCHASE', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (177, '192.168.40.11', 'ISNTALLER', 'PABX NS300', 'OTHER', '0', 'PABX', '0', '0', '0', '1', '0', '0', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (178, '192.168.40.221', 'Printer EXIM', 'PRINTER EXIM', 'OTHER', 'HP', 'PRINTER', '0', '0', '0', '0', '0', '0', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (179, '192.168.42.97', 'Depan Dinesh', 'PRINTER IE', 'OTHER', 'HP', 'PRINTER', '0', '0', '0', '0', '0', '0', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (180, '192.168.40.213', 'ELY', 'PRINTER QS', 'OTHER', 'HP', 'PRINTER', '0', '0', '0', '0', '0', '0', 'MD', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (182, '192.168.40.210', 'SACHIT', 'PRINTER TTM', 'OTHER', 'HP', 'PRINTER', '0', '0', '0', '0', '0', '0', 'MD', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (183, '192.168.42.170', 'Putri', 'Product-Integrity', 'WIN 10', 'DELL', 'LAPTOP', 'i3', '8', '500', '1', '1', '1', 'LAB', '1', 1, '0', '2021-03-08 00:00:00', '2021-10-01 16:18:02', '952348950');
INSERT INTO `komputers` VALUES (184, '192.168.40.2', 'IT', 'RDP', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (185, '192.168.40.191', 'Yani', 'S-PPIC_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (186, '192.168.40.228', 'Iin', 'S-PPIC_10', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-12-16 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (187, '192.168.40.192', 'Ratna', 'S-PPIC_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (188, '192.168.41.237', 'QA BAWAH 4', 'S-PPIC_3-LAB', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (189, '192.168.40.194', 'Nurul', 'S-PPIC_4', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2017-11-20 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (190, '192.168.40.195', 'Friza', 'S-PPIC_5', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2017-12-13 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (191, '192.168.40.196', 'Rina', 'S-PPIC_6', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-06-05 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (192, '192.168.40.197', 'Hepi', 'S-PPIC_7', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-10-22 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (193, '192.168.40.198', 'Mifta', 'S-PPIC_8', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-10-22 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (194, '192.168.40.199', 'Arvi', 'S-PPIC_9', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-10-22 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (195, '192.168.40.16', 'SCANNER SYSTEM', 'SCANNER SYSTEM', 'WIN 7', '0', 'PC', 'i5', '8', '500', '1', '1', '1', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (196, '192.168.40.10', 'DBAKG', 'DBAKG', 'WIN 7', '0', 'PC', 'XEON', '32', '1000', '1', '1', '1', 'IT', '1', 1, '0', '2017-08-21 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (197, '192.168.40.44', 'Thomas', 'T-IE_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'IE', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (198, '192.168.40.42', 'Evelin', 'T-IE_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'IE', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (199, '192.168.40.43', 'Dian', 'T-IE_3', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'IE', '1', 1, '0', '2017-12-13 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (200, '192.168.40.45', 'Cahyo', 'T-IE_4', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'IE', '1', 1, '0', '2018-02-16 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (201, '192.168.40.46', 'DEDI', 'T-IE_5', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'IE', '1', 1, '0', '2018-08-28 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (202, '192.168.40.47', 'T-IE_6', 'T-IE_6', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'IE', '1', 1, '0', '2018-08-28 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (203, '192.168.40.48', 'T-IE_7', 'T-IE_7', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'IE', '1', 1, '0', '2018-11-27 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (205, '192.168.40.200', 'SVR', 'TPB SVR', 'WIN 7', '0', 'PC', 'i3', '8', '500', '1', '1', '1', 'IT', '1', 1, '0', NULL, '2021-10-01 16:18:02', '108 975 817');
INSERT INTO `komputers` VALUES (206, '192.168.40.114', 'W-BARCODE', 'W-BARCODE', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', '931534237');
INSERT INTO `komputers` VALUES (207, '192.168.40.161', 'Ardi', 'W-PACKING_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'FINISHING', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (208, '192.168.40.162', 'Nur', 'W-PACKING_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'FINISHING', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (209, '192.168.40.163', 'Brina', 'W-PACKING_3', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'FINISHING', '1', 1, '0', '2017-12-27 00:00:00', '2021-10-01 16:18:02', 'desktop-8t2108f@ad');
INSERT INTO `komputers` VALUES (210, '192.168.40.164', 'Rista', 'W-PACKING_4', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'FINISHING', '1', 1, '0', '2018-03-02 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (211, '192.168.40.160', 'Novia', 'W-PACKING_5', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'FINISHING', '1', 1, '0', '2018-05-03 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (212, '192.168.40.159', 'Lia', 'W-PACKING_7', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'FINISHING', '1', 1, '0', '2019-01-29 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (213, '192.168.40.67', 'W-WASHING_1', 'W-WASHING_1', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'FINISHING', '1', 1, '0', '2019-07-29 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (214, '192.168.40.99', 'Arifin', 'X-IT_1', 'WIN 10', 'DELL', 'PC', 'i3', '12', '500', '1', '1', '1', 'IT', '1', 1, 'PC Buildup', '2017-03-05 00:00:00', '2021-10-07 09:09:52', '173668673');
INSERT INTO `komputers` VALUES (215, '192.168.40.131', 'Dewi', 'Y-CUTTING_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (216, '192.168.40.132', 'Aji', 'Y-CUTTING_2', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (217, '192.168.40.133', 'Hari', 'Y-CUTTING_3', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (218, '192.168.40.134', 'Bundle', 'Y-CUTTING_4', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (219, '192.168.40.135', 'Dina', 'Y-CUTTING_5', 'WIN 10', 'LENOVO', 'AIO', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', '2018-08-03 00:00:00', '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (220, '192.168.40.81', 'Vera', 'Z-COMPONEN_1', 'WIN 7', '0', 'PC', 'i3', '4', '500', '1', '1', '1', 'PRODUCTION', '1', 1, '0', NULL, '2021-10-01 16:18:02', NULL);
INSERT INTO `komputers` VALUES (221, '192.168.70.10', 'FIREWALL', 'SOPHOS', 'OTHER', 'SOPHOS', 'SWITCH', '0', '32', '128', '1', '0', '0', 'IT', '3', 1, '0', '2021-10-01 15:26:05', '2021-10-01 15:26:05', NULL);
INSERT INTO `komputers` VALUES (222, '192.168.40.49', 'IE 8 ', 'T-IE_8', 'WIN 10', 'DELL', 'PC Buildup', 'i5', '8', '100', '1', '0', '1', 'Production', '1', 1, '0', '2021-10-14 04:22:19', '2021-10-14 04:22:46', '771771451');
INSERT INTO `komputers` VALUES (223, '103.28.113.77', '4C:5E:0C:02:E9:5F ', '4C:5E:0C:02:E9:5F ', 'Linux', 'Other', 'Other', 'Other', '32', '200', '1', '0', '0', 'IT', '1', 1, '0', '2021-10-22 01:59:30', '2021-10-22 01:59:30', NULL);

-- ----------------------------
-- Table structure for komputers_before_add_colum
-- ----------------------------
DROP TABLE IF EXISTS `komputers_before_add_colum`;
CREATE TABLE `komputers_before_add_colum`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hostname_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `os_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `processor_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ram_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hdd_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` int(2) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `remote` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 222 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of komputers_before_add_colum
-- ----------------------------
INSERT INTO `komputers_before_add_colum` VALUES (1, '192.168.46.1', 'IT-DEPT-iop', 'win xp', 'AIO', 'i3', '8', '500', 'IT', '1', 1, '2021-09-12 13:23:37', '2021-09-18 05:03:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (2, '192.168.40.2', 'RDP', 'win xp', 'PC Builup', 'i9', '8', '500', 'IT', '1', 1, '2021-09-12 13:23:37', '2021-09-18 05:03:40', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (3, '192.168.42.102', 'DBAKG', 'Win 10', 'Laptop', 'i5', '8', '9000', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-18 05:34:14', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (4, '192.168.40.99', 'X-IT_1', 'Windows 7', 'PC', 'i3', '8', '500', 'IT', '1', 1, '2021-09-12 13:23:37', '2021-09-17 15:30:52', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (5, '192.168.40.10', 'SERVER-DB', 'Windows 7', 'PC', 'i3', '8', '500', 'IT', '1', 1, '2021-09-12 13:23:37', '2021-09-17 15:31:03', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (6, '192.168.40.9', 'IT', 'Windows 10', 'AIO', 'i3', '8', '500', 'IT', '1', 1, '2021-09-12 13:23:37', '2021-09-17 15:31:05', '173668673');
INSERT INTO `komputers_before_add_colum` VALUES (7, '192.168.40.12', 'IT', 'V-SPAHRE', 'AIO', 'i3', '8', '500', 'IT', '1', 1, '2021-09-12 13:23:37', '2021-09-17 15:31:07', '503 605 500/akg-01/administrator');
INSERT INTO `komputers_before_add_colum` VALUES (8, '192.168.40.83', 'IT', 'Win 10', 'AiO', 'i3', '8', '1000', 'IT', '1', 1, '2021-09-12 13:23:37', '2021-09-18 08:01:14', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (9, '192.168.40.27', 'A-HRD_1', 'Windows 7', 'PC', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (10, '192.168.40.22', 'A-HRD_2', 'Windows 7', 'PC', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (11, '192.168.40.23', 'A-HRD_3', 'Windows 7', 'PC', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (12, '192.168.40.31', 'A-HRD_4', 'Windows 7', 'PC', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (13, '192.168.40.25', 'A-GA_1', 'Windows 7', 'PC', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (14, '192.168.40.26', 'A_HRD_5', 'Windows 7', 'PC', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (15, '192.168.40.30', 'A-SECURITY_1', 'Windows 7', 'PC', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (16, '192.168.40.28', 'A-HRD_6', 'Windows 10', 'AIO', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (17, '192.168.40.29', 'A-HRD_7', 'Windows 10', 'AIO', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (18, '192.168.40.32', 'A-HRD_8', 'Windows 10', 'AIO', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', 'desktop-3udjdmg@ad');
INSERT INTO `komputers_before_add_colum` VALUES (19, '192.168.40.33', 'A-HRD_9', 'Windows 10', 'AIO', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (20, '192.168.40.42', 'T-IE_2', 'Windows 7', 'PC', 'i3', '8', '500', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (21, '192.168.40.43', 'T-IE_3', 'Windows 10', 'AIO', 'i3', '8', '500', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (22, '192.168.40.44', 'T-IE_1', 'Windows 7', 'PC', 'i3', '8', '500', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (23, '192.168.40.45', 'T-IE_4', 'Windows 10', 'AIO', 'i3', '8', '500', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (24, '192.168.40.46', 'T-IE_5', 'Windows 10', 'AIO', 'i3', '8', '500', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (25, '192.168.40.47', 'T-IE_6', 'Windows 10', 'AIO', 'i3', '8', '500', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (26, '192.168.40.48', 'T-IE_7', 'Windows 10', 'AIO', 'i3', '8', '500', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (27, '192.168.40.65', 'O-MEKANIK_1', 'Windows 7', 'PC', 'i3', '8', '500', 'MEKANIK', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (28, '192.168.40.71', 'M-WH_1', 'Windows 7', 'PC', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (29, '192.168.40.72', 'M-WH_2', 'Windows 7', 'PC', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (30, '192.168.40.73', 'M-WH_3', 'Windows 10', 'AIO', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (31, '192.168.40.74', 'M-WH_4', 'Windows 10', 'AIO', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (32, '192.168.40.75', 'M-WH_5', 'Windows 10', 'AIO', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (33, '192.168.40.76', 'M-WH_6', 'Windows 10', 'AIO', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (34, '192.168.40.77', 'M-WH_7', 'Windows 10', 'AIO', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (35, '192.168.40.78', 'M-WH_8', 'Windows 10', 'AIO', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (36, '192.168.40.79', 'M-WH_9', 'Windows 10', 'AIO', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (37, '192.168.40.80', 'M-WH_10', 'Windows 10', 'AIO', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (38, '192.168.40.64', 'M-WH_11', 'Windows 10', 'AIO', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (39, '192.168.40.63', 'M-WH_12', 'Windows 10', 'AIO', 'i3', '8', '500', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (40, '192.168.40.81', 'Z-COMPONEN_1', 'Windows 7', 'PC', 'i3', '8', '500', 'COMPONENT', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (41, '192.168.40.92', 'B-PROD_1', 'Windows 7', 'PC', 'i3', '8', '500', 'PRODUKSI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (42, '192.168.40.93', 'B-PROD_3', 'Windows 10', 'AIO', 'i3', '8', '500', 'PRODUKSI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (43, '192.168.40.54', 'B-PROD_FM', 'Windows 10', 'AIO', 'i3', '8', '500', 'produksi', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (44, '192.168.40.94', 'B-PROD_4', 'Windows 10', 'AIO', 'i3', '8', '500', 'PRODUKSI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (45, '192.168.40.39', 'C-ACC_3', 'Windows 7', 'PC', 'i3', '8', '500', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (46, '192.168.40.102', 'C-ACC_1', 'Windows 7', 'PC', 'i3', '8', '500', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (47, '192.168.40.101', 'C-ACC_2', 'Windows 7', 'PC', 'i3', '8', '500', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (48, '192.168.40.104', 'C-ACC_4', 'Windows 10', 'AIO', 'i3', '8', '500', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (49, '192.168.40.105', 'C-ACC_5', 'Windows 10', 'AIO', 'i3', '8', '500', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (50, '192.168.40.37', 'C-ACC_6', 'Windows 10', 'AIO', 'i3', '8', '500', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (51, '192.168.40.38', 'C-ACC_7', 'Windows 10', 'AIO', 'i3', '8', '500', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (52, '192.168.40.40', 'C-ACC_8', 'Windows 10', 'AIO DELL', 'i3', '8', '500', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (53, '192.168.40.111', 'E-EXIM_1', 'Windows 7', 'PC', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (54, '192.168.40.112', 'E-EXIM_2', 'Windows 7', 'PC', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (55, '192.168.40.113', 'E-EXIM_3', 'Windows 10', 'AIO', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (56, '192.168.40.226', 'E-EXIM_4', 'Windows 10', 'AIO', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (57, '192.168.40.115', 'E-EXIM_5', 'Windows 10', 'AIO', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (58, '192.168.40.110', 'E-EXIM_6', 'Windows 10', 'AIO', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (59, '192.168.40.109', 'E-EXIM_7', 'Windows 10', 'AIO', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (60, '192.168.40.108', 'E-EXIM_8', 'Windows 10', 'AIO', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '414695937');
INSERT INTO `komputers_before_add_colum` VALUES (61, '192.168.40.107', 'E-EXIM_9', 'Windows 10', 'AIO', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', 'desktop-mrpr8l2@ad');
INSERT INTO `komputers_before_add_colum` VALUES (62, '192.168.40.82', 'E-EXIM_10', 'Windows 10', 'AIO', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (63, '192.168.40.62', 'E-EXIM_11', 'Windows 10', 'AIO', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '548904789');
INSERT INTO `komputers_before_add_colum` VALUES (64, '192.168.40.116', 'Totok-MD', 'Windows 7', 'PC', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (65, '192.168.40.117', 'Wiwiet', 'Windows 7', 'PC', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '670827235');
INSERT INTO `komputers_before_add_colum` VALUES (66, '192.168.40.118', 'Faulin-MD', 'Windows 7', 'PC', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (67, '192.168.40.119', NULL, 'Windows 7', 'PC', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (68, '192.168.40.120', 'Geovani-MD', 'Windows 7', 'PC', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (69, '192.168.40.122', 'DIANING', 'Windows 7', 'PC', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (70, '192.168.40.123', 'Arya', 'Windows 7', 'PC', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (71, '192.168.40.124', 'There', 'Windows 7', 'PC', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (72, '192.168.40.149', 'Amy', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (73, '192.168.40.150', 'Merry', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (74, '192.168.40.151', 'OCHA', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', 'desktop-tpi9ggv@ad');
INSERT INTO `komputers_before_add_colum` VALUES (75, '192.168.40.152', 'Atta', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (76, '192.168.40.153', 'Agnes', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (77, '192.168.40.154', 'Yanti', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (78, '192.168.40.155', 'Deris', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (79, '192.168.40.156', 'Wulan 41.225', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (80, '192.168.40.157', 'TRIAS', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (81, '192.168.40.158', 'Herna', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (82, '192.168.40.70', 'Gema', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (83, '192.168.40.247', 'April-MD', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (84, '192.168.40.227', 'Azura', 'Windows 10', 'AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (85, '192.168.40.86', 'H-MARKETING_2', 'Windows 10', 'AIO', 'i3', '8', '500', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (86, '192.168.40.85', 'H-MARKETING_1', 'Windows 10', 'AIO', 'i3', '8', '500', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (87, '192.168.40.87', 'H-MARKETING_3', 'Windows 10', 'AIO', 'i3', '8', '500', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (88, '192.168.40.88', 'H-MARKETING_4', 'Windows 10', 'AIO', 'i3', '8', '500', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (89, '192.168.40.57', NULL, 'Windows 10', 'AIO', 'i3', '8', '500', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (90, '192.168.40.125', 'D-MD_22', 'Windows 10', 'NUC', 'i3', '8', '500', 'MD SOT', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (91, '192.168.40.126', 'G-Design_1', 'Windows 10', 'AIO', 'i3', '8', '500', 'Design', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (92, '192.168.40.127', 'G-Design_2', 'Windows 10', 'AIO', 'i3', '8', '500', 'Design', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (93, '192.168.40.128', 'G-Design_5', 'Windows 7', 'PC', 'i3', '8', '500', 'Design', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (94, '192.168.40.129', 'G-Design', 'Windows 10', 'AIO', 'i3', '8', '500', 'Design', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (95, '192.168.40.129', 'G-Design_3', 'Windows 10', 'AIO', 'i3', '8', '500', 'Design', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (96, '192.168.40.130', 'P-PURCHASE_1', 'Windows 10', 'AIO', 'i3', '8', '500', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (97, '192.168.43.130', 'P-PURCHASE_', 'Windows 7', 'PC', 'i3', '8', '500', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '842080304');
INSERT INTO `komputers_before_add_colum` VALUES (98, '192.168.40.138', 'P-PURCHASE_3', 'Windows 10', 'AIO', 'i3', '8', '500', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (99, '192.168.40.139', 'P-PURCHASE_2', 'Windows 10', 'AIO', 'i3', '8', '500', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (100, '192.168.40.140', 'P-PURCHASE_3', 'Windows 10', 'AIO', 'i3', '8', '500', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (101, '192.168.40.138', 'P-PURCHASE_4', 'Windows 10', 'AIO', 'i3', '8', '500', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (102, '192.168.40.136', 'P-PURCHASE_5', 'Windows 10', 'AIO', 'i3', '8', '500', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (103, '192.168.40.131', 'Y-CUTTING_1', 'Windows 7', 'PC', 'i3', '8', '500', 'CUTTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (104, '192.168.40.132', 'Y-CUTTING_2', 'Windows 7', 'PC', 'i3', '8', '500', 'CUTTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (105, '192.168.40.133', 'Y-CUTTING_3', 'Windows 7', 'PC', 'i3', '8', '500', 'CUTTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (106, '192.168.40.134', 'Y-CUTTING_4', 'Windows 10', 'AIO', 'i3', '8', '500', 'CUTTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (107, '192.168.40.135', 'Y-CUTTING_5', 'Windows 10', 'AIO', 'i3', '8', '500', 'CUTTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (108, '192.168.40.141', 'K-QC_1', 'Windows 7', 'PC', 'i3', '8', '500', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (109, '192.168.40.142', 'K-QC_2', 'Windows 7', 'PC', 'i3', '8', '500', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (110, '192.168.40.143', 'K-QC_3', 'Windows 7', 'PC', 'i3', '8', '500', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (111, '192.168.40.144', 'K-QC_4', 'Windows 7', 'NUC', 'i3', '8', '500', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (112, '192.168.40.145', 'K-QCBUYER_1', 'Windows 10', 'AIO', 'i3', '8', '500', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (113, '192.168.40.148', 'LAB', 'Windows 10', 'PC', 'i3', '8', '500', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '480971173');
INSERT INTO `komputers_before_add_colum` VALUES (114, '192.168.40.147', 'K-QC_5', 'Windows 10', 'AIO', 'i3', '8', '500', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (115, '192.168.40.96', 'K-QC_6', 'Windows 10', 'AIO', 'i3', '8', '500', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (116, '192.168.40.98', 'K-QC_8', 'Windows 10', 'AIO', 'i3', '8', '500', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (117, '192.168.40.97', 'K-QC_9', 'Windows 10', 'AIO', 'i3', '8', '500', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (118, '192.168.40.90', 'B-PROD_2', 'Windows 7', 'PC', 'i3', '8', '500', 'PRODUKSI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (119, '192.168.40.162', 'W-PACKING_2', 'Windows 7', 'PC', 'i3', '8', '500', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (120, '192.168.40.163', 'W-PACKING_3', 'Windows 10', 'AIO', 'i3', '8', '500', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', 'desktop-8t2108f@ad');
INSERT INTO `komputers_before_add_colum` VALUES (121, '192.168.40.164', 'W-PACKING_4', 'Windows 10', 'AIO', 'i3', '8', '500', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (122, '192.168.40.160', 'W-PACKING_5', 'Windows 10', 'AIO', 'i3', '8', '500', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (123, '192.168.40.159', 'W-PACKING_7', 'Windows 10', 'AIO', 'i3', '8', '500', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (124, '192.168.40.67', 'W-WASHING_1', 'Windows 10', 'AIO', 'i3', '8', '500', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (125, '192.168.40.190', 'I-SAMPLE_2', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (126, '192.168.40.188', 'I-POLA_5', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (127, '192.168.40.187', 'I-PATTERN_1', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (128, '192.168.40.186', 'ADMSAMPLE', 'Windows 10', 'AIO', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (129, '192.168.40.184', 'I-MARKER_1', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (130, '192.168.40.182', 'I-CAD_2', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (131, '192.168.40.181', 'I-CAD_1', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (132, '192.168.40.180', 'I-ADMPATTERN', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (133, '192.168.40.189', 'I-POLA_4', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (134, '192.168.40.177', 'Marker', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (135, '192.168.40.176', 'I-CAD_3', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (136, '192.168.40.175', 'I-SAMPLE_4', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (137, '192.168.40.174', 'I-SAMPLE_3', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (138, '192.168.40.173', 'I-POLA_3', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (139, '192.168.40.172', 'I-POLA_2', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (140, '192.168.40.171', 'I-POLA_1', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (141, '192.168.40.170', 'Marker', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (142, '192.168.40.169', 'I-SAMPLE_1', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (143, '192.168.40.168', 'I-SAMPLE_15', 'Windows 10', 'AIO', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (144, '192.168.40.206', 'I-ADMSAMPLE_2', 'Windows 10', 'AIO', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (145, '192.168.40.146', 'K-QA_1', 'Windows 10', 'AIO', 'i3', '8', '500', 'QA Sample', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (146, '192.168.40.167', 'I-SAMPLE_5', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (147, '192.168.40.166', 'I-SAMPLE_6', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (148, '192.168.40.201', 'I-SAMPLE_7', 'Windows 10', 'AIO', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (149, '192.168.40.202', 'I-SAMPLE_8', 'Windows 10', 'AIO', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (150, '192.168.40.203', 'I-SAMPLE_9', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (151, '192.168.40.204', 'I-SAMPLE_10', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (152, '192.168.40.205', 'I-SAMPLE_11', 'Windows 10', 'AIO', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (153, '192.168.40.208', 'I-SAMPLE_12', 'Windows 7', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (154, '192.168.42.14', 'I-SAMPLE_13', 'Windows 10', 'AIO', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (155, '192.168.40.209', 'I-SAMPLE_14', 'Windows 10', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (156, '192.168.40.178', 'I-SAMPLE_15', 'Windows 10', 'PC', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (157, '192.168.40.41', 'I-SAMPLE_16', 'Windows 10', 'AIO', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (158, '192.168.40.235', 'I-SAMPLE_17', 'Windows 10', 'AIO', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '878176913');
INSERT INTO `komputers_before_add_colum` VALUES (159, '192.168.40.223', 'I-Sample_18', 'WIN 10 Pro', 'AIO Dell', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (160, '192.168.41.250', 'I-SAMPLE_19', 'Windows 10', 'AIO', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '649038906');
INSERT INTO `komputers_before_add_colum` VALUES (161, '192.168.40.191', 'S-PPIC_1', 'Windows 7', 'PC', 'i3', '8', '500', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (162, '192.168.40.192', 'S-PPIC_2', 'Windows 7', 'PC', 'i3', '8', '500', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (163, '192.168.40.193', 'K-QC_lab_2', 'Windows 10', 'AIO', 'i3', '8', '500', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '377800936');
INSERT INTO `komputers_before_add_colum` VALUES (164, '192.168.40.194', 'S-PPIC_4', 'Windows 10', 'AIO', 'i3', '8', '500', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (165, '192.168.40.195', 'S-PPIC_5', 'Windows 10', 'AIO', 'i3', '8', '500', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (166, '192.168.40.161', 'W-PACKING_1', 'Windows 7', 'PC', 'i3', '8', '500', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (167, '192.168.40.196', 'S-PPIC_6', 'Windows 10', 'AIO', 'i3', '8', '500', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (168, '192.168.40.197', 'S-PPIC_7', 'Windows 10', 'AIO', 'i3', '8', '500', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (169, '192.168.40.198', 'S-PPIC_8', 'Windows 10', 'AIO', 'i3', '8', '500', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (170, '192.168.40.199', 'S-PPIC_9', 'Windows 10', 'AIO', 'i3', '8', '500', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (171, '192.168.40.228', 'S-PPIC_10', 'Windows 10', 'AIO', 'i3', '8', '500', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (172, '192.168.40.192', 'N-PLANNING_1', 'Windows 10', 'PC', 'i3', '8', '500', 'PLANNING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (173, '192.168.40.198', 'N-PLANNING_2', 'Windows 10', 'PC', 'i3', '8', '500', 'PLANNING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (174, '192.168.40.61', 'O-MTN_1', 'Windows 7', 'PC', 'i3', '8', '500', 'UTILITY', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (175, '192.168.40.251', 'BEA_CUKAI', 'Windows 7', 'PC', 'i3', '8', '500', 'BEACUKAI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (176, '192.168.40.252', 'BEACUKAI_1', 'Windows 7', 'PC', 'i3', '8', '500', 'BEACUKAI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (177, '192.168.40.239', 'G-DESAIN_6', 'WIN 10 Pro', 'PC DELL XPS', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (178, '192.168.40.230', 'G-DESAIN_7', 'Win 10 pro', 'PC DELL XPS', 'i3', '8', '500', 'DESIGN', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (179, '192.168.40.34', 'F-KLININK_1', 'Win 10 pro', 'AIO Dell', 'i3', '8', '500', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (180, '192.168.40.229', 'G-DESAIN_4', 'Win 10 pro', 'AIO Dell', 'i3', '8', '500', 'DESAIN', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (181, '192.168.40.106', 'EXIM-IMAM', 'Win 10 pro', 'Laptop Lenovo', 'i3', '8', '500', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (182, '192.168.41.9', 'AKG-HPE-SWT1.LT.1', 'LOOPBACK HPE', 'admin', 'i3', '8', '500', '4n66un@2020', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (183, '192.168.41.11', 'AKG-HPE-SWT1.LT.2', 'HPE', 'admin', 'i3', '8', '500', '4n66un@2020', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (184, '192.168.41.12', 'AKG-HPE-SWT2.LT.2', 'HPE', 'admin', 'i3', '8', '500', '4n66un@2020', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (185, '192.168.41.13', 'AKG-HPE-SWT1.LT.2', 'HPE', 'admin', 'i3', '8', '500', '4n66un@2020', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (186, '192.168.41.14', 'AKG-HPE-SWT1.LT.1', 'LOOPBACK HPE', 'admin', 'i3', '8', '500', '4n66un@2020', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (187, '192.168.41.15', '8C:85:C1:CA:84:40', 'HPE', 'admin', 'i3', '8', '500', '4n66un@2020', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (188, '192.168.40.16', 'd4-6d-6d-1a-61-ac', NULL, NULL, 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (189, '192.168.40.200', 'TPB SVR', NULL, 'it', 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '108 975 817');
INSERT INTO `komputers_before_add_colum` VALUES (190, '192.168.40.11', 'PABX NS300', NULL, 'INSTALLER', 'i3', '8', '500', '1234', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (191, '192.168.42.222', 'LAB-2-AIO', 'WIN 10', 'AIO LENOVO', 'i3', '8', '500', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', 's-ppic_6@ad');
INSERT INTO `komputers_before_add_colum` VALUES (192, '192.168.40.114', 'W-BARCODE', 'WIN 10', 'it', 'i3', '8', '500', 'italso', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '931534237');
INSERT INTO `komputers_before_add_colum` VALUES (193, '192.168.41.39', 'PURCHASE-LAPTOP', 'win 10', NULL, 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '949799467');
INSERT INTO `komputers_before_add_colum` VALUES (194, '192.168.40.225', 'K-QC_10', 'WIN 10', 'SIWI', 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (195, '192.168.42.3', 'E4:8D:8C:A9:18:B7', 'Router OS', 'Routerboard.com', 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (196, '192.168.42.13', 'Micro-Star INTL CO., LTD.', 'WIN 10', NULL, 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (197, '192.168.42.12', 'Mesin Laser', NULL, NULL, 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (198, '192.168.42.11', 'Mesin Laser', NULL, NULL, 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (199, '192.168.42.10', 'DBAKG-BACKUP', 'WIN 10', NULL, 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (200, '192.168.42.5', 'SHOWROOM', 'WIN 10', NULL, 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '461946364');
INSERT INTO `komputers_before_add_colum` VALUES (201, '192.168.40.185', NULL, 'WIN 10', 'LAPTOP', 'i3', '8', '500', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '840246014');
INSERT INTO `komputers_before_add_colum` VALUES (202, '192.168.41.249', 'D-MD_23', 'Win 10', 'AIO X Ameya', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '401611473');
INSERT INTO `komputers_before_add_colum` VALUES (203, '192.168.42.170', 'Product-Integrity', 'WIN 10', 'Laptop Dell', 'i3', '8', '500', 'LAB', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '952348950');
INSERT INTO `komputers_before_add_colum` VALUES (204, '192.168.42.98', 'PRINTER QS', NULL, 'PRINTER HP', 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (205, '192.168.42.97', 'PRINTER IE', NULL, 'PRINTER HP', 'i3', '8', '500', NULL, '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (206, '192.168.41.237', 'S-PPIC_3-LAB', 'WIN 10', NULL, 'i3', '8', '500', 'QA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (207, '192.168.42.251', 'P-PURCHASE_6', 'WIN 10', 'AIO LENOVO', 'i3', '8', '500', 'Purchase', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '370295204');
INSERT INTO `komputers_before_add_colum` VALUES (208, '192.168.40.21', 'Laptop PIPIT', 'WIN 10', 'Laptop Lenovo', 'i3', '8', '500', 'HRD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (209, '192.168.42.155', 'H-MARKETING_5', NULL, 'DEL AIO', 'i3', '8', '500', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '185415581');
INSERT INTO `komputers_before_add_colum` VALUES (210, '192.168.42.186', 'B-PROD_5', 'WIN 10 HOME', 'DEL AIO', 'i3', '8', '500', 'PROD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (211, '192.168.41.210', 'D-MD_25', 'WIN 10 HOME', 'DEL AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (212, '192.168.40.119', 'L-MD_2', 'WIN 10 HOME', 'Laptop AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '622 740 478');
INSERT INTO `komputers_before_add_colum` VALUES (213, '192.168.41.71', 'D-MD_24', 'WIN 10 HOME', 'DELL AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_before_add_colum` VALUES (214, '847167624', 'HRD_L3', 'WIN 10 HOME', 'LENOVO LAPTOP', 'i3', '8', '500', 'HRD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '731843665');
INSERT INTO `komputers_before_add_colum` VALUES (215, '192.168.42.197', 'D-MD_26', 'WIN 10 HOME', 'DELL AIO', 'i3', '8', '500', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '430165486');
INSERT INTO `komputers_before_add_colum` VALUES (216, '192.168.40.18', 'TEMP_SVR', 'WIN 10 PRO', 'HPE', 'i3', '8', '500', 'IT', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '517 951 901');
INSERT INTO `komputers_before_add_colum` VALUES (217, '192.168.40.137', 'P-PURCHASE_7', 'WIN 10 HOME', 'Dell AIO', 'i3', '8', '500', 'Purchase', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '439415468');

-- ----------------------------
-- Table structure for komputers_data
-- ----------------------------
DROP TABLE IF EXISTS `komputers_data`;
CREATE TABLE `komputers_data`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hostname_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `os_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `processor_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ram_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hdd_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ups` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_actv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `antivir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` int(2) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `remote` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 840 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of komputers_data
-- ----------------------------
INSERT INTO `komputers_data` VALUES (1, '192.168.48.10', 'DBAKG', 'Win 10', 'PC Buildup', 'i7', '9', '9', '1', '1', '1', 'HRD GA', '3', 1, '2021-09-12 13:23:37', '2021-09-18 15:51:16', NULL);
INSERT INTO `komputers_data` VALUES (2, '192.168.40.2', 'RDP', 'win xp', 'PC Buildup', 'i9', '8', '500', '1', '0', 'yes', 'IT', '3', 1, '2021-09-12 13:23:37', '2021-09-18 05:03:40', NULL);
INSERT INTO `komputers_data` VALUES (3, '192.168.42.102', 'DBAKG', 'Win 10', 'Laptop', 'i5', '8', '9000', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-18 05:34:14', NULL);
INSERT INTO `komputers_data` VALUES (4, '192.168.40.99', 'X-IT_1', 'Windows 7', 'PC', 'i3', '8', '500', '1', '0', 'yes', 'IT', '3', 1, '2021-09-12 13:23:37', '2021-09-17 15:30:52', NULL);
INSERT INTO `komputers_data` VALUES (5, '192.168.40.10', 'SERVER-DB', 'Windows 7', 'PC', 'i3', '8', '500', '1', '0', 'yes', 'IT', '3', 1, '2021-09-12 13:23:37', '2021-09-17 15:31:03', NULL);
INSERT INTO `komputers_data` VALUES (6, '192.168.40.9', 'IT', 'Windows 10', 'AIO', 'i3', '8', '500', '1', '0', 'yes', 'IT', '3', 1, '2021-09-12 13:23:37', '2021-09-17 15:31:05', '173668673');
INSERT INTO `komputers_data` VALUES (7, '192.168.40.12', 'IT', 'V-SPAHRE', 'AIO', 'i3', '8', '500', '1', '0', 'yes', 'IT', '3', 1, '2021-09-12 13:23:37', '2021-09-17 15:31:07', '503 605 500/akg-01/administrator');
INSERT INTO `komputers_data` VALUES (8, '192.168.40.83', 'IT', 'Win 10', 'AiO', 'i3', '8', '1000', '1', '0', 'yes', 'IT', '3', 1, '2021-09-12 13:23:37', '2021-09-18 08:01:14', NULL);
INSERT INTO `komputers_data` VALUES (9, '192.168.40.27', 'A-HRD_1', 'Windows 7', 'PC', 'i3', '8', '500', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (10, '192.168.40.22', 'A-HRD_2', 'Windows 7', 'PC', 'i3', '8', '500', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (11, '192.168.40.23', 'A-HRD_3', 'Windows 7', 'PC', 'i3', '8', '500', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (12, '192.168.40.31', 'A-HRD_4', 'Windows 7', 'PC', 'i3', '8', '500', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (13, '192.168.40.25', 'A-GA_1', 'Windows 7', 'PC', 'i3', '8', '500', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (14, '192.168.40.26', 'A_HRD_5', 'Windows 7', 'PC', 'i3', '8', '500', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (15, '192.168.40.30', 'A-SECURITY_1', 'Windows 7', 'PC', 'i3', '8', '500', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (16, '192.168.40.28', 'A-HRD_6', 'Windows 10', 'AIO', 'i3', '8', '500', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (17, '192.168.40.29', 'A-HRD_7', 'Windows 10', 'AIO', 'i3', '8', '500', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (18, '192.168.40.32', 'A-HRD_8', 'Windows 10', 'AIO', 'i3', '8', '500', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', 'desktop-3udjdmg@ad');
INSERT INTO `komputers_data` VALUES (19, '192.168.40.33', 'A-HRD_9', 'Windows 10', 'AIO', 'i3', '8', '500', '1', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (20, '192.168.40.42', 'T-IE_2', 'Windows 7', 'PC', 'i3', '8', '500', '1', '0', 'yes', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (21, '192.168.40.43', 'T-IE_3', 'Windows 10', 'AIO', 'i3', '8', '500', '1', '0', 'yes', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (22, '192.168.40.44', 'T-IE_1', 'Windows 7', 'PC', 'i3', '8', '500', '1', '0', 'yes', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (23, '192.168.40.45', 'T-IE_4', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (24, '192.168.40.46', 'T-IE_5', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (25, '192.168.40.47', 'T-IE_6', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (26, '192.168.40.48', 'T-IE_7', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'IE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (27, '192.168.40.65', 'O-MEKANIK_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'MEKANIK', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (28, '192.168.40.71', 'M-WH_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (29, '192.168.40.72', 'M-WH_2', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (30, '192.168.40.73', 'M-WH_3', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (31, '192.168.40.74', 'M-WH_4', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (32, '192.168.40.75', 'M-WH_5', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (33, '192.168.40.76', 'M-WH_6', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (34, '192.168.40.77', 'M-WH_7', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (35, '192.168.40.78', 'M-WH_8', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (36, '192.168.40.79', 'M-WH_9', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (37, '192.168.40.80', 'M-WH_10', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (38, '192.168.40.64', 'M-WH_11', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (39, '192.168.40.63', 'M-WH_12', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'WAREHOUSE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (40, '192.168.40.81', 'Z-COMPONEN_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'COMPONENT', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (41, '192.168.40.92', 'B-PROD_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'PRODUKSI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (42, '192.168.40.93', 'B-PROD_3', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PRODUKSI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (43, '192.168.40.54', 'B-PROD_FM', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'produksi', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (44, '192.168.40.94', 'B-PROD_4', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PRODUKSI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (45, '192.168.40.39', 'C-ACC_3', 'Win 10', 'PC', 'i3', '8', '500', '1', '0', '1', 'Acounting', '1', 1, '2021-09-12 13:23:37', '2021-09-18 08:53:37', NULL);
INSERT INTO `komputers_data` VALUES (46, '192.168.40.102', 'C-ACC_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'ACCOUNTING', '1', 0, '2021-09-12 13:23:37', '2021-09-19 07:18:25', NULL);
INSERT INTO `komputers_data` VALUES (47, '192.168.40.101', 'C-ACC_2', 'Windows 7', 'PC', 'i3', '80', '500', '0', '0', '1', 'IT', '1', 1, '2021-09-12 13:23:37', '2021-09-19 07:18:59', NULL);
INSERT INTO `komputers_data` VALUES (48, '192.168.40.104', 'C-ACC_4', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'ACCOUNTING', '1', 0, '2021-09-12 13:23:37', '2021-09-20 07:34:58', NULL);
INSERT INTO `komputers_data` VALUES (49, '192.168.40.105', 'C-ACC_5', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (50, '192.168.40.37', 'C-ACC_6', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (51, '192.168.40.38', 'C-ACC_7', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (52, '192.168.40.40', 'C-ACC_8', 'Windows 10', 'AIO DELL', 'i3', '8', '500', '0', '0', 'yes', 'ACCOUNTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (53, '192.168.40.111', 'E-EXIM_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (54, '192.168.40.112', 'E-EXIM_2', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (55, '192.168.40.113', 'E-EXIM_3', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (56, '192.168.40.226', 'E-EXIM_4', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (57, '192.168.40.115', 'E-EXIM_5', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (58, '192.168.40.110', 'E-EXIM_6', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (59, '192.168.40.109', 'E-EXIM_7', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (60, '192.168.40.108', 'E-EXIM_8', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '414695937');
INSERT INTO `komputers_data` VALUES (61, '192.168.40.107', 'E-EXIM_9', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', 'desktop-mrpr8l2@ad');
INSERT INTO `komputers_data` VALUES (62, '192.168.40.82', 'E-EXIM_10', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (63, '192.168.40.62', 'E-EXIM_11', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '548904789');
INSERT INTO `komputers_data` VALUES (64, '192.168.40.116', 'Totok-MD', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (65, '192.168.40.117', 'Wiwiet', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '670827235');
INSERT INTO `komputers_data` VALUES (66, '192.168.40.118', 'Faulin-MD', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (67, '192.168.40.119', NULL, 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (68, '192.168.40.120', 'Geovani-MD', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (69, '192.168.40.122', 'DIANING', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (70, '192.168.40.123', 'Arya', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (71, '192.168.40.124', 'There', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (72, '192.168.40.149', 'Amy', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (73, '192.168.40.150', 'Merry', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (74, '192.168.40.151', 'OCHA', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', 'desktop-tpi9ggv@ad');
INSERT INTO `komputers_data` VALUES (75, '192.168.40.152', 'Atta', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (76, '192.168.40.153', 'Agnes', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (77, '192.168.40.154', 'Yanti', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (78, '192.168.40.155', 'Deris', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (79, '192.168.40.156', 'Wulan 41.225', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (80, '192.168.40.157', 'TRIAS', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (81, '192.168.40.158', 'Herna', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (82, '192.168.40.70', 'Gema', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (83, '192.168.40.247', 'April-MD', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (84, '192.168.40.227', 'Azura', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (85, '192.168.40.86', 'H-MARKETING_2', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (86, '192.168.40.85', 'H-MARKETING_1', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (87, '192.168.40.87', 'H-MARKETING_3', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (88, '192.168.40.88', 'H-MARKETING_4', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (89, '192.168.40.57', NULL, 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (90, '192.168.40.125', 'D-MD_22', 'Windows 10', 'NUC', 'i3', '8', '500', '0', '0', 'yes', 'MD SOT', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (91, '192.168.40.126', 'G-Design_1', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'Design', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (92, '192.168.40.127', 'G-Design_2', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'Design', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (93, '192.168.40.128', 'G-Design_5', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'Design', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (94, '192.168.40.129', 'G-Design', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'Design', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (95, '192.168.40.129', 'G-Design_3', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'Design', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (96, '192.168.40.130', 'P-PURCHASE_1', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (97, '192.168.43.130', 'P-PURCHASE_', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '842080304');
INSERT INTO `komputers_data` VALUES (98, '192.168.40.138', 'P-PURCHASE_3', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (99, '192.168.40.139', 'P-PURCHASE_2', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (100, '192.168.40.140', 'P-PURCHASE_3', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (101, '192.168.40.138', 'P-PURCHASE_4', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (102, '192.168.40.136', 'P-PURCHASE_5', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PURCHASE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (103, '192.168.40.131', 'Y-CUTTING_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'CUTTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (104, '192.168.40.132', 'Y-CUTTING_2', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'CUTTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (105, '192.168.40.133', 'Y-CUTTING_3', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'CUTTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (106, '192.168.40.134', 'Y-CUTTING_4', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'CUTTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (107, '192.168.40.135', 'Y-CUTTING_5', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'CUTTING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (108, '192.168.40.141', 'K-QC_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (109, '192.168.40.142', 'K-QC_2', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (110, '192.168.40.143', 'K-QC_3', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (111, '192.168.40.144', 'K-QC_4', 'Windows 7', 'NUC', 'i3', '8', '500', '0', '0', 'yes', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (112, '192.168.40.145', 'K-QCBUYER_1', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (113, '192.168.40.148', 'LAB', 'Windows 10', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '480971173');
INSERT INTO `komputers_data` VALUES (114, '192.168.40.147', 'K-QC_5', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (115, '192.168.40.96', 'K-QC_6', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (116, '192.168.40.98', 'K-QC_8', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (117, '192.168.40.97', 'K-QC_9', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (118, '192.168.40.90', 'B-PROD_2', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'PRODUKSI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (119, '192.168.40.162', 'W-PACKING_2', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (120, '192.168.40.163', 'W-PACKING_3', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', 'desktop-8t2108f@ad');
INSERT INTO `komputers_data` VALUES (121, '192.168.40.164', 'W-PACKING_4', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (122, '192.168.40.160', 'W-PACKING_5', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (123, '192.168.40.159', 'W-PACKING_7', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (124, '192.168.40.67', 'W-WASHING_1', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (125, '192.168.40.190', 'I-SAMPLE_2', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (126, '192.168.40.188', 'I-POLA_5', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (127, '192.168.40.187', 'I-PATTERN_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (128, '192.168.40.186', 'ADMSAMPLE', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (129, '192.168.40.184', 'I-MARKER_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (130, '192.168.40.182', 'I-CAD_2', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (131, '192.168.40.181', 'I-CAD_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (132, '192.168.40.180', 'I-ADMPATTERN', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (133, '192.168.40.189', 'I-POLA_4', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (134, '192.168.40.177', 'Marker', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (135, '192.168.40.176', 'I-CAD_3', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (136, '192.168.40.175', 'I-SAMPLE_4', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (137, '192.168.40.174', 'I-SAMPLE_3', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (138, '192.168.40.173', 'I-POLA_3', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (139, '192.168.40.172', 'I-POLA_2', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (140, '192.168.40.171', 'I-POLA_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (141, '192.168.40.170', 'Marker', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (142, '192.168.40.169', 'I-SAMPLE_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (143, '192.168.40.168', 'I-SAMPLE_15', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (144, '192.168.40.206', 'I-ADMSAMPLE_2', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (145, '192.168.40.146', 'K-QA_1', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'QA Sample', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (146, '192.168.40.167', 'I-SAMPLE_5', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (147, '192.168.40.166', 'I-SAMPLE_6', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (148, '192.168.40.201', 'I-SAMPLE_7', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (149, '192.168.40.202', 'I-SAMPLE_8', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (150, '192.168.40.203', 'I-SAMPLE_9', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (151, '192.168.40.204', 'I-SAMPLE_10', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (152, '192.168.40.205', 'I-SAMPLE_11', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (153, '192.168.40.208', 'I-SAMPLE_12', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (154, '192.168.42.14', 'I-SAMPLE_13', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (155, '192.168.40.209', 'I-SAMPLE_14', 'Windows 10', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (156, '192.168.40.178', 'I-SAMPLE_15', 'Windows 10', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (157, '192.168.40.41', 'I-SAMPLE_16', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (158, '192.168.40.235', 'I-SAMPLE_17', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '878176913');
INSERT INTO `komputers_data` VALUES (159, '192.168.40.223', 'I-Sample_18', 'WIN 10 Pro', 'AIO Dell', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (160, '192.168.41.250', 'I-SAMPLE_19', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '649038906');
INSERT INTO `komputers_data` VALUES (161, '192.168.40.191', 'S-PPIC_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (162, '192.168.40.192', 'S-PPIC_2', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (163, '192.168.40.193', 'K-QC_lab_2', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '377800936');
INSERT INTO `komputers_data` VALUES (164, '192.168.40.194', 'S-PPIC_4', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (165, '192.168.40.195', 'S-PPIC_5', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (166, '192.168.40.161', 'W-PACKING_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'FINISHING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (167, '192.168.40.196', 'S-PPIC_6', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (168, '192.168.40.197', 'S-PPIC_7', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (169, '192.168.40.198', 'S-PPIC_8', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (170, '192.168.40.199', 'S-PPIC_9', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (171, '192.168.40.228', 'S-PPIC_10', 'Windows 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'PPIC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (172, '192.168.40.192', 'N-PLANNING_1', 'Windows 10', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'PLANNING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (173, '192.168.40.198', 'N-PLANNING_2', 'Windows 10', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'PLANNING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (174, '192.168.40.61', 'O-MTN_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'UTILITY', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (175, '192.168.40.251', 'BEA_CUKAI', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'BEACUKAI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (176, '192.168.40.252', 'BEACUKAI_1', 'Windows 7', 'PC', 'i3', '8', '500', '0', '0', 'yes', 'BEACUKAI', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (177, '192.168.40.239', 'G-DESAIN_6', 'WIN 10 Pro', 'PC DELL XPS', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (178, '192.168.40.230', 'G-DESAIN_7', 'Win 10 pro', 'PC DELL XPS', 'i3', '8', '500', '0', '0', 'yes', 'DESIGN', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (179, '192.168.40.34', 'F-KLININK_1', 'Win 10 pro', 'AIO Dell', 'i3', '8', '500', '0', '0', 'yes', 'HRD GA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (180, '192.168.40.229', 'G-DESAIN_4', 'Win 10 pro', 'AIO Dell', 'i3', '8', '500', '0', '0', 'yes', 'DESAIN', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (181, '192.168.40.106', 'EXIM-IMAM', 'Win 10 pro', 'Laptop Lenovo', 'i3', '8', '500', '0', '0', 'yes', 'EXIM', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (182, '192.168.41.9', 'AKG-HPE-SWT1.LT.1', 'LOOPBACK HPE', 'admin', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (183, '192.168.41.11', 'AKG-HPE-SWT1.LT.2', 'HPE', 'admin', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (184, '192.168.41.12', 'AKG-HPE-SWT2.LT.2', 'HPE', 'admin', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (185, '192.168.41.13', 'AKG-HPE-SWT1.LT.2', 'HPE', 'admin', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (186, '192.168.41.14', 'AKG-HPE-SWT1.LT.1', 'LOOPBACK HPE', 'admin', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (187, '192.168.41.15', '8C:85:C1:CA:84:40', 'HPE', 'admin', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (188, '192.168.40.16', 'd4-6d-6d-1a-61-ac', 'Win 10', 'PC Buildup', 'i3', '8', '500', '0', '0', 'yes', 'Other', '1', 1, '2021-09-12 13:23:37', '2021-09-18 08:31:27', NULL);
INSERT INTO `komputers_data` VALUES (189, '192.168.40.200', 'TPB SVR', 'Win 10', 'AiO', 'i3', '8', '500', '0', '0', 'yes', 'IT', '3', 1, '2021-09-12 13:23:37', '2021-09-18 08:31:52', '108 975 817');
INSERT INTO `komputers_data` VALUES (190, '192.168.40.11', 'PABX NS300', NULL, 'INSTALLER', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (191, '192.168.42.222', 'LAB-2-AIO', 'WIN 10', 'AIO LENOVO', 'i3', '8', '500', '0', '0', 'yes', 'QC', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', 's-ppic_6@ad');
INSERT INTO `komputers_data` VALUES (192, '192.168.40.114', 'W-BARCODE', 'WIN 10', 'it', 'i3', '8', '500', '0', '0', 'yes', 'italso', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '931534237');
INSERT INTO `komputers_data` VALUES (193, '192.168.41.39', 'PURCHASE-LAPTOP', 'win xp', 'AiO', 'i3', '8', '500', '0', '0', 'yes', 'IT', '3', 1, '2021-09-12 13:23:37', '2021-09-18 08:49:07', '949799467');
INSERT INTO `komputers_data` VALUES (194, '192.168.40.225', 'K-QC_10', 'WIN 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 0, '2021-09-12 13:23:37', '2021-09-18 12:57:19', NULL);
INSERT INTO `komputers_data` VALUES (195, '192.168.42.3', 'E4:8D:8C:A9:18:B7', 'Router OS', 'Routerboard.com', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 0, '2021-09-12 13:23:37', '2021-09-18 12:57:22', NULL);
INSERT INTO `komputers_data` VALUES (196, '192.168.42.13', 'Micro-Star INTL CO., LTD.', 'WIN 10', 'MESIN', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 0, '2021-09-12 13:23:37', '2021-09-18 12:57:26', NULL);
INSERT INTO `komputers_data` VALUES (197, '192.168.42.12', 'Mesin Laser', NULL, 'MESIN', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 0, '2021-09-12 13:23:37', '2021-09-18 12:57:29', NULL);
INSERT INTO `komputers_data` VALUES (198, '192.168.42.11', 'Mesin Laser', NULL, 'MESIN', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 0, '2021-09-12 13:23:37', '2021-09-18 12:57:35', NULL);
INSERT INTO `komputers_data` VALUES (199, '192.168.42.10', 'DBAKG-BACKUP', 'WIN 10', 'SERVER', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (200, '192.168.42.5', 'SHOWROOM', 'WIN 10', 'AIO', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '461946364');
INSERT INTO `komputers_data` VALUES (201, '192.168.40.185', NULL, 'WIN 10', 'LAPTOP', 'i3', '8', '500', '0', '0', 'yes', 'SAMPLE', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '840246014');
INSERT INTO `komputers_data` VALUES (202, '192.168.41.249', 'D-MD_23', 'Win 10', 'AIO X Ameya', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '401611473');
INSERT INTO `komputers_data` VALUES (203, '192.168.42.170', 'Product-Integrity', 'WIN 10', 'Laptop Dell', 'i3', '8', '500', '0', '0', 'yes', 'LAB', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '952348950');
INSERT INTO `komputers_data` VALUES (204, '192.168.42.98', 'PRINTER QS', NULL, 'PRINTER HP', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (205, '192.168.42.97', 'PRINTER IE', NULL, 'PRINTER HP', 'i3', '8', '500', '0', '0', 'yes', 'other', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (206, '192.168.41.237', 'S-PPIC_3-LAB', 'WIN 10', 'PC ', 'i3', '8', '500', '0', '0', 'yes', 'QA', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (207, '192.168.42.251', 'P-PURCHASE_6', 'WIN 10', 'AIO LENOVO', 'i3', '8', '500', '0', '0', 'yes', 'Purchase', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '370295204');
INSERT INTO `komputers_data` VALUES (208, '192.168.40.21', 'Laptop PIPIT', 'WIN 10', 'Laptop Lenovo', 'i3', '8', '500', '0', '0', 'yes', 'HRD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (209, '192.168.42.155', 'H-MARKETING_5', NULL, 'DEL AIO', 'i3', '8', '500', '0', '0', 'yes', 'MARKETING', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '185415581');
INSERT INTO `komputers_data` VALUES (210, '192.168.42.186', 'B-PROD_5', 'WIN 10 HOME', 'DEL AIO', 'i3', '8', '500', '0', '0', 'yes', 'PROD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (211, '192.168.41.210', 'D-MD_25', 'WIN 10 HOME', 'DEL AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (212, '192.168.40.119', 'L-MD_2', 'WIN 10 HOME', 'Laptop AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '622 740 478');
INSERT INTO `komputers_data` VALUES (213, '192.168.41.71', 'D-MD_24', 'WIN 10 HOME', 'DELL AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', NULL);
INSERT INTO `komputers_data` VALUES (214, '847167624', 'HRD_L3', 'WIN 10 HOME', 'LENOVO LAPTOP', 'i3', '8', '500', '0', '0', 'yes', 'HRD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '731843665');
INSERT INTO `komputers_data` VALUES (215, '192.168.42.197', 'D-MD_26', 'WIN 10 HOME', 'DELL AIO', 'i3', '8', '500', '0', '0', 'yes', 'MD', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '430165486');
INSERT INTO `komputers_data` VALUES (216, '192.168.40.18', 'TEMP_SVR', 'WIN 10 PRO', 'HPE', 'i3', '8', '500', '0', '0', 'yes', 'IT', '3', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '517 951 901');
INSERT INTO `komputers_data` VALUES (217, '192.168.40.137', 'P-PURCHASE_7', 'WIN 10 HOME', 'Dell AIO', 'i3', '8', '500', '0', '0', 'yes', 'Purchase', '1', 1, '2021-09-12 13:23:37', '2021-09-12 13:23:37', '439415468');
INSERT INTO `komputers_data` VALUES (839, '192.168.49.10', '2222', 'win xp', 'PC Buildup', 'i5', '12', '123', '1', '1', '1', 'Comercial', '3', 1, '2021-09-18 16:21:54', '2021-09-18 16:21:54', NULL);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `log_date` datetime(0) NOT NULL,
  `table_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `log_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 531 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (464, 3, '2021-10-13 14:08:49', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.71 Safari\\/537.36 Edg\\/94.0.992.38\"}');
INSERT INTO `logs` VALUES (465, 3, '2021-10-14 01:39:53', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.47\"}');
INSERT INTO `logs` VALUES (466, 3, '2021-10-14 03:15:12', 'komputers', 'edit', '{\"id\":89,\"ip_comp\":\"192.168.40.85\",\"userpc\":\"Dita\",\"hostname_comp\":\"H-MARKETING_1\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MARKETING\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-06-28 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (467, 3, '2021-10-14 03:19:04', 'komputers', 'edit', '{\"id\":89,\"ip_comp\":\"192.168.40.85\",\"userpc\":\"Dita\",\"hostname_comp\":\"H-MARKETING_1\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AiO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"Comercial\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-06-28 00:00:00\",\"updated_at\":\"2021-10-14 03:15:12\",\"remote\":\"desktop-rbc5dir@ad\"}');
INSERT INTO `logs` VALUES (468, 3, '2021-10-14 03:19:20', 'komputers', 'edit', '{\"id\":14,\"ip_comp\":\"192.168.40.41\",\"userpc\":\"Abhisek\",\"hostname_comp\":\"AIO-ABHISHEK\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i7\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MARKETING\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-12-01 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (469, 3, '2021-10-14 03:19:43', 'komputers', 'edit', '{\"id\":90,\"ip_comp\":\"192.168.40.86\",\"userpc\":\"Ana\",\"hostname_comp\":\"H-MARKETING_2\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MARKETING\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-06-28 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (470, 3, '2021-10-14 03:19:55', 'komputers', 'edit', '{\"id\":90,\"ip_comp\":\"192.168.40.86\",\"userpc\":\"Ana MKT\",\"hostname_comp\":\"H-MARKETING_2\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"8\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MARKETING\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-06-28 00:00:00\",\"updated_at\":\"2021-10-14 03:19:43\",\"remote\":null}');
INSERT INTO `logs` VALUES (471, 3, '2021-10-14 03:20:07', 'komputers', 'edit', '{\"id\":14,\"ip_comp\":\"192.168.40.41\",\"userpc\":\"Abhisek\",\"hostname_comp\":\"AIO-ABHISHEK\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i7\",\"ram_comp\":\"16\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MARKETING\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-12-01 00:00:00\",\"updated_at\":\"2021-10-14 03:19:20\",\"remote\":null}');
INSERT INTO `logs` VALUES (472, 3, '2021-10-14 03:20:24', 'komputers', 'edit', '{\"id\":92,\"ip_comp\":\"192.168.40.88\",\"userpc\":\"Fenty\",\"hostname_comp\":\"H-MARKETING_4\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MARKETING\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2019-01-18 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (473, 3, '2021-10-14 03:20:38', 'komputers', 'edit', '{\"id\":91,\"ip_comp\":\"192.168.40.87\",\"userpc\":\"Fauzie\",\"hostname_comp\":\"H-MARKETING_3\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MARKETING\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-12-14 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (474, 3, '2021-10-14 03:20:52', 'komputers', 'edit', '{\"id\":93,\"ip_comp\":\"192.168.42.155\",\"userpc\":\"H-MARKETING_5\",\"hostname_comp\":\"H-MARKETING_5\",\"os_comp\":\"WIN 10\",\"brand\":\"DELL\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"8\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MARKETING\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":null,\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":\"185415581\"}');
INSERT INTO `logs` VALUES (475, 3, '2021-10-14 04:22:46', 'komputers', 'edit', '{\"id\":222,\"ip_comp\":\"192.168.40.49\",\"userpc\":\"IE 8 \",\"hostname_comp\":\"T-IE_8\",\"os_comp\":\"WIN 10\",\"brand\":\"0\",\"type_comp\":\"PC Buildup\",\"processor_comp\":\"i5\",\"ram_comp\":\"8\",\"hdd_comp\":\"100\",\"ups\":\"1\",\"office_actv\":\"0\",\"antivir\":\"1\",\"dept_comp\":\"Production\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2021-10-14 04:22:19\",\"updated_at\":\"2021-10-14 04:22:19\",\"remote\":null}');
INSERT INTO `logs` VALUES (476, 3, '2021-10-14 10:26:53', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.47\"}');
INSERT INTO `logs` VALUES (477, 3, '2021-10-14 10:28:59', 'todo_items', 'edit', '{\"id\":119,\"topic\":\"other network\",\"type\":\"Other\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"other network\",\"done\":1,\"current_team_id\":\"1\",\"created_at\":\"2021-10-08 09:08:31\",\"updated_at\":\"2021-10-08 09:27:42\"}');
INSERT INTO `logs` VALUES (478, 3, '2021-10-14 10:31:22', 'todo_items', 'edit', '{\"id\":118,\"topic\":\"Printer HRD\",\"type\":\"Hardware\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"Printer can\'t print in user, delete update KB550556\",\"done\":1,\"current_team_id\":\"1\",\"created_at\":\"2021-10-08 08:08:11\",\"updated_at\":\"2021-10-08 09:27:48\"}');
INSERT INTO `logs` VALUES (479, 3, '2021-10-14 10:31:25', 'todo_items', 'edit', '{\"id\":117,\"topic\":\"Set Meeting Zoom\",\"type\":\"Software\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"Set meeting Apps Zoom Register n Update\",\"done\":1,\"current_team_id\":\"1\",\"created_at\":\"2021-10-08 08:07:36\",\"updated_at\":\"2021-10-08 09:27:44\"}');
INSERT INTO `logs` VALUES (480, 3, '2021-10-14 10:31:27', 'todo_items', 'edit', '{\"id\":116,\"topic\":\"Lepas AP Vaksin\",\"type\":\"Hardware\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"Lepas AP Vaksin n POE\",\"done\":1,\"current_team_id\":\"1\",\"created_at\":\"2021-10-08 08:07:02\",\"updated_at\":\"2021-10-08 09:27:46\"}');
INSERT INTO `logs` VALUES (481, 3, '2021-10-14 10:31:30', 'todo_items', 'edit', '{\"id\":115,\"topic\":\"Email Client can\'t sent mail\",\"type\":\"Software\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"Ip 71, turn off pc n start again\",\"done\":1,\"current_team_id\":\"1\",\"created_at\":\"2021-10-07 07:37:43\",\"updated_at\":\"2021-10-08 06:29:22\"}');
INSERT INTO `logs` VALUES (482, 3, '2021-10-14 10:31:32', 'todo_items', 'edit', '{\"id\":114,\"topic\":\"remote\",\"type\":\"Software\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"Driver printer error (sample QC)\",\"done\":1,\"current_team_id\":\"1\",\"created_at\":\"2021-10-07 02:15:58\",\"updated_at\":\"2021-10-08 06:29:19\"}');
INSERT INTO `logs` VALUES (483, 3, '2021-10-14 10:31:35', 'todo_items', 'edit', '{\"id\":113,\"topic\":\"setup corel IE\",\"type\":\"Software\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"IE corel was incorect, update installer\",\"done\":1,\"current_team_id\":\"1\",\"created_at\":\"2021-10-07 02:00:46\",\"updated_at\":\"2021-10-08 06:29:17\"}');
INSERT INTO `logs` VALUES (484, 3, '2021-10-14 10:52:42', 'todo_items', 'edit', '{\"id\":119,\"topic\":\"other network\",\"type\":\"Other\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"other network\",\"done\":1,\"current_team_id\":\"1\",\"created_at\":\"2021-10-08 09:08:31\",\"updated_at\":\"2021-10-14 10:28:59\"}');
INSERT INTO `logs` VALUES (485, 3, '2021-10-14 11:07:15', 'contacts', 'edit', '{\"id\":55,\"renewal_date\":\"2021-10-10\",\"namedisplay\":\"Titi\\/Andaru\\/Citra\\/Fauzi\",\"group\":\"Anggun Kreasi\",\"dept\":\"Accounting\",\"lantai\":\"2\",\"extnumber\":\"220\",\"digital\":null,\"remark\":null,\"current_team_id\":\"1\",\"active\":\"1\",\"created_at\":\"2021-10-12 06:14:43\",\"updated_at\":\"2021-10-12 06:14:43\"}');
INSERT INTO `logs` VALUES (486, 3, '2021-10-15 04:03:38', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.47\"}');
INSERT INTO `logs` VALUES (487, 3, '2021-10-18 01:54:55', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.47\"}');
INSERT INTO `logs` VALUES (488, 3, '2021-10-18 02:11:30', 'komputers', 'edit', '{\"id\":48,\"ip_comp\":\"192.168.40.155\",\"userpc\":\"Deris\",\"hostname_comp\":\"D-MD_15\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MD\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-07-19 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (489, 3, '2021-10-18 06:39:21', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.47\"}');
INSERT INTO `logs` VALUES (490, 3, '2021-10-19 02:10:13', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.50\"}');
INSERT INTO `logs` VALUES (491, 3, '2021-10-19 06:04:07', '', 'login', '{\"ip\":\"192.168.40.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.50\"}');
INSERT INTO `logs` VALUES (492, 3, '2021-10-19 09:58:11', '', 'login', '{\"ip\":\"192.168.40.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.50\"}');
INSERT INTO `logs` VALUES (493, 54, '2021-10-19 14:45:31', '', 'login', '{\"ip\":\"103.143.100.216\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko\\/20100101 Firefox\\/91.0\"}');
INSERT INTO `logs` VALUES (494, 54, '2021-10-19 14:50:11', '', 'login', '{\"ip\":\"103.143.100.216\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko\\/20100101 Firefox\\/91.0\"}');
INSERT INTO `logs` VALUES (495, 54, '2021-10-19 14:55:15', 'komputers', 'edit', '{\"id\":38,\"ip_comp\":\"192.168.40.39\",\"userpc\":\"Arif\",\"hostname_comp\":\"C-ACC_3\",\"os_comp\":\"WIN 7\",\"brand\":\"0\",\"type_comp\":\"PC\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"ACCOUNTING\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":null,\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (496, 54, '2021-10-19 14:57:08', 'komputers', 'edit', '{\"id\":39,\"ip_comp\":\"192.168.40.104\",\"userpc\":\"Citra\",\"hostname_comp\":\"C-ACC_4\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"ACCOUNTING\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2017-12-22 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":\"c-acc_4@ad\"}');
INSERT INTO `logs` VALUES (497, 3, '2021-10-21 02:39:07', '', 'login', '{\"ip\":\"192.168.40.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.50\"}');
INSERT INTO `logs` VALUES (498, 3, '2021-10-21 02:59:50', 'emailaccounts', 'edit', '{\"id\":219,\"name_usr\":\"ppic2@anggunkreasi.com\",\"email_usr\":\"ppic2@anggunkreasi.com\",\"pwd_usr\":\"KReasigarmen@2020\",\"email_type\":\"O365 Basic\",\"dept_usr\":\"Production\",\"remark_usr\":\"KReasigarmen@2020\",\"month_date\":\"2021-10-21\",\"current_team_id\":\"1\",\"active\":\"1\",\"created_at\":\"2021-10-21 02:59:28\",\"updated_at\":\"2021-10-21 02:59:28\"}');
INSERT INTO `logs` VALUES (499, 3, '2021-10-22 01:50:31', '', 'login', '{\"ip\":\"192.168.40.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.50\"}');
INSERT INTO `logs` VALUES (500, 3, '2021-10-22 03:34:55', 'komputers', 'edit', '{\"id\":26,\"ip_comp\":\"192.168.40.152\",\"userpc\":\"DESKTOP-B3OAPNL\",\"hostname_comp\":\"Atta\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MD\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-06-04 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (501, 3, '2021-10-22 03:37:53', 'komputers', 'edit', '{\"id\":26,\"ip_comp\":\"192.168.40.152\",\"userpc\":\"DESKTOP-B3OAPNL\",\"hostname_comp\":\"Atta\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MD\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-06-04 00:00:00\",\"updated_at\":\"2021-10-22 03:34:55\",\"remote\":\"desktop-b3oapnl@ad\"}');
INSERT INTO `logs` VALUES (502, 3, '2021-10-22 09:20:59', '', 'login', '{\"ip\":\"192.168.40.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.50\"}');
INSERT INTO `logs` VALUES (503, 3, '2021-10-22 09:21:36', 'users', 'edit', '{\"id\":3,\"name\":\"Haris Rifai\",\"email\":\"harisrifai@anggunkreasi.com\",\"email_verified_at\":null,\"password\":\"$2y$10$bdk\\/tNXtFPxApdOzZtC5juyYi4P.mGMvLLe7rJETidIqS1BNo6H02\",\"two_factor_secret\":null,\"two_factor_recovery_codes\":null,\"remember_token\":\"mHAmGZBDTDlWOjayRfBJ24gbQDbZYp0UdrIXYzCpBdNCE60EYqR4QMzRYBVM\",\"current_team_id\":1,\"is_admin\":1,\"active\":null,\"profile_photo_path\":\"harisrifai.png\",\"created_at\":\"2021-09-12 06:58:04\",\"updated_at\":\"2021-09-12 06:58:04\"}');
INSERT INTO `logs` VALUES (504, 3, '2021-10-22 09:21:43', 'users', 'edit', '{\"id\":3,\"name\":\"Haris Rifai\",\"email\":\"harisrifai@anggunkreasi.com\",\"email_verified_at\":null,\"password\":\"$2y$10$LFnFuffHXnqJoEHoYDmh..cGn9rMwNY9ZaN2QGKu\\/BBdBsO1jDpgi\",\"two_factor_secret\":null,\"two_factor_recovery_codes\":null,\"remember_token\":\"mHAmGZBDTDlWOjayRfBJ24gbQDbZYp0UdrIXYzCpBdNCE60EYqR4QMzRYBVM\",\"current_team_id\":1,\"is_admin\":1,\"active\":null,\"profile_photo_path\":\"harisrifai.png\",\"created_at\":\"2021-09-12 06:58:04\",\"updated_at\":\"2021-10-22 09:21:36\"}');
INSERT INTO `logs` VALUES (505, 3, '2021-10-22 09:21:54', '', 'login', '{\"ip\":\"192.168.40.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.50\"}');
INSERT INTO `logs` VALUES (506, 3, '2021-10-22 09:49:27', 'users', 'edit', '{\"id\":3,\"name\":\"Haris Rifai\",\"email\":\"harisrifai@anggunkreasi.com\",\"email_verified_at\":null,\"password\":\"$2y$10$LFnFuffHXnqJoEHoYDmh..cGn9rMwNY9ZaN2QGKu\\/BBdBsO1jDpgi\",\"two_factor_secret\":null,\"two_factor_recovery_codes\":null,\"remember_token\":\"0wOjgyB0tyc7L9vsanxgUeRWHQxWw93G7V0wE5feIilSujwM3Hc8Ddc5vxym\",\"current_team_id\":1,\"is_admin\":1,\"active\":null,\"profile_photo_path\":\"harisrifai.png\",\"created_at\":\"2021-09-12 06:58:04\",\"updated_at\":\"2021-10-22 09:21:36\"}');
INSERT INTO `logs` VALUES (507, 3, '2021-10-22 10:14:11', '', 'login', '{\"ip\":\"192.168.40.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.81 Safari\\/537.36 Edg\\/94.0.992.50\"}');
INSERT INTO `logs` VALUES (508, 3, '2021-10-22 10:28:26', 'todo_items', 'edit', '{\"id\":123,\"topic\":\"Change Account\",\"type\":\"Network\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"Change Account P imam, forward email n etc, user resign\",\"done\":0,\"current_team_id\":\"1\",\"created_at\":\"2021-10-14 10:54:33\",\"updated_at\":\"2021-10-14 10:54:33\"}');
INSERT INTO `logs` VALUES (509, 3, '2021-10-22 10:28:28', 'todo_items', 'edit', '{\"id\":122,\"topic\":\"tarik kabel Network\",\"type\":\"Network\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"Tarikan kabel network Dead Stock \",\"done\":0,\"current_team_id\":\"1\",\"created_at\":\"2021-10-14 10:53:53\",\"updated_at\":\"2021-10-14 10:53:53\"}');
INSERT INTO `logs` VALUES (510, 3, '2021-10-22 10:28:28', 'todo_items', 'edit', '{\"id\":121,\"topic\":\"Backup laptop p Imam\",\"type\":\"Hardware\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"Backup datap imam exim to local\",\"done\":0,\"current_team_id\":\"1\",\"created_at\":\"2021-10-14 10:53:17\",\"updated_at\":\"2021-10-14 10:53:17\"}');
INSERT INTO `logs` VALUES (511, 3, '2021-10-22 10:31:07', 'todo_items', 'edit', '{\"id\":124,\"topic\":\"VStcher Apps\",\"type\":\"Hardware\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"PC 3D Hight pressure , clean the cpu and change pasta \",\"done\":0,\"current_team_id\":\"1\",\"created_at\":\"2021-10-22 10:29:27\",\"updated_at\":\"2021-10-22 10:29:27\"}');
INSERT INTO `logs` VALUES (512, 3, '2021-10-22 10:31:09', 'todo_items', 'edit', '{\"id\":125,\"topic\":\"Power Supply AIO MD\",\"type\":\"Hardware\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"power supply break , change with backup\",\"done\":0,\"current_team_id\":\"1\",\"created_at\":\"2021-10-22 10:30:22\",\"updated_at\":\"2021-10-22 10:30:22\"}');
INSERT INTO `logs` VALUES (513, 3, '2021-10-22 10:31:09', 'todo_items', 'edit', '{\"id\":126,\"topic\":\"Audit CCTV\",\"type\":\"CCTV\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"Explain CCTV report n capability\",\"done\":0,\"current_team_id\":\"1\",\"created_at\":\"2021-10-22 10:31:01\",\"updated_at\":\"2021-10-22 10:31:01\"}');
INSERT INTO `logs` VALUES (514, 3, '2021-10-22 10:32:04', 'todo_items', 'edit', '{\"id\":127,\"topic\":\"Setup Meeting\",\"type\":\"Pabx\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"Setup Meeting HOD\",\"done\":0,\"current_team_id\":\"1\",\"created_at\":\"2021-10-22 10:31:58\",\"updated_at\":\"2021-10-22 10:31:58\"}');
INSERT INTO `logs` VALUES (515, 3, '2021-10-25 02:35:41', '', 'login', '{\"ip\":\"192.168.40.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/95.0.4638.54 Safari\\/537.36 Edg\\/95.0.1020.30\"}');
INSERT INTO `logs` VALUES (516, 3, '2021-10-25 02:36:48', 'komputers', 'edit', '{\"id\":90,\"ip_comp\":\"192.168.40.86\",\"userpc\":\"Ana MKT\",\"hostname_comp\":\"H-MARKETING_2\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"8\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"Comercial\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-06-28 00:00:00\",\"updated_at\":\"2021-10-14 03:19:55\",\"remote\":null}');
INSERT INTO `logs` VALUES (517, 3, '2021-10-25 02:52:58', 'todo_items', 'edit', '{\"id\":128,\"topic\":\"sample system(mkt)\",\"type\":\"Software\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"slow ->change instalastion source\",\"done\":0,\"current_team_id\":\"1\",\"created_at\":\"2021-10-25 02:42:56\",\"updated_at\":\"2021-10-25 02:42:56\"}');
INSERT INTO `logs` VALUES (518, 3, '2021-10-25 02:53:01', 'todo_items', 'edit', '{\"id\":129,\"topic\":\"Printer MD->kertas nyankut\",\"type\":\"Hardware\",\"active\":\"1\",\"user_id\":\"3\",\"description\":\"Kertas nyangkut di dalam\",\"done\":0,\"current_team_id\":\"1\",\"created_at\":\"2021-10-25 02:52:54\",\"updated_at\":\"2021-10-25 02:52:54\"}');
INSERT INTO `logs` VALUES (519, 3, '2021-10-25 03:07:04', 'komputers', 'edit', '{\"id\":110,\"ip_comp\":\"192.168.40.208\",\"userpc\":\"Puput\",\"hostname_comp\":\"I-SAMPLE_12\",\"os_comp\":\"WIN 7\",\"brand\":\"0\",\"type_comp\":\"PC\",\"processor_comp\":\"i5\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"SAMPLE\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2018-10-03 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (520, 3, '2021-10-25 03:29:02', 'contacts', 'edit', '{\"id\":56,\"renewal_date\":\"2021-10-10\",\"namedisplay\":\"Rani\\/Era\\/Ewin\\/Vero\",\"group\":\"Anggun Kreasi\",\"dept\":\"HR & GA\",\"lantai\":\"2\",\"extnumber\":\"221\",\"digital\":null,\"remark\":null,\"current_team_id\":\"1\",\"active\":\"1\",\"created_at\":\"2021-10-12 06:14:43\",\"updated_at\":\"2021-10-12 06:14:43\"}');
INSERT INTO `logs` VALUES (521, 3, '2021-10-25 03:29:28', 'contacts', 'edit', '{\"id\":60,\"renewal_date\":\"2021-10-10\",\"namedisplay\":\"Pipit\",\"group\":\"Anggun Kreasi\",\"dept\":\"HR & GA\",\"lantai\":\"2\",\"extnumber\":\"225\",\"digital\":null,\"remark\":null,\"current_team_id\":\"1\",\"active\":\"1\",\"created_at\":\"2021-10-12 06:14:43\",\"updated_at\":\"2021-10-12 06:14:43\"}');
INSERT INTO `logs` VALUES (522, 3, '2021-10-25 08:07:21', '', 'login', '{\"ip\":\"192.168.40.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/95.0.4638.54 Safari\\/537.36 Edg\\/95.0.1020.30\"}');
INSERT INTO `logs` VALUES (523, 3, '2021-10-25 08:36:14', 'komputers', 'edit', '{\"id\":159,\"ip_comp\":\"192.168.40.177\",\"userpc\":\"Yuli\",\"hostname_comp\":\"Marker\",\"os_comp\":\"WIN 7\",\"brand\":\"0\",\"type_comp\":\"PC\",\"processor_comp\":\"i5\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"SAMPLE\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2017-12-21 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (524, 3, '2021-10-25 10:27:04', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/95.0.4638.54 Safari\\/537.36 Edg\\/95.0.1020.30\"}');
INSERT INTO `logs` VALUES (525, 3, '2021-11-12 01:31:57', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/95.0.4638.69 Safari\\/537.36 Edg\\/95.0.1020.44\"}');
INSERT INTO `logs` VALUES (526, 3, '2021-11-12 02:49:22', 'komputers', 'edit', '{\"id\":82,\"ip_comp\":\"192.168.40.230\",\"userpc\":\"Nugroho\",\"hostname_comp\":\"G-DESAIN_7\",\"os_comp\":\"WIN 7\",\"brand\":\"DELL\",\"type_comp\":\"PC\",\"processor_comp\":\"i7\",\"ram_comp\":\"16\",\"hdd_comp\":\"1000\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"DESAIN\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"PC DELL XPS\",\"created_at\":\"2020-06-01 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (527, 3, '2021-11-12 04:21:06', 'komputers', 'edit', '{\"id\":150,\"ip_comp\":\"192.168.40.63\",\"userpc\":\"Tanto\",\"hostname_comp\":\"M-WH_12\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"PRODUCTION\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2019-03-27 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (528, 3, '2021-11-12 04:22:27', 'komputers', 'edit', '{\"id\":27,\"ip_comp\":\"192.168.40.227\",\"userpc\":\"D-MD_21\",\"hostname_comp\":\"Azura\",\"os_comp\":\"WIN 10\",\"brand\":\"DELL\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MD\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":null,\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');
INSERT INTO `logs` VALUES (529, 3, '2021-11-12 07:05:37', '', 'login', '{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/95.0.4638.69 Safari\\/537.36 Edg\\/95.0.1020.44\"}');
INSERT INTO `logs` VALUES (530, 3, '2021-11-12 07:06:31', 'komputers', 'edit', '{\"id\":23,\"ip_comp\":\"192.168.40.247\",\"userpc\":\"D-MD_20\",\"hostname_comp\":\"April-MD\",\"os_comp\":\"WIN 10\",\"brand\":\"LENOVO\",\"type_comp\":\"AIO\",\"processor_comp\":\"i3\",\"ram_comp\":\"4\",\"hdd_comp\":\"500\",\"ups\":\"1\",\"office_actv\":\"1\",\"antivir\":\"1\",\"dept_comp\":\"MD\",\"current_team_id\":\"1\",\"active\":1,\"remark\":\"0\",\"created_at\":\"2019-08-12 00:00:00\",\"updated_at\":\"2021-10-01 16:18:02\",\"remote\":null}');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_05_21_100000_create_teams_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_05_21_200000_create_team_user_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_05_21_300000_create_team_invitations_table', 1);
INSERT INTO `migrations` VALUES (9, '2021_09_04_175158_create_posts_table', 1);
INSERT INTO `migrations` VALUES (10, '2021_09_04_175447_create_sessions_table', 1);
INSERT INTO `migrations` VALUES (12, '2021_09_05_101231_create_todos_table', 3);
INSERT INTO `migrations` VALUES (14, '2021_09_06_132811_create-todo-items-table', 4);
INSERT INTO `migrations` VALUES (16, '2021_09_12_012119_create_chats_table', 6);
INSERT INTO `migrations` VALUES (20, '2021_09_04_183305_create_tickets_table', 7);
INSERT INTO `migrations` VALUES (21, '2021_09_12_041853_create_komputers_table', 8);
INSERT INTO `migrations` VALUES (22, '2021_09_15_134335_create_software_table', 9);
INSERT INTO `migrations` VALUES (23, '2020_11_20_100001_create_log_table', 10);
INSERT INTO `migrations` VALUES (24, '2021_09_18_080950_add_ups_office_to_komputers_table', 11);
INSERT INTO `migrations` VALUES (25, '2021_09_18_082555_add_antivirus_to_komputers_table', 12);
INSERT INTO `migrations` VALUES (26, '2021_09_18_131819_add_isadmin_to_users_table', 13);
INSERT INTO `migrations` VALUES (27, '2021_09_18_152841_add_current_team_to_todo_items_table', 14);
INSERT INTO `migrations` VALUES (30, '2021_09_19_033333_create_software_table', 15);
INSERT INTO `migrations` VALUES (31, '2021_09_19_152325_create_usages_table', 16);
INSERT INTO `migrations` VALUES (33, '2021_09_27_073803_add_type_to_todo_items', 17);
INSERT INTO `migrations` VALUES (34, '2021_10_01_134502_add_userpc_to_komputers_table', 18);
INSERT INTO `migrations` VALUES (35, '2021_10_07_094918_create_contacts_table', 19);
INSERT INTO `migrations` VALUES (36, '2021_10_10_045247_add_active_to_users_table', 20);
INSERT INTO `migrations` VALUES (37, '2021_10_11_020701_create_emailaccounts_table', 21);
INSERT INTO `migrations` VALUES (38, '2021_10_13_151624_add_store_brand_to_komputers_table', 22);
INSERT INTO `migrations` VALUES (41, '2021_10_16_165828_create_supplies_table', 23);
INSERT INTO `migrations` VALUES (42, '2021_10_16_200852_create_services_table', 24);
INSERT INTO `migrations` VALUES (43, '2021_10_23_152748_add_store_serviceid_to_services_table', 25);
INSERT INTO `migrations` VALUES (44, '2021_10_24_153130_create_departements_table', 25);
INSERT INTO `migrations` VALUES (45, '2021_11_11_135935_create_passwords_table', 26);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('arisub@ameyaindo.com', '$2y$10$BqbGEcqcvH/QAj9CKS02GOPc5r7bYM8CrIjdsnicIpxGR/aJ5vut.', '2021-10-01 16:44:53');

-- ----------------------------
-- Table structure for passwords
-- ----------------------------
DROP TABLE IF EXISTS `passwords`;
CREATE TABLE `passwords`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1009 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of passwords
-- ----------------------------
INSERT INTO `passwords` VALUES (1, '192.168.40.10', 'sa', 'managersql', 'Database Server', 'server anggun', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (2, '4C:5E:0C:02:E9:5F', 'haris', 'haris2021', 'Mikrotik CCR', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (3, 'https://192.168.10.178', 'admin', 'ameya@123', 'dasboard Elastik', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (4, '124.40.249.4', 'Administrator', 'ameya@123', 'Elastik', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (5, '192.168.40.221', 'it', 'italso', 'HPE PRINTER QS', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (6, 'https://192.168.40.1:4081/admin', 'admin', '4n66un@2017', 'KERIO', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (7, '192.168.41.9', '90:20:C2:7B:32:80', '4n66un@2020', 'HPE SWITCH 48G LOBBY', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (8, '192.168.41.13', '90:20:C2:7A:6D:C0', '4n66un@2020', 'HPE SWITCH 48G MD', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (9, '192.168.41.14', '90:20:C2:7A:DA:00', '4n66un@2020', 'HPE SWITCH 48G SAMPLE', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (10, '192.168.41.11', '90:20:C2:7A:8D:C0', '4n66un@2020', 'HPE SWITCH 48G SVR', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (11, '192.168.41.12', '90:20:C2:7A:AD:40', '4n66un@2020', 'HPE SWITCH 48G SVR', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (12, 'https://192.168.40.1:4444/', 'admin', 'AN66un@2021', 'SOPHOS', 'FIREWALL', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (13, 'https://controlu.ldp.net.id:8443/', 'anggun', 'ldpanggun2020', 'Unify Controller', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (14, 'http://nms.ldp.net.id/jffnms/', 'ameya', 'ameyaldp2012', 'LDP', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (15, 'http://nms.ldp.net.id/jffnms/', 'anggun', 'anggunldp2016', 'LDP', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (16, '192.168.40.5', 'akg', '', 'Mikrotik', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (17, '192.168.40.15', 'akg', '', 'Mikrotik', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (18, '192.168.41.15', 'akg', '', 'Mikrotik', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (19, '192.168.40.20', 'admin', '4n66un2017', 'NAS', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (20, '192.168.40.11', 'INSTALLER', '1234', 'Panasonik', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (21, '192.168.40.210', '', '', 'HPE PRINTER', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (22, 'APPS PATENT', 'ADMIN', 'ADMINALSO', 'APlikasi ruang sample', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (23, '192.16', 'admin', 'Anggun@2017', '192.168.40.1:4444', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (24, '192.168.40.12', 'Administrator', '4n66un@2020', 'SERVER AKG 2016', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (25, '192.168.40.10', 'it', 'italso', 'SVR DB', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (26, '192.168.40.2', 'it', 'italso', 'SVR RDP', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (27, '192.168.40.200', 'it', 'italso', 'SVR TPB', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (28, '192.168.70.100', 'Administrator', '4l51@321!112233', 'SVR EMAIL', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (29, '192.168.40.6', 'admin', '4n66un2019', 'NAS', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (30, 'app.ameyaindo.com', 'app', '4l51indonesia112233', 'APP', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (31, '192.168.40.9', 'anggunkreasi', 'Qwerty321', 'anggun@123', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (32, '10.234.24.234', 'anggun', 'Run@way20', 'SSID', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (33, 'anggun', 'anggun', 'Run@way20', 'SSID', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (34, 'showroomanggun', 'showroomanggun', 'kreasigarmen', 'SSID', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (35, 'showroom', 'showroom', 'nopassword', 'SSID', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (36, 'QCbuyer', 'QCbuyer', 'buyerqcakg', 'SSID', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (37, 'lobby', 'lobby', 'lobby2018', 'SSID', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (38, 'ANGGUN', 'ANGGUN', 'akganggun', 'SSID', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');
INSERT INTO `passwords` VALUES (39, 'RB1100', 'haris', 'haris2020', 'winbox', '', '1', '1', '2021-11-12 17:00:29', '2021-11-12 17:00:29');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (10, 'Programing Modul', 'HU Boz', '2021-09-04 18:20:16', '2021-09-04 18:20:16');
INSERT INTO `posts` VALUES (11, 'Programing Modul', 'HU Boz', '2021-09-04 18:20:16', '2021-09-04 18:20:16');

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ServiceHwid` int(10) UNSIGNED NULL DEFAULT NULL,
  `ip_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostname_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku_supplies` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hw_type` int(10) UNSIGNED NULL DEFAULT NULL,
  `diagnose` int(10) UNSIGNED NULL DEFAULT NULL,
  `barcode_supplies` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_comp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `month_date` date NOT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id`) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('stF58NEbKZQeWQ6TcqHNulenKN9wHibP8JFkDV46', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiMWVCZENRU3RGQW03MGpMSXRqT1FROWxObHQzMGg1cUhNd09HempCUCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI2OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRMRm5GdWZmSFhucUpvRUhvWURtaC4uY0duOXJNd05ZOVphTjJRR0t1L0JCZEJzTzFqRHBnaSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkTEZuRnVmZkhYbnFKb0VIb1lEbWguLmNHbjlyTXdOWTlaYU4yUUdLdS9CQmRCc08xakRwZ2kiO30=', 1636711763);

-- ----------------------------
-- Table structure for software
-- ----------------------------
DROP TABLE IF EXISTS `software`;
CREATE TABLE `software`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `vendor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `buy_date` date NULL DEFAULT NULL,
  `order_date` date NULL DEFAULT NULL,
  `renewal_date` date NULL DEFAULT NULL,
  `qty` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tot_price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of software
-- ----------------------------
INSERT INTO `software` VALUES (1, '234', 'Domain', 'Anggunkreasi.com', 'Yahoo', '2021-09-21', '2021-09-21', '2021-10-07', '2', '131.76', '263.52', '1', '1', '2021-09-19 21:30:04', '2021-10-06 06:20:59');
INSERT INTO `software` VALUES (2, '2', 'Adobe', 'Adobe Creative Cloud', 'Asaba', NULL, NULL, '2021-10-20', '2', '14400000', '28800000', '1', '1', '2021-09-19 21:30:04', '2021-09-29 08:29:14');
INSERT INTO `software` VALUES (3, '3', 'O365', 'Standart', 'Bhineka.com', NULL, NULL, '2022-07-01', '5', '1700000', '8500000', '1', '1', '2021-09-19 21:30:04', '2021-09-29 07:09:16');
INSERT INTO `software` VALUES (4, '4', 'O365', 'Basic', 'Bhineka.com', NULL, NULL, '2021-10-01', '170', '398000', '67660000', '1', '1', '2021-09-19 21:30:04', '2021-09-19 21:30:04');
INSERT INTO `software` VALUES (5, '5', 'O365', 'Basic', 'Mitrasoft', NULL, '2021-06-25', '2022-06-01', '10', '385000', '3850000', '1', '1', '2021-09-19 21:30:04', '2021-09-19 21:30:04');
INSERT INTO `software` VALUES (6, '6', 'Onedrive', 'Onedrive Share Storage ', 'Mitrasoft', NULL, NULL, '2022-07-01', '1', '1520000', '1520000', '1', '1', '2021-09-19 21:30:04', '2021-09-19 21:30:04');
INSERT INTO `software` VALUES (7, '7', 'Antivirus', 'Trend Micro Cloud', 'Asaba', NULL, NULL, '2024-04-01', '60', '720000', '43200000', '1', '1', '2021-09-19 21:30:04', '2021-09-19 21:30:04');
INSERT INTO `software` VALUES (8, '8', 'Antivirus', 'Trend Micro Cloud', 'Asaba', NULL, NULL, '2022-03-01', '40', '425200', '17008000', '1', '1', '2021-09-19 21:30:04', '2021-09-19 21:30:04');
INSERT INTO `software` VALUES (9, '9', 'Antivirus', 'Trend Micro Lokal', 'Asaba', NULL, NULL, '2021-11-01', '100', '142200', '14220000', '1', '1', '2021-09-19 21:30:04', '2021-09-19 21:30:04');
INSERT INTO `software` VALUES (16, '234', 'O365', 'OFFICE 365', 'BHINEKA', '2021-10-01', '2021-10-15', '2021-10-02', '170', '28790', '4894300', '3', '1', '2021-10-01 15:27:03', '2021-10-01 15:32:10');

-- ----------------------------
-- Table structure for supplies
-- ----------------------------
DROP TABLE IF EXISTS `supplies`;
CREATE TABLE `supplies`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_date` date NOT NULL,
  `order_date` date NOT NULL,
  `received` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `return` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adjust` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_qty` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tot_price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for team_invitations
-- ----------------------------
DROP TABLE IF EXISTS `team_invitations`;
CREATE TABLE `team_invitations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `team_invitations_team_id_email_unique`(`team_id`, `email`) USING BTREE,
  CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of team_invitations
-- ----------------------------
INSERT INTO `team_invitations` VALUES (4, 8, 'it@anggunkreasi.com', 'support', '2021-10-01 15:02:24', '2021-10-01 15:02:24');
INSERT INTO `team_invitations` VALUES (5, 7, 'arifin@anggunkreasi.com', 'editor', '2021-10-01 15:07:32', '2021-10-01 15:07:32');

-- ----------------------------
-- Table structure for team_user
-- ----------------------------
DROP TABLE IF EXISTS `team_user`;
CREATE TABLE `team_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `team_user_team_id_user_id_unique`(`team_id`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teams_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO `teams` VALUES (1, 2, 'AKG', 1, '2021-09-04 18:15:33', '2021-09-04 18:16:27');
INSERT INTO `teams` VALUES (2, 3, 'Administrator\'s', 1, '2021-09-04 18:19:40', '2021-09-04 18:19:40');
INSERT INTO `teams` VALUES (3, 1, 'ALSI', 1, '2021-09-04 18:15:33', '2021-09-04 18:16:27');
INSERT INTO `teams` VALUES (4, 7, 'AKG', 1, '2021-09-04 18:15:33', '2021-09-04 18:16:27');
INSERT INTO `teams` VALUES (5, 5, 'AKG', 1, '2021-09-04 18:15:33', '2021-09-04 18:16:27');
INSERT INTO `teams` VALUES (6, 6, 'ALSI', 1, '2021-09-04 18:15:33', '2021-09-04 18:16:27');
INSERT INTO `teams` VALUES (7, 4, 'AKG', 1, '2021-09-04 18:15:33', '2021-09-04 18:16:27');
INSERT INTO `teams` VALUES (8, 4, 'Ameya Living Style', 0, '2021-10-01 15:01:53', '2021-10-01 15:01:53');
INSERT INTO `teams` VALUES (9, 54, 'Inventory\'s Team', 1, '2021-10-19 14:45:30', '2021-10-19 14:45:30');

-- ----------------------------
-- Table structure for teams_copy1
-- ----------------------------
DROP TABLE IF EXISTS `teams_copy1`;
CREATE TABLE `teams_copy1`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teams_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teams_copy1
-- ----------------------------
INSERT INTO `teams_copy1` VALUES (4, 4, 'AKG', 1, '2021-09-04 18:15:33', '2021-09-04 18:16:27');
INSERT INTO `teams_copy1` VALUES (5, 5, 'AKG', 1, '2021-09-04 18:15:33', '2021-09-04 18:16:27');
INSERT INTO `teams_copy1` VALUES (6, 6, 'ALSI', 1, '2021-09-04 18:15:33', '2021-09-04 18:16:27');
INSERT INTO `teams_copy1` VALUES (7, 4, 'AKG', 1, '2021-09-04 18:15:33', '2021-09-04 18:16:27');

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ticketid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_user` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_categories` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_priority` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_overdue` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_solve` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tickets
-- ----------------------------
INSERT INTO `tickets` VALUES (3, '2109120003', 'Administrator', 'Ticket Data 3', 'c', 'WFX', 'medium', '2021-09-13 00:00:00', 'Open', 'Open.jpg', '0', '2', '1', '2021-09-12 03:57:08', '2021-09-12 03:57:08');
INSERT INTO `tickets` VALUES (4, '2109120004', 'Administrator', 'Ticket Data 4', 'c', 'WFX', 'medium', '2021-09-13 00:00:00', 'Open', 'Open.jpg', '0', '2', '1', '2021-09-12 03:57:08', '2021-09-12 03:57:08');
INSERT INTO `tickets` VALUES (5, '2109120005', 'Administrator', 'Ticket Data 5', 'c', 'WFX', 'medium', '2021-09-13 00:00:00', 'Open', 'Open.jpg', '0', '2', '1', '2021-09-12 03:57:08', '2021-09-12 03:57:08');
INSERT INTO `tickets` VALUES (6, '2109120006', 'haris rifai', 'Ticket Data2', 'vvv', 'WFX', 'medium', '2021-09-13 00:00:00', 'Close', 'Open.jpg', '0', '1', '0', '2021-09-12 03:59:53', '2021-09-18 05:09:15');
INSERT INTO `tickets` VALUES (9, '2109120009', 'haris rifai', 'Ticket Data2', 'vvv', 'WFX', 'medium', '2021-09-13 00:00:00', 'Close', 'Open.jpg', '1', '1', '0', '2021-09-12 03:59:53', '2021-09-18 05:17:09');
INSERT INTO `tickets` VALUES (11, '2109120011', 'haris rifai', 'Ticket Data2', 'vvv', 'WFX', 'medium', '2021-09-13 00:00:00', 'Close', 'Open.jpg', '0', '1', '0', '2021-09-12 03:59:53', '2021-09-17 15:41:41');
INSERT INTO `tickets` VALUES (14, '2109130014', 'Administrator', 'Ticket Data2', 'dddd', 'WFX', 'medium', '2021-09-14 00:00:00', 'Close', 'Open.jpg', '0', '2', '0', '2021-09-13 16:37:08', '2021-09-13 16:37:23');
INSERT INTO `tickets` VALUES (15, '2109160015', 'haris rifai', 'Ticket Data2', 'sss', 'Network', 'medium', '2021-09-17 00:00:00', 'Close', 'Open.jpg', '0', '1', '0', '2021-09-16 15:23:33', '2021-09-18 05:09:12');
INSERT INTO `tickets` VALUES (16, '2109180016', 'haris rifai', 'Ticket Data2', 'sss', 'Network', 'medium', '2021-09-19 00:00:00', 'Close', 'Open.jpg', '0', '1', '0', '2021-09-18 05:09:03', '2021-09-18 05:09:05');
INSERT INTO `tickets` VALUES (19, '2109180017', 'haris rifai', 'Ticket Data2', 'hi', 'WFX', 'medium', '2021-09-19 00:00:00', 'Progress', 'Open.jpg', '0', '1', '1', '2021-09-18 05:37:34', '2021-09-18 05:37:34');
INSERT INTO `tickets` VALUES (20, '2109180018', 'Administrator', 'Ticket Data', 'okay we all done', 'WFX', 'medium', '2021-09-19 00:00:00', 'Close', 'Open.jpg', '1', '3', '1', '2021-09-18 13:12:55', '2021-09-18 13:17:11');
INSERT INTO `tickets` VALUES (21, '2109180019', 'Ameya Living Style', 'Ticket Data2', 'xxxxxxxdddddddddddddddd', 'Network', 'medium', '2021-09-19 00:00:00', 'Open', 'Open.jpg', '0', '3', '1', '2021-09-18 18:21:06', '2021-09-18 18:21:06');

-- ----------------------------
-- Table structure for tickets_120921
-- ----------------------------
DROP TABLE IF EXISTS `tickets_120921`;
CREATE TABLE `tickets_120921`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ticketid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_categories` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_priority` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_overdue` date NOT NULL,
  `ticket_status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_solve` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tickets_120921
-- ----------------------------
INSERT INTO `tickets_120921` VALUES (6, '2109110002', '1', 'Carbon', 'bbb', 'WFX', 'high', '2021-09-12', 'Close', 'Open.jpg', '0', '1', '2021-09-11 17:13:21', '2021-09-12 02:34:00');
INSERT INTO `tickets_120921` VALUES (7, '2109110003', '1', 'Ticket Data 8', '8888', 'Hardware', 'medium', '2021-09-12', 'Close', 'Open.jpg', '0', '1', '2021-09-11 17:13:59', '2021-09-12 02:34:01');
INSERT INTO `tickets_120921` VALUES (8, '2109110004', '2', 'Ticket Data', 'vvv', 'Network', 'urgent', '2021-09-12', 'Close', 'Open.jpg', '0', '1', '2021-09-11 17:15:05', '2021-09-12 02:34:02');
INSERT INTO `tickets_120921` VALUES (9, '2109110005', '1', 'Ticket Data', 'sss', 'Hardware', 'high', '2021-09-12', 'Open', 'Open.jpg', '0', '1', '2021-09-11 17:17:48', '2021-09-12 02:00:07');
INSERT INTO `tickets_120921` VALUES (10, '2109120006', '1', 'Carbon', 'Hi please help', 'WFX', 'medium', '2021-09-13', 'Close', 'Open.jpg', '0', '1', '2021-09-12 01:04:13', '2021-09-12 02:21:33');
INSERT INTO `tickets_120921` VALUES (11, '2109120007', '1', 'xx', 'kkk', 'WFX', 'low', '2021-09-13', 'Close', 'Open.jpg', '0', '1', '2021-09-12 02:25:46', '2021-09-12 02:33:58');
INSERT INTO `tickets_120921` VALUES (12, '2109120008', '1', 'Ticket Data', 's', 'Software', 'medium', '2021-09-13', 'Close', 'Open.jpg', '0', '1', '2021-09-12 02:27:02', '2021-09-12 02:33:55');
INSERT INTO `tickets_120921` VALUES (13, '2109120009', '1', 'Ticket Data2', 'dd', 'WFX', 'low', '2021-09-13', 'Close', 'Open.jpg', '0', '1', '2021-09-12 02:27:37', '2021-09-12 02:33:54');
INSERT INTO `tickets_120921` VALUES (14, '2109120010', '2', 'Ticket Data', 'sss', 'Hardware', 'high', '2021-09-13', 'Close', 'Open.jpg', '1', '1', '2021-09-12 02:28:24', '2021-09-12 02:33:53');
INSERT INTO `tickets_120921` VALUES (15, '2109120011', '2', 'Carbon', 'ccc', 'Hardware', 'high', '2021-09-13', 'Close', 'Open.jpg', '1', '1', '2021-09-12 02:28:43', '2021-09-12 02:33:51');
INSERT INTO `tickets_120921` VALUES (16, '2109120012', '1', 'Ticket Data', 'ddd', 'Network', 'medium', '2021-09-13', 'Close', 'Open.jpg', '1', '1', '2021-09-12 02:29:37', '2021-09-12 02:33:50');
INSERT INTO `tickets_120921` VALUES (17, '2109120013', '1', 'Ticket Data2', 'sss', 'WFX', 'medium', '2021-09-13', 'Open', 'Open.jpg', '0', '1', '2021-09-12 03:39:27', '2021-09-12 03:39:27');

-- ----------------------------
-- Table structure for tickets_backup
-- ----------------------------
DROP TABLE IF EXISTS `tickets_backup`;
CREATE TABLE `tickets_backup`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ticketid` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ticket_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ticket_title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ticket_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ticket_categories` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ticket_priority` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ticket_overdue` date NULL DEFAULT NULL,
  `ticket_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ticket_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ticket_solve` int(2) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tickets_backup
-- ----------------------------
INSERT INTO `tickets_backup` VALUES (1, '2109110004', 'haris rifai', 'WHY THIS NOT FUCTION?', 'INI ADALAH ISI TICKET SAYA', 'WFX', 'low', '2021-09-12', 'Re-Open', 'Open.jpg', 0, '2021-09-11 15:45:08', '2021-09-11 15:51:18');
INSERT INTO `tickets_backup` VALUES (35, '2109110001', 'haris rifai', 'WHY THIS NOT FUCTION?', 'INI ADALAH ISI TICKET SAYA', 'Network', 'medium', '2021-09-12', 'On Progress', 'Open.jpg', 0, '2021-09-11 15:25:36', '2021-09-11 15:51:23');
INSERT INTO `tickets_backup` VALUES (36, '2109110002', 'haris rifai', 'WHY THIS NOT FUCTION?', 'INI ADALAH ISI TICKET SAYA', 'WFX', 'low', '2021-09-12', 'Re-Open', 'Open.jpg', 0, '2021-09-11 15:43:58', '2021-09-11 15:51:21');
INSERT INTO `tickets_backup` VALUES (37, '2109110003', 'haris rifai', 'WHY THIS NOT FUCTION?', 'INI ADALAH ISI TICKET SAYA', 'WFX', 'high', '2021-09-12', 'Re-Open', 'Open.jpg', 0, '2021-09-11 15:44:40', '2021-09-11 15:44:40');
INSERT INTO `tickets_backup` VALUES (38, '2109110004', 'haris rifai', 'WHY THIS NOT FUCTION?', 'INI ADALAH ISI TICKET SAYA', 'WFX', 'low', '2021-09-12', 'Re-Open', 'Open.jpg', 0, '2021-09-11 15:45:08', '2021-09-11 15:51:18');
INSERT INTO `tickets_backup` VALUES (39, '2109110004', 'haris rifai', 'WHY THIS NOT FUCTION?', 'INI ADALAH ISI TICKET SAYA', 'WFX', 'low', '2021-09-12', 'Re-Open', 'Open.jpg', 0, '2021-09-11 15:45:08', '2021-09-11 15:51:18');
INSERT INTO `tickets_backup` VALUES (40, '2109110004', 'haris rifai', 'WHY THIS NOT FUCTION?', 'INI ADALAH ISI TICKET SAYA', 'WFX', 'low', '2021-09-12', 'Re-Open', 'Open.jpg', 0, '2021-09-11 15:45:08', '2021-09-11 15:51:18');

-- ----------------------------
-- Table structure for todo_items
-- ----------------------------
DROP TABLE IF EXISTS `todo_items`;
CREATE TABLE `todo_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `topic` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0',
  `active` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0',
  `user_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0',
  `description` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `done` tinyint(1) NULL DEFAULT 0,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 130 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of todo_items
-- ----------------------------
INSERT INTO `todo_items` VALUES (73, 'Vendor Printer Everydeninson', 'Software', '1', '3', 'Service printer everydeninson', 1, '1', '2021-09-27 07:12:33', '2021-10-08 06:29:40');
INSERT INTO `todo_items` VALUES (74, 'PC Vaksinasi', 'Software', '1', '3', 'Alokasi Kembali PC vaksinasi', 1, '1', '2021-09-27 07:13:10', '2021-10-08 06:29:40');
INSERT INTO `todo_items` VALUES (75, 'Upgrade NAS Sample', 'Software', '1', '3', 'Move data to new HDD NAS', 1, '1', '2021-09-27 07:13:37', '2021-10-08 06:29:42');
INSERT INTO `todo_items` VALUES (77, 'Live view CCTV', 'Hardware', '1', '3', 'Live View Record Audit', 1, '1', '2021-09-27 07:54:47', '2021-10-08 06:29:43');
INSERT INTO `todo_items` VALUES (78, 'Repair PC Beacukai', 'Hardware', '1', '3', 'VGA not support Multi View', 1, '1', '2021-09-28 09:29:46', '2021-10-08 06:29:45');
INSERT INTO `todo_items` VALUES (79, 'Followup email', 'Hardware', '1', '3', 'Cari penawaran Scanner', 1, '1', '2021-10-01 14:21:55', '2021-10-08 06:29:46');
INSERT INTO `todo_items` VALUES (80, 'Followup email', 'Hardware', '1', '5', 'Printer Barcode', 1, '1', '2021-10-01 14:39:06', '2021-10-08 06:29:47');
INSERT INTO `todo_items` VALUES (81, 'Checking Mikrotik', 'Network', '1', '6', 'Create Routing to Anggun', 1, '3', '2021-10-01 14:40:30', '2021-10-12 07:23:19');
INSERT INTO `todo_items` VALUES (82, 'Followup email', 'Server', '1', '5', 'Test Server app', 0, '5', '2021-10-01 14:42:03', '2021-10-01 14:42:03');
INSERT INTO `todo_items` VALUES (83, 'Followup email', 'Hardware', '1', '3', 'Manage software', 1, '1', '2021-10-01 15:03:17', '2021-10-08 06:29:04');
INSERT INTO `todo_items` VALUES (84, 'Followup email', 'Software', '1', '6', 'Sophos', 1, '3', '2021-10-01 15:23:55', '2021-10-12 07:23:17');
INSERT INTO `todo_items` VALUES (85, 'Followup email', 'Network', '1', '6', 'mANAGE cLOUD', 1, '3', '2021-10-01 15:32:39', '2021-10-12 07:23:14');
INSERT INTO `todo_items` VALUES (86, 'UPdate apps IMS', 'Software', '1', '3', 'Create Auth User Group', 1, '1', '2021-10-01 16:52:50', '2021-10-08 06:29:07');
INSERT INTO `todo_items` VALUES (87, 'Check CCTV Outdoor', 'Hardware', '1', '3', 'Change camera, cable is ok, but camera ussuly blank', 1, '1', '2021-09-01 09:00:00', '2021-10-08 06:30:05');
INSERT INTO `todo_items` VALUES (88, 'update design tampilan Ticketing', 'Software', '1', '3', 'update master view , list view n mylist view', 1, '1', '2021-09-02 09:00:00', '2021-10-08 06:30:08');
INSERT INTO `todo_items` VALUES (89, 'Wifi Buyer Hank', 'Network', '1', '3', 'Reset HW & proposioning kembali', 1, '1', '2021-09-03 09:00:00', '2021-10-08 06:30:09');
INSERT INTO `todo_items` VALUES (90, 'Insttal Printer Epson HRD', 'Hardware', '1', '3', 'Install INK & fist setup Epson', 1, '1', '2021-09-06 09:00:00', '2021-10-08 06:30:11');
INSERT INTO `todo_items` VALUES (91, 'Instal PC', 'Hardware', '1', '3', 'Install ulang PC User SAMPLE', 1, '1', '2021-09-07 08:00:00', '2021-10-08 06:30:11');
INSERT INTO `todo_items` VALUES (92, 'Instal AIO', 'Hardware', '1', '3', 'Install ulang AIO User MD', 1, '1', '2021-09-08 08:00:00', '2021-10-08 06:30:12');
INSERT INTO `todo_items` VALUES (93, 'Instal AIO', 'Hardware', '1', '3', 'Install ulang AIO User MD 2', 1, '1', '2021-09-09 08:00:00', '2021-10-08 06:30:12');
INSERT INTO `todo_items` VALUES (94, 'Setting Sophos Ameya', 'Hardware', '1', '3', 'Setup LAN , WAN', 1, '1', '2021-09-13 08:00:00', '2021-10-08 06:30:13');
INSERT INTO `todo_items` VALUES (95, 'Setting Sophos Anggun', 'Hardware', '1', '3', 'Setup LAN , WAN', 1, '1', '2021-09-14 08:00:00', '2021-10-08 06:31:12');
INSERT INTO `todo_items` VALUES (96, 'Setting Sophos Anggun', 'Hardware', '1', '3', 'Setup DHCP', 1, '1', '2021-09-15 08:00:00', '2021-10-08 06:30:16');
INSERT INTO `todo_items` VALUES (97, 'Install PC New', 'Hardware', '1', '3', 'PC sample Install Apps n OS', 1, '1', '2021-09-15 08:00:00', '2021-10-08 09:09:50');
INSERT INTO `todo_items` VALUES (98, 'Setting Sophos Anggun', 'Hardware', '1', '3', 'Setup Policy', 1, '1', '2021-09-16 08:00:00', '2021-10-08 06:29:54');
INSERT INTO `todo_items` VALUES (99, 'Instal & Setup Camera 360', 'Hardware', '1', '3', 'Setup system n Instalation Hardware', 1, '1', '2021-09-16 08:00:00', '2021-10-08 06:29:55');
INSERT INTO `todo_items` VALUES (100, 'Create Topology anggun', 'Hardware', '1', '3', 'Plan Sophos', 1, '1', '2021-09-17 08:00:00', '2021-10-08 06:29:57');
INSERT INTO `todo_items` VALUES (101, 'Instal PC', 'Hardware', '1', '3', 'Install ulang PC User MD', 1, '1', '2021-09-20 08:00:00', '2021-10-08 06:29:57');
INSERT INTO `todo_items` VALUES (102, 'Instal PC', 'Hardware', '1', '3', 'Install ulang PC User SAMPLE', 1, '1', '2021-09-21 08:00:00', '2021-10-08 06:29:58');
INSERT INTO `todo_items` VALUES (103, 'Create Topology anggun - Ameya', 'Hardware', '1', '3', 'Plan Sophos', 1, '1', '2021-09-22 08:00:00', '2021-10-08 06:29:59');
INSERT INTO `todo_items` VALUES (104, 'Setup AP Vaksin', 'Hardware', '1', '3', 'Bongkar AP Sample to Vaksin Area', 1, '1', '2021-09-23 08:00:00', '2021-10-08 06:29:59');
INSERT INTO `todo_items` VALUES (105, 'Setup Mikrotik Vaksin', 'Hardware', '1', '3', 'Setup Koneksi n Routing AP', 1, '1', '2021-09-24 08:00:00', '2021-10-08 06:30:01');
INSERT INTO `todo_items` VALUES (106, 'Standby Vaksin', 'Hardware', '1', '3', 'Setup PC Vaksinasi', 1, '1', '2021-09-24 08:00:00', '2021-10-08 06:30:01');
INSERT INTO `todo_items` VALUES (107, 'Standby Vaksin', 'Hardware', '1', '3', 'Setup PC Vaksinasi', 1, '1', '2021-09-25 08:00:00', '2021-10-08 06:29:37');
INSERT INTO `todo_items` VALUES (108, 'Service Printer Barcode', 'Hardware', '1', '3', 'With Vendor , Replace Motherboard', 1, '1', '2021-09-27 08:00:00', '2021-10-08 06:29:43');
INSERT INTO `todo_items` VALUES (109, 'Install PC Beacukai', 'Hardware', '1', '3', 'OS Need to Insttal New, failed open apps n connect VPN', 1, '1', '2021-09-27 08:00:00', '2021-10-08 06:29:44');
INSERT INTO `todo_items` VALUES (110, 'PRINTER PURCHASE', 'Hardware', '1', '3', 'PRINTER PURCHASE MACET (ADA KERTAS DI DALAM YG MENGGANGGU )', 1, '1', '2021-10-06 03:54:12', '2021-10-08 06:29:11');
INSERT INTO `todo_items` VALUES (111, 'BACKUP CCTV', 'Hardware', '1', '3', 'BACKUP CCTV TGL 30 - 5 SEPT ( 3 KAMERA POINT AUDIT)', 1, '1', '2021-10-06 03:54:57', '2021-10-08 06:29:13');
INSERT INTO `todo_items` VALUES (112, 'BACKUP CCTV test', 'Hardware', '1', '3', 'test data', 1, '1', '2021-10-06 05:35:05', '2021-10-08 06:29:15');
INSERT INTO `todo_items` VALUES (113, 'setup corel IE', 'Software', '1', '3', 'IE corel was incorect, update installer', 1, '1', '2021-10-07 02:00:46', '2021-10-14 10:31:35');
INSERT INTO `todo_items` VALUES (114, 'remote', 'Software', '1', '3', 'Driver printer error (sample QC)', 1, '1', '2021-10-07 02:15:58', '2021-10-14 10:31:32');
INSERT INTO `todo_items` VALUES (115, 'Email Client can\'t sent mail', 'Software', '1', '3', 'Ip 71, turn off pc n start again', 1, '1', '2021-10-07 07:37:43', '2021-10-14 10:31:30');
INSERT INTO `todo_items` VALUES (116, 'Lepas AP Vaksin', 'Hardware', '1', '3', 'Lepas AP Vaksin n POE', 1, '1', '2021-10-08 08:07:02', '2021-10-14 10:31:27');
INSERT INTO `todo_items` VALUES (117, 'Set Meeting Zoom', 'Software', '1', '3', 'Set meeting Apps Zoom Register n Update', 1, '1', '2021-10-08 08:07:36', '2021-10-14 10:31:25');
INSERT INTO `todo_items` VALUES (118, 'Printer HRD', 'Hardware', '1', '3', 'Printer can\'t print in user, delete update KB550556', 1, '1', '2021-10-08 08:08:11', '2021-10-14 10:31:22');
INSERT INTO `todo_items` VALUES (119, 'other network', 'Other', '0', '3', 'other network', 1, '1', '2021-10-08 09:08:31', '2021-10-14 10:52:42');
INSERT INTO `todo_items` VALUES (120, 'Backup CCTV', 'Hardware', '1', '5', 'Ganti HDD 16 TB', 0, '1', '2021-10-12 08:16:37', '2021-10-12 08:16:37');
INSERT INTO `todo_items` VALUES (121, 'Backup laptop p Imam', 'Hardware', '1', '3', 'Backup datap imam exim to local', 1, '1', '2021-10-14 10:53:17', '2021-10-22 10:28:28');
INSERT INTO `todo_items` VALUES (122, 'tarik kabel Network', 'Network', '1', '3', 'Tarikan kabel network Dead Stock ', 1, '1', '2021-10-14 10:53:53', '2021-10-22 10:28:28');
INSERT INTO `todo_items` VALUES (123, 'Change Account', 'Network', '1', '3', 'Change Account P imam, forward email n etc, user resign', 1, '1', '2021-10-14 10:54:33', '2021-10-22 10:28:25');
INSERT INTO `todo_items` VALUES (124, 'VStcher Apps', 'Hardware', '1', '3', 'PC 3D Hight pressure , clean the cpu and change pasta ', 1, '1', '2021-10-22 10:29:27', '2021-10-22 10:31:07');
INSERT INTO `todo_items` VALUES (125, 'Power Supply AIO MD', 'Hardware', '1', '3', 'power supply break , change with backup', 1, '1', '2021-10-22 10:30:22', '2021-10-22 10:31:09');
INSERT INTO `todo_items` VALUES (126, 'Audit CCTV', 'CCTV', '1', '3', 'Explain CCTV report n capability', 1, '1', '2021-10-22 10:31:01', '2021-10-22 10:31:09');
INSERT INTO `todo_items` VALUES (127, 'Setup Meeting', 'Pabx', '1', '3', 'Setup Meeting HOD', 1, '1', '2021-10-22 10:31:58', '2021-10-22 10:32:04');
INSERT INTO `todo_items` VALUES (128, 'sample system(mkt)', 'Software', '1', '3', 'slow ->change instalastion source', 1, '1', '2021-10-25 02:42:56', '2021-10-25 02:52:58');
INSERT INTO `todo_items` VALUES (129, 'Printer MD->kertas nyankut', 'Hardware', '1', '3', 'Kertas nyangkut di dalam', 1, '1', '2021-10-25 02:52:54', '2021-10-25 02:53:01');

-- ----------------------------
-- Table structure for todos
-- ----------------------------
DROP TABLE IF EXISTS `todos`;
CREATE TABLE `todos`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fileTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usages
-- ----------------------------
DROP TABLE IF EXISTS `usages`;
CREATE TABLE `usages`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Connection` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `inbound` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `outbound` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `month_date` date NULL DEFAULT NULL,
  `current_team_id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usages
-- ----------------------------
INSERT INTO `usages` VALUES (1, 'LDP', 'Wireless', '3651', '865', '4516', 'ldp net.id', '2021-10-30', '1', '1', '2021-01-31 16:40:33', '2021-10-06 06:26:50');
INSERT INTO `usages` VALUES (2, 'LDP', 'Wireless', '3220', '783', '4003', 'ldp net', '2021-02-28', '1', '1', '2021-02-19 16:40:33', '2021-09-27 07:11:30');
INSERT INTO `usages` VALUES (3, 'LDP', 'Wireless', '3353', '880', '4233', 'ldp net', '2021-03-31', '1', '1', '2021-03-19 16:40:33', '2021-09-20 08:18:16');
INSERT INTO `usages` VALUES (4, 'ICON++', 'Fiber Optic', '3227', '629', '3856', 'ldp net', '2021-04-30', '1', '1', '2021-04-19 16:40:33', '2021-09-20 08:18:19');
INSERT INTO `usages` VALUES (5, 'ICON++', 'Fiber Optic', '2476', '529', '3005', 'ldp net', '2021-05-31', '1', '1', '2021-05-19 16:40:33', '2021-09-20 08:18:20');
INSERT INTO `usages` VALUES (6, 'ICON++', 'Fiber Optic', '3101', '852', '3953', 'ldp net', '2021-06-30', '1', '1', '2021-06-19 16:40:33', '2021-09-20 08:18:26');
INSERT INTO `usages` VALUES (7, 'ICON++', 'Fiber Optic', '2741', '1256', '3997', 'ldp net', '2021-07-31', '1', '1', '2021-07-19 16:40:33', '2021-09-20 08:18:25');
INSERT INTO `usages` VALUES (8, 'ICON++', 'Fiber Optic', '1891', '1163', '3054', 'ldp net', '2021-09-22', '1', '1', '2021-08-19 16:40:33', '2021-09-22 02:04:19');
INSERT INTO `usages` VALUES (9, 'ICON++', 'Fiber Optic', '2723', '3146', '5869', 'ldp net', '2021-09-21', '1', '1', '2021-09-21 07:55:58', '2021-09-21 07:56:31');
INSERT INTO `usages` VALUES (13, 'LDP', 'Fiber Optic', '100', '100', '200', 'INET TOTAL', '2021-10-01', '3', '1', '2021-10-01 15:27:42', '2021-10-12 07:23:01');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `active` int(10) UNSIGNED NULL DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Ameya Living Style', 'it@ameyaindo.com', NULL, '$2y$10$bdk/tNXtFPxApdOzZtC5juyYi4P.mGMvLLe7rJETidIqS1BNo6H02', NULL, NULL, NULL, 3, 1, NULL, 'dummy.png', '2021-09-04 18:15:33', '2021-09-18 15:38:12');
INSERT INTO `users` VALUES (2, 'Anggun Kreasi Garmen', 'it@anggunkreasi.com', NULL, '$2y$10$bdk/tNXtFPxApdOzZtC5juyYi4P.mGMvLLe7rJETidIqS1BNo6H02', NULL, NULL, NULL, 1, 0, NULL, 'dummy.png', '2021-09-04 18:19:40', '2021-09-18 13:58:34');
INSERT INTO `users` VALUES (3, 'Haris Rifai', 'harisrifai@anggunkreasi.com', NULL, '$2y$10$LFnFuffHXnqJoEHoYDmh..cGn9rMwNY9ZaN2QGKu/BBdBsO1jDpgi', NULL, NULL, 'yUoACCxhRAQFDxXaCwFhdWvdDN8ULuTcKX7SKbXphu0DIGNBzIi7euIIh3g6', 1, 1, NULL, 'harisrifai.png', '2021-09-12 06:58:04', '2021-10-22 09:21:36');
INSERT INTO `users` VALUES (4, 'Gartex Global', 'garmen.yk@gmail.com', NULL, '$2y$10$1m8gc6KYbc7X//2R6ykxv.ZgjxNL3KNvNjprfd3P/Z2/993oCZczW', NULL, NULL, NULL, 7, 1, NULL, 'dummy.png', '2021-09-18 18:54:49', '2021-10-01 15:05:05');
INSERT INTO `users` VALUES (5, 'Arifin', 'arifin@anggunkreasi.com', NULL, '$2y$10$1m8gc6KYbc7X//2R6ykxv.ZgjxNL3KNvNjprfd3P/Z2/993oCZczW', NULL, NULL, NULL, 1, 0, NULL, 'arifin.png', '2021-09-18 18:54:49', '2021-10-01 14:39:31');
INSERT INTO `users` VALUES (6, 'Ari Sub', 'arisub@ameyaindo.com', NULL, '$2y$10$7agEXe6hrAAqwbKJ/tuwkeGB4PJulx1a8rUY0xJ.6dCgd4gUBDlpa', NULL, NULL, NULL, 3, 0, NULL, 'dummy.png', '2021-09-18 18:54:49', '2021-10-01 16:43:45');
INSERT INTO `users` VALUES (7, 'Sigit', 'sigit@anggunkreasi.com', NULL, '$2y$10$bdk/tNXtFPxApdOzZtC5juyYi4P.mGMvLLe7rJETidIqS1BNo6H02', NULL, NULL, NULL, 1, 0, NULL, 'dummy.png', '2021-09-18 18:54:49', '2021-10-01 14:39:31');
INSERT INTO `users` VALUES (8, 'Ismarwanto', 'ismarwanto@ameyaindo.com', NULL, '$2y$10$bdk/tNXtFPxApdOzZtC5juyYi4P.mGMvLLe7rJETidIqS1BNo6H02', NULL, NULL, NULL, 3, 0, NULL, 'dummy.png', '2021-09-18 18:54:49', '2021-10-01 16:43:45');
INSERT INTO `users` VALUES (54, 'Inventory System', 'moh.h.rifai@gmail.com', NULL, '$2y$10$mtbN4noCTOM4lv.OfXcyze.qOZeQuMMaqU1wF90OQk7olCeoFWAze', NULL, NULL, NULL, 1, 0, NULL, 'harisrifai.png', '2021-10-19 14:45:30', '2021-10-19 14:45:30');

SET FOREIGN_KEY_CHECKS = 1;
