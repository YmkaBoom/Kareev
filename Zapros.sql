DROP TABLE IF EXISTS `Sales`;
DROP TABLE IF EXISTS `Tour`;
DROP TABLE IF EXISTS `Hostel`;
DROP TABLE IF EXISTS `Contry`;
DROP TABLE IF EXISTS `Emp`;
DROP TABLE IF EXISTS `Clients`;


CREATE TABLE `Hostel` (
	`idHostel` int(11) NOT NULL AUTO_INCREMENT,
	`name_hostel` varchar(255) NOT NULL,
	`types_hostel` varchar(255) NOT NULL,
	`class_hostel` varchar(255) NOT NULL,
	PRIMARY KEY (`idHostel`)
);


CREATE TABLE `Tour` (
	`idTour` INT(11) NOT NULL AUTO_INCREMENT,
	`Tour_Types` varchar(255) NOT NULL,
	`Price` varchar(255) NOT NULL,
	`Data_Dep` DATE NOT NULL,
	`City_Dep` varchar(255) NOT NULL,
	`Number_of_people` varchar(255) NOT NULL,
	`id_Hotel` int(11) NOT NULL,
	`id_contry` int(11) NOT NULL,
	PRIMARY KEY (`idTour`)
);



CREATE TABLE `Clients` (
	`id_Clients` int(11) NOT NULL AUTO_INCREMENT,
	`FIO_Clients` varchar(255) NOT NULL,
	`Passport` INT(14) NOT NULL,
	`Number_Clients` INT(14) NOT NULL,
	PRIMARY KEY (`id_Clients`)
);


CREATE TABLE `Contry` (
	`idContry` int(11) NOT NULL AUTO_INCREMENT,
	`Contry` varchar(255) NOT NULL,
	`No_railroad_broadcast` varchar(255) NOT NULL,
	PRIMARY KEY (`idContry`)
);



CREATE TABLE `Emp` (
	`id_Emp` int(11) NOT NULL AUTO_INCREMENT,
	`FIO_Emp` varchar(255) NOT NULL,
	`Number_Emp` varchar(255) NOT NULL,
	PRIMARY KEY (`id_Emp`)
);



CREATE TABLE `Sales` (
	`id_Sales` int(11) NOT NULL AUTO_INCREMENT,
	`Date_Sales` DATE NOT NULL,
	`Quantity_sales` varchar(255) NOT NULL,
	`id_clients` INT(11) NOT NULL,
	`id_emp` INT(11) NOT NULL,
	`id_tour` INT(11) NOT NULL,
	PRIMARY KEY (`id_Sales`)
);



ALTER TABLE `Tour` ADD CONSTRAINT `Tour_fk0` FOREIGN KEY (`id_Hotel`) REFERENCES `Hostel`(`idHostel`);

ALTER TABLE `Tour` ADD CONSTRAINT `Tour_fk1` FOREIGN KEY (`id_contry`) REFERENCES `Contry`(`idContry`);

ALTER TABLE `Sales` ADD CONSTRAINT `Sales_fk0` FOREIGN KEY (`id_clients`) REFERENCES `Clients`(`id_Clients`);

ALTER TABLE `Sales` ADD CONSTRAINT `Sales_fk1` FOREIGN KEY (`id_emp`) REFERENCES `Emp`(`id_Emp`);

ALTER TABLE `Sales` ADD CONSTRAINT `Sales_fk2` FOREIGN KEY (`id_tour`) REFERENCES `Tour`(`idTour`);


INSERT INTO Hostel(`name_hostel`, `types_hostel`, `class_hostel`)
VALUES ('Star', 'Resort Hotel', 'five stars'), 
		 ('jopa','inns','three stars'),
		 ('Green Day','Bed and Breakfast','five stars'),
		 ('Nigth more','City hotels and inns','four stars');


INSERT INTO  Clients (`FIO_Clients`, `Passport`, `Number_Clients`) 
VALUES 	('IVANOV IVAN IVANOVICH','12345678','895689'),
			('Gruznov Dima Dmitrievich','32144355','894284'),
			('Kornilow Kassian Antonovich','23144235','235434'),
			('Timoxa Dosya Rudolifivich','31435245','893429'),
			('Komarov Bladimir Bladimirivich','23134325','894579'),
			('Lobanova Miay Petrovna','13244324','8934673'),
			('Petrova Stella Proklovna','34212314','8938429');
			 
			
SELECT FIO_Clients FROM Clients WHERE FIO_Clients = '*m*';


INSERT INTO Contry (`Contry`, `No_railroad_broadcast`)
VALUES ('India','yes'),
		 ('Portugal','not'),
		 ('Japan','yes'),
		 ('Spain','not'),
		 ('Mexico','yes');
		 

INSERT INTO Emp (`FIO_Emp`, `Number_Emp`) 
VALUES ('Mironova Regina Avdeeva','325895'),
		 ('Kolesnikova Amina Onisimova','235623'),
		 ('Mironova Santa Gelasievna','325642'),
		 ('Kelagina Margarita Grigorevna','457443');


INSERT INTO Sales (`Date_Sales`, `Quantity_sales`)
VALUES  	('12.11.2003','1'),
			('12.11.2003','2'),
			('14.12.2003','1'),
			('16.12.2003','2'),
			('18.12.2003','1'),
			('01.01.2004','2'),
			('27.01.2004','2'),
			('31.01.2004','1'); 

			
			
SELECT FIO_Clients, Number_Clients FROM Clients,Sales WHERE Quantity_sales = '1';
			
INSERT INTO Tour (`Tour_Types`, `Price`, `Data_Dep`, `City_Dep`, `Number_of_people`)
VALUES   ('Package tour', '1000$', '15.02.2004', 'Tolyatti', '14'),
			('Hot Tour', '1000$', '17.02.2004', 'Moscow', '15'),
			('Package tour', '1500$', '15.02.2004', 'Tolyatti', '20'),
			('Hot Tour', '1200 $', '17.02.2004', 'Moscow', '15'),
			('Package tour', '1500 $', '15.02.2004', 'Moscow', '12'),
			('Private tour', '1500 $', '24.02.2004', 'Tolyatti', '10'),
			('Hot Tour', '1000 $', '17.02.2004', 'Moscow', '11'),
			('Private tour', '1400 $', '24.02.2004', 'Sochi', '12'); 
			
			

			
			
			
			
			
			
			
			
			

