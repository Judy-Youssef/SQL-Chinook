/*Sales Performance by Media Type*/
SELECT 
    mt.Name AS MediaType,
    COUNT(il.TrackId) AS UnitsSold,
    SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
FROM InvoiceLine il
INNER JOIN Track t ON il.TrackId = t.TrackId
INNER JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
GROUP BY mt.Name
ORDER BY TotalRevenue DESC;
/*Average Price and Units per Media Type*/
SELECT 
    mt.Name AS MediaType,
    AVG(t.UnitPrice) AS AveragePrice,
    COUNT(DISTINCT t.TrackId) AS UniqueTracksAvailable,
    COUNT(il.TrackId) AS UnitsSold
FROM Track t
LEFT JOIN InvoiceLine il ON t.TrackId = il.TrackId
INNER JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
GROUP BY mt.Name
ORDER BY UnitsSold DESC;