/*Sales for Tracks in Playlists vs. Not in Playlists*/
WITH TrackPlaylistCount AS (
    SELECT 
        t.TrackId,
        COUNT(pt.PlaylistId) AS PlaylistCount
    FROM Track t
    LEFT JOIN PlaylistTrack pt ON t.TrackId = pt.TrackId
    GROUP BY t.TrackId
)
SELECT 
    CASE 
        WHEN tpc.PlaylistCount > 0 THEN 'In Playlists'
        ELSE 'Not in Playlists'
    END AS PlaylistStatus,
    COUNT(DISTINCT tpc.TrackId) AS UniqueTracks,
    SUM(il.Quantity) AS UnitsSold,
    SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
FROM TrackPlaylistCount tpc
LEFT JOIN InvoiceLine il ON tpc.TrackId = il.TrackId
GROUP BY 
    CASE 
        WHEN tpc.PlaylistCount > 0 THEN 'In Playlists'
        ELSE 'Not in Playlists'
    END;
/*Sales by Number of Playlists a Track is In*/
WITH TrackPlaylistCount AS (
    SELECT 
        t.TrackId,
        COUNT(pt.PlaylistId) AS PlaylistCount
    FROM Track t
    LEFT JOIN PlaylistTrack pt ON t.TrackId = pt.TrackId
    GROUP BY t.TrackId
)
SELECT 
    tpc.PlaylistCount,
    COUNT(DISTINCT tpc.TrackId) AS UniqueTracks,
    SUM(il.Quantity) AS UnitsSold,
    SUM(il.UnitPrice * il.Quantity) AS TotalRevenue,
    AVG(il.Quantity) AS AvgUnitsPerTrack
FROM TrackPlaylistCount tpc
LEFT JOIN InvoiceLine il ON tpc.TrackId = il.TrackId
GROUP BY tpc.PlaylistCount
ORDER BY tpc.PlaylistCount DESC;
/*Top Playlists by Sales Contribution*/
SELECT 
    p.Name AS PlaylistName,
    COUNT(il.TrackId) AS UnitsSold,
    SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
FROM InvoiceLine il
INNER JOIN PlaylistTrack pt ON il.TrackId = pt.TrackId
INNER JOIN Playlist p ON pt.PlaylistId = p.PlaylistId
GROUP BY p.Name
ORDER BY TotalRevenue DESC;