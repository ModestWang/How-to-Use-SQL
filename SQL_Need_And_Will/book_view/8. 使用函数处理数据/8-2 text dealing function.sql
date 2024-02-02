USE example;


-- --------------------
-- 文本处理函数
-- --------------------
# UPPER()
SELECT vend_name, 
UPPER(vend_name) AS vend_name_upcase    # 将字符串转换为大写
FROM Vendors
ORDER BY vend_name;

# SOUNDEX()
SELECT cust_name, cust_contact
FROM Customers
WHERE SOUNDEX(cust_contact) = SOUNDEX('Michael Green');

/*
----------------------------------------
    函数                    说明
----------------------------------------
    LEFT()          返回字符串左边的字符
    LENTH()         返回字符串长度
    LOWER()         将字符串转换为小写
    LTRIM()         去掉字符串左边的空格
    RIGHT()         返回字符串右边的字符
    RTRIM()         去掉字符串右边的空格
    SUBSTRING()     提取字符串的组成部分
    SOUNDEX()       返回字符串的soundex值
    UPPER()         将字符串转换为大写
----------------------------------------
*/
