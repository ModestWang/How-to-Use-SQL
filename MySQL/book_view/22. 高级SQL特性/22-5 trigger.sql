USE example;


-- --------------------
-- 触发器
-- --------------------
CREATE TRIGGER cust_state_trigger 
AFTER INSERT
ON Customers 
FOR EACH ROW 
BEGIN
    UPDATE Customers 
    SET customer_state = UPPER(cust_state) 
    WHERE Customers.cust_id = inserted.cust_id; 
END;

# 当触发 INSERT 或 UPDATE 后，将 Customers 中的 cust_state 列转换为大写。 


# 删除触发器
--DROP TRIGGER cust_state_trigger;
