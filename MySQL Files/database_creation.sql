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
	('PlayStation 5', 499.99, 'c:/images/ps5.jpeg'),
	('M1 Mac', 789.99, 'c:/images/m1Mac.jpeg');