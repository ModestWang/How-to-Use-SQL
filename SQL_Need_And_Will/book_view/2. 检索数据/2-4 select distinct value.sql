USE example;


-- --------------------
-- 检索不同的值
-- --------------------
SELECT vend_id
FROM Products;  # 有重复

SELECT DISTINCT vend_id
FROM Products;  # 无重复
