/* Find the average score for each country
	considering only customers with a score not equal to 0
	and return only those countries with an average score greater than 430
*/

SELECT *
FROM customers


SELECT 
	country,
	AVG(score) AS 'Average Score'
FROM customers 
WHERE score != 0
GROUP BY country
Having AVG(score) > 430

