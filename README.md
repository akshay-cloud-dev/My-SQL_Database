# My-SQL_Database

# My SQL Practice Journey 🚀

## Day 1 — Basic SQL Operations

This session includes creating a database, defining a table, inserting data, updating records, deleting records, modifying table structure, and truncating data.

### ✅ Commands Performed

- Created `StudentDatabase`
- Selected the database using `USE`
- Created `StudentDetails` table with:
  - ID  
  - Name  
  - Age  
  - Gender
- Inserted first record into the table
- Updated the age of the student with ID 101
- Attempted to delete record with ID 102 (no effect because record doesn't exist)
- Added `Email` column to the table
- Modified `Name` column size to 50 characters
- Dropped `Age` column from the table
- Truncated all data inside `StudentDetails`
- Displayed final table structure and records

### ✅ Final SQL Script Used

```sql
CREATE DATABASE StudentDatabase;

USE StudentDatabase;

CREATE TABLE StudentDetails (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(20)
);

INSERT INTO StudentDetails (ID, Name, Age, Gender)
VALUES (101, 'AKSHAY', 22, 'MALE');

SELECT * FROM StudentDetails;

UPDATE StudentDetails 
SET Age = 23 
WHERE ID = 101;

DELETE FROM StudentDetails 
WHERE ID = 102;

ALTER TABLE StudentDetails 
ADD Email VARCHAR(50);

ALTER TABLE StudentDetails 
MODIFY Name VARCHAR(50);

ALTER TABLE StudentDetails 
DROP COLUMN Age;

TRUNCATE TABLE StudentDetails;

SELECT * FROM StudentDetails;
