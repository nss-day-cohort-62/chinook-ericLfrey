SELECT il.invoicelineid, t.name
FROM invoiceline as il 
JOIN track as t 
  ON t.trackid = il.trackid
  ORDER BY InvoiceLineId
