-- File: 11-Stored_Procedures/simple_procedure.sql
USE CompanyDB;

DELIMITER //

-- Procedure with simple error handling and OUT parameter
CREATE PROCEDURE GetEmployeeByID(IN p_empid INT, OUT p_name VARCHAR(100), OUT p_salary DECIMAL(14,2))
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- On error, set OUTs to NULL
        SET p_name = NULL;
        SET p_salary = NULL;
    END;

    SELECT Name, Salary INTO p_name, p_salary FROM Employees WHERE EmpID = p_empid LIMIT 1;
END //
DELIMITER ;

-- Call example:
CALL GetEmployeeByID(1, @name, @sal);
SELECT @name AS Name, @sal AS Salary;
-- -> returns name and salary or NULLs on error
