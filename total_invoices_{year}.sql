SELECT COUNT(*) AS invoices_from_2009_and_2011 FROM invoice
WHERE invoicedate LIKE '2009%'
  OR invoicedate LIKE '2011%'
