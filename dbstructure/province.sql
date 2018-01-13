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
# Table structure for table province
#

CREATE TABLE `province` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Dumping data for table province
#

INSERT INTO `province` VALUES (1,'linux运维');
INSERT INTO `province` VALUES (2,'linux开发');
INSERT INTO `province` VALUES (3,'AI');
INSERT INTO `province` VALUES (4,'大数据');

/*!40101 SET NAMES latin1 */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
