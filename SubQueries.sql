1) Find the maximum CGPA of student and display his
information.
Ans:
select *
from student
where CGPA = (select max(CGPA)from student);

2) Find the information of student who has minimum CGPA.
Ans:
select *
from student
where CGPA <= (select(min(CGPA))
from student);

3)Find the information of students who got CGPA more than
β3.70β.
Ans:
SELECT * FROM student
WHERE s_ID IN (SELECT s_ID FROM student WHERE
CGPA > 3.70);

4)Display information of the students who paid β3000βfor
Course
Ans: select *from fees
where fee_id = ANY (select fee_id from fees where
fee_amount = 3000);

5)Find the information of teachers who lives in chandgaon
Chattogram.
Ans:
select * from teacher
where T_address = 'chandgaon,chattogram';
