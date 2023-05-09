SELECT billingcountry, SUM(total) as total_sales
FROM invoice
GROUP BY billingcountry
