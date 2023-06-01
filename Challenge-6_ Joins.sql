
use sakila;

-- 1.
SELECT 
    c.city_id, c.city, c.country_id, co.country
FROM
    city c
        INNER JOIN
    country co 
ON c.country_id = co.country_id
ORDER BY country_id;

-- 2.
SELECT 
    f.film_id,
    f.title,
    f.description,
    f_c.category_id,
    c.name
FROM
    film f INNER JOIN film_category f_c ON f.film_id = f_c.film_id 
    INNER JOIN category c ON f_c.category_id = c.category_id;
    
-- 3.
SELECT 
    f.film_id,
    f.title,
    f.description,
    i.inventory_id,
    fi.description
FROM
    film f LEFT JOIN inventory i ON f.film_id = i.film_id
    LEFT JOIN film_text fi ON i.film_id = fi.film_id;
    
-- 4.

SELECT 
    f.film_id,
    f.title,
    f.description,
    i.inventory_id,
    fi.description
FROM
    film f LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN film_text fi ON i.film_id = fi.film_id;