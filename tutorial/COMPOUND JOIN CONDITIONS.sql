-- COMPOUND JOIN CONDITIONS

select *
from order_items as oi
join order_item_notes as oin
	on oi.order_id = oin.order_id 
    and oi.product_id = oin.product_id;