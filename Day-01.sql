CREATE DATABASE StudentDatabase;
USE StudentDatabase;
CREATE TABLE StudentDetails (
    ID INT,
    Name VARCHAR(20),
    Age INT,
    Gender VARCHAR(20)
);
INSERT INTO StudentDetails VALUES (101, 'AKSHAY', 22, 'MALE');
SELECT * FROM StudentDetails;