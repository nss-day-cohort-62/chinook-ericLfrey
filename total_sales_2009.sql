SELECT SUM(total) AS totals_from_2009
FROM invoice
WHERE invoicedate 
BETWEEN '2009-01-01 00:00:00' AND '2009-12-31 23:59:59'
