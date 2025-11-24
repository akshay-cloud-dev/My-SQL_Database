-- File: 08-Constraints/key_constraints.sql
USE CompanyDB;

-- Orders table with foreign key and cascading behavior
CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    EmpID INT NOT NULL,
    OrderDate DATE NOT NULL DEFAULT (CURRENT_DATE),
    TotalAmount DECIMAL(12,2) DEFAULT 0.00,
    CONSTRAINT fk_orders_emp FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
      ON DELETE RESTRICT ON UPDATE CASCADE
);
-- -> (OK)

-- Unique constraint example
CREATE TABLE IF NOT EXISTS Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(100) NOT NULL UNIQUE,
    Email VARCHAR(150) UNIQUE
);
-- -> (OK)

INSERT INTO Users (Username, Email) VALUES ('akshayb', 'akshay@example.com');
-- -> (1 row)
