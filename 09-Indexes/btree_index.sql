-- File: 09-Indexes/btree_index.sql
USE CompanyDB;

-- Create BTREE index (default) for range & order queries
CREATE INDEX IF NOT EXISTS idx_emp_salary ON Employees (Salary);
-- -> (OK)

-- Verify index
SHOW INDEX FROM Employees;
-- -> lists idx_emp_salary (BTREE)
