USE example;


-- --------------------
-- 更新表
-- --------------------
# 注意：
#   不同的 DBMS 更新表的规则有所不同。
#   所有 DBMS 都允许给现有的表增加列
#   不过对所增加列的数据类型（以及 NULL 和 DEFAULT 的使用）有所限制。

ALTER TABLE Vendors
ADD vend_phone CHAR(20);

# 这一句并非对所有 DBMS 都生效（MySQL中可用）
ALTER TABLE Vendors
DROP COLUMN vend_phone;


# tips：使用 ALTER TABLE 时要十分小心，应该在改动前做完整的备份（表结构和数据的备份）。

# 复杂的表结构更改一般需要手动删除过程，涉及以下步骤：
#   1. 用新的列布局创建一个新表。
#   2. 使用 INSERT SELECT 语句从旧表复制数据到新表。
#   3. 检验包含所需数据的新表。
#   4. 重命名旧表。
#   5. 用旧表原来的名字重命名新表。
#   6. 根据需要，重新创建触发器、存储过程、索引和外键。