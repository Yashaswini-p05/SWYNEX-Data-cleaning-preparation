# 📊 SWYNEX Technologies — Data Analyst Internship
**Repository:** `SWYNEX-Technologies-Data-Analyst-Internship`  
**Author:** [Yashaswini Polakonda](https://github.com/Yashaswini-p05)  
**Role:** Data Analyst Intern | Data & AI Domain  
**Organization:** SWYNEX Technologies  

---

## 📌 Project & Case Study Overview

During my virtual Data Analyst Internship with **SWYNEX Technologies**, I completed a multi-stage data analytics case study analyzing a **B2B CRM Sales Pipeline dataset** (8,451+ transactional records sourced from Maven Analytics). 

The primary objective was to clean raw multi-sheet CRM data, build a relational star schema database, perform exploratory T-SQL analytics, create an Excel EDA report, and build an executive **Power BI Business Intelligence Dashboard** equipped with DAX metrics and strategic business recommendations.

---

## 🛠️ Tech Stack & Technical Competencies

- **Database Engineering:** Microsoft SQL Server Management Studio (SSMS), T-SQL (`COALESCE`, `TRY_CAST`, `DATEDIFF`, `FORMAT`, Multi-Table `JOIN`s, Conditional Aggregation)
- **Data Modeling & BI:** Power BI Desktop, Star Schema Relational Modeling, DAX Measures (`CALCULATE`, `SUM`, `COUNT`, `AVERAGE`)
- **Spreadsheet Analytics:** Microsoft Excel, Data Preparation, KPI Card Construction, Interactive Visuals
- **Documentation & Reporting:** Technical Case Studies, Strategic Recommendation Panels, Walkthrough Video Presentations

---

## 🗄️ Database Architecture & Schema (`Swynex_CRM_DB`)

- **`sales_pipeline_crm` (Fact Table):** Tracks `opportunity_id`, `sales_agent`, `product`, `account`, `deal_stage`, `engage_date`, `close_date`, and `close_value`.
- **`accounts_crm` (Dimension Table):** Client details including `sector`, `year_established`, `annual_revenue`, `employee_count`, and `office_location`.
- **`products_crm` (Dimension Table):** Product catalog listing `product_name`, `series`, and `sales_price`.
- **`sales_teams_crm` (Dimension Table):** Hierarchy mapping `sales_agent` to `manager` and `regional_office`.
- **`data_dictionary_crm` (Metadata):** Definitions and parameter rules for all fields.

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
├── Task-4-Final-Project-Case-Study/
│   ├── Case_Study_Document.pdf
│   └── README.md
│
└── README.md  <-- (Master Repository Overview)
