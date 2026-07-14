-- How many orders were place in a month
SELECT
DATENAME(MONTH,ORDERDATE) AS month_name,
COUNT(*) Nr_of_Orders
FROM Sales.Orders
GROUP BY DATENAME(MONTH,ORDERDATE)

-- Show all order that we placed during the month of february
SELECT *
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2
