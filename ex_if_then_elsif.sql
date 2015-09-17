-- Example IF THEN ELSIF
DECLARE
  PROCEDURE p(sales NUMBER)
  IS
    bonus NUMBER := 0;
  BEGIN
    IF sales > 50000
    THEN
      bonus := 1500;
    ELSIF sales > 35000
    THEN
      bonus := 500;
    ELSE
      bonus := 100;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Sales = ' || sales || ', bonus = ' || bonus || '.');
  END p;
BEGIN
  p(55000);
  p(45000);
  p(30000);
END;
/
