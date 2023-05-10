SELECT mt.name, SUM(il.Quantity) AS most_purchased_type
FROM track t 
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY mt.Name
ORDER BY most_purchased_type DESC
LIMIT 1
