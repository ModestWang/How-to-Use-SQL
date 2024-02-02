USE example;


-- --------------------
-- 插入检索出的数据
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
SELECT cust_id,
       cust_name,
       cust_address,
       cust_city,
       cust_state,
       cust_zip,
       cust_country,
       cust_contact,
       cust_email
FROM CustNew;