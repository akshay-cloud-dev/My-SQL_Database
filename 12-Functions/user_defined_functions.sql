-- File: 12-Functions/user_defined_functions.sql
USE CompanyDB;

DELIMITER //

CREATE FUNCTION totalSalaryMonthlyToYearly(sal DECIMAL(14,2))
RETURNS DECIMAL(14,2)
DETERMINISTIC
RETURN ROUND(sal * 12, 2);
//
DELIMITER ;

-- Usage:
SELECT Name, Salary, totalSalaryMonthlyToYearly(Salary) AS AnnualSalary FROM Employees LIMIT 5;
-- -> shows computed annual salary
