create table patients(
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50)
);

insert into patients values
(1,'Het','Male',21,'Ahmedabad'),
(2,'Raj','Male',22,'Surat'),
(3,'Priya','Female',20,'Rajkot');

SELECT * FROM patients;


create table doctors(
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50),
    department VARCHAR(50)
);

insert into doctors values
(101,'Dr Shah','Cardiology'),
(102,'Dr Patel','Orthopedic'),
(103,'Dr Mehta','Neurology');

SELECT * FROM doctors;


create table appointments(
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20),

    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

insert into appointments values
(1,1,101,'2026-06-01','Completed'),
(2,2,102,'2026-06-02','Scheduled'),
(3,3,103,'2026-06-03','Cancelled');


SELECT * FROM appointments;



create table admissions(
    admission_id INT PRIMARY KEY,
    patient_id INT,
    admit_date DATE,
    discharge_date DATE,
    ward VARCHAR(30),

    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);


insert into admissions values
(1,1,'2026-06-01','2026-06-05','Ward-A'),
(2,2,'2026-06-02','2026-06-04','Ward-B');


SELECT * FROM admissions;



create table billing(
    bill_id INT PRIMARY KEY,
    patient_id INT,
    amount DECIMAL(10,2),
    payment_status VARCHAR(20),

    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);



insert into billing values
(1,1,15000,'Paid'),
(2,2,10000,'Pending'),
(3,3,8000,'Paid');

SELECT * FROM billing;




SELECT
p.patient_name,
d.doctor_name,
d.department,
a.appointment_date,
a.status
FROM appointments a INNER JOIN patients p ON a.patient_id = p.patient_id
INNER JOIN doctors d ON a.doctor_id = d.doctor_id;



SELECT
p.patient_name,
b.amount,
b.payment_status
FROM billing b INNER JOIN patients p ON b.patient_id = p.patient_id;

SELECT
p.patient_name,
a.admit_date,
a.discharge_date,
a.ward
FROM admissions a INNER JOIN patients p ON a.patient_id = p.patient_id;