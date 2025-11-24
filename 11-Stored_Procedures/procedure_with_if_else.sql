-- File: 11-Stored_Procedures/procedure_with_if_else.sql
USE CompanyDB;

DELIMITER //

CREATE PROCEDURE PromoteEmployee(IN p_empid INT, IN p_increment_percent DECIMAL(5,2))
BEGIN
    DECLARE v_old_salary DECIMAL(14,2);
    DECLARE v_new_salary DECIMAL(14,2);

    SELECT Salary INTO v_old_salary FROM Employees WHERE EmpID = p_empid;
    SET v_new_salary = ROUND(v_old_salary * (1 + p_increment_percent/100), 2);

    UPDATE Employees SET Salary = v_new_salary WHERE EmpID = p_empid;
END //
DELIMITER ;

-- Usage:
CALL PromoteEmployee(1, 10); -- give 10% raise
SELECT EmpID, Name, Salary FROM Employees WHERE EmpID = 1;
-- -> salary updated
