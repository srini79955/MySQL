-- 1. Write query to select film_id, title, length of title, description(to be displayed in upper case) 
--     from table film (schema - sakila).
use sakila;
desc film;
select film_id, title, length(title) len_title, upper(description) description from film;

-- 2. Write query to display result set shown in figure 1 from table film (schema - sakila).
select concat(title,title,title) Title from film;

-- 3. Write query to display result set shown in figure 2 from table film (schema - sakila).
select film_id, title, left(description,13) Description from film;

-- 4. Write query to display result set shown in figure 3 from table film (schema - sakila).
select title, concat(reverse(title),reverse(title)) CODEWORD from film;

-- 5. Write query to display number of days since the last update in table actor (schema - sakila).
select * from actor;
select last_update, now(),datediff(now(),last_update) Days_diff from actor;

-- 6. Write query to display result set shown in figure 4 from table customer (schema - sakila).
select * from customer;
select create_date, date(create_date) Date,time(create_date) Time from customer;
