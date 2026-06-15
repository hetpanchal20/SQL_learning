CREATE TABLE patients(
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15)
);


INSERT INTO patients VALUES
(1,'Het',21,'Male','9876543210'),
(2,'Raj',22,'Male','9876543211'),
(3,'Priya',20,'Female','9876543212');

select * from patients;

CREATE TABLE doctors(
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50),
    specialization VARCHAR(50)
);


INSERT INTO doctors VALUES
(101,'Dr Shah','Cardiology'),
(102,'Dr Patel','Orthopedic'),
(103,'Dr Mehta','Neurology');

select * from doctors;



CREATE TABLE appointments(
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE
);


INSERT INTO appointments VALUES
(1,1,101,'2026-06-01'),
(2,2,102,'2026-06-02'),
(3,3,101,'2026-06-03');

select * from appointments;

select p.patient_name,d.doctor_name,a.appointment_date
from appointments a
INNER JOIN patients p ON a.patient_id = p.patient_id
INNER JOIN doctors d ON a.doctor_id = d.doctor_id;
