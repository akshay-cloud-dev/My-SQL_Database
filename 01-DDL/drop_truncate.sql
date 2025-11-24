-- File: 01-DDL/drop_truncate.sql
-- Truncate and drop using safe checks.

USE CompanyDB;

-- TRUNCATE (empties table & resets AUTO_INCREMENT)
TRUNCATE TABLE Employees;
-- -> (OK, table emptied)

-- Recreate a sample row before demonstrating DROP (optional)
INSERT INTO Employees (Name, Age, Salary, Department, Email) VALUES ('Temp User', 30, 1000.00, 'HR', 'temp@example.com');

-- DROP table only if exists
DROP TABLE IF EXISTS Employees;
-- -> (OK, dropped)

-- Recreate Employees table back to original shape (for later scripts)
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Salary DECIMAL(14,2),
    Department VARCHAR(30),
    Email VARCHAR(100),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);
-- -> (OK)
