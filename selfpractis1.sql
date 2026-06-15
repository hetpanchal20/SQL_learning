CREATE table employees(
	employee_id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	department varchar(50),
	salary DECIMAL(10,2) CHECK(salary>0),
	joining_date DATE NOT NULL,
	age INT CHECK(age>=18)
);
DROP TABLE employees;

INSERT INTO employees(first_name,last_name,department,salary,joining_date,age) VALUES
	('Amit','Sharma','IT',60000.00,'2022-05-01',29),
	('Neha','Patel','HR',55000.00,'2021-08-15',32),
	('Ravi','Kumar','Finance',70000.00,'2020-03-10',35),
	('Anjali','Verma','IT',65000.00,'2019-11-22',28),
	('Suresh','Reddy','Operations',50000.00,'2023-01-10',26);
SELECT *from employees;
SELECT first_name , department from employees ;

UPDATE employees
SET salary=salary+(salary*0.1)
where department='IT';

DELETE from employees  
WHERE age>34;

ALTER table employees
add column email varchar(50);

ALTER table employees
Rename column department to dept_name;

SELECT first_name,last_name,joining_date from employees
WHERE joining_date>'2021-01-01';

ALTER table employees
ALTER column salary type INTEGER using salary::integer;

SELECT first_name,age,salary from employees order by salary desc;

INSERT INTO employees (first_name,last_name,dept_name,salary,joining_date,age)values
('Raj','Singh','Marketing',60000,'2023-09-15',30);

UPDATE employees
set age=age+1;
