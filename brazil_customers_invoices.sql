SELECT firstname || ' ' || lastname as FullName, InvoiceId, InvoiceDate, BillingCountry
FROM customer AS c
JOIN invoice AS i ON c.customerid = i.customerid
WHERE country = 'Brazil'
