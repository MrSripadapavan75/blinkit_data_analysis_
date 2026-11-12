-- 1: Which outlet type generates the highest sale
SELECT Outlet_Type,ROUND(SUM(Sales), 2) AS Total_Sales FROM blinkit_sales
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;


-- 2: How do sales vary by outlet location?
SELECT Outlet_Location_Type,ROUND(SUM(Sales), 2) AS Total_Sales FROM blinkit_sales
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;


-- 3: Which outlet size generates the highest sales?
SELECT Outlet_Size,ROUND(SUM(Sales), 2) AS Total_Sales FROM blinkit_sales
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;


-- 4.What is the average sales value for each outlet type?
SELECT Outlet_Type,ROUND(AVG(Sales), 2) AS Average_Sales FROM blinkit_sales
GROUP BY Outlet_Type
ORDER BY Average_Sales DESC;


-- 5: How many outlets belong to each location type?
SELECT Outlet_Location_Type, COUNT(DISTINCT Outlet_Identifier) AS Total_Outlets
FROM blinkit_sales
GROUP BY Outlet_Location_Type
ORDER BY Total_Outlets DESC;
