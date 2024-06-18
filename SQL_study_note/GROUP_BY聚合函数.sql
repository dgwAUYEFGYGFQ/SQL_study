SELECT 
date , 
pm.name as payment_method ,
sum(amount) as total_payments
FROM sql_invoicing.payments p
join payment_methods pm
on p.payment_method = pm.payment_method_id
group by p.date , payment_method
order by date