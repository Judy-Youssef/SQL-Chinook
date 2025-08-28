/*Sales Performance by Country*/
SELECT 
    c.Country,
    COUNT(i.InvoiceId) AS NumberOfSales,
    SUM(i.Total) AS TotalRevenue,
    (SUM(i.Total) * 100.0 / (SELECT SUM(Total) FROM Invoice)) AS RevenuePercentage
FROM Invoice i
INNER JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY c.Country
ORDER BY TotalRevenue DESC;