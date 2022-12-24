-- SELECT client_id
-- FROM clients
-- WHERE name = 'Myworks'


-- UPDATE invoices 
-- SET 
-- 	payment_total = invoice_total * 0.5,
--     payment_date = due_date
-- WHERE client_id = 
--  				(SELECT client_id
-- 				FROM clients
-- 				WHERE name = 'Yadel') 


UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN 
					(SELECT customer_id
                    FROM customers
                    WHERE points > 3000)