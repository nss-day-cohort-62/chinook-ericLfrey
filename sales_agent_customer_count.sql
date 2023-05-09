SELECT e.firstname || ' ' || e.LastName as employee, COUNT(c.customerid) as number_of_customers
FROM employee e 
FULL JOIN customer c ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId
