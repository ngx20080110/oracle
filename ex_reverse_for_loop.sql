-- Example reverse FOR loop
DECLARE
  v_idx NUMBER := 0;
BEGIN
  FOR i IN REVERSE 1..5
  LOOP
    v_idx := v_idx + i;
    DBMS_OUTPUT.PUT_LINE(v_idx);
  END LOOP;
END;
/
