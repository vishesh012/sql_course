-- Set Operations

USE SalesDB

SELECT * 
FROM Sales.Customers

SELECT * 
FROM Sales.Employees

SELECT
CustomerID AS 'ID',
FirstName,
LastName
FROM Sales.Customers


UNION

SELECT
EmployeeID,
FirstName,
LastName
FROM Sales.Employees