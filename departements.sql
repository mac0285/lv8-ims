/*
 Navicat Premium Data Transfer

 Source Server         : app_db_POS
 Source Server Type    : MariaDB
 Source Server Version : 100407
 Source Host           : localhost:3306
 Source Schema         : lv8panel

 Target Server Type    : MariaDB
 Target Server Version : 100407
 File Encoding         : 65001

 Date: 24/10/2021 22:53:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
