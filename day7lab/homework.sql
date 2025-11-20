-- The table users has the following columns:
-- id (number)
-- name (text)
-- city (text)
-- score (number)
-- bonus (number – can be NULL)
-- challenge (text)
CREATE TABLE users (  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, name VARCHAR(10) NOT NULL, city VARCHAR(15) NOT NULL, score INT NOT NULL, bonus INT, challenge VARCHAR(15) NOT NULL);
-- Insert records into the users table:
INSERT INTO users(name, city, score, bonus, challenge) VALUES ('Raj', 'Chennai', 88, 5, 'Fitness'),('Anu', 'Mumbai', 91, NULL, 'Diet'),('Ravi', 'Chennai', 78, 3, 'Fitness'),('Meena', 'Delhi', 82, NULL, 'Diet'),('Farah', 'Mumbai', 95, 4, 'Fitness'),('Kiran', 'Pune', 70, NULL, 'Yoga'),('Latha', 'Pune', 87, NULL, 'Fitness');
-- Show the details of users whose score is greater than the average score across all users.
SELECT name, score FROM users WHERE score>(SELECT avg(score) FROM users);
-- Display the names of users who are participating in the same challenge as the user named 'Farah'.
SELECT name FROM users WHERE challenge=(SELECT challenge FROM users WHERE name='Farah');