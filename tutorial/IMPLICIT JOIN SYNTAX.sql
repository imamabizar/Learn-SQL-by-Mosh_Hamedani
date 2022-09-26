-- IMPLICIT JOIN SYNTAX

-- explicit
SELECT *
FROM orders o 
JOIN customers c 
	ON o.customer_id = c.customer_id;


-- implicit
SELECT *
FROM orders o, customers c 
WHERE o.customer_id = c.customer_id;
    
-- don't forget to use WHERE CLAUSE, because we will get hundreds of record,
-- because every record in orders table, is now joined with every record in customers table 
-- we call this a 'cross join'
SELECT *
FROM orders o, customers c 