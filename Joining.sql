-- Since I know for a fact that all students have enrolled into a course, I joined the enrollments and courses table
-- to see the student_ids which were enrolled for a particular course
-- and then it was simple to join the student table with the combo table of (enrollment and courses) using the student_id from both the enrollment and students table

-- Fetched the student details, but it would look even better if I could concat the first and last name

SELECT CONCAT_WS(" ", s.first_name, s.last_name) AS name, s.gender, s.house, c.course_name, c.professor FROM students s 
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;