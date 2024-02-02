USE example;


-- --------------------
-- 使用表别名
-- --------------------
# 列别名
SELECT CONCAT(vend_name, '(', vend_country, ')')
    AS vend_title
FROM Vendors
ORDER BY vend_name;

# 表别名
SELECT cust_name, cust_contact
FROM Customers AS C, Orders AS O, OrderItems AS OI
WHERE C.cust_id = O.cust_id
  AND OI.order_num = O.order_num
  AND prod_id = 'RGAN01';


# 注意：
#   1.Oracle 不支持 AS 关键字。
# 要在 Oracle 中使用别名，简单地指定列名即可，
# 应该是 Customers C，而不是 Customers AS C。
#   2.表别名只在查询执行中使用。与列别名不同，表别名不返回到客户端。
