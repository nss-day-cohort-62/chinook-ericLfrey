SELECT ar.name, SUM(il.Quantity) as total_sales
FROM artist ar
full JOIN Album al ON al.ArtistId = ar.ArtistId
JOIN Track t ON t.AlbumId = al.AlbumId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY ar.name
ORDER BY total_sales DESC
limit 3
