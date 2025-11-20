-- Add 6 students into the students table:
INSERT INTO students ( name, course, score, email, phone, city, bonus_points) VALUES ('Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5), ('Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL), ('Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL), ('Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2), ('Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4), ('Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL);
-- Show the total number of students in each course.
SELECT course, count(course) AS "Number of students" FROM students GROUP BY course;
-- Show the average score for each course, but only for courses where the average score is more than 80.
SELECT course, avg(score) AS "Average" FROM students GROUP BY course HAVING avg(score)>80;
-- Show names and scores of students who are from Chennai or Mumbai.
SELECT name, score FROM students WHERE city IN ('Chennai', 'Mumbai');
-- Show the details of students who don’t have any bonus points.
SELECT * FROM students WHERE bonus_points IS NULL;
-- Combine the list of student names from Chennai and from Mumbai into a single column list (use UNION).
SELECT name FROM students WHERE city='Chennai' UNION SELECT name FROM students WHERE city='Mumbai';