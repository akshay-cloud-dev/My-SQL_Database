-- File: 03-DQL/orderby_limit.sql
USE CompanyDB;

-- Top 5 highest salaries
SELECT EmpID, Name, Department, Salary
FROM Employees
ORDER BY Salary DESC, EmpID ASC
LIMIT 5;
-- -> shows top 5 employees by salary

-- Pagination example: page 2 with page size 5 (OFFSET)
SELECT EmpID, Name, Salary
FROM Employees
ORDER BY EmpID
LIMIT 5 OFFSET 5;
-- -> next page rows
