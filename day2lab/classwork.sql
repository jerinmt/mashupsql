INSERT INTO students(name, age, department, grade)
VALUES('Karthika', '27', 'commerce', '79'),
    ('Archana', '23', 'physics', '90'),
    ('Deepu', '20', 'computer science', '75'),
    ('Sahad', '18', 'english', '50');

SELECT * FROM students WHERE age > 20;

SELECT * FROM students WHERE department IN ('computer science', 'physics');

SELECT * FROM students WHERE grade = 90;

SELECT * FROM students WHERE grade BETWEEN 70 AND 90;