--creating a new database
create database assignment
--for using database
use assignment
--for creating first table department
create table department(departmentid int primary key ,
department_name varchar(50) not null unique)
--inserting value to department table
insert into department(departmentid,department_name)
select 101,'computer science' union all
select 102,'mechanical engineering'union all
select 103,'Electrical engineering'union all
select 104,'civil engineering' union all
select 105,'Electronics' union all
select 106,'data science'

--for retriving all data
select * from department
--creating another table student
create table student(studentid int primary key,
name varchar (50) not null,
age int check(age>=17),
dept_id int references department(departmentid))
--for inserting data from that table
insert into student (studentid,name,age,dept_id)
--puting values using select command
select 10,'rakesh',22,101 union all
select 20,'mukesh',24,102 union all
select 30,'raja',25,103 union all
select 40,'mamun',20,104 union all
select 50, 'kanha',22,105 union all
select 60,'smita',20,106
insert into student (studentid,name,age)
select 70,'dadu',45 union all
select 80,'dada',49 union all
select 90,'dadu',77


--for retriving all data
select * from student

--creating another table course
create table courseses(courseid int primary key ,
course_name varchar(50) not null unique,
dept_id int references department(departmentid))
--inserting value to courses table
insert into courseses(courseid,course_name,dept_id)
select 201,('computer Architecture''math'),101 union all
select 202,('math''science''physics''SQL'),102 union all
select 203,'Structures AI',103 union all
select 204,'DBMS',104 union all
select 205,'Thermodynamics',105 union all
select 206,'circuits',106
insert into courseses(courseid,course_name)
select 207,'data science course' union all
select 208,'data analyst course'union all
select 209, 'data eng course'

--for retriving all data
select * from courseses

--lets perform some operation
--display all students whose age is greater than 20
select * from student where age>20
--select all course of computer science department
select * from courseses where dept_id ='101'
--display all student who belong from electronics department
select * from student where dept_id='105'
--select student whose age is between 18 and 22
select * from student where age between 18 and 22
--inner joins
--inner join students with department (to show student name with their department name)
select student.name,department.department_name
from student inner join department
on student.dept_id =department.departmentid
--left join
--left join courses with department (to show all courses even if some department not exist
select courseses.course_name,department.department_name
from courseses left join department 
on courseses.dept_id=department.departmentid
--right join students with courses(to show all courses even if no students has enrolled in them
select student.name,courseses.course_name
from student right join courseses
on student.dept_id=courseses.dept_id

--for backup
select * into department_b from department
--for data backup or not
select* from department_b
--syntax: select * into backup_table_name from original_table_name (which you want to backup)
--if you want to backup perticular column backup then use where clause
/*syntax:select employeeid,salary 
into emp_backup
from employee
where employeeid in(1,5,8,9)


