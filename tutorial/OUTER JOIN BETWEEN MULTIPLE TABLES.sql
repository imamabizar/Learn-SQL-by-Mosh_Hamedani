-- OUTER JOIN BETWEEN MULTIPLE TABLES
SELECT 
	c.customer_id, c.first_name, 
    o.order_id
FROM customers c 
LEFT OUTER JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;

-- EXERCISE OUTER JOIN BETWEEN MULTIPLE TABLES
-- THE ROWS ARE order_date, order_id, first_name, shipper, status

SELECT 
	o.order_date, o.order_id, 
    c.first_name AS customer, 
    sh.name AS shipper, 
    os.name AS status
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
	ON o.status = os.order_status_id;