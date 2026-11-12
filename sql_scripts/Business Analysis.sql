-- 1: What are the total sales generated across all products?
SELECT SUM(Sales) AS Total_Sales FROM blinkit_sales;

-- 2:What is the average sales value?
SELECT ROUND(AVG(Sales), 2) AS Average_Sales FROM blinkit_sales;

-- 3: How many unique products are available?
SELECT COUNT(DISTINCT Item_Identifier) AS Unique_Products FROM blinkit_sales;

-- 4: How many outlets are included in the dataset?
SELECT COUNT(DISTINCT Outlet_Identifier) AS Total_Outlets FROM blinkit_sales;

-- 5: What are the total sales by item type?
SELECT Item_Type,ROUND(SUM(Sales), 2) AS Total_Sales FROM blinkit_sales
GROUP BY Item_Type
ORDER BY Total_Sales DESC;
