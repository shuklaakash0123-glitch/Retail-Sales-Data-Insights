-- 1. Total Revenue
SELECT
    SUM(Quantity * Unit_Price) AS Total_Revenue
FROM retail_sales_cleaned;

-- 2. Total Orders
SELECT
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM retail_sales_cleaned;

-- 3. Total Units Sold
SELECT
    SUM(Quantity) AS Total_Units_Sold
FROM retail_sales_cleaned;

-- 4. Revenue by Category
SELECT
    Category,
    SUM(Quantity * Unit_Price) AS Revenue
FROM retail_sales_cleaned
GROUP BY Category
ORDER BY Revenue DESC;

-- 5. Revenue by Region
SELECT
    Region,
    SUM(Quantity * Unit_Price) AS Revenue
FROM retail_sales_cleaned
GROUP BY Region
ORDER BY Revenue DESC;

-- 6. Monthly Sales
SELECT
    strftime('%Y-%m', Order_Date) AS Month,
    SUM(Quantity * Unit_Price) AS Monthly_Revenue
FROM retail_sales_cleaned
GROUP BY strftime('%Y-%m', Order_Date)
ORDER BY Month;
