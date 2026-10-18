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

-- Query 3: Region-wise Sales Analysis

SELECT
    Region,
    SUM(Sales) AS total_sales
FROM retail_sales
GROUP BY Region
ORDER BY total_sales DESC;
