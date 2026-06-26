SELECT *
FROM superstore;

SELECT `Order ID`, `Customer Name`, Category, Sales
FROM superstore;

SELECT *
FROM superstore
WHERE State = 'California';

SELECT `Product Name`, Category, Sales
FROM superstore
WHERE Category = 'Technology';

SELECT `Order ID`, `Customer Name`, Sales
FROM superstore
WHERE Sales > 500;

SELECT `Customer Name`, State
FROM superstore
ORDER BY `Customer Name`;

SELECT `Product Name`, Profit
FROM superstore
ORDER BY Profit ASC;

SELECT `Customer Name`, State
FROM superstore
WHERE `Customer Name` = 'Brosina Hoffman'
ORDER BY State DESC;

SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category;

SELECT `Ship Mode`, COUNT(*) AS Total_Orders
FROM superstore
GROUP BY `Ship Mode`;

SELECT State, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC;

SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
WHERE Region = 'West'
GROUP BY Category
ORDER BY Total_Sales DESC;