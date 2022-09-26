-- NATURAL JOIN
-- can produce unexpected result
-- because we didn't specify certain column

SELECT *
FROM orders o
NATURAL JOIN customers c