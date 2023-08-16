USE example;

/*
DROP VIEW ProductCustomers;
DROP VIEW VendorLoacations;
DROP VIEW CustomerEMailList;
DROP VIEW OrderItemsExpanded;
*/
-- --------------------
-- 创建视图
-- --------------------
# 1. 简化复杂的联结
CREATE VIEW ProductCustomers AS
SELECT cust_name, cust_contact, prod_id
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id
  AND OrderItems.order_num = Orders.order_num;

SELECT cust_name, cust_contact
FROM ProductCustomers
WHERE prod_id = 'RGAN01';


# 2. 重新格式化检索出的数据
CREATE VIEW VendorLoacations AS
SELECT CONCAT(vend_name, '(', vend_country, ')')
    AS vend_title
FROM Vendors;

SELECT * 
FROM VendorLoacations;


# 3. 过滤不想要的数据
CREATE VIEW CustomerEMailList AS
SELECT cust_id, cust_name, cust_email
FROM Customers
WHERE cust_email IS NOT NULL;

SELECT *
FROM CustomerEMailList;


# 4. 使用视图与计算字段
CREATE VIEW OrderItemsExpanded AS 
SELECT order_num,
       prod_id,
       quantity,
       item_price,
       quantity * item_price AS expanded_price
FROM OrderItems;

SELECT *
FROM OrderItemsExpanded
WHERE order_num = 20008;
