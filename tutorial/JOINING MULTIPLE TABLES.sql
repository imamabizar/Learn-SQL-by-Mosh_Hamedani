-- JOINING MULTIPLE TABLES 


SELECT 
	c.customer_id,
    c.first_name, 
    c.last_name,
    o.order_id,
    p.name AS product
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN order_items oi
	ON o.order_id = oi.order_id
LEFT JOIN products p
	ON oi.product_id = p.product_id