-- Date and Time Functions
USE SalesDB

SELECT
OrderID,
CreationTime,
'2025-08-2022' HardCoded,
GETDATE() Today
FROM Sales.Orders

SELECT 
ORDERID,
CreationTime,
YEAR(CreationTime) Year,
MONTH(CreationTime) Month,
DAY(CreationTime) Day,
DATEPART(WEEK, CreationTime ) WEEK_COUNT,
DATEPART(MONTH, CreationTime ) MONTH_COUNT,
DATEPART(HOUR, CreationTime ) HOUR_COUNT,
DATEPART(MINUTE, CreationTime ) MINUTE_COUNT,
DATEPART(QUARTER, CreationTime ) QUARTER_COUNT,
DATEPART(WEEKDAY, CreationTime ) WEEKDAY_COUNT,
DATENAME(MONTH,CreationTime) MONTH_NAME,
DATENAME(WEEKDAY,CreationTime) WEEK_NAME,
DATENAME(DAY,CreationTime) DAY_NAME, -- it will give number only but in string data type

--Date Trunc
DATETRUNC(MINUTE,CreationTime) Minute_dt,
DATETRUNC(DAY,CreationTime) Day_dt,
DATETRUNC(YEAR,CreationTime) Year_dt,

--EOMONTH end of the month
EOMONTH(CreationTime) End_of_the_month
FROM Sales.Orders

