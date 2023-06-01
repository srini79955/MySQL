use sakila;

-- 1. Write query to make summary of table payment 
-- (calculate Total amount, average amount, minimum amount, maximum amount, variance of amount).

select * from payment;

select 'Parameter', 'Value'
	union
select 'Total amount', sum(amount) from payment 
	union
select 'Avg amount', avg(amount) from payment
	union
select 'Min amount', min(amount) from payment
	union
select 'Max amount', max(amount) from payment
	union
select 'Variance of amount', variance(amount) from payment;


-- 2. Write query to calculate Total amount, average amount, minimum amount of amount from table payment
--     for customer group using window function. (schema - sakila).
select payment_id,customer_id,staff_id,
sum(amount) over(partition by customer_id) TotalSum,
avg(amount) over(partition by customer_id) Average,
min(amount) over(partition by customer_id) Minimum from payment;

-- 3.
desc film_category;
desc city;
desc address;
desc store;
desc film_actor;




-- 4. Write query to calculate the incline/decline for number of payments made on each date.
-- (schema – sakila, table – payment).
select payment_date,count(payment_id) current_count,
lag(count(payment_id),1) over(order by payment_date) previous_count,
count(payment_id)-lag(count(payment_id),1) over(order by payment_date) count_diff 
from payment group by date(payment_date) order by payment_date;