-- File: 02-DML/insert_examples.sql
USE CompanyDB;

-- Example 1: Explicit column insert
INSERT INTO Employees (Name, Age, Salary, Department, Email)
VALUES ('Ravi', 25, 30000.00, 'IT', 'ravi@example.com');
-- -> (1 row)

-- Example 2: Implicit insert (columns except auto-increment)
INSERT INTO Employees (Name, Age, Salary, Department)
VALUES ('Sneha', 28, 32000.00, 'HR');
-- -> (1 row)

-- Example 3: Multi-row insert
INSERT INTO Employees (Name, Age, Salary, Department)
VALUES 
('Priya', 24, 28000.00, 'IT'),
('Karan', 29, 42000.00, 'HR');
-- -> (2 rows)

SELECT EmpID, Name, Department FROM Employees ORDER BY EmpID DESC LIMIT 6;
-- -> shows last inserted rows
