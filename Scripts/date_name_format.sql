SELECT
OrderID,
CreationTime,
FORMAT(	CreationTime,'MM-dd-yyyy') 'USA-Format',
FORMAT(	CreationTime,'dd-MM-yyyy') 'IND-Format',
FORMAT(CreationTime,'dd') dd,
FORMAT(CreationTime,'ddd') ddd,
FORMAT(CreationTime,'dddd') dddd,
FORMAT(CreationTime,'MM') mm,
FORMAT(CreationTime,'MMM') mmm,
FORMAT(CreationTime,'MMMM') mmmm
FROM Sales.Orders


-- Show creation time using the following format:
-- DAY WED Jan Q1 2025 12:34:56 P.M

SELECT
OrderID,
CreationTime,
'Day ' + FORMAT(CreationTime,'ddd MMM') + 
' Q' + DATENAME(QUARTER, CreationTime) + ' ' +
FORMAT(CreationTime, 'yyyy hh:mm:ss tt')AS Customformat
FROM Sales.Orders