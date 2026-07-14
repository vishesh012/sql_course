-- Find the total Sales per Customer


-- CTE Table
WITH CTE_TotalSales AS
(
	SElECT
	CustomerID,
	SUM(Sales) AS ToatalSales
	FROM Sales.Orders
	GROUP BY CustomerID
)

-- Main Query
SELECT 
c.CustomerID,
c.FirstName,
c.LastName,
cts.ToatalSales
FROM Sales.Customers c
LEFT JOIN CTE_TotalSales cts
on cts.CustomerID = c.CustomerID