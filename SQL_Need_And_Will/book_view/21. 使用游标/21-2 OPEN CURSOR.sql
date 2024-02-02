USE example;


-- --------------------
-- 开启游标
-- --------------------
DECLARE CustCursor CURSOR
FOR 
SELECT * FROM Customers
WHERE cust_email IS NULL;

OPEN CURSOR CustCursor;
