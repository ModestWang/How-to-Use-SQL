USE example;


-- --------------------
-- 创建表
-- --------------------
CREATE TABLE Products
(
    prod_id     CHAR(10)        NOT NULL,
    vend_id     CHAR(10)        NOT NULL,
    prod_name   CHAR(254)       NOT NULL,
    prod_price  DECIMAL(8, 2)   NOT NULL,
    prod_desc   VARCHAR(1000)   NULL      
);


# 在创建新表时，指定的表名必须不存在，否则会出错。


-- NULL --
# 每个表列要么是 NULL 列，要么是 NOT NULL 列，这种状态在创建时由表的定义规定。
# 大部分 DBMS 中 NULL 为默认值。即不指定 NOT NULL 时，认为指定的就是 NULL。
# 注意 NULL 值是没有值，不要与空字符串 '' 弄混。


-- DEFAULT --
# SQL 允许指定默认值，在插入行时如果不给出值，DBMS 将自动采用默认值。
# 默认值在 CREATE TABLE 语句的列定义中用关键字 DEFAULT 指定。
CREATE TABLE OrderItems
(
    order_num   INTEGER         NOT NULL,
    order_item  INTEGER         NOT NULL,
    prod_id     CHAR(10)        NOT NULL,
    quantity    INTEGER         NOT NULL    DEFAULT 1,
    item_price  DECIMAL(8, 2)   NOT NULL
);

# tips：数据库开发成员喜欢使用 DEFAULT 值，而不是 NULL。
