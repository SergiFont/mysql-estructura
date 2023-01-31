-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `youtube` DEFAULT CHARACTER SET utf8 ;
USE `youtube` ;

-- -----------------------------------------------------
-- Table `youtube`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(150) NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  `password` VARCHAR(150) NOT NULL,
  `birth_date` DATE NOT NULL,
  `gender` VARCHAR(150) NULL,
  `country` VARCHAR(150) NOT NULL,
  `cp` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`videos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`videos` (
  `video_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(150) NOT NULL,
  `description` VARCHAR(800) NULL,
  `size` INT NOT NULL,
  `file_name` VARCHAR(150) NOT NULL,
  `video_duration` VARCHAR(150) NOT NULL,
  `thumbnail` VARCHAR(800) NOT NULL,
  `reproduction_counts` INT NOT NULL,
  `likes_count` INT NOT NULL,
  `dislikes_count` INT NOT NULL,
  `published_date` DATETIME NOT NULL,
  `user_id` INT NOT NULL,
  `status` ENUM('public', 'private', 'hidden') NOT NULL,
  PRIMARY KEY (`video_id`),
  INDEX `fk_videos_users_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_videos_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`labels`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`labels` (
  `label_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`label_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`video_label`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`video_label` (
  `video_id` INT NOT NULL,
  `labels_label_id` INT NOT NULL,
  INDEX `fk_video_label_videos1_idx` (`video_id` ASC) VISIBLE,
  INDEX `fk_video_label_labels1_idx` (`labels_label_id` ASC) VISIBLE,
  PRIMARY KEY (`video_id`, `labels_label_id`),
  CONSTRAINT `fk_video_label_videos1`
    FOREIGN KEY (`video_id`)
    REFERENCES `youtube`.`videos` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_video_label_labels1`
    FOREIGN KEY (`labels_label_id`)
    REFERENCES `youtube`.`labels` (`label_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`channel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`channel` (
  `channel_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `description` VARCHAR(800) NULL,
  `creation_date` DATETIME NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`channel_id`),
  INDEX `fk_channel_users1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_channel_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`subscriptions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`subscriptions` (
  `user_id` INT NOT NULL,
  `channel_id` INT NOT NULL,
  INDEX `fk_subscriptions_users1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_subscriptions_channel1_idx` (`channel_id` ASC) VISIBLE,
  PRIMARY KEY (`user_id`, `channel_id`),
  CONSTRAINT `fk_subscriptions_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_subscriptions_channel1`
    FOREIGN KEY (`channel_id`)
    REFERENCES `youtube`.`channel` (`channel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`likes_dislikes_video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`likes_dislikes_video` (
  `user_id` INT NOT NULL,
  `video_id` INT NOT NULL,
  `date` DATETIME NOT NULL,
  `state` ENUM('like', 'dislike') NOT NULL,
  INDEX `fk_likes_users1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_likes_videos1_idx` (`video_id` ASC) VISIBLE,
  PRIMARY KEY (`user_id`, `video_id`),
  CONSTRAINT `fk_likes_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_likes_videos1`
    FOREIGN KEY (`video_id`)
    REFERENCES `youtube`.`videos` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`playlists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`playlists` (
  `list_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `state` ENUM('public', 'private') NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`list_id`),
  INDEX `fk_playlists_users1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_playlists_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`playlist_contents`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`playlist_contents` (
  `list_id` INT NOT NULL,
  `video_id` INT NOT NULL,
  INDEX `fk_user_playlist_playlists1_idx` (`list_id` ASC) VISIBLE,
  INDEX `fk_user_playlist_videos1_idx` (`video_id` ASC) VISIBLE,
  PRIMARY KEY (`list_id`, `video_id`),
  CONSTRAINT `fk_user_playlist_playlists1`
    FOREIGN KEY (`list_id`)
    REFERENCES `youtube`.`playlists` (`list_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_playlist_videos1`
    FOREIGN KEY (`video_id`)
    REFERENCES `youtube`.`videos` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`comentaries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`comentaries` (
  `comentary_id` INT NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(800) NOT NULL,
  `date` DATETIME NOT NULL,
  `user_id` INT NOT NULL,
  `video_id` INT NOT NULL,
  PRIMARY KEY (`comentary_id`),
  INDEX `fk_comentaries_users1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_comentaries_videos1_idx` (`video_id` ASC) VISIBLE,
  CONSTRAINT `fk_comentaries_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentaries_videos1`
    FOREIGN KEY (`video_id`)
    REFERENCES `youtube`.`videos` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`likes_dislikes_comentary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`likes_dislikes_comentary` (
  `comentaries_comentary_id` INT NOT NULL,
  `users_user_id` INT NOT NULL,
  INDEX `fk_likes_dislikes_comentary_comentaries1_idx` (`comentaries_comentary_id` ASC) VISIBLE,
  INDEX `fk_likes_dislikes_comentary_users1_idx` (`users_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_likes_dislikes_comentary_comentaries1`
    FOREIGN KEY (`comentaries_comentary_id`)
    REFERENCES `youtube`.`comentaries` (`comentary_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_likes_dislikes_comentary_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
