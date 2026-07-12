-- Retrieve all customers and sort the result by the highest score first

SELECT *
FROM customers

-- Highest score
SELECT *
FROM customers
ORDER BY score DESC

--Lowest score
SELECT *
FROM customers
ORDER BY score 