-- File: 07-Subqueries/simple_subquery.sql
USE CompanyDB;

-- Subquery in WHERE (scalar)
SELECT Name, Salary FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);
-- -> employees earning above average

-- Correlated subquery example (department average)
SELECT e.Name, e.Salary
FROM Employees e
WHERE e.Salary > (
    SELECT AVG(e2.Salary) FROM Employees e2 WHERE e2.Department = e.Department
);
-- -> employees above department average
