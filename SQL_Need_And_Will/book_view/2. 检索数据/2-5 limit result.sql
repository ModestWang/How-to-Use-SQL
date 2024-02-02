USE example;


-- --------------------
-- 限制结果
-- --------------------
SELECT prod_name
FROM Products;      # 返回所有行数据

SELECT prod_name
FROM Products
LIMIT 5;            # 返回前 5 行数据

SELECT prod_name
FROM Products
LIMIT 5 OFFSET 4;   # 返回第 4 行起的 5 行数据
/* 或简化为：
SELECT prod_name
FROM Products
LIMIT 4, 5;         # 注意逗号前的对应“OFFSET”，后面的对应“LIMIT”
*/

# 注：第一个被检索的是第 0 行，而不是第 1 行。
