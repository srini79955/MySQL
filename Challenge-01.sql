-- 1. Write type of attributes.
/*

In database management systems (DBMS), attributes are the characteristics or properties that describe an entity.
These attributes define the different types of data that can be stored in a database. 
Here are the common types of attributes in DBMS:

1. **Simple Attribute:** A simple attribute is an atomic attribute that cannot be divided any further. 
For example, an employee's first name or a product's price could be simple attributes.

2. **Composite Attribute:** A composite attribute is an attribute that can be divided into smaller sub-parts, which represent more basic attributes with independent meanings.
For instance, an address attribute can be divided into street, city, state, and postal code sub-parts.

3. **Derived Attribute:** A derived attribute is an attribute whose value is derived from other attributes in the database. These attributes are not stored in the database but can be derived using other attributes. 
For example, age can be derived from the birthdate of a person.

4. **Multi-valued Attribute:** A multi-valued attribute can hold multiple values.
 For example, the "Skills" attribute of an employee entity can have multiple values like "Java," "Python," and "SQL."

5. **Key Attribute:** A key attribute is an attribute that can uniquely identify an entity within an entity set. 
In a relational database, a key attribute is often used to create a primary key for a table.

6. **Single-valued Attribute:** A single-valued attribute can hold only a single value. 
For example, the "DateOfBirth" attribute of a person entity is a single-valued attribute.

7. **Null Attribute:** A null attribute is an attribute that can have a null value, indicating that the attribute value for a particular entity is unknown or undefined.

8. **Multi-valued Composite Attribute:** This type of attribute has multiple components, and each component can have multiple values. 
For instance, an attribute "Phone Numbers" can have sub-parts like "Home," "Work," and "Mobile," each with multiple values.

*/

-- 2. ACID stands for?
/* 
ACID is an acronym that stands for the four key properties of a transaction in a relational database management
 system (RDBMS). These properties ensure that database transactions are processed reliably:

1. **Atomicity:** Atomicity ensures that a transaction is treated as a single, indivisible unit of work. 
Either all the operations within the transaction are executed successfully, or none of them are. 
If any part of the transaction fails, the entire transaction is rolled back, 
and the database remains in its original state, preserving data integrity.

2. **Consistency:** Consistency ensures that a transaction brings the database from one valid state to another.
 The database must satisfy a set of consistency constraints before and after the transaction. 
 If the database is in a consistent state before the transaction, it must remain consistent after the transaction
 is executed.

3. **Isolation:** Isolation ensures that the operations within a transaction are executed in a way that is 
isolated from other transactions. Each transaction should be unaware of other concurrent transactions and should 
not interfere with their operations.

4. **Durability:** Durability guarantees that once a transaction is committed, its changes are permanent and 
survive system failures, such as power outages or crashes. The committed changes are stored in non-volatile 
storage (usually disk) and are not lost even if the system crashes. This property ensures that the database can 
recover to a consistent state after a failure.

*/

-- 3. Write three examples of data definition language commands.
-- Data Definition Language Commands are Create, Drop, Alter
create database example;
use example;
create table table1(Name char(20), Phone_Number int, Address varchar(50), DOB date);
show databases;
use example;
show tables;
desc table1;
drop table table1;
drop database example;


-- 4. Write examples of transaction control language commands.
-- TCL Commands are commit, savepoint, and rollback

-- 5. Write name of default tables of sakila schema of MySQL.
use sakila;
show tables;

-- 6. Explore EER diagram of schema sakila (add screenshot)
-- 7. Look for foreign keys used in the table customer (Navigator).
-- 8. Look for indexes used in table film_actor (Navigator).
-- 9. Look for stored procedures used in the sakila database (Navigator).
-- 10. Look for views used in the sakila database (Navigator).
-- 11. Write keyboard shortcut for executing all statements in MySQL.
-- CTRL+SHIFT+ENTER

-- 12. Write keyboard shortcut for opening new tab in MySQL.
-- CTRL+T

-- 13. Explore all the schemas through navigator in MySQL.
show databases;

-- 14. Create new schema in connected server in MySQL.
create database example;
use example;
create table table1(Name char(20), Phone_Number int, Address varchar(50), DOB date);
show tables;
desc table1;

-- 15. Create new SQL tab in MySQL for running queries and save the file.
-- CTRL+S