-- Drop tables if they exist (for reruns)
DROP TABLE enrollments CASCADE CONSTRAINTS;
DROP TABLE students CASCADE CONSTRAINTS;
DROP TABLE courses CASCADE CONSTRAINTS;
DROP TABLE professors CASCADE CONSTRAINTS;

-- Students table
CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    student_name VARCHAR2(50),
    department VARCHAR2(50),
    year NUMBER
);

-- Professors table
CREATE TABLE professors (
    professor_id NUMBER PRIMARY KEY,
    professor_name VARCHAR2(50),
    department VARCHAR2(50)
);

-- Courses table
CREATE TABLE courses (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(50),
    credits NUMBER,
    professor_id NUMBER,
    FOREIGN KEY (professor_id) REFERENCES professors(professor_id)
);

-- Enrollments table (Many-to-Many relation between students & courses)
CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    grade VARCHAR2(2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
