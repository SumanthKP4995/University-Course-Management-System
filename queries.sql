-- 1. Show all students with their courses
SELECT s.student_name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- 2. Find courses taught by a specific professor
SELECT p.professor_name, c.course_name
FROM professors p
JOIN courses c ON p.professor_id = c.professor_id
WHERE p.professor_name = 'Dr. Sharma';

-- 3. Department-wise student count
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;

-- 4. Average grade per course (if grades are numeric later)
-- Example placeholder: using decode
SELECT c.course_name, AVG(
    DECODE(e.grade, 'A', 10, 'B', 8, 'C', 6, 0)
) AS avg_score
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;
