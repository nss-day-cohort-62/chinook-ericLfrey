SELECT billingcountry, COUNT(*) AS invoices_by_country
from invoice
GROUP BY billingcountry
