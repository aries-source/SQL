DROP DATABASE IF EXISTS `Inventory`;

CREATE DATABASE `Inventory`;
USE  `Inventory`;
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;


CREATE TABLE `Products` (
	`Product ID` int(11) NOT NULL AUTO_INCREMENT,
    `Product Name` varchar(50) NOT NULL,
    `Quantity in stock` int(11) NOT NULL,
    `Unit Price(USD)` decimal(6,2) NOT NULL,
    PRIMARY KEY (`Product ID`)
)ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Products` 
		VALUES (1,'HP Pavillion 15',600,1500.00);
INSERT INTO `Products` 
		VALUES (2,'Dell XPS 15',500,2000.00);
INSERT INTO `Products` 
		VALUES (3,'HP Pro Book',1000,700.00);
INSERT INTO `Products` 
		VALUES (4,'Lenovo Yoga',400,1200.00);
INSERT INTO `Products` 
		VALUES (5,'Microsoft Surface Pro',600,2000.00);
INSERT INTO `Products` 
		VALUES (6,'Samsung X360',300,1600.00);
INSERT INTO `Products` 
		VALUES (7,'Samsung S22',1000,999.95);
INSERT INTO `Products` 
		VALUES (8,'Apple Iphone 13',900,1000.00);
INSERT INTO `Products` 
		VALUES (9,'Apple M2',800,2000.00);
INSERT INTO `Products` 
		VALUES (10,'Apple M 1',1200,1500.00);
        
CREATE TABLE `Clients`(
		`Client ID` int(11) NOT NULL AUTO_INCREMENT,
        `Name` varchar(50) NOT NULL,
        `Date of Birth` varchar(20) NOT NULL,
        `Number` varchar(20) NOT NULL,
        `City` varchar(50) NOT NULL,
        `Nationality` varchar(50) NOT NULL,
        PRIMARY KEY (`Client ID`)
)ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Clients`
		VALUES(1,'Stephen Covey','1969-10-01','001-345-187-9008','New York','American');
INSERT INTO `Clients`
		VALUES(2,'Adam Smith','1987-04-11','001-415-170-1128','Atlanta','American');
INSERT INTO `Clients`
		VALUES(3,'Atinuke Adebayour','1992-01-31','024-885-180-6708','Lagos','Nigerian');
INSERT INTO `Clients`
		VALUES(4,' Xin Su Lee','2001-01-01','086-445-282-9280','Shanghai','Chinese');
INSERT INTO `Clients`
		VALUES(5,'Jeff Bezos','1969-12-11','001-345-127-9118','Seatle','American');
INSERT INTO `Clients`
		VALUES(6,'Predeep Gura','1990-11-21','056-111-187-9898','New Delhi','Indian');
INSERT INTO `Clients`
		VALUES(7,'Dennis Acheampong','2000-05-01','233-345-700-9768','Kumasi','Ghanaian');
INSERT INTO `Clients`
		VALUES(8,'Eugene Adom','1999-10-01','001-345-777-6678','Kumasi','Ghanaian');
INSERT INTO `Clients`
		VALUES(9,'Otis Milbourn','2001-10-01','044-745-187-9128','London','English');
INSERT INTO `Clients`
		VALUES(10,'Alexei Smirnov','1949-01-12','028-333-007-1009','Moscow','Russian');
        
        
CREATE TABLE `Orders` (
		`Order ID` int(11) NOT NULL AUTO_INCREMENT,
        `Client ID` int(11) NOT NULL,
        `Product ID` int(11) NOT NULL,
        `Order Date` varchar(10) NOT NULL,
        `Amount Paid` decimal(6,2) DEFAULT 0.00,
        `Last Payment Date` varchar(10) DEFAULT NULL,
        PRIMARY KEY (`Order ID`),
        CONSTRAINT `fk_client_id` FOREIGN KEY (`Client ID`) REFERENCES `Clients` (`Client ID`) ON UPDATE CASCADE ON DELETE RESTRICT,
        CONSTRAINT `fk_product_id` FOREIGN KEY (`Product ID`) REFERENCES `Products` (`Product ID`)ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
        
INSERT INTO `Orders`
		VALUES(1,2,1,'2022-01-10',1500.00,'2022-01-23');
INSERT INTO `Orders`
		VALUES(2,1,5,'2022-02-28',2000.00,'2022-03-22');
INSERT INTO `Orders`
		VALUES(3,9,10,'2022-01-13',2000.00,'2022-01-31');
INSERT INTO `Orders`
		VALUES(4,2,7,'2022-02-10',700.00,'2022-02-13');
INSERT INTO `Orders`
		VALUES(5,3,10,'2022-01-11',1000.00,'2022-01-30');
INSERT INTO `Orders`
		VALUES(6,8,8,'2022-02-24',999.95,'2022-03-03');
INSERT INTO `Orders`
		VALUES(7,7,1,'2022-01-11',1500.00,'2022-02-20');
INSERT INTO `Orders`
		VALUES(8,4,7,'2022-01-17',900.00,'2022-01-23');
INSERT INTO `Orders`
		VALUES(9,6,6,'2022-04-17',1200.00,'2022-04-26');
INSERT INTO `Orders`
		VALUES(10,5,4,'2022-03-10',500.00,'2022-04-15');
INSERT INTO `Orders`
		VALUES(11,10,3,'2022-01-12',1000.00,'2022-01-29');
        

        
        
