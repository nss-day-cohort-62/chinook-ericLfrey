SELECT invoiceid, COUNT(*) AS number_of_line_items
FROM invoiceline
GROUP BY invoiceid
