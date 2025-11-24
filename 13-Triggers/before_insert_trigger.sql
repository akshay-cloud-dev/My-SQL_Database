-- File: 13-Triggers/before_insert_trigger.sql
USE CompanyDB;

-- BEFORE INSERT trigger to normalize name and set default email if missing
DROP TRIGGER IF EXISTS trg_before_insert_emp;
DELIMITER //
CREATE TRIGGER trg_before_insert_emp
BEFORE INSERT ON Employees
FOR EACH ROW
BEGIN
    -- Normalize name to title case (simple example using UPPER of first letter not built-in; keep uppercase)
    SET NEW.Name = UPPER(NEW.Name);

    -- If email is NULL or empty, set a placeholder
    IF NEW.Email IS NULL OR NEW.Email = '' THEN
        SET NEW.Email = CONCAT(LOWER(REPLACE(NEW.Name,' ','_')), '@example.com');
    END IF;
END;
//
DELIMITER ;

-- Test trigger:
INSERT INTO Employees (Name, Age, Salary, Department) VALUES ('ankit singh', 24, 22000.00, 'IT');
SELECT EmpID, Name, Email FROM Employees WHERE Name = 'ANKIT SINGH';
-- -> Name stored as uppercase and email filled if missing
