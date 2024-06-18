SELECT pm.name , 
sum(amount) as total
FROM sql_invoicing.payments p 
join payment_methods pm
on p.payment_method = pm.payment_method_id
group by pm.name with rollup

-- 用rollup的时候一定要注意：
-- 1.只能针对sum来rollup； 2.只能rollup表的本名，不能rollup别名；3.只有mysql里有rollup别的数据库系统里没有这个语句；
-- 用sum的时候要注意写在select后面from前面
-- 用group by的时候要注意只能group byselect过的东西