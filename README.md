# SWYNEX-Techonologies-Data analyst internship
# B2B CRM Sales Pipeline Analysis & Data Cleaning Project

## 📌 Project Overview
This project focuses on an end-to-end data lifecycle—spanning data cleaning, relational database architecture, exploratory data analysis (EDA), and executive dashboarding of a **B2B Sales Pipeline dataset** (sourced from Maven Analytics). The primary objective was to transform raw multi-sheet CRM data into a clean, relational structure using **Microsoft Excel** and **SQL Server Management Studio (SSMS)**, followed by advanced T-SQL queries and an interactive Excel dashboard to track sales performance and uncover revenue drivers.

---

## 🛠️ Tools & Technologies
- **Excel:** Initial data exploration, formatting standardization, error identification, and executive dashboard layout / KPI card construction.
- **SQL Server Management Studio (SSMS):** Database creation, relational schema design, and T-SQL exploratory and cleaning scripts.
- **T-SQL:** Data cleaning functions (`COALESCE`, `ISNULL`), date math (`DATEDIFF`, `FORMAT`), conditional aggregation (`CASE WHEN`), and multi-table joins.

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
- **Handling Missing Values:** Replaced unassigned or blank account strings with `'Unassigned Account'` using `COALESCE`, and populated missing close values with `0`.
- **String Standardization:** Trimmed unwanted whitespace and standardized text casing across text fields like `deal_stage`.
- **Derived Metrics:** Calculated the sales cycle duration (`deal_duration_days`) using SQL Server’s `DATEDIFF` function between engagement dates and close dates.
- **Data Type Enforcement:** Applied `TRY_CAST` to safeguard date formatting and prevent conversion errors.

---

## 📊 Exploratory Data Analysis (T-SQL Insights)
Using T-SQL in SSMS, 5 core analytical queries were performed to map business performance:
1. **Pipeline Funnel (`Query 1`)**: Evaluated deal stages across 8,800+ opportunities, confirming **4,238 closed-won deals** and a **48% overall win conversion rate**[cite: 1, 3].
2. **Product Performance (`Query 2`)**: Used conditional aggregation (`CASE WHEN`) to identify **GTXPro** as the top revenue generator at over **₹35.1 Lakhs** (51.3% win rate)[cite: 3].
3. **Regional Velocity (`Query 3`)**: Joined sales teams to evaluate regional output, showing the **West** region leading in revenue (**₹35.6 Lakhs**) with a 51.8-day average closing time[cite: 2].
4. **Industry Sectors (`Query 4`)**: Linked accounts data to measure sector performance, highlighting **Retail** (**₹18.6 Lakhs** across 799 deals) and **Technology** as top revenue sectors[cite: 4].
5. **Monthly Time-Series (`Query 5`)**: Applied `FORMAT` date functions to map closed-won revenue chronologically, noting peak performance in June 2017 (**₹13.38 Lakhs**)[cite: 5].

---

## 📈 Excel Executive Dashboard (`EDA_Dashboard`)
To bridge SQL analysis with stakeholder-ready reporting, an interactive Excel dashboard was built featuring:
- **Executive KPI Cards**: 
  - Total Won Deals: **4,238**[cite: 1]
  - Total Revenue: **₹18.17 Cr**[cite: 1]
  - Pipeline Win Rate: **48%**[cite: 1]
  - Average Deal Duration: **47.99 days**[cite: 1]
- **Interactive Visual Charts**:
  - *Sales Pipeline Volume by Stage* (Bar Chart)
  - *Revenue Contribution by Product Line* (Horizontal Bar Chart)
  - *Monthly Closed-Won Revenue Trend* (Line Chart)

---

## 🚀 How to Run the Scripts & View the Dashboard
1. Clone this repository or download the source files.
2. Open **SQL Server Management Studio (SSMS)** and run the schema creation scripts under `Swynex_CRM_DB`.
3. Execute the `data_cleaning.sql` and EDA scripts to generate the analytical views.
4. Open the Excel workbook to inspect the raw sheets and the finalized `EDA_Dashboard` tab.

---
*Created by [Yashaswini Polakonda](https://github.com/Yashaswini-p05)*
