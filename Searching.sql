1) Find student information about ‘Iftekhar Alam’.

Ans:
select*
from STUDENT
where S_name = 'Iftekhar Alam';

2) Find the information of students who are studying EEE.
Ans:
select*
from STUDENT
where S_dept = 'EEE';

3) Find the highest CGPA from the student table;
Ans:
Select max (CGPA) from student;

4) Courses which contain highest credit.
Ans:
select * from course
where c_credit= 3;

5) List of all unique courses available.
Ans:
select distinct C_name
from Course;

6) Sort all the results of students by CGPA in ascending order.
Ans:
select * from Student
order by CGPA;

7) Find teachers information whose name start at the beginning
with ‘A’.
Ans:
Select * from teacher
where (t_name)like 'A%';

8)Information of the students who are rejected by their
advisors .
Ans:
Select * from FEEDBACK
where fd_report='Rejected';

9)Select the amount of fees of individual courses.
Ans:
select Fee_id, Fee_amount, C_id
from fees;

10)Select all advisors information from advisor table.
Ans:
select A_id, A_name, A_email, A_contact
from Advisor;