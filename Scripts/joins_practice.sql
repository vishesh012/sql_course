/* 
	Get all customers along with their orders,
	but only for customers who have placed an order
*/

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
on c.id = o.customer_id
WHERE o.order_id IS NOT NULL

-- CROSS JOIN
-- Generate all possible combinations of customers and orders.

SELECT *
FROM customers
CROSS JOIN orders

