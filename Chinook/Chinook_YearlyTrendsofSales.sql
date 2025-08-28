/*Sales Trends Over Time (By Year)*/
SELECT 
    YEAR(i.InvoiceDate) AS SaleYear,
    COUNT(i.InvoiceId) AS NumberOfSales,
    SUM(i.Total) AS Revenue
FROM Invoice i
GROUP BY YEAR(i.InvoiceDate)
ORDER BY SaleYear;