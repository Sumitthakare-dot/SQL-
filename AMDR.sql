create database t2;
use t2;

CREATE TABLE student(
    rollno INT,
    name VARCHAR(50),
    marks DECIMAL(5,2),  
    grade VARCHAR(1)
);
insert into student (rollno,name,marks,grade)
values
(1, 'Arjun', 92.78, 'A'),
(2, 'pankaj', 88.90, 'B'),
(1, 'Arjun', 92.78, 'A'),
(2, 'ankaj', 88.90, 'B'),
(1, 'Arjun', 92.78, 'A'),
(2, 'Pankaj', 88.90, 'B'),
(3, 'Priya', 95.50, 'A'),
(4, 'Rahul', 76.25, 'C'),
(5, 'Neha', 82.60, 'B'),
(6, 'Suresh', 68.40, 'D');



select * from student;


alter table student add column result char(10);
alter table student modify column result char(10);
desc student;

alter table student drop result;

