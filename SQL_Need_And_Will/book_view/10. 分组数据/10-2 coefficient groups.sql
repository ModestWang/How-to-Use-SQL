USE example;


-- --------------------
-- 过滤分组
-- --------------------
# HAVING 子句：用于过滤分组
SELECT cust_id, COUNT(*) AS orders
FROM orders
GROUP BY cust_id
HAVING COUNT(*) >= 2;

# WHERE 与 HAVING：
#   WHERE 在数据分组前进行过滤
#   HAVING 在数据分组后进行过滤
# 如果不指定 GROUP BY 子句，二者几乎等同。
#   a
SELECT vend_id, COUNT(*) AS num_prods
FROM Products
WHERE prod_price >= 4
GROUP BY vend_id
HAVING COUNT(*) >= 2;
#   b
SELECT vend_id, COUNT(*) AS num_prods
FROM Products
GROUP BY vend_id
HAVING COUNT(*) >= 2;
