-- File: 12-Functions/ranking_functions.sql
USE CompanyDB;

-- Example using window functions (MySQL 8+)
SELECT EmpID, Name, Salary,
       RANK() OVER (ORDER BY Salary DESC) AS rnk,
       DENSE_RANK() OVER (ORDER BY Salary DESC) AS dense_rnk
FROM Employees
ORDER BY Salary DESC
LIMIT 10;
-- -> Rank and DenseRank demonstration
