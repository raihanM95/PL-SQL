
CREATE DATABASE Lab_Practise;

CREATE TABLE Department (
D_id int not null Primary key,
D_Name varchar(25) not null,
Location varchar(55)
);

CREATE TABLE Student (
S_ID varchar(25) not null Primary key,
S_Name varchar(55) not null,
S_address varchar(25),
D_ID int foreign key references Department(D_ID)
);

CREATE TABLE Course (
C_Code varchar(25) not null Primary key,
C_Name varchar(25) not null,
Credit int,
D_ID int foreign key references Department(D_ID)
);

CREATE TABLE Taken_Course (
S_ID varchar(25) not null foreign key references Student(S_ID),
C_Code varchar(25) not null foreign key references Course(C_Code),
Primary Key (S_ID, C_Code)
);


INSERT INTO Department (D_ID, D_Name, Location) VALUES
(11, 'BBA','Shubanbag'),
(15, 'CSE', 'Shukrabad'),
(35, 'SWE', 'Shukrabad'),
(25,'EEE', 'Shubanbag');

INSERT INTO Student (S_ID, S_Name, S_address, D_ID) VALUES
('171-35-1257', 'Jamal', 'Dhaka', '35'),
('171-35-1258', 'Rakiba', 'Rajshahi', '35'),
('171-35-1259', 'Rakib', 'Dhaka', '35'),
('171-35-1260', 'Jamal', 'Rajshahi', '35'),
('171-11-1261', 'Jamal', 'Khulna', '11'),
('171-11-1262', 'Rakiba', 'Khulna', '11'),
('171-11-1263', 'Rakib', 'Barishal', '11'),
('171-11-1264', 'Jamal', 'Barishal', '11');

INSERT INTO Course(C_Code, C_Name, Credit, D_ID) VALUES 
('SWE423', 'Database', '4', '35'),
('SWE425', 'Telecom', '4', '35'),
('SWE332', 'Network', '4', '35'),
('SWE426', 'Distributive Computing', '4', '35'),
('CS452', 'Database', '4', '11'),
('CS258', 'Network', '4', '11'),
('CS845', 'Telecom', '4', '11')

INSERT INTO Taken_Course(S_ID, C_Code) VALUES
('171-11-1261', 'CS452'),
('171-11-1261', 'CS258'),
('171-11-1261', 'CS845'),
('171-11-1262', 'CS452'),
('171-11-1262', 'CS258'),
('171-11-1262', 'CS845')