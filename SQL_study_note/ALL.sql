SELECT invoice_total
FROM sql_invoicing.invoices
where invoice_total > all 
	(select invoice_total
    from invoices
    where client_id = 3)

-- all把一列查询变成了一个一个的单个数，就可以拿来比较了！