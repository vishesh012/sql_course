-- Find the total score for each country

SELECT *
FROM customers

SELECT 
	country,
	SUM(score) AS 'Total Score' -- there we are using an alias for the new column of sum of score it is just for output it doen't get save  
FROM customers
GROUP BY country


-- Find the total score and total number of customers for each country

SELECT
	country,
	SUM(score) AS 'Total Score',
	COUNT(id) AS 'Total	Customers'
FROM customers
GROUP BY country