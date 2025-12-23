SELECT invoices.BillingCountry, 
		 count(invoices.InvoiceId) AS invoice_count
FROM invoices
GROUP BY invoices.BillingCountry
ORDER BY invoice_count DESC
LIMIT 10;
