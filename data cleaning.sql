USE Swynex_CRM_DB;
GO

-- 1. Create a Cleaned Production Table for Analysis
IF OBJECT_ID('sales_pipeline_cleaned', 'U') IS NOT NULL 
    DROP TABLE sales_pipeline_cleaned;

SELECT 
    opportunity_id,
    sales_agent,
    product,
    -- Handle missing or blank accounts
    COALESCE(NULLIF(LTRIM(RTRIM(account)), ''), 'Unassigned Account') AS account,
    
    -- Standardize Deal Stage text casing/whitespace
    LTRIM(RTRIM(deal_stage)) AS deal_stage,
    
    -- Handle NULL close values by setting them to 0
    ISNULL(close_value, 0) AS close_value,
    
    -- Ensure proper date formatting
    TRY_CAST(engage_date AS DATE) AS engage_date,
    TRY_CAST(close_date AS DATE) AS close_date,
    
    -- Calculate Deal Duration Days using DATEDIFF
    CASE 
        WHEN close_date IS NOT NULL AND engage_date IS NOT NULL 
        THEN DATEDIFF(day, engage_date, close_date)
        ELSE NULL 
    END AS deal_duration_days

INTO sales_pipeline_cleaned
FROM sales_pipeline_crm
WHERE opportunity_id IS NOT NULL;
GO