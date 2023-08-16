USE example;


-- --------------------
-- OR操作符
-- --------------------
SELECT prod_name, prod_price
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01'
ORDER BY prod_price;
