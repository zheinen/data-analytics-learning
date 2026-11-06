
-- Data Analytics Learning
-- SQL Fundamentals: SELECT, WHERE, ORDER BY
-- First practice dataset: Retail Sales

-- 1. Create our practice table
-- Safe to rerun: this resets the practice table and its data.

DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY,
    product VARCHAR(50),
    quantity INTEGER,
    unit_price NUMERIC(10, 2)
);

-- 2. Insert sample sales data

INSERT INTO sales (sale_id, product, quantity, unit_price)
VALUES
    (1, 'Laptop', 2, 850.00),
    (2, 'Monitor', 3, 220.00),
    (3, 'Keyboard', 5, 65.00),
    (4, 'Laptop', 1, 850.00),
    (5, 'Mouse', 4, 30.00),
    (6, 'Monitor', 2, 220.00);

-- 3. Retrieve all columns

SELECT *
FROM sales;

-- 4. Retrieve specific columns

SELECT product, quantity
FROM sales;

-- 5. Filter sales by quantity

SELECT *
FROM sales
WHERE quantity > 2;

-- 6. Filter by multiple conditions

SELECT *
FROM sales
WHERE quantity >= 2
  AND unit_price > 100;

-- 7. Filter and sort results

SELECT product, quantity, unit_price
FROM sales
WHERE unit_price >= 100
ORDER BY unit_price DESC;

-- 8. Find all laptop sales, largest quantities first

SELECT sale_id, quantity
FROM sales
WHERE product = 'Laptop'
ORDER BY quantity DESC;
