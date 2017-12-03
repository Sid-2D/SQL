-- @/home/sid/Desktop/SQL/plsql/CursorExplicit.sql
set serveroutput on;
DECLARE
	empNo emp.emp_no%type;
	empName emp.emp_name%type;
	empSalary emp.salary%type;
	CURSOR c_emp(num Number) IS SELECT emp_no, emp_name, salary FROM emp WHERE emp_no = num; 
BEGIN
	OPEN c_emp(1);
	LOOP
		FETCH c_emp INTO empNo, empName, empSalary;
		EXIT WHEN c_emp%notfound;
		dbms_output.put_line('No.: ' || empNo || ' Name: ' 	|| empName || ' Salary: ' || empSalary); 
	END LOOP;
	IF c_emp%isopen THEN
		dbms_output.put_line('Cursor is open.');
	ELSE
		dbms_output.put_line('Cursor is closed.');
	END IF;
	CLOSE c_emp;
	IF c_emp%isopen THEN
		dbms_output.put_line('Cursor is open.');
	ELSE
		dbms_output.put_line('Cursor is closed.');
	END IF;
END;
/