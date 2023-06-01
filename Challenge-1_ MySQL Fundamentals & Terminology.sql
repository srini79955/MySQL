# 1. Write type of attributes.
/* 1. Key attributes
    2. Simple attributes
    3. composite attributes
    4. Derived attributes
    5. single value attributes
    6. Multi-value attributes */
    
# 2. ACID stands for?
/* Automicity - All the transactions are done or not a single transaction is happend.
    Consisrency - State of database is same/ consistence before and after transaction.
	Isolaton - Independent to every transaction
    Durability - by commit changes to database, it does not effect the hardware or software. */
    
# 3. Write three examples of data definition language commands.
-- DDl - CREATE, ALTER, DROP

# 4. Write examples of transaction control language commands.
-- TCL - COMMIT, SAVEPOINT, ROLLBACK

# 5. Write name of default tables of sakila schema of MySQL.
SHOW DATABASES;
USE sakila;
SHOW tables;

# 6. Explore ER diagram of schema sakila.
-- home - Model -select schema- Explore

# 7. Look for foreign keys used in the table category (Navigator).
-- No foreign key

# 8. Look for indexes used in table film_actor (Navigator).
-- film_id is the indexes

# 9. Look for stored procedures used in the sakila database (Navigator).
-- film_in_stock, film_not_in_stock, rewards_report

# 10. Look for views used in the sakila database (Navigator).
-- actor_info
-- customer_list
-- film_list
-- nicer_but_slower_film_list
-- sales_by_film_category
-- sales_by_store
-- staff_list

# 11. Write keyboard shortcut for executing all statements in MySQL.
-- ctrl+shift+Enter

# 12. Write keyboard shortcut for opening new tab in MySQL.
-- ctrl+t

# 13. Explore all the schemas through navigator in MySQL.
-- mysql workbench - Navigator - schemas

# 14. Create new schema in connected server in MySQL.
-- using mysql menu bar options by selecting, create a new schema in the connected server.

# 15. Create new SQL tab in MySQL for running queries and save the file.
-- using mysql menu bar options by selecting,create a new SQL tab for executing queries. 