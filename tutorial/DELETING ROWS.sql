-- DELETING ROWS

DELETE FROM shippers
WHERE shipper_id = 
	(SELECT shipper_id, name
    FROM shippers
    WHERE name = 'jihan'
)