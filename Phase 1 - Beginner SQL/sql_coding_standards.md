**Content Structure**

**Naming Conventions**
Good Naming
customer_id
order_date
product_name
sales_amount

**Why:**
readable
descriptive
consistent

**Avoid**
cid
x1
data1
abc

**Why:**
unclear meaning
difficult maintenance

**Formatting**

**Bad**
select customerid,firstname,lastname from customers where city='London'

**Good**
SELECT
    CustomerID,
    FirstName,
    LastName
FROM Customers
WHERE City = 'London';

**Rules:**
Keywords in uppercase
One column per line
Indent consistently
Use line breaks

**Aliases**
Purpose:
improve readability
shorten table names

**Table Alias**
SELECT
    c.CustomerID,
    c.FirstName
FROM Customers AS c;

**Column Alias**
SELECT
    SalesAmount AS TotalSales
FROM Sales;

**Readability**
Use Meaningful Names
SELECT
    CustomerID,
    CustomerName
FROM Customers;
**Avoid SELECT ***

**Bad:**
SELECT *
FROM Customers;

**Good:**
SELECT
    CustomerID,
    CustomerName
FROM Customers;

**Comment Complex Logic**
-- Calculate total sales including tax
SELECT
    SalesAmount * 1.18 AS TotalSales
FROM Sales;

**Consistency**
Choose one style and stick with it:
PascalCase
snake_case
camelCase

**For our learning project:**

SQL Keywords → UPPERCASE
Columns/Tables → Database Naming Convention
Aliases → Short and meaningful
