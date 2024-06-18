SELECT 
c.first_name,
sum(oi.quantity * oi.unit_price) as total_money
FROM sql_store.customers c
left join sql_store.orders o using(customer_id)
left join sql_store.order_items oi using(order_id)
where c.state = 'VA'
group by c.first_name
having total_money > 100
-- where可以选择表里面没被select的
-- hanving只能选择select过的列 