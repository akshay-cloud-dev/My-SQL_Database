-- File: 03-DQL/groupby_having.sql
USE CompanyDB;

-- Prepare dataset if needed (ensure multiple rows exist).

-- Group by department and filter groups with more than 1 employee
SELECT Department, COUNT(*) AS EmpCount, ROUND(AVG(Salary),2) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 1
ORDER BY EmpCount DESC;
-- -> Department | EmpCount | AvgSalary
-- -> HR         | 3        | 33000.00

-- Example: aggregated join (department name)
SELECT d.DepartmentName, COUNT(e.EmpID) AS EmpCount, AVG(e.Salary) AS AvgSalary
FROM Departments d
LEFT JOIN Employees e ON e.Department = d.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
HAVING COUNT(e.EmpID) > 0;
-- -> DepartmentName | EmpCount | AvgSalary
