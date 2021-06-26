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
	('Pokemon Platinum', 35.00, 'Images/pokemonPlatinum.jpg'),
	('PlayStation Vita', 80.00, 'Images/psvita.jpg'),
	('Jordan Shoes', 30.00, 'Images/NikeAirJordan.jpg'),
	('Couch', 50.00, 'Images/couch.jpg'),
	('Pearler Figures', 5.00, 'Images/Cap&Thanos.jpg'),
	('UNCC Jacket', 5.00, 'Images/UNCCJacket.jpg'),
	('Tennis Raquet', 15.00, 'Images/tennisRacquet.jpg'),
	('KitchenAid Mixed', 250.00, 'Images/KitchenAid.jpg'),
	('Mr. Heater', 12.00, 'Images/heater.jpg'),
	('HolyStone Drone', 20.00, 'Images/drone.jpg'),
	('Black Dress', 6.00, 'Images/blackDress.jpg'),
	('Brown Shoes', 5.00, 'Images/BrownShoes.jpg'),
	('Beats Pro', 50.00, 'Images/beats.jpg'),
	('iPad Pro', 350.00, 'Images/ipadPro.jpg'),
	('Superman Action Figure', 5.00, 'Images/Superman.jpg'),
	('Electric Saw', 25.00, 'Images/Saw.jpg');
    
CREATE TABLE contact (
	ContactID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(13),
    Email VARCHAR(100),
    Message VARCHAR(200),
    PRIMARY KEY(ContactID)
);

INSERT INTO contact
	(Name, PhoneNumber, Email, Message)
VALUES
	("Carlos DC", "(980)555-1212", "cdelcarp@uncc.edu", "Please hold an item for me."),
    ("Amy Smith", "(704)555-1212", "asmith@gmail.com", "Is the iPad still availabel?");