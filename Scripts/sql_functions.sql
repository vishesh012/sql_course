-- SQL Row Level Functions
-- String Functions
-- Concat
-- Show a list of customer's first name together with their country in one column.
USE MyDatabase
SELECT
	first_name,
	country,
CONCAT(first_name,' - ', country) AS Name_Country
FROM customers

--UPPER / LOWER
-- Convert the customer first name to lowercase
SELECT
	LOWER(first_name) AS 'Lower Case',
	UPPER(first_name) AS 'UPPER Case'
FROM customers

--TRIM
-- Find customers whose first name contains leading or trailing spaces
SELECT
	first_name
FROM customers
WHERE first_name != TRIM(first_name)

-- Removes dashes (-) from a phone number

SELECT	
	'123-456-789' AS Phone,
	REPLACE('123-456-789','-',' / ') AS clean_phone

SELECT
	'text.txt' AS old_filename,
	Replace('text.txt', '.txt', '.csv') AS new_filename

--String Functions LEN
-- Calulate the length of each customer's first name.

SELECT 
first_name,
LEN(first_name) AS len_name
FROM customers

-- String Extraction
-- LEFT / RIGHT

SELECT 
first_name,
LEFT(TRIM(first_name), 2) AS first_2_char,
RIGHT(first_name, 2) AS Last_2_Char
FROM customers

--SubString
SELECT 
first_name,
SUBSTRING(TRIM(first_name) ,2,LEN(first_name)) AS Sub_Name
FROM customers

-- NUMERIC Function
-- ROUND
SELECT	
3.516,
ROUND(3.516,2) AS round_2,
ROUND(3.516,1) AS round_1,
ROUND(3.516,3) AS round_3,
ROUND(3.516,4) AS round_4


--ABS absolute fucntion to get and absolute or positive of any number

SELECT
-10,
ABS(-10) AS 'Absolute'


-- Date and Time Functions

