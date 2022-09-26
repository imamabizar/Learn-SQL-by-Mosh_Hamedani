-- THE AND, OR, AND NOT OPERATORS

-- from the order_items table, get the items for order #6
-- where the total price is grater than 30 
SELECT *
FROM order_items
WHERE order_id = 6 AND quantity * unit_price >= 30;

-- RETURN ALL THE PRODUCT
-- NAME, UNIT PRICE, AND NEW PRICE (unit price *1.1) 
USE sql_store;
SELECT 
	name, 
    unit_price, 
    unit_price * 1.1 AS 'NEW PRICE', 
    quantity_in_stock
FROM products;
 
-- get the order placed this year
SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' OR 
	  (points > 1000 AND state = 'VA');
      
-- get the customer except from this state
USE sql_store;
SELECT *
FROM customers
WHERE state NOT IN ('VA', 'TX', 'IL');

-- return products with quantity in stock equal to 49, 38, 72
SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);