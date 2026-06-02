# **SQL_Components**
Below are the detailed steps involved in the SQL query execution.
* Input: The user sends a SQL query (like SELECT or INSERT).
* Parsing: The system checks if the query is written correctly.
* Optimization: It chooses the fastest way to run the query.
* Execution: The database runs the query.
* Output: The result or confirmation is sent back to the user.

## Components of a SQL System
Here are some key components of SQL system:

* Database: A structured collection of data stored in tables with rows and columns.
* Tables: Store data and apply rules to keep it accurate and consistent.
* Indexes: Help the database find data faster without scanning the whole table.
* Views: Virtual tables created from SELECT queries for easy access to data.
* Stored Procedures: Pre-saved SQL code that runs tasks and improves performance and security.
* Transactions: Group of SQL actions that either all succeed or all fail to keep data safe.
* Security & Permissions: Control who can view, change, or manage database data.
* Joins: Combine data from different tables based on relationships.


## **DDL - Data Definition Language**
DDL (Data Definition Language) commands are used to create, change, and delete database objects.
Database engineers use commands like CREATE to make tables, views, and indexes, and ALTER or DROP to modify or remove them.

Command               Description

CREATE                Creates a new table, a view on a table, or some other object in the database.
ALTER                 Modifies an existing database object, such as a table
DROP                  Deletes an entire table, a view of a table, or other objects in the database
TRUNCATE              Removes all records from a table but keeps the table structure intact.
RENAME                It is used to change the name of an existing database object, such as a table.

Purpose:
Defines database structure
Creates database objects
Modifies database objects
Removes database objects

**Examples:**
CREATE TABLE Customers
(
    CustomerID INT,
    CustomerName VARCHAR(100)
);
ALTER TABLE Customers
ADD Email VARCHAR(100);
DROP TABLE Customers;

## **DML - Data Manipulation Language**
A relational database can be updated with new data using data manipulation language (DML) statements. 
The INSERT command, for instance, is used by an application to add a new record to the database.

Command         Description

INSERT          Creates a record.
UPDATE          Modifies records.
DELETE          Deletes records.
MERGE           --
Purpose:
Manipulates data inside tables

**Examples:**

INSERT INTO Customers
VALUES (1,'John');
UPDATE Customers
SET CustomerName = 'Mike'
WHERE CustomerID = 1;
DELETE FROM Customers
WHERE CustomerID = 1;

## **DQL - Data Query Language**
Data retrieval instructions are written in the data query language (DQL), which is used to access relational databases. 
The SELECT command is used by software programs to filter and return particular results from a SQL table. 

Purpose:
Retrieve data from database

**Primary command:**
SELECT

**Example:**

SELECT *
FROM Customers;

**TCL - Transaction Control Language**
TCL commands manage transactions in relational databases, ensuring data integrity and consistency. 
These commands are used to commit changes or roll back operations in case of errors.

Command            Description

COMMIT             Saves all changes made during the current transaction on a permanent basis. Some databases provide an auto-commit feature, which can be configured using settings.
ROLLBACK           Reverts changes made during the current transaction, ensuring no unwanted changes are saved.
SAVEPOINT          Sets a point within a transaction to which changes can be rolled back, allowing partial rollbacks

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

## **DCL - Data Control Language**
DCL commands manage user access to the database by granting or revoking permissions.
Database administrators use DCL to enforce security and control access to database objects.

Command      Description

GRANT        Gives a privilege to the user.
REVOKE       Takes back privileges granted by the user.
DENY

Purpose:
Control permissions and security

**Example:**

GRANT SELECT
ON Customers
TO User1;
