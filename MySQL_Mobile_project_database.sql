CREATE SCHEMA mobile;
USE mobile;
SELECT * FROM mobile;

-- Check mobile feature and price list

Select phone_name, price FROM mobile;

-- Find out the price of 5 most expensive phones

SELECT * FROM mobile
ORDER BY price DESC
LIMIT 5;

-- List of top 5 Samsung phones with price and all features 

SELECT * FROM mobile
WHERE brands = 'Samsung' 
ORDER BY price DESC
LIMIT 5;
-- Find out the price of 5 most cheapest phones

SELECT * FROM mobile
ORDER BY price 
LIMIT 5;

-- Top 5 highest price Android phones

SELECT * FROM mobile
WHERE Operating_System_Type = 'Android' 
ORDER BY price DESC
LIMIT 5;

-- Top 5 lowest price Android phones

SELECT * FROM mobile
WHERE Operating_System_Type = 'Android' 
ORDER BY price 
LIMIT 5;

-- Top 5 highest price IOS phones

SELECT * FROM mobile
WHERE Operating_System_Type = 'iOS' 
ORDER BY price DESC
LIMIT 5;

-- Top 5 lowest price IOS phones

SELECT * FROM mobile
WHERE Operating_System_Type = 'iOS' 
ORDER BY price 
LIMIT 5;

-- Top 5 highest price phones which support 5G

SELECT * FROM mobile
WHERE 5G_Availability = 'Yes' 
ORDER BY price DESC
LIMIT 5;

-- Total price of all mobile group under brand name

SELECT brands, SUM(price) as total_price FROM mobile
GROUP BY brands;