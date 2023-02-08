--------------- CREACIÓN DE LA BASE DE DATOS ---------------
DROP DATABASE IF EXISTS `youtube`;
CREATE DATABASE `youtube`;
USE `youtube` ;

--------------- CREACIÓN DE TABLAS ---------------
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

CREATE TABLE IF NOT EXISTS `youtube`.`videos` (
  `video_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(150) NOT NULL,
  `description` VARCHAR(800) NULL,
  `size` VARCHAR(150) NOT NULL,
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

CREATE TABLE IF NOT EXISTS `youtube`.`labels` (
  `label_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`label_id`))
ENGINE = InnoDB;


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

ALTER TABLE `youtube`.`likes_dislikes_comentary` 
DROP FOREIGN KEY `fk_likes_dislikes_comentary_comentaries1`,
DROP FOREIGN KEY `fk_likes_dislikes_comentary_users1`;
ALTER TABLE `youtube`.`likes_dislikes_comentary` 
CHANGE COLUMN `comentaries_comentary_id` `comentary_id` INT NOT NULL ,
CHANGE COLUMN `users_user_id` `user_id` INT NOT NULL ,
ADD PRIMARY KEY (`comentary_id`, `user_id`);
;
ALTER TABLE `youtube`.`likes_dislikes_comentary` 
ADD CONSTRAINT `fk_likes_dislikes_comentary_comentaries1`
  FOREIGN KEY (`comentary_id`)
  REFERENCES `youtube`.`comentaries` (`comentary_id`),
ADD CONSTRAINT `fk_likes_dislikes_comentary_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `youtube`.`users` (`user_id`),
ADD COLUMN `state` ENUM('like', 'dislike') NOT NULL AFTER `user_id`;


------------ RELLENO DE LAS TABLAS -------------

INSERT INTO `youtube`.`users` (`user_name`, `email`, `password`, `birth_date`, `gender`, `country`, `cp`) 
VALUES  ('robertoVideos', 'roberto@mail.com', '123456', '1990-04-25', 'male', 'spain', '08025'),
        ('juanPalomo', 'juan@mail.com', '123456', '1992-05-23', 'male', 'spain', '08029'),
        ('mariaBegoña', 'maria@mail.com', '123456', '1991-10-21', 'female', 'spain', '08039'),
        ('carlaCristiana', 'carla@mail.com', '123456', '1996-04-22', 'female', 'spain', '08049'),
        ('pabloCortes', 'pablo@mail.com', '123456', '1990-12-21', 'male', 'spain', '08001'),
        ('cocinaManuel', 'cocina@mail.com', '123456', '1999-02-28', 'male', 'spain', '08022'),
        ('aventurerosPepe', 'aventureros@mail.com', '123456', '1993-04-15', 'female', 'spain', '08015'),
        ('conduccionAlex', 'conduccion@mail.com', '123456', '1996-04-02', 'male', 'spain', '08009');


INSERT INTO `youtube`.`channel` (`name`, `description`, `creation_date`, `user_id`) 
VALUES  ('paridas', 'cosas random', '2010-03-19 22:15:00', '1'),
        ('cocina con Juan', 'recetas muy buenas', '2010-03-19 22:15:00', '2'),
        ('el rincón de Begoña', 'debates sobre la vida', '2010-03-19 22:15:00', '3'),
        ('CarlaC', 'consejos útiles sobre la vida', '2010-03-19 22:15:00', '4'),
        ('Mecánica con Pablo', 'tips sobre mecánica de coches', '2010-03-19 22:15:00', '5'),
        ('Cocina Channel', 'Aprende a cocinar conmigo', '2010-03-19 22:15:00', '6'),
        ('las aventuras de Pepe', 'sigueme explorando el mundo', '2010-03-19 22:15:00', '7'),
        ('Carnet a la primera', 'tips para sacarte el carnet de conducir', '2010-03-19 22:15:00', '8');


INSERT INTO `youtube`.`subscriptions` (`user_id`, `channel_id`) 
VALUES  ('1', '4'),
        ('1', '6'),
        ('2', '4'),
        ('2', '7'),
        ('3', '1'),
        ('3', '2'),
        ('4', '5'),
        ('4', '6'),
        ('5', '1'),
        ('5', '2'),
        ('6', '7'),
        ('6', '2'),
        ('7', '3'),
        ('7', '8'),
        ('8', '3'),
        ('8', '5');


INSERT INTO `youtube`.`videos` (`title`, `description`, `size`, `file_name`, `video_duration`, `thumbnail`, `reproduction_counts`, `likes_count`, `dislikes_count`, `published_date`, `user_id`, `status`) 
VALUES ('Bromas', 'todo tipo de bromas', '100MB', 'bromas.mp4', '00:08:45', '\'https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png\'', '80', '2', '1', '2010-09-25 16:45:54', '1', 'public'),
('receta', 'receta básica', '100MB', 'receta.mp4', '00:08:45', '\'https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png\'', '100', '5', '0', '2010-09-25 16:45:54', '2', 'public'),
('charla', 'de todo un poco', '100MB', 'charla.mp4', '00:08:45', '\'https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png\'', '50', '1', '0', '2010-09-25 16:45:54', '3', 'public'),
('consejos', 'de varios tipos', '100MB', 'consejos.mp4', '00:08:45', '\'https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png\'', '80', '3', '1', '2010-09-25 16:45:54', '4', 'public'),
('mecánica', 'desmontando un coche', '100MB', 'mecanica.mp4', '00:08:45', '\'https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png\'', '20', '4', '1', '2010-09-25 16:45:54', '5', 'public'),
('cena de hoy', 'con postre incluido', '100MB', 'cocina.mp4', '00:08:45', '\'https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png\'', '40', '1', '1', '2010-09-25 16:45:54', '6', 'public'),
('excursión', 'toda una aventura', '100MB', 'excursion.mp4', '00:08:45', '\'https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png\'', '80', '0', '0', '2010-09-25 16:45:54', '7', 'private'),
('exámen teórico', 'sencillito', '100MB', 'examen.mp4', '00:08:45', '\'https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png\'', '60', '0', '0', '2010-09-25 16:45:54', '8', 'private'),
('Bromas2', 'sale mal', '100MB', 'bromas2.mp4', '00:08:45', '\'https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png\'', '80', '0', '0', '2010-09-25 16:45:54', '1', 'hidden'),
('receta2', 'receta avanzada', '100MB', 'receta2.mp4', '00:08:45', '\'https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png\'', '90', '1', '1', '2010-09-25 16:45:54', '2', 'public'),
('charla2', 'futuro del canal', '100MB', 'charla2.mp4', '00:08:45', '\'https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png\'', '80', '1', '1', '2010-09-25 16:45:54', '3', 'public');


INSERT INTO `youtube`.`labels` (`label_id`, `name`) 
VALUES  ('1', 'comedia'),
        ('2', 'cocina'),
        ('3', 'mecánica'),
        ('4', 'vida'),
        ('5', 'naturaleza'),
        ('6', 'coche');


INSERT INTO `youtube`.`video_label` (`video_id`, `labels_label_id`) 
VALUES  ('1', '1'),
        ('2', '2'),
        ('2', '4'),
        ('3', '4'),
        ('4', '4'),
        ('5', '6'),
        ('6', '2'),
        ('6', '4'),
        ('7', '5'),
        ('8', '6'),
        ('9', '1'),
        ('10', '2'),
        ('10', '4'),
        ('11', '4');

INSERT INTO `youtube`.`likes_dislikes_video` (`user_id`, `video_id`, `date`, `state`) 
VALUES  ('1', '2', '2010-09-25 16:45:54', 'like'),
        ('2', '1', '2010-09-25 16:45:54', 'like'),
        ('3', '1', '2010-09-25 16:45:54', 'like'),
        ('4', '1', '2010-09-25 16:45:54', 'dislike'),
        ('5', '2', '2010-09-25 16:45:54', 'like'),
        ('6', '2', '2010-09-25 16:45:54', 'like'),
        ('7', '2', '2010-09-25 16:45:54', 'like'),
        ('8', '2', '2010-09-25 16:45:54', 'like'),
        ('1', '3', '2010-09-25 16:45:54', 'like'),
        ('1', '4', '2010-09-25 16:45:54', 'like'),
        ('2', '4', '2010-09-25 16:45:54', 'like'),
        ('3', '4', '2010-09-25 16:45:54', 'like'),
        ('1', '5', '2010-09-25 16:45:54', 'like'),
        ('2', '5', '2010-09-25 16:45:54', 'like'),
        ('3', '5', '2010-09-25 16:45:54', 'like'),
        ('4', '5', '2010-09-25 16:45:54', 'like'),
        ('7', '6', '2010-09-25 16:45:54', 'like'),
        ('8', '10', '2010-09-25 16:45:54', 'like'),
        ('8', '11', '2010-09-25 16:45:54', 'like'),
        ('6', '4', '2010-09-25 16:45:54', 'dislike'),
        ('6', '5', '2010-09-25 16:45:54', 'dislike'),
        ('8', '6', '2010-09-25 16:45:54', 'dislike'),
        ('7', '10', '2010-09-25 16:45:54', 'dislike'),
        ('7', '11', '2010-09-25 16:45:54', 'dislike');


INSERT INTO `youtube`.`comentaries` (`comentary_id`, `text`, `date`, `user_id`, `video_id`) 
VALUES  ('1', 'comentario1', '2021-01-01', '1', '2'),
        ('2', 'comentario2', '2021-01-01', '2', '3'),
        ('3', 'comentario3', '2021-01-01', '3', '4'),
        ('4', 'comentario4', '2021-01-01', '4', '5'),
        ('5', 'comentario5', '2021-01-01', '5', '6');


INSERT INTO `youtube`.`likes_dislikes_comentary` (`comentary_id`, `user_id`, `state`) 
VALUES  ('1', '6', 'like'),
        ('2', '5', 'dislike'),
        ('3', '4', 'like'),
        ('4', '3', 'like'),
        ('5', '2', 'dislike');

INSERT INTO `youtube`.`playlists` (`list_id`, `name`, `state`, `user_id`) 
VALUES  ('1', 'lista1', 'public', '1'),
        ('2', 'lista2', 'private', '2');

INSERT INTO `youtube`.`playlist_contents` (`list_id`, `video_id`) 
VALUES  ('1', '3'),
        ('1', '4'),
        ('2', '5'),
        ('2', '6');


--------------- QUERYS ---------------

-- Cuantos videos tiene la playlist de un usuario --

USE youtube;

SELECT pl.name as 'Lista', count(plc.video_id) as 'Número de videos'

FROM users u

JOIN playlists pl
	on u.user_id=pl.user_id

JOIN playlist_contents plc
	on plc.list_id=pl.list_id
WHERE pl.user_id=1 GROUP BY pl.name 
