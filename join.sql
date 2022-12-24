-- SELECT order_id, orders.customer_id,first_name,last_name
-- FROM orders
-- JOIN customers 
-- 				ON customers.customer_id = orders.customer_id

SELECT order_id,p.product_id,name, quantity, o.unit_price
FROM order_items o
JOIN products p 
				ON p.product_id = o.product_id
