USE example;


-- --------------------
-- 创建联结
-- --------------------
SELECT vend_name, 
       prod_name, 
       prod_price
FROM Vendors, 
     Products
WHERE Vendors.vend_id = Products.vend_id;
