USE example;


-- --------------------
-- 按列的位置排序
-- --------------------
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY 2, 3;          # 先按第2列排序，再按第3列排序
