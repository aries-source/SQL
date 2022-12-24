SELECT 
	o.order_date,
    o.order_id,
	c.first_name,
    sh.name AS shipper,
    os.name as status
FROM customers c 
LEFT JOIN orders o 
		ON o.customer_id = c.customer_id
LEFT JOIN order_statuses os
		ON os.order_status_id = o.status
LEFT JOIN shippers sh 
		ON o.shipper_id = sh.shipper_id

        

    