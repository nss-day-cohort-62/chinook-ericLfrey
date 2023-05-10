SELECT SUM(il.Quantity) AS totals, t.name
FROM track t 
JOIN InvoiceLine il 
  ON il.TrackId = t.TrackId
GROUP BY il.TrackId
ORDER BY totals DESC
LIMIT 5
