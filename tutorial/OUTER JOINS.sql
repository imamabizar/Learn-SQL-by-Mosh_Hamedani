-- OUTER JOIN


-- JOIN 
SELECT
	c.customer_id, c.first_name, 
    o.order_id
FROM customers c 
JOIN orders o 
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- LEFT OUTER JOIN
SELECT 
	c.customer_id, c.first_name, 
    o.order_id
FROM customers c 
LEFT OUTER JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- RIGHT OUTER JOIN
SELECT *
FROM customers c
RIGHT OUTER JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- OUTER JOIN exercise, to see all the products wether it is ever been ordered or not

USE sql_store;
SELECT 
	p.product_id, p.name, 
    oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id
ORDER BY p.product_id;

