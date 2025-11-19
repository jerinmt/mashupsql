-- Add 3 books into the books table
INSERT INTO books (title, author, genre, price, copiessold) VALUES ('The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200), ('Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000), ('The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);
-- Add 2 books into the bestsellers table
INSERT INTO bestsellers (title, author, genre, price, copiessold) VALUES ('Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
('Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);
-- Show the list of all books from both tables, displaying only the title and author.
SELECT title, author FROM books UNION SELECT title, author FROM bestsellers;
-- Display all books from the books table where the price is greater than 400.
SELECT * FROM books WHERE price>400;
-- Show the average price of books in the books table.
SELECT avg(price) AS "Average" FROM books;
-- Display the number of books in the books table using a count.
SELECT count(title) AS "Average" FROM books;
-- Show the title and author from books table with aliases Book Title and Written By.
SELECT title AS "Book Title", author AS "Written by" FROM books;