USE example;


-- --------------------
-- 主键
-- --------------------
# 1. 表创建时定义主键 PRIMARY KEY
CREATE TABLE Vendors
(
  vend_id      char(10) NOT NULL PRIMARY KEY,
  vend_name    char(50) NOT NULL ,
  vend_address char(50) NULL ,
  vend_city    char(50) NULL ,
  vend_state   char(5)  NULL ,
  vend_zip     char(10) NULL ,
  vend_country char(50) NULL 
);

# 2. 使用 CONSTRAINT
ALTER TABLE Vendors
ADD CONSTRAINT PRIMARY KEY(vend_id);