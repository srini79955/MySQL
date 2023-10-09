use sakila;
-- 1. Write query to display result set shown in figure 1 using inner join (schema - sakila) 
select city.city_id, 
       city.city, 
	   city.country_id,
       country.country
       from city inner join country on city.country_id = country.country_id;
       
-- 2. Write query to join tables film, film_category and category using inner join. 
--    Result set should be like shown in figure 2 (schema - sakila) 
select * from film;
select * from film_category;
select * from category;

select f.film_id,
		f.title,
        f.description,
        fi.category_id,
        c.name
        from film f inner join film_category fi on f.film_id=fi.film_id
        inner join category c on fi.category_id = c.category_id;
        
-- 3. Write query to join tables film, inventory and film_text using left join. 
--           Result set should be like shown in figure 3 (schema - sakila)

select f.film_id,
		f.title, 
        f.description,
        i.inventory_id, 
        fi.description from film f left join inventory i on f.film_id=i.film_id
									left join film_text fi on i.film_id=fi.film_id;
                                    
-- 4. "Write query to display the staff_id, first_name, last_name, amount, payment_date, rental_date and 
--             return_date from tables staff, payment and rental using inner join (schema - sakila)"
select f.film_id, 
		f.title, 
        f.description, 
        i.inventory_id, 
        fi.description from film f inner join inventory i on f.film_id=i.film_id
									inner join film_text fi on i.film_id=fi.film_id;
        