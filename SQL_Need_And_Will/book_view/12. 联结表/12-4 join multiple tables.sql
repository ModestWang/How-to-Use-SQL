USE example;


-- --------------------
-- 联结多个表
-- --------------------
SELECT prod_name, vend_name, prod_price, quantity
FROM OrderItems, Products, Vendors
WHERE Products.vend_id = Vendors.vend_id
  AND OrderItems.prod_id = Products.prod_id
  AND order_num = 20007;


# 注意：不要联结不必要的表。联结的表越多，性能下降得越厉害。

# 对比
# 1. 子查询
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

# 2. 联结
SELECT cust_name, cust_contact
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id
  AND OrderItems.order_num = Orders.order_num
  AND prod_id = 'RGAN01';
