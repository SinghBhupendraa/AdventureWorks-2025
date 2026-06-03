USE AdventureWorks2025;

/* ===================================
   SELECT & FROM PRACTICE
=================================== */

-- Q1. Return all columns from Person.Person.
SELECT *
FROM Person.Person;

-- Q2. Return all columns from Production.Product.
SELECT *
FROM Production.Product;

-- Q3. Return only FirstName from Person.Person.
SELECT FirstName
FROM Person.Person;

-- Q4. Return FirstName and LastName from Person.Person.
SELECT 
	FirstName,
	LastName
FROM Person.Person;

-- Q5. Return Name from Production.Product.
SELECT Name
FROM Production.Product;

-- Q6. Return ProductNumber and Name from Production.Product.
SELECT
	ProductNumber,
	Name
FROM Production.Product;

-- Q7. Return BusinessEntityID from HumanResources.Employee.
SELECT BusinessEntityID
FROM HumanResources.Employee;

-- Q8. Return CustomerID from Sales.Customer.
SELECT CustomerID
FROM Sales.Customer;

-- Q9. Return Name, ProductNumber and Color from Production.Product.
SELECT 
	Name,
	ProductNumber,
	Color
FROM Production.Product;

-- Q10. Return FirstName, MiddleName and LastName from Person.Person.
SELECT 
	FirstName,
	MiddleName,
	LastName
FROM Person.Person;

/* ===================================
          ALIAS PRACTICE
=================================== */

-- Q11. Return FirstName as Employee_First_Name.
SELECT 
	FirstName AS Employee_First_Name
FROM Person.Person; --In HumanResource.Employee there is no column as FirstName so i choose Person.Person

-- Q12. Return LastName as Employee_Last_Name.
SELECT 
	LastName AS Employee_Last_Name
FROM Person.Person; -- Same case as Q 11

-- Q13. Return Name from Production.Product as Product_Name.
SELECT 
	Name AS Product_Name
FROM Production.Product;

-- Q14. Return ProductNumber as Product_Code.
SELECT 
	ProductNumber AS Product_Code
FROM Production.Product;

-- Q15. Return CustomerID as Customer_ID.
SELECT 
	CustomerID AS Customer_ID
FROM Sales.Customer;

-- Q16. Return FirstName and LastName as:First_Name,Last_Name.
SELECT 
	FirstName AS First_Name,
	LastName AS Last_Name
FROM Person.Person;

-- Q17. Return:Name,ListPrice Alias:Product_Name,Price.
SELECT 
	Name AS Product_Name,
	ListPrice AS Price
FROM Production.Product;

-- Q18. Return:Name,Color Alias:Product_Name,Product_Color.
SELECT 
	Name AS Product_Name,
	Color AS Product_Color
FROM Production.Product;

-- Q19. Return:BusinessEntityID, NationalIDNumber, Alias:Employee_ID,National_ID From:HumanResources.Employee
SELECT 
	BusinessEntityID AS Employee_ID,
	NationalIDNumber AS National_ID
FROM HumanResources.Employee;

-- Q20. Create your first calculated column.From:Production.Product Return:Name,ListPrice,ListPrice * 1.18 Alias:Product_Name,Price,Price_With_Tax
SELECT 
	Name AS Product_Name,
	ListPrice AS Price,
	CAST(ListPrice*1.18 AS DECIMAL(10,2)) AS Price_With_Tax -- i know you asked to stick to simple practice but i just had to use caste this looks better don't judge on that
FROM Production.Product;

/* ===================================
           TOP PRACTICE
=================================== */

-- Q21. Return top 5 products from:Production.Product.
SELECT TOP (5) *
FROM Production.Product;

-- Q22. Return top 10 products showing:Name,ProductNumber.
SELECT TOP(10)
	Name,
	ProductNumber
FROM Production.Product;

-- Q23. Return top 15 customers from:Sales.Customer.
SELECT TOP (15) *
FROM Sales.Customer;

-- Q24. Return top 20 employees from:HumanResources.Employee.
SELECT TOP (20) *
FROM HumanResources.Employee;

-- Q25. Return top 25 rows from:Person.Person showing:FirstName,LastName.
SELECT TOP(25)
	FirstName,
	LastName
FROM Person.Person;

-- Q26. Return top 10 percent of products.
SELECT 
	TOP (10) PERCENT *
FROM Production.Product;

-- Q27. Return top 5 rows from:Production.Product showing:Name,ListPrice.
SELECT TOP (5)
	Name,
	ListPrice
FROM Production.Product;

-- Q28. Return top 3 rows from:Sales.Store.
SELECT TOP (3) *
FROM Sales.Store;

-- Q29. Return top 1 row from:Production.Product.
SELECT TOP (1) *
FROM Production.Product;

-- Q30. Return top 50 rows from:Person.Person with aliases:First_Name,Last_Name.
SELECT TOP(50)
	FirstName AS First_Name,
	LastName AS Last_Name
FROM Person.Person;

/* ===================================
         DISTINCT PRACTICE
=================================== */
-- Q31. Return distinct colors from:Production.Product.
SELECT DISTINCT 
	Color
FROM Production.Product;

-- Q32. Return distinct product line values from:Production.Product.
SELECT DISTINCT
	ProductLine
FROM Production.Product;

-- Q33. Return distinct class values from:Production.Product.
SELECT DISTINCT 
	Class
FROM Production.Product;

-- Q34. Return distinct city values from:Person.Address.
SELECT DISTINCT 
	City
FROM Person.Address;

-- Q35. Return distinct state province IDs from:Person.Address.
SELECT DISTINCT 
	StateProvinceID
FROM Person.Address;

-- Q36. Return distinct combinations of:City,StateProvinceID from:Person.Address.
SELECT DISTINCT
	City,
	StateProvinceID
FROM Person.Address;

-- Q37. Return distinct combinations of:Color,Class from:Production.Product.
SELECT DISTINCT
	Color,
	Class
FROM Production.Product;

-- Q38. Return distinct combinations of:FirstName,LastName from:Person.Person.
SELECT DISTINCT 
	FirstName,
	LastName
FROM Person.Person;

-- Q39. Return distinct territory IDs from:Sales.Customer.
SELECT DISTINCT
	TerritoryID
FROM Sales.Customer;

-- Q40. Return distinct names of products (Name) from:Production.Product.
SELECT DISTINCT
	Name
FROM Production.Product;

/* ===================================
         ORDER BY PRACTICE
=================================== */

-- Q41. Return Name from:Production.Product ordered by Name ascending.
SELECT *
FROM Production.Product
ORDER BY Name ASC;

-- Q42. Return Name from:Production.Product ordered by Name descending.
SELECT *
FROM Production.Product
ORDER BY Name DESC;

-- Q43. Return Name,ListPrice from:Production.Product ordered by ListPrice ascending.
SELECT 
	Name,
	ListPrice
FROM Production.Product
ORDER BY ListPrice ASC;

-- Q44. Return Name,ListPrice from:Production.Product ordered by ListPrice descending.
SELECT 
	Name,
	ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- Q45. Return FirstName,LastName from:Person.Person ordered by LastName ascending.
SELECT 
	FirstName,
	LastName
FROM Person.Person
ORDER BY LastName ASC;

-- Q46. Return FirstName,LastName from:Person.Person ordered by LastName descending.
SELECT 
	FirstName,
	LastName
FROM Person.Person
ORDER BY LastName DESC;

-- Q47. Return Name,Color,ListPrice from:Production.Product ordered by Color ascending and ListPrice descending.
SELECT 
	Name,
	Color,
	ListPrice
FROM Production.Product
ORDER BY Color ASC ,ListPrice DESC;

-- Q48. Return ProductNumber,Name from:Production.Product ordered by ProductNumber ascending.
SELECT 
	ProductNumber,
	Name
FROM Production.Product
ORDER BY ProductNumber ASC;

-- Q49. Return City from:Person.Address ordered by City ascending.
SELECT *
FROM Person.Address
ORDER BY City ASC;

-- Q50. Return Name,ListPrice from:Production.Product ordered by alias Price descending.
SELECT 
	Name,
	ListPrice AS Price_descening
FROM Production.Product
ORDER BY ListPrice DESC;

/* ===================================
         MIXED DQL PRACTICE
=================================== */

-- Q51. Return TOP (10) Product Name and ListPrice from:Production.Product ordered by ListPrice descending.
SELECT TOP (10)
	Name,
	ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- Q52. Return DISTINCT TOP (20) City from:Person.Address ordered by City ascending.
SELECT DISTINCT TOP (20)
	City
FROM Person.Address
ORDER BY City ASC;

-- Q53. Return TOP (15) FirstName AS Employee_First_Name from:Person.Person ordered by FirstName ascending.
SELECT TOP (15)
	FirstName AS Employee_First_Name
FROM Person.Person
ORDER BY FirstName ASC;

-- Q54. Return DISTINCT Color AS Product_Color from:Production.Product ordered by Product_Color ascending.
SELECT DISTINCT
	Color AS Product_Color
FROM Production.Product
ORDER BY Product_Color ASc;

-- Q55. Return TOP (5) Name AS Product_Name, ProductNumber AS Product_Code from:Production.Product.
SELECT TOP (5)
	Name AS Product_Name,
	ProductNumber AS Product_Code
FROM Production.Product;

-- Q56. Return TOP (10) PERCENT Name,ListPrice from:Production.Product ordered by ListPrice descending.
SELECT TOP (10) PERCENT
	Name,
	ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- Q57. Return DISTINCT StateProvinceID from:Person.Address ordered by StateProvinceID ascending.
SELECT DISTINCT
	StateProvinceID
FROM Person.Address
ORDER BY StateProvinceID;

-- Q58. Return TOP (25) CustomerID AS Customer_ID from:Sales.Customer ordered by Customer_ID ascending.
SELECT TOP (20)
	CustomerID AS Customer_ID
FROM Sales.Customer
ORDER BY Customer_ID ASC;

-- Q59. Return DISTINCT TOP (10) Color,Class from:Production.Product ordered by Color ascending.
SELECT DISTINCT TOP (10)
	Color,
	Class
FROM Production.Product
ORDER BY Color ASC;

-- Q60. Return TOP (20) Name AS Product_Name,ListPrice AS Price from:Production.Product ordered by Price descending.
SELECT TOP (20)
	Name AS Product_Name,
	ListPrice AS Price
FROM Production.Product
ORDER BY Price DESC;
