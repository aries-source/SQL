SELECT 
	p.product_id,
    p.name,
    oi.quantity
    FROM products p 
    LEFT JOIN order_items oi
		ON oi.product_id = p.product_id
    
    