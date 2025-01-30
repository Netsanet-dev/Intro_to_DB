CREATE TABLE Books(
PRIMARY KEY (book_id),
title VARCHAR(130),
FOREIGN KEY (author_id) REFERENCES Authors,
price DOUBLE,
publication_date DATE
);
CREATE TABLE Authors(
PRIMARY KEY (author_id),
author_name VARCHAR(215)
);
CREATE TABLE Customers(
PRIMARY KEY (customer_id),
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);
CREATE TABLE Orders(
PRIMARY KEY (order_id),
FOREIGN KEY (customer_id) REFERENCES Customers,
order_date DATE
);
CREATE TABLE Order_Details(
PRIMARY KEY (order_detail_id),
FOREIGN KEY(order_id) REFERENCES Orders,
FOREIGN KEY(book_id) REFERENCES Books,
quantity DOUBLE
);