---------------CREACIÓN DE LA BASE DE DATOS---------------

DROP DATABASE IF EXISTS `spotify`;
CREATE DATABASE `spotify`;
USE `spotify` ;


---------------CREACIÓN DE LAS TABLAS---------------

CREATE TABLE IF NOT EXISTS `spotify`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `user_type` ENUM('free', 'premium') NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  `password` VARCHAR(150) NOT NULL,
  `user_name` VARCHAR(150) NOT NULL,
  `birth_date` VARCHAR(150) NOT NULL,
  `gender` VARCHAR(150) NULL,
  `country` VARCHAR(150) NOT NULL,
  `cp` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `spotify`.`payment_details` (
  `payment_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `payment_method` ENUM('card', 'paypal') NOT NULL,
  `card_number` VARCHAR(150) NULL,
  `expire_date` DATE NULL,
  `cvv` VARCHAR(150) NULL,
  `paypal_username` VARCHAR(150) NULL,
  PRIMARY KEY (`payment_id`),
  INDEX `fk_payment_details_users1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_payment_details_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `spotify`.`subscriptions` (
  `sub_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `payment_method` INT NOT NULL,
  `start_date` DATE NOT NULL,
  `recharge_date` DATE NOT NULL,
  PRIMARY KEY (`sub_id`),
  INDEX `fk_subscriptions_users_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_subscriptions_payment_details1_idx` (`payment_method` ASC) VISIBLE,
  CONSTRAINT `fk_subscriptions_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_subscriptions_payment_details1`
    FOREIGN KEY (`payment_method`)
    REFERENCES `spotify`.`payment_details` (`payment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `spotify`.`payment_register` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `sub_id` INT NOT NULL,
  `pay_date` DATE NOT NULL,
  `price` FLOAT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_payment_register_subscriptions1_idx` (`sub_id` ASC) VISIBLE,
  CONSTRAINT `fk_payment_register_subscriptions1`
    FOREIGN KEY (`sub_id`)
    REFERENCES `spotify`.`subscriptions` (`sub_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `spotify`.`playlists` (
  `list_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `title` VARCHAR(150) NOT NULL,
  `total_songs` INT NOT NULL,
  `creation_date` DATE NOT NULL,
  `status` ENUM('active', 'deleted') NOT NULL,
  `delete_date` DATE NULL,
  PRIMARY KEY (`list_id`),
  INDEX `fk_playlists_users1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_playlists_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `spotify`.`artist` (
  `artist_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `image` VARCHAR(800) NOT NULL,
  PRIMARY KEY (`artist_id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `spotify`.`album` (
  `album_id` INT NOT NULL AUTO_INCREMENT,
  `artist_id` INT NOT NULL,
  `title` VARCHAR(150) NOT NULL,
  `release_date` DATE NOT NULL,
  `cover_image` VARCHAR(800) NULL,
  PRIMARY KEY (`album_id`),
  INDEX `fk_album_artist1_idx` (`artist_id` ASC) VISIBLE,
  CONSTRAINT `fk_album_artist1`
    FOREIGN KEY (`artist_id`)
    REFERENCES `spotify`.`artist` (`artist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `spotify`.`songs` (
  `song_id` INT NOT NULL AUTO_INCREMENT,
  `album_id` INT NOT NULL,
  `title` VARCHAR(150) NOT NULL,
  `duration` INT NOT NULL,
  `play_count` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`song_id`),
  INDEX `fk_songs_album1_idx` (`album_id` ASC) VISIBLE,
  CONSTRAINT `fk_songs_album1`
    FOREIGN KEY (`album_id`)
    REFERENCES `spotify`.`album` (`album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `spotify`.`user_follow_artist` (
  `user_id` INT NOT NULL,
  `artist_id` INT NOT NULL,
  INDEX `fk_user_follow_artist_users1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_user_follow_artist_artist1_idx` (`artist_id` ASC) VISIBLE,
  PRIMARY KEY (`user_id`, `artist_id`),
  CONSTRAINT `fk_user_follow_artist_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_follow_artist_artist1`
    FOREIGN KEY (`artist_id`)
    REFERENCES `spotify`.`artist` (`artist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `spotify`.`artists_by_music_type` (
  `type_id` INT NOT NULL AUTO_INCREMENT,
  `artist_id` INT NOT NULL,
  INDEX `fk_artists_by_music_type_artist1_idx` (`artist_id` ASC) VISIBLE,
  PRIMARY KEY (`type_id`),
  CONSTRAINT `fk_artists_by_music_type_artist1`
    FOREIGN KEY (`artist_id`)
    REFERENCES `spotify`.`artist` (`artist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `spotify`.`favourite_songs` (
  `user_id` INT NOT NULL,
  `song_id` INT NOT NULL,
  INDEX `fk_favourites_users1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_favourites_songs1_idx` (`song_id` ASC) VISIBLE,
  PRIMARY KEY (`user_id`, `song_id`),
  CONSTRAINT `fk_favourites_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_favourites_songs1`
    FOREIGN KEY (`song_id`)
    REFERENCES `spotify`.`songs` (`song_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `spotify`.`favourite_albums` (
  `user_id` INT NOT NULL,
  `album_id` INT NOT NULL,
  INDEX `fk_favourite_artist_users1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_favourite_artist_album1_idx` (`album_id` ASC) VISIBLE,
  PRIMARY KEY (`user_id`, `album_id`),
  CONSTRAINT `fk_favourite_artist_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_favourite_artist_album1`
    FOREIGN KEY (`album_id`)
    REFERENCES `spotify`.`album` (`album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `spotify`.`shared_playlists` (
  `user_id` INT NOT NULL,
  `list_id` INT NOT NULL,
  `added_song` INT NOT NULL,
  `added_date` DATE NOT NULL,
  INDEX `fk_shared_playlists_users1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_shared_playlists_playlists1_idx` (`list_id` ASC) VISIBLE,
  PRIMARY KEY (`user_id`, `list_id`, `added_song`),
  INDEX `fk_shared_playlists_songs1_idx` (`added_song` ASC) VISIBLE,
  CONSTRAINT `fk_shared_playlists_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_shared_playlists_playlists1`
    FOREIGN KEY (`list_id`)
    REFERENCES `spotify`.`playlists` (`list_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_shared_playlists_songs1`
    FOREIGN KEY (`added_song`)
    REFERENCES `spotify`.`songs` (`song_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

