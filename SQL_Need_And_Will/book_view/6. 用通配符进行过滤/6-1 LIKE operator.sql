USE example;


-- --------------------
-- LIKE操作符
-- --------------------
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE 'Fish%';   # 找出以“Fish”开头的数据


# LIKE
# 在搜索子句中使用通配符，必须使用LIKE操作符。
# LIKE指示DMBMS，后跟的搜索模式利用通配符匹配，
# 而不是简单的相等匹配进行比较。

# 通配符使用技巧：
# 1. 不要过度使用通配符，通配符一般耗费更长的时间处理
# 2. 尽量不要把通配符用在搜索模式的开始处
# 3. 仔细注意通配符的位置
