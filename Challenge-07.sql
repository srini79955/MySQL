use sakila;

-- 1. Write query to make summary of table payment 
--   (calculate Total amount, average amount, minimum amount, maximum amount, variance of amount). 

select 'Total amount' as parameter, sum(amount) Value from payment 
union
select 'Avg amount', avg(amount) from payment
union
select 'Min amount', min(amount) from payment
union
select 'Max amount', max(amount) from payment
union
select 'Variance of amount', variance(amount) from payment;


-- 2.  Write query to calculate Total amount, average amount, minimum amount of amount from table payment 
--    for customer group using window function. (schema - sakila). 
select payment_id,
		customer_id,
        staff_id,
        sum(amount) over(partition by customer_id) TotalSum,
        avg(amount) over(partition by customer_id) Average,
        min(amount) over(partition by customer_id) Minimum 
        from payment;
        
-- 3. Write column name/s for below written tables in which null values are allowed (schema – sakila). 
desc film_category;
desc city;
desc address;
desc store;
desc actor;

-- 4.Write query to calculate the incline/decline for number of payments made on each date.
--   (schema–sakila, table – payment)
select * from payment;
