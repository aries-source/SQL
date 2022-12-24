SELECT 
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders o ,  customers c ,order_statuses os
WHERE  (o.customer_id = c.customer_id) AND (o.status = os.order_status_id)

-- JOIN customers c 
-- 		ON o.customer_id = c.customer_id
-- JOIN order_statuses os
-- 		ON o.status = os.order_status_id
ORDER BY order_date DESC