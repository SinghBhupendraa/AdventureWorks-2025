**DDL - Data Definition Language**
Purpose:
Defines database structure
Creates database objects
Modifies database objects
Removes database objects

**Commands:**
CREATE
ALTER
DROP
TRUNCATE

**Examples:**
CREATE TABLE Customers
(
    CustomerID INT,
    CustomerName VARCHAR(100)
);
ALTER TABLE Customers
ADD Email VARCHAR(100);
DROP TABLE Customers;

**DML - Data Manipulation Language**
Purpose:
Manipulates data inside tables

**Commands:**
INSERT
UPDATE
DELETE
MERGE

**Examples:**

INSERT INTO Customers
VALUES (1,'John');
UPDATE Customers
SET CustomerName = 'Mike'
WHERE CustomerID = 1;
DELETE FROM Customers
WHERE CustomerID = 1;

**DQL - Data Query Language**
Purpose:
Retrieve data from database

**Primary command:**
SELECT

**Example:**

SELECT *
FROM Customers;

**TCL - Transaction Control Language**
Purpose:
Control transactions

**Commands:**

BEGIN TRANSACTION
COMMIT
ROLLBACK
SAVEPOINT

**Example:**
BEGIN TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 1000
WHERE AccountID = 1;

COMMIT;

**DCL - Data Control Language**
Purpose:
Control permissions and security

**Commands:**

GRANT
REVOKE
DENY

**Example:**

GRANT SELECT
ON Customers
TO User1;
