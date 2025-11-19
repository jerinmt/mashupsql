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