-- BETWEEN OPERATOR

-- return customers born beetween '1990-01-01' and '2000-01-01'
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'