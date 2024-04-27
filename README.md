# institute_db-project
### Problem Statement

This Institute Database Management System is designed to efficiently manage student, course, and enrollment information for an educational institute. The database schema consists of three main tables: Students, Courses, and Enrollments, with appropriate relationships established through foreign key constraints. 
Here's a brief analysis of the system:

### 1 ) Students Table:

Stores essential details about students such as their name, gender, email, phone number, graduation year, and college.
The student_id serves as the primary key, ensuring each student record is uniquely identified.
Additional constraints like NOT NULL and UNIQUE are applied to maintain data integrity.

### 2 ) Courses Table:

Manages information related to courses offered by the institute, including the course name, duration (in months), and fees.
Similar to the Students table, the course_id is set as the primary key to uniquely identify each course record.
The duration and fees columns provide essential details about each course.

### 3 ) Enrollments Table:

Facilitates the enrollment process by linking students to the courses they are enrolled in.
Each enrollment is identified by a unique enrollment_id, and foreign key constraints ensure that student_id and course_id references are valid.
The enrollment_date column captures the date when a student enrolls in a course.

### Sample Queries:

The provided SQL scripts include sample queries for basic CRUD operations and more complex queries like joins.
These queries allow users to retrieve information about students, courses, enrollments, and their relationships.

### REPORT

To give insights from the data, such as student performance analysis, course popularity trends, in which courses people enrolled more and in which one less. On average basis how many students are enrolling in a year , which college joined most . How many boys and girls are there in particular in which they joined. How much fees collected to the total duration of all courses:
