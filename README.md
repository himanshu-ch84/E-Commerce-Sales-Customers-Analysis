# E-Commerce Sales & Customer Analysis

An end-to-end **Data Analyst project** focused on analyzing e-commerce sales, customer behavior, product performance, regional performance, payment methods, delivery performance, and monthly revenue trends.

The project follows a complete analytics workflow using **Python for data cleaning, SQL for business analysis, and Power BI for interactive visualization and reporting**.

---

## 📌 Project Overview

The dataset contains **5,000 e-commerce orders from 989 unique customers**.

The main objective of this project is to transform raw order data into meaningful business insights and actionable recommendations.

The analysis focuses on:

* Product and category performance
* Regional revenue and delivery performance
* Customer spending and repeat-customer behavior
* Payment method performance
* Monthly revenue trends
* Customer satisfaction
* Delivery performance
* Business recommendations

---

## 📁 Project Structure

```text
E-Commerce-Sales-Customer-Analysis/
│
├── data/
│   ├── raw/
│   │   └── ecommerce.csv
│   │
│   └── cleaned/
│       └── ecommerce_sales_customers.csv
│
├── python/
│   └── data_cleaning.py
│
├── sql/
│   └── ecommerce_analysis.sql
│
├── power_bi/
│   ├── ecommerce_dashboard.pbix
│   │
│   └── screenshots/
│       ├── overall_analysis.png
│       ├── sale_analysis.png
│       ├── region_analysis.png
│       ├── time_analysis.png
│       ├── customer_analysis.png
│       └── insights.png
│
├── report/
│   └── ecommerce sales and customer analysis.pdf
│
└── README.md
```

---

## 🛠️ Tools & Technologies

### Python

* Pandas
* Data cleaning
* Data preprocessing
* Missing-value checking
* Date standardization

### SQL / MySQL

* SELECT
* WHERE
* GROUP BY
* HAVING
* Aggregate functions
* Joins
* CTEs
* Window functions

### Power BI

* KPI Cards
* Bar Charts
* Line Charts
* Donut Chart
* Slicers
* Interactive filtering
* Business insights

---

## 🎯 Business Questions

### Sales & Product Performance

* Which product category generates the highest and lowest revenue?
* Which category has the highest quantity sold?
* Which category has the highest average order value?

### Regional Performance

* Which region generates the highest revenue?
* Which region has the fastest average delivery time?
* Which region has the highest customer rating?

### Customer & Payment Analysis

* Which payment method contributes the highest revenue?
* Who are the top 10 customers by total spending?
* What percentage of customers are repeat customers?

### Time Analysis

* Which month records the highest revenue?
* Which month records the lowest revenue?

### Overall Performance

* What is the total revenue?
* What is the average order value?
* What is the overall customer rating?
* What is the average delivery time?

---

## 📊 Key Performance Indicators

| KPI                        |        Result |
| -------------------------- | ------------: |
| Total Revenue              |     **5.11M** |
| Total Orders               |     **5,000** |
| Total Customers            |       **989** |
| Average Order Value        |     **1.02K** |
| Average Customer Rating    |      **2.97** |
| Average Delivery Time      | **6.12 days** |
| Repeat Customer Percentage |    **96.06%** |

---

## 🔍 Key Business Insights

### 📦 Product Performance

* **Electronics** is the highest-revenue category with approximately **1.83M**.
* Electronics also has the highest quantity sold with approximately **7,109 units**.
* **Beauty** generates the lowest revenue at approximately **765.86K**.
* Beauty has the highest average order value at approximately **1.06K**.

### 🌎 Regional Performance

* **West** is the highest-revenue region with approximately **1.35M**.
* West also has the fastest average delivery time at approximately **6.08 days**.
* **North** has the highest average customer rating at approximately **2.99**.

### 💳 Payment Performance

* **Card** is the highest-revenue payment method with approximately **2.37M**.
* Card contributes approximately **46.31%** of total revenue.
* COD contributes approximately **35%**.
* Wallet contributes approximately **18.69%**.

### 📅 Time Performance

* **May** records the highest monthly revenue at approximately **479.77K**.
* **April** records the lowest monthly revenue at approximately **398.72K**.
* These results represent month-of-year patterns and should be validated with year-over-year analysis before making strong seasonality conclusions.

### 👥 Customer Performance

* Approximately **96.06%** of customers placed more than one order.
* Customer **1663** is the highest-spending customer with approximately **17.68K** in revenue.
* The top 10 customers generated approximately **148.60K** in total revenue.

### ⭐ Customer Experience

* The overall average customer rating is **2.97**.
* Average delivery time is **6.12 days**.
* Customer experience is therefore an important area for further investigation.

---

## 💡 Business Recommendations

1. **Maintain strong Electronics inventory** and identify the products driving its high revenue and quantity.

2. **Increase Beauty category order frequency** through targeted promotions, bundles, and customer campaigns.

3. **Study West-region practices** because it combines the highest revenue with the fastest average delivery.

4. **Investigate the drivers of the 2.97 average customer rating**, particularly delivery, product quality, returns, and customer support.

5. **Evaluate lower-share payment methods** and consider targeted incentives to improve their adoption.

6. Use monthly revenue patterns for **inventory and campaign planning**, while validating seasonality through year-over-year analysis.

---

## 🧹 Data Preparation

Python and Pandas were used to prepare the dataset before SQL and Power BI analysis.

### Data preparation steps

* Loaded the raw CSV dataset using Pandas
* Checked missing values
* Standardized column names
* Converted mixed-format order dates into a consistent format
* Exported the cleaned dataset for SQL and Power BI

The original dataset is retained in the `data/raw` folder, while the standardized dataset is stored in the `data/cleaned` folder.

---

## 🗄️ SQL Analysis

SQL was used as the main analytical layer to answer the business questions.

The analysis includes:

* Filtering and sorting
* Aggregations
* GROUP BY
* HAVING
* Joins
* CTEs
* Window functions
* Customer ranking
* Revenue analysis
* Category analysis
* Regional analysis
* Payment analysis
* Monthly revenue analysis

The SQL queries are available in:

```text
sql/ecommerce_analysis.sql
```

---

## 📈 Power BI Dashboard

The Power BI dashboard contains **six analytical pages**.

### 1. Overall

Provides a high-level summary of:

* Total Revenue
* Total Orders
* Total Customers
* Average Order Value
* Average Customer Rating
* Average Delivery Time

### 2. Sales Analysis

Analyzes:

* Revenue by product category
* Quantity sold
* Average order value
* Payment methods
* Category and regional filtering

### 3. Region Analysis

Analyzes:

* Revenue by region
* Delivery performance
* Customer ratings
* Payment methods
* Regional filtering

### 4. Time Analysis

Analyzes:

* Monthly revenue
* Highest and lowest revenue months
* Delivery time
* Order-date filtering

### 5. Customer Analysis

Analyzes:

* Top 10 customers by spending
* Repeat customer percentage
* Revenue by payment method
* Customer-level performance

### 6. Insights

Summarizes the major business findings and recommendations.

---

## 📷 Dashboard Screenshots

### Overall Analysis

![Overall Analysis](power_bi/screenshots/overall_analysis.png)

### Sales Analysis

![Sales Analysis](power_bi/screenshots/sale_analysis.png)

### Region Analysis

![Region Analysis](power_bi/screenshots/region_analysis.png)

### Time Analysis

![Time Analysis](power_bi/screenshots/time_analysis.png)

### Customer Analysis

![Customer Analysis](power_bi/screenshots/customer_analysis.png)

### Business Insights

![Business Insights](power_bi/screenshots/insights.png)

---

## 🔄 Project Workflow

```text
Raw Data
   ↓
Python / Pandas
   ↓
Data Cleaning & Standardization
   ↓
Cleaned Dataset
   ↓
MySQL / SQL
   ↓
Business Analysis
   ↓
Power BI
   ↓
Interactive Dashboard
   ↓
Business Insights
   ↓
Business Recommendations
```

---

## 📄 Project Report

A detailed project report is available in the `report` folder.

The report includes:

* Project overview
* Business questions
* Data preparation
* SQL analysis
* Sales analysis
* Regional analysis
* Time and payment analysis
* Customer analysis
* Power BI dashboard
* Business insights
* Recommendations
* Methodology
* Conclusion

---

## 🎓 Skills Demonstrated

This project demonstrates practical experience in:

* **Python**
* **Pandas**
* **SQL**
* **MySQL**
* **Data Cleaning**
* **Data Analysis**
* **Exploratory Analysis**
* **Power BI**
* **Data Visualization**
* **Business Intelligence**
* **Business Insights**
* **Data Storytelling**

---

## 🏁 Conclusion

This project demonstrates an end-to-end Data Analyst workflow, starting with raw e-commerce data and progressing through **data cleaning, SQL analysis, Power BI visualization, business insights, and recommendations**.

The project focuses on connecting analytical results with business questions rather than simply presenting charts and metrics.

---

## 👤 Author

**Himanshu Chaudhary**

Aspiring Data Analyst

**Skills:** SQL • Python • Excel • Power BI


