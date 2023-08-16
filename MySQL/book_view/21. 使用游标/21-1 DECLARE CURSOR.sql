USE example;


-- --------------------
-- 声明游标
-- --------------------
DECLARE CustCursor CURSOR
FOR 
SELECT * FROM Customers
WHERE cust_email IS NULL;

# 使用游标前，必须先声明游标
