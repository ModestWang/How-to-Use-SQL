USE example;


-- --------------------
-- 访问游标数据
-- --------------------
DECLARE TYPE CustCursor IS REF CURSOR
    RETURN Customers%ROWTYPE;
DECLARE CustRecord Customers%ROWTYPE
BEGIN
    OPEN CustCursor;
    LOOP
    EXIT WHEN CustCursor%NOTFOUND;
    FETCH CustCursor INTO CustRecord;   # 将游标所指行的数据放入 CustRecord 中
    END LOOP;
    CLOSE CustCursor;
END;

DECLARE CustCursor CURSOR FOR SELECT * FROM Customers; 
DECLARE CONTINUE HANDLER FOR NOT FOUND SET @done = 1;
OPEN CustCursor; SET @done = 0; 
REPEAT 
    FETCH CustCursor INTO CustRecord; 
UNTIL @done = 1 END REPEAT;
CLOSE CustCursor;
