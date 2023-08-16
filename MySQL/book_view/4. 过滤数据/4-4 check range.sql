USE example;


-- --------------------
-- 范围值检查
-- --------------------
SELECT prod_name, prod_price
FROM Products
WHERE prod_price BETWEEN 5 AND 10;
