-- 1. Check for duplicate Opportunity IDs (Should return 0 rows)
SELECT opportunity_id, COUNT(*) AS duplicate_count
FROM sales_pipeline_cleaned
GROUP BY opportunity_id
HAVING COUNT(*) > 1;

-- 2. Verify Deal Stage Summary & Total Revenue
SELECT 
    deal_stage, 
    COUNT(opportunity_id) AS total_deals, 
    SUM(close_value) AS total_revenue,
    AVG(CAST(deal_duration_days AS FLOAT)) AS avg_deal_duration
FROM sales_pipeline_cleaned
GROUP BY deal_stage
ORDER BY total_revenue DESC;

-- 3. Check for Orphaned Accounts (Deals linked to accounts not in the accounts table)
SELECT DISTINCT sp.account 
FROM sales_pipeline_cleaned sp
LEFT JOIN accounts_crm a ON sp.account = a.account
WHERE a.account IS NULL AND sp.account <> 'Unassigned Account';