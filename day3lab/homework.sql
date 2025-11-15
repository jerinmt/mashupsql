-- filling the table
INSERT INTO books(title, author, price, stockStatus, genre)
VALUES('Alchemist', 'Paulo Coelho', '120', 'In Stock', 'fantasy'),
('Harry Potter Collection', 'JK Rowling', '2000', 'In Stock', 'fantasy'),
('Kasakkinte Ithihasam', 'M Mukundan', '200', 'Out of Stock', 'social drama'),
('Diary of Anne Franke', 'Anne Franke', '560', 'In Stock', 'non-fiction'),
('Ente Sathyanweshana Pareekshanangal', 'MK Gandhi', '250', 'Out of Stock', 'Auto-biography');

-- genres available
SELECT DISTINCT genre FROM products;

-- books in stock and price less than 400
SELECT * FROM products WHERE stockStatus='In Stock' AND price<400;

-- books out of stock or price above than 700
SELECT * FROM products WHERE NOT stockStatus='In Stock' OR price>700;

-- title and price of every book along with 10% GST added
SELECT title, price, (price*1.1) AS "With GST" FROM products;

-- ttle, price and stock status from highest price to lowest
SELECT title, price, stockStatus FROM products ORDER BY price DESC;