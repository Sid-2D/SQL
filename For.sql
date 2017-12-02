-- @/home/sid/Desktop/SQL/plsql/For.sql
set serveroutput on;
DECLARE
BEGIN
	FOR I IN 1..10
	LOOP
		DBMS_OUTPUT.PUT_LINE('I = ' || I);
	END LOOP;
	FOR I IN REVERSE 1..10
	LOOP
		DBMS_OUTPUT.PUT_LINE('I = ' || I);
	END LOOP;
END;
/