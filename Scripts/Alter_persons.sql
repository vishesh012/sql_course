-- Add a new Column called email to the persons table

ALTER TABLE persons
ADD email varchar(50) NOT NULL


SELECT *  
FROM persons

-- Remove the column phone from the persons table

ALTER TABLE persons
DROP COLUMN phone

SELECT *  
FROM persons