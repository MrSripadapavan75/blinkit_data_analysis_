-- CASE : Sales performance classification
SELECT
    Item_Identifier,
    Item_Type,
    Sales,
    CASE
        WHEN Sales >= 200 THEN 'High Sales'
        WHEN Sales >= 100 THEN 'Medium Sales'
        ELSE 'Low Sales'
    END AS Sales_Categoryo
FROM blinkit_sales
ORDER BY Sales DESC;



-- CASE : Count records by sales category
SELECT
    CASE
        WHEN Sales >= 200 THEN 'High Sales'
        WHEN Sales >= 100 THEN 'Medium Sales'
        ELSE 'Low Sales'
    END AS Sales_Category,
    COUNT(*) AS Total_Records,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(AVG(Sales), 2) AS Average_Sales
FROM blinkit_sales
GROUP BY Sales_Category
ORDER BY Total_Sales DESC;

-- CASE : Calculate average sales

SELECT Item_Identifier, Item_Type, Sales FROM blinkit_sales
WHERE Sales > (
    SELECT AVG(Sales)
    FROM blinkit_sales
)
ORDER BY Sales DESC;