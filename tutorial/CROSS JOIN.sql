-- CROSS JOIN
-- to combine or join every record from the first table, with every record in a second table
-- usefull if your product have different sizes(S, M, L) or colours (red, blue, green)
SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c 
CROSS JOIN products p