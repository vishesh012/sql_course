-- Retrieve all data from customers and orders as separate result.

Select *
From customers;

Select * 
FROM orders;

-- Inner Join
/* Get all customers along with their orders,
	but only for customers who have placed an order.
*/

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id= o.customer_id -- condition on which it will be join  to find common ground

-- Left Join
/* Get all customers along with their orders,
	including those without orders.
*/

SELECT 
	c.id,
	c.first_name,
	c.country,
	o.order_id,
	o.sales,
	o.order_date
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

-- Right join
/* get all customers along with their orders.
including orders without matching orders.
*/

SELECT 
	c.id,
	c.first_name,
	c.country,
	o.order_id,
	o.sales,
	o.order_date
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id


-- Full Join
--	Get all customers and all orders even if there is no match

SELECT * 
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id