-- File: 06-Joins/inner_join.sql
USE CompanyDB;

-- Inner join: only matching department ids
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.Department = d.DepartmentID
ORDER BY e.EmpID;
-- -> EmpID | Name | DepartmentName

-- Example output:
-- -> 1 | Akshay | Information Technology
