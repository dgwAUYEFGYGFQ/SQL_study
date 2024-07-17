SELECT distinct product_id , p.name ,
(select count(product_id) from order_items where oi.product_id = product_id) as orders,
(select if( orders = 1 , 'once' , 'many times')) 
FROM sql_store.orders o
join order_items oi
using(order_id)
join products p
using(product_id)
order by product_id ;

select
	product_id ,
    name,
    count(*) as orders,
    if(count(*) > 1 , 'many times' , 'once') as frequency
from products
join order_items using (product_id)
group by product_id 