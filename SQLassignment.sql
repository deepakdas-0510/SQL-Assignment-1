CREATE DATABASE Assignment
use Assignment

--1.Create Tables
Create Table Departments
( DepartmentID INT Primary Key,
 DepartmentName VARCHAR(50) UNIQUE NOT NULL )
select * from Departments

Create Table Students
( StudentID INT Primary Key,
 Name VARCHAR(50) NOT NULL,
 Age INT check (Age >= 17),
 DepartmentID INT Foreign Key references Departments(DepartmentID)
)
select * from Students

Create Table Courses
( CourseID int primary key,
	CourseName varchar(50) not null,
	DepartmentID int foreign key references Departments(DepartmentID))
select * from Courses
--DELETE FROM Departments

--2.inserting values
insert into Departments 
values(1,'Computer Science'),
	 (2,'mechanical'),
	 (3,'electrical'),
	 (4,'civil'),
	 (5,'electronics')
select * from Departments	

insert into Students
values(1,'deepak',28,1),
	(2,'chinu',27,1),
	(3,'aayus',28,2),
	(4,'bikram',29,5),
	(5,'ravi',30,2),
	(6,'mahendra',54,4),
	(7,'yuvraj',45,3),
	(8,'viru',26,4),
	(9,'nandini',25,3),
	(10,'sriram',22,2)
select * from Students

insert into Courses
values(1,'SQL',1),
	(2,'dbms',5),
	(3,'circuits',2),
	(4,'FRONTEND',3),
	(5,'BACKEND',4),
	(6,'datascience',1),
	(7,'PYTHON',1),
	(8,'dataanalyst',2),
	(9,'ai',3),
	(10,'ml',4),
	(11,'powerbi',5),
	(12,'thermodynamics',1),
	(13,'math',2)
select * from Courses

--Q3: Apply WHERE & Operators
--Display all students whose age is greater than 20
 select * from Students where age>20 

--Display all courses of the "Computer Science" department.
 select c.coursename,d.departmentname from courses c
	inner join departments d
	on d.departmentid= c.departmentid
	where departmentname='Computer Science'

--Display all students who belong to the "Electronics" department.
select s.studentid, s.name, d.departmentname
	from students s
	inner join departments d
	on s.departmentid = d.departmentid
	where departmentname='Electronics'

--Display students whose age is between 18 and 22.
select * from students where age between 18 and 22


--Q4: Joins

--Perform joins on the tables:

--INNER JOIN Students with Departments (to show student names with their department names).
select s.studentid, s.name, d.departmentname
	from students s
	inner join departments d
	on s.departmentid = d.departmentid

--LEFT JOIN Courses with Departments (to show all courses, even if some department does not exist).
select c.*,d.departmentname from courses c
	left join departments d
	on d.departmentid= c.departmentid
select * from Courses
select * from Departments

--RIGHT JOIN Students with Courses (to show all courses, even if no student has enrolled in them).
select  s.name, c.coursename from students s
	right join courses c
	on c.departmentid=s.departmentid

select * from Students
select * from Courses
