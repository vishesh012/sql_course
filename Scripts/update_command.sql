-- Change the score of cusomter 6 to 0

SELECT *
from customers

UPDATE customers
set score = 0
WHERE id = 6

SELECT *
from customers
WHERE id = 6


-- change the score of the customer number 10 to 0 and the country to UK

UPDATE customers
set 
	score = 0,
	country = 'UK'
WHERE id = 9

SELECT *
from customers

-- Update all customer with a NULL score by setting there score to 0

UPDATE customers
set score = 0
WHERE score IS NULL
