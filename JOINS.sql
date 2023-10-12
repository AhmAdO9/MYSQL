-- USE sql_store;

-- Explicit Joins combining columns from multiple tables

-- SELECT *
-- SELECT first_name, last_name 
-- SELECT first_name, last_name, orders.customer_id
-- SELECT first_name, last_name, customers.customer_id
-- FROM orders 
-- JOIN customers ON orders.customer_id = customers.customer_id 
-- SELECT first_name, last_name, o.customer_id
-- FROM orders o
-- JOIN customers c ON o.customer_id = c.customer_id
-- SELECT *
-- FROM order_items oi 
-- JOIN sql_inventory.products p (working with different database)
-- 	ON oi.product_id = p.product_id
-- USE sql_hr;
-- SELECT *
-- SELECT e.employee_id,
-- 	   e.first_name,
--        m.first_name AS CEO
-- FROM employees e
-- JOIN employees m
-- 	ON e.reports_to = m.employee_id
-- USE sql_store;
-- SELECT 
-- 	o.order_id, o.order_date, c.first_name, c.last_name, os.name AS status
-- FROM customers c
-- JOIN orders o
-- 	ON c.customer_id = o.customer_id
-- JOIN order_statuses os
-- 	ON o.status = os.order_status_id
-- ORDER BY order_id 

-- composite primary keys
-- SELECT *
-- FROM order_items oi
-- JOIN order_item_notes oin
-- 	ON oi.order_id = oin.order_id
--     AND oi.product_id = oin.product_id

-- Implicit JOIN 

-- SELECT *
-- FROM orders o, customers c
-- WHERE o.customer_id = c.customer_id

-- Cross join 

-- SELECT *
-- FROM orders o, customers c

-- Outer Joins 
-- Right
-- left 

-- SELECT 
-- 	c.customer_id,
--     c.first_name,
--     o.order_id
-- FROM customers c
-- LEFT JOIN orders o
-- 	ON c.customer_id = o.customer_id

-- SELECT *
-- FROM customers c
-- LEFT JOIN orders o
-- 	ON c.customer_id = o.customer_id
-- LEFT JOIN shippers sh
-- 	ON o.shipper_id = sh.shipper_id
-- ORDER BY c.customer_id

-- USE sql_hr;
-- SELECT 
-- 	e.employee_id,
--     e.first_name,
--     m.first_name AS CEO
-- FROM  employees e
-- LEFT JOIN employees m
-- 	ON e.reports_to = m.employee_id
    
USE sql_store; 
-- SELECT 
-- 	c.customer_id,
--     c.first_name,
--     o.order_id,
--     sh.name
-- FROM customers c
-- LEFT JOIN orders o
-- 	USING (customer_id)
-- LEFT JOIN shippers sh
-- 	USING (shipper_id)
    
    
-- SELECT *
-- FROM order_items oi
-- JOIN order_item_notes oin 
-- 	ON oi.order_id = oin.order_id 
--     AND oi.product_id = oin.product_id

-- SELECT *
-- FROM order_items oi
-- LEFT JOIN order_item_notes oin
-- 	USING (order_id, product_id )


-- Natural Joins

-- SELECT 
-- 	o.order_id,
--     c.first_name,
--     c.last_name
-- FROM customers c
-- NATURAL JOIN orders o


-- Explicit Cross Joins

-- SELECT *
-- FROM customers c
-- CROSS JOIN products p
-- ORDER BY first_name


-- Implicit Cross Join

-- SELECT *
-- FROM customers c, orders o
-- ORDER BY first_name


-- UNIONS combining rows from multiple tables, number of columns each query return must be same.

-- SELECT 
-- 	order_id,
--     order_date,
--     'Active' AS status
-- FROM orders
-- WHERE order_date >= '2019-01-01'
-- UNION
-- SELECT shippersshippers
-- 	order_id,
--     order_date,
--     'Archived' AS status
-- FROM orders
-- WHERE order_date < '2019-01-01'


-- SELECT first_name
-- FROM customers
-- UNION
-- SELECT name
-- FROM shippers
    
    
    
    
    
    























