-- File: 05-DCL/grant_revoke.sql
-- (Run as a privileged user)
-- Create a demo user (if allowed)
CREATE USER IF NOT EXISTS 'report_user'@'localhost' IDENTIFIED BY 'StrongPassword123!';
GRANT SELECT ON CompanyDB.* TO 'report_user'@'localhost';
-- -> (OK)

-- Grant more permissions for a developer
GRANT SELECT, INSERT, UPDATE, DELETE ON CompanyDB.* TO 'dev_user'@'localhost' IDENTIFIED BY 'DevPass!2025';
-- -> (OK)

-- Revoke example
REVOKE DELETE ON CompanyDB.* FROM 'dev_user'@'localhost';
-- -> (OK)

-- Verify
SHOW GRANTS FOR 'report_user'@'localhost';
-- -> lists privileges
