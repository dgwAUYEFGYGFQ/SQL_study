SELECT * 
FROM sql_invoicing.invoices
where client_id = any
(select client_id
from invoices
group by client_id
having count(*) > 2)

-- 一定要记得只能group by selcet过的东西
-- count（*）就是count所有产出列表的group by计数 
-- any就是把any的东西但凡符合条件的都选出来 