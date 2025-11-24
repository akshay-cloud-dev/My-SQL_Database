-- File: 07-Subqueries/derived_table.sql
USE CompanyDB;

-- Derived table (FROM subquery) with alias and aggregation
SELECT dept AS DepartmentID, COUNT(*) AS EmpCount
FROM (
    SELECT Department AS dept FROM Employees
) AS temp
GROUP BY dept
ORDER BY EmpCount DESC;
-- -> DepartmentID | EmpCount

-- Derived table with window function (requires MySQL 8+)
SELECT Name, Salary, rnk FROM (
    SELECT Name, Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS rnk FROM Employees
) AS ranked WHERE rnk <= 3;
-- -> top 3 salary ranks
