USE example;


-- --------------------
-- 更新数据
-- --------------------
UPDATE Customers
SET cust_email = 'kim@thetoystore.com'
WHERE cust_id = 1000000005;
# UPDATE 指定要更新的表
# SET 将新值赋给被更新的列
# WHERE 过滤到要更新的行


SELECT cust_email
FROM Customers
WHERE cust_id = 1000000005;