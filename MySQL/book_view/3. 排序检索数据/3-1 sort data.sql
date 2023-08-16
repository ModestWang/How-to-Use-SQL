USE example;


-- --------------------
-- 排序数据
-- --------------------
SELECT prod_name
FROM Products;      # 未排序

SELECT prod_name
FROM Products
ORDER BY prod_name; # 排序
