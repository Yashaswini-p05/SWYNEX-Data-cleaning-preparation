# 📊 SWYNEX Technologies — Data Analyst Internship
**Repository:** `SWYNEX-Technologies-Data-Analyst-Internship`  
**Author:** [Yashaswini Polakonda](https://github.com/Yashaswini-p05)  
**Role:** Data Analyst Intern | Data & AI Domain  

---

## 📌 Internship & Project Overview

During my virtual Data Analyst Internship with **SWYNEX Technologies** (Data & AI Domain), I executed an end-to-end data analytics project focused on **B2B CRM Sales Pipeline Analysis & Business Intelligence**.

The goal of this project was to transform a raw multi-sheet B2B CRM dataset (sourced from Maven Analytics) into a clean relational database schema, execute deep T-SQL exploratory data analysis, build an interactive Excel executive dashboard, and engineer an executive-ready **Power BI Business Intelligence Dashboard** complete with DAX modeling and strategic business recommendations.

---

## 🛠️ Tech Stack & Skills Demonstrated

- **Database & Data Engineering:** Microsoft SQL Server Management Studio (SSMS), T-SQL (`COALESCE`, `TRY_CAST`, `DATEDIFF`, `FORMAT`, multi-table `JOIN`s, conditional aggregation)
- **Data Modeling & BI:** Power BI Desktop, Star Schema Relational Modeling, DAX Measures (`CALCULATE`, `SUM`, `COUNT`, `AVERAGE`)
- **Spreadsheet Analytics:** Microsoft Excel, Data Consolidation, Data Preparation, KPI Cards, Interactive Charting
- **Executive Communication:** Visual Hierarchy & Layout Design, Strategic Insight Panels, Video Walkthrough Presentation

---

## 🗄️ Relational Database Architecture (`Swynex_CRM_DB`)

The dataset spans **8,451+ transactional records** modeled into five core relational tables:
1. **`sales_pipeline_crm`**: Core fact table tracking opportunity IDs, sales agents, products, accounts, deal stages, close values, and dates.
2. **`accounts_crm`**: Client account details (sector, year established, annual revenue, employee count, office location).
3. **`products_crm`**: Product catalog listing product series and sales prices.
4. **`sales_teams_crm`**: Sales hierarchy mapping sales agents to managers and regional offices.
5. **`data_dictionary_crm`**: Metadata documentation defining field parameters and business logic.

---

## 📋 Progression of Internship Tasks

```text
SWYNEX-Technologies-Data-Analyst-Internship/
│
├── Task-1-Excel-Data-Cleaning-And-Consolidation/
│   ├── Maven_B2B_CRM_Cleaned.xlsx
│   └── README.md
│
├── Task-2-SQL-Server-EDA-And-Excel-Dashboard/
│   ├── SQL/
│   │   ├── crm_schema_setup.sql
│   │   └── crm_data_cleaning_eda.sql
│   ├── Excel_Dashboard/
│   │   └── EDA_Dashboard.xlsx
│   └── README.md
│
├── Task-3-PowerBI-Executive-Dashboard/
│   ├── PowerBI/
│   │   └── B2B_CRM_Sales_Pipeline_Analysis.pbix
│   ├── Assets/
│   │   └── dashboard_screenshot.png
│   └── README.md
│
└── README.md  <-- (Main Repository Overview)
