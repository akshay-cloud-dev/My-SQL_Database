-- File: 02-DML/delete_examples.sql
USE CompanyDB;

-- Safe delete: show rows to be deleted first
SELECT * FROM Employees WHERE Name = 'Temp User';
-- -> shows rows (if any)

-- Delete with condition
DELETE FROM Employees WHERE Name = 'Temp User';
-- -> (0 or more rows affected)

-- Delete multiple with limit (safe practice)
DELETE FROM Employees WHERE Department = 'Operations' LIMIT 5;
-- -> (up to 5 rows removed)

-- Verify:
SELECT COUNT(*) AS remaining FROM Employees;
-- -> shows remaining rows
