USE example;


-- --------------------
-- 包含或取消重复的行
-- --------------------
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL', 'IN', 'MI')
UNION ALL   # 不取消重复的行
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';


# 使用 WHERE 和 UNION 时，会自动取消重复的行
# 如果要不取消重复的行，则必须使用 UNION ALL
