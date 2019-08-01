/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 5.5.62 : Database - global_auth
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_07_31_094543_create_todolists_table',2);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `todolists` */

DROP TABLE IF EXISTS `todolists`;

CREATE TABLE `todolists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `permited_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `todolists` */

insert  into `todolists`(`id`,`permited_user`,`name`,`details`,`status`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,NULL,'asmaul hasnat','hjjhhhh',1,NULL,NULL,NULL,NULL),
(2,'1','dddfdd','fdfgd',1,1,NULL,'2019-07-31 10:22:22','2019-07-31 10:22:22'),
(3,'211','asmaul hasnat2','jjjj',1,2,NULL,'2019-07-31 10:23:11','2019-07-31 10:23:11'),
(4,'2,1','gg','ff',1,2,NULL,'2019-07-31 10:24:54','2019-07-31 10:24:54'),
(5,'2,1','ffff','ssss',1,2,NULL,'2019-07-31 10:35:58','2019-07-31 10:35:58'),
(6,'2,1','fff','slkjdjkfhgudghfuy',1,2,NULL,'2019-07-31 10:36:05','2019-07-31 10:36:05'),
(7,'1','asmaul hasnat','hjjhhhh',1,1,NULL,'2019-08-01 10:09:29','2019-08-01 10:09:29'),
(8,'1','raihan','hjjhhhh',1,1,NULL,'2019-08-01 10:15:34','2019-08-01 10:15:34'),
(9,'1','asmaul hasnat','4545346456',1,1,NULL,'2019-08-01 10:15:42','2019-08-01 10:15:42'),
(10,'1','asmaul hasnat','465454',1,1,NULL,'2019-08-01 10:15:53','2019-08-01 10:15:53'),
(11,'1','raihan','xdddd',1,1,NULL,'2019-08-01 10:34:10','2019-08-01 10:34:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `sms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_verified_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`username`,`email`,`parent_id`,`email_verified_at`,`sms`,`sms_verified_at`,`provider`,`provider_id`,`phone`,`status`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'asmaul hasnat','asmaulhasnat','ahsweet92@gmail.com',0,'2019-07-31 08:05:41',NULL,NULL,NULL,NULL,NULL,1,'$2y$10$yxJZUAZSxJbygpgX/f9Vp.bOEzK9yoe8x5B/qhejBOBr8jAcoZxgO',NULL,'2019-07-31 07:41:09','2019-07-31 08:05:41'),
(2,'pavel','pavel','pavel@gmail.com',1,'2019-07-31 14:51:18',NULL,NULL,NULL,NULL,NULL,1,'$2y$10$yxJZUAZSxJbygpgX/f9Vp.bOEzK9yoe8x5B/qhejBOBr8jAcoZxgO',NULL,NULL,NULL),
(3,'farhad','farhad','farhad@gmail.com',0,'2019-07-31 14:52:20',NULL,NULL,NULL,NULL,NULL,1,'$2y$10$yxJZUAZSxJbygpgX/f9Vp.bOEzK9yoe8x5B/qhejBOBr8jAcoZxgO',NULL,NULL,NULL),
(4,'mamnoon','mamnoon','mamnoon@allieditbd.com',3,'2019-07-31 14:54:06',NULL,NULL,NULL,NULL,NULL,1,'$10$yxJZUAZSxJbygpgX/f9Vp.bOEzK9yoe8x5B/qhejBOBr8jAcoZxgO',NULL,NULL,NULL),
(5,'raihan','','raihan@gmail.com',4,'2019-07-31 14:55:13',NULL,NULL,NULL,NULL,NULL,1,'$10$yxJZUAZSxJbygpgX/f9Vp.bOEzK9yoe8x5B/qhejBOBr8jAcoZxgO',NULL,NULL,NULL);

/* Procedure structure for procedure `permited_user_procedure` */

/*!50003 DROP PROCEDURE IF EXISTS  `permited_user_procedure` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `permited_user_procedure`(IN `id` INT)
BEGIN
DECLARE login_user INT;
set login_user=id;
 DROP TEMPORARY TABLE IF EXISTS temp_table;
    CREATE TEMPORARY TABLE temp_table
    (   id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT NOT NULL,
	loginuser INT NOT NULL,
      	user_name VARCHAR(255) NOT NULL
    );
  REPEAT
 INSERT INTO temp_table(id, user_id,loginuser,user_name) SELECT NULL, users.id,login_user as loginuser,users.name FROM users WHERE users.id=id;
 SET id = (SELECT users.parent_id FROM users  WHERE users.id=id);
 UNTIL id=0  END REPEAT;
    
 SELECT * FROM temp_table where loginuser=login_user;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
