# **SQL-Coading Standards**

## 1. Formatting and Case Conventions
* UPPERCASE Keywords: Always capitalize core commands like SELECT, FROM, WHERE, JOIN, GROUP BY, and built-in functions.
* snake_case Objects: Use lowercase and underscores for schema, table, and column names to ensure cross-language compatibility.
Choose one style and stick with it:
- PascalCase
- snake_case
- camelCase
* Line Breaks: Start major clauses on a completely new line.
* Indentation: Align column names and conditional predicates consistently using 2 to 4 spaces.
* Trailing Commas: Place commas at the end of lines or uniformly at the beginning to avoid syntax breakage.
* Semicolons: Terminate every single query using a semicolon ; as standard practice

### Naming Conventions
Good Naming
customer_id
order_date
product_name
sales_amount

### Why
readable
descriptive
consistent

### Avoid
cid
x1
data1
abc

### Why
unclear meaning
difficult maintenance

### Formatting

### Bad
select customerid,firstname,lastname from customers where city='London'

### Good
SELECT
    CustomerID,
    FirstName,
    LastName
FROM Customers
WHERE City = 'London';

### Rules:
* Keywords in uppercase
* One column per line
* Indent consistently
* Use line breaks

### Aliases
Purpose:
improve readability
shorten table names

### Table Alias
SELECT
    c.CustomerID,
    c.FirstName
FROM Customers AS c;

### Column Alias
SELECT
    SalesAmount AS TotalSales
FROM Sales;

### Readability
Use Meaningful Names
SELECT
    CustomerID,
    CustomerName
FROM Customers;

## 2. Query Architecture and Design
* Avoid SELECT *: Explicitly write out the specific column names you need to reduce data transfer and protect downstream queries.
* Explicit JOINs: Always declare the explicit type of join (e.g., INNER JOIN, LEFT JOIN) instead of using comma-separated tables.
* Table Aliases: Use meaningful, recognizable abbreviations for table names. Avoid unhelpful single letters like a, b, or c.
* Explicit Column Aliasing: Always include the AS keyword when renaming columns to ensure clear readability.
* No Ordinal Sorting: Write out full column names or aliases in ORDER BY and GROUP BY clauses rather than using positional numbers.

###  -- GOOD ARCHITECTURE
SELECT 
    emp.employee_id,
    emp.salary AS annual_salary,
    dept.department_name
FROM company.employees AS emp
INNER JOIN company.departments AS dept
    ON emp.department_id = dept.department_id;

### Avoid SELECT 
#### Bad
SELECT *
FROM Customers;

#### Good
SELECT
    CustomerID,
    CustomerName
FROM Customers;

### Comment Complex Logic
-- Calculate total sales including tax
SELECT
    SalesAmount * 1.18 AS TotalSales
FROM Sales;

## 3. Maintainability and Modularity
* Use CTEs over Subqueries: Rely on Common Table Expressions (WITH clauses) to cleanly break up complicated logic step-by-step.
* Comment Logic, Not Syntax: Use comments only to explain complex business rules or calculation nuances.
* Avoid pointing out the obvious.Avoid Dynamic SQL: Limit the usage of dynamic SQL strings to keep execution plans predictable and stable.

### -- GOOD MODULARITY WITH CTE
WITH active_sales AS (
    SELECT 
        customer_id,
        SUM(order_amount) AS total_spent
    FROM business.orders
    WHERE order_date >= '2026-01-01'
    GROUP BY customer_id
)
SELECT 
    cust.customer_name,
    sales.total_spent
FROM business.customers AS cust
INNER JOIN active_sales AS sales
    ON cust.customer_id = sales.customer_id;


## 4. Performance and SecurityIndex 
* Filtering: Ensure your WHERE filters correspond with existing column indexes to prevent slow, full-table scans.
* Parameter Placeholders: Use parameterized inputs instead of raw string concatenation to prevent critical SQL injection vulnerabilities.
* Limit Sample Datasets: Use a LIMIT or TOP clause when exploring tables to prevent server performance degradation.
* Short Transactions: Keep data manipulation blocks as short as possible to eliminate deadlocks and locking issues

