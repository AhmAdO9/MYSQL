-- NUMERIC FUNCTIONS

-- ROUND 
-- SELECT ROUND(5.73,1)

-- TRUNCATE
-- SELECT TRUNCATE(5.73636, 2)

-- CEILING`
-- SELECT CEILING(5.1)

-- FLOOR
-- SELECT FLOOR(2.3)

-- ABSOLUTE
-- SELECT ABS(-2.5)

-- RANDOM
-- SELECT RAND()

-- STRING FUNCTIONS

-- LENGTH
-- SELECT LENGTH('sky')

-- UPPER AND LOWER

-- SELECT UPPER('sky')
-- SELECT LOWER('SKY')

-- TRIM
-- SELECT TRIM('   SKY    ')

-- LEFT 
-- SELECT LEFT('kindergarten',4)

-- RIGHT
-- SELECT RIGHT('kindergarten', 2)

-- SUBSTRING
-- SELECT SUBSTRING('kindergarten', 3)

-- LOCATE
-- SELECT LOCATE('garten', 'kindergarten')

-- REPLACE
-- SELECT REPLACE('kindergarten', 'garten', 'garden')
 
 
 -- CONCAT
 -- SELECT CONCAT('first', ' last')
 
 
 -- DATE_FUNCTIONS
 
 -- SELECT NOW(), CURDATE(), CURTIME()
 
 -- YEAR
-- SELECT YEAR(NOW()) 
 
-- MONTH
-- SELECT YEAR(NOW())

-- DAY
-- SELECT YEAR(NOW()) 
 
-- HOUR
-- SELECT YEAR(NOW())

-- MINUTE
-- SELECT YEAR(NOW())

-- SECOND
-- SELECT YEAR(NOW())

-- DAYNAME
-- SELECT DAYNAME(NOW())

-- SELECT EXTRACT(DAY FROM NOW())
 
 
 -- FORMATTING DATES AND TIME
 
 -- SELECT DATE_FORMAT(NOW(), '%d %M %Y' ) 
 
 -- SELECT DATE_FORMAT(NOW(), '%h:%i %p' )
 
 
 -- CALCULATING DATES AND TIMES
 
-- SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR)
 
-- DATE_DIFFERENCE
 
-- SELECT DATEDIFF('2019-01-01', '2019-02-01')

 -- TIME_TO_SEC
-- seconds passed from midnight
 -- SELECT TIME_TO_SEC('12:00')
 

-- IFNULL AND COALESCE FUNCTIONS


USE sql_store;

-- select 
-- 	order_id,
--     ifnull(shipper_id, 'Not assigned') AS shippr
-- from orders

-- select 
-- 	order_id,
--     coalesce(shipper_id, comments,order_id, 'Not assigned') AS shipper
-- from orders 


-- IF FUCNTION
 
 
 
 
 
 
 
 
 
 