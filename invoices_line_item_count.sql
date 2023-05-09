SELECT invoiceid, COUNT(*) AS total_line_items
FROM InvoiceLine
GROUP BY invoiceid
