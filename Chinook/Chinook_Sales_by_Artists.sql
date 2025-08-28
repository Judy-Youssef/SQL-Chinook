/*Sales by Artist*/
SELECT 
    a.Name AS Artist,
    COUNT(il.TrackId) AS UnitsSold,
    SUM(il.UnitPrice * il.Quantity) AS Revenue
FROM InvoiceLine il
INNER JOIN Track t ON il.TrackId = t.TrackId
INNER JOIN Album al ON t.AlbumId = al.AlbumId
INNER JOIN Artist a ON al.ArtistId = a.ArtistId
GROUP BY a.Name
ORDER BY Revenue DESC;