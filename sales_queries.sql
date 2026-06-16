USE sales_project;

-- Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data;

-- Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data;

-- Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity
FROM sales_data;

-- Sales and Profit by Region
SELECT Region,
       ROUND(SUM(Sales),2) AS Revenue,
       ROUND(SUM(Profit),2) AS Profit
FROM sales_data
GROUP BY Region
ORDER BY Revenue DESC;

-- Category Performance
SELECT Category,
       ROUND(SUM(Sales),2) AS Sales,
       ROUND(SUM(Profit),2) AS Profit
FROM sales_data
GROUP BY Category
ORDER BY Sales DESC;

-- Top 10 States by Sales
SELECT State,
       ROUND(SUM(Sales),2) AS Revenue
FROM sales_data
GROUP BY State
ORDER BY Revenue DESC
LIMIT 10;

-- Top 10 Cities by Sales
SELECT City,
       ROUND(SUM(Sales),2) AS Revenue
FROM sales_data
GROUP BY City
ORDER BY Revenue DESC
LIMIT 10;

-- Most Profitable Sub-Categories
SELECT Sub_Category,
       ROUND(SUM(Profit),2) AS Profit
FROM sales_data
GROUP BY Sub_Category
ORDER BY Profit DESC
LIMIT 10;

-- Least Profitable Sub-Categories
SELECT Sub_Category,
       ROUND(SUM(Profit),2) AS Profit
FROM sales_data
GROUP BY Sub_Category
ORDER BY Profit ASC;