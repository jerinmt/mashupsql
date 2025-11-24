-- Create a new database
CREATE DATABASE library;
-- Use that database.
USE library;
-- Create a table named books
CREATE TABLE books (book_id INTEGER PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(30) NOT NULL);
INSERT INTO books (title) VALUES ('The Alchemist'), ('The Power of Now'), ('Think and Grow Rich'), ('Clean Code');
-- Create a table named borrowers
CREATE TABLE borrowers (borrower_id INTEGER PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20) NOT NULL, book_id INTEGER REFERENCES books(book_id));
INSERT INTO borrowers VALUES (101, 'Alice', 1), (102, 'Bob', 2), (103, 'Charlie', NULL);
-- Show the list of all books along with the name of the person who borrowed them (if borrowed).
SELECT books.title, borrowers.name FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id;
-- Show the list of all borrowers along with the book details they borrowed (if any).
SELECT borrowers.name, books.title FROM books
JOIN borrowers
ON books.book_id = borrowers.book_id;
-- Show the list of all books that have not been borrowed by anyone.
SELECT books.title 
FROM books
LEFT JOIN borrowers
ON books.book_id=borrowers.book_id 
WHERE borrowers.book_id IS NULL;
-- Show the list of all borrowers even if they haven't borrowed any book.
SELECT borrowers.name FROM books
RIGHT JOIN borrowers
ON books.book_id = borrowers.book_id;