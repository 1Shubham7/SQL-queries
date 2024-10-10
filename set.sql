CREATE DATABASE Company;

USE Company;

CREATE TABLE Dept1(
empid INT PRIMARY KEY,
name VARCHAR(225),
role VARCHAR(225)
);

CREATE TABLE Dept2(
empid INT PRIMARY KEY,
name VARCHAR(225),
role VARCHAR(225)
);

INSERT INTO Dept2() VALUES 
	(3, 'C', 'manager'),
    (6, 'F', 'marketing'),
    (7, 'G', 'salesman');


INSERT INTO Dept1() VALUES 
	(1, 'A', 'engineer'),
    (2, 'B', 'salesman'),
    (3, 'C', 'manager'),
    (4, 'D', 'salesman'),
    (5, 'E', 'engineer');
    
-- list all the employee in the company
SELECT * FROM Dept1
UNION
SELECT * FROM Dept2;

-- list all employess in company that work as salesman
SELECT * FROM Dept1 WHERE Dept1.role = 'salesman'
UNION
SELECT * FROM Dept1 WHERE Dept1.role = 'salesman';

-- list all employess that work on both department
SELECT Dept1.* FROM Dept1 INNER JOIN Dept2 USING (empid);

-- list all employees that work in dept1 but not dept2
SELECT Dept1.* FROM Dept1  LEFT JOIN Dept2 USING (empid) WHERE Dept2.empid IS NULL;
