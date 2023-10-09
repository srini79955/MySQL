use sakila;

-- 1. Write query to select film_id, title, length of title, description (to be displayed in upper case) 
--    from table film (schema - sakila).
select film_id, title, length(title) as Len_title, upper(description) as DESCRIPTION from film;

-- 2. Write query to display result set shown in figure 1 from table film (schema - sakila).
select concat(title,title,title) as title from film;

-- 3. Write query to display result set shown in figure 2 from table film (schema - sakila).
select film_id, title, left(description,13) as Description from film;

-- 4. Write query to display result set shown in figure 3 from table film (schema - sakila).
select title, concat(reverse(title),reverse(title)) as CodeWord from film;

-- 5. Write query to display number of days since the last update in table actor (schema - sakila).
select last_update, now(),datediff(now(),last_update) as no_of_days from actor;

-- 6. Write query to display result set shown in figure 4 from table customer (schema - sakila).
select create_date, date(create_date) as Date,time(create_date) as Time from customer;

