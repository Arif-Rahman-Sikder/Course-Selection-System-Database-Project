1) Display student id by the order of advisor id
Ans:
select t_id, s_id from Student
natural join Teacher
order by t_id;

2) Display all the ‘Rejected’ feedback of the students from
advisor along with their id due to low CGPA.
Ans:
select a_id, s_id, s_name, CGPA, Fd_report
from student natural join feedback
where fd_report = ‘Rejected’;

3) Display all the ‘Accepted’ feedback of the students from
advisor along with their information due to moderate
CGPA.
Ans:
select a_id, s_id, s_name, CGPA, Fd_report
from student natural join feedback
where fd_report = ‘Accepted’;

4) Display all the fees for the courses with student
information.
Ans:
select s_id, fee_id, fee_amount, c_id, c_credit
from fees natural join course ;

5) Display all the student id and name with their feedback
using inner join
Ans:
select student. s_id, s_name , Fd_report
from student
INNER JOIN feedback
ON student. s_id=feedback. s_id;