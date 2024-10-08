CREATE DATABASE good;

SHOW DATABASES;

USE good;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FRIST_NAME CHAR(25),
    LAST_NAME CHAR(25),
	SALARY INT(15),
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(25)
);

INSERT INTO Worker
	(WORKER_ID, FRIST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES 
		(001, "Vinayak", "." , 1, '26-11-29 09.00.00', "Ladies Toilet"),
        (002, "Shiv", "Pratap" , 100000, '26-11-29 09.00.00', "HR"),
        (003, "Vedang", "Tiwari" , 1000, '26-11-29 09.00.00', "Admin"),
        (004, "Rohit", "Raj" , 10000, '26-11-29 09.00.00', "Software"),
        (005, "Rohan", "Rangoli" , 50000, '26-11-29 09.00.00', "HR"),
        (006, "Kartikey", "Bist" , 5000, '26-11-29 09.00.00', "Ladies Toilet"),
        (007, "Ram", "Sharma" , 10000, '26-11-29 09.00.00', "Software");
        
CREATE TABLE Bonus(
	WORKER_REF_ID INT,
    BONUS_AMOUNT INT(10),
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
);

INSERT INTO Bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES 
	(001, 1, '26-11-29'),
    (002, 100, '26-11-29'),
    (003, 1000, '26-11-29'),
    (004, 5, '26-11-29'),
    (005, 1234, '26-11-29'),
    (006, 100000, '26-11-29'),
    (007, 100, '26-11-29');
    
CREATE TABLE Title (
	WORKER_REF_ID INT,
    WORKER_TITLE CHAR(20),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
);

INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES 
	(001, "Labour", '26-11-29'),
    (002, "HR", '26-11-29'),
    (003, "SDE", '26-11-29'),
    (004, "Dancer", '26-11-29'),
    (005, "Hero", '26-11-29'),
    (006, "Watchman", '26-11-29'),
    (007, "Guard", '26-11-29');

DELETE FROM Worker WHERE WORKER_ID = 001;

SELECT * FROM Worker ORDER BY SALARY;

SELECT Department, COUNT(*) FROM Worker GROUP BY Department;

SELECT Department, MIN(SALARY) FROM Worker GROUP BY Department;

SELECT Department FROM Worker GROUP BY Department HAVING MIN(SALARY > 1);