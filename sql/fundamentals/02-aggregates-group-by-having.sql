
-- Data Analytics Learning
-- SQL Fundamentals: Aggregate Functions, GROUP BY, HAVING
-- Dataset: Retail Sales
--
-- Assumes the sales table was created by the first lesson.
-- Run 01-select-where-order-by.sql first if needed.

-- 1. Count all sales transactions
SELECT COUNT(*) AS total_sales
FROM sales;

-- 2. Calculate total revenue across all transactions
SELECT SUM(quantity * unit_price) AS total_revenue
FROM sales;

-- 3. Calculate average quantity per sale
SELECT AVG(quantity) AS average_quantity
FROM sales;

-- 4. Find minimum and maximum unit prices
SELECT
    MIN(unit_price) AS minimum_unit_price,
    MAX(unit_price) AS maximum_unit_price
FROM sales;

-- 5. Calculate revenue for each individual transaction
SELECT
    sale_id,
    product,
    quantity,
    unit_price,
    quantity * unit_price AS revenue
FROM sales;

-- 6. Calculate total revenue by product
SELECT
    product,
    SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY product;

-- 7. Calculate total units and revenue by product
SELECT
    product,
    SUM(quantity) AS total_units_sold,
    SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY product;

-- 8. Show only products with more than 3 units sold
SELECT
    product,
    SUM(quantity) AS total_units_sold,
    SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY product
HAVING SUM(quantity) > 3;
