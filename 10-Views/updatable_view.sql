-- File: 10-Views/updatable_view.sql
USE CompanyDB;

-- Updatable view (columns map 1:1 to base table)
CREATE OR REPLACE VIEW EmpBasic AS
SELECT EmpID, Name, Department, Email FROM Employees;
-- -> (OK)

-- Select from view
SELECT * FROM EmpBasic LIMIT 5;
-- -> EmpID | Name | Department | Email

-- Update via view (allowed if view is updatable)
UPDATE EmpBasic SET Email = 'updated@example.com' WHERE EmpID = 1;
-- -> (1 row affected)
SELECT EmpID, Email FROM Employees WHERE EmpID = 1;
-- -> shows updated email
