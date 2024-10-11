CREATE DATABASE ORG;

USE ORG;

CREATE TABLE Project(
id INT PRIMARY KEY,
empID INT,
name VARCHAR(225),
startDate DATE,
clientID INT
);

CREATE TABLE Employee(
id INT PRIMARY KEY,
fname VARCHAR(225),
lname VARCHAR(225),
age INT,
emailID VARCHAR(225),
phoneNumber INT,
city VARCHAR(225)
);

CREATE TABLE Client(
id INT PRIMARY KEY,
fname VARCHAR(225),
lname VARCHAR(225),
age INT,
emailID VARCHAR(225),
phoneNumber INT,
city VARCHAR(225),
empID INT
);

INSERT INTO Project VALUES 
	(1, 1, 'A', '2021-04-21', 3),
    (2, 2, 'B', '2021-04-21', 1),
    (3, 3, 'C', '2021-04-21', 5),
    (4, 3, 'D', '2021-04-21', 2),
    (5, 5, 'E', '2021-04-21', 4);

INSERT INTO Employee VALUES
	(1, 'Aman', 'Proto', 32, 'a@gmail.com', 111, 'Chennai'),
    (2, 'Yagya', 'Narayan', 31, 'a@gmail.com', 111, 'Kolkata'),
    (3, 'Rahul', 'BD', 30, 'a@gmail.com', 111, 'Delhi'),
    (4, 'Jatin', 'Hermit', 29, 'a@gmail.com', 111, 'Jaipur'),
    (5, 'PK', 'Pandey', 22, 'a@gmail.com', 111, 'Jaipur');

INSERT INTO Client VALUES
	(1, 'Mac', 'Rogers', 47, 'mac@gmail.com', 33, 'Kolkata', 3),
    (2, 'Max', 'Porier', 47, 'mac@gmail.com', 33, 'Hydrabad', 3),
    (3, 'Peter', 'Jain', 47, 'mac@gmail.com', 33, 'Uttarakhand', 1),
    (4, 'Sushant', 'Aggarwal', 47, 'mac@gmail.com', 33, 'Hydrabad', 5),
    (5, 'Singh', 'Pratap', 47, 'mac@gmail.com', 33, 'Hydrabad', 2);
    
SELECT * FROM Project;
SELECT * FROM Client;
SELECT * FROM Employee;

-- Views

CREATE VIEW view_one as SELECT fname, age FROM Employee;

SELECT * FROM view_one;

ALTER VIEW view_one as SELECT fname, lname, age FROM Employee;

DROP VIEW IF Exists view_one;
