SELECT * 
FROM sql_store.products p
where not exists(
select product_id
from orders 
join order_items 
using(order_id)
where product_id = p.product_id)

-- 两个表join成的一张表怎么去引用里面的字段还没学呢
-- exists比in好用是因为exists是直接把东西运行出来搬到终点，但是in就是把很多东西搬到了in后面的括号里，你得再in一次才能到达终点
-- exists相当于需要一个判断条件，是ture就返回，false就不返回。而all相当于把符合条件的东西先全部放在子查询里！