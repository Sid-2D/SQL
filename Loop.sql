-- @/home/sid/Desktop/SQL/plsql/Loop.sql
set serveroutput on;
DECLARE
	V_NUM Number;
BEGIN
	V_NUM := 100;
	LOOP
		V_NUM := V_NUM + 25;
	EXIT WHEN V_NUM = 250;
	DBMS_OUTPUT.PUT_LINE('V_NUM = ' || V_NUM || ':');
	END LOOP;
END;
/