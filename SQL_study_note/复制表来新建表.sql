create table invoice_archive as
select invoice_id , number , c.name , invoice_total , payment_total , invoice_date , due_date , payment_date
from invoices i
join clients c
	using (client_id)
where payment_date is not null