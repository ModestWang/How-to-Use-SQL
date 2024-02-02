USE example;


-- --------------------
-- 指定排序方向
-- --------------------
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price DESC;               # 按price降序排序

SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price DESC, prod_name;    # 先按price降序,再按name升序

# 注：
# DESC是DESCENDING的缩写，降序
# ASC是ASCENDING的缩写，升序（默认）
