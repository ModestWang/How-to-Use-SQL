USE example;


-- --------------------
-- IN操作符
-- --------------------
SELECT prod_name, prod_price
FROM Products
WHERE vend_id IN('DLL01', 'BRS01')
ORDER BY prod_name;

SELECT prod_name, prod_price
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01'
ORDER BY prod_name;

# IN操作符的优点：
# 1. 在有很多合法选项时，IN操作符的语法更清楚，更直观。
# 2. 在与其他AND和OR操作符组合使用IN时，求值顺序更容易管理。
# 3. IN操作符一般比一组OR操作符执行得更快。
# 4. IN的最大优点是可以包含其他SELECT语句，能够更动态地建立WHERE子句。
