--  1: Which item categories generate the highest sales?
SELECT Item_Type,ROUND(SUM(Sales), 2) AS Total_Sales FROM blinkit_sales
GROUP BY Item_Type
ORDER BY Total_Sales DESC;


-- 2: Which 5 item categories generate the lowest sales?
SELECT Item_Type,ROUND(SUM(Sales), 2) AS Total_Sales FROM blinkit_sales
GROUP BY Item_Type
ORDER BY Total_Sales ASC LIMIT 5;


-- 3: What are the total sales by fat content?
SELECT Item_Fat_Content, ROUND(SUM(Sales), 2) AS Total_Sales FROM blinkit_sales
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC;


--  4: What is the average rating for each item category?
SELECT Item_Type, ROUND(AVG(Rating), 2) AS Average_Rating FROM blinkit_sales
GROUP BY Item_Type9
ORDER BY Average_Rating DESC;


-- 5: Which 10 products have the highest sales?
SELECT Item_Identifier,Item_Type,ROUND(Sales, 2) AS Sales FROM blinkit_sales
ORDER BY Sales DESC LIMIT 10;

