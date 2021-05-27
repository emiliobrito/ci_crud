# Host: 127.0.0.1  (Version 5.7.25-log)
# Date: 2021-05-27 17:10:38
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "groups"
#

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "groups"
#

INSERT INTO `groups` VALUES (1,'admin','Administrator'),(2,'members','General User');

#
# Structure for table "login_attempts"
#

CREATE TABLE `login_attempts` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "login_attempts"
#


#
# Structure for table "migrations"
#

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (1);

#
# Structure for table "users"
#

CREATE TABLE `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,X'32313330373036343333','administrator','$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36','','admin@admin.com',NULL,NULL,NULL,NULL,1268889823,1622130445,1,'Admin','istrator','ADMIN','0'),(2,X'3A3A31','emilio brito','$2y$08$/imux.XsYZ4wtM7UHISMvuJG7k1zWOMmZmrCPr1XIucKB.OAEz/9C','','emilio@admin.cl','6dc2abb08427a94165eed3e86619e3a3c905d5da','JAJQcxvTCWotcN6VjkQlYO5077439f09226ae3af',1622122974,NULL,1622122858,1622130395,0,'emilio','brito','daem','2341234');

#
# Structure for table "users_groups"
#

CREATE TABLE `users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "users_groups"
#

INSERT INTO `users_groups` VALUES (1,1,1),(2,1,2),(6,2,2);
