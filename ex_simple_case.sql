-- Example simple CASE
DECLARE
  grade CHAR(1);
BEGIN
  grade := 'U';
  
  CASE grade
    WHEN 'A'
    THEN
      DBMS_OUTPUT.PUT_LINE('Excellent');
    WHEN 'B'
    THEN
      DBMS_OUTPUT.PUT_LINE('Good');
    WHEN 'C'
    THEN
      DBMS_OUTPUT.PUT_LINE('Fair');
    ELSE
      DBMS_OUTPUT.PUT_LINE('No such grade');
  END CASE;
  
  -- When not match selector value is found and no 'ELSE' statement, 
  -- it will raise CASE_NOT_FOUND exception.
  BEGIN
    CASE grade
      WHEN 'A'
      THEN
        DBMS_OUTPUT.PUT_LINE('Excellent');
    END CASE;
  EXCEPTION
    WHEN CASE_NOT_FOUND
    THEN
      DBMS_OUTPUT.PUT_LINE('Error [CASE_NOT_FOUND]');
  END;
END;
/
