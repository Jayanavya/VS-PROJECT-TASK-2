**Analysing Retail Sales Dataset (Task 2)**
Project Overview

**Purpose**: Examines retail sales data for cleaning, SQL aggregation, visualizations, and business strategies to boost profitability and customer engagement.
**Data:** 8 records (reduced to 6 after cleaning) with columns like Order_ID, Customer_Name, Email, Phone, Product_Category, Order_Date, Revenue, Discount (%).
**Ethics:** Handled missing data without sensitive info; anonymized where needed to comply with data privacy (e.g., GDPR).

**1. Data Cleaning Process**

Actions: Filled NULL Emails with 'not_provided@email.com'; filled NULL Phones with 'Unknown'; set missing Discounts to 0.
Duplicates: Removed based on Customer_Name/Email, keeping lowest Order_ID (dataset reduced from 8 to 6 records).
Normalization: Standardized dates to YYYY-MM-DD; verified numeric types.
Impact: Ensured data integrity for reliable analysis; exported to cleaned_sales_data.csv.

**2. SQL Queries and Analysis**

Total Revenue per Category: Furniture (4,300), Electronics (4,200), Clothing (1,200); Furniture is most profitable.
Average Discount per Category: Furniture (20%), Electronics (15%), Clothing (2.5%); higher discounts don't always correlate with lower revenue.
Monthly Sales Trends: Jan (3,000), Feb (2,500), Mar (700), Apr (1,800); strong Q1 but limited data; Dec (1,200, not 2,400 as example claimed).
SQL Examples: Used GROUP BY for aggregations; queries stored in notebook.

**3. Data Visualization**

Heatmap (Revenue by Month/Category): Shows Furniture/Jan peak (2,500); highlights seasonal/category trends.
Scatter Plot (Discount % vs Revenue): Discounts 15-20% drive high sales (e.g., 3,000 at 20%); 0% still contributes (1,000 total).
Histogram (Revenue Distribution): Peaks in Jan (3,000); identifies post-holiday demand for marketing focus.

**4. Business Recommendations**

Top Categories: Prioritize Furniture (4,300) and Electronics (4,200); Clothing (1,200) needs promotion.
Effective Discounts: Use 15-20% for high-value sales; balance with 0% for steady revenue.
Seasonal Trends: Focus campaigns on Jan (3,000 peak), prepare for Feb/Apr.
Actions: Market Furniture/Electronics heavily; apply targeted discounts; plan inventory for peaks to maximize profitability.
