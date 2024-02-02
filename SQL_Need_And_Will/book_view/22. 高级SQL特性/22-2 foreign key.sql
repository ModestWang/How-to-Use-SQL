USE example;


-- --------------------
-- 外键
-- --------------------
# 1. 表创建时定义外键 REFERENCES
CREATE TABLE Orders
(
  order_num  int      NOT NULL PRIMARY KEY,
  order_date datetime NOT NULL ,
  cust_id    char(10) NOT NULL REFERENCES Customers(cust_id)
);

# 2. 使用 CONSTRAINT
ALTER TABLE Orders
ADD CONSTRAINT
FOREIGN KEY(cust_id) REFERENCES Customers(cust_id);


# tips：外键有助于防止意外删除。
