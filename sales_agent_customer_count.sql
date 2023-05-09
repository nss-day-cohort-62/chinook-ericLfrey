SELECT e.firstname, COUNT(c.customerid)
FROM employee e 
FULL JOIN customer c ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId
