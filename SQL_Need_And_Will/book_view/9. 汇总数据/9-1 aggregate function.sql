USE example;


-- --------------------
-- 聚集函数
-- --------------------

# 1.AVG()函数：返回特定列/行的平均值
# 一般只能用于单个列
# 忽略列值为 NULL 的行
SELECT AVG(prod_price) AS avg_price
FROM Products;

# 2.COUNT()函数：返回表中符合特定条件的行数
#   a. COUNT(*):对表中的行进行计数，不忽略 NULL
SELECT COUNT(*) AS num_cust
FROM Customers;
#   b. COUNT(column):对特定列中具有值的行进行计数，忽略 NULL
SELECT COUNT(cust_email) AS num_cust
FROM Customers;

# 3.MAX()函数：返回指定列的最大值
SELECT MAX(prod_price) AS max_price
FROM Products;

# 4.MIN()函数：返回指定列的最小值
SELECT MIN(prod_price) AS min_price
FROM Products;

# 5.SUM()函数：返回指定列的和(总计)
#   a. 目标求和
SELECT SUM(quantity) AS item_ordered
FROM OrderItems
WHERE order_num = 20005;
#   b. 合计计算值
SELECT SUM(item_price * quantity) AS total_price
FROM OrderItems
WHERE order_num = 20005;
