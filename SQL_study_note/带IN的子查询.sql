SELECT client_id
FROM clients
where client_id not in(select client_id from invoices)