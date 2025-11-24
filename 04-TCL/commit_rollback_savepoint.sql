-- File: 04-TCL/commit_rollback_savepoint.sql
USE CompanyDB;

-- Start a transaction, demonstrate savepoints and rollback
START TRANSACTION;

-- Make a safe change
UPDATE Employees SET Salary = Salary * 1.05 WHERE Department = 'HR';
-- -> (N rows affected)

SAVEPOINT after_hr_raise;
-- -> (savepoint created)

-- An accidental change
UPDATE Employees SET Salary = 1000000.00 WHERE EmpID = 99999; -- likely no row
-- -> (0 rows affected or wrong update if condition different)

-- Rollback the accidental change to savepoint
ROLLBACK TO SAVEPOINT after_hr_raise;
-- -> (rolled back to savepoint)

-- Commit final intended changes
COMMIT;
-- -> (Transaction committed)

-- Example: show final salaries (verification)
SELECT EmpID, Name, Salary FROM Employees WHERE Department='HR' ORDER BY Salary DESC LIMIT 10;
