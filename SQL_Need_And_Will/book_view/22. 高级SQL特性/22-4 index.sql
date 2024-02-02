USE example;


-- --------------------
-- 索引
-- --------------------
CREATE INDEX prod_name_index
ON Products(prod_name);


# 索引的效率随数据的增加而变化，
# 因此最好定期检查索引，并根据需要进行调整。
