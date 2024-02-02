USE example;


-- --------------------
-- ‘[]’ 通配符
-- --------------------
SELECT cust_contact
FROM Customers
WHERE cust_contact LIKE '[JM]%'     # 找出以 J 或 M 开头的联系人
ORDER BY cust_contact;

SELECT cust_contact
FROM Customers
WHERE cust_contact LIKE '[^JM]%'    # 找出以 J 和 M 外开头的联系人
ORDER BY cust_contact;


# '[]' 通常用来指定一个字符集，
# 它必须匹配指定位置（通配符位置）的一个字符。

# 注意：
# 并不是所有的DBMS都支持用来创建集合的[]
# SQL Server支持集合， 
# 但是MySQL，Oracle，DB2，SQLite都不支持。
