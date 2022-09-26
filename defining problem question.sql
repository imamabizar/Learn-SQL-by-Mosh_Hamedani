-- what is the most sold products?, and use these results to find out who bought those products 

WITH The_Best_Selling_Product AS (
	SELECT 
	  p.product_id,
      p.name AS product,
      SUM(oi.quantity*oi.unit_price) AS Product_Revenue
	FROM orders o
	JOIN order_items oi 
	  ON o.order_id = oi.order_id
	JOIN products p
	  ON oi.product_id = p.product_id
	GROUP BY 1,2
	ORDER BY 3 DESC
	LIMIT 1 
)
SELECT 
	bsp.product_id,
    bsp.product AS name,
    SUM(oi.quantity*oi.unit_price) AS amount_spent,
    c.customer_id, c.first_name, c.last_name
FROM customers c
JOIN orders o
	ON o.customer_id = c.customer_id
JOIN order_items oi
	ON oi.order_id = o.order_id
JOIN products p
	ON p.product_id = oi.product_id
JOIN The_Best_Selling_Product bsp
	ON bsp.product_id = p.product_id
GROUP BY 1,2,4,5,6
ORDER BY 3 DESC;


/* which customer spend the most money? and what product did they purchased? */
SELECT 
	c.customer_id, c.first_name, c.last_name,
    SUM(oi.quantity*oi.unit_price) AS amount_spent,
    p.product_id, p.name AS products
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY 1,2,3,5,6
ORDER BY 4 DESC;


/** amount spent in total **/
SELECT 
	c.customer_id, c.first_name, c.last_name,
    SUM(oi.quantity*oi.unit_price) AS amount_spent
    -- p.product_id, p.name AS products
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY 1,2,3
ORDER BY 4 DESC;


/* categorize customers by their points */
USE sql_store;
SELECT customer_id, first_name, last_name, points,
CASE 
WHEN points <999 THEN 'bronze customer'
    WHEN points BETWEEN 1000 AND 2999 THEN 'silver customer'
    WHEN points >3000 THEN 'gold customer'
END AS customer_level
FROM customers
ORDER BY points DESC;


-- how many times customer number 5 made an order?
USE sql_store;
SELECT 
	o.customer_id, 
    first_name,
    COUNT(*) AS total_orders
FROM orders o
JOIN customers c 
	ON c.customer_id = o.customer_id
WHERE o.customer_id = 5
GROUP BY 1, 2