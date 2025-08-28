/*Sales Performance by Derived Region (Continent/Group)*/
SELECT 
    CASE 
        WHEN c.Country IN ('USA', 'Canada', 'Brazil', 'Argentina', 'Chile') THEN 'Americas'
        WHEN c.Country IN ('Germany', 'France', 'UK', 'Norway', 'Czech Republic', 'Belgium', 'Denmark', 'Finland', 'Ireland', 'Italy', 'Netherlands', 'Poland', 'Portugal', 'Spain', 'Sweden', 'Austria') THEN 'Europe'
        WHEN c.Country IN ('Australia') THEN 'Oceania'
        WHEN c.Country IN ('India') THEN 'Asia'
        ELSE 'Other'
    END AS Region,
    COUNT(i.InvoiceId) AS NumberOfSales,
    SUM(i.Total) AS TotalRevenue
FROM Invoice i
INNER JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY 
    CASE 
        WHEN c.Country IN ('USA', 'Canada', 'Brazil', 'Argentina', 'Chile') THEN 'Americas'
        WHEN c.Country IN ('Germany', 'France', 'UK', 'Norway', 'Czech Republic', 'Belgium', 'Denmark', 'Finland', 'Ireland', 'Italy', 'Netherlands', 'Poland', 'Portugal', 'Spain', 'Sweden', 'Austria') THEN 'Europe'
        WHEN c.Country IN ('Australia') THEN 'Oceania'
        WHEN c.Country IN ('India') THEN 'Asia'
        ELSE 'Other'
    END
ORDER BY TotalRevenue DESC;