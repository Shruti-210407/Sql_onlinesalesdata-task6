SELECT * FROM onlinesales.`onlinesuperstore`;

/*Create a cleaned table with only relevant columns for analysis*/
CREATE TABLE cleaned_onlinesuperstore  AS
SELECT
    'Order ID' AS order_id,
    'Order Date' AS order_date,
    'Product ID' AS product_id,
    'Ship Date' AS ship_date,
    'Ship Mode' AS Ship_mode,

    Sales,
    Profit,
    Segment,
    Region,
    Category,
    'Sub-Category' AS sub_category
FROM onlinesales.`onlinesuperstore`;

 /*Extract Month from Order Date*/
SELECT 
    MONTH('order_date') AS order_month
FROM 
    cleaned_onlinesuperstore;
    
/* Group by Year and Month*/
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    category,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM cleaned_onlinesuperstore
GROUP BY YEAR(order_date), MONTH(order_date), category
ORDER BY year, month, category; 
 
/*total sales */
SELECT 
    SUM(sales) AS total_revenue
FROM cleaned_onlinesuperstore;  

/* total order volume*/
SELECT 
    COUNT(DISTINCT order_id) AS total_order_volume
FROM cleaned_onlinesuperstore;

/* using order by option*/
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(sales) AS total_revenue
FROM cleaned_onlinesuperstore
GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY total_revenue DESC;

/* Limit results for specific time periods*/

SELECT *
FROM cleaned_onlinesuperstore
WHERE order_date BETWEEN '2019-01-01' AND '2019-12-31';

/*Analyze monthly profit and revenue by region*/
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    region,
    SUM(profit) AS monthly_profit,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM cleaned_onlinesales
GROUP BY YEAR(order_date), MONTH(order_date), region
ORDER BY year, month, region;

/*Analyze monthly revenue and order volume grouped by category*/
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    category,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM cleaned_onlinesuperstore
GROUP BY YEAR(order_date), MONTH(order_date), category
ORDER BY year, month, category;

/*Analyze monthly profit along with revenue and order volume*/
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(profit) AS monthly_profit,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM cleaned_onlinesuperstore
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

select * from cleaned_onlinesuperstore;
    



