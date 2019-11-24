-- Adminer 4.7.1 MySQL dump
SET collation_server = 'utf8_general_ci';
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';
USE `mydb` ;

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(256) NOT NULL,
  `password` VARCHAR(128) NULL,
  `status` TINYINT NOT NULL DEFAULT 1,
  `createdAt` DATETIME NULL,
  `updatedAt` DATETIME NULL,
  `user_type_id` INT NOT NULL,
  `avatar` VARCHAR(256) NULL,
  `avatar_file_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `user_name` ON `mydb`.`user` (`user_name` ASC);

-- -----------------------------------------------------
-- Table `mydb`.`file`
-- -----------------------------------------------------
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `location` varchar(256) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

-- -----------------------------------------------------
-- Table `mydb`.`user_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(12) NULL,
  `title` VARCHAR(64) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
