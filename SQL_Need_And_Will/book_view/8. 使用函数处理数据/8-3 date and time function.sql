USE example;


-- --------------------
-- 日期和时间处理函数
-- --------------------
SELECT order_num
FROM orders
WHERE YEAR(order_date) = 2020; # 检索2020年的所有订单
