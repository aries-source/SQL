SELECT 
	p.payment_id,
    p.date,
    p.amount,
	c.name,
    c.address,
    pm.name as Payment_method
FROM payments p 
JOIN clients c 
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id