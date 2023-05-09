SELECT e.FirstName || ' ' || e.LastName AS FullName, i.invoiceId
FROM employee AS e
JOIN customer AS c
  ON c.supportrepid = e.employeeid
JOIN invoice AS i
  ON i.customerid = c.customerid
