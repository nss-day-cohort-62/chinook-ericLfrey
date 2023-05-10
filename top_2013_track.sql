SELECT t.name AS track_name, SUM(il.Quantity) AS total_sales
FROM invoice i 
JOIN invoiceline il 
  ON il.invoiceid = i.invoiceid
JOIN track t 
  ON t.TrackId = il.TrackId
WHERE i.InvoiceDate LIKE '2013%'
GROUP BY t.name
