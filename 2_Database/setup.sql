CREATE DATABASE university;
USE university;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    program VARCHAR(50),
    grade FLOAT
);

CREATE TABLE instructor (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    dept VARCHAR(50),
    title VARCHAR(50)
);

CREATE TABLE course (
    course_no VARCHAR(20) PRIMARY KEY,
    title VARCHAR(100),
    credits INT,
    syllabus TEXT
);

CREATE TABLE course_offerings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    course_no VARCHAR(20),
    instructor_id INT,
    year INT,
    semester VARCHAR(20),
    secno INT,
    room VARCHAR(50),
    FOREIGN KEY (course_no) REFERENCES course(course_no),
    FOREIGN KEY (instructor_id) REFERENCES instructor(id)
);

CREATE TABLE enrollments (
    student_id INT,
    course_offering_id INT,
    PRIMARY KEY (student_id, course_offering_id),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_offering_id) REFERENCES course_offerings(id)
);