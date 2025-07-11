-- Display the entire students table
SELECT * FROM students;
SELECT * FROM courses;

-- Fetching students who are older than 18 and then sort them by age
-- Now the problem over here is that all of the records of this table are over the age of 18 if we consider currYear as 2025
-- So to solve this lets set the currDate as 1995-01-01
-- We can use the date diff function

-- Date diff looks a little dirty needed to use floor as well 
SELECT student_id, first_name, last_name, gender, house, FLOOR(DATEDIFF('1995-01-01', date_of_birth) / 365) AS age FROM students
WHERE DATEDIFF('1995-01-01', date_of_birth)/365 >= 18 ORDER BY age DESC;

-- Time stamp better 
SELECT student_id, first_name, last_name, gender, house, TIMESTAMPDIFF(YEAR, date_of_birth, '1995-01-01') AS age FROM students
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, '1995-01-01') >= 18 ORDER BY age DESC;
