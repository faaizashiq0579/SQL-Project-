create database Hospital;
use Hospital;
create table Patients (PatientID int primary key,Name varchar(100),DOB DATE,Gender varchar(10),Address varchar(200),Phone varchar(15),Email varchar(100));
create table  Doctors (DoctorID int primary key,Name varchar(100),Specialty varchar(100),Phone varchar(15),Email varchar(100));
create table Nurses (NurseID int primary key,Name varchar(100),Phone varchar(15),Email varchar(100));
create table  Appointments (AppointmentID int primary key,PatientID int,DoctorID int,AppointmentDate DATE,Reason varchar(200),foreign key (PatientID) references Patients(PatientID),foreign key (DoctorID) references Doctors(DoctorID));
create table Treatments (TreatmentID int primary key,PatientID int,DoctorID int,TreatmentDate DATE,Description TEXT,foreign key (PatientID) references Patients(PatientID),foreign key (DoctorID) references Doctors(DoctorID));
create table Medications (MedicationID int primary key,Name varchar(100),Dosage varchar(50),SideEffects varchar(200));
create table Prescriptions (PrescriptionID int primary key,TreatmentID int,MedicationID int,Dosage varchar(50),Frequency varchar(50),foreign key (TreatmentID) references Treatments(TreatmentID),foreign key (MedicationID) references Medications(MedicationID));
create table Rooms (RoomID int primary key,RoomNumber varchar(10),RoomType varchar(50),Availability BOOLEAN);
create table PatientRooms (PatientID int,RoomID int,foreign key (PatientID) references Patients(PatientID),foreign key (RoomID) references Rooms(RoomID));
INSERT INTO Patients (PatientID, Name, DOB, Gender, Address, Phone, Email) VALUES
 ('John Doe', '1990-01-01', 'Male', '123 Main St', '555-1234', 'john.doe@example.com'),
(2, 'Jane Smith', '1985-02-02', 'Female', '456 Oak St', '555-5678', 'jane.smith@example.com'),
(3, 'Alice Brown', '1987-03-03', 'Female', '789 Pine St', '555-9876', 'alice.brown@example.com'),
(4, 'Bob White', '1982-04-04', 'Male', '101 Maple St', '555-4321', 'bob.white@example.com'),
(5, 'Ann Green', '1992-05-05', 'Female', '202 Birch St', '555-8765', 'ann.green@example.com'),
(6, 'Tom Black', '1989-06-06', 'Male', '303 Cedar St', '555-6543', 'tom.black@example.com'),
(7, 'Harry Potter', '1980-07-07', 'Male', '4 Privet Drive', '555-7788', 'harry.potter@example.com'),
(8, 'Hermione Granger', '1989-08-08', 'Female', '12 Grimmauld Place', '555-8899', 'hermione.granger@example.com'),
(9, 'Ron Weasley', '1989-09-09', 'Male', 'The Burrow', '555-9900', 'ron.weasley@example.com'),
(10, 'Draco Malfoy', '1989-10-10', 'Male', 'Malfoy Manor', '555-1111', 'draco.malfoy@example.com'),
(11, 'Neville Longbottom', '1989-11-11', 'Male', 'Hogwarts', '555-2222', 'neville.longbottom@example.com'),
(12, 'Luna Lovegood', '1989-12-12', 'Female', 'Lovegood House', '555-3333', 'luna.lovegood@example.com'),
(13, 'Ginny Weasley', '1991-01-13', 'Female', 'The Burrow', '555-4444', 'ginny.weasley@example.com'),
(14, 'Albus Dumbledore', '1881-08-18', 'Male', 'Hogwarts', '555-5555', 'albus.dumbledore@example.com'),
(15, 'Severus Snape', '1960-01-09', 'Male', 'Spinner\'s End', '555-6666', 'severus.snape@example.com'),
(16, 'Sirius Black', '1959-11-03', 'Male', '12 Grimmauld Place', '555-7777', 'sirius.black@example.com'),
(17, 'Remus Lupin', '1960-03-10', 'Male', 'Hogwarts', '555-8888', 'remus.lupin@example.com'),
(18, 'Rubeus Hagrid', '1928-12-06', 'Male', 'Hagrid\'s Hut', '555-9999', 'rubeus.hagrid@example.com'),
(19, 'Minerva McGonagall', '1935-10-04', 'Female', 'Hogwarts', '555-1010', 'minerva.mcgonagall@example.com'),
(20, 'Bellatrix Lestrange', '1951-05-02', 'Female', 'Azkaban', '555-1112', 'bellatrix.lestrange@example.com'),
(21, 'Arthur Weasley', '1950-02-06', 'Male', 'The Burrow', '555-1212', 'arthur.weasley@example.com'),
(22, 'Molly Weasley', '1950-10-30', 'Female', 'The Burrow', '555-1313', 'molly.weasley@example.com'),
(23, 'Fred Weasley', '1978-04-01', 'Male', 'The Burrow', '555-1414', 'fred.weasley@example.com'),
(24, 'George Weasley', '1978-04-01', 'Male', 'The Burrow', '555-1515', 'george.weasley@example.com'),
(25, 'Percy Weasley', '1976-08-22', 'Male', 'The Burrow', '555-1616', 'percy.weasley@example.com'),
(26, 'Charlie Weasley', '1972-12-12', 'Male', 'The Burrow', '555-1717', 'charlie.weasley@example.com'),
(27, 'Bill Weasley', '1970-11-29', 'Male', 'The Burrow', '555-1818', 'bill.weasley@example.com'),
(28, 'Fleur Delacour', '1977-02-06', 'Female', 'Shell Cottage', '555-1919', 'fleur.delacour@example.com'),
(29, 'Nymphadora Tonks', '1973-08-01', 'Female', 'Tonks Residence', '555-2020', 'nymphadora.tonks@example.com'),
(30, 'Alastor Moody', '1925-07-20', 'Male', 'Unknown', '555-2121', 'alastor.moody@example.com'),
(31, 'Peter Pettigrew', '1960-09-26', 'Male', 'Unknown', '555-2222', 'peter.pettigrew@example.com'),
(32, 'Lucius Malfoy', '1954-09-11', 'Male', 'Malfoy Manor', '555-2323', 'lucius.malfoy@example.com'),
(33, 'Narcissa Malfoy', '1955-09-29', 'Female', 'Malfoy Manor', '555-2424', 'narcissa.malfoy@example.com'),
(34, 'Dolores Umbridge', '1945-08-26', 'Female', 'Ministry of Magic', '555-2525', 'dolores.umbridge@example.com'),
(35, 'Cornelius Fudge', '1943-01-01', 'Male', 'Ministry of Magic', '555-2626', 'cornelius.fudge@example.com'),
(36, 'Kingsley Shacklebolt', '1955-02-06', 'Male', 'Unknown', '555-2727', 'kingsley.shacklebolt@example.com'),
(37, 'Rita Skeeter', '1953-11-14', 'Female', 'Unknown', '555-2828', 'rita.skeeter@example.com'),
(38, 'Horace Slughorn', '1882-04-28', 'Male', 'Hogwarts', '555-2929', 'horace.slughorn@example.com'),
(39, 'Gilderoy Lockhart', '1964-01-26', 'Male', 'St. Mungo\'s', '555-3030', 'gilderoy.lockhart@example.com'),
(40, 'Cedric Diggory', '1977-09-01', 'Male', 'Hufflepuff House', '555-3131', 'cedric.diggory@example.com'),
(41, 'Viktor Krum', '1976-12-11', 'Male', 'Durmstrang', '555-3232', 'viktor.krum@example.com'),
(42, 'Cho Chang', '1978-05-25', 'Female', 'Ravenclaw House', '555-3333', 'cho.chang@example.com'),
(43, 'Seamus Finnigan', '1980-10-11', 'Male', 'Gryffindor House', '555-3434', 'seamus.finnigan@example.com'),
(44, 'Dean Thomas', '1980-09-01', 'Male', 'Gryffindor House', '555-3535', 'dean.thomas@example.com'),
(45, 'Lavender Brown', '1980-06-01', 'Female', 'Gryffindor House', '555-3636', 'lavender.brown@example.com'),
(46, 'Parvati Patil', '1980-10-14', 'Female', 'Gryffindor House', '555-3737', 'parvati.patil@example.com'),
(47, 'Padma Patil', '1980-10-14', 'Female', 'Ravenclaw House', '555-3838', 'padma.patil@example.com'),
(48, 'Gregory Goyle', '1980-05-01', 'Male', 'Slytherin House', '555-3939', 'gregory.goyle@example.com'),
(49, 'Vincent Crabbe', '1980-06-01', 'Male', 'Slytherin House', '555-4040', 'vincent.crabbe@example.com'),
(50, 'Pansy Parkinson', '1980-11-01', 'Female', 'Slytherin House', '555-4141', 'pansy.parkinson@example.com');
INSERT INTO Doctors (DoctorID, Name, Specialty, Phone, Email) VALUES
(1, 'Dr. Alice Brown', 'Cardiology', '555-1111', 'alice.brown@example.com'),
(2, 'Dr. Bob White', 'Neurology', '555-2222', 'bob.white@example.com'),
(3, 'Dr. Ann Green', 'Orthopedics', '555-3333', 'ann.green@example.com'),
(4, 'Dr. Tom Black', 'Pediatrics', '555-4444', 'tom.black@example.com'),
(5, 'Dr. John Doe', 'Oncology', '555-5555', 'john.doe@example.com'),
(6, 'Dr. Jane Smith', 'Dermatology', '555-6666', 'jane.smith@example.com'),
(7, 'Dr. Richard Roe', 'Cardiology', '555-7777', 'richard.roe@example.com'),
(8, 'Dr. Mary Major', 'Neurology', '555-8888', 'mary.major@example.com'),
(9, 'Dr. Henry Jones', 'Orthopedics', '555-9999', 'henry.jones@example.com'),
(10, 'Dr. Linda Lane', 'Pediatrics', '555-1010', 'linda.lane@example.com'),
(11, 'Dr. James Brown', 'Oncology', '555-1111', 'james.brown@example.com'),
(12, 'Dr. Sarah Green', 'Dermatology', '555-1212', 'sarah.green@example.com'),
(13, 'Dr. Robert Black', 'Cardiology', '555-1313', 'robert.black@example.com'),
(14, 'Dr. Patricia White', 'Neurology', '555-1414', 'patricia.white@example.com'),
(15, 'Dr. Michael Smith', 'Orthopedics', '555-1515', 'michael.smith@example.com'),
(16, 'Dr. Elizabeth Johnson', 'Pediatrics', '555-1616', 'elizabeth.johnson@example.com'),
(17, 'Dr. William Brown', 'Oncology', '555-1717', 'william.brown@example.com'),
(18, 'Dr. Jennifer Davis', 'Dermatology', '555-1818', 'jennifer.davis@example.com'),
(19, 'Dr. Charles Miller', 'Cardiology', '555-1919', 'charles.miller@example.com'),
(20, 'Dr. Barbara Wilson', 'Neurology', '555-2020', 'barbara.wilson@example.com'),
(21, 'Dr. Steven Moore', 'Orthopedics', '555-2121', 'steven.moore@example.com'),
(22, 'Dr. Susan Taylor', 'Pediatrics', '555-2222', 'susan.taylor@example.com'),
(23, 'Dr. Kevin Anderson', 'Oncology', '555-2323', 'kevin.anderson@example.com'),
(24, 'Dr. Carol Thomas', 'Dermatology', '555-2424', 'carol.thomas@example.com'),
(25, 'Dr. Daniel Jackson', 'Cardiology', '555-2525', 'daniel.jackson@example.com');
INSERT INTO Nurses (NurseID, Name, Phone, Email) VALUES
(1, 'Nurse Ann Green', '555-3333', 'ann.green@example.com'),
(2, 'Nurse Tom Black', '555-4444', 'tom.black@example.com'),
(3, 'Nurse John Doe', '555-5555', 'john.doe@example.com'),
(4, 'Nurse Jane Smith', '555-6666', 'jane.smith@example.com'),
(5, 'Nurse Alice Brown', '555-7777', 'alice.brown@example.com'),
(6, 'Nurse Mary Major', '555-8888', 'mary.major@example.com'),
(7, 'Nurse Richard Roe', '555-9999', 'richard.roe@example.com'),
(8, 'Nurse Henry Jones', '555-1010', 'henry.jones@example.com'),
(9, 'Nurse Linda Lane', '555-1111', 'linda.lane@example.com'),
(10, 'Nurse Sarah Green', '555-1212', 'sarah.green@example.com'),
(11, 'Nurse Robert Black', '555-1313', 'robert.black@example.com'),
(12, 'Nurse Patricia White', '555-1414', 'patricia.white@example.com'),
(13, 'Nurse Michael Smith', '555-1515', 'michael.smith@example.com'),
(14, 'Nurse Elizabeth Johnson', '555-1616', 'elizabeth.johnson@example.com'),
(15, 'Nurse William Brown', '555-1717', 'william.brown@example.com'),
(16, 'Nurse Jennifer Davis', '555-1818', 'jennifer.davis@example.com'),
(17, 'Nurse Charles Miller', '555-1919', 'charles.miller@example.com'),
(18, 'Nurse Barbara Wilson', '555-2020', 'barbara.wilson@example.com'),
(19, 'Nurse Steven Moore', '555-2121', 'steven.moore@example.com'),
(20, 'Nurse Susan Taylor', '555-2222', 'susan.taylor@example.com'),
(21, 'Nurse Kevin Anderson', '555-2323', 'kevin.anderson@example.com'),
(22, 'Nurse Carol Thomas', '555-2424', 'carol.thomas@example.com'),
(23, 'Nurse Daniel Jackson', '555-2525', 'daniel.jackson@example.com'),
(24, 'Nurse Sandra White', '555-2626', 'sandra.white@example.com'),
(25, 'Nurse Matthew Harris', '555-2727', 'matthew.harris@example.com'),
(26, 'Nurse Donna Martin', '555-2828', 'donna.martin@example.com'),
(27, 'Nurse Mark Lee', '555-2929', 'mark.lee@example.com'),
(28, 'Nurse Nancy Clark', '555-3030', 'nancy.clark@example.com'),
(29, 'Nurse Timothy King', '555-3131', 'timothy.king@example.com'),
(30, 'Nurse Angela Lewis', '555-3232', 'angela.lewis@example.com'),
(31, 'Nurse Joshua Young', '555-3333', 'joshua.young@example.com'),
(32, 'Nurse Christine Walker', '555-3434', 'christine.walker@example.com'),
(33, 'Nurse Gregory Hall', '555-3535', 'gregory.hall@example.com'),
(34, 'Nurse Debra Allen', '555-3636', 'debra.allen@example.com'),
(35, 'Nurse Frank Wright', '555-3737', 'frank.wright@example.com'),
(36, 'Nurse Margaret Scott', '555-3838', 'margaret.scott@example.com'),
(37, 'Nurse Raymond Hill', '555-3939', 'raymond.hill@example.com'),
(38, 'Nurse Brenda Green', '555-4040', 'brenda.green@example.com'),
(39, 'Nurse Jerry Adams', '555-4141', 'jerry.adams@example.com'),
(40, 'Nurse Janet Nelson', '555-4242', 'janet.nelson@example.com');
INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, Reason) VALUES
(1, 1, 1, '2024-07-10', 'Routine check-up'),
(2, 2, 2, '2024-07-11', 'Neurological evaluation'),
(3, 3, 3, '2024-07-12', 'Orthopedic consultation'),
(4, 4, 4, '2024-07-13', 'Pediatric follow-up'),
(5, 5, 5, '2024-07-14', 'Oncology screening'),
(6, 6, 6, '2024-07-15', 'Skin rash evaluation'),
(7, 7, 7, '2024-07-16', 'Cardiology consultation'),
(8, 8, 8, '2024-07-17', 'Neurology follow-up'),
(9, 9, 9, '2024-07-18', 'Orthopedic follow-up'),
(10, 10, 10, '2024-07-19', 'Pediatric examination');
INSERT INTO Medications (MedicationID, Name, Dosage, SideEffects) VALUES
(1, 'Aspirin', '100mg', 'Nausea, Dizziness'),
(2, 'Ibuprofen', '200mg', 'Upset stomach, Drowsiness'),
(3, 'Acetaminophen', '500mg', 'Allergic reaction, Liver damage'),
(4, 'Metformin', '500mg', 'Stomach upset, Diarrhea'),
(5, 'Amoxicillin', '250mg', 'Rash, Diarrhea'),
(6, 'Lisinopril', '10mg', 'Dizziness, Cough'),
(7, 'Simvastatin', '20mg', 'Muscle pain, Liver problems'),
(8, 'Omeprazole', '20mg', 'Headache, Diarrhea'),
(9, 'Losartan', '50mg', 'Dizziness, Fatigue'),
(10, 'Hydrochlorothiazide', '25mg', 'Dehydration, Dizziness');
INSERT INTO Prescriptions (PrescriptionID, TreatmentID, MedicationID, Dosage, Frequency) VALUES
(1, 1, 1, '100mg', 'Once daily'),
(2, 2, 2, '200mg', 'Twice daily'),
(3, 3, 3, '500mg', 'Once daily'),
(4, 4, 4, '500mg', 'Twice daily'),
(5, 5, 5, '250mg', 'Three times daily'),
(6, 6, 6, '10mg', 'Once daily'),
(7, 7, 7, '20mg', 'Once daily'),
(8, 8, 8, '20mg', 'Once daily'),
(9, 9, 9, '50mg', 'Once daily'),
(10, 10, 10, '25mg', 'Once daily');
INSERT INTO Treatments (TreatmentID, PatientID, DoctorID, TreatmentDate, Description) VALUES
(1, 1, 1, '2024-07-10', 'Initial evaluation and treatment plan'),
(2, 2, 2, '2024-07-11', 'Diagnosis and follow-up plan'),
(3, 3, 3, '2024-07-12', 'Consultation and treatment options discussed'),
(4, 4, 4, '2024-07-13', 'Examination and treatment recommendations'),
(5, 5, 5, '2024-07-14', 'Oncology screening and treatment strategy'),
(6, 6, 6, '2024-07-15', 'Skin condition assessment and treatment'),
(7, 7, 7, '2024-07-16', 'Heart condition evaluation and treatment'),
(8, 8, 8, '2024-07-17', 'Neurological assessment and treatment'),
(9, 9, 9, '2024-07-18', 'Follow-up and orthopedic care'),
(10, 10, 10, '2024-07-19', 'Pediatric assessment and treatment');
INSERT INTO Rooms (RoomID, RoomNumber, RoomType, Availability) VALUES
(1, '101', 'Single', TRUE),
(2, '102', 'Double', TRUE),
(3, '103', 'Suite', TRUE),
(4, '104', 'ICU', FALSE),
(5, '105', 'Single', TRUE),
(6, '106', 'Double', FALSE),
(7, '107', 'Suite', TRUE),
(8, '108', 'ICU', TRUE),
(9, '109', 'Single', TRUE),
(10, '110', 'Double', TRUE);
INSERT INTO PatientRooms (PatientID, RoomID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
Show tables;
SELECT p.Name, a.AppointmentDate, a.Reason
FROM Patients p
JOIN Appointments a ON p.PatientID = a.PatientID;
SELECT d.Name, d.Specialty, a.AppointmentDate
FROM Doctors d
JOIN Appointments a ON d.DoctorID = a.DoctorID;
SELECT p.Name, t.TreatmentDate, t.Description
FROM Patients p
JOIN Treatments t ON p.PatientID = t.PatientID;
SELECT d.Name, t.TreatmentDate, t.Description
FROM Doctors d
JOIN Treatments t ON d.DoctorID = t.DoctorID;
SELECT t.Description, m.Name, p.Dosage
FROM Treatments t
JOIN Prescriptions p ON t.TreatmentID = p.TreatmentID
JOIN Medications m ON p.MedicationID = m.MedicationID;
SELECT p.Name, r.RoomNumber, r.RoomType
FROM Patients p
JOIN PatientRooms pr ON p.PatientID = pr.PatientID
JOIN Rooms r ON pr.RoomID = r.RoomID;
SELECT d.Name AS DoctorName, p.Name AS PatientName, a.AppointmentDate
FROM Doctors d
JOIN Appointments a ON d.DoctorID = a.DoctorID
JOIN Patients p ON a.PatientID = p.PatientID;
SELECT n.Name AS NurseName, p.Name AS PatientName, r.RoomNumber
FROM Nurses n
JOIN PatientRooms pr ON n.NurseID = pr.NurseID
JOIN Patients p ON pr.PatientID = p.PatientID
JOIN Rooms r ON pr.RoomID = r.RoomID;
SELECT p.Name AS PatientName, m.Name AS MedicationName, pr.Dosage, pr.Frequency
FROM Patients p
JOIN Treatments t ON p.PatientID = t.PatientID
JOIN Prescriptions pr ON t.TreatmentID = pr.TreatmentID
JOIN Medications m ON pr.MedicationID = m.MedicationID;
SELECT d.Name AS DoctorName, m.Name AS MedicationName, pr.Dosage, pr.Frequency
FROM Doctors d
JOIN Treatments t ON d.DoctorID = t.DoctorID
JOIN Prescriptions pr ON t.TreatmentID = pr.TreatmentID
JOIN Medications m ON pr.MedicationID = m.MedicationID;
SELECT RoomNumber, RoomType
FROM Rooms
WHERE Availability = TRUE;
SELECT p.Name AS PatientName, d.Name AS DoctorName, COUNT(*) AS InteractionCount
FROM Patients p
JOIN Appointments a ON p.PatientID = a.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID
GROUP BY p.Name, d.Name;
SELECT t.Description, COUNT(pr.MedicationID) AS MedicationCount
FROM Treatments t
JOIN Prescriptions pr ON t.TreatmentID = pr.TreatmentID
GROUP BY t.Description;
SELECT d.Name AS DoctorName, COUNT(t.PatientID) AS PatientsTreated
FROM Doctors d
JOIN Treatments t ON d.DoctorID = t.DoctorID
GROUP BY d.Name;
SELECT p.Name AS PatientName, COUNT(a.AppointmentID) AS AppointmentCount
FROM Patients p
JOIN Appointments a ON p.PatientID = a.PatientID
GROUP BY p.Name
HAVING COUNT(a.AppointmentID) > 1;
SELECT COUNT(*) AS TotalPatients
FROM Patients;
SELECT d.Name, COUNT(a.AppointmentID) AS TotalAppointments
FROM Doctors d
JOIN Appointments a ON d.DoctorID = a.DoctorID
GROUP BY d.Name;
SELECT COUNT(*) AS TotalMedications
FROM Prescriptions;
SELECT MAX(PatientCount) AS MaxPatientsTreated
FROM (SELECT COUNT(t.PatientID) AS PatientCount FROM Doctors d JOIN Treatments t ON d.DoctorID = t.DoctorID
GROUP BY d.Name) AS PatientCounts;
SELECT p.Name
FROM Patients p
WHERE (SELECT COUNT(*) FROM Appointments a WHERE a.PatientID = p.PatientID) >
      (SELECT AVG(AppointmentCount) FROM (SELECT COUNT(*) AS AppointmentCount FROM Appointments GROUP BY PatientID) AS AvgAppointments);
SELECT d.Name
FROM Doctors d
WHERE (SELECT COUNT(*) FROM Treatments t WHERE t.DoctorID = d.DoctorID) >
      (SELECT AVG(TreatmentCount) FROM (SELECT COUNT(*) AS TreatmentCount FROM Treatments GROUP BY DoctorID) AS AvgTreatments);
SELECT r.RoomNumber
FROM Rooms r
WHERE (SELECT COUNT(*) FROM PatientRooms pr WHERE pr.RoomID = r.RoomID) > 1;
SELECT p.Name
FROM Patients p
WHERE (SELECT COUNT(*) FROM Prescriptions pr
       JOIN Treatments t ON pr.TreatmentID = t.TreatmentID
       WHERE t.PatientID = p.PatientID) >
      (SELECT AVG(PrescriptionCount) FROM (SELECT COUNT(*) AS PrescriptionCount FROM Prescriptions GROUP BY TreatmentID) AS AvgPrescriptions);
SELECT d.Name
FROM Doctors d
WHERE (SELECT COUNT(*) FROM Treatments t WHERE t.DoctorID = d.DoctorID) >
      (SELECT AVG(TreatmentCount) FROM (SELECT COUNT(*) AS TreatmentCount FROM Treatments GROUP BY DoctorID) AS AvgTreatments);


