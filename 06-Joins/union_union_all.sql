-- File: 06-Joins/union_union_all.sql
USE CompanyDB;

-- UNION removes duplicates
SELECT Name, Department FROM Employees WHERE Department = 'IT'
UNION
SELECT Name, Department FROM Employees WHERE Department = 'HR';
-- -> unique names across both selects

-- UNION ALL keeps duplicates and is faster
SELECT Name, Department FROM Employees WHERE Department = 'IT'
UNION ALL
SELECT Name, Department FROM Employees WHERE Department = 'HR';
-- -> may include same name twice if present in both
