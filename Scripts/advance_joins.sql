-- Advance Joins

SELECT *
FROM customers ;

SELECT *
FROM orders;

-- ANTI LEFT JOIN
-- Get all customers who haven't placed any order.

SELECT *
FROM customers AS c
LEFT JOIN orders as o
ON c.id = o.customer_id
WHERE o.customer_id is NULL;

-- ANTI RIGHT JOIN
-- Get all orders without valis customers 
SELECT *
fROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id is NULL

-- FULL ANTI JOIN 
-- Find customers without orders and orders without customers.

SELECT * 
FROM orders as o
FULL JOIN customers as c
ON c.id  = o.customer_id
WHERE c.id is NULL OR o.customer_id is NULL