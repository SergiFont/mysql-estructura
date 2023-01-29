DROP DATABASE optica IF DATABASE optica EXISTS
CREATE DATABASE optica

#
# TABLE STRUCTURE FOR: costumers
#

DROP TABLE IF EXISTS `costumers`;

CREATE TABLE `costumers` (
  `costumer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `cp` varchar(45) NOT NULL,
  `telf` varchar(45) NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `recommended_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`costumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (1, 'Randi Nikolaus', '53741-5894', '1-042-610-6336x30025', 'ayla.tremblay@example.com', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (2, 'Simeon Casper', '29401-0449', '01698950758', 'morgan72@example.com', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (3, 'Cicero Little', '17558', '(786)590-6425', 'luettgen.jeramy@example.com', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (4, 'Adriel Rolfson', '45832-5764', '+10(6)2140101692', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (5, 'Mrs. Serena Weber V', '96614-4380', '073-098-9308', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (6, 'Ceasar Koch', '70397-3538', '049-511-1319x87768', 'declan.spinka@example.com', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (7, 'Miss Reanna Greenfelder', '89369-1855', '1-720-003-2950', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (8, 'Ramon Pouros II', '29041', '+70(7)3312321483', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (9, 'Jewell Hettinger', '17659', '02669103636', 'bednar.oda@example.org', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (10, 'Miss Enola Watsica DVM', '59614', '1-948-581-2657x81088', 'renner.kenya@example.com', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (11, 'Max Denesik', '97979-1470', '481-060-8299x81026', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (12, 'Tillman Bradtke', '53851', '1-677-367-2849', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (13, 'Dr. Sylvan Dicki', '06946-2637', '714.427.0601x0104', 'janick76@example.com', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (14, 'Vesta Tillman', '53578-5686', '(355)763-2645', 'javonte91@example.org', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (15, 'Mr. Darius Emmerich', '36220', '1-071-932-1149', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (16, 'Fredrick Rempel', '92893-2623', '(148)372-4069', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (17, 'Albin Gerhold', '63366', '(531)739-4839x744', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (18, 'Ms. Meredith Tillman Jr.', '24014-1546', '312-420-6731', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (19, 'Coty Jenkins', '48364-5142', '1-966-901-2097', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (20, 'Eden Volkman', '47646', '1-408-080-7058', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (21, 'Elnora Mayer', '78917-2386', '302.877.2328', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (22, 'Prof. Marquis Jerde I', '92912', '+93(8)9931021963', 'adan91@example.net', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (23, 'Kim Skiles', '91216', '(764)096-8508x80575', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (24, 'Juanita Beatty Jr.', '09289', '738.917.5197x86903', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (25, 'Preston Cronin', '68536', '(685)143-1344x367', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (26, 'Micah Ledner', '12204', '1-249-943-5375x971', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (27, 'Imogene Mante', '54522', '(247)488-9982', 'bergnaum.alex@example.com', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (28, 'Felipa Bahringer', '21694', '(696)834-4394', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (29, 'Dr. Carlo Wiza', '91900', '(926)346-7013', '', NULL);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (30, 'Macey Fadel Jr.', '64418-7992', '893-285-5935x982', '', NULL);


#
# TABLE STRUCTURE FOR: employees
#

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `sales` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `employees` (`employee_id`, `name`, `sales`) VALUES (1, 'Mrs. Dejah Kutch PhD', 0);
INSERT INTO `employees` (`employee_id`, `name`, `sales`) VALUES (2, 'Birdie Breitenberg', 0);
INSERT INTO `employees` (`employee_id`, `name`, `sales`) VALUES (3, 'Tanya Collins', 0);
INSERT INTO `employees` (`employee_id`, `name`, `sales`) VALUES (4, 'Kelsie Langworth', 0);
INSERT INTO `employees` (`employee_id`, `name`, `sales`) VALUES (5, 'Wyman Bruen Jr.', 0);


#
# TABLE STRUCTURE FOR: frame_types
#

DROP TABLE IF EXISTS `frame_types`;

CREATE TABLE `frame_types` (
  `frame_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`frame_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `frame_types` (`frame_type_id`, `name`) VALUES (1, 'nihil');
INSERT INTO `frame_types` (`frame_type_id`, `name`) VALUES (2, 'cumque');
INSERT INTO `frame_types` (`frame_type_id`, `name`) VALUES (3, 'est');
#
# TABLE STRUCTURE FOR: glasses_brands
#

DROP TABLE IF EXISTS `glasses_brands`;

CREATE TABLE `glasses_brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (1, 'rerum');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (2, 'dolor');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (3, 'incidunt');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (4, 'tenetur');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (5, 'soluta');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (6, 'optio');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (7, 'hic');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (8, 'assumenda');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (9, 'illum');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (10, 'exercitationem');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (11, 'iste');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (12, 'in');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (13, 'atque');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (14, 'et');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (15, 'quaerat');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (16, 'eum');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (17, 'ducimus');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (18, 'maxime');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (19, 'repellat');
INSERT INTO `glasses_brands` (`brand_id`, `name`) VALUES (20, 'sint');

#
# TABLE STRUCTURE FOR: glasses
#

DROP TABLE IF EXISTS `glasses`;

CREATE TABLE `glasses` (
  `glass_grad_right` decimal(10,2) NOT NULL,
  `glass_grad_left` decimal(10,2) NOT NULL,
  `frame_color` varchar(45) NOT NULL,
  `glass_color` varchar(45) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `frame_type_id` int(11) NOT NULL,
  `glass_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`glass_id`),
  KEY `fk_glasses_glasses_brands1_idx` (`brand_id`),
  KEY `fk_glasses_frame_types1_idx` (`frame_type_id`),
  CONSTRAINT `fk_glasses_frame_types1` FOREIGN KEY (`frame_type_id`) REFERENCES `frame_types` (`frame_type_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_glasses_glasses_brands1` FOREIGN KEY (`brand_id`) REFERENCES `glasses_brands` (`brand_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('0.00', '178.63', 'navy', 'black', '3.70', 1, 1, 1);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('91.35', '785.00', 'blue', 'blue', '102.31', 2, 2, 2);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('7681395.50', '529.24', 'lime', 'silver', '612.87', 3, 3, 3);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('6970052.48', '4712.05', 'lime', 'maroon', '55561.00', 4, 1, 4);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('3668647.78', '67.00', 'aqua', 'silver', '332925.54', 5, 2, 5);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('0.00', '2046878.63', 'maroon', 'silver', '35623.26', 6, 3, 6);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('4.60', '122611.99', 'gray', 'purple', '99999999.99', 7, 1, 7);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('99999999.99', '20657118.85', 'aqua', 'teal', '152896.00', 8, 2, 8);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('1.13', '7849307.30', 'black', 'purple', '345329.99', 9, 3, 9);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('0.95', '2.51', 'teal', 'white', '2.86', 10, 1, 10);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('860359.92', '6149091.03', 'green', 'gray', '13.54', 11, 2, 11);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('1.34', '3645.70', 'purple', 'navy', '26733.50', 12, 3, 12);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('703637.00', '166.68', 'navy', 'navy', '43327.03', 13, 1, 13);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('26.00', '0.00', 'yellow', 'navy', '6941.00', 14, 2, 14);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('63162.83', '4478.88', 'blue', 'olive', '65.16', 15, 3, 15);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('4099498.98', '455195.42', 'yellow', 'yellow', '2.00', 16, 1, 16);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('101112.14', '99999999.99', 'yellow', 'navy', '42452429.86', 17, 2, 17);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('99999999.99', '33206.26', 'black', 'yellow', '0.00', 18, 3, 18);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('66.04', '7818158.28', 'teal', 'maroon', '6355426.35', 19, 1, 19);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('0.00', '0.15', 'blue', 'fuchsia', '1257.86', 20, 2, 20);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('1112447.00', '12.93', 'gray', 'maroon', '28550531.71', 1, 3, 21);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('23336.35', '2.10', 'olive', 'aqua', '4934111.00', 2, 1, 22);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('5484213.53', '1707.74', 'silver', 'black', '81.50', 3, 2, 23);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('135.81', '0.00', 'olive', 'silver', '3172.98', 4, 3, 24);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('0.00', '14.00', 'teal', 'white', '2055.45', 5, 1, 25);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('1.00', '48.63', 'purple', 'aqua', '605161.07', 6, 2, 26);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('4603747.02', '7.11', 'purple', 'gray', '11221643.60', 7, 3, 27);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('17.40', '1509857.82', 'blue', 'teal', '0.00', 8, 1, 28);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('99999999.99', '18327320.89', 'teal', 'teal', '0.00', 9, 2, 29);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type_id`, `glass_id`) VALUES ('33300016.72', '0.00', 'olive', 'green', '0.00', 10, 3, 30);



#
# TABLE STRUCTURE FOR: providers
#

DROP TABLE IF EXISTS `providers`;

CREATE TABLE `providers` (
  `provider_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `street_num` varchar(45) NOT NULL,
  `floor` varchar(45) DEFAULT NULL,
  `door` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `cp` int(8) unsigned zerofill NOT NULL,
  `country` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `fax` varchar(45) NOT NULL,
  `nif` varchar(45) NOT NULL,
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (1, 'Langosh Group', 'Balistreri Landing', '0995', '985', '532', 'Quitzonmouth', 00036422, 'China', '+49(0)9663860905', '1-133-319-0548', '5');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (2, 'Anderson-Kemmer', 'Conn Rest', '12859', '442', '542', 'Lorastad', 00006977, 'Liechtenstein', '895.416.6923x576', '078-081-9213x937', '');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (3, 'Herzog, Torphy and Marvin', 'Leta Roads', '9222', '946', '070', 'West Budberg', 00016609, 'Antarctica (the territory South of 60 deg S)', '+59(5)7158267391', '(556)789-8729', '6');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (4, 'Roberts-Schroeder', 'Romaguera Island', '8844', '659', '725', 'West Electachester', 00075505, 'Sao Tome and Principe', '(178)515-4217x5043', '(008)088-3103x4007', '8');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (5, 'Heathcote-Connelly', 'Junior Locks', '90394', '195', '811', 'Ransomtown', 00060560, 'Algeria', '714-326-5001x40473', '1-363-893-5906', '6');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (6, 'Gaylord and Sons', 'Faustino Landing', '301', '717', '719', 'Corrinebury', 00051115, 'Tuvalu', '(616)960-1840', '1-558-105-4012', '');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (7, 'Kohler Inc', 'Elmira Spring', '983', '410', '386', 'Cristfort', 00030349, 'Brazil', '1-121-035-7817x858', '+61(0)4762344263', '2');


#
# TABLE STRUCTURE FOR: sales
#

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `sale_date` date NOT NULL,
  `glasses_glass_id` int(11) NOT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `fk_provider_sales_providers1_idx` (`provider_id`),
  KEY `fk_sales_glasses1_idx` (`glasses_glass_id`),
  CONSTRAINT `fk_provider_sales_providers1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`provider_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_sales_glasses1` FOREIGN KEY (`glasses_glass_id`) REFERENCES `glasses` (`glass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (1, 1, '2001-05-21', 1);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (2, 2, '2023-01-27', 2);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (3, 3, '1994-08-15', 3);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (4, 4, '1979-04-06', 4);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (5, 5, '1989-06-18', 5);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (6, 6, '1986-04-18', 6);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (7, 7, '1978-03-10', 7);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (8, 1, '2000-06-27', 8);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (9, 2, '1977-08-11', 9);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (10, 3, '2017-09-26', 10);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (11, 4, '2018-04-29', 11);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (12, 5, '1990-06-22', 12);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (13, 6, '2004-12-24', 13);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (14, 7, '2008-05-15', 14);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (15, 1, '1973-06-01', 15);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (16, 2, '1991-12-30', 16);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (17, 3, '1987-02-24', 17);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (18, 4, '2005-07-24', 18);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (19, 5, '2011-12-30', 19);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (20, 6, '2014-03-20', 20);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (21, 7, '2014-05-14', 21);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (22, 1, '1987-10-05', 22);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (23, 2, '1992-10-21', 23);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (24, 3, '1984-04-26', 24);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (25, 4, '2016-04-10', 25);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (26, 5, '2018-01-04', 26);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (27, 6, '1991-09-06', 27);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (28, 7, '1992-11-01', 28);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (29, 1, '1988-12-09', 29);
INSERT INTO `sales` (`sale_id`, `provider_id`, `sale_date`, `glasses_glass_id`) VALUES (30, 2, '1988-06-15', 30);


#
# TABLE STRUCTURE FOR: store
#

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `costumer_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`costumer_id`,`sale_id`),
  KEY `fk_store_employees1_idx` (`employee_id`),
  KEY `fk_store_costumers1_idx` (`costumer_id`),
  KEY `fk_store_provider_sales1_idx` (`sale_id`),
  CONSTRAINT `fk_store_costumers1` FOREIGN KEY (`costumer_id`) REFERENCES `costumers` (`costumer_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_store_employees1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_store_provider_sales1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (1, 1, 1);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (6, 6, 1);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (11, 11, 1);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (16, 16, 1);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (21, 21, 1);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (26, 26, 1);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (2, 2, 2);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (7, 7, 2);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (12, 12, 2);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (17, 17, 2);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (22, 22, 2);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (27, 27, 2);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (3, 3, 3);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (8, 8, 3);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (13, 13, 3);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (18, 18, 3);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (23, 23, 3);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (28, 28, 3);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (4, 4, 4);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (9, 9, 4);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (14, 14, 4);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (19, 19, 4);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (24, 24, 4);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (29, 29, 4);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (5, 5, 5);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (10, 10, 5);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (15, 15, 5);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (20, 20, 5);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (25, 25, 5);
INSERT INTO `store` (`costumer_id`, `sale_id`, `employee_id`) VALUES (30, 30, 5);


