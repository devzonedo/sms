/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.5.8-MariaDB : Database - smsdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`smsdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `smsdb`;

/*Table structure for table `tbl_student` */

DROP TABLE IF EXISTS `tbl_student`;

CREATE TABLE `tbl_student` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `age` int(2) DEFAULT NULL,
  `tp` int(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `created_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `dob` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_student` */

insert  into `tbl_student`(`id`,`age`,`tp`,`address`,`created_datetime`,`dob`,`username`) values (1,14,88889998,'colombo','2020-12-03 22:17:33','2001-05-06','ravi'),(2,14,44444555,'Negombo','2020-12-03 22:21:41','2001-07-06','giha');

/*Table structure for table `tbl_student_subject` */

DROP TABLE IF EXISTS `tbl_student_subject`;

CREATE TABLE `tbl_student_subject` (
  `student_id` int(5) NOT NULL,
  `subject_id` int(4) NOT NULL,
  `created_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_user` int(5) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_student_subject` */

insert  into `tbl_student_subject`(`student_id`,`subject_id`,`created_datetime`,`created_user`) values (1,1,'2020-12-03 22:22:17',NULL),(1,2,'2020-12-03 22:22:23',NULL),(2,2,'2020-12-03 22:22:29',NULL);

/*Table structure for table `tbl_subject` */

DROP TABLE IF EXISTS `tbl_subject`;

CREATE TABLE `tbl_subject` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_subject` */

insert  into `tbl_subject`(`id`,`subject_name`) values (1,'maths'),(2,'science'),(3,'english'),(4,'sinhala');

/*Table structure for table `tbl_teacher` */

DROP TABLE IF EXISTS `tbl_teacher`;

CREATE TABLE `tbl_teacher` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `degree` varchar(40) DEFAULT NULL,
  `qualification` text DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `tp` int(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `created_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `subject_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_teacher` */

insert  into `tbl_teacher`(`id`,`degree`,`qualification`,`age`,`gender`,`tp`,`email`,`nic`,`username`,`created_datetime`,`subject_id`) values (1,'Management','5 year experience',40,'F',44455555,'asd@gmail.com','122244556','saman','2020-12-03 22:11:24',2),(2,'IT','2 year',55,'M',NULL,NULL,NULL,'kuma','2020-12-03 22:12:58',1);

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `pword` text DEFAULT NULL,
  `status_code` varchar(10) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `created_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_user` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id`,`first_name`,`last_name`,`username`,`pword`,`status_code`,`user_type`,`created_datetime`,`created_user`) values (1,'Sys','Admin','admin','124','ACTIVE','ADMIN','2020-12-03 21:59:25',1),(2,'Ravi','Fer','ravi','12999','ACTIVE','STUDENT','2020-12-03 22:00:06',1),(3,'Saman','Perera','saman','88889','ACTIVE','TEACHER','2020-12-03 22:00:41',NULL),(4,'EEEEEE','Perera','kuma','4444488889','ACTIVE','TEACHER','2020-12-03 22:00:41',NULL),(5,'gihan','Fonseka','giha','12999','ACTIVE','STUDENT','2020-12-03 22:00:06',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
