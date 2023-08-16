USE example;


-- --------------------
-- 按多个列排序
-- --------------------
SELECT prod_id, prod_price, prod_name
FROM Products                           # 先按price排序，再按name排序
ORDER BY prod_price, prod_name;         # 只有在多行具有相同的price时，才会按name排序
