 -- Retail Sales Data Insights
-- Query 1: Total Sales Analysis

SELECT
    SUM(Sales) AS total_sales
FROM retail_sales;

-- Query 2: Monthly Sales Analysis

SELECT
    Month,
    SUM(Sales) AS monthly_sales
FROM retail_sales
GROUP BY Month
ORDER BY Month;
