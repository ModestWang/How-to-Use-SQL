USE example;


-- --------------------
-- 自联结
-- --------------------
# 对比
# 1.子查询
SELECT cust_id, cust_name, cust_contact
FROM Customers
WHERE cust_name = (
    SELECT cust_name
    FROM Customers
    WHERE cust_contact = 'Jim Jones'
);

# 2.自联结
SELECT c1.cust_id, c1.cust_name, c1.cust_contact
FROM Customers AS c1, 
     Customers AS c2
WHERE c1.cust_name = c2.cust_name
  AND c2.cust_contact = 'Jim Jones';
# 此查询中需要的两个表实际上是相同的表，因此 Customers 表在 FROM 子句中出现了两次。
# 虽然这是完全合法的，但是对 Customers 的引用具有歧义性，因为 DBMS 不知道引用的是哪个 Customers 表。
# 使用表别名解决上述问题，Customers 第一次出现使用别名 c1，第二次出现使用别名 c2。


# 自联结通常作为外部语句，用来代替从相同表中检索数据的使用子查询语句。
# 虽然最终的结果是相同的，但是通常 DBMS 处理联结远比处理子查询快得多。
# 所以，应当使用多自联结而不是子查询。
