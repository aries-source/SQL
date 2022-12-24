-- SELECT 
-- 	sh.name AS Shipper,
--     p.name AS 'Products name'
-- FROM products p 
-- CROSS JOIN shippers sh 


-- Implicit Syntax
SELECT 
	sh.name AS Shipper,
    p.name AS 'Products name'
FROM products p , shippers sh


