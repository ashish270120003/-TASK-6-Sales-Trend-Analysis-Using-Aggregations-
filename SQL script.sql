SELECT 
    EXTRACT(MONTH FROM orderDate) AS orderMonth,
    COUNT(*) AS numberOfOrders
FROM
    orders
GROUP BY 
    orderMonth
ORDER BY 
    orderMonth;


SELECT 
    EXTRACT(MONTH FROM orderDate) AS orderMonth,
    COUNT(*) AS numberOfOrders
FROM
    orders
GROUP BY 
    EXTRACT(MONTH FROM orderDate)
ORDER BY 
    orderMonth;
    
    SELECT 
    DATE_FORMAT(orderDate, '%Y-%m') AS yearMonth,
    COUNT(*) AS numberOfOrders
FROM
    orders
GROUP BY 
    yearMonth
ORDER BY 
    yearMonth;


SELECT 
    EXTRACT(YEAR FROM o.orderDate) AS orderYear,
    EXTRACT(MONTH FROM o.orderDate) AS orderMonth,
    SUM(od.quantityOrdered * od.priceEach) AS totalRevenue
FROM
    orders o
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY 
    orderYear, orderMonth
ORDER BY 
    orderYear, orderMonth;



SELECT 
    EXTRACT(YEAR FROM o.orderDate) AS orderYear,
    EXTRACT(MONTH FROM o.orderDate) AS orderMonth,
    SUM(od.quantityOrdered * od.priceEach) AS totalRevenue,
    COUNT(DISTINCT o.orderNumber) AS totalVolume
FROM
    orders o
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY 
    orderYear, orderMonth
ORDER BY 
    orderYear, orderMonth;


SELECT 
    EXTRACT(YEAR FROM o.orderDate) AS orderYear,
    EXTRACT(MONTH FROM o.orderDate) AS orderMonth,
    SUM(od.quantityOrdered * od.priceEach) AS totalRevenue,
    COUNT(DISTINCT o.orderNumber) AS totalVolume
FROM
    orders o
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY 
    orderYear, orderMonth
ORDER BY 
    orderYear, orderMonth;
    
    SELECT 
    EXTRACT(YEAR FROM o.orderDate) AS orderYear,
    EXTRACT(MONTH FROM o.orderDate) AS orderMonth,
    SUM(od.quantityOrdered * od.priceEach) AS totalRevenue,
    COUNT(DISTINCT o.orderNumber) AS totalVolume
FROM
    orders o
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
WHERE
    EXTRACT(YEAR FROM o.orderDate) = 2024
GROUP BY 
    orderYear, orderMonth
ORDER BY 
    orderYear, orderMonth;

