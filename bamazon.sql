DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products (
item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(50) NULL,
department_name VARCHAR(20) NULL,
price DECIMAL(12,2) NULL,
stock_quantitity INT NULL,
PRIMARY KEY (item_id)
);

INSERT INTO products 
(product_name, department_name, price, stock_quantitity)
VALUES 
("Art of the Deal", "Books", 0.99, 100000),
("Trump Pillow", "Bedding", 50.00,  500),
("Homemade Watersports Video", "Movies", 999999999.99, 1),
("Trump Steaks", "Food", 250.00, 16),
("Trump: The Game", "Game", 99.99, 12),
("Trump Toilette Spray", "Perfume", 30.00, 1000),
("Trump University Degree", "Documents", .01, 5000),
("Trump Mattress", "Bedding", 400, 10000),
("Forged Kenyan Birth Certificate", "Documents", 1000000, 60000000),
("Fred Trump's Pointy-Headed Ghost Halloween Costume", "Bedding", 10000, 1),
("Tic Tacs", "Aphrodesiac", 1.29, 100000);

SELECT * FROM products;

ALTER TABLE products AUTO_INCREMENT = 1

