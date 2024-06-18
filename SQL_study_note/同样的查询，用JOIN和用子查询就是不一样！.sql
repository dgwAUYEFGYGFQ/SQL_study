SELECT c.customer_id , c.first_name , c.last_name
FROM customers c
left join orders o
using (customer_id)
left join order_items
using (order_id)
where product_id = 3;

select *
from customers c
where customer_id in 
(select customer_id
	from orders  
    where order_id in
		(select order_id
         from order_items
         where product_id = 3)
         )
         
		


-- where order_id in (select order_id
		-- from order_items
       --  where product_id = 3)