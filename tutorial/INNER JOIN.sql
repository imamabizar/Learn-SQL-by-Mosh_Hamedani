-- INNER JOIN 

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id
FROM customers c 
INNER JOIN orders o 
	ON c.customer_id = o.customer_id