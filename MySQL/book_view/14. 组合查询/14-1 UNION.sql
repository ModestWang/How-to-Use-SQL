USE example;


-- --------------------
-- 使用 UNOIN
-- --------------------
# 创建 UNION 涉及编写多条 SELECT 语句
# 首先来看单条语句
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL', 'IN', 'MI');

SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

# 使用 UNION 组合这两条语句
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL', 'IN', 'MI')
UNION   # UNION 关键字
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

# 使用 WHERE 处理这两句
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL', 'IN', 'MI')
      OR cust_name = 'Fum4All';

# 在简单的例子中，使用 UNION 可能比使用 WHERE 子句更为复杂。
# 但对于较复杂的过滤条件，或者从多个表中检索数据的情形，使用 UNION 可能会使处理更简单。


# UNION 规则：
# 1. UNION 必须由两条或两条以上的 SELECT 语句组成，语句之间用关键字 UNION 分隔。
# 2. UNION 中的每个查询必须包含相同的列、表达式或聚集函数
# 3. 列数据类型必须兼容：类型不必完全相同，但是必须是 DBMS 可以隐含转换的类型
# 4. UNION 的列名：如果第一条语句是 SELECT prod_name，第二条语句是 SELECT prodname，
#    那么查询结果返回的字将是第一条语句对应的名字，即 prod_name。 