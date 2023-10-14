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


-- USE sql_invoicing;

-- SELECT *
-- FROM invoices
-- WHERE invoice_total > SOME (
-- 			SELECT invoice_total
--             FROM invoices
--             WHERE client_id = 3
--             );
            
-- SELECT *
-- FROM clients
-- WHERE client_id = ANY (
-- 				SELECT client_id
--                 FROM invoices
--                 GROUP BY client_id 
--                 HAVING COUNT(*) >= 2
--                 )


-- CORRELATED SUBQUERIES; works just like a nested for-Loop, that is, kinda' slowIsh


-- USE sql_hr;

-- SELECT *
-- FROM employees e
-- WHERE salary > (
-- 			SELECT AVG(salary)
--             FROM employees
--             WHERE office_id = e.office_id
--             )

-- THE EXISTS OPERATOR

USE sql_invoicing;

-- SELECT *
-- FROM clients
-- WHERE client_id IN 
-- 		(	
--         SELECT client_id
--         FROM invoices
-- 		)

-- SELECT *
-- FROM clients c
-- WHERE EXISTS (
-- 	SELECT client_id
--     FROM invoices
--     WHERE client_id = c.client_id
--     )


-- SUBQUIRIES IN THE SELECT CLAUSE

-- SELECT 
-- 	invoice_id,
--     invoice_total,
--     (SELECT AVG(invoice_total)
--     FROM invoices) AS invoice_average,
-- 	invoice_total - (SELECT invoice_average) AS difference
-- FROM invoices


-- SELECT 
-- 		name,
-- 		(
-- 		SELECT SUM(invoice_total)
--         FROM invoices
--         WHERE client_id = c.client_id
--         ) AS total_sales,
--         (
-- 		SELECT AVG(invoice_total)
--         FROM invoices
--         ) AS average,
--         (SELECT total_sales)-(SELECT average) AS difference
--         
-- FROM clients c  
-- HAVING total_sales IS NOT NULL    


-- SUBQUERIES IN THE FROM CLAUSE


-- SELECT *
-- FROM  
-- (
-- 		SELECT 
--         
-- 			client_id,
-- 			name,
-- 			(
-- 			SELECT SUM(invoice_total)
-- 			FROM invoices
-- 			WHERE client_id = c.client_id
-- 			) AS total_sales,
-- 			(
-- 			SELECT AVG(invoice_total)
-- 			FROM invoices
-- 			) AS average,
-- 			(SELECT total_sales)-(SELECT average) AS difference
--             
-- 		FROM clients c  
-- 		HAVING total_sales IS NOT NULL  

-- ) AS sales_summary
-- WHERE client_id = 3




































