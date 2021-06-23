DROP DATABASE IF EXISTS final_project;
CREATE DATABASE final_project;

USE final_project;

CREATE TABLE user (
	UserID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50), 
    LastName VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(50),
    PRIMARY KEY(UserID)
);

INSERT INTO user 
	(FirstName, LastName, email, password)
VALUES
	('Alice', 'Smith', 'a@a.com', 'test123'),
    ('Bob', 'Smith', 'b@b.com', 'test123'),
    ('Charlie', 'Smith', 'c@c.com', 'test123');