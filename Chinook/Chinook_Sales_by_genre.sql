/*Sales by Genre*/
SELECT 
    g.Name AS Genre,
    COUNT(il.TrackId) AS UnitsSold,
    SUM(il.UnitPrice * il.Quantity) AS Revenue
FROM InvoiceLine il
INNER JOIN Track t ON il.TrackId = t.TrackId
INNER JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY g.Name
ORDER BY Revenue DESC;