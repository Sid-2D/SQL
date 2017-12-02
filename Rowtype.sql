-- @/home/sid/Desktop/SQL/plsql/Rowtype.sql
set serveroutput on;
DECLARE
	ROW EMP%ROWTYPE;
BEGIN
	SELECT * INTO ROW FROM EMP WHERE EMP_NO = 1;
	DBMS_OUTPUT.PUT_LINE('Employee no: ' || ROW.EMP_NAME);
END;
/