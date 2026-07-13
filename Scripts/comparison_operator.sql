-- Retrieves all customer from Germany

SELECT * 
FROM customers
WHERE country = 'Germany'

--Retrieve all customer who are not from Germany

SELECT * 
FROM customers
WHERE country <> 'Germany'

-- Retrieve all customer with a score greater than 500

SELECT * 
FROM customers
WHERE score > 500

-- Retrieve all customer with a score 500 or more

SELECT * 
FROM customers
WHERE score >= 500

-- Retrieve all customer with a score less than 500

SELECT * 
FROM customers
WHERE score < 500

-- Retrieve all customer with a score less than or equal to 500 

SELECT * 
FROM customers
WHERE score <= 500