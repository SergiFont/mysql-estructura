--------------- CREACIÓN DE LA BASE DE DATOS---------------

DROP DATABASE IF EXISTS `spotify`;
CREATE DATABASE `spotify`;
USE `spotify` ;


--------------- CREACIÓN DE LAS TABLAS---------------


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
  `user_id` INT NOT NULL,
  `payment_method` INT NOT NULL,
  `start_date` DATE NULL,
  `recharge_date` DATE NULL,
  `sub_status` ENUM('true', 'false') NOT NULL,
  INDEX `fk_subscriptions_users_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_subscriptions_payment_details1_idx` (`payment_method` ASC) VISIBLE,
  PRIMARY KEY (`user_id`, `payment_method`),
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
  `user_id` INT NOT NULL,
  `pay_date` DATE NOT NULL,
  `price` FLOAT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_payment_register_subscriptions1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_payment_register_subscriptions1`
    FOREIGN KEY (`user_id`)
    REFERENCES `spotify`.`subscriptions` (`user_id`)
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
  `type` ENUM('style1', 'style2') NOT NULL,
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



--------------- RELLENO BASE DE DATOS---------------
INSERT INTO `spotify`.`users` (`user_type`, `email`, `password`, `user_name`, `birth_date`, `gender`, `country`, `cp`) 
VALUES  ('free', 'email1@mail.com', '12345', 'usuario1', '1990-01-01', 'male', 'spain', '08009'),
        ('premium', 'email2@mail.com', '12345', 'usuario2', '1990-01-01', 'female', 'spain', '08009'),
        ('free', 'email3@mail.com', '12345', 'usuario3', '1990-01-01', 'male', 'spain', '08009'),
        ('premium', 'email4@mail.com', '12345', 'usuario4', '1990-01-01', 'female', 'spain', '08009'),
        ('premium', 'email5@mail.com', '12345', 'usuario5', '1990-01-01', 'female', 'spain', '08009');



INSERT INTO `spotify`.`payment_details` (`user_id`, `payment_method`, `card_number`, `expire_date`, `cvv`) 
VALUES  ('2', 'card', '455689876543', '2012-01-01', '123'),
        ('3', 'card', '455689876543', '2012-01-01', '123');
INSERT INTO `spotify`.`payment_details` (`user_id`, `payment_method`, `paypal_username`) 
VALUES  ('4', 'paypal', 'user4'),
        ('5', 'paypal', 'user5');
        
INSERT INTO `spotify`.`subscriptions` (`user_id`, `start_date`, `recharge_date`, `payment_method`) 
VALUES  ('2', '2010-01-01', '2010-02-01', '1'),
        ('4', '2010-01-01', '2010-02-01', '3'),
        ('5', '2010-01-01', '2010-02-01', '4');
INSERT INTO `spotify`.`subscriptions` (`user_id`, `payment_method`, `sub_status`) 
VALUES  ('3', '2', 'false');

INSERT INTO `spotify`.`payment_register` (`order_id`, `user_id`, `pay_date`, `price`) 
VALUES  ('1', '2', '2010-01-01', '5.99'),
        ('2', '3', '2009-12-01', '5.99'),
        ('3', '4', '2010-01-01', '5.99'),
        ('4', '5', '2010-01-01', '5.99');

INSERT INTO `spotify`.`artist` (`name`, `image`) 
VALUES  ('Rhapsody', '\'https://photos.bandsintown.com/large/11452180.jpeg\''),
        ('Huey Lewis and the News', '\'https://i.scdn.co/image/ab67616d0000b2735306ed42ae78f317258c51bb\''),
        ('Bon Jovi', '\'https://i.ytimg.com/vi/lDK9QqIzhwk/maxresdefault.jpg\''),
        ('Survivor', '\'https://akamai.sscdn.co/uploadfile/letras/fotos/4/f/b/a/4fbaa172cd99d42cab36e728d3f06a16.jpg\'');


INSERT INTO `spotify`.`playlists` (`user_id`, `title`, `total_songs`, `creation_date`, `status`) 
VALUES  ('1', 'lista1', '2', '2010-01-02', 'active'),
        ('2', 'lista3', '2', '2010-01-03', 'active'),
        ('3', 'lista4', '2', '2010-01-03', 'active'),
        ('4', 'lista6', '2', '2010-01-03', 'active'),
        ('5', 'lista7', '2', '2010-01-03', 'active');

INSERT INTO `spotify`.`playlists` (`user_id`, `title`, `total_songs`, `creation_date`, `status`, `delete_date`) 
VALUES  ('2', 'lista2', '2', '2010-01-02', 'deleted', '2010-01-03'),
        ('4', 'lista5', '2', '2010-01-03', 'deleted', '2010-01-03');


INSERT INTO `spotify`.`artists_by_music_type` (`artist_id`, `type`) 
VALUES  ('1', 'style1'),
        ('2', 'style2'),
        ('3', 'style2'),
        ('4', 'style1');

INSERT INTO `spotify`.`user_follow_artist` (`user_id`, `artist_id`) 
VALUES  ('1', '1'),
        ('2', '2'),
        ('3', '3'),
        ('4', '4'),
        ('5', '1');

INSERT INTO `spotify`.`album` (`artist_id`, `title`, `release_date`, `cover_image`) 
VALUES  ('1', 'album1', '2005-01-01', '\'https://photos.bandsintown.com/large/11452180.jpeg\''),
        ('2', 'album2', '2005-01-01', '\'https://i.scdn.co/image/ab67616d0000b2735306ed42ae78f317258c51bb\''),
        ('3', 'album3', '2005-01-01', '\'https://i.ytimg.com/vi/lDK9QqIzhwk/maxresdefault.jpg\''),
        ('3', 'album4', '2005-01-01', '\'https://i.ytimg.com/vi/lDK9QqIzhwk/maxresdefault.jpg\''),
        ('4', 'album5', '2005-01-01', '\'https://akamai.sscdn.co/uploadfile/letras/fotos/4/f/b/a/4fbaa172cd99d42cab36e728d3f06a16.jpg\'');


INSERT INTO `spotify`.`favourite_albums` (`user_id`, `album_id`) 
VALUES  ('1', '1'),
        ('2', '2'),
        ('3', '3'),
        ('4', '4'),
        ('5', '5');


INSERT INTO `spotify`.`songs` (`album_id`, `title`, `duration`, `play_count`) 
VALUES  ('1', 'song1', '300', '100'),
        ('1', 'song2', '300', '100'),
        ('2', 'song3', '250', '80'),
        ('2', 'song4', '250', '80'),
        ('3', 'song5', '285', '120'),
        ('3', 'song6', '285', '120'),
        ('4', 'song7', '280', '100'),
        ('4', 'song8', '280', '100'),
        ('5', 'song9', '310', '85'),
        ('5', 'song10', '290', '150');

INSERT INTO `spotify`.`favourite_songs` (`user_id`, `song_id`) 
VALUES  ('1', '1'),
        ('1', '2'),
        ('2', '3'),
        ('2', '4'),
        ('3', '5'),
        ('3', '6'),
        ('4', '7'),
        ('4', '8'),
        ('5', '9'),
        ('5', '10');


INSERT INTO `spotify`.`shared_playlists` (`user_id`, `list_id`, `added_song`, `added_date`) 
VALUES  ('1', '1', '1', '2010-01-02'),
        ('2', '1', '2', '2010-01-02'),
        ('2', '3', '3', '2010-01-02'),
        ('4', '3', '6', '2010-01-02'),
        ('3', '4', '7', '2010-01-02'),
        ('5', '4', '8', '2010-01-02'),
        ('4', '6', '9', '2010-01-02'),
        ('2', '6', '10', '2010-01-02'),
        ('5', '7', '4', '2010-01-02'),
        ('3', '7', '2', '2010-01-02');


--------------- QUERY DE PRUEBA ---------------

-- Que usuarios comparten una determinada lista

USE spotify;

SELECT u.user_name as 'Usuario', pl.title as 'Lista'
FROM users u
JOIN shared_playlists spl
	on u.user_id=spl.user_id
Join playlists pl
	on spl.list_id=pl.list_id
WHERE spl.list_id=1