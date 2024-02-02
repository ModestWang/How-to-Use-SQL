USE example;


-- --------------------
-- 内联结
-- --------------------
SELECT vend_name, prod_name, prod_price
FROM Vendors
  INNER JOIN Products ON Vendors.vend_id = Products.vend_id;


# 使用 INNER JOIN ... ON 时，联结条件用特定的 ON 子句而不是 WHERE 子句给出。
# 传递给 ON 的实际条件于传递给 WHERE 的相同。（与12-1对比）

# ANSI SQL 规范首选 INNER JOIN 语法，之前使用的是简单的等值语法。
# 而 SQL 语言纯正论者是用鄙视的眼光看待简单语法的。
# 也就是说，DBMS 的确支持简单格式和标准格式，具体使用要看用哪个更顺手。
