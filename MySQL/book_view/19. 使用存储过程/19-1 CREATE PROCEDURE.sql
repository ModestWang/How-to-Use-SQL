USE example;


-- --------------------
-- 创建存储过程
-- --------------------
CREATE PROCEDURE MailingListCount( 
    OUT ListCount INTEGER 
    -- IN       传递值给存储过程
    -- OUT      从存储过程返回值
    -- INOUT    既传递值给存储过程，又从存储过程返回值
) 
BEGIN 
    DECLARE v_rows INTEGER; 
    SELECT COUNT(*) INTO v_rows 
    FROM Customers 
    WHERE cust_email IS NOT NULL; 
    SET ListCount = v_rows; 
END;

SET @ReturnValue = 0;   # 局部变量以 @ 起头。 
CALL MailingListCount(@ReturnValue); 
SELECT @ReturnValue;