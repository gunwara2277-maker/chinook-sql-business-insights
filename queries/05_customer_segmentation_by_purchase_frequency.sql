SELECT
CASE
    WHEN invoices.Total < 5 THEN 'A'
    WHEN invoices.Total BETWEEN 5 AND 9 THEN 'AA'
    WHEN invoices.Total >= 10 THEN 'AAA'
    ELSE 'NONE'
END AS invoice_segment,
  COUNT(invoices.InvoiceId) AS invoice_count,
  SUM(invoices.Total) AS revenue
FROM invoices
GROUP BY
CASE
    WHEN invoices.Total < 5 THEN 'A'
    WHEN invoices.Total BETWEEN 5 AND 9 THEN 'AA'
    WHEN invoices.Total >= 10 THEN 'AAA'
    ELSE 'NONE'
END
ORDER BY revenue DESC;
