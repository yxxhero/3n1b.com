# MySQL-Front 3.2  (Build 14.8)

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: redekuai_development
# ------------------------------------------------------
# Server version 5.0.18-nt

/*!40101 SET NAMES utf8 */;

#
# Table structure for table college
#
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `pid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Dumping data for table college
#

INSERT INTO `college` (name,pid) VALUES ('网站运维',1);
INSERT INTO `college` (name,pid) VALUES ('数据库运维',1);
INSERT INTO `college` (name,pid) VALUES ('安全运维',1);
INSERT INTO `college` (name,pid) VALUES ('python',2);
INSERT INTO `college` (name,pid) VALUES ('c++',2);
INSERT INTO `college` (name,pid) VALUES ('php',2);
INSERT INTO `college` (name,pid) VALUES ('golang',2);
INSERT INTO `college` (name,pid) VALUES ('bash',2);
INSERT INTO `college` (name,pid) VALUES ('图像识别',3);
INSERT INTO `college` (name,pid) VALUES ('自然语言',3);
INSERT INTO `college` (name,pid) VALUES ('自动驾驶',3);
INSERT INTO `college` (name,pid) VALUES ('大数据开发',4);
INSERT INTO `college` (name,pid) VALUES ('大数据运维',4);

/*!40101 SET NAMES latin1 */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
