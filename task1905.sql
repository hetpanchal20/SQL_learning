CREATE Table Employees(
		Empid INT PRIMARY KEY,
		Empname VARCHAR(50),
		Department VARCHAR(40),
		Salary INT,
		Experience INT,
		City VARCHAR(50),
		JoiningDate DATE
);
SELECT * from Employees;

INSERT INTO Employees values 
(1, 'Het','IT',55000,2,'Ahmedabad','2023-01-10'),
(2, 'Om', 'HR', 32000, 1, 'Surat', '2024-02-15'),
(3, 'Riya', 'IT', 70000, 4, 'Rajkot', '2022-11-20'),
(4, 'Jay', 'Sales', 45000, 3, 'Baroda', '2023-03-12'),
(5, 'Neha', 'Finance', 60000, 5, 'Ahmedabad', '2021-09-25'),
(6, 'Aman', 'IT', 80000, 6, 'Surat', '2020-12-01'),
(7, 'Priya', 'HR', 35000, 2, 'Rajkot', '2023-07-18'),
(8, 'Karan', 'Sales', 50000, 4, 'Ahmedabad', '2022-05-14'),
(9, 'Simran', 'Finance', 75000, 7, 'Baroda', '2019-08-30'),
(10, 'Rahul', 'IT', 65000, 5, 'Surat', '2021-06-21'),
(11, 'Aarti', 'HR', 38000, 3, 'Ahmedabad', '2022-02-11'),
(12, 'Dev', 'Sales', 47000, 2, 'Rajkot', '2023-09-01'),
(13, 'Mira', 'Finance', 82000, 8, 'Baroda', '2018-04-19'),
(14, 'Yash', 'IT', 72000, 4, 'Ahmedabad', '2021-12-10'),
(15, 'Pooja', 'HR', 36000, 2, 'Surat', '2023-05-16'),
(16, 'Nikhil', 'Sales', 52000, 5, 'Rajkot', '2020-10-27'),
(17, 'Sneha', 'Finance', 67000, 6, 'Ahmedabad', '2019-11-05'),
(18, 'Vivek', 'IT', 90000, 9, 'Baroda', '2017-03-13'),
(19, 'Isha', 'HR', 40000, 3, 'Surat', '2022-08-09'),
(20, 'Rohan', 'Sales', 48000, 4, 'Ahmedabad', '2021-07-07');

SELECT Empname,Salary FROM Employees
WHERE Salary=(SELECT MAX(salary) from employees);

SELECT Empname,Salary FROM Employees
ORDER BY Salary DESC LIMIT 3;

SELECT Department , AVG(Salary) AS AVGsalary from employees
GROUP by Department;

SELECT Empname ,Salary,
ROW_NUMBER() OVER (ORDER BY Salary DESC) AS Rownum from employees;

SELECT Empname,Salary,
RANK() OVER (ORDER BY Salary DESC) AS Rank_ from employees;

SELECT Empname,Salary,
DENSE_RANK() OVER (ORDER BY Salary DESC) AS dense_rank from employees;

SELECT Empname,Department,Salary,
RANK() OVER (PARTITION BY DEPARTMENT
			ORDER BY Salary DESC) AS deptrank from employees;


SELECT avg(salary) from employees;

SELECT Empname,Salary from employees
WHERE Salary>(SELECT AVG(Salary) from employees);

SELECT Empname,Salary ,
CASE 
	WHEN salary>=70000 THEN 'HIghSalary'
	When salary>=50000 THEN 'MediumSalary'
	ELSE 'LowSalary'
END AS type_salary from employees;

SELECT * from employees 
WHERE experience>=5;

SELECT * from employees
WHERE city in('Ahmedabad','Surat');

Select * from employees 
WHERE joiningdate between '01-01-2023' AND '31-12-2024';