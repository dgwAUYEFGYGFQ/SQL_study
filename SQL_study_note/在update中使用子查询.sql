update orders
set comments = 'golden_customers'
where customer_id in 
( select customer_id 
	from customers
    where points > 3000)