/*Top 10 Best-Selling Albums*/
SELECT TOP 10 
    al.Title AS AlbumTitle,
    a.Name AS ArtistName,
    COUNT(il.TrackId) AS UnitsSold,
    SUM(il.UnitPrice * il.Quantity) AS Revenue
FROM InvoiceLine il
INNER JOIN Track t ON il.TrackId = t.TrackId
INNER JOIN Album al ON t.AlbumId = al.AlbumId
INNER JOIN Artist a ON al.ArtistId = a.ArtistId
GROUP BY al.Title, a.Name
ORDER BY UnitsSold DESC;