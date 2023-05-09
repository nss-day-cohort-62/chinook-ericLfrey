SELECT SUM(total) as totals_from_2011
FROM invoice
WHERE invoicedate 
BETWEEN '2011-01-01 00:00:00' AND '2011-12-31 23:59:59'
