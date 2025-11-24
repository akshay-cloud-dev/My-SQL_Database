-- File: 01-DDL/create_tables.sql
-- Create database and core tables with IF NOT EXISTS and sample data.

CREATE DATABASE IF NOT EXISTS CompanyDB;
-- -> (OK)

USE CompanyDB;
-- -> (Database changed)

CREATE TABLE IF NOT EXISTS Departments (
    DepartmentID VARCHAR(30) PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);
-- -> (OK)

CREATE TABLE IF NOT EXISTS Employees (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Salary DECIMAL(12,2),
    Department VARCHAR(30),
    Email VARCHAR(100),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);
-- -> (OK)

-- Insert sample departments (idempotent style)
INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 'IT','Information Technology' FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM Departments WHERE DepartmentID = 'IT');

INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 'HR','Human Resources' FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM Departments WHERE DepartmentID = 'HR');

-- Insert sample employees (explicit columns)
INSERT INTO Employees (Name, Age, Salary, Department, Email)
VALUES ('Akshay', 22, 35000.00, 'IT', 'akshay@example.com');
-- -> (1 row affected)

SELECT EmpID, Name, Department, Salary FROM Employees LIMIT 5;
-- -> EmpID | Name   | Department | Salary
-- -> 1     | Akshay | IT         | 35000.00
