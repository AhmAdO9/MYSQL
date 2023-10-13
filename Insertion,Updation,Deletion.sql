-- USE sql_store;

-- VARCHAR is the better practice than CHAR

-- Inserting a row

-- INSERT INTO customers
-- VALUES(DEFAULT, 'John','Smith', '1990-01-02', NULL,'adress','city','CA',DEFAULT)

-- INSERT INTO customers (first_name, last_name,address, city, state)
-- VALUES('John','Smith', 'adress','city','st')

-- Inserting multiple rows

-- INSERT INTO shippers (name)
-- VALUES ('Shipper1'),
-- 		('Shipper2'),
-- 		('Shipper3')

-- Insertion into multiple tables

-- INSERT INTO orders (customer_id, order_date, status)
-- VALUES (2, '2019-02-02', 1);
-- INSERT INTO order_items
-- VALUES(LAST_INSERT_ID(), 1, 1, 2.95);

-- Creating a copy of a table

-- CREATE TABLE orders_archived AS
-- SELECT * FROM orders

-- INSERT INTO orders_archived
-- SELECT *
-- FROM orders
-- WHERE order_date < '2019-01-01'

-- UPDATING A SINGLE ROW

-- USE sql_invoicing;

-- UPDATE invoices
-- SET payment_total = 10, payment_date = '2019-01-01'
-- WHERE invoice_id = 1

-- UPDATING MULTIPLE ROWS

-- USE sql_invoicing;

-- UPDATE invoices
-- SET payment_total = 10, payment_date = '2019-01-01'
-- WHERE client_id IN (3,4)

-- USING SUBQUERIES IN UPDATES

-- USE sql_invoicing;

-- UPDATE invoices
-- SET payment_total = 10, payment_date = '2019-01-01'
-- WHERE client_id = 
-- 				(SELECT client_id
-- 				FROM clients
-- 				WHERE name = 'Myworks')

-- USE sql_invoicing;

-- UPDATE invoices
-- SET payment_total = 10, payment_date = '2019-01-01'
-- WHERE client_id IN 
-- 				(SELECT client_id
-- 				FROM clients
-- 				WHERE state IN ('CA','NY') )

-- DELETING ROWS

-- DELETE FROM invoices
-- WHERE client_id = 
-- 			(SELECT client_id
-- 			FROM clients 
-- 			WHERE name  = 'Myworks')


-- RESTORING DATABASES





























