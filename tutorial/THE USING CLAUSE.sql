-- USING CLAUSE learn

USE sql_store;
SELECT 
	o.order_id, 
    c.first_name, 
    sh.name AS shipper
FROM orders o 
JOIN customers c
	USING (customer_id)
LEFT JOIN shippers sh
	USING (shipper_id);
    
    
-- USING clause exercise 
USE sql_invoicing;
SELECT 
	p.date, 
    c.name AS clients,
    p.amount, 
    pm. name AS payment_method
FROM payments p
JOIN clients c
	USING (client_id)
JOIN payment_methods pm 
	ON p.payment_method = pm.payment_method_id;