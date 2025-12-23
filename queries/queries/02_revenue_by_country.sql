SELECT invoices.BillingCountry, 
	     sum(invoices.Total) AS total_revenue
FROM invoices
GROUP BY invoices.BillingCountry
ORDER BY total_revenue DESC;
