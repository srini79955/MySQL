-- For Q-1 to Q-4 Create a database named ‘testdb’ and use this testdb for creating all 4 tables.
create database testdb;
use testdb;

-- 1. Write query to create table actor.
create table actor
(actor_id SMALLINT UNSIGNED PRIMARY KEY,
first_name VARCHAR(45) NOT NULL,
last_name VARCHAR(45) NOT NULL);
desc actor;

-- 2. Write query to create table country.
create table country (
country_id SMALLINT UNSIGNED PRIMARY KEY,
country VARCHAR(50) NOT NULL,
last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP);
desc country;

-- 3. Write query to create table city.
create table city (
city_id SMALLINT UNSIGNED PRIMARY KEY,
city VARCHAR(50) NOT NULL,
country_id SMALLINT UNSIGNED,
last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
foreign key(country_id) references country(country_id));
desc city;

-- 4. Write query to create table address.
create table adress (
address_id SMALLINT UNSIGNED PRIMARY KEY,
address VARCHAR(50) NOT NULL,
address2 VARCHAR(50) DEFAULT NULL,
district VARCHAR(20) NOT NULL,
city_id SMALLINT UNSIGNED,
FOREIGN KEY(city_id) references city(city_id),
postal_code VARCHAR(10) DEFAULT NULL,
phone VARCHAR(20) NOT NULL,
last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP);
desc adress;

-- 5. Write a query to insert values in table customer. (schema - sakila)
use sakila;
desc customer;
select * from customer;
insert into customer values(600, 2, 'Srinivas', 'Akkala', 'nagasr.akkala@gmail.com',600,1,'2023-10-06', '2023-10-06');

-- 6. Write a query to insert values in table rental. (schema - sakila)
desc rental;
select * from rental;
 insert into rental
 (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
 values
 (16050,'2023-04-21', 1111, 555,'2023-04-21', 1,'2023-04-21');










