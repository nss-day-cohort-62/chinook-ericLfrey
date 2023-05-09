SELECT 
  i.total, 
  c.firstname || ' ' || c.lastname as CustomerName, 
  c.country, 
  e.firstname || ' ' || e.lastname as SalesAgent
FROM customer as c 
JOIN invoice AS i 
  ON i.customerid = c.customerid
JOIN employee as e 
  ON e.employeeid = c.supportrepid
