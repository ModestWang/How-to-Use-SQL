USE example;


-- --------------------
-- 求值顺序
-- --------------------
SELECT prod_price, prod_name
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01' AND prod_price >= 10;

SELECT prod_price, prod_name
FROM Products
WHERE (vend_id = 'DLL01' OR vend_id = 'BRS01') AND prod_price >= 10;

# 先执行 AND，再执行 OR。
# 可加上括号，防止操作符优先级导致的错误。
