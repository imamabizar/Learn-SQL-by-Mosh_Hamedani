-- INSERTING HIERARCHICAL DATA

INSERT INTO orders (customer_id, order_date, status)
	VALUES (1, 2022-09-25, 1);
    

-- check what is the last insert id 
INSERT INTO order_items 
VALUES 
	(LAST_INSERT_ID(), 1, 1, 2.95),
    (LAST_INSERT_ID(), 2, 1, 3.15)

 
