-- add 4 students' details
INSERT INTO students(name, age, department, grade)
VALUES('Karthika', '27', 'commerce', '79'),
    ('Archana', '23', 'physics', '90'),
    ('Deepu', '20', 'computer science', '75'),
    ('Sahad', '18', 'english', '50');
-- students with age greater than 20
SELECT * FROM students WHERE age > 20;
-- students in computer science and physics departments
SELECT * FROM students WHERE department IN ('computer science', 'physics');
-- students with grade higher than 90
SELECT * FROM students WHERE grade = 90;
-- students with grade between 70 and 90
SELECT * FROM students WHERE grade BETWEEN 70 AND 90;