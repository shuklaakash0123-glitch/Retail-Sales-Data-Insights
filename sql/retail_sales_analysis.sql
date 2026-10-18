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

-- Query 4: Category-wise Sales Analysis

SELECT
    Category,
    SUM(Sales) AS total_sales
FROM retail_sales
GROUP BY Category
ORDER BY total_sales DESC;

-- Query 5: Top 5 Best-Selling Products

SELECT
    Product,
    SUM(Sales) AS total_sales
FROM retail_sales
GROUP BY Product
ORDER BY total_sales DESC
LIMIT 5;

-- Query 6: Payment Mode Analysis

SELECT
    Payment_Mode,
    SUM(Sales) AS total_sales
FROM retail_sales
GROUP BY Payment_Mode
ORDER BY total_sales DESC;

-- Query 7: Quantity Sold by Category

SELECT
    Category,
    SUM(Quantity) AS total_quantity
FROM retail_sales
GROUP BY Category
ORDER BY total_quantity DESC;

-- Query 8: Average Order Value

SELECT
    AVG(Sales) AS average_order_value
FROM retail_sales;

-- Query 9: Total Quantity Sold

SELECT
    SUM(Quantity) AS total_quantity_sold
FROM retail_sales;
