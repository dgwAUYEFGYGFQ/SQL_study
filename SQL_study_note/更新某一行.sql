update invoices
set payment_total = default , payment_date = null
where client_id = 3;
select * from invoices