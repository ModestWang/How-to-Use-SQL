USE example;


-- --------------------
-- 对组合查询结果排序
-- --------------------
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL', 'IN', 'MI')
UNION ALL   # 不取消重复的行
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';
ORDER BY cust_name, cust_contact;

# 在用 UNION 组合查询时，只能使用一条 ORDER BY 子句
# 且必须位于最后一条 SELECT 语句之后
