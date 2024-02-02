USE example;


-- --------------------
-- 插入完整的行
-- --------------------
INSERT INTO Customers(  # 在某些 DBMS 中，INTO 关键字是可选的，但最后加上，以保证可移植性。
    cust_id,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip,
    cust_country,
    cust_contact,
    cust_email
)
VALUES(
    1000000006,
    'Toy Land',
    '123 Any Street',
    'New York',
    'NY',
    '11111',
    'USA',
    NULL,
    NULL
);


-- --------------------
-- 插入部分行
-- --------------------
INSERT INTO Customers(
    cust_id,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip,
    cust_country
)
VALUES(
    1000000006,
    'Toy Land',
    '123 Any Street',
    'New York',
    'NY',
    '11111',
    'USA'
);
# 缺省列：
#   1.该列定义为允许 NULL 值（无值或空值）
#   2.在表定义中给出默认值。这表示如果不给出值，将使用默认值


# 在表名后的括号里明确给出列名
# 在插入行时，DBMS 将用 VALUES 列表中相应值填入列表中对应项。
# 其优点是，即使表的结构改变，这条 INSERT 语句任然能正常工作。

# 注意：
# 同一条记录不能插入两次。
