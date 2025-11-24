-- File: 06-Joins/left_join.sql
USE CompanyDB;

-- Left join: all employees, department may be NULL
SELECT e.EmpID, e.Name, COALESCE(d.DepartmentName,'(Unknown)') AS DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.Department = d.DepartmentID;
-- -> returns every employee
