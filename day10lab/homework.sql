-- Create a new database
CREATE DATABASE bookstore;
-- Use that database.
USE bookstore;
-- Create a table named authors
CREATE TABLE authors (author_id INTEGER PRIMARY KEY AUTO_INCREMENT,
author_name VARCHAR(30) NOT NULL, email VARCHAR(30) UNIQUE);
INSERT INTO students (name, email) VALUES ('Alice', 'alicenew@example.com'), ('Bob', 'bob1994@example.com'), ('Charlie', 'charliecharlie@example.com'), ('June', 'junejulyaugust@example.com');
-- Create a table named courses
CREATE TABLE courses (course_id INTEGER PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(10) NOT NULL);
INSERT INTO courses VALUES ('Java'), ('Python'), ('NodeJS');
-- Create a table named enrollments
CREATE TABLE enrollments (id INTEGER PRIMARY KEY AUTO_INCREMENT, student_id INTEGER REFERENCES students(student_id), course_id INTEGER REFERENCES courses(course_id));
INSERT INTO enrollments VALUES (1, 1), (2, 3), (3, 1), (4, 2);
