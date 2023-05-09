SELECT y.top_agent
FROM(
  SELECT MAX(x.total_sales), x.full_name AS top_agent
    FROM (
        SELECT
            SUM(i.total) AS total_sales,
            e.FirstName || ' ' || e.lastname AS full_name
            FROM invoice AS i 
            JOIN customer AS c 
              ON c.customerid = i.customerid
            JOIN employee AS e 
              ON e.EmployeeId = c.SupportRepId
            GROUP BY e.EmployeeId
        ) AS x
    ) AS y
