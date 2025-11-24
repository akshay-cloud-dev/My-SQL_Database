-- File: 01-DDL/alter_tables.sql
-- Add/modify columns safely and verify structure.

USE CompanyDB;

-- Add a column only if it doesn't exist (MySQL does not support IF NOT EXISTS for ADD COLUMN
-- so check INFORMATION_SCHEMA):
SET @col_exists := (
  SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_SCHEMA='CompanyDB' AND TABLE_NAME='Employees' AND COLUMN_NAME='Phone'
);

-- Add Phone column if not exists
PREPARE stmt_addcol FROM
  "ALTER TABLE Employees ADD COLUMN Phone VARCHAR(20) DEFAULT NULL";
IF @col_exists = 0 THEN
  EXECUTE stmt_addcol;
END IF;
DEALLOCATE PREPARE stmt_addcol;
-- -> (OK or skipped)

-- Modify column precision safely (example for Salary)
ALTER TABLE Employees MODIFY Salary DECIMAL(14,2);
-- -> (OK)

-- Verify:
DESCRIBE Employees;
-- -> lists columns and types
