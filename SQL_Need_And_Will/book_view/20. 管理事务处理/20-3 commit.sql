USE example;


-- --------------------
-- 提交
-- --------------------
START TRANSACTION;
DELETE FROM Orders
WHERE order_num = 12345;
DELETE FROM OrderItems
WHERE order_num =12345;
COMMIT;

SELECT * FROM Orders;
