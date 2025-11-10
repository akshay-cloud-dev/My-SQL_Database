CREATE DATABASE StudentDatabase;

USE StudentDatabase;

CREATE TABLE StudentDetails (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(20)
);

INSERT INTO StudentDetails (ID, Name, Age, Gender)
VALUES (101, 'AKSHAY', 22, 'MALE');

SELECT * FROM StudentDetails;

UPDATE StudentDetails 
SET Age = 23 
WHERE ID = 101;

DELETE FROM StudentDetails 
WHERE ID = 102;

ALTER TABLE StudentDetails 
ADD Email VARCHAR(50);

ALTER TABLE StudentDetails 
MODIFY Name VARCHAR(50);

ALTER TABLE StudentDetails 
DROP COLUMN Age;

TRUNCATE TABLE StudentDetails;

SELECT * FROM StudentDetails;
