-- 1. Write query to select all record from table customer (schema - sakila).

show databases;
use sakila;
select * from customer;

-- 2. Write query to select record from table customer for fields 
--     customer_id (Alias - ID), first_name (FName), last_name (LName), email (EmailID) (schema - sakila).
select customer_id ID, first_name FName, last_name LName, email EmailID from customer;

-- 3. Write query to display film title starting with alphabet ‘A’ and ending with alphabet ‘r’ 
--    from table film (schema - sakila)
select * from film where title like 'A%r';

-- 4. Write query to display first 100 records from table customer (schema - sakila).
select * from customer limit 100;

-- 5. Write query to display payment_id, amount, rounded off value of amount and square root of amount
--    from table payment (schema - sakila) in single statement.
select payment_id, amount, round(amount) round_amount, sqrt(amount) SQRT_amount from payment;

-- 6. Create backup for schema – sakila.
-- c/Program Files/MySQL/MySQL Server 8.0/bin > mysqldump -u root -p <database_name> > <filename.sql>
-- create database <db_name>;
-- use db_name;
-- source filename.sql;

# Server - data Export - select database - Export to self contain file
