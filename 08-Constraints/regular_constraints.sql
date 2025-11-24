-- File: 08-Constraints/regular_constraints.sql
USE CompanyDB;

-- Create Products with NOT NULL, DEFAULT, CHECK
CREATE TABLE IF NOT EXISTS Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(150) NOT NULL,
    Price DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    Quantity INT NOT NULL DEFAULT 0,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    CHECK (Price >= 0 AND Quantity >= 0)
);
-- -> (OK)

INSERT INTO Products (Name, Price, Quantity) VALUES ('Notebook', 45.50, 100);
-- -> (1 row)

SELECT * FROM Products LIMIT 5;
