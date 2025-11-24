-- File: 06-Joins/full_join.sql
USE CompanyDB;

-- MySQL: emulate FULL OUTER JOIN using UNION of left & right excluding overlaps
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.Department = d.DepartmentID

UNION

SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.Department = d.DepartmentID;
-- -> returns union of both sides
