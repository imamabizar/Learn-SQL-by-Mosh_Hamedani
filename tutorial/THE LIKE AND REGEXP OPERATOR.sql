-- LIKE OPERATORS

SELECT * 
FROM customers
WHERE first_name LIKE 'a%';

SELECT * 
FROM customers
WHERE first_name LIKE '%a';


-- REGEXP 
SELECT * 
FROM customers
WHERE first_name REGEXP '^A';

SELECT * 
FROM customers
WHERE last_name REGEXP '%y';