About the Data :

Dataset Name: task_6.cleaned_orders
Contains sales order data from a OnlineSuperstore.
Key fields: order_date, order_id, sales, profit, category, region.

Project Objective: 
To analyze monthly trends in sales, profit, and order volume, both overall and across different categories and regions. The goal is to extract business insights such as:
Which months or years perform best.
Which regions or categories are most profitable.
Sales and profit growth over time.

SQL Queries Used:
- Data Preview
- Simple SELECT * to view the dataset structure and sample rows.
- Monthly Revenue & Order Volume
- Used YEAR() and MONTH() functions to group by month and year.
- Monthly Profit + Revenue + Order Volume
- Aggregated SUM(profit) with revenue and orders to show profitability.
- Monthly Analysis by Category
- Grouped by year, month, and category.
- Monthly Analysis by Region
- Grouped by year, month, and region.
- Profit & Revenue by Region
- Combined sales and profit metrics at the regional level.

Outcome: 
- Clear time-series breakdown of sales and profit trends.
- Identified seasonal performance patterns and regional differences.
- Resolved data formatting issues by cleaning date fields and restructuring queries.
