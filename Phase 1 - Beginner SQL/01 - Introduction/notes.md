# SQL Introduction

## What is SQL

SQL (Structured Query Language) is the standard programming language used to communicate with and manage relational databases. 
It allows users to store, retrieve, manipulate, and manage data efficiently.

SQL is not a general-purpose programming language like Python or Java. It is a domain-specific language designed specifically for working with databases.

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

## History of SQL

* SQL was developed in the 1970s by IBM researchers Donald Chamberlin and Raymond Boyce.
* It was originally called SEQUEL (Structured English Query Language).
* The language was later renamed SQL.
* In 1986, SQL became an ANSI standard.
* In 1987, it became an ISO standard.
* Today SQL is supported by major database systems including SQL Server, MySQL, PostgreSQL, Oracle, SQLite, Snowflake, and Databricks SQL.

---

## Purpose of SQL

The primary purpose of SQL is to:

* Store data
* Retrieve data
* Modify data
* Delete data
* Control access to data
* Maintain data integrity

SQL acts as the communication bridge between users/applications and databases.

---

## Why SQL Exists

Before databases, organizations stored data in files, spreadsheets, and manual records.

Problems included:

* Data duplication
* Data inconsistency
* Poor security
* Difficult reporting
* Slow data retrieval

SQL was created to provide:

* Standardized data access
* Faster querying
* Better security
* Centralized data management
* Reliable reporting and analytics
