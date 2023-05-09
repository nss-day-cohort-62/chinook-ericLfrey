SELECT il.invoicelineid, t.name, ar.name
FROM invoiceline as il 
JOIN track as t 
  ON t.trackid = il.trackid
JOIN album as al 
  ON al.albumid = t.albumid
JOIN artist as ar 
  ON ar.artistid = al.artistid
ORDER BY InvoiceLineId
