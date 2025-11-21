-- Create a new database called groceryShop.
CREATE DATABASE groceryShop;
-- Use that database.
USE groceryShop;
-- Create a table named products
CREATE TABLE products (product_id INTEGER PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(20) NOT NULL,
price INTEGER NOT NULL);
-- Adding data
INSERT INTO products (product_name, price) VALUES ('Dairy Milk', 50), ('KitKat', 30);
-- Add a new column called category (text) to the same table.
ALTER TABLE products ADD category VARCHAR(10);
-- Remove all items from the products table without deleting the table itself.
TRUNCATE TABLE products;
-- Finally, delete the entire database as it’s no longer needed.
DROP DATABASE groceryShop;
