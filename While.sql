-- @/home/sid/Desktop/SQL/plsql/While.sql
set serveroutput on;
DECLARE
	V_NUM Number;
BEGIN
	V_NUM := 1;
	WHILE V_NUM <= 10
	LOOP
		V_NUM := V_NUM + 1;
		DBMS_OUTPUT.PUT_LINE('V_NUM = ' || V_NUM);
	END LOOP;
END;
/