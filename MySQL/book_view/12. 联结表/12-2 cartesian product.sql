USE example;


-- --------------------
-- WHERE 子句点的重要性
-- 以及笛卡尔积
-- --------------------
SELECT vend_name, prod_name, prod_price
FROM Vendors, Products;


# 笛卡尔积（cartesian product）
#   由没有联结的表关系返回的结果为笛卡尔积
#   检索出的行的数目将是第一个表中的行数乘以第二个表中的行数
# 返沪笛卡尔积的联结，也称叉联结（cross join）

