# Amazon Sales Analytics Dashboard

An end-to-end sales analytics project using **Python (Pandas)**, **SQL
Server**, and **Power BI** to clean, analyze, and visualize Amazon sales
data.

## Project Overview

This project explores Amazon order and sales data to understand revenue
patterns, product-category performance, order volumes, fulfilment
channels, and shipping-region trends. The workflow combines data
cleaning with SQL querying and an interactive Power BI dashboard.

## Dashboard Preview

Add your dashboard screenshot to the repository (for example,
`dashboard/Amazon-Dashboard.png`) and update the image path below.

![Amazon Sales Analytics Dashboard](dashboard/Amazon-Dashboard.png)

## Tools & Technologies

-   **Python:** Pandas, NumPy
-   **Database:** Microsoft SQL Server / SSMS
-   **Data Visualization:** Microsoft Power BI
-   **Data Format:** CSV

## Workflow

1.  **Data inspection:** Reviewed dataset dimensions, column types,
    missing values, distinct values, and duplicate records.
2.  **Data cleaning with Pandas:** Standardized column names and text,
    converted dates and numeric fields where possible, checked duplicate
    rows, and exported a cleaned CSV plus quality reports.
3.  **SQL analysis:** Prepared queries to retrieve and filter records,
    aggregate sales, compare categories, inspect order statuses, and
    analyze geographic performance.
4.  **Power BI dashboard:** Built KPI cards and visuals to explore
    revenue, quantity, unique orders, unique shipping cities, category
    performance, monthly sales, fulfilment, size, and state-level sales.

## Dashboard KPIs

-   **Total Revenue:** Sum of the `Amount` field.
-   **Total Quantity:** Sum of the `Qty` field.
-   **Total Orders:** Distinct count of `Order ID`.
-   **Unique Cities:** Distinct count of `ship-city`.
-   **Delivered Orders:** Distinct orders classified as delivered by the
    dataset's status field.

> **Metric note:** Revenue is based on the dataset's `Amount` column and
> should be interpreted as reported sales amount, not profit. The
> dataset does not provide a customer ID in the fields used here, so
> unique cities are not a customer count.

## Repository Structure

``` text
amazon-sales-analytics-dashboard/
├── dashboard/
│   ├── Amazon Sales Dashboard.pbix
│   └── Amazon-Dashboard.png
├── python/
│   └── Data Cleaning (Pandas).py
├── sql/
│   └── SQLQuery1.sql
├── data/
│   └── Amazon_Sales_Cleaned.csv
└── README.md
```

Adjust the filenames and folders to match the files you actually upload.

## Key Analysis Questions

-   Which product categories contribute the most sales amount?
-   How does sales amount change by month?
-   Which fulfilment channel has the most records or orders?
-   Which sizes and shipping states contribute most to sales amount?
-   How many distinct orders are present, and how are they classified by
    status?
-   Which data-quality issues require review before analysis?

## Data Quality Notes

-   The original dataset contains **128,975 rows and 21 columns**.
-   The initial audit found **no exact duplicate rows**.
-   Missing values and unparseable dates were inspected before deciding
    how to handle them.
-   Zero quantities and zero amounts were retained for review rather
    than automatically removed.
-   Repeated order IDs were not treated as duplicates because an order
    may contain multiple product lines.
-   Review `Amazon_Rows_To_Review.csv` and the quality report before
    relying on affected records.

## How to Reproduce

1.  Clone or download this repository.

2.  Install Python dependencies:

    ``` bash
    pip install pandas numpy
    ```

3.  Place the source CSV in the project folder and run the Pandas
    cleaning script.

4.  Open the SQL script in SSMS and update table or column names if your
    imported schema differs.

5.  Open the `.pbix` file in Power BI Desktop. If prompted, update the
    data source path to your local cleaned CSV.

## Limitations

-   The analysis reflects the fields available in the source dataset.
-   Sales amount does not equal profit because cost data is not
    included.
-   Unique shipping cities are a geographic metric, not a customer
    metric.
-   Date parsing and any unresolved data-quality issues should be
    verified before using time-based conclusions.

## Author

**Shashanki Rawat**

Built as a data analytics portfolio project using Python, SQL Server,
and Power BI.
