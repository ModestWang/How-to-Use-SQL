USE example;


-- --------------------
-- 删除数据
-- --------------------
DELETE FROM Customers   ## 在某些 DBMS 中，FROM 关键字是可选的，但最后加上，以保证可移植性。
WHERE cust_id = 1000000006;


# 注意：
#   1. DELETE 不需要列名或通配符。
#   2. DELETE 删除整行，而不是整列。
#   3. 要删除指定的列， 请使用 UPDATE 语句。
#   4. DELETE 语句从表中删除行，但 DELETE 不删除表本身.
#   5. 如果要删除所有行，不要使用 DELETE。可以使用 TRUNCATE TABLE 语句，速度更快。

# 应当十分小心地使用 UPDATE 和 DELETE，以防止数据意外地丢失。