SELECT e.firstname || ' ' || e.lastname AS FullName, ROUND(SUM(i.total), 2) AS total_sales
FROM employee AS e
JOIN customer AS c 
  ON c.supportrepid = e.employeeid
JOIN invoice AS i 
  ON i.customerid = c.customerid
GROUP BY c.SupportRepId
