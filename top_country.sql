SELECT MAX(t.totals) AS highest_total, t.BillingCountry
FROM (
    SELECT SUM(total) AS totals, BillingCountry
    FROM invoice i 
    GROUP BY BillingCountry 
) t 
