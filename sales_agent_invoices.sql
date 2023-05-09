SELECT e.FirstName || ' ' || e.LastName AS FullName, i.invoiceId
FROM employee as e
JOIN customer AS c
  ON c.supportrepid = e.employeeid
JOIN invoice as i
  ON i.customerid = c.customerid
