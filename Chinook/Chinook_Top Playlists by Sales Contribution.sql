SELECT 
    p.Name AS PlaylistName,
    COUNT(il.TrackId) AS UnitsSold,
    SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
FROM InvoiceLine il
INNER JOIN PlaylistTrack pt ON il.TrackId = pt.TrackId
INNER JOIN Playlist p ON pt.PlaylistId = p.PlaylistId
GROUP BY p.Name
ORDER BY TotalRevenue DESC;