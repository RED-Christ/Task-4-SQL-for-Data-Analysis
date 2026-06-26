SELECT `Order ID`, Sales, Profit
FROM orders
WHERE Sales > (
    SELECT AVG(Sales)
    FROM orders
)
ORDER BY Sales DESC;

SELECT `Product Name`, Category
FROM products
WHERE `Product ID` IN (
    SELECT `Product ID`
    FROM orders
    WHERE Sales > (
        SELECT AVG(Sales)
        FROM orders
    )
);

SELECT `Customer Name`, State
FROM customers
WHERE `Customer ID` IN (
    SELECT `Customer ID`
    FROM orders
    WHERE Sales > (
        SELECT AVG(Sales)
        FROM orders
    )
);