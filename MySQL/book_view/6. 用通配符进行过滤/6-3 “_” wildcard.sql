USE example;


-- --------------------
-- ‘_’ 通配符
-- --------------------
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '__ inch teddy bear';  # 注意是两个‘_’

SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '% inch teddy bear';



# ‘_' 与 ‘%’ 类似，但是 '_' 只能匹配单个字符
