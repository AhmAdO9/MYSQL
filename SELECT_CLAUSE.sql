USE sql_store;
SELECT *
FROM customers
-- ORDER BY birth_date 
-- WHERE points BETWEEN 1000 AND 2000
-- WHERE state IN ('VA','FL','GA')
-- WHERE last_name LIKE 'b%'
-- WHERE last_name LIKE '%b%'
-- WHERE last_name LIKE '%y'
-- WHERE last_name LIKE '_____y'
-- WHERE last_name LIKE'b____y'
-- WHERE last_name REGEXP 'field'
-- WHERE last_name REGEXP '^brush'
-- WHERE last_name REGEXP 'field$'
-- WHERE last_name REGEXP 'field|mac$'
-- WHERE last_name REGEXP 'e[a-c]'
-- WHERE phone IS NULL
-- WHERE phone IS NOT NULL
-- ORDER BY birth_date DESC
-- ORDER BY state , first_name DESC
-- ORDER BY 1,2 columns 1 and column 2
-- LIMIT 3
-- LIMIT 12 since limit is greater than the number of rows , then  we get all the rows
-- limit 6,3 skipping over the first 6 records