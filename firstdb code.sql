Create Table Students(
	Id int primary key,
	Name char(10),
	Age int Not null
);

Select *from Students;

Alter Table Students 
	Add Gender varchar(10);
Alter Table Students 
	DROP COLUMN Gender;

Insert into Students (id,name,age)
values(1,'Het',20),
	(2,'om',19)	;
	
Insert into Students (id,std__name,age)
	values(3,'brij',17);
	
ALTER TABLE Students
	ALTER COLUMN std__name TYPE CHAR(10);
	
Update Students 
Set age = 18
where id=2;
Update Students 
Set age = 18
where id=3;


Alter table students 
	rename column std_name to std__name; 
	
delete from students where id=3


select current_times;
