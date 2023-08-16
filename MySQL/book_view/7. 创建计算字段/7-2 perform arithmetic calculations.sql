USE example;


-- --------------------
-- 执行算术计算
-- --------------------
SELECT  prod_id, quantity, 
        item_price,
        quantity*item_price AS expaned_price
FROM OrderItems
WHERE order_num = 20008;


# 可以使用 SELECT 测试计算
