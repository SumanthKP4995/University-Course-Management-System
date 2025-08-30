-- Insert Students
INSERT INTO students VALUES (1, 'Rahul', 'CSE', 2);
INSERT INTO students VALUES (2, 'Anita', 'ECE', 3);
INSERT INTO students VALUES (3, 'Karan', 'ME', 1);

-- Insert Professors
INSERT INTO professors VALUES (1, 'Dr. Sharma', 'CSE');
INSERT INTO professors VALUES (2, 'Dr. Mehta', 'ECE');

-- Insert Courses
INSERT INTO courses VALUES (101, 'DBMS', 4, 1);
INSERT INTO courses VALUES (102, 'Networks', 3, 2);
INSERT INTO courses VALUES (103, 'Operating Systems', 4, 1);

-- Insert Enrollments
INSERT INTO enrollments VALUES (1, 1, 101, 'A');
INSERT INTO enrollments VALUES (2, 2, 102, 'B');
INSERT INTO enrollments VALUES (3, 1, 103, 'A');
INSERT INTO enrollments VALUES (4, 3, 101, 'C');
