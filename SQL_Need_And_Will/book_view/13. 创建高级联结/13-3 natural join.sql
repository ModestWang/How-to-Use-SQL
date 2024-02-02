USE example;


-- --------------------
-- 自然联结
-- --------------------
SELECT C.*,
       O.order_num,
       O.order_date,
       OI.prod_id,
       OI.quantity,
       OI.item_price
FROM Customers  AS C,
     Orders     AS O,
     OrderItems AS OI
WHERE C.cust_id = O.cust_id
  AND OI.order_num = O.order_num
  AND prod_id = 'RGAN01';


# 标准的联结返回所有数据，相同的列甚至多次出现。
# 自然联结排除多次出现，使每一列只返回一次。
