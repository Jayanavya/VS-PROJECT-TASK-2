-- Clean 1: Replace NULL emails with a default value
UPDATE "data_vs_vase"
SET "Email" = 'not_provided@email.com'
WHERE "Email" IS NULL;

-- Clean 2: Remove duplicate records based on Customer_Name and Email, keeping the lowest Order_ID
DELETE FROM "data_vs_vase"
WHERE "Order_ID" NOT IN (
    SELECT MIN("Order_ID")
    FROM "data_vs_vase"
    GROUP BY "Customer_Name", "Email"
);

Identify the top 7 customers by total revenue
SELECT 
    "Customer_Name",
    SUM("Revenue") AS total_revenue
FROM "data_vs_vase"
GROUP BY "Customer_Name"
ORDER BY total_revenue DESC
LIMIT 7;

-- Aggregate 1: Calculate total revenue per product category
SELECT 
    "Product_Category" AS category,
    SUM("Revenue") AS total_revenue
FROM "data_vs_vase"
GROUP BY "Product_Category"
ORDER BY total_revenue DESC;

-- Aggregate 2: Find average discount per product category
SELECT 
    "Product_Category" AS category,
    ROUND(AVG("Discount_Percent"), 2) AS avg_discount
FROM "data_vs_vase"
GROUP BY "Product_Category"
ORDER BY avg_discount DESC;

-- Aggregate 3: Sum revenue per month to identify sales trends
SELECT 
    EXTRACT(MONTH FROM "Order_Date") AS order_month,
    SUM("Revenue") AS total_sales
FROM "data_vs_vase"
GROUP BY EXTRACT(MONTH FROM "Order_Date")
ORDER BY order_month;