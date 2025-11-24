-- File: 10-Views/non_updatable_view.sql
USE CompanyDB;

-- Aggregated view (non-updatable)
CREATE OR REPLACE VIEW EmpSalarySummary AS
SELECT Department, COUNT(*) AS EmpCount, ROUND(AVG(Salary),2) AS AvgSalary
FROM Employees
GROUP BY Department;
-- -> (OK)

SELECT * FROM EmpSalarySummary;
-- -> Department | EmpCount | AvgSalary

-- Attempting update will fail:
-- UPDATE EmpSalarySummary SET AvgSalary = 0; -- ERROR: view not updatable
