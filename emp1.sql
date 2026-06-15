CREATE TABLE Emp1 (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Department VARCHAR(30),
    Salary INT,
    City VARCHAR(30),
    JoiningDate DATE,
    Gender VARCHAR(10)
);



INSERT INTO Emp1 VALUES
(1, 'Het', 'IT', 45000, 'Ahmedabad', '2024-01-10', 'Male'),
(2, 'Om', 'HR', 30000, 'Surat', '2023-12-01', 'Male'),
(3, 'Riya', 'IT', 50000, 'Rajkot', '2024-02-15', 'Female'),
(4, 'Jay', 'Sales', 35000, 'Baroda', '2023-11-20', 'Male'),
(5, 'Neha', 'HR', 32000, 'Ahmedabad', '2024-03-01', 'Female'),
(6, 'Aman', 'IT', 60000, 'Surat', '2024-01-25', 'Male');



Select * from Emp1;



ALTER TABLE Emp1
ADD Email VARCHAR(50);



UPDATE Emp1
SET Salary = 55000
Where EmpID = 3;



Select * from Emp1
Where Salary > 40000;


Select * from Emp1
Where EmpName LIKE 'H%';


Select * from Emp1
ORDER BY Salary DESC;



Select * from Emp1
LIMIT 3;



Select COUNT(*) from Emp1;

Select SUM(Salary) from Emp1;
Select  AVG(Salary)from Emp1;
Select MIN(salary) from emp1;
Select MAX(salary) from emp1;


SELECT Department, COUNT(*)
FROM Emp1
GROUP BY Department;

SELECT Department, AVG(Salary)
FROM Emp1 
GROUP BY Department;


SELECT Department, AVG(Salary)
FROM Emp1
GROUP BY Department
HAVING AVG(Salary) > 40000;