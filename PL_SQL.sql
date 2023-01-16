1)Display name department and contact of the student whose id
is C211007
Ans:
DECLARE
sname student.s_name%type;
sdept student.s_dept%type;
scontact student.s_contact%type;
BEGIN
select s_NAME , s_dept , s_contact into sname
, sdept , scontact
from student
where s_id = 'C211007';
dbms_output.put_line('student information : ');
dbms_output.put_line('student Name : ' || sname);
dbms_output.put_line('student department : ' || sdept);
dbms_output.put_line('student Mobile : ' || scontact);
END;

2)Display students information who has the lowest CGPA
Ans:
DECLARE
sname student.s_name%type;
sdept student.s_dept%type;
scontact student.s_contact%type;
Grade student.CGPA%type;
BEGIN
select s_NAME , s_dept , s_contact,CGPA into sname
, sdept , scontact,Grade
from student
where CGPA < 3.20;
dbms_output.put_line('student information : ');
dbms_output.put_line('student Name : ' || sname);
dbms_output.put_line('student department : ' || sdept);
dbms_output.put_line('student Mobile : ' || scontact);
dbms_output.put_line('student CGPA : ' || Grade);
END;

3)Display all the information of the course table.
Ans:
DECLARE
cid course.c_id%type;
cname course.c_name%type;
ccredit course.c_credit%type;
CURSOR dia_cur IS
select c_id,c_name,c_credit
from course;
BEGIN
OPEN dia_cur;
LOOP
FETCH dia_cur INTO cid,cname,ccredit;
EXIT WHEN dia_cur%notfound;
dbms_output.put_line('course id: '||cid||' '||'Name: '||cname||' '||' credit:'||ccredit);
END LOOP;
CLOSE dia_cur;
END;

4)Display the information of Advisor that is defined by user.
Ans:
DECLARE
aid advisor.a_id%type;
aname advisor.a_name%type;
aemail advisor.a_email%type;
acontact advisor.a_contact%type;
BEGIN
select a_id,a_name,a_email,a_contact INTO
aid,aname,aemail,acontact
from advisor
where a_id = (:a_iD);
dbms_output.put_line('advisor ID: '||aid||' '||'advisor name: '||aname||' '||'advisor
email: '||aemail||'
'||'advisor contact: '||acontact);
END;

5)Display the information of Teacher by taking input from user.
Ans:
DECLARE
tid teacher.t_id%type;
tname teacher.t_name%type;



temail teacher.t_email%type;
taddress teacher.t_address%type;
BEGIN
select t_id,t_name,t_email,t_address INTO
tid,tname,temail,taddress
from teacher
where t_id = (:t_iD);
dbms_output.put_line('Teacher ID: '||tid);
dbms_output.put_line('Teacher name: '||Tname);
dbms_output.put_line('Teacher email: '||Temail);
dbms_output.put_line('Teacher address: '||taddress);
END;