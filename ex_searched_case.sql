-- Example searched CASE
DECLARE
  grade CHAR(1);
BEGIN
  grade := 'U';
  
  CASE
    WHEN grade = 'A'
    THEN
      DBMS_OUTPUT.PUT_LINE('Excellent');
    WHEN grade = 'B'
    THEN
      DBMS_OUTPUT.PUT_LINE('Good');
    WHEN grade = 'C'
    THEN
      DBMS_OUTPUT.PUT_LINE('Fair');
  END CASE;
EXCEPTION
  WHEN CASE_NOT_FOUND
  THEN
    DBMS_OUTPUT.PUT_LINE('No such grade');
END;
/
