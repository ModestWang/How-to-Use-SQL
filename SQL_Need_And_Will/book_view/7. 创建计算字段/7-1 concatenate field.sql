USE example;


-- --------------------
-- 拼接字段
-- --------------------
SELECT vend_name + '(' + vend_country + ')'
    AS vendor
FROM Vendors
ORDER BY vend_name;     # 失败

SELECT vend_name || '(' || vend_country || ')'
    AS vendor
FROM Vendors
ORDER BY vend_name;     # 失败

SELECT CONCAT(vend_name, '(', vend_country, ')') 
    AS vendor
FROM Vendors
ORDER BY vend_name;     # 成功

# 注意：
# DB2、Oracle、PostgreSQL、SQLite 使用 “||”
# SQL Server 及多数DBMS使用 “+”
# MySQL、MariaDB 使用 CONCAT() 进行拼接字段

