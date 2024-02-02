USE example;


-- --------------------
-- 组合聚集函数
-- --------------------
SELECT COUNT(*) AS num_items,
       MIN(prod_price) AS min_price,
       MAX(prod_price) AS max_price,
       AVG(prod_price) AS avg_price
FROM Products;
