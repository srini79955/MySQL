create database week2;
use week2;

create table actor
(
actor_id SMALLINT UNSIGNED PRIMARY KEY,
first_name VARCHAR(45) NOT NULL,
last_name VARCHAR(45) NOT NULL
);

create table country
(
country_id SMALLINT UNSIGNED PRIMARY KEY,
country VARCHAR(50) NOT NULL,
last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

create table city
(
city_id SMALLINT UNSIGNED PRIMARY KEY,
city VARCHAR(50) NOT NULL,
country_id SMALLINT UNSIGNED, FOREIGN KEY(country_id) REFERENCES country(country_id),
last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE adress
(
address_id SMALLINT UNSIGNED PRIMARY KEY,
address VARCHAR(50) NOT NULL,
address2 VARCHAR(50) DEFAULT NULL,
district VARCHAR(20) NOT NULL,
city_id SMALLINT UNSIGNED,
FOREIGN KEY(city_id) REFERENCES city(city_id),
postal_code VARCHAR(10) DEFAULT NULL,
phone VARCHAR(20) NOT NULL,
last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
); 

DESC adress;

use sakila;
desc customer;
select * from customer;
insert into customer 
(customer_id, store_id, first_name, last_name, email, address_id, active, create_date, last_update)
 values 
 (600, 2,'Akkala', 'Srinivas', 'nagasr@gmail.com', 1, 1,'2023-04-21', '2023-04-21');
 
 
 desc rental; 
 select * from rental;
 insert into rental
 (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
 values
 (16050,'2023-04-21', 1111, 555,'2023-04-21', 1,'2023-04-21');
 