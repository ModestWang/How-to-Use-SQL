USE example;


-- --------------------
-- 创建分组
-- --------------------
# GROUP BY子句

SELECT vend_id, COUNT(*) AS num_prods
FROM Products
GROUP BY vend_id;

