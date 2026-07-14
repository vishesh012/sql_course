-- SubQueries
--FROM CLAUSE
/* Find the products that have a price 
	higher than the average price of all products.
*/
SELECT *
FROM
	--Sub Query
	(SELECT
		ProductID,
		Price,
	AVG(Price) OVER() AVGPrice
	FROM Sales.Products) t

WHERE Price>AVGPrice

-- Rank the customers based on there total amount of sale

--Main Query
SELECT *,
RANK() OVER(ORDER BY TotalSales ) CustomerRank
FROM
	--Sub Query
	(SELECT 
	CustomerID,
	SUM(Sales) TotalSales
	FROM Sales.Orders
	GROUP BY CustomerID) T


-- SELECT CLAUSE
-- Show the product IDs, Product names, prices, and the total number of orders.

SELECT 
	ProductID,
	Product,
	price,
	--Sub Query
	(SELECT COUNT(*) AS TotalOrders FROM Sales.Orders) TotalOrders
FROM Sales.Products



-- JOIN Sub Query
-- Show all customers details and find the total orders of each customer

-- Main Query
SELECT 
c.*,
o.TotalOrders
FROM Sales.Customers c
LEFT JOIN (
	--SUB Query
	SELECT
	CustomerID,
	COUNT(*) AS TotalOrders
	FROM Sales.Orders
	GROUP BY CustomerID) o
ON c.CustomerID = o.CustomerID

