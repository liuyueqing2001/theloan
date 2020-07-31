/*
 Navicat Premium Data Transfer

 Source Server         : xlj
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : ssm

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 31/07/2020 14:24:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_class
-- ----------------------------
DROP TABLE IF EXISTS `t_class`;
CREATE TABLE `t_class`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '班级id主键',
  `class_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级名称',
  PRIMARY KEY (`class_id`) USING BTREE,
  UNIQUE INDEX `class_name`(`class_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_financedetail
-- ----------------------------
DROP TABLE IF EXISTS `t_financedetail`;
CREATE TABLE `t_financedetail`  (
  `fd_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '财务明细id',
  `fd_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '支出时间',
  `fd_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支出分类',
  `fd_info` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支出明细',
  `staff_id` int(11) NOT NULL COMMENT '员工id,外键',
  PRIMARY KEY (`fd_id`) USING BTREE,
  INDEX `staff_id_financedetail`(`staff_id`) USING BTREE,
  CONSTRAINT `staff_id_financedetail` FOREIGN KEY (`staff_id`) REFERENCES `t_staff` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '财务支出明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_money_apply
-- ----------------------------
DROP TABLE IF EXISTS `t_money_apply`;
CREATE TABLE `t_money_apply`  (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '申请id,主键',
  `sm_id` int(11) NOT NULL COMMENT '钱id,外键',
  `tc_id` int(11) NOT NULL COMMENT '老师桥接表id,外键',
  `student_id` int(11) NOT NULL COMMENT '学生id,外键，申请人',
  `staff_id` int(11) NOT NULL COMMENT '员工id,外键，人事复审，财务处理',
  `auditdate` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `disposedate` datetime(0) NULL DEFAULT NULL COMMENT '处理时间',
  `applydate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '申请时间（默认值）',
  PRIMARY KEY (`ma_id`) USING BTREE,
  INDEX `sm_id`(`sm_id`) USING BTREE,
  INDEX `tc_id`(`tc_id`) USING BTREE,
  INDEX `student_id`(`student_id`) USING BTREE,
  INDEX `staff_id_money`(`staff_id`) USING BTREE,
  CONSTRAINT `sm_id` FOREIGN KEY (`sm_id`) REFERENCES `t_shooolmoney` (`sm_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `staff_id_money` FOREIGN KEY (`staff_id`) REFERENCES `t_staff` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `t_student` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tc_id` FOREIGN KEY (`tc_id`) REFERENCES `t_teacher_class` (`tc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '钱申请表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_money_type
-- ----------------------------
DROP TABLE IF EXISTS `t_money_type`;
CREATE TABLE `t_money_type`  (
  `mt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '钱类别id,主键',
  `mt_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别名称',
  PRIMARY KEY (`mt_id`) USING BTREE,
  UNIQUE INDEX `mt_name`(`mt_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '钱类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告id,主键',
  `notice_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_centent` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告内容',
  `staff_id` int(11) NOT NULL COMMENT '员工id,外键',
  `notice_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '发表时间（默认值）',
  PRIMARY KEY (`notice_id`) USING BTREE,
  INDEX `staff_id`(`staff_id`) USING BTREE,
  CONSTRAINT `staff_id` FOREIGN KEY (`staff_id`) REFERENCES `t_staff` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score`  (
  `score_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '成绩id,主键',
  `score_course` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程',
  `student_id` int(11) NOT NULL COMMENT '学生id,外键',
  PRIMARY KEY (`score_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '成绩表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_shooolmoney
-- ----------------------------
DROP TABLE IF EXISTS `t_shooolmoney`;
CREATE TABLE `t_shooolmoney`  (
  `sm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '钱id,主键',
  `mt_id` int(11) NOT NULL COMMENT '钱类别id,外键',
  `issuedate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '发布时间',
  `stopdate` datetime(0) NOT NULL COMMENT '截止时间',
  `sm_money` float NULL DEFAULT NULL COMMENT '申请金',
  PRIMARY KEY (`sm_id`) USING BTREE,
  INDEX `mt_id`(`mt_id`) USING BTREE,
  CONSTRAINT `mt_id` FOREIGN KEY (`mt_id`) REFERENCES `t_money_type` (`mt_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '钱表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_staff
-- ----------------------------
DROP TABLE IF EXISTS `t_staff`;
CREATE TABLE `t_staff`  (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工id，主键',
  `user_id` int(11) NOT NULL COMMENT '用户id,外键',
  `st_id` int(11) NOT NULL COMMENT '员工类型id,外键',
  `staff_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工名称',
  PRIMARY KEY (`staff_id`) USING BTREE,
  UNIQUE INDEX `staff_name`(`staff_name`) USING BTREE,
  INDEX `user_id_staff`(`user_id`) USING BTREE,
  INDEX `st_id`(`st_id`) USING BTREE,
  CONSTRAINT `st_id` FOREIGN KEY (`st_id`) REFERENCES `t_staff_type` (`st_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_id_staff` FOREIGN KEY (`user_id`) REFERENCES `t_sys_user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_staff_type
-- ----------------------------
DROP TABLE IF EXISTS `t_staff_type`;
CREATE TABLE `t_staff_type`  (
  `st_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工类型id,主键',
  `st_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工类型名称',
  PRIMARY KEY (`st_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `student_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生id,主键',
  `student_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `class_id` int(11) NOT NULL COMMENT '班级id,外键',
  `user_id` int(11) NOT NULL COMMENT '用户id,外键',
  `student_identity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `student_sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生性别',
  `student_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '家庭住址',
  `student_age` int(11) NOT NULL COMMENT '学生年龄',
  `student_ancestral` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生祖籍',
  `student_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生联系电话',
  `student_status` int(11) NOT NULL COMMENT '家庭状况，0：富有，1：一般，2：困难',
  `shooolmoney_status` int(11) NULL DEFAULT NULL COMMENT '0：未通过，1：已通过(奖学金)',
  `loans_status` int(11) NULL DEFAULT NULL COMMENT '0：未通过，1：已通过（贷款）',
  `student_info` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '在校信息',
  `score_id` int(11) NOT NULL COMMENT '学生成绩，外键',
  PRIMARY KEY (`student_id`) USING BTREE,
  UNIQUE INDEX `student_name`(`student_name`) USING BTREE,
  INDEX `class_id_student`(`class_id`) USING BTREE,
  INDEX `user_id_student`(`user_id`) USING BTREE,
  INDEX `score_id`(`score_id`) USING BTREE,
  CONSTRAINT `class_id_student` FOREIGN KEY (`class_id`) REFERENCES `t_class` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `score_id` FOREIGN KEY (`score_id`) REFERENCES `t_score` (`score_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_id_student` FOREIGN KEY (`user_id`) REFERENCES `t_sys_user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission`;
CREATE TABLE `t_sys_permission`  (
  `perid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID,主键',
  `pername` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父编号',
  `permission` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限字符串：例如：system:user:create:1',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跳转路径',
  PRIMARY KEY (`perid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 160203 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_permission
-- ----------------------------
INSERT INTO `t_sys_permission` VALUES (10, '学生管理', -1, '', NULL);
INSERT INTO `t_sys_permission` VALUES (11, '部门管理', -1, '', NULL);
INSERT INTO `t_sys_permission` VALUES (12, '班级管理', -1, '', NULL);
INSERT INTO `t_sys_permission` VALUES (13, '公告管理', -1, '', NULL);
INSERT INTO `t_sys_permission` VALUES (14, '申请管理', -1, '', NULL);
INSERT INTO `t_sys_permission` VALUES (15, '老师管理', -1, '', NULL);
INSERT INTO `t_sys_permission` VALUES (16, '系统管理', -1, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1001, '学生信息管理', 10, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1002, '学生分数管理', 10, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1003, '学生账号管理', 10, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1101, '人事部管理', 11, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1102, '财务部管理', 11, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1103, '教学部管理', 11, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1201, '班级信息管理', 12, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1202, '分配老师', 12, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1203, '分配学生', 12, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1301, '发布公告', 13, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1302, '公告信息管理', 13, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1401, '奖学金管理', 14, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1402, '助学金管理', 14, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1403, '贷款管理', 14, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1501, '老师信息管理', 15, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1502, '老师账号管理', 15, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1601, '角色管理', 16, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1602, '授权管理', 16, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1603, '个人信息', 16, '', NULL);
INSERT INTO `t_sys_permission` VALUES (1604, '用户管理', 16, '', NULL);
INSERT INTO `t_sys_permission` VALUES (110201, '财务支出信息', 1102, '', NULL);
INSERT INTO `t_sys_permission` VALUES (160201, '操作员管理', 1602, '', NULL);
INSERT INTO `t_sys_permission` VALUES (160202, '密码修改', 1602, '', NULL);

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID,主键',
  `rolename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`roleid`) USING BTREE,
  UNIQUE INDEX `rolename`(`rolename`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES (1, '管理员', NULL);
INSERT INTO `t_sys_role` VALUES (2, '高级用户', NULL);
INSERT INTO `t_sys_role` VALUES (3, '普通用户', NULL);

-- ----------------------------
-- Table structure for t_sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_permission`;
CREATE TABLE `t_sys_role_permission`  (
  `roleid` int(11) NOT NULL COMMENT '角色ID',
  `perid` int(11) NOT NULL COMMENT '权限ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_role_permission
-- ----------------------------
INSERT INTO `t_sys_role_permission` VALUES (1, 1001);
INSERT INTO `t_sys_role_permission` VALUES (1, 100101);
INSERT INTO `t_sys_role_permission` VALUES (1, 100102);
INSERT INTO `t_sys_role_permission` VALUES (1, 100103);
INSERT INTO `t_sys_role_permission` VALUES (1, 100104);
INSERT INTO `t_sys_role_permission` VALUES (1, 1101);
INSERT INTO `t_sys_role_permission` VALUES (1, 110101);
INSERT INTO `t_sys_role_permission` VALUES (1, 110102);
INSERT INTO `t_sys_role_permission` VALUES (1, 110103);
INSERT INTO `t_sys_role_permission` VALUES (2, 100101);
INSERT INTO `t_sys_role_permission` VALUES (2, 100102);

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID,主键',
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `PASSWORD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码=MD5+盐加密',
  `salt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '盐',
  `createdate` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES (1, 'admin', 'c3b3ac764e1dbf4a1e4483f42c7140cb', 'af0111353776182a4f166e1d49a7dd2f', '2018-11-26 15:02:42');
INSERT INTO `t_sys_user` VALUES (2, 'zhangsan', '9c917b6f860eeb24361c75f27a236d6b', 'bcdf6f5c2237bdb440684b6c4ce943d4', '2018-11-28 16:44:33');

-- ----------------------------
-- Table structure for t_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_role`;
CREATE TABLE `t_sys_user_role`  (
  `urid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID,主键',
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `roleid` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`urid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_user_role
-- ----------------------------
INSERT INTO `t_sys_user_role` VALUES (1, 1, 1);
INSERT INTO `t_sys_user_role` VALUES (2, 2, 2);

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher`  (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '老师id,主键',
  `teacher_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '老师名称',
  `user_id` int(11) NOT NULL COMMENT '用户id,外键',
  `teacher_sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '老师性别',
  `teacher_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '老师地址',
  `teacher_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '老师联系电话',
  PRIMARY KEY (`teacher_id`) USING BTREE,
  UNIQUE INDEX `teacher_name`(`teacher_name`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `t_sys_user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '老师表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_teacher_class
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher_class`;
CREATE TABLE `t_teacher_class`  (
  `tc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '老师班级id,主键',
  `teacher_id` int(11) NOT NULL COMMENT '老师id,外键',
  `class_id` int(11) NOT NULL COMMENT '班级id,外键',
  PRIMARY KEY (`tc_id`) USING BTREE,
  INDEX `teacher_id`(`teacher_id`) USING BTREE,
  INDEX `class_id`(`class_id`) USING BTREE,
  CONSTRAINT `class_id` FOREIGN KEY (`class_id`) REFERENCES `t_class` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `t_teacher` (`teacher_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '老师班级桥接表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
