# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.21)
# Database: spds_db
# Generation Time: 2018-04-10 20:15:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table driver_routes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `driver_routes`;

CREATE TABLE `driver_routes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromLocation` varchar(300) DEFAULT NULL,
  `fromLatitude` varchar(300) DEFAULT NULL,
  `fromLongitude` varchar(300) DEFAULT NULL,
  `toLocation` varchar(300) DEFAULT NULL,
  `toLatitude` varchar(300) DEFAULT NULL,
  `toLongitude` varchar(300) DEFAULT NULL,
  `frequency` varchar(300) DEFAULT NULL,
  `time` varchar(300) DEFAULT NULL,
  `distance` varchar(300) DEFAULT NULL,
  `isEnabled` varchar(300) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `driver_routes` WRITE;
/*!40000 ALTER TABLE `driver_routes` DISABLE KEYS */;

INSERT INTO `driver_routes` (`id`, `fromLocation`, `fromLatitude`, `fromLongitude`, `toLocation`, `toLatitude`, `toLongitude`, `frequency`, `time`, `distance`, `isEnabled`, `userId`)
VALUES
	(58,'Malabe','6.9060787','79.96962769999999','Orugodawatta','6.945244499999998','79.881483','Daily','10:30','20 km','false',1),
	(59,'Gampaha','7.0873101','80.01436559999999','Kaduwela','6.9308305','79.9842178','Daily','10:30','20 km','false',1),
	(60,'Malabe','6.9060787','79.96962769999999','Kaduwela','6.9308305','79.9842178','Daily','1:15','20 km','false',1),
	(61,'Malabe','6.9060787','79.96962769999999','Orugodawatta','6.945244499999998','79.881483','One Time Trip','12:00','20 km','false',1);

/*!40000 ALTER TABLE `driver_routes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table driver_waypoints
# ------------------------------------------------------------

DROP TABLE IF EXISTS `driver_waypoints`;

CREATE TABLE `driver_waypoints` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `routeId` int(11) DEFAULT NULL,
  `location` varchar(300) DEFAULT NULL,
  `latitude` varchar(300) DEFAULT NULL,
  `longitude` varchar(300) DEFAULT NULL,
  `waypointPosition` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `driver_waypoints` WRITE;
/*!40000 ALTER TABLE `driver_waypoints` DISABLE KEYS */;

INSERT INTO `driver_waypoints` (`id`, `routeId`, `location`, `latitude`, `longitude`, `waypointPosition`)
VALUES
	(17,33,'location data3','latitude data3','longitude data3',3),
	(18,33,'location data','latitude data','longitude data',1),
	(19,33,'location data2','latitude data2','longitude data2',2),
	(20,47,'location data','latitude data','longitude data',1),
	(21,47,'location data2','latitude data2','longitude data2',2),
	(22,47,'location data3','latitude data3','longitude data3',3),
	(23,48,'location data','latitude data','longitude data',1),
	(24,48,'location data3','latitude data3','longitude data3',3),
	(25,48,'location data2','latitude data2','longitude data2',2),
	(26,49,'location data3','latitude data3','longitude data3',3),
	(27,49,'location data','latitude data','longitude data',1),
	(28,49,'location data2','latitude data2','longitude data2',2),
	(29,50,'location data','latitude data','longitude data',1),
	(30,50,'location data2','latitude data2','longitude data2',2),
	(31,50,'location data3','latitude data3','longitude data3',3),
	(32,51,'location data3','latitude data3','longitude data3',3),
	(33,51,'location data','latitude data','longitude data',1),
	(34,51,'location data2','latitude data2','longitude data2',2),
	(35,52,'location data3','latitude data3','longitude data3',3),
	(36,52,'location data2','latitude data2','longitude data2',2),
	(37,52,'location data','latitude data','longitude data',1),
	(38,53,'location data3','latitude data3','longitude data3',3),
	(39,53,'location data','latitude data','longitude data',1),
	(40,53,'location data2','latitude data2','longitude data2',2);

/*!40000 ALTER TABLE `driver_waypoints` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(200) DEFAULT NULL,
  `lastName` varchar(200) DEFAULT NULL,
  `contactNumber` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `nicNumber` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `firstName`, `lastName`, `contactNumber`, `email`, `password`, `nicNumber`, `gender`)
VALUES
	(1,'Sameera','Chandrasena','0170589523','sam@gmail.com','123123123',NULL,NULL),
	(19,'asdsad','sadasd','21312321321','aseni@gmail.com','123','we’d sdfsdfsd','Male'),
	(27,'dsadsa','Assad','123','sameera@gmail.com','12','12312','Female');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
