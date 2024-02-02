USE example;


-- --------------------
-- NOT操作符
-- --------------------
SELECT prod_name
FROM Products
WHERE NOT vend_id = 'DLL01'
ORDER BY prod_name;

# 也可以使用 <> 操作符来完成
SELECT prod_name
FROM Products
WHERE vend_id <> 'DLL01'
ORDER BY prod_name;
