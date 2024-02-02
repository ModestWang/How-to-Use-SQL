USE example;


-- --------------------
-- ‘%’ 通配符
-- --------------------
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '%bean bag%';


# ‘%’ 表示任何字符出现任意次数
# 注意：WHERE prod_name LIKE '%' 并不会匹配NULL
