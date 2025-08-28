/*Top 10 Best-Selling Tracks*/
SELECT TOP 10 
    t.Name AS TrackName,
    COUNT(il.TrackId) AS UnitsSold,
    SUM(il.UnitPrice * il.Quantity) AS Revenue
FROM InvoiceLine il
INNER JOIN Track t ON il.TrackId = t.TrackId
GROUP BY t.Name
ORDER BY UnitsSold DESC;