-- File: 02-DML/update_examples.sql
USE CompanyDB;

-- Update single row using primary key
UPDATE Employees
SET Salary = 45000.00, Email='akshay.updated@example.com'
WHERE EmpID = 1;
-- -> (1 row affected)

-- Update multiple rows using condition
UPDATE Employees
SET Department = 'Operations'
WHERE Department = 'IT' AND Salary < 30000;
-- -> (N rows affected)

-- Using JOIN in UPDATE (update department name from Departments mapping if stored as ID)
-- Example: if we stored DepartmentID as 'IT' and want to set DepartmentName in another table
-- (Demonstration - not executed unless relevant table exists)

-- Verify:
SELECT EmpID, Name, Salary, Department FROM Employees WHERE EmpID = 1;
-- -> shows updated record
