CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE authors(
author_id INT PRIMARY KEY,
author_name VARCHAR(215)
);
CREATE TABLE books(
book_id INT PRIMARY KEY,
title VARCHAR(130),
author_id INT,
FOREIGN KEY (author_id) REFERENCES authors(author_id),
price DOUBLE,
publication_date DATE
);
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);
CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
order_date DATE
);
CREATE TABLE order_details(
order_detail_id INT PRIMARY KEY,
order_id INT,
book_id INT,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (book_id) REFERENCES books(book_id),
quantity DOUBLE
);
