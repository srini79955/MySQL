use sakila;

-- 1. Write a single query to select payment_id, customer_id, staff_id, rental_id, amount from table payment 
--   (schema - sakila) which satisfies both below mentioned conditions.
-- a.Range for customer_id 10,20,30,40,50,60,70,80,90,100
-- b.staff_id is 2
select * from payment;
SELECT payment_id, customer_id, staff_id, rental_id, amount FROM payment
 WHERE customer_id IN (10,20,30,40,50,60,70,80,90,100) AND staff_id =2;
 
 -- 2. Write query to display record of table film (schema - sakila) ordered by rating in descending order.
 select * from film order by rating desc;
 
 
 -- 3. Write a single query to display payment_id, amount and updated_amount from table payment(schema-sakila)
 -- which supports the result set with below mentioned criteria.
 -- a.amount is greater than 5.0
 -- b.updated_amount is double of amount and rounded off
 select payment_id, amount, round(amount*2) as updated_amount from payment where amount>5;
 
 /* 4.Write a single query to display below mentioned values from table payment
 for each customer (customer_id) (schema - sakila)
customer_id 
Total sum of the payment
Average of the payment
Standard deviation of the payment
Variance of the payment*/
select customer_id,sum(amount) Total_sum,avg(amount) Avg_amount,std(amount) Std_amount, variance(amount) Var_amount from payment group by customer_id;


-- 5. Write a query to display city_id, city, country_id from table city 
--        for country name starting with A and B (schema - sakila) (Hint: Use subquery)
SELECT city_id, city, country_id FROM city WHERE country_id IN (
    SELECT country_id FROM country WHERE country LIKE 'A%' OR country LIKE 'B%');

