-- File: 13-Triggers/after_update_trigger.sql
USE CompanyDB;

-- AFTER UPDATE trigger to log salary changes
DROP TABLE IF EXISTS SalaryAudit;
CREATE TABLE SalaryAudit (
    AuditID INT PRIMARY KEY AUTO_INCREMENT,
    EmpID INT,
    OldSalary DECIMAL(14,2),
    NewSalary DECIMAL(14,2),
    ChangedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

DROP TRIGGER IF EXISTS trg_after_update_salary;
DELIMITER //
CREATE TRIGGER trg_after_update_salary
AFTER UPDATE ON Employees
FOR EACH ROW
BEGIN
    IF OLD.Salary <> NEW.Salary THEN
        INSERT INTO SalaryAudit (EmpID, OldSalary, NewSalary) VALUES (OLD.EmpID, OLD.Salary, NEW.Salary);
    END IF;
END;
//
DELIMITER ;

-- Test: update salary and inspect audit
UPDATE Employees SET Salary = Salary + 1000 WHERE EmpID = 1;
SELECT * FROM SalaryAudit WHERE EmpID = 1 ORDER BY ChangedAt DESC LIMIT 5;
-- -> shows audit
