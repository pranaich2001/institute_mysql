-- Create the database
CREATE DATABASE IF NOT EXISTS institute_db;
USE institute_db;
-- Create the Students table
CREATE TABLE IF NOT EXISTS Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    Gender Varchar(10),
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    graduation_year YEAR,
	college VARCHAR(150)
);
-- Create the Courses table
CREATE TABLE IF NOT EXISTS Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration INT, -- Duration of the course in months
    fees DECIMAL(10, 2) -- Fees for the course
);
-- Create the Enrollments table
CREATE TABLE IF NOT EXISTS Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
-- Inserting data into Students table
INSERT INTO Students (name, Gender, email, phone, graduation_year, college) 
VALUES
('Ravi Kumar', 'Male', 'ravikumar01@gmail.com', '+91 9876543210', '2023', 'Indian Institute of Technology'),
('Priya Sharma', 'Female', 'priyasharma02@gmail.com', '+91 8765432109', '2022', 'Indian Institute of Technology'),
('Amit Singh', 'Male', 'amitsingh03@gmail.com', '+91 7654321098', '2022', 'Indian Institute of Technology'),
('Neha Patel', 'Female', 'nehapatel04@gmail.com', '+91 6543210987', '2021', 'Jawaharlal Nehru Technological University'),
('Anjali Gupta', 'Female', 'anjali.gupta05@gmail.com', '+91 5432109876', '2021', 'Jawaharlal Nehru Technological University'),
('Sandeep Verma', 'Male', 'sandeep.verma06@gmail.com', '+91 4321098765', '2022', 'Indian Institute of Technology'),
('Divya Joshi', 'Female', 'divya.joshi07@gmail.com', '+91 3210987654', '2023', 'Anurag University'),
('Rajesh Tiwari', 'Male', 'rajesh.tiwari08@gmail.com', '+91 2109876543', '2021', 'Indian Institute of Technology'),
('Pooja Reddy', 'Female', 'pooja.reddy09@gmail.com', '+91 1098765432', '2022', 'Jawaharlal Nehru Technological University'),
('Vivek Singhania', 'Male', 'vivek.singhania10@gmail.com', '+91 0987654321', '2023', 'Indian Institute of Technology'),
('Kavita Sharma', 'Female', 'kavita.sharma11@gmail.com', '+91 9876543210', '2022', 'Anurag University'),
('Aryan Kapoor', 'Male', 'aryan.kapoor12@gmail.com', '+91 8765432109', '2021', 'Chaitanya Bharathi Institute of Technology '),
('Sanjay Patel', 'Male', 'sanjay.patel13@gmail.com', '+91 7654321098', '2022', 'Jawaharlal Nehru Technological University'),
('Shweta Desai', 'Female', 'shweta.desai14@gmail.com', '+91 6543210987', '2022', 'Osmania University'),
('Ananya Mishra', 'Female', 'ananya.mishra15@gmail.com', '+91 5432109876', '2023', 'Anurag University'),
('Rahul Gupta', 'Male', 'rahul.gupta16@gmail.com', '+91 4321098765', '2023', 'Anurag University'),
('Nikhil Sharma', 'Male', 'nikhil.sharma17@gmail.com', '+91 3210987654', '2023', 'Chaitanya Bharathi Institute of Technology '),
('Sonal Verma', 'Female', 'sonal.verma18@gmail.com', '+91 2109876543', '2021', 'Chaitanya Bharathi Institute of Technology '),
('Amita Das', 'Female', 'amita.das19@gmail.com', '+91 1098765432', '2022', 'Anurag University'),
('Rajeev Kumar', 'Male', 'rajeev.kumar20@gmail.com', '+91 0987654321', '2023', 'Osmania University'),
('Kritika Singh', 'Female', 'kritika.singh21@gmail.com', '+91 9876543210', '2022', 'Anurag University'),
('Gaurav Gupta', 'Male', 'gaurav.gupta22@gmail.com', '+91 8765432109', '2021', 'Osmania University'),
('Swati Patel', 'Female', 'swati.patel23@gmail.com', '+91 7654321098', '2021', 'Anurag University'),
('Rohit Sharma', 'Male', 'rohit.sharma24@gmail.com', '+91 6543210987', '2022', 'Chaitanya Bharathi Institute of Technology '),
('Preeti Tiwari', 'Female', 'preeti.tiwari25@gmail.com', '+91 5432109876', '2023', 'Anurag University');


-- Inserting data in courses table

INSERT INTO Courses (course_name, duration, fees) 
VALUES
('Full Stack Web Development', 6, 8000.00),
('Data Analysis with Python', 8, 10000.00),
('Mobile App Development with React Native', 6, 9000.00),
('Cloud Computing Fundamentals', 4, 7000.00),
('Ethical Hacking and Cybersecurity', 10, 12000.00);

-- Inserting data into enrollments table
INSERT INTO Enrollments (student_id, course_id, enrollment_date) 
VALUES
(1, 1, '2023-01-15'),
(2, 2, '2023-02-20'),
(3, 1, '2023-03-10'),
(4, 3, '2023-04-05'),
(5, 2, '2023-04-12'),
(6, 3, '2023-04-12'),
(7, 4, '2023-04-25'),
(8, 5, '2023-01-03'),
(9, 1, '2023-01-19'),
(10, 4, '2023-01-28'),
(11, 1, '2023-01-15'),
(12, 2, '2023-02-20'),
(13, 1, '2023-03-10'),
(14, 3, '2023-04-05'),
(15, 2, '2023-02-12'),
(16, 3, '2023-02-18'),
(17, 4, '2023-03-25'),
(18, 5, '2023-01-03'),
(19, 3, '2023-04-19'),
(20, 4, '2023-02-28'),
(21, 3, '2023-03-18'),
(22, 4, '2023-01-25'),
(23, 5, '2023-01-03'),
(24, 5, '2023-04-19'),
(25, 4, '2023-03-28');



-- Select all students:
select * from Students;

-- Select all courses:
select * from courses;

-- Select all enrollments:
select * from enrollments;

-- Select student by ID (e.g., ID=1):
SELECT * FROM Students WHERE student_id = 1;

-- Select enrollments by student ID (e.g., ID=1):
SELECT * FROM Enrollments WHERE student_id = 2;

-- Select enrollments by course ID (e.g., ID=1):
SELECT * FROM Courses WHERE course_id = 5;

-- Select courses by fees less than a certain value (e.g., fees < 1000):
SELECT * FROM Courses WHERE fees < 9000;

-- Select enrollments made after a specific date (e.g., enrollment_date > '2023-01-01'):
SELECT * FROM Enrollments WHERE enrollment_date > '2023-03-01';

-- Select students who graduated in a specific year (e.g., graduation_year=2023):
SELECT * FROM Students WHERE graduation_year = 2023;

-- Select enrollments with enrollment date between two specific dates (e.g., '2023-01-01' and '2023-04-31):
SELECT * FROM Enrollments WHERE enrollment_date BETWEEN '2023-01-01' AND '2023-04-31';

-- Select students who graduated from a specific college (e.g., college='Anurag University'):
SELECT * FROM Students WHERE college = 'Anurag University';

-- Count the total number of students:
SELECT COUNT(*) AS total_students FROM Students;

-- Calculate the average duration of all courses:
SELECT AVG(duration) AS average_duration FROM Courses;

-- Find the maximum fee among all courses:
SELECT MAX(fees) AS max_fee FROM Courses;

-- Count the number of enrollments for each course:
SELECT course_id, COUNT(*) AS enrollment_count FROM Enrollments GROUP BY course_id;

-- Calculate the total fees collected from all enrollments:
SELECT SUM(Courses.fees) AS total_fees_collected 
FROM Enrollments 
JOIN Courses ON Enrollments.course_id = Courses.course_id;

-- Number of male and female students enrolled:
SELECT Gender, COUNT(*) AS count 
FROM Students 
GROUP BY Gender;

-- Average number of courses enrolled per student:
SELECT AVG(course_count) AS average_courses_per_student 
FROM (SELECT student_id, COUNT(*) AS course_count FROM Enrollments GROUP BY student_id) AS course_counts;


