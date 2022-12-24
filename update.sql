-- UPDATE products 
-- SET unit_price = 20.00
-- WHERE product_id = 13


-- USE sql_store;

-- CREATE TABLE products_archived

-- SELECT* FROM products 

-- This will change all entries in the products_archived table 
-- UPDATE products_archived

-- SET quantity_in_stock = 100


-- UPDATE customers 
-- SET points = points + 50
-- WHERE birth_date < '1990-01-01'


USE sql_invoicing;

UPDATE invoices 
SET 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = 
				(SELECT client_id
				FROM clients
				WHERE name = 'Myworks')
                
                
-- SELECT client_id
-- FROM clients
-- WHERE name = 'Myworks'



