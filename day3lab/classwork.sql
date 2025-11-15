-- filling the table
INSERT INTO products(name, category, price, instock)
VALUES('Phone', 'electronics', '12000', 'yes'),
('Laptop', 'electronics', '42000', 'yes'),
('Soap', 'stationary', '40', 'yes'),
('Car', 'vehicle', '2200000', 'no'),
('Bike', 'vehicle', '100000', 'yes'),
('Shirt', 'textile', '1100', 'no');

-- all unique products
SELECT DISTINCT category FROM products;

-- products in stock and price less than 500
SELECT * FROM products WHERE instock='yes' AND price<500;

-- product not in stock or price greater than 1000
SELECT * FROM products WHERE NOT instock='yes' OR price>1000;

-- name and price of products sorted from highest to lowest
SELECT name, price FROM products ORDER BY price DESC;

-- procuct name and price with tax
SELECT name, (price * 1.18) AS "price_with_tax" FROM products;