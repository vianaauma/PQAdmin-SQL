Create table patientss
(
patientss_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL,
age INTEGER CHECK (age>0),
gender VARCHAR(10),
pNationalID VARCHAR(20) UNIQUE
);
select * from patientss;

create table doctorss
(
doctor_id INTEGER PRIMARY KEY,
name VARCHAR(100)NOT NULL,
specialization VARCHAR(20)UNIQUE
);
select * from doctorss;

create table appointmentss
(
appointmentss_id INTEGER PRIMARY KEY,
patientss_id INTEGER NOT NULL,
doctor_id INTEGER NOT NULL,
appointment_date DATE NOT NULL,

CONSTRAINT fk_appointment_patientss
FOREIGN KEY (patientss_id)
REFERENCES Patientss(patientss_id),

CONSTRAINT fk_appointment_doctorss
FOREIGN KEY (doctor_id)
REFERENCES Doctorss(doctor_id)
);
select * from appointment

create table biling
(
bill_id INTEGER PRIMARY KEY,
patient_id INTEGER NOT NULL,
amount NUMERIC(10,2)NOT NULL CHECK(amount>=0),
bill_date DATE NOT NULL,

CONSTRAINT fk_billing_patient
FOREIGN KEY (patient_id)
REFERENCES patientss(patientss_id)
);
select * from billing

INSERT INTO patientss VALUES

(1,' Kamau','10','male','66'),
(2,'Achieng','7','female','678');
















