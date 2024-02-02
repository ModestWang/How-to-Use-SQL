USE example;


-- --------------------
-- 不匹配检查
-- --------------------
SELECT vend_id, prod_name
FROM Products
WHERE vend_id != "DLL01";   # 字符串用单引号或双引号都行
# WHERE vend_id <> 'DLL01';
