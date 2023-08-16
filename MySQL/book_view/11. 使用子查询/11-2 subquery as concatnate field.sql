USE example;


-- --------------------
-- 作为计算字段使用子查询
-- --------------------
SELECT  cust_name,
        cust_state,
        (
            SELECT COUNT(*)
            FROM Orders
            WHERE Orders.cust_id = Customers.cust_id) AS Orders     # 完全限定列名
FROM Customers
ORDER BY cust_name;

SELECT  cust_name,
        cust_state,
        (
            SELECT COUNT(*)
            FROM Orders
            WHERE cust_id = cust_id) AS Orders
FROM Customers
ORDER BY cust_name;


