# Hospital-Management-Database-Design-Implementation
In designing the Hospital Management database, the key goal was to make sure the systems could efficiently store, retrieve, and manage information related to patients, doctors, appointments, treatments, and medical records. I organised the database into six tables namely:
1.	Patients
2.	Doctors
3.	Appointments
4.	Departments
5.	Treatments and 
6.	Medical records
   
Each table is carefully structured to minimize data duplication and ensure that the relationships between the them are clearly organised. Below are the brief details of what each of this tables does:

- **Patients Table:** This stores personal information about patients who visits the hospital. Information that table can take are: name, date of birth, gender, address, medical history, etc.

- **Doctors Table:** This captures details about the doctors, including their specializations and contact details.

- **Appointment Table:** This records the appointment between doctors and patients, with details such as appointment date, type and the patients room number.

- **Department Table:** Off course such an establishment would have departments that handles different operation. This connects doctors to their departments like cardiology, surgery, etc.

- **Treatment Table:** This table tracks the treatment provided to patients by  doctors.

- **Medical Records:** This stores detailed medical records, including diagnosis, treatment plans, laboratory results, emergency contacts, etc.

# Normalization Process
I used a three-step normalization process to avoid data duplication, where all information are stored in one table and by so doing would cause the database not to function effectively.

1.	**First Normal Form (1NF):** This steps ensures that every field in every table contains atomic, indivisible values. This means there are no lists or repeating groups in any fields. For instance, each patient’s name, address. And medical history are stored in separate columns. This absolutely makes the data easy to work with.
2.	**Second Normal Form (2NF):** This will help in removing partial dependency, meaning every non-primary key field should depend entirely on the primary key. In the Appointment table, for instance, every field (Appointment_Date and Room_Number) depends fully on the Appointment_ID.
3.	**Third Normal Form (3NF):** In this step, I used transitive dependencies, ensuring that non-primary keys field depend only on the primary key. In the Medical_Records table, fields like Diagnosis and Treatment depend only on the Medical_Records_ID (the primary key) not on the other non-primary key field.

# Primary Keys, Foreign Key and Data Types
I chose the primary and foreign keys types, including data types carefully to ensure that the relationship between the tables are clear and the data remains consistent. Below is the breakdown of my choices:

- **Primary Keys:** I used an auto-increment INT data types for the primary key in each table, such as Patient_ID in the Patients table and Doctors_ID in the Doctors table, etc. This ensures that each record is unique and can be referenced.
- **Foreign Keys:** I added foreign keys to connect related tables. For instance, in the Appointments table, Patient_ID and Doctors_ID link each appointment to specific patient and doctor. Similarly, in the Treatment and Medical_Records tables, foreign keys ensure the correct patients and doctors are linked to each treatment and record.
- **Data Types:** I choose VARCHAR for text fields like names and addresses, DATE for date fields like DateOfBirth, and CHAR(1) for fields like Gender, which only need to store one character (M/F). These data types were chosen to efficiently store the information they represent.

# Entity Relationship Diagram

![image](https://github.com/user-attachments/assets/31679aa9-492d-4b4d-973f-43c32b98c0d5)

