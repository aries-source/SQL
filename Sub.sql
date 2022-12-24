CREATE TABLE invoices_archived AS 

SELECT 
		invoice_id,
        number,
        c.name AS client,
        invoice_total,
        payment_total,
        invoice_date,
        due_date,
        payment_date
FROM invoices i
JOIN clients c 
	ON c.client_id = i.client_id
WHERE payment_date IS NOT NULL