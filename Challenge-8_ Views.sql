/* 1. Write a query to create a view active_customer with all details of customer belonging to 
      store id 1 and with active status = 1. (schema – sakila, table - customer ). */
      
use sakila;
create view active_customer as
select * from customer where store_id = 1 and active =1;
select * from active_customer;

/* 2. Write query to create view customer_detail that list the customer detail including 
city name and address also. (schema – sakila) */

create view customer_details as
select c.customer_id,
c.first_name,
c.last_name,
c.email,
a.address,
ci.city 
from customer c left join address a on c.address_id=a.address_id 
				left join city ci on a.city_id=ci.city_id 
                order by city;
                
select * from customer_details;