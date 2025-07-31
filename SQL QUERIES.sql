SELECT 
    *
FROM
    practice_skillected.orders;
-- 1) Total Sales (Revenue)
SELECT 
    SUM(`List Price` * Quantity) AS total_revenue
FROM
    orders;

-- 2)Total Profit
SELECT 
    SUM((`List Price` - `cost price`) * Quantity) AS total_profit
FROM
    orders;

-- 3) Top 5 Cities by Total Sales
SELECT 
    City, SUM(`List Price` * Quantity) AS city_sales
FROM
    orders
GROUP BY City
ORDER BY city_sales DESC
LIMIT 5;

 -- 4) Monthly Sales Trend
SELECT 
    DATE_FORMAT(STR_TO_DATE(`Order Date`, '%Y-%m-%d'),
            '%Y-%m') AS month,
    SUM(`List Price` * Quantity) AS monthly_sales
FROM
    orders
GROUP BY month
ORDER BY month;

-- 5)Average Discount by Category
SELECT 
    Category, AVG(`Discount Percent`) AS avg_discount
FROM
    orders
GROUP BY Category;

-- 6)Segment-wise Sales
SELECT 
    Segment, SUM(`List Price` * Quantity) AS segment_sales
FROM
    orders
GROUP BY Segment
ORDER BY segment_sales DESC;

-- 7)Ship Mode Usage Count
SELECT 
    `Ship Mode`, COUNT(*) AS total_orders
FROM
    orders
GROUP BY `Ship Mode`
ORDER BY total_orders DESC;

-- 8)Revenue by Sub-Category
SELECT 
    `Sub Category`, SUM(`List Price` * Quantity) AS revenue
FROM
    orders
GROUP BY `Sub Category`
ORDER BY revenue DESC;

 -- 9)Revenue by Category
SELECT 
    Category, SUM(`List Price` * Quantity) AS revenue
FROM
    orders
GROUP BY Category
ORDER BY revenue DESC;

-- 10)Profit Margin 
SELECT 
    ROUND(SUM((`List Price` - `cost price`) * Quantity) / SUM(`List Price` * Quantity) * 100,
            2) AS profit_margin_percent
FROM
    orders;

-- 11)Total Cost
SELECT 
    SUM(`cost price` * Quantity) AS total_cost
FROM
    orders;

