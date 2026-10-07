DECLARE
    n INT;
BEGIN
    n := &n;

    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(n||' x '||i||' = '||n*i);
    END LOOP;
END;