DROP DATABASE IF EXISTS final_project;
CREATE DATABASE final_project;

USE final_project;

CREATE TABLE user (
	UserID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50), 
    LastName VARCHAR(50),
    UserName VARCHAR(50),
    Password VARCHAR(50),
    Admin INT NOT NULL,
    PRIMARY KEY(UserID)
);

INSERT INTO user 
	(FirstName, LastName, UserName, Password, Admin)
VALUES
	('Alice', 'Smith', 'asmith', 'test123', 0),
    ('Bob', 'Smith', 'bsmith', 'test123', 0),
    ('Charlie', 'Smith', 'csmith', 'test123', 0),
    ('admin', 'admin', 'admin', 'admin', 1);
  
  
CREATE TABLE product (
	ProductID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(50),
    Price DOUBLE,
    ImagePath VARCHAR(200),
    PRIMARY KEY(ProductID)
);

INSERT INTO product
	(Name, Price, ImagePath)
VALUES
	('Pokemon Platinum', 35.00, 'pokemonPlatinum.jpg'),
	('PlayStation Vita', 80.00, 'psvita.jpg'),
	('Jordan Shoes', 30.00, 'NikeAirJordan.jpg'),
	('Couch', 50.00, 'couch.jpg'),
	('Pearler Figures', 5.00, 'Cap&Thanos.jpg'),
	('UNCC Jacket', 5.00, 'UNCCJacket.jpg'),
	('Tennis Raquet', 15.00, 'tennisRacquet.jpg'),
	('KitchenAid Mixed', 250.00, 'KitchenAid.jpg'),
	('Mr. Heater', 12.00, 'heater.jpg'),
	('HolyStone Drone', 20.00, 'drone.jpg'),
	('Black Dress', 6.00, 'blackDress.jpg'),
	('Brown Shoes', 5.00, 'BrownShoes.jpg'),
	('Beats Pro', 50.00, 'beats.jpg'),
	('iPad Pro', 350.00, 'ipadPro.jpg'),
	('Superman Action Figure', 5.00, 'Superman.jpg'),
	('Electric Saw', 25.00, 'Saw.jpg');