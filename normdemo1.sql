USE bookstore_normalized;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    customer_address VARCHAR(255)
);

INSERT INTO customers VALUES
(1,'John Smith','john@example.com','123 Main St, Anytown'),
(2,'Mary Johnson','mary@example.com','456 Oak Ave, Somewhere'),
(3,'Robert Brown','robert@example.com','789 Pine Rd, Nowhere');

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    isbn VARCHAR(20),
    title VARCHAR(200),
    author VARCHAR(100),
    price DECIMAL(10,2)
);


INSERT INTO books VALUES
(1,'978-0141439518','Pride and Prejudice','Jane Austen',9.99),
(2,'978-0451524935','1984','George Orwell',12.99),
(3,'978-0061120084','To Kill a Mockingbird','Harper Lee',14.99);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);


INSERT INTO orders VALUES
(1,1,'2023-01-15'),
(2,1,'2023-01-15'),
(3,2,'2023-01-20'),
(4,3,'2023-01-25');

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (book_id)
    REFERENCES books(book_id)
);

INSERT INTO order_items VALUES
(1,1,1,1),
(2,2,2,2),
(3,3,3,1),
(4,4,1,1);

SELECT
o.order_id,
c.customer_name,
c.customer_email,
c.customer_address,
b.isbn,
b.title,
b.author,
b.price,
o.order_date,
oi.quantity,
(b.price * oi.quantity) AS total_price
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN books b
ON oi.book_id = b.book_id;