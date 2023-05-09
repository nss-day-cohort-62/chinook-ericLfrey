SELECT customerid, firstname || ' ' || lastname AS FullName, country
FROM customer
WHERE country != 'USA'
