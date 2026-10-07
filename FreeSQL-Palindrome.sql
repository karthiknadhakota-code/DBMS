DECLARE
    n INT;
    t INT;
    d INT;
    rev INT;
BEGIN
    n := 727;
    t := n;
    rev := 0;

    WHILE t>0 LOOP
        d := MOD(t,10);
        rev := rev*10+d;
        t := TRUNC(t/10);
    END LOOP;

    IF rev=n THEN
        DBMS_OUTPUT.PUT_LINE('Palindrome');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not Palindrome');
    END IF;
END;
