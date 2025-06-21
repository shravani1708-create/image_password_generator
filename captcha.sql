/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.6.35-log : Database - captcha
*********************************************************************
Server version : 5.6.35-log
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `captcha`;

USE `captcha`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `downloadfile` */

DROP TABLE IF EXISTS `downloadfile`;

CREATE TABLE `downloadfile` (
  `iddownloads` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uploadfilename` varchar(45) NOT NULL DEFAULT '',
  `name` varchar(45) NOT NULL DEFAULT '',
  `time` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`iddownloads`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `downloadfile` */

/*Table structure for table `fileupload` */

DROP TABLE IF EXISTS `fileupload`;

CREATE TABLE `fileupload` (
  `idfile` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uploadfilename` varchar(45) NOT NULL DEFAULT '',
  `file` longblob NOT NULL,
  `owner` varchar(45) NOT NULL DEFAULT '',
  `x1` varchar(10) NOT NULL DEFAULT '',
  `y1` varchar(10) NOT NULL DEFAULT '',
  `x2` varchar(10) NOT NULL DEFAULT '',
  `y2` varchar(10) NOT NULL DEFAULT '',
  `time` varchar(45) NOT NULL DEFAULT '',
  `user` varchar(20) NOT NULL,
  PRIMARY KEY (`idfile`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `fileupload` */

/*Table structure for table `friend_search` */

DROP TABLE IF EXISTS `friend_search`;

CREATE TABLE `friend_search` (
  `username` varchar(40) DEFAULT NULL,
  `keyword` varbinary(40) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friend_search` */

/*Table structure for table `friends_req` */

DROP TABLE IF EXISTS `friends_req`;

CREATE TABLE `friends_req` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `freq_name` varchar(40) DEFAULT NULL,
  `frec_name` varchar(40) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friends_req` */

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `iduser_reg` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL DEFAULT '',
  `name` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT '',
  `phone` varchar(45) NOT NULL DEFAULT '',
  `activate` varchar(45) NOT NULL DEFAULT '',
  `image_word` varchar(45) NOT NULL DEFAULT '',
  `anum` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`iduser_reg`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

/*Table structure for table `req_res` */

DROP TABLE IF EXISTS `req_res`;

CREATE TABLE `req_res` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requestfrom` text,
  `requestto` text,
  `status` text,
  `dt` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `req_res` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
