SELECT first_name
FROM sql_hr.employees
where salary > (select avg(salary) from employees)

-- 这个时候为什么不能直接吧avg（salary）放在第一个select上面呢？因为avg（x）是一个数，而first_name是一列数，这样表根本就对不上！所以我们要把avg（x）放在子查询里，这样就是用每一个salary和一个值（即avg（x））去做对比。
-- 用sum（x）的时候必须用group by道理同上。