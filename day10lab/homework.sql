-- Create a new database
CREATE DATABASE bookstore;
-- Use that database.
USE bookstore;
-- Create a table named authors
CREATE TABLE authors (author_id INTEGER AUTO_INCREMENT,
author_name VARCHAR(30) NOT NULL, email VARCHAR(30));
INSERT INTO authors (author_name, email) VALUES ('Bob', 'bob1994@example.com'), ('Charlie', 'charliecharlie@example.com'), ('June', 'junejulyaugust@example.com');
-- Create a table named books
CREATE TABLE books (book_id INTEGER AUTO_INCREMENT,
book_title VARCHAR(10) NOT NULL, author_id INTEGER);
INSERT INTO books VALUES ('Java 4 All', 1), ('Python Made Easy', 2), ('NodeJS- A study', 3);
-- No two authors can have the same email address.
ALTER TABLE authors ADD UNIQUE (email);
-- Each author and book must have a unique ID.
ALTER TABLE authors ADD PRIMARY KEY (author_id);
ALTER TABLE books ADD PRIMARY KEY (book_id);
-- Each book must be linked to an existing author.
ALTER TABLE books ADD FOREIGN KEY (author_id) REFERENCES authors(author_id);
