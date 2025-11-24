-- File: 13-Triggers/magic_tables_example.sql
USE CompanyDB;

-- This example demonstrates usage of magic tables OLD and NEW in triggers
-- Create Audit table
CREATE TABLE IF NOT EXISTS EmpAudit (
    AuditID INT PRIMARY KEY AUTO_INCREMENT,
    EmpID INT,
    OperationType VARCHAR(10),
    OldName VARCHAR(100),
    NewName VARCHAR(100),
    ChangeDate DATETIME DEFAULT CURRENT_TIMESTAMP
);

DROP TRIGGER IF EXISTS trg_after_update_name;
DELIMITER //
CREATE TRIGGER trg_after_update_name
AFTER UPDATE ON Employees
FOR EACH ROW
BEGIN
    IF OLD.Name <> NEW.Name THEN
        INSERT INTO EmpAudit (EmpID, OperationType, OldName, NewName)
        VALUES (OLD.EmpID, 'UPDATE', OLD.Name, NEW.Name);
    END IF;
END;
//
DELIMITER ;

-- Test case
UPDATE Employees SET Name = 'NEWNAME' WHERE EmpID = 1;
SELECT * FROM EmpAudit WHERE EmpID = 1 ORDER BY ChangeDate DESC LIMIT 5;
-- -> shows audit records for name changes
