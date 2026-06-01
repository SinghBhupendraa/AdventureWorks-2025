# Database Concepts

## Database

A database is an organized collection of data stored electronically and managed by a Database Management System (DBMS).

Examples:

* Customer information
* Product catalog
* Sales transactions
* Employee records

---

## Table

A table is the primary storage structure in a relational database.

A table contains:

* Rows
* Columns

Example:

| CustomerID | Name  | City     |
| ---------- | ----- | -------- |
| 1          | John  | New York |
| 2          | Sarah | Chicago  |

---

## Row

A row represents a single record in a table.

Example:

| CustomerID | Name | City     |
| ---------- | ---- | -------- |
| 1          | John | New York |

This entire record is one row.

Other names:

* Record
* Tuple

---

## Column

A column represents an attribute or property of the data.

Example:

| CustomerID | Name | City |
| ---------- | ---- | ---- |

Columns:

* CustomerID
* Name
* City

Other names:

* Field
* Attribute

---

## Schema

A schema is a logical container used to organize database objects.

Examples from AdventureWorks:

* Person
* Sales
* Production
* HumanResources
* Purchasing

Example table names:

* Person.Person
* Sales.Customer
* Production.Product

Schema helps:

* Organize objects
* Improve security
* Improve maintainability

---

# Database Types

## OLTP (Online Transaction Processing)

Purpose:
Handle day-to-day business transactions.

Examples:

* ATM transactions
* Online shopping
* Order processing

Characteristics:

* High volume of transactions
* Frequent inserts and updates
* Highly normalized

---

## OLAP (Online Analytical Processing)

Purpose:
Analyze large amounts of historical data.

Examples:

* Sales analysis
* Customer analysis
* KPI reporting

Characteristics:

* Read-heavy workloads
* Complex queries
* Aggregations and analytics

---

## Data Warehouse

A centralized repository designed for reporting and analytics.

Data is collected from multiple source systems and stored in a structured format for analysis.

Characteristics:

* Historical data
* Subject-oriented
* Optimized for reporting
* Supports business intelligence tools
