-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: socketdb
-- ------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;

DROP SCHEMA IF EXISTS `socketdb` ;
CREATE SCHEMA `socketdb` ;

USE `socketdb`;

--
-- Table structure for table `User`
--
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `UserId`      INT(11) NOT NULL AUTO_INCREMENT,
  `UserKey`     VARCHAR(50) DEFAULT NULL,  
  `UserName`    VARCHAR(50) DEFAULT NULL,
  `Password`    VARCHAR(250) DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`),
  UNIQUE KEY `UserId_UNIQUE` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- sample data
INSERT INTO `User` (`UserKey`, `UserName`, `Password`) 
VALUES (uuid(), 'user01', 'QGRtaW4=');

INSERT INTO `User` (`UserKey`, `UserName`, `Password`) 
VALUES (uuid(), 'user02', 'QGRtaW4=');

INSERT INTO `User` (`UserKey`, `UserName`, `Password`) 
VALUES (uuid(), 'user03', 'QGRtaW4=');

--
-- Table structure for table `UserPost`
--
DROP TABLE IF EXISTS `UserPost`;
CREATE TABLE `UserPost` (
  `UserPostId`      INT(11) NOT NULL AUTO_INCREMENT,
  `UserPostContent` VARCHAR(250) DEFAULT NULL,
  PRIMARY KEY (`UserPostId`),
  UNIQUE KEY `UserPostId_UNIQUE` (`UserPostId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- sample data
INSERT INTO `UserPost` (`UserPostContent`)
VALUES (uuid(), 'TEST 01');

INSERT INTO `UserPost` (`UserPostContent`) 
VALUES (uuid(), 'TEST 02');

INSERT INTO `UserPost` (`UserPostContent`)
VALUES (uuid(), 'TEST 03');

--
-- Table structure for table `UserComment`
--
DROP TABLE IF EXISTS `UserComment`;
CREATE TABLE `UserComment` (
  `UserCommentId`   INT(11) NOT NULL AUTO_INCREMENT,  
  `Comment`         VARCHAR(250) DEFAULT NULL,
  `UserId`          INT(11) NOT NULL,
  `UserName`        VARCHAR(50) DEFAULT NULL,
  `PostId`          INT(11) NOT NULL,
  PRIMARY KEY (`UserCommentId`),
  UNIQUE KEY `UserCommentId_UNIQUE` (`UserCommentId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- sample data
INSERT INTO `UserComment` (`Comment`, `UserId`, `UserName`, `PostId`)
VALUES ('TEST 01', 1, 'user01', 1);

INSERT INTO `UserComment` (`Comment`, `UserId`, `UserName`, `PostId`)
VALUES ('TEST 02', 2, 'user02', 2);
