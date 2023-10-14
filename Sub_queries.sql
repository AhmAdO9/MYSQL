-- SUBQUIRIES

-- USE sql_store;

-- SELECT * 
-- FROM products
-- WHERE unit_price >
-- 	(SELECT unit_price
-- 	 FROM products
-- 	WHERE product_id = 3
--     )
    

-- IN OPERATOR

-- USE sql_store;

-- SELECT * 
-- FROM products
-- WHERE product_id NOT IN (
-- 	SELECT DISTINCT product_id
-- 	FROM order_items
-- 	)


-- SUBQUIRIES VS JOINS


-- USE sql_invoicing;

-- SELECT *
-- FROM clients
-- WHERE client_id NOT IN (
-- 	SELECT DISTINCT client_id
-- 	FROM invoices
--     );
    
-- SELECT *
-- FROM clients 
-- LEFT JOIN invoices USING (client_id)
-- WHERE invoice_id IS NULL

-- USE sql_store;

-- SELECT DISTINCT first_name, last_name
-- FROM customers c
-- JOIN orders o  USING (customer_id)
-- JOIN order_items oi USING (order_id)
-- WHERE product_id = 3


-- THE ALL KEYWORD


-- USE sql_invoicing;

-- SELECT * 
-- FROM invoices
-- WHERE invoice_total > (
-- 			SELECT MAX(invoice_total)
-- 			FROM invoices
-- 			WHERE client_id =3
--             );
            
-- SELECT *
-- FROM invoices 
-- WHERE invoice_total > 
-- 				ALL (SELECT invoice_total 
--                 FROM invoices 
--                 WHERE client_id = 3)


-- ANY KEYWORD


USE sql_invoicing;

-- SELECT *
-- FROM invoices
-- WHERE invoice_total > SOME (
-- 			SELECT invoice_total
--             FROM invoices
--             WHERE client_id = 3
--             );
            
SELECT client_id, payment_total, count(*)
FROM invoices 
GROUP BY client_id, payment_total

























