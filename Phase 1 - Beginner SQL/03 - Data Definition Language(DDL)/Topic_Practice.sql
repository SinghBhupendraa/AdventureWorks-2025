/* ===================================
         CREATE PRACTICE
=================================== */

CREATE DATABASE SQL_Learning_DB;
GO
USE SQL_Learning_DB;
GO

-- Q1. Create a schema named SQL_Learning.
CREATE SCHEMA SQL_Learning;

-- Q2. Create a table SQL_Learning.Customers_Test with columns CustomerID INT and CustomerName VARCHAR(100).
CREATE TABLE SQL_Learning.Customers_Test(
    CustomerID INT NOT NULL PRIMARY KEY,
    CustomerName VARCHAR(30) NOT NULL,
    City VARCHAR(20) NOT NULL,
    ActiveStatus BIT NOT NULL DEFAULT 1
    ); -- I have modified for better practice questions and data



-- Q3. Create a table SQL_Learning.Products_Test with columns ProductID INT, ProductName VARCHAR(150), Price DECIMAL(10,2).
CREATE TABLE SQL_Learning.Products_Test(
    ProductID INT NOT NULL PRIMARY KEY,
    ProductName VARCHAR(150) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);
-- Q4. Create a table SQL_Learning.Employees_Test with columns EmployeeID INT, FirstName VARCHAR(50), LastName VARCHAR(50).
CREATE TABLE SQL_Learning.Employees_Test(
    EmployeeID INT NOT NULL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL
);

-- Q5. Create a table SQL_Learning.Departments_Test with columns DepartmentID INT and DepartmentName VARCHAR(100).
CREATE TABLE SQL_Learning.Departments_Test (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL,
    Budget DECIMAL(12,2) NOT NULL,
    Location VARCHAR(50) NOT NULL
);

-- Q6. Create a table SQL_Learning.Orders_Test with columns OrderID INT, CustomerID INT, OrderDate DATE.
CREATE TABLE SQL_Learning.Orders_Test(
    OrderID INT IDENTITY(1001,1) NOT NULL PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES SQL_Learning.Customers_Test(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES SQL_Learning.Products_Test(ProductID),
    EmployeeID INT FOREIGN KEY REFERENCES SQL_Learning.Employees_Test(EmployeeID),
    OrderDate DATE NOT NULL,
    Quantity INT NOT NULL
);
-- Q7. Create a table SQL_Learning.Inventory_Test with columns InventoryID INT, ProductID INT, Quantity INT.
CREATE TABLE SQL_Learning.Inventory_Test(
    InventoryID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    ProductID INT FOREIGN KEY REFERENCES SQL_Learning.Products_Test(ProductID),
    QuantityInStock INT,
    ReorderLevel INT NOT NULL,
    LastStockUpdate DATETIME2 DEFAULT SYSUTCDATETIME()
);

-- Q8. Create a table SQL_Learning.Categories_Test with columns CategoryID INT and CategoryName VARCHAR(100).
CREATE TABLE SQL_Learning.Categories_Test (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL,
    DepartmentGroup VARCHAR(50) NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1
);

-- Q9. Create a table SQL_Learning.Suppliers_Test with columns SupplierID INT, SupplierName VARCHAR(150), City VARCHAR(100).
CREATE TABLE SQL_Learning.Suppliers_Test (
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierCode VARCHAR(10) NOT NULL,
    ContactName VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Rating INT CHECK (Rating BETWEEN 1 AND 5)
);

-- Q10. Create a table SQL_Learning.Payments_Test with columns PaymentID INT, OrderID INT, Amount DECIMAL(12,2).
CREATE TABLE SQL_Learning.Payments_Test (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT FOREIGN KEY REFERENCES SQL_Learning.Orders_Test(OrderID),
    PaymentDate DATE NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentMethod VARCHAR(30) NOT NULL CHECK (PaymentMethod IN ('Credit Card', 'Net Banking', 'UPI', 'Debit Card'))
);

-- Q11. Create a table SQL_Learning.Sales_Test with columns SaleID INT, ProductID INT, SaleDate DATE, SalesAmount DECIMAL(12,2).
CREATE TABLE SQL_Learning.Sales_Test (
    SalesID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT FOREIGN KEY REFERENCES SQL_Learning.Orders_Test(OrderID),
    SalesRegion VARCHAR(50) NOT NULL,
    Revenue DECIMAL(12,2) NOT NULL,
    DiscountApplied DECIMAL(4,2) DEFAULT 0.00
);

-- Q12. Create a table SQL_Learning.Regions_Test with columns RegionID INT and RegionName VARCHAR(100).
CREATE TABLE SQL_Learning.Regions_Test (
    RegionID INT IDENTITY(1,1) PRIMARY KEY,
    RegionName VARCHAR(50) NOT NULL,
    Headquarters VARCHAR(50) NOT NULL,
    RegionalManager VARCHAR(100) NOT NULL,
    TargetRevenue DECIMAL(14,2) NOT NULL
    );

-- Q13. Create a table SQL_Learning.Stores_Test with columns StoreID INT, StoreName VARCHAR(150), RegionID INT.
CREATE TABLE SQL_Learning.Stores_Test (
    StoreID INT IDENTITY(1,1) PRIMARY KEY,
    StoreName VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    TotalEmployees INT NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1
);

-- Q14. Create a table SQL_Learning.Returns_Test with columns ReturnID INT, OrderID INT, ReturnDate DATE.
CREATE TABLE SQL_Learning.Returns_Test (
    ReturnID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT FOREIGN KEY REFERENCES SQL_Learning.Orders_Test(OrderID),
    ReturnDate DATE NOT NULL,
    ReturnReason VARCHAR(100) NOT NULL,
    RefundAmount DECIMAL(10,2) NOT NULL,
    IsApproved BIT NOT NULL DEFAULT 0
);
-- Q15. Create a table SQL_Learning.Customer_Feedback_Test with columns FeedbackID INT, CustomerID INT, FeedbackText VARCHAR(500).
CREATE TABLE SQL_Learning.Customer_Feedback_Test (
    FeedbackID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES SQL_Learning.Customers_Test(CustomerID),
    FeedbackDate DATE NOT NULL,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comments VARCHAR(255) NULL
);

