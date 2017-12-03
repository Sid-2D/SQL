-- @/home/sid/Desktop/SQL/plsql/CursorImplicit.sql
set serveroutput on;
DECLARE
	total_rows Number;
BEGIN
	UPDATE EMP SET SALARY = SALARY + 10;
	IF sql%notfound THEN
		dbms_output.put_line('No customers selected.');
	ELSIF sql%found THEN
		total_rows := sql%rowcount;
		dbms_output.put_line(total_rows || ' customers selected.');
	END IF;
	IF sql%isopen THEN
		dbms_output.put_line('Value of %ISOPEN: TRUE');
	ELSE
		dbms_output.put_line('Value of %ISOPEN: FALSE');
	END IF;
END;
/