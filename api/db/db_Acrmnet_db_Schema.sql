--
-- Database: `Acrmnet_db`
--

CREATE DATABASE IF NOT EXISTS `Acrmnet_db`;
USE `Acrmnet_db`;

CREATE TABLE IF NOT EXISTS `user` (

	`username` varchar(30)  NOT NULL UNIQUE,
	`password` varchar(32)  NOT NULL,
	`name` varchar(30) ,
	`surname` varchar(30) ,
	`mail` varchar(30) ,

	
	-- RELAZIONI

	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);

INSERT INTO `Acrmnet_db`.`user` (`username`, `password`, `_id`) VALUES ('admin', '1a1dc91c907325c69271ddf0c944bc72', 1);

CREATE TABLE IF NOT EXISTS `roles` (
	`role` varchar(30) ,
	
	-- RELAZIONI

	`_user` int(11)  NOT NULL REFERENCES user(_id),
	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);
INSERT INTO `Acrmnet_db`.`roles` (`role`, `_user`, `_id`) VALUES ('ADMIN', '1', 1);

-- ENTITIES

