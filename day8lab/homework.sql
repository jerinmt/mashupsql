-- Create a new database called BookStoreDB.
CREATE DATABASE BookStoreDB;
-- Select this database to work on.
USE BookStoreDB;
-- Create a table named authors
CREATE TABLE authors (author_id_id INTEGER PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
country VARCHAR(15) NOT NULL);
-- Create another table named books with the following columns:
-- book_id (number, primary key)
-- title (text)
-- price (number)
-- author_id (foreign key referencing authors)
CREATE TABLE books (book_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
title VARCHAR(20) NOT NULL,
price INTEGER NOT NULL,
author_id INTEGER REFERENCES authors(author_id));
-- Add a new column called published_year (number) to the books table.
ALTER TABLE books ADD published_year INTEGER;
-- Delete all rows from the books table without removing the table itself.
TRUNCATE TABLE books;
-- Remove the BookStoreDB completely from the system.
DROP DATABASE BookStoreDB;
