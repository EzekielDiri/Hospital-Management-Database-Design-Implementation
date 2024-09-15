
-- Database Creation

CREATE DATABASE Hospital_Management;

USE Hospital_Management;

-- Patients Table

CREATE TABLE Patients(
	Patient_ID INT PRIMARY KEY IDENTITY NOT NULL,
	First_Name VARCHAR(50),
	Last_Name VARCHAR(50),
	DateOfBirth DATE,
	Gender CHAR(1),
	Address VARCHAR(100),
	Medical_History VARCHAR(100),
	Current_Medication VARCHAR(100)
);

-- Doctors Table

CREATE TABLE Doctors(
	Doctors_ID INT PRIMARY KEY IDENTITY NOT NULL,
	First_Name VARCHAR(50),
	Last_Name VARCHAR(50),
	Gender CHAR(1),
	DateOfBirth DATE,
	Specialization VARCHAR(50),
	Email VARCHAR(50) UNIQUE,
	Phone_Number VARCHAR(15)
);

-- Appointments Table

CREATE TABLE Appointments(
	Appointments_ID INT PRIMARY KEY NOT NULL,
	Appointment_Date DATE,
	Appointment_Type VARCHAR(50),
	Room_Number INT,
	Patients_ID INT REFERENCES Patients(Patient_ID),
	Doctors_ID INT REFERENCES Doctors(Doctors_ID)
);

-- Department Table

CREATE TABLE Department (
	Department_ID INT PRIMARY KEY IDENTITY NOT NULL,
	Department VARCHAR(50),
	Doctors_ID INT REFERENCES Doctors(Doctors_ID)
);


-- Treatment Table

CREATE TABLE Treatments(
	Treatment_ID INT PRIMARY KEY IDENTITY NOT NULL,
	Treatment_Date DATE,
	Medication_Prescribed VARCHAR(100),
	Patients INT REFERENCES Patients(Patient_ID),
	Doctors INT REFERENCES Doctors(Doctors_ID)	
);

-- Medical Reccord Table

CREATE TABLE Medical_Records(
	MedicalRecords_ID INT PRIMARY KEY IDENTITY NOT NULL,
	Visit_Date DATE,
	Diagnosis VARCHAR(100),
	Treatment_Plan VARCHAR(100),
	Last_Result VARCHAR(100),
	Family_History VARCHAR(100),
	Admission_Date DATE,
	Lab_Result VARCHAR(100),
	Emergency_Contact VARCHAR(70),
	Discharge_Date DATE,
	Patients INT REFERENCES Patients(Patient_ID),
	Doctors INT REFERENCES Doctors(Doctors_ID)
);


-- Records for Patients Table

INSERT INTO Patients (First_Name, Last_Name, DateOfBirth, Gender, Address, Medical_History, Current_Medication )
	VALUES ('John', 'Abel', '1986-01-19', 'F', '23 Market Road PH, Rivers State', 'No Medical History', 'None'),
	('James', 'Emma', '1981-01-12', 'M', '12 Broad Road, Akwa Ibom', 'No Medical History', 'None'),
	('Ava', 'Isabella', '1981-02-19', 'M', '10 John Wesley Road, Rivers State', 'No Medical History', 'None'),
	('Mia', 'Olivia', '1976-08-25', 'F', '12 Maple Avenue VI, Lagos State', 'No Medical History', 'None'),
	('Amelia', 'Harper', '1997-11-12', 'M', '45 Kingsway Street GR, Oyo State', 'No Medical History', 'None'),
	('Evelyn', 'Abigail', '1986-12-01', 'F', '89 Ocean Boulevard PH, Rivers State', 'No Medical History', 'None'),
	('Emily', 'Ella', '2000-01-19', 'M', '23 Market Road PH, Rivers State', 'No Medical History', 'None'),
	('Scarlet', 'Grace', '1984-04-12', 'F', '67 Unity Crescent WU, Abuja', 'No Medical History', 'None'),
	('Success', 'Excel', '1986-09-10', 'M', '34 Palm Grove Lane EK, Ekiti State', 'No Medical History', 'None'),
	('Chloe', 'Lilly', '1982-12-04', 'F', '23 Sunrise Avenue KD, Kaduna State', 'No Medical History', 'None'),
	('Zoe', 'Aria', '1975-12-21', 'M', '56 Creek Road OW, Imo State', 'No Medical History', 'None'),
	('Norah', 'Aurora', '2019-06-12', 'M', '78 Garden Close EN, Enugu State', 'No Medical History', 'None'),
	('Camila', 'Victoria', '1986-08-03', 'M', '21 Waterfall Drive AK, Akwa Ibom State', 'No Medical History', 'None'),
	('Layla', 'Hannah', '2012-09-13', 'F', '42 Golden Gate Street OG, Ogun State', 'No Medical History', 'None'),
	('Natalie', 'Madison', '2015-07-19', 'M', '19 Independence Road AB, Abia State', 'No Medical History', 'None'),
	('Leah', 'Lilian', '2008-01-20', 'M', '88 Mountain View Drive ON, Ondo State', 'No Medical History', 'None'),
	('Addison', 'Penelope', '1986-01-14', 'F', '53 Silver Street AK, Anambra State', 'No Medical History', 'None'),
	('Lucy', 'Riley', '1981-03-17', 'M', '31 Coral Lane CR, Cross River State', 'No Medical History', 'None'),
	('Ruby', 'Violet', '1996-01-19', 'M', '77 Central Park Road KN, Kano State', 'No Medical History', 'None'),
	('Stella', 'Mila', '1966-01-19', 'F', '26 Victoria Street GJ, Gombe State', 'No Medical History', 'None'),
	('Alice', 'Gabriela', '1986-01-19', 'M', '64 Freedom Avenue BY, Bayelsa State', 'No Medical History', 'None'),
	('Allie', 'Claire', '1980-06-29', 'M', '47 Sunset Boulevard EK, Ekiti State', 'No Medical History', 'None'),
	('Ivy', 'Sadie', '1989-01-28', 'M', '10 Broad Street NG, Niger State', 'No Medical History', 'None');

-- Records for Doctors Table

	INSERT INTO Doctors (First_Name, Last_Name, Gender, DateOfBirth, Specialization, Email , Phone_Number)
		VALUES ('Marc', 'Bates', 'M', '1954-04-15', 'Neurology', 'sharon65@meza-shepherd.info', '02072575367'),
		('Andrew', 'Salinas', 'M', '1965-05-12', 'Psychiatry', 'cynthia09@pace.com', '02027561137'),
		('Timothy', 'Mckenzie', 'M', '1978-03-16', 'Dermatology', 'xavier16@wood-davis.com', '02024728206'),
		('Roger', 'Davis', 'F', '1986-12-04', 'Orthopedics', 'vnichols@hotmail.com', '0782733108'),
		('Matthew', 'Frazier', 'F', '1960-08-08', 'Pediatrics', 'amanda02@hotmail.com', '02024728206'),
		('Andrew', 'Malone', 'M', '1996-02-12', 'Psychiatry', 'briansampson@hotmail.com', '02058021259'),
		('Tommy', 'Wood', 'F', '1959-12-04', 'Pathology', 'owells@burgess-booker.com', '0279600896'),
		('Edward', 'Edwards', 'M', '1992-10-16', 'Psychiatry', 'roy15@gmail.com', '02083276641'),
		('Daniel', 'Cannon', 'F', '1978-04-10', 'Pediatrics', 'johnsonjoseph@hotmail.com', '02024728206'),
		('Ariel', 'Payne', 'F', '1963-02-19', 'Oncology', 'ronaldbarnett@yahoo.com', '02091287911'),
		('Johnny', 'Cross', 'F', '1966-01-16', 'Pathology', 'clarkdevin@durham.net', '02075981088'),
		('Scott', 'Bailey', 'M', '1975-01-05', 'Oncology', 'christopherhowell@russo.org', '02082096216'),
		('Robert', 'Allison', 'F', '1999-05-29', 'Psychiatry', 'ashlee81@hotmail.com', '02099189607'),
		('Daniel', 'King', 'F', '1987-12-07', 'Pathology', 'sbuck@hotmail.com', '02039841740'),
		('Cole', 'Richards', 'M', '1982-06-29', 'Pediatrics', 'katie18@green.com', '02039916424'),
		('Natasha', 'Kennedy', 'M', '1975-04-08', 'Orthopedics', 'greenenicholas@spence.com', '02095477782'),
		('Stephanie', 'Moss', 'M', '1979-11-29', 'Orthopedics', 'kfigueroa@parker.com', '02013737410'),
		('Lee', 'Patton', 'M', '1970-01-24', 'Dermatology', 'raymond74@hotmail.com', '02024728206'),
		('Anne', 'Morales', 'M', '1955-12-10', 'Pathology', 'chanjacqueline@gmail.com', '02024728206'),
		('Tiffany', 'Bradley', 'M', '1998-02-28', 'Dermatology', 'omullins@jimenez.com', '02024728206'),
		('Sharon', 'Cherry', 'M', '1984-01-11', 'Neurology', 'gparsons@hotmail.com', '02074542484'),
		('Ashley', 'Roberts', 'F', '1984-12-24', 'Dermatology', 'pmorris@gmail.com', '02055913747'),
		('Justin', 'Saunders', 'F', '1972-05-23', 'Orthopedics', 'amanda96@hernandez-schmidt.com', '02083882259'),
		('Martha', 'Medina', 'M', '1965-09-25', 'Neurology', 'kimberly50@hotmail.com', '02016352701'),
		('Nicole', 'Moore', 'M', '1994-09-18', 'Neurology', 'pcastillo@hotmail.com', '02014911352'),
		('Eric', 'Miller', 'M', '1978-07-30', 'Neurology', 'xjones@murphy.org', '02086336281'),
		('James', 'Medina', 'F', '1972-05-23', 'Orthopedics', 'michael86@mccall.org', '02049743927');


-- Records for Appointments Table

INSERT INTO Appointments (Appointments_ID, Appointment_Date, Appointment_Type, Room_Number)
	VALUES ('1', '2024-03-03', 'Emergency', 829),
	('2','2024-01-24', 'Emergency', 416),
	('3','2024-07-27', 'Surgery', 385),
	('4','2024-04-08', 'Therapy', 385),
	('5','2024-04-21', 'Follow-up', 277),
	('6','2024-03-08', 'Therapy', 722),
	('7','2024-02-26', 'Emergency', 280),
	('8','2024-03-28', 'Consultation', 621),
	('9','2024-07-13', 'Therapy', 757),
	('10','2024-09-01', 'Consultation', 357),
	('11','2024-04-22', 'Emergency', 241),
	('12','2024-06-10', 'Emergency', 853),
	('13','2024-02-03', 'Therapy', 475),
	('14','2024-04-10', 'Consultation',  301),
	('15','2024-05-09', 'Therapy', 475),
	('16','2024-06-21', 'Therapy', 210),
	('17','2024-03-24', 'Therapy', 829),
	('18','2024-03-03', 'Emergency', 449),
	('19','2024-07-01', 'Check-up', 829),
	('20','2024-06-03', 'Consultation', 880),
	('21','2024-08-25', 'Consultation', 885),
	('22','2024-08-22', 'Therapy', 578),
	('23','2024-02-22', 'Surgery', 853),
	('24','2024-05-17', 'Emergency', 885),
	('25','2024-02-25', 'Emergency', 829),
	('26','2024-03-03', 'Follow-up', 416),
	('27','2024-06-16', 'Follow-up', 829),
	('28','2024-07-12', 'Therapy', 494),
	('29','2024-03-03', 'Emergency', 829);


-- Records for Departments Table

INSERT INTO Department (Department)
	VALUES ('Accident & Emergency'),
	('Anesthesiology'),
	('Cardiology'),
	('Dermatology'),
	('Emergency Medicine'),
	('Endocrinology'),
	('Gastroenterology'),
	('General Surgery'),
	('Geriatrics'),
	('Gynecology'),
	('Hematology'),
	('Infectious Diseases'),
	('Intensive Care Unit (ICU)'),
	('Internal Medicine'),
	('Maternity'),
	('Neonatology'),
	('Nephrology'),
	('Neurology'),
	('Obstetrics'),
	('Oncology'),
	('Ophthalmology'),
	('Orthopedics'),
	('Otolaryngology (ENT)'),
	('Pediatrics'),
	('Physiotherapy'),
	('Plastic Surgery'),
	('Psychiatry'),
	('Pulmonology'),
	('Radiology'),
	('Rheumatology'),
	('Urology'),
	('Vascular Surgery'),
	('Occupational Therapy'),
	('Palliative Care'),
	('Pharmacy'),
	('Pathology');


-- Records for Treatments Table

INSERT INTO Treatments(Treatment_Date, Medication_Prescribed)
	VALUES ('2024-08-08', 'Metformin'),
	('2024-02-02', 'Omeprazole'),
	('2024-01-04', 'Prednisone'),
	('2024-07-13', 'Metformin'),
	('2024-06-11', 'Amoxicillin'),
	('2024-03-28', 'Simvastatin'),
	('2024-09-07', 'Lisinopril'),
	('2024-04-23', 'Aspirin'),
	('2024-11-12', 'Paracetamol'),
	('2024-05-19', 'Ibuprofen'),
	('2024-10-01', 'Hydrocortisone'),
	('2024-06-30', 'Simvastatin'),
	('2024-12-11', 'Paracetamol'),
	('2024-08-19', 'Amoxicillin'),
	('2024-09-03', 'Lisinopril'),
	('2024-02-24', 'Aspirin'),
	('2024-07-06', 'Omeprazole'),
	('2024-05-27', 'Ibuprofen'),
	('2024-11-18', 'Prednisone'),
	('2024-03-11', 'Hydrocortisone'),
	('2024-04-14', 'Metformin'),
	('2024-09-28', 'Lisinopril'),
	('2024-01-17', 'Omeprazole'),
	('2024-10-21', 'Simvastatin'),
	('2024-03-05', 'Aspirin'),
	('2024-07-22', 'Amoxicillin'),
	('2024-06-15', 'Ibuprofen'),
	('2024-08-25', 'Hydrocortisone'),
	('2024-05-03', 'Prednisone'),
	('2024-12-27', 'Paracetamol');

-- Records for Medical Records Table

INSERT INTO Medical_Records (Visit_Date, Diagnosis, Treatment_Plan, Last_Result, Family_History, Admission_Date,  Lab_Result,  Emergency_Contact, Discharge_Date)
	VALUES ('2024-03-23', 'Heart Disease', 'Medication', 'Improving', 'Heart Disease', '2024-03-04', 'Normal', '07703003643', '2024-07-25'),
('2024-04-03', 'Arthritis', 'Physical Therapy', 'Improving', 'Cancer', '2024-01-30', 'Abnormal', '07441811878', '2024-07-25'),
('2024-06-24', 'Asthma', 'Lifestyle Changes', 'Improving', 'Hypertension', '2024-08-13', 'Pending', '07470420350', '2024-03-08'),
('2024-06-28', 'Asthma', 'Physical Therapy', 'Improving', 'Cancer', '2024-06-16', 'Pending', '07924033082', '2024-04-30'),
('2024-05-03', 'Diabetes', 'Monitoring', 'Stable', 'Heart Disease', '2024-03-31', 'Pending', '07939576582', '2024-04-20'),
('2024-08-05', 'Asthma', 'Medication', 'Improving', 'Diabetes', '2024-06-14', 'Abnormal', '07504279217', '2024-01-12'),
('2024-04-14', 'Hypertension', 'Physical Therapy', 'Deteriorating', 'Heart Disease', '2024-01-24', 'Pending', '07747551335', '2024-05-21'),
('2024-03-27', 'Hypertension', 'Surgery', 'Stable', 'Heart Disease', '2024-05-25', 'Normal', '07613572972', '2024-07-25'),
('2024-05-08', 'Heart Disease', 'Surgery', 'Deteriorating', 'Cancer', '2024-03-08', 'Normal', '07232270175', '2024-09-04'),
('2024-07-28', 'Hypertension', 'Surgery', 'Improving', 'Heart Disease', '2024-01-01', 'Pending', '07759288135', '2024-08-06'),
('2024-02-14', 'Heart Disease', 'Lifestyle Changes', 'Improving', 'Hypertension', '2024-05-16', 'Abnormal', '07606875044', '2024-08-02'),
('2024-03-30', 'Migraine', 'Monitoring', 'Deteriorating', 'None', '2024-01-07', 'Pending', '07375822781', '2024-02-28'),
('2024-04-12', 'Diabetes', 'Surgery', 'Stable', 'Diabetes', '2024-06-10', 'Normal', '07899250317', '2024-07-19'),
('2024-09-04', 'Hypertension', 'Physical Therapy', 'Improving', 'Hypertension', '2024-03-13', 'Pending', '07838697901', '2024-09-03'),
('2024-07-03', 'Migraine', 'Medication', 'Stable', 'None', '2024-06-02', 'Pending', '07450553535', '2024-06-06'),
('2024-01-08', 'Hypertension', 'Surgery', 'Deteriorating', 'Diabetes', '2024-05-28', 'Normal', '07333717058', '2024-05-25'),
('2024-05-16', 'Hypertension', 'Surgery', 'Stable', 'None', '2024-05-18', 'Normal', '07301038471', '2024-07-11'),
('2024-04-28', 'Asthma', 'Physical Therapy', 'Deteriorating', 'Heart Disease', '2024-02-19', 'Abnormal', '07784657007', '2024-01-03'),
('2024-09-07', 'Asthma', 'Monitoring', 'Deteriorating', 'None', '2024-06-20', 'Normal', '07450324350', '2024-06-19'),
('2024-05-02', 'Arthritis', 'Medication', 'Improving', 'Cancer', '2024-04-23', 'Pending', '07230412287', '2024-05-23'),
('2024-08-10', 'Migraine', 'Physical Therapy', 'Stable', 'None', '2024-01-06', 'Normal', '07803509131', '2024-06-28'),
('2024-02-11', 'Migraine', 'Lifestyle Changes', 'Deteriorating', 'Heart Disease', '2024-04-05', 'Pending', '07389396656', '2024-04-27'),
('2024-07-26', 'Diabetes', 'Surgery', 'Stable', 'Diabetes', '2024-09-05', 'Abnormal', '07656136367', '2024-05-13'),
('2024-07-07', 'Diabetes', 'Lifestyle Changes', 'Improving', 'Cancer', '2024-07-07', 'Pending', '07368740526', '2024-07-01'),
('2024-06-25', 'Migraine', 'Physical Therapy', 'Stable', 'Hypertension', '2024-07-03', 'Normal', '07604080456', '2024-02-07'),
('2024-03-01', 'Asthma', 'Surgery', 'Deteriorating', 'Diabetes', '2024-02-05', 'Abnormal', '07835102576', '2024-04-25'),
('2024-06-06', 'Heart Disease', 'Medication', 'Stable', 'None', '2024-01-07', 'Normal', '07948104973', '2024-02-11'),
('2024-02-21', 'Diabetes', 'Monitoring', 'Improving', 'Cancer', '2024-04-09', 'Pending', '07124560731', '2024-08-15'),
('2024-05-12', 'Hypertension', 'Surgery', 'Deteriorating', 'Heart Disease', '2024-07-09', 'Abnormal', '07704023687', '2024-08-22'),
('2024-08-20', 'Asthma', 'Medication', 'Stable', 'None', '2024-06-16', 'Pending', '07236617007', '2024-02-15');
