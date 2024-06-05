update invoices
set payment_total = 2.98 , payment_date = due_date
where client_id in ( 2, 3 );
