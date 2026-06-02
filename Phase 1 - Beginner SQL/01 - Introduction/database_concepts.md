# Database Concepts

Data refers to raw, unorganized facts and figures that can be processed to generate meaningful information. 
A database is a structured system used to store, manage, and retrieve data efficiently for multiple users and applications. It's important due to following features:

Scalability: Handles large volumes of data efficiently.
Data Integrity: Maintains accuracy using rules and constraints.
Security: Protects data through controlled access and permissions.
Analytics: Helps analyze data to support better decision-making.

## **Working of Databases**
Databases work by organizing and storing information in a structured or unstructured format, allowing easy access, retrieval, and modification.
At the core of every database system is the Database Management System (DBMS)- a software layer that acts as an intermediary between users and the raw data.

* The DBMS handles tasks like querying, updating, deleting and managing access permissions, without requiring users to know the physical details of where data is stored.
* When a user submits a request (such as a search or update), the DBMS processes the query, locates the relevant data, and returns results in a structured format.
* DBMSs provide features like backup, recovery, performance optimization and data security to ensure the system runs efficiently and reliably.

## **Components of a Database**
Databases consist of several critical components that work together to store, organize and retrieve data effectively. Here is a detailed explanation of each component:
* Data: The actual information stored in the database, such as text, numbers, images, or files.
* Schema: The structural blueprint that defines how data is organized—tables, fields, data types, and relationships.
* DBMS: The software that manages database operations like storage, retrieval, and security (e.g., MySQL, Oracle).
* Queries: Instructions (usually SQL) used to retrieve or manipulate data within the database.
* Users: People or systems that interact with the database, each with specific roles and access permissions.

## **Types of Databases**
Databases can be classified into two primary types Relational (SQL) and NoSQL Databases.
NoSQL is then further divided into four types: Document-oriented, Key-Value, Wide-Column, and Graph databases.

## **1. Relational Databases (RDBMS)**
Relational databases organize data into tables made up of rows (records) and columns (fields). 
They use schemas (blueprints) to define how data is structured and how different tables relate to each other.

* Strict schema-based structure.
* Primary Keys (unique IDs) and Foreign Keys (relationships between tables).
* ACID compliant (ensures Atomicity, Consistency, Isolation, and Durability in transactions).
* Ideal for structured data.
* Examples: MySQL, PostgreSQL, Oracle, Microsoft SQL Server.

## **2. NoSQL Databases**
"NoSQL" stands for "Not Only SQL". These databases are designed to handle unstructured or semi-structured data, such as text, images, videos or sensor data. 
They don’t rely on the traditional table format.

* Flexible data models (no fixed schema).
* Scales horizontally for high-volume data.
* Often optimized for specific use cases like graphs or time-series data.

### **Main Sub-Types of NoSQL Databases:**
* Document Databases – Store data as JSON-like documents. (Example: MongoDB)
* Key-Value Stores – Store simple key–value pairs for fast lookups. (Example: Redis)
* Columnar Databases – Store data by columns for analytics. (Example: Apache Cassandra)
* Graph Databases – Store nodes & relationships for connected data. (Example: Neo4j)

## ** ACID Properties**
ACID stands for Atomicity, Consistency, Isolation, and Durability—four essential principles that ensure your database transactions are reliable, accurate, and secure.
* Atomicity: Ensures transactions complete fully or not at all.
* Consistency: Ensures the database moves from one valid state to another.
* Isolation: Ensures that multiple transactions can happen at the same time without affecting each other.
* Durability: Saves changes permanently after completion.

## Database( IN SHORT)
A database is an organized, digital collection of structured information or data stored in a computer system. 
Typically managed by a Database Management System (DBMS), it allows applications and users to efficiently store, update, secure, and retrieve large amounts of information.

**DBMS VS RDMS**

A DBMS (Database Management System) is software used to store and manage data in a flat file or hierarchical structure. 
An RDBMS (Relational Database Management System) is an advanced type of DBMS that organizes data into related tables, 
ensuring higher security, data integrity, and support for multiple users.

Here is a breakdown of the core differences:
Feature 
                              DBMS (Database Management System)	                                   RDBMS (Relational DBMS)
Data Storage	                Data is stored as files.	                                           Data is stored in tables with rows and columns.
Data Relations	              No relationships or links between data.                              Data in tables can be linked/related using keys.
Query Language	              Does not use a standardized query language.	                         Uses Structured Query Language (SQL) for easy fetching.
Users	                        Generally designed for a single user.	                               Supports multiple users simultaneously.
Security & Integrity       	  Lower security and fewer integrity checks.	                         High security measures and strict integrity constraints.
Best Used                     For	Small applications with limited data.	                           Large-scale datasets and complex organizations.
Examples	                    XML files, Windows Registry.	                                        MySQL, PostgreSQL, Oracle, SQL Server.

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

# Database Types(Processing approach or system architecture)

## OLTP (Online Transaction Processing)
OLTP focuses on handling large numbers of transactional operations in real time, ensuring data consistency and reliability for daily business operations.
Online Transaction Processing, commonly known as OLTP, is a data processing approach emphasizing real-time execution of transactions. 
The majority of OLTP systems are meant to manage numerous short atomic operations that keep databases in line.
* To maintain transaction integrity and reliability, these systems support ACID (Atomicity, Consistency, Isolation, Durability) properties.
* It is through this that numerous unavoidable applications run their critical courses like online banking, reservation systems etc.

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
OLAP is designed for complex queries and data analysis, enabling businesses to derive insights from vast datasets through multidimensional analysis.
Online Analytical Processing (OLAP) refers to software tools used for the analysis of data in business decision-making processes. 
OLAP systems generally allow users to extract and view data from various perspectives,
many times they do this in a multidimensional format which is necessary for understanding complex interrelations in the data.

Note: These systems are part of data warehousing and business intelligence, enabling users to do things like trend analysis, financial forecasting and any other form of in-depth data analysis.
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

A data warehouse is a centralized repository used to collect, store, and manage large volumes of current and historical data from multiple, diverse sources.
Its primary purpose is to support business intelligence (BI), reporting, and complex analytical queries for informed decision-making.

Note: The main goal of data warehousing is to support decision-making by providing clean, consistent and timely access to data. It ensures fast data retrieval even when working with massive datasets.

Characteristics:
* Historical data
* Subject-oriented
* Optimized for reporting
* Supports business intelligence tools

## **Data Warehouse Architecture**
A data warehouse architecture defines how data flows, where it is processed, and how users access it.
In a nutshell, data warehousing architecture is the design that specifies when, how, and where data is to be gathered, stored, processed, and accessed within a data warehouse. The data flow structure is laid out, starting from operational systems and external sources of data to the processing layers and to the tools that are used by end users.

## Types of data warehouse architecture 
Data warehouse architecture varies in complexity, depending on structure and purpose.

### Single tier 
In this simple form, the data warehouse acts as a centralized repository for all data and as the platform for analysis and querying.
Single-tier data warehouse architecture is suited for small organizations with a limited number of data sources, simple reporting needs and smaller budgets. 

### Two tier 
This model separates source systems from the data warehouse, creating two layers. The data warehouse is the platform for both storage and querying. 
Two-tier architecture offers greater scalability and improved performance and allows for more complex transformations than single-tier architecture. 

### Three tier (The industry-standard framework is the Three-Tier Architecture.)
In three-tier data warehousing architecture, the bottom tier comprises data sources and data storage, data access methods and data ingestion or extraction. The middle tier is an online analytical processing (OLAP) server. The top tier includes the front-end clients for querying, BI, dashboarding, reporting and analysis. This is the most complex type of data warehouse architecture and provides high performance and scalability, integrates with analytics tools and supports complex querying and analytics. 

* Bottom Tier (Data Source,OLTP & ETL): The database servers that pull raw data from operational systems (like ERP, CRM). It houses data integration tools that clean, standardize, and load the data.
* Middle Tier (OLAP Server): An Online Analytical Processing (OLAP) server that acts as a bridge between the raw data and end-user tools. It processes complex queries rapidly using multidimensional data models.
* Top Tier (Presentation): Front-end client tools, dashboards, and BI interfaces that allow business users to visualize and analyze the processed data.


