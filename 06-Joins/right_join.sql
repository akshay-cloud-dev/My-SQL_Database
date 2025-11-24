-- File: 06-Joins/right_join.sql
USE CompanyDB;

-- Right join: all departments, employees may be NULL
SELECT d.DepartmentID, d.DepartmentName, e.EmpID, e.Name
FROM Employees e
RIGHT JOIN Departments d ON e.Department = d.DepartmentID;
-- -> returns rows for every department
