-- Retrieve all customers who are from USA and have a score greater than 500.

SELECT *
FROM customers
WHERE country = 'USA' AND score > 500

-- Retrieve all customers who are either from USA OR have a score greater than 500.

SELECT *
FROM customers
WHERE country = 'USA' OR score > 500

-- Retrieve all customers with a score not less than 500

SELECT *
FROM customers
WHERE NOT score < 500 -- same as WHERE score >= 500

-- Retrieve all customers whose score falls between in the range between 100 and 500 

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500	

-- OR we can also do this as

SELECT *
FROM customers
WHERE score >= 100 AND score <= 500	

-- Retrieve all customers from either Germany of USA.

SELECT *
FROM customers
WHERE country IN ('Germany','USA') -- IN Operator

SELECT *
FROM customers
WHERE country = 'Germany' OR country = 'USA' -- Works same as IN operator but In is more Efficient in long term

-- Find all customers whose first name starts with M

SELECT *
FROM customers
WHERE first_name LIKE 'M%'

-- Find all customers whose first name ends with n

SELECT *
FROM customers
WHERE first_name LIKE '%n'


-- Find all customers whose first name contains r

SELECT *
FROM customers
WHERE first_name LIKE '%r%'

-- Find all customers whose first name have r in the third positon

SELECT *
FROM customers
WHERE first_name LIKE '__r%'
