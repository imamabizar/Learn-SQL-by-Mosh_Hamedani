-- UPDATING A SINGLE ROW
-- change the status of the order from 'Processed' to 'Shipped'

UPDATE orders
SET status = 2
WHERE order_id = 11