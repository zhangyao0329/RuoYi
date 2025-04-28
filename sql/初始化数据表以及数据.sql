-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ry-vue
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (1,'tb_course','课程管理',NULL,NULL,'Course','crud','element-plus','com.ruoyi.course','course','course','课程管理','dapixiu','0','/','{\"parentMenuId\":0}','admin','2025-04-27 00:54:47','','2025-04-27 18:36:29',NULL),(2,'sys_dept','部门表','','','SysDept','tree','element-plus','com.ruoyi.system','system','dept','部门','ruoyi','0','/','{\"treeCode\":\"dept_id\",\"treeName\":\"dept_name\",\"treeParentCode\":\"parent_id\",\"parentMenuId\":\"\"}','admin','2025-04-27 22:29:32','','2025-04-27 22:33:01',NULL),(3,'tb_dish','菜品管理','tb_dish_flavor','dish_id','Dish','sub','element-plus','com.sky.merchant','merchant','dish','菜品管理','dapixiu','0','/','{\"parentMenuId\":0}','admin','2025-04-28 19:49:08','','2025-04-28 20:32:23',NULL),(4,'tb_dish_flavor','菜品口味关系表',NULL,NULL,'DishFlavor','crud','element-plus','com.sky.system','system','flavor','菜品口味关系','dapixiu','0','/','{\"parentMenuId\":\"\"}','admin','2025-04-28 19:49:08','','2025-04-28 20:06:28',NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (1,1,'id','课程 id','bigint','Long','id','1','1','0','0',NULL,'0',NULL,'EQ','input','',1,'admin','2025-04-27 00:54:47','','2025-04-27 18:36:29'),(2,1,'code','课程编码','varchar(32)','String','code','0','0','1','1','1','1','1','EQ','input','',2,'admin','2025-04-27 00:54:47','','2025-04-27 18:36:29'),(3,1,'subject','课程学科','varchar(32)','String','subject','0','0','1','1','1','1','1','EQ','select','course_subject',3,'admin','2025-04-27 00:54:48','','2025-04-27 18:36:29'),(4,1,'name','课程名称','varchar(64)','String','name','0','0','1','1','1','1','1','LIKE','input','',4,'admin','2025-04-27 00:54:48','','2025-04-27 18:36:29'),(5,1,'price','价格（元）','int','Integer','price','0','0','1','1','1','1','0','EQ','input','',5,'admin','2025-04-27 00:54:48','','2025-04-27 18:36:30'),(6,1,'applicable_person','适用人群','varchar(32)','String','applicablePerson','0','0','1','1','1','1','1','EQ','select','people_crowd',6,'admin','2025-04-27 00:54:48','','2025-04-27 18:36:30'),(7,1,'info','课程介绍','varchar(255)','String','info','0','0','1','1','1','1','0','EQ','input','',7,'admin','2025-04-27 00:54:48','','2025-04-27 18:36:30'),(8,1,'create_time','创建时间','timestamp','Date','createTime','0','0','0','0',NULL,NULL,NULL,'EQ','datetime','',8,'admin','2025-04-27 00:54:48','','2025-04-27 18:36:30'),(9,1,'update_time','更新时间','timestamp','Date','updateTime','0','0','0','0','0',NULL,NULL,'EQ','datetime','',9,'admin','2025-04-27 00:54:48','','2025-04-27 18:36:30'),(10,2,'dept_id','部门id','bigint','Long','deptId','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2025-04-27 22:29:32','','2025-04-27 22:33:01'),(11,2,'parent_id','父部门id','bigint','Long','parentId','0','0','0','1','1','1','1','EQ','input','',2,'admin','2025-04-27 22:29:32','','2025-04-27 22:33:01'),(12,2,'ancestors','祖级列表','varchar(50)','String','ancestors','0','0','0','1','1','1','1','EQ','input','',3,'admin','2025-04-27 22:29:32','','2025-04-27 22:33:01'),(13,2,'dept_name','部门名称','varchar(30)','String','deptName','0','0','0','1','1','1','1','LIKE','input','',4,'admin','2025-04-27 22:29:33','','2025-04-27 22:33:01'),(14,2,'order_num','显示顺序','int','Long','orderNum','0','0','0','1','1','1','1','EQ','input','',5,'admin','2025-04-27 22:29:33','','2025-04-27 22:33:01'),(15,2,'leader','负责人','varchar(20)','String','leader','0','0','0','1','1','1','1','EQ','input','',6,'admin','2025-04-27 22:29:33','','2025-04-27 22:33:02'),(16,2,'phone','联系电话','varchar(11)','String','phone','0','0','0','1','1','1','1','EQ','input','',7,'admin','2025-04-27 22:29:33','','2025-04-27 22:33:02'),(17,2,'email','邮箱','varchar(50)','String','email','0','0','0','1','1','1','1','EQ','input','',8,'admin','2025-04-27 22:29:33','','2025-04-27 22:33:02'),(18,2,'status','部门状态（0正常 1停用）','char(1)','String','status','0','0','0','1','1','1','1','EQ','radio','',9,'admin','2025-04-27 22:29:33','','2025-04-27 22:33:02'),(19,2,'del_flag','删除标志（0代表存在 2代表删除）','char(1)','String','delFlag','0','0','0','1',NULL,NULL,NULL,'EQ','input','',10,'admin','2025-04-27 22:29:33','','2025-04-27 22:33:02'),(20,2,'create_by','创建者','varchar(64)','String','createBy','0','0','0','1',NULL,NULL,NULL,'EQ','input','',11,'admin','2025-04-27 22:29:33','','2025-04-27 22:33:02'),(21,2,'create_time','创建时间','datetime','Date','createTime','0','0','0','1',NULL,NULL,NULL,'EQ','datetime','',12,'admin','2025-04-27 22:29:33','','2025-04-27 22:33:02'),(22,2,'update_by','更新者','varchar(64)','String','updateBy','0','0','0','1','1',NULL,NULL,'EQ','input','',13,'admin','2025-04-27 22:29:33','','2025-04-27 22:33:02'),(23,2,'update_time','更新时间','datetime','Date','updateTime','0','0','0','1','1',NULL,NULL,'EQ','datetime','',14,'admin','2025-04-27 22:29:33','','2025-04-27 22:33:02'),(24,3,'id','主键','bigint','Long','id','1','1','0','0',NULL,NULL,NULL,'EQ','input','',1,'admin','2025-04-28 19:49:08','','2025-04-28 20:32:23'),(25,3,'name','菜品名称','varchar(32)','String','name','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2025-04-28 19:49:08','','2025-04-28 20:32:23'),(26,3,'price','售价','decimal(10,2)','BigDecimal','price','0','0','1','1','1','1','0','EQ','input','',3,'admin','2025-04-28 19:49:08','','2025-04-28 20:32:23'),(27,3,'image','图片','varchar(255)','String','image','0','0','1','1','1','1','0','EQ','imageUpload','',4,'admin','2025-04-28 19:49:08','','2025-04-28 20:32:23'),(28,3,'description','描述信息','varchar(255)','String','description','0','0','0','1','1','0','0','EQ','input','',5,'admin','2025-04-28 19:49:08','','2025-04-28 20:32:23'),(29,3,'status','售卖状态','int','Long','status','0','0','1','1','1','1','1','EQ','select','dish_status',6,'admin','2025-04-28 19:49:08','','2025-04-28 20:32:23'),(30,3,'create_time','创建时间','datetime','Date','createTime','0','0','0','0',NULL,NULL,NULL,'EQ','datetime','',7,'admin','2025-04-28 19:49:08','','2025-04-28 20:32:23'),(31,3,'update_time','更新时间','datetime','Date','updateTime','0','0','0','0','0','1',NULL,'EQ','datetime','',8,'admin','2025-04-28 19:49:08','','2025-04-28 20:32:23'),(32,4,'id','主键','bigint','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2025-04-28 19:49:08','','2025-04-28 20:06:28'),(33,4,'dish_id','菜品','bigint','Long','dishId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2025-04-28 19:49:08','','2025-04-28 20:06:28'),(34,4,'name','口味名称','varchar(32)','String','name','0','0','0','1','1','1','1','LIKE','input','',3,'admin','2025-04-28 19:49:08','','2025-04-28 20:06:28'),(35,4,'value','口味列表','varchar(255)','String','value','0','0','0','1','1','1','1','EQ','input','',4,'admin','2025-04-28 19:49:08','','2025-04-28 20:06:28');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-purple','Y','admin','2025-04-26 23:31:10','admin','2025-04-27 18:47:27','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2025-04-26 23:31:11','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2025-04-26 23:31:11','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2025-04-26 23:31:11','admin','2025-04-28 23:40:14','是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','true','Y','admin','2025-04-26 23:31:12','admin','2025-04-27 18:47:39','是否开启注册用户功能（true开启，false关闭）'),(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2025-04-26 23:31:12','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2025-04-26 23:25:07','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2025-04-26 23:25:07','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2025-04-26 23:25:09','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2025-04-26 23:25:10','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2025-04-26 23:25:11','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2025-04-26 23:25:13','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2025-04-26 23:25:15','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2025-04-26 23:25:16','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2025-04-26 23:25:23','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2025-04-26 23:25:26','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男性','0','sys_user_sex','','','Y','0','admin','2025-04-26 23:30:56','admin','2025-04-27 17:22:14','性别男'),(2,2,'女性','1','sys_user_sex','','','N','0','admin','2025-04-26 23:30:57','admin','2025-04-27 17:22:24','性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2025-04-26 23:30:57','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2025-04-26 23:30:58','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2025-04-26 23:30:58','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2025-04-26 23:30:59','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2025-04-26 23:30:59','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2025-04-26 23:31:00','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2025-04-26 23:31:01','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2025-04-26 23:31:01','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2025-04-26 23:31:01','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2025-04-26 23:31:02','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2025-04-26 23:31:02','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2025-04-26 23:31:02','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2025-04-26 23:31:03','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2025-04-26 23:31:03','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2025-04-26 23:31:03','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2025-04-26 23:31:03','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2025-04-26 23:31:04','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2025-04-26 23:31:04','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2025-04-26 23:31:04','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2025-04-26 23:31:05','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2025-04-26 23:31:05','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2025-04-26 23:31:05','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2025-04-26 23:31:06','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2025-04-26 23:31:06','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2025-04-26 23:31:06','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2025-04-26 23:31:07','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2025-04-26 23:31:07','',NULL,'停用状态'),(100,1,'JavaEE','0','course_subject',NULL,'default','N','0','admin','2025-04-27 18:20:04','',NULL,'JavaEE'),(101,2,'Python+大数据','1','course_subject',NULL,'default','N','0','admin','2025-04-27 18:20:36','',NULL,'Python+大数据'),(102,3,'鸿蒙应用开发','2','course_subject',NULL,'default','N','0','admin','2025-04-27 18:21:13','',NULL,'鸿蒙应用开发'),(103,1,'小白学员','0','people_crowd',NULL,'default','N','0','admin','2025-04-27 18:35:20','',NULL,'小白学员'),(104,2,'初级开发者','1','people_crowd',NULL,'default','N','0','admin','2025-04-27 18:35:43','',NULL,'初级开发者'),(105,1,'停售','0','dish_status',NULL,'default','N','0','admin','2025-04-28 19:53:53','',NULL,NULL),(106,2,'启售','1','dish_status',NULL,'default','N','0','admin','2025-04-28 19:54:11','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2025-04-26 23:30:46','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2025-04-26 23:30:47','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2025-04-26 23:30:48','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2025-04-26 23:30:49','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2025-04-26 23:30:49','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2025-04-26 23:30:50','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2025-04-26 23:30:52','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2025-04-26 23:30:54','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2025-04-26 23:30:55','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2025-04-26 23:30:55','',NULL,'登录状态列表'),(100,'学科','course_subject','0','admin','2025-04-27 17:36:27','admin','2025-04-27 17:37:36','课程学科'),(101,'适用人群','people_crowd','0','admin','2025-04-27 18:33:31','',NULL,'适用人群'),(102,'售卖状态','dish_status','0','admin','2025-04-28 19:53:19','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2025-04-26 23:31:14','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','1','1','1','admin','2025-04-26 23:31:14','admin','2025-04-27 19:55:45',''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2025-04-26 23:31:15','',NULL,''),(100,'输出时间','DEFAULT','myTask.showTime()','0/5 * * * * ?','1','1','1','admin','2025-04-27 19:40:43','admin','2025-04-27 19:43:28','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
INSERT INTO `sys_job_log` VALUES (1,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:40:52'),(2,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:40:52'),(3,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:40:55'),(4,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:41:00'),(5,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:41:05'),(6,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:41:10'),(7,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:41:15'),(8,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:41:20'),(9,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:41:25'),(10,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:41:30'),(11,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:38'),(12,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:38'),(13,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:38'),(14,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:39'),(15,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:39'),(16,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:39'),(17,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:39'),(18,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:39'),(19,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:39'),(20,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:39'),(21,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:39'),(22,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:39'),(23,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:39'),(24,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:40'),(25,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:45'),(26,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:50'),(27,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:42:55'),(28,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:43:00'),(29,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:43:05'),(30,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:43:10'),(31,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:43:15'),(32,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:43:20'),(33,'输出时间','DEFAULT','myTask.showTime()','输出时间 总共耗时：0毫秒','0','','2025-04-27 19:43:25'),(34,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','系统默认（有参） 总共耗时：1毫秒','0','','2025-04-27 19:55:15'),(35,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','系统默认（有参） 总共耗时：1毫秒','0','','2025-04-27 19:55:30');
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (1,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2025-04-27 21:08:22'),(2,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2025-04-27 21:56:51'),(3,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2025-04-27 23:08:07'),(4,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2025-04-28 00:00:29'),(5,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2025-04-28 00:00:30'),(6,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2025-04-28 19:11:44'),(7,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2025-04-28 19:48:50'),(8,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2025-04-28 22:27:13'),(9,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2025-04-28 23:36:48'),(10,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2025-04-28 23:39:54'),(11,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2025-04-28 23:40:20'),(12,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2025-04-28 23:40:32'),(13,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2025-04-28 23:44:43'),(14,'boniu','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2025-04-28 23:44:51');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) DEFAULT '' COMMENT '路由名称',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2023 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'system',NULL,'','',1,0,'M','0','0','','system','admin','2025-04-26 23:26:02','',NULL,'系统管理目录'),(2,'系统监控',0,2,'monitor',NULL,'','',1,0,'M','0','0','','monitor','admin','2025-04-26 23:26:03','',NULL,'系统监控目录'),(3,'系统工具',0,3,'tool',NULL,'','',1,0,'M','0','0','','tool','admin','2025-04-26 23:26:04','',NULL,'系统工具目录'),(4,'若依官网',0,4,'http://ruoyi.vip',NULL,'','',0,0,'M','0','0','','guide','admin','2025-04-26 23:26:07','',NULL,'若依官网地址'),(100,'用户管理',1,1,'user','system/user/index','','',1,0,'C','0','0','system:user:list','user','admin','2025-04-26 23:26:09','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index','','',1,0,'C','0','0','system:role:list','peoples','admin','2025-04-26 23:26:11','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index','','',1,0,'C','0','0','system:menu:list','tree-table','admin','2025-04-26 23:26:15','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index','','',1,0,'C','0','0','system:dept:list','tree','admin','2025-04-26 23:26:16','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index','','',1,0,'C','0','0','system:post:list','post','admin','2025-04-26 23:26:17','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index','','',1,0,'C','0','0','system:dict:list','dict','admin','2025-04-26 23:26:19','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index','','',1,0,'C','0','0','system:config:list','edit','admin','2025-04-26 23:26:26','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index','','',1,0,'C','0','0','system:notice:list','message','admin','2025-04-26 23:26:33','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'log','','','',1,0,'M','0','0','','log','admin','2025-04-26 23:26:36','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index','','',1,0,'C','0','0','monitor:online:list','online','admin','2025-04-26 23:26:36','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index','','',1,0,'C','0','0','monitor:job:list','job','admin','2025-04-26 23:26:37','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'druid','monitor/druid/index','','',1,0,'C','0','0','monitor:druid:list','druid','admin','2025-04-26 23:26:38','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'server','monitor/server/index','','',1,0,'C','0','0','monitor:server:list','server','admin','2025-04-26 23:26:41','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'cache','monitor/cache/index','','',1,0,'C','0','0','monitor:cache:list','redis','admin','2025-04-26 23:26:43','',NULL,'缓存监控菜单'),(114,'缓存列表',2,6,'cacheList','monitor/cache/list','','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2025-04-26 23:26:43','',NULL,'缓存列表菜单'),(115,'表单构建',3,1,'build','tool/build/index','','',1,0,'C','0','0','tool:build:list','build','admin','2025-04-26 23:26:44','',NULL,'表单构建菜单'),(116,'代码生成',3,2,'gen','tool/gen/index','','',1,0,'C','0','0','tool:gen:list','code','admin','2025-04-26 23:26:45','',NULL,'代码生成菜单'),(117,'系统接口',3,3,'swagger','tool/swagger/index','','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2025-04-26 23:26:47','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index','','',1,0,'C','0','0','monitor:operlog:list','form','admin','2025-04-26 23:26:49','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2025-04-26 23:26:49','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'','','','',1,0,'F','0','0','system:user:query','#','admin','2025-04-26 23:26:50','',NULL,''),(1001,'用户新增',100,2,'','','','',1,0,'F','0','0','system:user:add','#','admin','2025-04-26 23:26:51','',NULL,''),(1002,'用户修改',100,3,'','','','',1,0,'F','0','0','system:user:edit','#','admin','2025-04-26 23:26:52','',NULL,''),(1003,'用户删除',100,4,'','','','',1,0,'F','0','0','system:user:remove','#','admin','2025-04-26 23:26:53','',NULL,''),(1004,'用户导出',100,5,'','','','',1,0,'F','0','0','system:user:export','#','admin','2025-04-26 23:26:54','',NULL,''),(1005,'用户导入',100,6,'','','','',1,0,'F','0','0','system:user:import','#','admin','2025-04-26 23:26:55','',NULL,''),(1006,'重置密码',100,7,'','','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2025-04-26 23:26:57','',NULL,''),(1007,'角色查询',101,1,'','','','',1,0,'F','0','0','system:role:query','#','admin','2025-04-26 23:26:59','',NULL,''),(1008,'角色新增',101,2,'','','','',1,0,'F','0','0','system:role:add','#','admin','2025-04-26 23:27:00','',NULL,''),(1009,'角色修改',101,3,'','','','',1,0,'F','0','0','system:role:edit','#','admin','2025-04-26 23:27:01','',NULL,''),(1010,'角色删除',101,4,'','','','',1,0,'F','0','0','system:role:remove','#','admin','2025-04-26 23:27:02','',NULL,''),(1011,'角色导出',101,5,'','','','',1,0,'F','0','0','system:role:export','#','admin','2025-04-26 23:27:04','',NULL,''),(1012,'菜单查询',102,1,'','','','',1,0,'F','0','0','system:menu:query','#','admin','2025-04-26 23:27:07','',NULL,''),(1013,'菜单新增',102,2,'','','','',1,0,'F','0','0','system:menu:add','#','admin','2025-04-26 23:27:10','',NULL,''),(1014,'菜单修改',102,3,'','','','',1,0,'F','0','0','system:menu:edit','#','admin','2025-04-26 23:27:12','',NULL,''),(1015,'菜单删除',102,4,'','','','',1,0,'F','0','0','system:menu:remove','#','admin','2025-04-26 23:27:14','',NULL,''),(1016,'部门查询',103,1,'','','','',1,0,'F','0','0','system:dept:query','#','admin','2025-04-26 23:27:15','',NULL,''),(1017,'部门新增',103,2,'','','','',1,0,'F','0','0','system:dept:add','#','admin','2025-04-26 23:27:17','',NULL,''),(1018,'部门修改',103,3,'','','','',1,0,'F','0','0','system:dept:edit','#','admin','2025-04-26 23:27:18','',NULL,''),(1019,'部门删除',103,4,'','','','',1,0,'F','0','0','system:dept:remove','#','admin','2025-04-26 23:27:19','',NULL,''),(1020,'岗位查询',104,1,'','','','',1,0,'F','0','0','system:post:query','#','admin','2025-04-26 23:27:21','',NULL,''),(1021,'岗位新增',104,2,'','','','',1,0,'F','0','0','system:post:add','#','admin','2025-04-26 23:27:22','',NULL,''),(1022,'岗位修改',104,3,'','','','',1,0,'F','0','0','system:post:edit','#','admin','2025-04-26 23:27:24','',NULL,''),(1023,'岗位删除',104,4,'','','','',1,0,'F','0','0','system:post:remove','#','admin','2025-04-26 23:27:25','',NULL,''),(1024,'岗位导出',104,5,'','','','',1,0,'F','0','0','system:post:export','#','admin','2025-04-26 23:27:25','',NULL,''),(1025,'字典查询',105,1,'#','','','',1,0,'F','0','0','system:dict:query','#','admin','2025-04-26 23:27:26','',NULL,''),(1026,'字典新增',105,2,'#','','','',1,0,'F','0','0','system:dict:add','#','admin','2025-04-26 23:27:28','',NULL,''),(1027,'字典修改',105,3,'#','','','',1,0,'F','0','0','system:dict:edit','#','admin','2025-04-26 23:27:49','',NULL,''),(1028,'字典删除',105,4,'#','','','',1,0,'F','0','0','system:dict:remove','#','admin','2025-04-26 23:27:58','',NULL,''),(1029,'字典导出',105,5,'#','','','',1,0,'F','0','0','system:dict:export','#','admin','2025-04-26 23:28:00','',NULL,''),(1030,'参数查询',106,1,'#','','','',1,0,'F','0','0','system:config:query','#','admin','2025-04-26 23:28:03','',NULL,''),(1031,'参数新增',106,2,'#','','','',1,0,'F','0','0','system:config:add','#','admin','2025-04-26 23:28:05','',NULL,''),(1032,'参数修改',106,3,'#','','','',1,0,'F','0','0','system:config:edit','#','admin','2025-04-26 23:28:05','',NULL,''),(1033,'参数删除',106,4,'#','','','',1,0,'F','0','0','system:config:remove','#','admin','2025-04-26 23:28:06','',NULL,''),(1034,'参数导出',106,5,'#','','','',1,0,'F','0','0','system:config:export','#','admin','2025-04-26 23:28:10','',NULL,''),(1035,'公告查询',107,1,'#','','','',1,0,'F','0','0','system:notice:query','#','admin','2025-04-26 23:28:11','',NULL,''),(1036,'公告新增',107,2,'#','','','',1,0,'F','0','0','system:notice:add','#','admin','2025-04-26 23:28:12','',NULL,''),(1037,'公告修改',107,3,'#','','','',1,0,'F','0','0','system:notice:edit','#','admin','2025-04-26 23:28:14','',NULL,''),(1038,'公告删除',107,4,'#','','','',1,0,'F','0','0','system:notice:remove','#','admin','2025-04-26 23:28:16','',NULL,''),(1039,'操作查询',500,1,'#','','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2025-04-26 23:28:17','',NULL,''),(1040,'操作删除',500,2,'#','','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2025-04-26 23:28:17','',NULL,''),(1041,'日志导出',500,3,'#','','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2025-04-26 23:28:19','',NULL,''),(1042,'登录查询',501,1,'#','','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2025-04-26 23:28:20','',NULL,''),(1043,'登录删除',501,2,'#','','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2025-04-26 23:28:20','',NULL,''),(1044,'日志导出',501,3,'#','','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2025-04-26 23:28:21','',NULL,''),(1045,'账户解锁',501,4,'#','','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2025-04-26 23:28:22','',NULL,''),(1046,'在线查询',109,1,'#','','','',1,0,'F','0','0','monitor:online:query','#','admin','2025-04-26 23:28:22','',NULL,''),(1047,'批量强退',109,2,'#','','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2025-04-26 23:28:23','',NULL,''),(1048,'单条强退',109,3,'#','','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2025-04-26 23:28:24','',NULL,''),(1049,'任务查询',110,1,'#','','','',1,0,'F','0','0','monitor:job:query','#','admin','2025-04-26 23:28:25','',NULL,''),(1050,'任务新增',110,2,'#','','','',1,0,'F','0','0','monitor:job:add','#','admin','2025-04-26 23:28:25','',NULL,''),(1051,'任务修改',110,3,'#','','','',1,0,'F','0','0','monitor:job:edit','#','admin','2025-04-26 23:28:27','',NULL,''),(1052,'任务删除',110,4,'#','','','',1,0,'F','0','0','monitor:job:remove','#','admin','2025-04-26 23:28:28','',NULL,''),(1053,'状态修改',110,5,'#','','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2025-04-26 23:28:31','',NULL,''),(1054,'任务导出',110,6,'#','','','',1,0,'F','0','0','monitor:job:export','#','admin','2025-04-26 23:28:32','',NULL,''),(1055,'生成查询',116,1,'#','','','',1,0,'F','0','0','tool:gen:query','#','admin','2025-04-26 23:28:32','',NULL,''),(1056,'生成修改',116,2,'#','','','',1,0,'F','0','0','tool:gen:edit','#','admin','2025-04-26 23:28:33','',NULL,''),(1057,'生成删除',116,3,'#','','','',1,0,'F','0','0','tool:gen:remove','#','admin','2025-04-26 23:28:34','',NULL,''),(1058,'导入代码',116,4,'#','','','',1,0,'F','0','0','tool:gen:import','#','admin','2025-04-26 23:28:35','',NULL,''),(1059,'预览代码',116,5,'#','','','',1,0,'F','0','0','tool:gen:preview','#','admin','2025-04-26 23:28:36','',NULL,''),(1060,'生成代码',116,6,'#','','','',1,0,'F','0','0','tool:gen:code','#','admin','2025-04-26 23:28:39','',NULL,''),(2000,'课程管理',0,1,'course','course/course/index',NULL,'',1,0,'C','0','0','course:course:list','课程管理','admin','2025-04-27 01:12:46','admin','2025-04-28 23:36:15','课程管理菜单'),(2001,'课程管理查询',2000,1,'#','',NULL,'',1,0,'F','0','0','course:course:query','#','admin','2025-04-27 01:12:47','',NULL,''),(2002,'课程管理新增',2000,2,'#','',NULL,'',1,0,'F','0','0','course:course:add','#','admin','2025-04-27 01:12:47','',NULL,''),(2003,'课程管理修改',2000,3,'#','',NULL,'',1,0,'F','0','0','course:course:edit','#','admin','2025-04-27 01:12:47','',NULL,''),(2004,'课程管理删除',2000,4,'#','',NULL,'',1,0,'F','0','0','course:course:remove','#','admin','2025-04-27 01:12:47','',NULL,''),(2005,'课程管理导出',2000,5,'#','',NULL,'',1,0,'F','0','0','course:course:export','#','admin','2025-04-27 01:12:47','',NULL,''),(2008,'统计分析',0,1,'statistics',NULL,NULL,'',1,0,'M','0','0',NULL,'dashboard','admin','2025-04-27 16:44:33','',NULL,''),(2009,'客户统计',2008,1,'customer','1',NULL,'',1,0,'C','0','0','','cascader','admin','2025-04-27 16:46:18','admin','2025-04-27 16:48:08',''),(2010,'添加课程',0,1,'course/add','course/course/add',NULL,'',1,0,'C','0','0','','build','admin','2025-04-27 22:07:01','admin','2025-04-28 23:30:47',''),(2017,'菜品管理',0,1,'dish','merchant/dish/index',NULL,'',1,0,'C','0','0','merchant:dish:list','菜品管理','admin','2025-04-28 20:35:47','admin','2025-04-28 23:34:55','菜品管理菜单'),(2018,'菜品管理查询',2017,1,'#','',NULL,'',1,0,'F','0','0','merchant:dish:query','#','admin','2025-04-28 20:35:47','',NULL,''),(2019,'菜品管理新增',2017,2,'#','',NULL,'',1,0,'F','0','0','merchant:dish:add','#','admin','2025-04-28 20:35:47','',NULL,''),(2020,'菜品管理修改',2017,3,'#','',NULL,'',1,0,'F','0','0','merchant:dish:edit','#','admin','2025-04-28 20:35:47','',NULL,''),(2021,'菜品管理删除',2017,4,'#','',NULL,'',1,0,'F','0','0','merchant:dish:remove','#','admin','2025-04-28 20:35:47','',NULL,''),(2022,'菜品管理导出',2017,5,'#','',NULL,'',1,0,'F','0','0','merchant:dish:export','#','admin','2025-04-28 20:35:47','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2',_binary '新版本内容','0','admin','2025-04-26 23:31:19','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1',_binary '维护内容','0','admin','2025-04-26 23:31:19','',NULL,'管理员'),(10,'劳动节放假通知','1',_binary '<p>劳动节放假7天！</p><p><img src=\"/dev-api/profile/upload/2025/04/27/4c48d10ee03c2571e35a0afcd345f8c_20250427185119A001.jpg\"></p>','0','admin','2025-04-27 18:51:22','',NULL,NULL);
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tb_course\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 00:54:48',1160),(101,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"course\",\"className\":\"Course\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"课程 id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"课程编码\",\"columnId\":2,\"columnName\":\"code\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Subject\",\"columnComment\":\"课程学科\",\"columnId\":3,\"columnName\":\"subject\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"subject\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaTyp','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 01:09:15',966),(102,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tb_course\"}',NULL,0,NULL,'2025-04-27 01:09:24',180),(103,'课程管理',5,'com.ruoyi.course.controller.CourseController.export()','POST',1,'admin','研发部门','/course/course/export','127.0.0.1','内网IP','{\"pageSize\":\"10\",\"pageNum\":\"1\"}',NULL,0,NULL,'2025-04-27 01:27:30',747),(104,'课程管理',1,'com.ruoyi.course.controller.CourseController.add()','POST',1,'admin','研发部门','/course/course','127.0.0.1','内网IP','{\"applicablePerson\":\"初中级开发者\",\"code\":\"cp123462\",\"createTime\":\"2025-04-27 01:29:35\",\"id\":7,\"info\":\"若依剑舞\",\"name\":\"若依专题\",\"params\":{},\"price\":199,\"subject\":\"JavaEE\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 01:29:35',149),(105,'课程管理',2,'com.ruoyi.course.controller.CourseController.edit()','PUT',1,'admin','研发部门','/course/course','127.0.0.1','内网IP','{\"applicablePerson\":\"初中级开发者\",\"code\":\"cp123462\",\"createTime\":\"2025-04-27 01:29:35\",\"id\":7,\"info\":\"若依剑舞\",\"name\":\"若依专题\",\"params\":{},\"price\":19,\"subject\":\"JavaEE\",\"updateTime\":\"2025-04-27 01:30:57\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 01:30:57',93),(106,'课程管理',2,'com.ruoyi.course.controller.CourseController.edit()','PUT',1,'admin','研发部门','/course/course','127.0.0.1','内网IP','{\"applicablePerson\":\"初中级开发者\",\"code\":\"cp123462\",\"createTime\":\"2025-04-27 01:29:35\",\"id\":7,\"info\":\"若依剑\",\"name\":\"若依专题\",\"params\":{},\"price\":19,\"subject\":\"JavaEE\",\"updateTime\":\"2025-04-27 01:31:04\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 01:31:05',85),(107,'课程管理',3,'com.ruoyi.course.controller.CourseController.remove()','DELETE',1,'admin','研发部门','/course/course/7','127.0.0.1','内网IP','[7]','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 01:31:27',96),(108,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"dashboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"统计分析\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"ststistics\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 16:36:34',207),(109,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"客户统计\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2006,\"path\":\"customer\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 16:38:34',178),(110,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2007','127.0.0.1','内网IP','2007','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 16:39:47',189),(111,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2006','127.0.0.1','内网IP','2006','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 16:40:09',173),(112,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"dashboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"统计分析\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"statistics\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 16:44:33',176),(113,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"客户统计\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2008,\"path\":\"customer\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 16:46:18',201),(114,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"1\",\"createTime\":\"2025-04-27 16:46:18\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"客户统计\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2008,\"path\":\"customer\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 16:48:08',138),(115,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"course/course/index\",\"createTime\":\"2025-04-27 01:12:46\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"课程管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"course\",\"perms\":\"course:course:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 16:50:32',137),(116,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.add()','POST',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2003,2004,2005,2008,2009],\"params\":{},\"roleId\":100,\"roleKey\":\"research\",\"roleName\":\"课研人员\",\"roleSort\":3,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 16:52:54',458),(117,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"小智\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":100,\"userName\":\"xiaozhi\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 16:54:20',427),(118,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2025-04-26 23:30:56\",\"cssClass\":\"\",\"default\":true,\"dictCode\":1,\"dictLabel\":\"男性\",\"dictSort\":1,\"dictType\":\"sys_user_sex\",\"dictValue\":\"0\",\"isDefault\":\"Y\",\"listClass\":\"\",\"params\":{},\"remark\":\"性别男\",\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 17:22:14',130),(119,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2025-04-26 23:30:57\",\"cssClass\":\"\",\"default\":false,\"dictCode\":2,\"dictLabel\":\"女性\",\"dictSort\":2,\"dictType\":\"sys_user_sex\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"\",\"params\":{},\"remark\":\"性别女\",\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 17:22:24',124),(120,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 16:54:20\",\"delFlag\":\"0\",\"email\":\"\",\"loginDate\":\"2025-04-27 17:02:24\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"小智\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"research\",\"roleName\":\"课研人员\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"xiaozhi\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 17:23:05',477),(121,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.add()','POST',1,'admin','研发部门','/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"学科\",\"dictType\":\"course_subject\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 17:36:27',142),(122,'字典类型',2,'com.ruoyi.web.controller.system.SysDictTypeController.edit()','PUT',1,'admin','研发部门','/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2025-04-27 17:36:27\",\"dictId\":100,\"dictName\":\"学科\",\"dictType\":\"course_subject\",\"params\":{},\"remark\":\"课程学科\",\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 17:37:36',516),(123,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"JavaEE\",\"dictSort\":1,\"dictType\":\"course_subject\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"remark\":\"JavaEE\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:20:04',2012),(124,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"Python+大数据\",\"dictSort\":2,\"dictType\":\"course_subject\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"remark\":\"Python+大数据\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:20:36',143),(125,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"鸿蒙应用开发\",\"dictSort\":3,\"dictType\":\"course_subject\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"remark\":\"鸿蒙应用开发\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:21:13',154),(126,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"course\",\"className\":\"Course\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"课程 id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-04-27 01:09:14\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"课程编码\",\"columnId\":2,\"columnName\":\"code\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-04-27 01:09:14\",\"usableColumn\":false},{\"capJavaField\":\"Subject\",\"columnComment\":\"课程学科\",\"columnId\":3,\"columnName\":\"subject\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:48\",\"dictType\":\"course_subject\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"subject\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-04-27 01:09:14\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:22:41',1175),(127,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tb_course\"}',NULL,0,NULL,'2025-04-27 18:22:47',235),(128,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.add()','POST',1,'admin','研发部门','/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"适用人群\",\"dictType\":\"people_crowd\",\"params\":{},\"remark\":\"适用人群\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:33:31',212),(129,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"小白学员\",\"dictSort\":1,\"dictType\":\"people_crowd\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"remark\":\"小白学员\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:35:20',143),(130,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"初级开发者\",\"dictSort\":2,\"dictType\":\"people_crowd\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"remark\":\"初级开发者\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:35:43',146),(131,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"course\",\"className\":\"Course\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"课程 id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-04-27 18:22:40\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"课程编码\",\"columnId\":2,\"columnName\":\"code\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-04-27 18:22:40\",\"usableColumn\":false},{\"capJavaField\":\"Subject\",\"columnComment\":\"课程学科\",\"columnId\":3,\"columnName\":\"subject\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:48\",\"dictType\":\"course_subject\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"subject\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-04-27 18:22:40\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 00:54:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:36:30',985),(132,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tb_course\"}',NULL,0,NULL,'2025-04-27 18:36:38',77),(133,'参数管理',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','研发部门','/system/config','127.0.0.1','内网IP','{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"N\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2025-04-26 23:31:11\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:44:12',183),(134,'参数管理',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','研发部门','/system/config','127.0.0.1','内网IP','{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2025-04-26 23:31:11\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2025-04-27 18:44:12\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:44:59',194),(135,'参数管理',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','研发部门','/system/config','127.0.0.1','内网IP','{\"configId\":1,\"configKey\":\"sys.index.skinName\",\"configName\":\"主框架页-默认皮肤样式名称\",\"configType\":\"Y\",\"configValue\":\"skin-purple\",\"createBy\":\"admin\",\"createTime\":\"2025-04-26 23:31:10\",\"params\":{},\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:46:19',187),(136,'参数管理',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','研发部门','/system/config','127.0.0.1','内网IP','{\"configId\":1,\"configKey\":\"sys.index.skinName\",\"configName\":\"主框架页-默认皮肤样式名称\",\"configType\":\"Y\",\"configValue\":\"skin-purple\",\"createBy\":\"admin\",\"createTime\":\"2025-04-26 23:31:10\",\"params\":{},\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"updateBy\":\"admin\",\"updateTime\":\"2025-04-27 18:46:19\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:47:27',186),(137,'参数管理',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','研发部门','/system/config','127.0.0.1','内网IP','{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2025-04-26 23:31:12\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:47:39',193),(138,'通知公告',1,'com.ruoyi.web.controller.system.SysNoticeController.add()','POST',1,'admin','研发部门','/system/notice','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"noticeContent\":\"<p>劳动节放假7天！</p><p><img src=\\\"/dev-api/profile/upload/2025/04/27/4c48d10ee03c2571e35a0afcd345f8c_20250427185119A001.jpg\\\"></p>\",\"noticeTitle\":\"劳动节放假通知\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:51:22',265),(139,'登录日志',9,'com.ruoyi.web.controller.monitor.SysLogininforController.clean()','DELETE',1,'admin','研发部门','/monitor/logininfor/clean','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 18:57:50',110),(140,'定时任务',1,'com.ruoyi.quartz.controller.SysJobController.add()','POST',1,'admin','研发部门','/monitor/job','127.0.0.1','内网IP','{\"concurrent\":\"1\",\"createBy\":\"admin\",\"cronExpression\":\"0/5 * * * * ?\",\"invokeTarget\":\"myTask.showTime()\",\"jobGroup\":\"DEFAULT\",\"jobId\":100,\"jobName\":\"输出时间\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2025-04-27 19:40:45\",\"params\":{},\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 19:40:43',345),(141,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()','PUT',1,'admin','研发部门','/monitor/job/changeStatus','127.0.0.1','内网IP','{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 19:40:52',283),(142,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()','PUT',1,'admin','研发部门','/monitor/job/changeStatus','127.0.0.1','内网IP','{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 19:41:34',266),(143,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()','PUT',1,'admin','研发部门','/monitor/job/changeStatus','127.0.0.1','内网IP','{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 19:42:38',329),(144,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.edit()','PUT',1,'admin','研发部门','/monitor/job','127.0.0.1','内网IP','{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 19:40:43\",\"cronExpression\":\"0/5 * * * * ?\",\"invokeTarget\":\"myTask.showTime()\",\"jobGroup\":\"DEFAULT\",\"jobId\":100,\"jobName\":\"输出时间\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2025-04-27 19:43:25\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 19:43:25',239),(145,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()','PUT',1,'admin','研发部门','/monitor/job/changeStatus','127.0.0.1','内网IP','{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 19:43:28',264),(146,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()','PUT',1,'admin','研发部门','/monitor/job/changeStatus','127.0.0.1','内网IP','{\"jobId\":2,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 19:55:08',244),(147,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.edit()','PUT',1,'admin','研发部门','/monitor/job','127.0.0.1','内网IP','{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2025-04-26 23:31:14\",\"cronExpression\":\"0/15 * * * * ?\",\"invokeTarget\":\"ryTask.ryParams(\'ry\')\",\"jobGroup\":\"DEFAULT\",\"jobId\":2,\"jobName\":\"系统默认（有参）\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2025-04-27 19:55:30\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 19:55:21',234),(148,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()','PUT',1,'admin','研发部门','/monitor/job/changeStatus','127.0.0.1','内网IP','{\"jobId\":2,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 19:55:45',265),(149,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"course/course/add\",\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加课程\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"course/add\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 22:07:01',191),(150,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sys_dept\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 22:29:34',1384),(151,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"dept\",\"className\":\"SysDept\",\"columns\":[{\"capJavaField\":\"DeptId\",\"columnComment\":\"部门id\",\"columnId\":10,\"columnName\":\"dept_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 22:29:32\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deptId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父部门id\",\"columnId\":11,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 22:29:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":12,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 22:29:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeptName\",\"columnComment\":\"部门名称\",\"columnId\":13,\"columnName\":\"dept_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-27 22:29:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"java','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-27 22:33:02',1356),(152,'代码生成',6,'com.sky.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tb_dish,tb_dish_flavor\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 19:49:08',83),(153,'代码生成',2,'com.sky.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"dish\",\"className\":\"Dish\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"菜品名称\",\"columnId\":25,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"售价\",\"columnId\":26,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"price\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Image\",\"columnComment\":\"图片\",\"columnId\":27,\"columnName\":\"image\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"image\",\"javaType\":\"Str','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 19:52:12',29),(154,'字典类型',1,'com.sky.web.controller.system.SysDictTypeController.add()','POST',1,'admin','研发部门','/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"售卖状态\",\"dictType\":\"dish_status\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 19:53:19',12),(155,'字典数据',1,'com.sky.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"停售\",\"dictSort\":1,\"dictType\":\"dish_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 19:53:53',11),(156,'字典数据',1,'com.sky.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"启售\",\"dictSort\":2,\"dictType\":\"dish_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 19:54:12',10),(157,'代码生成',2,'com.sky.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"dish\",\"className\":\"Dish\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 19:52:12\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"菜品名称\",\"columnId\":25,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 19:52:12\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"售价\",\"columnId\":26,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"price\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 19:52:12\",\"usableColumn\":false},{\"capJavaField\":\"Image\",\"columnComment\":\"图片\",\"columnId\":27,\"columnName\":\"image\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 19:54:53',23),(158,'代码生成',2,'com.sky.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"dish\",\"className\":\"Dish\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 19:54:53\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"菜品名称\",\"columnId\":25,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 19:54:53\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"售价\",\"columnId\":26,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"price\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 19:54:53\",\"usableColumn\":false},{\"capJavaField\":\"Image\",\"columnComment\":\"图片\",\"columnId\":27,\"columnName\":\"image\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 20:03:13',20),(159,'代码生成',2,'com.sky.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"dish\",\"className\":\"Dish\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 20:03:13\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"菜品名称\",\"columnId\":25,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 20:03:13\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"售价\",\"columnId\":26,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"price\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 20:03:13\",\"usableColumn\":false},{\"capJavaField\":\"Image\",\"columnComment\":\"图片\",\"columnId\":27,\"columnName\":\"image\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 20:05:38',16),(160,'代码生成',2,'com.sky.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"flavor\",\"className\":\"DishFlavor\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":32,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DishId\",\"columnComment\":\"菜品\",\"columnId\":33,\"columnName\":\"dish_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dishId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"口味名称\",\"columnId\":34,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Value\",\"columnComment\":\"口味列表\",\"columnId\":35,\"columnName\":\"value\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"value\",\"javaType\":\"String\",\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 20:06:28',13),(161,'代码生成',8,'com.sky.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tb_dish\"}',NULL,0,NULL,'2025-04-28 20:06:37',146),(162,'菜单管理',2,'com.sky.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"merchant/dish/index\",\"createTime\":\"2025-04-28 20:08:20\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2011,\"menuName\":\"菜品管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"dish\",\"perms\":\"merchant:dish:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 20:29:49',24),(163,'代码生成',2,'com.sky.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"dish\",\"className\":\"Dish\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 20:05:38\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"菜品名称\",\"columnId\":25,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 20:05:38\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"售价\",\"columnId\":26,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"price\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-04-28 20:05:38\",\"usableColumn\":false},{\"capJavaField\":\"Image\",\"columnComment\":\"图片\",\"columnId\":27,\"columnName\":\"image\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-04-28 19:49:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 20:32:23',40),(164,'代码生成',8,'com.sky.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tb_dish\"}',NULL,0,NULL,'2025-04-28 20:32:34',31),(165,'菜品管理',1,'com.sky.merchant.controller.DishController.add()','POST',1,'admin','研发部门','/merchant/dish','127.0.0.1','内网IP','{\"createTime\":\"2025-04-28 20:40:21\",\"description\":\"好处不贵\",\"dishFlavorList\":[{\"dishId\":111,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"}],\"id\":111,\"image\":\"/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428203913A001.jpg\",\"name\":\"毛血旺\",\"params\":{},\"price\":199,\"status\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 20:40:21',94),(166,'菜品管理',2,'com.sky.merchant.controller.DishController.edit()','PUT',1,'admin','研发部门','/merchant/dish','127.0.0.1','内网IP','{\"createTime\":\"2025-04-28 20:40:21\",\"description\":\"好处不贵\",\"dishFlavorList\":[{\"dishId\":111,\"id\":198,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"}],\"id\":111,\"image\":\"/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428203913A001.jpg\",\"name\":\"毛血旺\",\"params\":{},\"price\":199,\"status\":1,\"updateTime\":\"2025-04-28 20:42:47\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 20:42:47',13),(167,'菜品管理',1,'com.sky.merchant.controller.DishController.add()','POST',1,'admin','研发部门','/merchant/dish','127.0.0.1','内网IP','{\"createTime\":\"2025-04-28 22:41:29\",\"description\":\"111\",\"dishFlavorList\":[{\"dishId\":112,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"不辣\\\"]\"}],\"id\":112,\"image\":\"/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428224120A002.jpg\",\"name\":\"鱼香肉丝\",\"params\":{},\"price\":198,\"status\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 22:41:29',32),(168,'菜品管理',2,'com.sky.merchant.controller.DishController.edit()','PUT',1,'admin','研发部门','/merchant/dish','127.0.0.1','内网IP','{\"createTime\":\"2025-04-28 22:41:29\",\"description\":\"111\",\"dishFlavorList\":[{\"dishId\":112,\"id\":199,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要香菜\\\"]\"}],\"id\":112,\"image\":\"/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428224120A002.jpg\",\"name\":\"鱼香肉丝\",\"params\":{},\"price\":198,\"status\":0,\"updateTime\":\"2025-04-28 22:53:55\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 22:53:55',17),(169,'菜品管理',2,'com.sky.merchant.controller.DishController.edit()','PUT',1,'admin','研发部门','/merchant/dish','127.0.0.1','内网IP','{\"createTime\":\"2025-04-28 20:40:21\",\"description\":\"好处不贵\",\"dishFlavorList\":[{\"dishId\":111,\"id\":198,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"}],\"id\":111,\"image\":\"/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428203913A001.jpg\",\"name\":\"毛血旺\",\"params\":{},\"price\":199,\"status\":1,\"updateTime\":\"2025-04-28 22:54:41\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 22:54:41',13),(170,'菜品管理',2,'com.sky.merchant.controller.DishController.edit()','PUT',1,'admin','研发部门','/merchant/dish','127.0.0.1','内网IP','{\"createTime\":\"2025-04-28 20:40:21\",\"description\":\"好处不贵\",\"dishFlavorList\":[{\"dishId\":111,\"id\":198,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\",\\\"不辣\\\"]\"}],\"id\":111,\"image\":\"/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428203913A001.jpg\",\"name\":\"毛血旺\",\"params\":{},\"price\":199,\"status\":1,\"updateTime\":\"2025-04-28 22:55:01\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 22:55:01',10),(171,'菜品管理',2,'com.sky.merchant.controller.DishController.edit()','PUT',1,'admin','研发部门','/merchant/dish','127.0.0.1','内网IP','{\"createTime\":\"2025-04-28 20:40:21\",\"description\":\"好处不贵\",\"dishFlavorList\":[{\"dishId\":111,\"id\":198,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"不辣\\\",\\\"微辣\\\"]\"}],\"id\":111,\"image\":\"/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428203913A001.jpg\",\"name\":\"毛血旺\",\"params\":{},\"price\":199,\"status\":1,\"updateTime\":\"2025-04-28 23:00:08\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:00:08',12),(172,'菜品管理',2,'com.sky.merchant.controller.DishController.edit()','PUT',1,'admin','研发部门','/merchant/dish','127.0.0.1','内网IP','{\"createTime\":\"2025-04-28 20:40:21\",\"description\":\"好处不贵\",\"dishFlavorList\":[{\"dishId\":111,\"id\":198,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\"]\"}],\"id\":111,\"image\":\"/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428203913A001.jpg\",\"name\":\"毛血旺\",\"params\":{},\"price\":199,\"status\":1,\"updateTime\":\"2025-04-28 23:00:17\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:00:17',11),(173,'菜品管理',2,'com.sky.merchant.controller.DishController.edit()','PUT',1,'admin','研发部门','/merchant/dish','127.0.0.1','内网IP','{\"createTime\":\"2025-04-28 20:40:21\",\"description\":\"好处不贵\",\"dishFlavorList\":[{\"dishId\":111,\"id\":198,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\"]\"}],\"id\":111,\"image\":\"/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428203913A001.jpg\",\"name\":\"毛血旺\",\"params\":{},\"price\":199,\"status\":1,\"updateTime\":\"2025-04-28 23:01:16\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:01:16',11),(174,'菜品管理',2,'com.sky.merchant.controller.DishController.edit()','PUT',1,'admin','研发部门','/merchant/dish','127.0.0.1','内网IP','{\"createTime\":\"2025-04-28 20:40:21\",\"description\":\"好处不贵\",\"dishFlavorList\":[{\"dishId\":111,\"id\":198,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"}],\"id\":111,\"image\":\"/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428203913A001.jpg\",\"name\":\"毛血旺\",\"params\":{},\"price\":199,\"status\":1,\"updateTime\":\"2025-04-28 23:04:38\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:04:38',14),(175,'菜单管理',2,'com.sky.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"course/course/index\",\"createTime\":\"2025-04-27 01:12:46\",\"icon\":\"eye-open\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"课程管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"course\",\"perms\":\"course:course:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:28:56',19),(176,'菜单管理',2,'com.sky.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"course/course/add\",\"createTime\":\"2025-04-27 22:07:01\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2010,\"menuName\":\"添加课程\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"course/add\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:29:49',12),(177,'菜单管理',2,'com.sky.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"course/course/add\",\"createTime\":\"2025-04-27 22:07:01\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2010,\"menuName\":\"添加课程\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"course/add\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:30:47',79),(178,'菜单管理',2,'com.sky.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"merchant/dish/index\",\"createTime\":\"2025-04-28 20:35:47\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2017,\"menuName\":\"菜品管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"dish\",\"perms\":\"merchant:dish:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:31:36',90),(179,'菜单管理',2,'com.sky.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"merchant/dish/index\",\"createTime\":\"2025-04-28 20:35:47\",\"icon\":\"菜品管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2017,\"menuName\":\"菜品管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"dish\",\"perms\":\"merchant:dish:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:34:55',7),(180,'菜单管理',2,'com.sky.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"course/course/index\",\"createTime\":\"2025-04-27 01:12:46\",\"icon\":\"课程管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"课程管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"course\",\"perms\":\"course:course:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:36:15',9),(181,'参数管理',2,'com.sky.web.controller.system.SysConfigController.edit()','PUT',1,'admin','研发部门','/system/config','127.0.0.1','内网IP','{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2025-04-26 23:31:11\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2025-04-27 18:44:59\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:40:14',11),(182,'角色管理',1,'com.sky.web.controller.system.SysRoleController.add()','POST',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2017,2018,2019,2020,2021,2022],\"params\":{},\"roleId\":101,\"roleKey\":\"merchant\",\"roleName\":\"商家员工\",\"roleSort\":4,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:43:53',20),(183,'用户管理',1,'com.sky.web.controller.system.SysUserController.add()','POST',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"波妞\",\"params\":{},\"postIds\":[],\"roleIds\":[101],\"status\":\"0\",\"userId\":101,\"userName\":\"boniu\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-04-28 23:44:37',101);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2025-04-26 23:25:41','',NULL,''),(2,'se','项目经理',2,'0','admin','2025-04-26 23:25:43','',NULL,''),(3,'hr','人力资源',3,'0','admin','2025-04-26 23:25:43','',NULL,''),(4,'user','普通员工',4,'0','admin','2025-04-26 23:25:45','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2025-04-26 23:25:55','',NULL,'超级管理员'),(2,'普通角色','common',2,'2',1,1,'0','0','admin','2025-04-26 23:25:57','',NULL,'普通角色'),(100,'课研人员','research',3,'1',1,1,'0','0','admin','2025-04-27 16:52:53','',NULL,NULL),(101,'商家员工','merchant',4,'1',1,1,'0','0','admin','2025-04-28 23:43:53','',NULL,NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,117),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060),(100,2000),(100,2001),(100,2002),(100,2003),(100,2004),(100,2005),(100,2008),(100,2009),(101,2017),(101,2018),(101,2019),(101,2020),(101,2021),(101,2022);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2025-04-28 23:40:32','admin','2025-04-26 23:25:36','','2025-04-28 23:40:32','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2025-04-26 23:25:38','admin','2025-04-26 23:25:38','',NULL,'测试员'),(100,NULL,'xiaozhi','小智','00','','','0','','$2a$10$3n./jk84R/gIYBIyGJ21SOBxcybDcUggbZKjugViZP/26rp4Zixdm','0','0','127.0.0.1','2025-04-27 17:02:24','admin','2025-04-27 16:54:20','admin','2025-04-27 17:23:05',NULL),(101,NULL,'boniu','波妞','00','','','0','','$2a$10$Axu4AaaFbuRDbliyKj9nzOghp8/wIY9WxpTJ/E9NBY7aCxC3g0ehO','0','0','127.0.0.1','2025-04-28 23:44:52','admin','2025-04-28 23:44:37','','2025-04-28 23:44:51',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2),(100,100),(101,101);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_course`
--

DROP TABLE IF EXISTS `tb_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_course` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `code` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '课程编码',
  `subject` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '课程学科',
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '课程名称',
  `price` int DEFAULT NULL COMMENT '价格（元）',
  `applicable_person` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '适用人群',
  `info` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '课程介绍',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='课程管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_course`
--

LOCK TABLES `tb_course` WRITE;
/*!40000 ALTER TABLE `tb_course` DISABLE KEYS */;
INSERT INTO `tb_course` VALUES (1,'cp123456','0','JavaSE基础',199,'0','JavaSE基础','2024-04-20 09:57:35','2024-04-20 09:57:35'),(2,'cp123457','0','JavaWeb',188,'1','JavaWeb','2024-04-20 09:57:35','2024-04-20 09:57:35'),(3,'cp123458','1','Python入门',555,'0','Python入门','2024-04-20 09:57:35','2024-04-20 09:57:35'),(4,'cp123459','1','PythonWeb',88,'1','PythonWeb','2024-04-20 09:57:35','2024-04-20 09:57:35'),(5,'cp123460','2','鸿蒙入门',99,'0','鸿蒙入门','2024-04-20 09:57:35','2024-04-20 09:57:35'),(6,'cp123461','2','鸿蒙商城实战',59,'1','鸿蒙商城实战','2024-04-20 09:57:35','2024-04-20 09:57:35');
/*!40000 ALTER TABLE `tb_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dish`
--

DROP TABLE IF EXISTS `tb_dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dish` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '菜品名称',
  `price` decimal(10,2) DEFAULT NULL COMMENT '菜品价格',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '图片',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '描述信息',
  `status` int DEFAULT '1' COMMENT '0 停售 1 起售',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_dish_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='菜品管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dish`
--

LOCK TABLES `tb_dish` WRITE;
/*!40000 ALTER TABLE `tb_dish` DISABLE KEYS */;
INSERT INTO `tb_dish` VALUES (30,'干锅牛蛙',38.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/56395e06-6d86-4d16-8d0e-18b2da085b8a.jpg','干锅牛蛙',1,'2023-04-13 23:14:12','2023-04-16 22:04:25'),(50,'馒头',1.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/dadaf543-b305-4139-9147-4e9f19f4c84c.jpg','优质面粉',1,'2022-06-10 09:34:28','2023-04-14 09:34:45'),(74,'黑金鲍鱼',68.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/833cf1ae-0835-4278-a374-00395cd4cbe9.jpg','新西兰黑金鲍鱼',1,'2023-02-16 09:48:28','2023-04-13 22:44:08'),(75,'波士顿龙虾',128.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/833cf1ae-0835-4278-a374-00395cd4cbe9.jpg','2斤重 波斯顿龙虾',1,'2023-02-16 09:50:06','2024-05-09 09:53:58'),(76,'香辣烤乌江鱼3斤',108.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/833cf1ae-0835-4278-a374-00395cd4cbe9.jpg','香辣烤乌江鱼3斤',1,'2023-02-16 09:52:30','2023-04-13 22:41:29'),(77,'香辣烤鱼3斤',78.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/dadaf543-b305-4139-9147-4e9f19f4c84c.jpg','香辣烤鱼3斤 草鱼',1,'2023-02-17 15:27:02','2023-04-13 22:39:20'),(80,'宽粉',8.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/c04d2598-0b96-44d7-8ea9-72792b9be66a.jpg','宽粉',0,'2023-04-13 22:48:57','2023-04-15 13:45:03'),(81,'青笋',10.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/3685a52b-46ca-4e2a-8fd2-d90205fa9405.jpg','青笋',1,'2023-04-13 22:49:21','2023-04-13 22:49:21'),(82,'鲜豆皮',8.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/c04d2598-0b96-44d7-8ea9-72792b9be66a.jpg','鲜豆皮',1,'2023-04-13 22:49:52','2023-04-13 22:49:52'),(83,'娃娃菜',6.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/0bf2be55-5ab3-4e4c-8b1c-98e17b515a7a.jpg','娃娃菜',1,'2023-04-13 22:50:26','2023-04-13 22:50:26'),(84,'土豆片',6.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/56395e06-6d86-4d16-8d0e-18b2da085b8a.jpg','土豆片',1,'2023-04-13 22:50:59','2023-04-13 22:50:59'),(85,'鱼豆腐',6.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/76e6258a-1df9-4561-b814-39cb9dc56e5e.jpg','鱼豆腐',1,'2023-04-13 22:53:07','2024-04-29 21:42:07'),(86,'重庆毛血旺',58.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/cc5e7eb5-c9f4-48c1-80e9-a167ae100086.jpg','重庆毛血旺',1,'2023-04-13 22:56:18','2023-04-13 22:56:18'),(87,'重庆辣子鸡',48.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/cc5e7eb5-c9f4-48c1-80e9-a167ae100086.jpg','重庆辣子鸡',1,'2023-04-13 22:56:57','2023-04-13 22:56:57'),(88,'渝乡沸腾鱼片',79.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/833cf1ae-0835-4278-a374-00395cd4cbe9.jpg','渝乡沸腾鱼片 草鱼',1,'2023-04-13 22:58:29','2023-04-13 22:58:29'),(89,'皮蛋豆腐',28.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/df727356-66ba-465c-9da2-c62923d4a1e8.jpg','皮蛋豆腐 鸭蛋 松花江皮蛋',1,'2023-04-13 22:59:45','2023-04-13 22:59:45'),(90,'果仁菠菜',18.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/ca875acb-f103-405f-8379-a6a4c309d6f8.jpg','果仁菠菜 花生 菠菜',1,'2023-04-13 23:01:32','2023-04-13 23:01:32'),(91,'蒜泥黄瓜',12.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/ca875acb-f103-405f-8379-a6a4c309d6f8.jpg','蒜泥黄瓜 大蒜 剁椒',1,'2023-04-13 23:02:32','2023-04-13 23:02:32'),(92,'老醋花生',12.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/56395e06-6d86-4d16-8d0e-18b2da085b8a.jpg','老醋花生 老陈醋',1,'2023-04-13 23:03:15','2023-04-13 23:03:15'),(93,'干锅花菜',28.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/3685a52b-46ca-4e2a-8fd2-d90205fa9405.jpg','干锅花菜',1,'2023-04-13 23:10:32','2023-04-13 23:10:32'),(94,'干锅千页豆腐',30.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/76e6258a-1df9-4561-b814-39cb9dc56e5e.jpg','干锅千页豆腐',1,'2023-04-13 23:11:08','2023-04-13 23:11:08'),(95,'干锅鸡胗',38.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/f805ac90-3c62-4795-ad34-d22f83af78ae.jpg','干锅鸡胗',1,'2023-04-13 23:11:46','2023-04-13 23:11:46'),(96,'干锅藕片',28.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/dadaf543-b305-4139-9147-4e9f19f4c84c.jpg','干锅藕片',1,'2023-04-13 23:13:18','2023-04-13 23:13:18'),(98,'扬州炒饭',12.00,'https://yjy-rjwm-oss.oss-cn-hangzhou.aliyuncs.com/fb11b202-c8f5-4d9e-9e68-d1d3f13bb3f6.jpg','扬州炒饭',1,'2023-04-13 23:17:52','2023-04-16 22:04:29'),(111,'毛血旺',199.00,'/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428203913A001.jpg','好处不贵',1,'2025-04-28 20:40:21','2025-04-28 23:04:39'),(112,'鱼香肉丝',198.00,'/profile/upload/2025/04/28/0262170fdac03508350f94f07f1639a_20250428224120A002.jpg','111',0,'2025-04-28 22:41:29','2025-04-28 22:53:56');
/*!40000 ALTER TABLE `tb_dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dish_flavor`
--

DROP TABLE IF EXISTS `tb_dish_flavor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dish_flavor` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dish_id` bigint NOT NULL COMMENT '菜品',
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '口味名称',
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '口味列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='菜品口味关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dish_flavor`
--

LOCK TABLES `tb_dish_flavor` WRITE;
/*!40000 ALTER TABLE `tb_dish_flavor` DISABLE KEYS */;
INSERT INTO `tb_dish_flavor` VALUES (1,63,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(111,63,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(112,60,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(113,60,'甜味','[\"无糖\",\"少糖\",\"半糖\",\"多糖\"]'),(114,57,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(115,57,'辣度','[\"不辣\",\"微辣\",\"中辣\"]'),(116,56,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(117,54,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(118,52,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(119,52,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(122,73,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(136,77,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(137,77,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(138,76,'辣度','[\"微辣\",\"中辣\"]'),(139,76,'忌口','[\"不要葱\",\"不要香菜\",\"不要辣\"]'),(140,75,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(141,75,'辣度','[\"不辣\",\"中辣\",\"重辣\"]'),(142,74,'忌口','[\"不要葱\",\"不要蒜\"]'),(143,74,'甜味','[\"无糖\",\"少糖\",\"半糖\"]'),(144,86,'辣度','[\"微辣\",\"中辣\",\"重辣\"]'),(145,87,'辣度','[\"微辣\",\"中辣\",\"重辣\"]'),(146,88,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(147,88,'辣度','[\"微辣\",\"中辣\"]'),(148,89,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(149,89,'甜味','[\"无糖\",\"少糖\"]'),(150,90,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(151,90,'辣度','[\"不辣\",\"微辣\"]'),(152,91,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(153,91,'辣度','[\"不辣\",\"微辣\"]'),(154,92,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(155,51,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(156,51,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(157,72,'辣度','[\"微辣\"]'),(159,53,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(160,53,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(161,93,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(162,93,'辣度','[\"微辣\",\"中辣\"]'),(163,94,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(164,94,'辣度','[\"不辣\",\"微辣\"]'),(165,95,'辣度','[\"微辣\",\"中辣\"]'),(166,96,'辣度','[\"微辣\",\"中辣\"]'),(167,97,'忌口','[\"不要蒜\",\"不要香菜\"]'),(168,97,'辣度','[\"微辣\",\"中辣\"]'),(169,67,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(170,66,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(172,65,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(182,85,'甜味','[\"全糖\",\"半糖\",\"少糖\"]'),(198,111,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(199,112,'忌口','[\"不要香菜\"]');
/*!40000 ALTER TABLE `tb_dish_flavor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-29  1:21:38
