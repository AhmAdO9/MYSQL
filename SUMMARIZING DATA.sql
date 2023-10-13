-- USE sql_invoicing;

-- SELECT 
-- 	MAX(invoice_total) AS highest,
--     MIN(invoice_total) AS lowest,
--     AVG(invoice_total) AS average,
--     SUM(invoice_total) AS total,
--     COUNT(invoice_total) AS total_invoices,
--     COUNT(payment_date) AS total_payments,
--     -- COUNT(*) AS total_records
--     COUNT(DISTINCT client_id) AS total_records
-- FROM invoices
-- WHERE invoice_id IN (1,2)

-- GROUP BY 

-- USE sql_invoicing;
-- SELECT
-- 	c.state,
--     c.city,
-- 	SUM(invoice_total) AS total_sales
-- FROM invoices i 
-- JOIN clients c USING (client_id)
-- GROUP BY c.state, c.city






-- HAVING CLAUSE 

-- USE sql_invoicing;
-- SELECT
-- 	c.state,
-- 	c.city,
-- 	SUM(invoice_total) AS total_sales
-- FROM invoices i 
-- JOIN clients c USING (client_id)
-- GROUP BY c.state, c.city
-- HAVING total_sales > 500


-- ROLLUP OPERATOR

USE sql_invoicing;
SELECT
	state,
    city,
 	SUM(invoice_total) AS total_sales
 FROM invoices i
 JOIN clients c USING (client_id)
 GROUP BY state, city  WITH ROLLUP
 















