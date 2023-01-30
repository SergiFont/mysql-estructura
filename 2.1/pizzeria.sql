DROP DATABASE IF EXISTS pizzeriaSergi;
CREATE DATABASE pizzeriaSergi;
USE pizzeriaSergi;

--
-- Table structure for table `PIZZA_CATEGORIES`
--

CREATE TABLE `pizza_categories` (
  `category_id` TINYINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `pizza_categories` (`category_id`, `name`)
VALUES  (1, 'básicas'),
        (2, 'especiales');

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `pizza_category` TINYINT DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `image` blob NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_products_pizza_categories1_idx` (`pizza_category`),
  CONSTRAINT `fk_products_pizza_categories1` FOREIGN KEY (`pizza_category`) REFERENCES `pizza_categories` (`category_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO `products` (`product_id`, `name`, `pizza_category`, `description`, `image`, `unit_price`)
VALUES  (1,'Margarita', 1, 'Básica',_binary 'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/5802fab5-fdce-468a-a830-43e8001f5a72/Derivates/c00dc34a-e73d-42f0-a86e-e2fd967d33fe.jpg',9.95),
        (2,'Peperoni', 1, 'Bien picantona',_binary 'https://essenrezepte.de/wp-content/uploads/2021/08/Pepperoni-Pizza-.jpg',11.50),
        (3,'Jamon y Queso', 1, 'Jamon del bueno',_binary 'https://donadona.com/630-large_default/pizza-jamon-y-queso.jpg',11.50),
        (4,'Hawaiana', 1, 'Si pides esto pasas a la lista negra',_binary 'https://www.recetas360.com/wp-content/uploads/2021/06/como-hacer-la-pizza-hawaiana-receta-500x500.jpg',11.80),
        (5,'Champiñones', 2, 'Recién recogidas',_binary 'https://unareceta.com/wp-content/uploads/2014/05/pizza-de-champin%CC%83ones.jpg',12.50),
        (6,'Quatro Quesos', 2, 'Se te funde en la boca',_binary 'https://www.cocinatis.com/archivos/202207/CTIS0093-receta-pizza-cuatro-quesos_B3N6zYV_large_16x9.jpg',12.80),
        (7,'Jalapeños', 2, 'Muy picantes',_binary 'http://www.thecomfortofcooking.com/wp-content/uploads/2015/06/PulledPorkJalapenoPineapplePizzawithBaconandCilantro-1.jpg',12.20),
        (8,'Especial de la casa', 2, 'Esta noche como pizza, a la mierda la dieta',_binary 'https://ais.kochbar.de/kbrezept/547900_1077595/1200x1200/pizza-mit-salami-paprika-und-peperoni-ala-setangi-beach-rezept-bild-nr-4.jpg',14.50),
        (9,'Básica', NULL,'Todo lo que necesitas',_binary 'https://ep01.epimg.net/elviajero/imagenes/2017/11/02/actualidad/1509615048_727318_1509617190_noticia_normal.jpg',6.50),
        (10,'Quesos',NULL,'Para fundirse con ella',_binary 'https://cdn.upsocl.com/wp-content/uploads/2019/09/Sin-ti%CC%81tulo-1-1024x555.jpg',8.50),
        (11,'Doble carne',NULL,'Doble sabor',_binary 'https://cdn.shopify.com/s/files/1/0323/2405/9275/products/hamburguesa_doble_carne_1024x1024.png?v=1594184497',10.80),
        (12,'Vegetariana',NULL,'Con Eura',_binary 'https://danzadefogones.com/wp-content/uploads/2014/03/Hamburguesa-Vegetariana-via-danzadefogones.com_1.jpg',12.50),
        (13,'Bacon',NULL,'Que mas hay que decir',_binary 'https://img-global.cpcdn.com/recipes/1f6db317de5ee9a2/1200x630cq70/photo.jpg',8.80),
        (14,'Especial',NULL,'Con carne desmechada',_binary 'https://res.cloudinary.com/glovoapp/h_225,f_auto,q_auto/Stores/b1wzmfncx27vltfmrcl8',11.20),
        (15,'Especial doble',NULL,'Sin comentarios',_binary 'https://res.cloudinary.com/glovoapp/h_225,f_auto,q_auto/Stores/b1wzmfncx27vltfmrcl8',13.50),
        (16,'Agua',NULL,NULL, _binary 'https://ep01.epimg.net/elviajero/imagenes/2017/11/02/actualidad/1509615048_727318_1509617190_noticia_normal.jpg',1.50),
        (17,'Fanta',NULL,NULL,_binary 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3Rd_UozPIhsUmm_ExiYeQ2X4RsiDSdK0CCA&usqp=CAU',2.50),
        (18,'Coca-Cola',NULL,NULL,_binary 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNcUTMI3Q2CJiCUqyrdzfNlFcY5UHqmKz69A&usqp=CAU',2.50),
        (19,'Sprite',NULL,NULL,_binary 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwh1uonNecub7ZzYlkNnlQL-5KyeevQS3Rw&usqp=CAU',2.50),
        (20,'Nestea',NULL,NULL,_binary 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTZgMllz9KLh1zLiEofTiS8aE9AZfbDq0z1Q&usqp=CAU',2.50);

-- Table structure for table `costumers`

CREATE TABLE `costumers` (
  `costumer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `cp` mediumint(5) unsigned zerofill NOT NULL,
  `city` varchar(45) NOT NULL,
  `province` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`costumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `costumers`
--

INSERT INTO `costumers` 
VALUES  (2,'Juan','Font','Calle Avenida Juan Carlos num 25',08007,'Barcelona','Barcelona','645654897'),
        (3,'Pedro','Font','Calle Avenida Margarita num 56',08006,'Barcelona','Barcelona','645654456'),
        (4,'Julia','Font','Calle Marruecos num 23',08007,'Barcelona','Barcelona','645654897'),
        (5,'Marc','Font','Calle Señorita num 56',08005,'Barcelona','Barcelona','621654897'),
        (6,'Carles','Font','Calle Pendiente num 55',08021,'Barcelona','Barcelona','645654894'),
        (7,'Jaume','Font','Calle Avenida Pajaro num 45',08022,'Barcelona','Barcelona','645654893'),
        (8,'Ramon','Font','Calle Avenida Cuchara num 35',08023,'Barcelona','Barcelona','645654892'),
        (9,'Robert','Font','Calle Avenida Raton num 25',08024,'Barcelona','Barcelona','645654891'),
        (10,'Juan','Pedralbes','Avenida Juan Carlos num 2',17005,'Girona','Girona','615934957'),
        (11,'Pedro','Pedralbes','Avenida Margarita num 5',17007,'Girona','Girona','615934946'),
        (12,'Julia','Pedralbes','Calle Mispanes num 23',17028,'Figueres','Girona','615934932'),
        (13,'Marc','Pedralbes','Calle Tukutu num 56',17027,'Figueres','Girona','615934998'),
        (14,'Carles','Pedralbes','Calle QueKoñazo num 55',25005,'Lleida','Lleida','615934986'),
        (15,'Jaume','Pedralbes','Avenida Pajaro num 4',25008,'Lleida','Lleida','615934965'),
        (16,'Ramon','Pedralbes','Avenida Cuchara num 3',25065,'Tàrrega','Lleida','615934912'),
        (17,'Robert','Pedralbes','Avenida Raton num 2',25070,'Tàrrega','Lleida','615934921'),
        (18,'Juan','Tulipan','Callejuela Juan Carlos num 21',43005,'Tarragona','Tarragona','785346915'),
        (19,'Pedro','Tulipan','Callejuela Margarita num 51',43005,'Tarragona','Tarragona','785346998'),
        (20,'Julia','Tulipan','Callejuela Mispanes num 22',43096,'Reus','Tarragona','785346976'),
        (21,'Marc','Tulipan','Callejuela Tukutu num 59',43089,'Reus','Tarragona','785346945');



--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(80) NOT NULL,
  `cp` mediumint(5) unsigned zerofill NOT NULL,
  `city` varchar(45) NOT NULL,
  `province` varchar(45) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store`
--

INSERT INTO `store` 
VALUES  (1,'Calle Margarita num 34',08007,'Barcelona','Barcelona'),
        (2,'Calle Pepito num 28',08030,'Barcelona','Barcelona'),
        (3,'Calle Girona num 29',17005,'Girona','Girona'),
        (4,'Calle Figueres num 56',17028,'Figueres','Girona'),
        (5,'Calle Lleida num 78',25005,'Lleida','Lleida'),
        (6,'Calle Girona num 190',25060,'Tàrrega','Lleida'),
        (7,'Calle Tarragona num 02',43005,'Tarragona','Tarragona'),
        (8,'Calle Reus num 19',43090,'Reus','Tarragona');

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `nif` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `store_id` int NOT NULL,
  `employee_type` ENUM('chef', 'shipper') NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `nif_UNIQUE` (`nif`),
  KEY `fk_employees_store_idx` (`store_id`),
  CONSTRAINT `fk_employees_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` 
VALUES  (1,'Carla','Rodriguez','32567854C','645897235',1,'chef'),
        (2,'Juan','Palomo','45789812T','689562354',1,'chef'),
        (3,'Manuel','Garcia','47896541S','621453987',1,'shipper'),
        (4,'Pepe','Rodriguez','78945612Q','645897278',1,'shipper'),
        (5,'Carlos','Rodriguez','32165498P','645897298',2,'chef'),
        (6,'Marcos','Rodriguez','45639871L','645897212',2,'chef'),
        (7,'David','Rodriguez','58741236K','645897234',2,'shipper'),
        (8,'Sonia','Rodriguez','73519546H','645897223',2,'shipper'),
        (9,'Carla','Martinez','32567854M','235897235',3,'chef'),
        (10,'Juan','Martinez','45789812N','129562354',3,'shipper'),
        (11,'Manuel','Martinez','47896541B','341453987',4,'chef'),
        (12,'Pepe','Martinez','78945612V','455897278',4,'shipper'),
        (13,'Carlos','Martinez','32165498C','565897298',5,'chef'),
        (14,'Marcos','Martinez','45639871X','675897212',5,'shipper'),
        (15,'David','Martinez','58741236Z','785897234',6,'chef'),
        (16,'Sonia','Martinez','73519546A','895897223',6,'shipper'),
        (17,'Juan','DeLPozo','58741236S','905897234',7,'chef'),
        (18,'Sonia','DeLPozo','73519546D','641297223',7,'shipper'),
        (19,'David','DeLPozo','58741236F','642397234',8,'chef'),
        (20,'Raquel','DeLPozo','73519546G','643497223',8,'shipper');

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_date` datetime NOT NULL,
  `total_products` tinyint NOT NULL,
  `deliver_time` datetime DEFAULT NULL,
  `costumer_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `type` ENUM('domicilio', 'recoger en tienda') NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_orders_costumers1_idx` (`costumer_id`),
  KEY `fk_orders_employees1_idx` (`employee_id`),
  CONSTRAINT `fk_orders_costumers1` FOREIGN KEY (`costumer_id`) REFERENCES `costumers` (`costumer_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_employees1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` 
VALUES  (1,'2022-01-04 18:45:34',4,NULL,2,NULL,'recoger en tienda'),
        (2,'2022-01-04 20:35:37',6,'2022-01-04 20:59:37',3,3,'domicilio'),
        (3,'2022-01-04 21:35:37',4,NULL,4,NULL,'recoger en tienda'),
        (4,'2022-01-04 22:35:37',3,'2022-01-04 22:59:37',5,4,'domicilio'),
        (5,'2022-01-05 18:35:37',8,'2022-01-05 18:59:37',6,7,'domicilio'),
        (6,'2022-01-05 19:35:37',5,'2022-01-05 19:59:37',7,8,'domicilio'),
        (7,'2022-01-05 20:35:37',6,NULL,8,NULL,'recoger en tienda'),
        (8,'2022-01-05 21:35:37',6,'2022-01-05 21:59:37',9,8,'domicilio'),
        (9,'2022-01-05 22:35:37',4,'2022-01-05 22:59:37',10,10,'domicilio'),
        (10,'2022-01-06 17:35:37',4,'2022-01-06 17:59:37',3,4,'domicilio'),
        (11,'2022-01-06 18:35:37',10,'2022-01-06 18:59:37',4,3,'domicilio'),
        (12,'2022-01-06 19:35:37',12,NULL,11,NULL,'recoger en tienda'),
        (13,'2022-01-06 21:35:37',8,'2022-01-06 21:59:37',12,11,'domicilio'),
        (14,'2022-01-06 22:35:37',6,'2022-01-06 22:59:37',13,11,'domicilio'),
        (15,'2022-01-07 19:35:37',6,'2022-01-07 19:59:37',14,14,'domicilio'),
        (16,'2022-01-07 20:35:37',4,'2022-01-07 20:59:37',15,14,'domicilio'),
        (17,'2022-01-07 21:35:37',4,NULL,16,NULL,'recoger en tienda'),
        (18,'2022-01-07 22:35:37',8,'2022-01-07 22:59:37',17,16,'domicilio'),
        (19,'2022-01-08 18:35:37',7,'2022-01-08 18:59:37',4,4,'domicilio'),
        (20,'2022-01-08 19:35:37',3,'2022-01-08 19:59:37',18,18,'domicilio'),
        (21,'2022-01-08 20:35:37',2,'2022-01-08 20:59:37',19,18,'domicilio'),
        (22,'2022-01-08 21:35:37',4,'2022-01-08 21:59:37',20,20,'domicilio'),
        (23,'2022-01-08 22:35:37',4,NULL,21,NULL,'recoger en tienda'),
        (24,'2022-01-09 18:35:37',8,'2022-01-09 18:59:37',11,10,'domicilio'),
        (25,'2022-01-09 19:35:37',6,'2022-01-09 19:59:37',15,14,'domicilio'),
        (26,'2022-01-09 20:35:37',4,'2022-01-09 20:59:37',2,3,'domicilio'),
        (27,'2022-01-09 21:35:37',4,'2022-01-09 21:59:37',16,16,'domicilio'),
        (28,'2022-01-09 22:35:37',2,NULL,8,NULL,'recoger en tienda'),
        (29,'2022-01-10 20:35:37',10,'2022-01-10 20:59:37',9,7,'domicilio'),
        (30,'2022-01-10 21:35:37',12,'2022-01-10 21:59:37',10,10,'domicilio'),
        (31,'2022-01-10 22:35:37',6,'2022-01-10 22:59:37',11,10,'domicilio');

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` SMALLINT NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `fk_order_items_orders1_idx` (`order_id`),
  KEY `fk_order_items_products1_idx` (`product_id`),
  CONSTRAINT `fk_order_items_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_order_items_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` 
VALUES  (1,2,1),
        (1,4,1),
        (1,17,1),
        (1,18,1),
        (2,5,1),
        (2,6,1),
        (2,11,1),
        (2,16,1),
        (2,18,1),
        (2,19,1),
        (3,9,1),
        (3,15,1),
        (3,17,1),
        (3,20,1),
        (4,1,1),
        (4,8,1),
        (4,16,1),
        (5,2,1),
        (5,3,1),
        (5,6,2),
        (5,16,1),
        (5,17,1),
        (5,19,2),
        (6,10,1),
        (6,12,1),
        (6,14,1),
        (6,20,2),
        (7,1,2),
        (7,13,1),
        (7,16,1),
        (7,17,2),
        (8,11,2),
        (8,7,1),
        (8,16,1),
        (8,19,1),
        (8,20,1),
        (9,9,2),
        (9,17,2),
        (10,6,1),
        (10,4,1),
        (10,16,1),
        (10,17,1),
        (11,5,2),
        (11,6,2),
        (11,8,2),
        (11,19,2),
        (11,20,2),
        (12,10,1),
        (12,4,2),
        (12,12,2),
        (12,14,2),
        (12,7,1),
        (12,16,3),
        (12,17,1),
        (13,2,8),
        (14,12,3),
        (14,17,3),
        (15,9,3),
        (15,5,3),
        (16,1,4),
        (17,4,2),
        (17,9,2),
        (18,1,3),
        (18,9,1),
        (18,10,1),
        (18,17,3),
        (19,2,4),
        (19,16,3),
        (20,7,1),
        (20,9,1),
        (20,17,1),
        (21,11,2),
        (22,3,4),
        (23,12,4),
        (24,1,3),
        (24,19,5),
        (25,3,6),
        (26,15,4),
        (27,5,2),
        (27,16,2),
        (28,1,2),
        (29,15,6),
        (29,20,4),
        (30,8,4),
        (30,14,4),
        (30,18,4),
        (31,1,1),
        (31,4,1),
        (31,9,1),
        (31,13,1),
        (31,16,1),
        (31,17,1);

