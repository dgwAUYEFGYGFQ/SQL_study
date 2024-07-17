SELECT 
	client_id ,
    name ,
    sum(invoice_total) as total_sales ,
    (select avg(invoice_total) from invoices)as average ,
    sum(invoice_total) - (select average)
FROM invoices
right join clients
using(client_id)
group by client_id;


SELECT 
    clients.client_id,
    clients.name,
    invoice_summary.total_invoice_amount,
    (select AVG(invoice_total) from invoices )AS average_invoice_amount ,
    total_invoice_amount - (select average_invoice_amount)
FROM 
    clients
LEFT JOIN (
    SELECT 
        client_id,
        SUM(invoice_total) AS total_invoice_amount
    FROM 
        invoices
    GROUP BY 
        client_id
) AS invoice_summary
ON 
    clients.client_id = invoice_summary.client_id;
    
select
		client_id,
        name,
        (select sum(invoice_total) from invoices where client_id = c.client_id) as total_sales,
        (select avg(invoice_total) from invoices) as average,
        (select total_sales - average) as difference
from clients c ;

-- 第三种方法显然更加简洁！这是为什么呢？因为他直接在子查询里去把该查的东西查出来了，就不用把表join来join去的了。而且他没有用group by，这个时候用group by会让查询变得复杂，就像第一种和第二种解法一样，为什么会变得复杂呢，
-- 因为group by用了就要上面select一个sum，下面还得加一个group by，多麻烦啊，还是这样直接并到自查询里一个括号查完完事来的简洁！！！
