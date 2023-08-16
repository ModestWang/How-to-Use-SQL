USE example;


-- --------------------
-- 删除视图
-- --------------------
CREATE VIEW ProductCustomers AS
SELECT cust_name, cust_contact, prod_id
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id
  AND OrderItems.order_num = Orders.order_num;

# 删除视图
DROP VIEW ProductCustomers;

# 覆盖或更新视图，必须先删除它，然后再重新创建。
