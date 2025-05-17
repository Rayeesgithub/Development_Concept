CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT
);


CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor VARCHAR(100)
);


CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Students
INSERT INTO Students VALUES (1, 'Alice', 'alice@gmail.com', 20);
INSERT INTO Students VALUES (2, 'Bob', 'bob@gmail.com', 22);

-- Courses
INSERT INTO Courses VALUES (101, 'Math', 'Dr. Smith');
INSERT INTO Courses VALUES (102, 'English', 'Prof. John');

-- Enrollments
INSERT INTO Enrollments VALUES (1, 1, 101, 85);
INSERT INTO Enrollments VALUES (2, 2, 102, 90);
