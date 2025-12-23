SELECT customers.CustomerId, 
	     customers.FirstName, 
	     customers.LastName, 
	     sum(invoices.Total) AS total_spend
FROM customers
INNER JOIN invoices on customers.CustomerId = invoices.CustomerId
GROUP BY customers.CustomerId, 
		     customers.FirstName, 
		     customers.LastName
ORDER BY total_spend DESC
LIMIT 10;
