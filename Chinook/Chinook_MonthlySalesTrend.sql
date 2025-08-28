/*Monthly Revenue and Sales Count*/
SELECT 
    YEAR(i.InvoiceDate) AS Year,
    MONTH(i.InvoiceDate) AS Month,
    COUNT(i.InvoiceId) AS NumberOfSales,
    SUM(i.Total) AS MonthlyRevenue
FROM Invoice i
GROUP BY YEAR(i.InvoiceDate), MONTH(i.InvoiceDate)
ORDER BY Year, Month;
/*Monthly Revenue with Year-Over-Year Comparison*/
WITH MonthlyData AS (
    SELECT 
        YEAR(i.InvoiceDate) AS Year,
        MONTH(i.InvoiceDate) AS Month,
        SUM(i.Total) AS MonthlyRevenue
    FROM Invoice i
    GROUP BY YEAR(i.InvoiceDate), MONTH(i.InvoiceDate)
)
SELECT 
    Year,
    Month,
    MonthlyRevenue,
    LAG(MonthlyRevenue) OVER (ORDER BY Year, Month) AS PreviousMonthRevenue,
    (MonthlyRevenue - LAG(MonthlyRevenue) OVER (ORDER BY Year, Month)) AS MonthOverMonthChange
FROM MonthlyData
ORDER BY Year, Month;