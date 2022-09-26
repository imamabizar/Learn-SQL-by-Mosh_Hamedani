-- LIMIT CLAUSE
-- to limit the result with a certain number
-- for example, we want to see the product with highest price


SELECT *
FROM products
ORDER BY unit_price DESC
LIMIT 1
