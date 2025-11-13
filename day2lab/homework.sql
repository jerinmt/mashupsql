-- add 5 books
INSERT INTO library(title, author, price, genre)
VALUES('Davinci Code', 'Dan Brown', '450', 'fiction'),
    ('The Great Gatsby', 'F Scott Fitzgerals', '350', 'fiction'),
    ('Relativity', 'Albert Einstein', '120', 'science'),
    ('Early India', 'Romila Thapar', '550', 'history'),
    ('Vagabonding', 'Rolf Potts', '280', 'travelogue')
-- books with price more than 400
SELECT * FROM library WHERE price > 400;
-- books in the genres science, history and fiction
SELECT * FROM library WHERE genre IN ('science', 'history', 'fiction');
-- book with title The great gatsby
SELECT * FROM library WHERE title = 'The Great Gatsby';
-- books not written by Dan Brown
SELECT * FROM library WHERE author <> 'Dan Brown';