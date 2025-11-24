-- File: 07-Subqueries/nth_highest_value.sql
USE CompanyDB;

-- 3rd highest salary using window function (MySQL 8+)
SELECT DISTINCT Salary FROM (
    SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS rnk FROM Employees
) AS t WHERE rnk = 3;
-- -> salary value (3rd highest)

-- Alternative without window functions:
SELECT Salary FROM Employees e1
WHERE 2 = (
    SELECT COUNT(DISTINCT Salary) FROM Employees e2 WHERE e2.Salary > e1.Salary
) LIMIT 1;
-- -> (3rd highest salary)
