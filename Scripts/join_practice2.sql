/*
	Using SalesDB, retrieves a list of all orders, along with the 
	related customers, product and employee detials.
	For each order, display:
	order id
	customer's name
	product name
	sales amount
	product price
	slaesman's name
*/

USE SalesDB

SELECT * from Sales.Orders
SELECT * FROM Sales.Customers
SELECT * FROM Sales.Employees
SELECT * FROM Sales.OrdersArchive
SELECT * FROM Sales.Products

SELECT
	o.OrderID,
	o.Sales,
	c.FirstName AS 'Customer First Name',
	c.LastName AS 'Customer Last Name',
	p.Product AS 'Product Name',
	p.Price,
	e.FirstName AS 'Employee First Name',
	e.LastName AS 'Employee Last Name'
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers as c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products as p
ON o.ProductID = p.ProductID
LEFT Join Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID


