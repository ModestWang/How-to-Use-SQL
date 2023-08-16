USE example;


-- --------------------
-- 聚集不同值
-- --------------------

# DISTINCT
#   不能用于 COUNT(*)，但可以用于 COUNT()。
#   用于 MAX() 和 MIN() 时，与未使用时的结果相同。
SELECT AVG(DISTINCT prod_price) AS avg_price
FROM Products
WHERE vend_id = 'DLL01';
