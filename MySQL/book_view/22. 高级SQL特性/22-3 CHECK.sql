USE example;


-- --------------------
-- 检查约束
-- --------------------
CREATE TABLE OrderItems
(
  order_num  int          NOT NULL ,
  order_item int          NOT NULL ,
  prod_id    char(10)     NOT NULL ,
  quantity   int          NOT NULL CHECK(quantity > 0),
  item_price decimal(8,2) NOT NULL 
);

# 以下这句 MySQL并不能运行（MySQL 不支持 [] 通配符）
--ADD CONSTRAINT CHECK(gender LIKE '[MF]');
