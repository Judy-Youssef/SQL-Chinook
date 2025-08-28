/*Sales Performance by City (Top 10)*/
SELECT TOP 10 
    c.City,
    c.Country,
    COUNT(i.InvoiceId) AS NumberOfSales,
    SUM(i.Total) AS TotalRevenue
FROM Invoice i
INNER JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY c.City, c.Country
ORDER BY TotalRevenue DESC;