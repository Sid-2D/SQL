-- @/home/sid/Desktop/SQL/plsql/Trigger.sql
-- UPDATE emp SET salary = salary + 500 WHERE emp_no = 2;
set serveroutput on;
CREATE OR REPLACE TRIGGER displaySalaryChanges
  BEFORE UPDATE ON emp REFERENCING OLD AS o NEW AS n
  FOR EACH ROW
DECLARE
	salDiff Number;
BEGIN
	salDiff := :n.salary - :o.salary;
	dbms_output.put_line('Old salary: ' || :o.salary);
	dbms_output.put_line('New salary: ' || :n.salary);
	dbms_output.put_line('Salary difference: ' || salDiff);
END;
/