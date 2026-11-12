
-- Data Analytics Learning
-- SQL Fundamentals: JOINs
-- Dataset: Retail Sales
--
-- Run 01-select-where-order-by.sql first.
-- This script creates the products table but does not
-- modify the existing sales table.

-- 1. Create and populate the products table
DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product VARCHAR(50) PRIMARY KEY,
    category VARCHAR(50)
);

INSERT INTO products (product, category)
VALUES
    ('Laptop', 'Electronics'),
    ('Monitor', 'Electronics'),
    ('Keyboard', 'Accessories'),
    ('Tablet', 'Electronics');

-- 2. INNER JOIN: Return matching records only
SELECT
    s.sale_id,
    s.product,
    p.category
FROM sales s
INNER JOIN products p
    ON s.product = p.product;

-- 3. LEFT JOIN: Preserve every sale
SELECT
    s.sale_id,
    s.product,
    p.category
FROM sales s
LEFT JOIN products p
    ON s.product = p.product;

-- 4. FULL OUTER JOIN: Preserve records from both tables
SELECT
    s.sale_id,
    s.product AS sale_product,
    p.product AS catalog_product,
    p.category
FROM sales s
FULL OUTER JOIN products p
    ON s.product = p.product
ORDER BY s.sale_id;

-- 5. Find sales with no matching product record
SELECT
    s.sale_id,
    s.product
FROM sales s
LEFT JOIN products p
    ON s.product = p.product
WHERE p.product IS NULL;

-- 6. Find products that have never been sold
SELECT
    p.product,
    p.category
FROM products p
LEFT JOIN sales s
    ON p.product = s.product
WHERE s.sale_id IS NULL;

-- 7. Aggregate sales by product category
SELECT
    p.category,
    SUM(s.quantity) AS total_units_sold,
    SUM(s.quantity * s.unit_price) AS total_revenue
FROM sales s
INNER JOIN products p
    ON s.product = p.product
GROUP BY p.category
ORDER BY total_revenue DESC;

-- 8. Filter aggregated results using HAVING
SELECT
    p.category,
    SUM(s.quantity) AS total_units_sold,
    SUM(s.quantity * s.unit_price) AS total_revenue
FROM sales s
INNER JOIN products p
    ON s.product = p.product
GROUP BY p.category
HAVING SUM(s.quantity * s.unit_price) > 500
ORDER BY total_revenue DESC;
