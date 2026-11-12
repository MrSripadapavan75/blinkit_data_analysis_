show databases;

CREATE DATABASE blinkit_analysis;

use blinkit_analysis;

CREATE TABLE blinkit_sales (
    Item_Fat_Content VARCHAR(50),
    Item_Identifier VARCHAR(50),
    Item_Type VARCHAR(100),
    Outlet_Establishment_Year INT,
    Outlet_Identifier VARCHAR(50),
    Outlet_Location_Type VARCHAR(50),
    Outlet_Size VARCHAR(50),
    Outlet_Type VARCHAR(100),
    Item_Visibility FLOAT,
    Item_Weight FLOAT,
    Sales DECIMAL(12,2),
    Rating FLOAT
);
show tables;

SELECT COUNT(*) AS total_records
FROM blinkit_sales;

SELECT * FROM blinkit_sales
LIMIT 10;

DESCRIBE blinkit_sales;

select *from blinkit_sales;
