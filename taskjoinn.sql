CREATE TABLE join_demo(
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);
INSERT INTO join_demo(first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);

SELECT * FROM join_demo;


CREATE TABLE join_demo2 (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO join_demo2 (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');

SELECT * FROM join_demo2;

SELECT * from join_demo 
INNER JOIN join_demo2
ON join_demo.department_id = join_demo2.department_id;

SELECT * from join_demo 
LEFT JOIN join_demo2
ON join_demo.department_id = join_demo2.department_id;

SELECT * from join_demo 
RIGHT JOIN join_demo2
ON join_demo.department_id = join_demo2.department_id;

SELECT * from join_demo 
FULL JOIN join_demo2
ON join_demo.department_id = join_demo2.department_id;

SELECT * from join_demo 
CROSS JOIN join_demo2;








CREATE TABLE join_demo3 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    city VARCHAR(30),
    salary INT,
    experience INT
);



INSERT INTO join_demo3 VALUES
(1,'Het',101,'Ahmedabad',55000,2),
(2,'Om',102,'Surat',42000,1),
(3,'Riya',103,'Rajkot',60000,4),
(4,'Jay',101,'Baroda',48000,3),
(5,'Neha',104,'Ahmedabad',70000,5),
(6,'Aman',103,'Surat',65000,6),
(7,'Priya',102,'Rajkot',39000,2),
(8,'Karan',105,'Mumbai',50000,4),
(9,'Simran',101,'Ahmedabad',45000,3),
(10,'Rahul',104,'Surat',52000,5),
(11,'Dev',103,'Baroda',75000,7),
(12,'Sneha',102,'Rajkot',41000,2),
(13,'Isha',105,'Ahmedabad',58000,4),
(14,'Yash',101,'Surat',62000,5),
(15,'Vivek',104,'Mumbai',80000,8),
(16,'Aarti',103,'Ahmedabad',54000,3),
(17,'Nikhil',102,'Rajkot',43000,2),
(18,'Pooja',101,'Baroda',61000,5),
(19,'Rohan',105,'Surat',49000,3),
(20,'Meera',104,'Ahmedabad',72000,6),

(21,'Aryan',101,'Mumbai',51000,3),
(22,'Kajal',102,'Surat',44000,2),
(23,'Harsh',103,'Rajkot',63000,5),
(24,'Krupa',104,'Baroda',76000,7),
(25,'Manav',105,'Ahmedabad',47000,3),
(26,'Divya',101,'Surat',59000,4),
(27,'Anjali',102,'Mumbai',46000,2),
(28,'Sagar',103,'Rajkot',68000,6),
(29,'Parth',104,'Ahmedabad',73000,7),
(30,'Khushi',105,'Baroda',52000,4),

(31,'Mihir',101,'Ahmedabad',57000,4),
(32,'Jinal',102,'Surat',40000,2),
(33,'Nisarg',103,'Rajkot',69000,6),
(34,'Tanvi',104,'Mumbai',71000,5),
(35,'Bhavik',105,'Baroda',53000,3),
(36,'Reena',101,'Ahmedabad',56000,4),
(37,'Akash',102,'Surat',45000,2),
(38,'Palak',103,'Rajkot',64000,5),
(39,'Darsh',104,'Mumbai',74000,7),
(40,'Nidhi',105,'Baroda',51000,3),

(41,'Tirth',101,'Ahmedabad',58000,4),
(42,'Mansi',102,'Surat',42000,2),
(43,'Vraj',103,'Rajkot',66000,6),
(44,'Heena',104,'Mumbai',77000,8),
(45,'Dhruv',105,'Baroda',54000,4),
(46,'Riddhi',101,'Ahmedabad',60000,5),
(47,'Prince',102,'Surat',43000,2),
(48,'Komal',103,'Rajkot',65000,5),
(49,'Yatin',104,'Mumbai',78000,8),
(50,'Rupal',105,'Baroda',50000,3),

(51,'Tejas',101,'Ahmedabad',59000,5),
(52,'Kinjal',102,'Surat',41000,2),
(53,'Aakash',103,'Rajkot',67000,6),
(54,'Ravi',104,'Mumbai',75000,7),
(55,'Nirali',105,'Baroda',52000,4),
(56,'Hiren',101,'Ahmedabad',61000,5),
(57,'Monika',102,'Surat',44000,3),
(58,'Jigar',103,'Rajkot',69000,6),
(59,'Chirag',104,'Mumbai',79000,8),
(60,'Bhumi',105,'Baroda',53000,4),

(61,'Soham',101,'Ahmedabad',62000,5),
(62,'Urvi',102,'Surat',45000,3),
(63,'Hardik',103,'Rajkot',70000,7),
(64,'Shreya',104,'Mumbai',76000,7),
(65,'Jayesh',105,'Baroda',54000,4),
(66,'Rakesh',101,'Ahmedabad',63000,6),
(67,'Kriti',102,'Surat',46000,3),
(68,'Vandan',103,'Rajkot',68000,6),
(69,'Sapna',104,'Mumbai',77000,8),
(70,'Raj',105,'Baroda',55000,4),

(71,'Deep',101,'Ahmedabad',64000,6),
(72,'Mitali',102,'Surat',47000,3),
(73,'Smit',103,'Rajkot',71000,7),
(74,'Neel',104,'Mumbai',78000,8),
(75,'Pinal',105,'Baroda',56000,4),
(76,'Ansh',101,'Ahmedabad',65000,6),
(77,'Vidhi',102,'Surat',48000,3),
(78,'Tina',103,'Rajkot',72000,7),
(79,'Sonal',104,'Mumbai',79000,8),
(80,'Jainam',105,'Baroda',57000,5),

(81,'Krish',101,'Ahmedabad',66000,6),
(82,'Vaibhav',102,'Surat',49000,4),
(83,'Kashvi',103,'Rajkot',73000,7),
(84,'Ronak',104,'Mumbai',80000,9),
(85,'Mona',105,'Baroda',58000,5),
(86,'Nayan',101,'Ahmedabad',67000,6),
(87,'Trisha',102,'Surat',50000,4),
(88,'Jenil',103,'Rajkot',74000,7),
(89,'Harsha',104,'Mumbai',81000,9),
(90,'Milan',105,'Baroda',59000,5),

(91,'Kishan',101,'Ahmedabad',68000,7),
(92,'Rutu',102,'Surat',51000,4),
(93,'Dhairya',103,'Rajkot',75000,8),
(94,'Sejal',104,'Mumbai',82000,9),
(95,'Pari',105,'Baroda',60000,5),
(96,'Mitul',101,'Ahmedabad',69000,7),
(97,'Anvi',102,'Surat',52000,4),
(98,'Yug',103,'Rajkot',76000,8),
(99,'Dhara',104,'Mumbai',83000,10),
(100,'Tushar',105,'Baroda',61000,5);


SELECT * FROM join_demo3;

SELECT * from join_demo3 j3 INNER JOIN join_demo2 as j2
ON j3.department_id = j2.department_id;

SELECT * from join_demo3 j3 FULL JOIN join_demo2 as j2
ON j3.department_id = j2.department_id;
