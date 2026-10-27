# SWYNEX-Data-cleaning-preparation
# B2B CRM Sales Pipeline Analysis & Data Cleaning Project

## 📌 Project Overview
This project focuses on end-to-end data cleaning, database structuring, and exploratory data analysis of a **B2B Sales Pipeline dataset** (sourced from Maven Analytics). The primary objective was to transform raw multi-sheet CRM data into a clean, relational database using **Microsoft Excel** and **SQL Server Management Studio (SSMS)**, enabling accurate sales performance tracking and revenue analysis.

---

## 🛠️ Tools & Technologies
* **Excel:** Initial data exploration, formatting standardization, and error identification.
* **SQL Server Management Studio (SSMS):** Database creation, relational table schema design, and T-SQL data transformation.
* **T-SQL:** Data cleaning functions, conditional statements (`COALESCE`, `ISNULL`), date calculations (`DATEDIFF`), and aggregation queries.

---

## 🗄️ Database Schema & Architecture
The database (`Swynex_CRM_DB`) consists of five relational tables:
1. **`sales_pipeline_crm`**: Core transactional table tracking opportunity IDs, sales agents, products, accounts, deal stages, and dates.
2. **`accounts_crm`**: Client account details, including sector, year established, revenue, employee count, and office location.
3. **`products_crm`**: Product catalogue with series and sales prices.
4. **`sales_teams_crm`**: Sales agent hierarchy mapping agents to managers and regional offices.
5. **`data_dictionary_crm`**: Field definitions and data descriptions for metadata documentation.

---

## 🧹 Data Cleaning & Transformation Steps
To ensure data integrity prior to analysis, the following T-SQL cleaning procedures were executed:
* **Handling Missing Values:** Replaced unassigned or blank account strings with `'Unassigned Account'` using `COALESCE`, and populated missing close values with `0`.
* **String Standardization:** Trimmed unwanted whitespace and standardized text casing across text fields like `deal_stage`.
* **Derived Metrics:** Calculated the sales cycle duration (`deal_duration_days`) using SQL Server’s `DATEDIFF` function between engagement dates and close dates.
* **Data Type Enforcement:** Applied `TRY_CAST` to safeguard date formatting and prevent conversion errors.

---

## 📊 Key Validation & Business Insights
Validation queries were run to ensure zero duplicates and verify primary-foreign key relationships. Summary analyses of the cleaned pipeline revealed:
* **Won Deals:** Successfully tracked **4,238 closed-won deals** generating over **$10M in total revenue**.
* **Pipeline Distribution:** Monitored active deals across *Prospecting*, *Engaging*, *Lost*, and *Won* stages to evaluate conversion bottlenecks.

---

## 🚀 How to Run the Scripts
1. Clone this repository or download the source files.
2. Open **SQL Server Management Studio (SSMS)**.
3. Run the schema creation and import scripts in your local SQL instance under `Swynex_CRM_DB`.
4. Execute the `data_cleaning.sql` script to generate the production-ready analytical view/table (`sales_pipeline_cleaned`).

---
*Created by [Yashaswini Polakonda](https://github.com/Yashaswini-p05)*
