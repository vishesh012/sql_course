-- Retrieve only 3 Customers

SELECT *
FROM customers


SELECT TOP 3 *
FROM customers

-- Retrieve the top 3 customers with the highest score
SELECT TOP 3 *
FROM customers
ORDER BY score DESC

-- Retrieve the Lowest 2 Customers based on the score.
SELECT TOP 2 *
FROM customers
ORDER BY score ASC

-- Get the two mose recent orders
SELECT * 
FROM orders
ORDER BY order_date DESC


-- Static Value
SELECT 'Hello' as static_value

SELECT 
id,
first_name,
'NEW Customer' as new_customer
FROM customers