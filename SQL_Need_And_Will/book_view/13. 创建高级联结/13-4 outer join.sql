USE example;


-- --------------------
-- 外联结
-- --------------------
# 内联结
# 检索所以顾客和订单
SELECT Customers.cust_id, 
       Orders.order_num
FROM Customers
  INNER JOIN Orders ON Customers.cust_id = Orders.cust_id;

# 外联结
# 检索包括没有订单顾客在内的所有顾客
SELECT Customers.cust_id, 
       Orders.order_num
FROM Customers
  LEFT OUTER JOIN Orders ON Customers.cust_id = Orders.cust_id;
# LEFT 指从 Customers 中选取所有行
# RIGHT 指从 Orders 中选取所有的行

# 外联结
# 类型：左外联结/右外联结
# LEFT/RIGHT OUTER JOIN
# 用来创建外联结的语法在不同的 SQL 实现中可能稍有不同
# MariaDB、MySQL、SQLite 不支持 FULL OUTER JOIN 语法
