# 02 - Data Query Language (DQL)

## Overview

Data Query Language (DQL) is a subset of SQL used to retrieve data from a database.

The primary command in DQL is:

```sql
SELECT
```

DQL allows users to:

* Retrieve specific columns
* Retrieve all columns
* Rename columns
* Remove duplicates
* Sort data
* Limit returned records

In AdventureWorks2025, DQL is used to retrieve information from schemas such as:

* Person
* Production
* Sales
* HumanResources
* Purchasing

---

# SELECT Statement

## Purpose

The SELECT statement is used to retrieve data from one or more tables.

### Syntax

```sql
SELECT column_name
FROM table_name;
```

### Example

```sql
SELECT FirstName
FROM Person.Person;
```

### Selecting Multiple Columns

```sql
SELECT
    FirstName,
    LastName
FROM Person.Person;
```

### Selecting All Columns

```sql
SELECT *
FROM Production.Product;
```

### Best Practice

Avoid using:

```sql
SELECT *
```

in production environments because:

* Returns unnecessary columns
* Increases network traffic
* Reduces readability
* Can impact performance

Instead:

```sql
SELECT
    ProductID,
    Name,
    ListPrice
FROM Production.Product;
```

---

# FROM Clause

## Purpose

The FROM clause specifies the source table or view from which data will be retrieved.

### Syntax

```sql
SELECT column_name
FROM table_name;
```

### Example

```sql
SELECT Name
FROM Production.Product;
```

### Schema Qualified Names

AdventureWorks uses schemas.

Examples:

```sql
Person.Person
Production.Product
Sales.Customer
HumanResources.Employee
```

Format:

```sql
SchemaName.TableName
```

Using schema-qualified names improves:

* Readability
* Maintainability
* Performance

---

# Column Aliases

## Purpose

Aliases provide temporary names to columns in the result set.

Aliases improve:

* Readability
* Reporting
* Dashboard presentation

### Syntax

```sql
SELECT
    FirstName AS Employee_First_Name
FROM Person.Person;
```

### Example

```sql
SELECT
    Name AS Product_Name,
    ListPrice AS Price
FROM Production.Product;
```

### Alias Without AS

```sql
SELECT
    Name Product_Name
FROM Production.Product;
```

Although valid, using AS is recommended for readability.

---

# TOP Clause

## Purpose

The TOP clause limits the number of rows returned.

### Syntax

```sql
SELECT TOP (10) *
FROM Production.Product;
```

### Example

```sql
SELECT TOP (5)
    Name,
    ListPrice
FROM Production.Product;
```

### TOP PERCENT

Returns a percentage of rows.

```sql
SELECT TOP (10) PERCENT *
FROM Production.Product;
```

### TOP WITH TIES

Returns additional rows when ties exist.

```sql
SELECT TOP (10) WITH TIES
    Name,
    ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;
```

---

# DISTINCT

## Purpose

DISTINCT removes duplicate rows from the result set.

### Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

### Example

```sql
SELECT DISTINCT Color
FROM Production.Product;
```

### Multiple Columns

```sql
SELECT DISTINCT
    Color,
    Class
FROM Production.Product;
```

DISTINCT evaluates the entire row combination.

### Important Notes

DISTINCT:

* Removes duplicate rows
* Does not remove NULL values
* Treats NULL as a distinct value

### Use Cases

* Unique product colors
* Unique cities
* Unique territories
* Unique category combinations

---

# ORDER BY

## Purpose

ORDER BY sorts query results.

### Ascending Order

```sql
SELECT Name
FROM Production.Product
ORDER BY Name ASC;
```

### Descending Order

```sql
SELECT Name
FROM Production.Product
ORDER BY Name DESC;
```

### Multiple Columns

```sql
SELECT
    Name,
    Color,
    ListPrice
FROM Production.Product
ORDER BY
    Color ASC,
    ListPrice DESC;
```

### Ordering By Alias

```sql
SELECT
    Name,
    ListPrice AS Price
FROM Production.Product
ORDER BY Price DESC;
```

### Default Sort Order

If ASC or DESC is omitted:

```sql
ORDER BY Name
```

SQL uses:

```plaintext
ASC
```

by default.

---

# SQL Comments

## Purpose

Comments improve code readability and documentation.

---

## Single Line Comment

```sql
-- Retrieve all products
SELECT *
FROM Production.Product;
```

---

## Multi-Line Comment

```sql
/*
Retrieve products
for sales reporting
*/
SELECT *
FROM Production.Product;
```

### Best Practices

Use comments to:

* Explain business logic
* Describe calculations
* Document complex queries

Avoid obvious comments.

Bad Example:

```sql
-- Select name
SELECT Name
FROM Production.Product;
```

---

# Logical Query Processing Order

SQL is written in one order but executed logically in another order.

## Logical Execution Order

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY
7. TOP

---

## FROM

Determines the source table.

```sql
FROM Production.Product
```

---

## WHERE

Filters rows.

```sql
WHERE ListPrice > 100
```

---

## GROUP BY

Groups rows.

```sql
GROUP BY Color
```

---

## HAVING

Filters groups.

```sql
HAVING COUNT(*) > 5
```

---

## SELECT

Chooses columns to return.

```sql
SELECT Name
```

---

## ORDER BY

Sorts the final result set.

```sql
ORDER BY Name
```

---

## TOP

Limits the final output.

```sql
TOP (10)
```

---

# Why Aliases Cannot Be Used In WHERE

Incorrect:

```sql
SELECT
    ListPrice AS Price
FROM Production.Product
WHERE Price > 100;
```

Reason:

WHERE executes before SELECT.

At the time WHERE runs, Price does not yet exist.

---

# Why Aliases Can Be Used In ORDER BY

Correct:

```sql
SELECT
    ListPrice AS Price
FROM Production.Product
ORDER BY Price;
```

Reason:

ORDER BY executes after SELECT.

At that point the alias already exists.

---

# Key Takeaways

* SELECT retrieves data.
* FROM specifies the source table.
* Aliases improve readability.
* TOP limits rows.
* DISTINCT removes duplicates.
* ORDER BY sorts results.
* Comments improve maintainability.
* SQL follows a logical execution order that differs from the written order.
