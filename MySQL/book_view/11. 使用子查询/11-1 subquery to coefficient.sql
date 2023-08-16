USE example;


-- --------------------
-- 利用子查询进行过滤
-- --------------------
# 连续查询两次
SELECT order_num
FROM OrderItems
WHERE prod_id = 'RGAN01';

SELECT cust_id
FROM Orders
WHERE order_num IN (20007, 20008);

# 使用子查询（类似于嵌套）
SELECT cust_id
FROM Orders
WHERE order_num IN (                # 先执行括号里的
    SELECT order_num
    FROM OrderItems
    WHERE prod_id = 'RGAN01'    
);

SELECT cust_name, cust_contact
FROM Customers
WHERE cust_id IN (
    SELECT cust_id
    FROM Orders
    WHERE order_num IN (
        SELECT order_num 
        FROM OrderItems
        WHERE prod_id = 'RGAN01'
    )
);

# 子查询总是从内向外处理
# 作为子查询的 SELECT 语句只能查询单个列
# 企图检索多个列将返回错误
# 同时子查询并不总是执行这类数据检索的最有效方法
