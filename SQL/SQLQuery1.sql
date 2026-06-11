SELECT * FROM orders;

SELECT ROUND(SUM(Quantity * UnitPrice), 2) AS revenue FROM orders;

SELECT 
	MONTH(InvoiceDate) AS month,
	ROUND(SUM(Quantity * UnitPrice), 2) AS monthly_revenue
FROM orders
GROUP BY MONTH(InvoiceDate)
ORDER BY 1;

SELECT 
	TOP 10 Description,
	ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM orders
GROUP BY Description
ORDER BY revenue DESC;

SELECT
	TOP 10 CustomerId,
	ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM orders
WHERE CustomerId IS NOT NULL
GROUP BY CustomerId
ORDER BY revenue DESC;
