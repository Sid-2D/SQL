-- INSERT INTO EMP(EMP_NO, EMP_NAME, SALARY, DEPT_NO) VALUES(4, 'ADMIN', 2341, 40);
-- @/home/sid/Desktop/SQL/plsql/HelloPlSql.sql
set serveroutput on
DECLARE 
	Num_1 Number := 1;
	Num_2 Number := 1;
BEGIN
	SELECT EMP_NO, DEPT_NO INTO Num_1, Num_2 FROM EMP WHERE SALARY=1234;
	DBMS_OUTPUT.PUT_LINE('THE EMPLOYEE No. IS:' || Num_1 || ' THE DEPARTMENT No. IS:' || Num_2);
END;
/