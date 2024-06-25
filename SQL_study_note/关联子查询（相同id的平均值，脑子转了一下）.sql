SELECT * 
FROM sql_invoicing.invoices i
where invoice_total > (
select avg(invoice_total)
from invoices
where client_id = i.client_id)

-- 这个avg里用where其实是为了算where里的这个client_id相同的数组的平均值，为什么可以算呢，因为我们用原来这张表里的client_id去找i表里的client_id时，每行id都能在另一个表里找到和它相同的伙伴，并求出对应的平均值用于作比较