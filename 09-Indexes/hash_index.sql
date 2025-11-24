-- File: 09-Indexes/hash_index.sql
USE CompanyDB;

-- HASH index example using MEMORY engine for equality lookups
DROP TABLE IF EXISTS MemLookup;
CREATE TABLE MemLookup (
    id INT PRIMARY KEY,
    val VARCHAR(50),
    INDEX idx_val (val) USING HASH
) ENGINE = MEMORY;
-- -> (OK)

INSERT INTO MemLookup VALUES (1,'a'),(2,'b');
SELECT * FROM MemLookup WHERE val = 'a';
-- -> returns matching row quickly
