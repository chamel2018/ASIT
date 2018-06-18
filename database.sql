/*
 Navicat MySQL Data Transfer

 Source Server         : ASIT
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 18/06/2018 13:22:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `Answer_Id` int(11) NOT NULL,
  `Response` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`Answer_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `Category_id` int(11) NOT NULL,
  `Description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`Category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for input_type
-- ----------------------------
DROP TABLE IF EXISTS `input_type`;
CREATE TABLE `input_type`  (
  `Input_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Input_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `person_id` int(11) NOT NULL,
  `f_name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `l_name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `m_name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `passwordhash` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `person_type_id` int(11) NOT NULL,
  `profile_linker_id` int(11) NOT NULL,
  `active_cookie` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`person_id`) USING BTREE,
  INDEX `person_person_type_fk`(`person_type_id`) USING BTREE,
  INDEX `person_profile_linker_fk`(`profile_linker_id`) USING BTREE,
  CONSTRAINT `person_person_type_fk` FOREIGN KEY (`person_type_id`) REFERENCES `person_type` (`person_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `person_profile_linker_fk` FOREIGN KEY (`profile_linker_id`) REFERENCES `profile_linker` (`profile_linker_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES (1, 'bob', 'ross', 'bro', 'bross', '7FCEA003C49EED3AF3831CBB2F0221B7', 1, 1, NULL);

-- ----------------------------
-- Table structure for person_type
-- ----------------------------
DROP TABLE IF EXISTS `person_type`;
CREATE TABLE `person_type`  (
  `person_type_id` int(11) NOT NULL,
  `description` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NAME` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`person_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of person_type
-- ----------------------------
INSERT INTO `person_type` VALUES (1, 'bob ross', 'BOB');

-- ----------------------------
-- Table structure for profile_linker
-- ----------------------------
DROP TABLE IF EXISTS `profile_linker`;
CREATE TABLE `profile_linker`  (
  `profile_linker_id` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `q_a_linker_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`profile_linker_id`) USING BTREE,
  INDEX `q_a_linker_fk`(`q_a_linker_id`) USING BTREE,
  CONSTRAINT `q_a_linker_fk` FOREIGN KEY (`q_a_linker_id`) REFERENCES `q_a_linker` (`Q_A_Linker_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of profile_linker
-- ----------------------------
INSERT INTO `profile_linker` VALUES (1, 1337, NULL);

-- ----------------------------
-- Table structure for q_a_linker
-- ----------------------------
DROP TABLE IF EXISTS `q_a_linker`;
CREATE TABLE `q_a_linker`  (
  `Q_A_Linker_Id` int(11) NOT NULL,
  `Answer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`Q_A_Linker_Id`) USING BTREE,
  INDEX `Question_Fk`(`question_id`) USING BTREE,
  INDEX `Answer_fk`(`Answer_id`) USING BTREE,
  CONSTRAINT `Answer_fk` FOREIGN KEY (`Answer_id`) REFERENCES `answer` (`Answer_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Question_Fk` FOREIGN KEY (`question_id`) REFERENCES `question` (`Question_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `Question_id` int(11) NOT NULL,
  `Category_id` int(11) NOT NULL,
  `input_type_id` int(11) NOT NULL,
  `statement` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Question_id`) USING BTREE,
  INDEX `Category_fk`(`Category_id`) USING BTREE,
  INDEX `Input_type_fk`(`input_type_id`) USING BTREE,
  CONSTRAINT `Category_fk` FOREIGN KEY (`Category_id`) REFERENCES `category` (`Category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Input_type_fk` FOREIGN KEY (`input_type_id`) REFERENCES `input_type` (`Input_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
