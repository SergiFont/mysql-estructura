DROP DATABASE IF EXISTS optica;
CREATE DATABASE optica;

USE optica;

#
# TABLE STRUCTURE FOR: costumers
#

CREATE TABLE `costumers` (
  `costumer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `cp` varchar(45) NOT NULL,
  `telf` varchar(45) NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `recommended_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`costumer_id`),
  KEY `fk_costumers_costumers1_idx` (`costumer_id`),
  CONSTRAINT `fk_costumer_costumer1` FOREIGN KEY (`costumer_id`) REFERENCES `costumers` (`costumer_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`) VALUES (1, 'Randi Nikolaus', '53741-5894', '1-042-610-6336x30025', 'ayla.tremblay@example.com');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (2, 'Simeon Casper', '29401-0449', '01698950758', 'morgan72@example.com', 1);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`) VALUES (3, 'Cicero Little', '17558', '(786)590-6425', 'luettgen.jeramy@example.com');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`) VALUES (4, 'Adriel Rolfson', '45832-5764', '+10(6)2140101692');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`) VALUES (5, 'Mrs. Serena Weber V', '96614-4380', '073-098-9308');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`, `recommended_by`) VALUES (6, 'Ceasar Koch', '70397-3538', '049-511-1319x87768', 'declan.spinka@example.com', 2);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `recommended_by`) VALUES (7, 'Miss Reanna Greenfelder', '89369-1855', '1-720-003-2950', 3);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`) VALUES (8, 'Ramon Pouros II', '29041', '+70(7)3312321483');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`) VALUES (9, 'Jewell Hettinger', '17659', '02669103636', 'bednar.oda@example.org');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`) VALUES (10, 'Miss Enola Watsica DVM', '59614', '1-948-581-2657x81088', 'renner.kenya@example.com');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`) VALUES (11, 'Max Denesik', '97979-1470', '481-060-8299x81026');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `recommended_by`) VALUES (12, 'Tillman Bradtke', '53851', '1-677-367-2849', 4);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`) VALUES (13, 'Dr. Sylvan Dicki', '06946-2637', '714.427.0601x0104', 'janick76@example.com');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`) VALUES (14, 'Vesta Tillman', '53578-5686', '(355)763-2645', 'javonte91@example.org');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`) VALUES (15, 'Mr. Darius Emmerich', '36220', '1-071-932-1149');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`) VALUES (16, 'Fredrick Rempel', '92893-2623', '(148)372-4069');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`) VALUES (17, 'Albin Gerhold', '63366', '(531)739-4839x744');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `recommended_by`) VALUES (18, 'Ms. Meredith Tillman Jr.', '24014-1546', '312-420-6731', 1);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `recommended_by`) VALUES (19, 'Coty Jenkins', '48364-5142', '1-966-901-2097', 2);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `recommended_by`) VALUES (20, 'Eden Volkman', '47646', '1-408-080-7058', 3);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`) VALUES (21, 'Elnora Mayer', '78917-2386', '302.877.2328');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`) VALUES (22, 'Prof. Marquis Jerde I', '92912', '+93(8)9931021963', 'adan91@example.net');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `recommended_by`) VALUES (23, 'Kim Skiles', '91216', '(764)096-8508x80575', 1);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `recommended_by`) VALUES (24, 'Juanita Beatty Jr.', '09289', '738.917.5197x86903', 2);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`) VALUES (25, 'Preston Cronin', '68536', '(685)143-1344x367');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`) VALUES (26, 'Micah Ledner', '12204', '1-249-943-5375x971');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `mail`) VALUES (27, 'Imogene Mante', '54522', '(247)488-9982', 'bergnaum.alex@example.com');
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `recommended_by`) VALUES (28, 'Felipa Bahringer', '21694', '(696)834-4394', 1);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`, `recommended_by`) VALUES (29, 'Dr. Carlo Wiza', '91900', '(926)346-7013', 2);
INSERT INTO `costumers` (`costumer_id`, `name`, `cp`, `telf`) VALUES (30, 'Macey Fadel Jr.', '64418-7992', '893-285-5935x982');


#
# TABLE STRUCTURE FOR: employees
#

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `sales` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `employees` (`employee_id`, `name`, `sales`) VALUES (1, 'Mrs. Dejah Kutch PhD', 6);
INSERT INTO `employees` (`employee_id`, `name`, `sales`) VALUES (2, 'Birdie Breitenberg', 6);
INSERT INTO `employees` (`employee_id`, `name`, `sales`) VALUES (3, 'Tanya Collins', 6);
INSERT INTO `employees` (`employee_id`, `name`, `sales`) VALUES (4, 'Kelsie Langworth', 6);
INSERT INTO `employees` (`employee_id`, `name`, `sales`) VALUES (5, 'Wyman Bruen Jr.', 6);

#
# TABLE STRUCTURE FOR: providers
#

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

INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (1, 'Langosh Group', 'Balistreri Landing', '0995', '985', '532', 'Quitzonmouth', 00036422, 'China', '+49(0)9663860905', '1-133-319-0548', '57854654L');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (2, 'Anderson-Kemmer', 'Conn Rest', '12859', '442', '542', 'Lorastad', 00006977, 'Liechtenstein', '895.416.6923x576', '078-081-9213x937', '48795123P');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (3, 'Herzog, Torphy and Marvin', 'Leta Roads', '9222', '946', '070', 'West Budberg', 00016609, 'Antarctica (the territory South of 60 deg S)', '+59(5)7158267391', '(556)789-8729', '64569871H');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (4, 'Roberts-Schroeder', 'Romaguera Island', '8844', '659', '725', 'West Electachester', 00075505, 'Sao Tome and Principe', '(178)515-4217x5043', '(008)088-3103x4007', '87319682F');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (5, 'Heathcote-Connelly', 'Junior Locks', '90394', '195', '811', 'Ransomtown', 00060560, 'Algeria', '714-326-5001x40473', '1-363-893-5906', '68264595N');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (6, 'Gaylord and Sons', 'Faustino Landing', '301', '717', '719', 'Corrinebury', 00051115, 'Tuvalu', '(616)960-1840', '1-558-105-4012', '43598713N');
INSERT INTO `providers` (`provider_id`, `name`, `street`, `street_num`, `floor`, `door`, `city`, `cp`, `country`, `phone`, `fax`, `nif`) VALUES (7, 'Kohler Inc', 'Elmira Spring', '983', '410', '386', 'Cristfort', 00030349, 'Brazil', '1-121-035-7817x858', '+61(0)4762344263', '27852147T');


#
# TABLE STRUCTURE FOR: glasses_brands
#

CREATE TABLE `glasses_brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `provider_id` int(11) NOT NULL,
  PRIMARY KEY (`brand_id`),
  KEY `fk_glasses_brands_providers1_idx` (`provider_id`),
  CONSTRAINT `fk_glasses_brands_providers1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`provider_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (1, 'rerum', 1);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (2, 'dolor', 3);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (3, 'incidunt', 2);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (4, 'tenetur', 7);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (5, 'soluta', 6);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (6, 'optio', 4);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (7, 'hic', 7);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (8, 'assumenda', 1);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (9, 'illum', 2);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (10, 'exercitationem', 3);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (11, 'iste', 4);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (12, 'in', 5);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (13, 'atque', 6);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (14, 'et', 7);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (15, 'quaerat', 1);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (16, 'eum', 2);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (17, 'ducimus', 3);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (18, 'maxime', 4);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (19, 'repellat', 5);
INSERT INTO `glasses_brands` (`brand_id`, `name`, `provider_id`) VALUES (20, 'sint', 3);

#
# TABLE STRUCTURE FOR: glasses
#

CREATE TABLE `glasses` (
  `glass_grad_right` decimal(10,2) NOT NULL,
  `glass_grad_left` decimal(10,2) NOT NULL,
  `frame_color` varchar(45) NOT NULL,
  `glass_color` varchar(45) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `frame_type` ENUM('float', 'paste', 'metal') NOT NULL,
  `glass_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`glass_id`),
  KEY `fk_glasses_glasses_brands1_idx` (`brand_id`),
  CONSTRAINT `fk_glasses_glasses_brands1` FOREIGN KEY (`brand_id`) REFERENCES `glasses_brands` (`brand_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('0.00', '178.63', 'navy', 'black', '3.70', 1, 1, 1);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('91.35', '785.00', 'blue', 'blue', '102.31', 2, 2, 2);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('7681395.50', '529.24', 'lime', 'silver', '612.87', 3, 3, 3);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('6970052.48', '4712.05', 'lime', 'maroon', '55561.00', 4, 1, 4);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('3668647.78', '67.00', 'aqua', 'silver', '332925.54', 5, 2, 5);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('0.00', '2046878.63', 'maroon', 'silver', '35623.26', 6, 3, 6);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('4.60', '122611.99', 'gray', 'purple', '99999999.99', 7, 1, 7);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('99999999.99', '20657118.85', 'aqua', 'teal', '152896.00', 8, 2, 8);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('1.13', '7849307.30', 'black', 'purple', '345329.99', 9, 3, 9);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('0.95', '2.51', 'teal', 'white', '2.86', 10, 1, 10);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('860359.92', '6149091.03', 'green', 'gray', '13.54', 11, 2, 11);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('1.34', '3645.70', 'purple', 'navy', '26733.50', 12, 3, 12);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('703637.00', '166.68', 'navy', 'navy', '43327.03', 13, 1, 13);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('26.00', '0.00', 'yellow', 'navy', '6941.00', 14, 2, 14);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('63162.83', '4478.88', 'blue', 'olive', '65.16', 15, 3, 15);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('4099498.98', '455195.42', 'yellow', 'yellow', '2.00', 16, 1, 16);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('101112.14', '99999999.99', 'yellow', 'navy', '42452429.86', 17, 2, 17);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('99999999.99', '33206.26', 'black', 'yellow', '0.00', 18, 3, 18);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('66.04', '7818158.28', 'teal', 'maroon', '6355426.35', 19, 1, 19);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('0.00', '0.15', 'blue', 'fuchsia', '1257.86', 20, 2, 20);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('1112447.00', '12.93', 'gray', 'maroon', '28550531.71', 1, 3, 21);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('23336.35', '2.10', 'olive', 'aqua', '4934111.00', 2, 1, 22);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('5484213.53', '1707.74', 'silver', 'black', '81.50', 3, 2, 23);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('135.81', '0.00', 'olive', 'silver', '3172.98', 4, 3, 24);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('0.00', '14.00', 'teal', 'white', '2055.45', 5, 1, 25);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('1.00', '48.63', 'purple', 'aqua', '605161.07', 6, 2, 26);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('4603747.02', '7.11', 'purple', 'gray', '11221643.60', 7, 3, 27);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('17.40', '1509857.82', 'blue', 'teal', '0.00', 8, 1, 28);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('99999999.99', '18327320.89', 'teal', 'teal', '0.00', 9, 2, 29);
INSERT INTO `glasses` (`glass_grad_right`, `glass_grad_left`, `frame_color`, `glass_color`, `unit_price`, `brand_id`, `frame_type`, `glass_id`) VALUES ('33300016.72', '0.00', 'olive', 'green', '0.00', 10, 3, 30);

#
# TABLE STRUCTURE FOR: sales
#

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_date` date NOT NULL,
  `glasses_glass_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `costumer_id` int(11) NOT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `fk_sales_employees1_idx` (`employee_id`),
  KEY `fk_sales_costumers1_idx` (`costumer_id`),
  KEY `fk_sales_glasses1_idx` (`glasses_glass_id`),
  CONSTRAINT `fk_sales_employees1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  CONSTRAINT `fk_sales_costumers1` FOREIGN KEY (`costumer_id`) REFERENCES `costumers` (`costumer_id`),  
  CONSTRAINT `fk_sales_glasses1` FOREIGN KEY (`glasses_glass_id`) REFERENCES `glasses` (`glass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (1, '2001-05-21', 1, 1, 1);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (2, '2023-01-27', 2, 2, 2);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (3, '1994-08-15', 3, 3, 3);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (4, '1979-04-06', 4, 4, 4);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (5, '1989-06-18', 5, 5, 5);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (6, '1986-04-18', 6, 1, 6);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (8, '2000-06-27', 8, 2, 7);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (7, '1978-03-10', 7, 3, 8);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (9, '1977-08-11', 9, 4, 9);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (10, '2017-09-26', 10, 5, 10);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (11, '2018-04-29', 11, 1, 11);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (12, '1990-06-22', 12, 2, 12);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (13, '2004-12-24', 13, 3, 13);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (14, '2008-05-15', 14, 4, 14);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (15, '1973-06-01', 15, 5, 15);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (16, '1991-12-30', 16, 1, 16);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (17, '1987-02-24', 17, 2, 17);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (18, '2005-07-24', 18, 3, 18);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (19, '2011-12-30', 19, 4, 19);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (20, '2014-03-20', 20, 5, 20);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (21, '2014-05-14', 21, 1, 21);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (22, '1987-10-05', 22, 2, 22);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (23, '1992-10-21', 23, 3, 23);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (24, '1984-04-26', 24, 4, 24);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (25, '2016-04-10', 25, 5, 25);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (26, '2018-01-04', 26, 1, 26);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (27, '1991-09-06', 27, 2, 27);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (28, '1992-11-01', 28, 3, 28);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (29, '1988-12-09', 29, 4, 29);
INSERT INTO `sales` (`sale_id`, `sale_date`, `glasses_glass_id`, `employee_id`, `costumer_id`) VALUES (30, '1988-06-15', 30, 5, 30);
