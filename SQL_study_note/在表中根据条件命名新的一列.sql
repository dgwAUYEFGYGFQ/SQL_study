SELECT customer_id , first_name , points , 'bronze' as type
FROM sql_store.customers
where points <= 2000
union 
SELECT customer_id , first_name , points , 'sliver' as type
FROM sql_store.customers
where points > 2000 and points <= 3000
union
SELECT customer_id , first_name , points , 'gold' as type
FROM sql_store.customers
where points >= 3000
order by first_name 