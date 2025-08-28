/*KPIs*/
SELECT 
    (SELECT COUNT(*) FROM Track) AS TotalTracks,
    (SELECT COUNT(*) FROM Invoice) AS TotalInvoices;
SELECT 
    SUM(Total) AS TotalRevenue
FROM Invoice;
SELECT 
    COUNT(DISTINCT al.AlbumId) AS UniqueAlbums,
    SUM(il.Quantity) AS TotalUnitsSoldFromAlbums
FROM InvoiceLine il
INNER JOIN Track t ON il.TrackId = t.TrackId
INNER JOIN Album al ON t.AlbumId = al.AlbumId;
SELECT 
    COUNT(DISTINCT a.ArtistId) AS TotalArtists,
    COUNT(DISTINCT al.AlbumId) AS TotalAlbums
FROM Artist a
LEFT JOIN Album al ON a.ArtistId = al.ArtistId;
SELECT 
    a.Name AS ArtistName,
    COUNT(DISTINCT al.AlbumId) AS TotalAlbums,
    al.Title AS AlbumTitle,
    COUNT(t.TrackId) AS TracksInAlbum
FROM Artist a
LEFT JOIN Album al ON a.ArtistId = al.ArtistId
LEFT JOIN Track t ON al.AlbumId = t.AlbumId
GROUP BY a.Name, al.Title
ORDER BY a.Name, al.Title;