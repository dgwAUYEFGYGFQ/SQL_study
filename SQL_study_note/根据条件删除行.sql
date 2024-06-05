delete from invoices
where client_id = (
select client_id 
from clients
where name = 'myworks')