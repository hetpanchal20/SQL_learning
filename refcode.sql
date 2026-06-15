CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10,2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5,2)
);
INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
(2, 'Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
(3, 'Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
(4, 'Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
(5, 'Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
(6, 'Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
(7, 'Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
(8, 'Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
(9, 'Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
(10, 'Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);

SELECT * FROM products;
select product_name, quantity,
	CASE
		WHEN quantity>=10 THEN 'In Stock'
		WHEN quantity>=5 and quantity<=9 THEN 'Limited Stock'
		ELSE 'Out Of Stock'
	END 
from products;

select product_name, category,
	CASE
		WHEN category like 'Electronics%' THEN 'Electronics-item'
		WHEN category like 'Accessories%' THEN 'Accessories-item'
		WHEN category like 'Furniture%' THEN 'Furniture-item'
		ELSE 'Accessories-item'
	END 
from products;