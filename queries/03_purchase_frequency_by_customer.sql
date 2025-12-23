SELECT customers.CustomerId, 
		   customers.FirstName, 
		   customers.LastName, 
		   count(invoices.InvoiceId) AS purchase_count
FROM customers
INNER JOIN invoices on invoices.CustomerId = customers.CustomerId
GROUP BY customers.CustomerId, customers.FirstName, customers.LastName
ORDER BY purchase_count DESC;
