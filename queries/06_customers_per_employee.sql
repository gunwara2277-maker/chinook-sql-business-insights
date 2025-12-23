SELECT employees.EmployeeId, 
	     count(customers.CustomerId) AS customer_count
FROM employees
LEFT JOIN customers on customers.SupportRepId = employees.EmployeeId
GROUP BY employees.EmployeeId;
