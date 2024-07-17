SELECT * 
FROM sql_store.orders
where year(order_date) >= (select year(now()));

SELECT * 
FROM sql_store.orders
where year(order_date) >= (select extract(year from now()));

-- 区别
-- 兼容性：
-- YEAR() 是 MySQL 和 MariaDB 中的专有函数。
-- EXTRACT() 是 SQL 标准函数，支持更广泛的 DBMS，如 PostgreSQL、Oracle 和 MySQL 等。
-- 通用性：
-- EXTRACT() 更通用，因为它允许提取日期的任何部分（如年、月、日、小时等），而不仅仅是年份。
-- YEAR() 仅用于提取年份。