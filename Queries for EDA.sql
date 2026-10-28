--Overall Pipeline Funnel & Stage Breakdown--
SELECT 
     deal_stage,
     COUNT(opportunity_id) AS total_deals,
     ROUND(CAST(COUNT(opportunity_id) AS FLOAT) * 100.0/(SELECT COUNT(*)FROM sales_pipeline_cleaned),2)AS stage_percentage,
     SUM(close_value) AS total_revenue
FROM sales_pipeline_cleaned
GROUP BY deal_stage
ORDER BY total_deals DESC;

--Prouduct Performance & Win Rates --
SELECT 
    product,
    COUNT(opportunity_id) AS total_deals,
    SUM(CASE WHEN deal_stage = 'Won' THEN 1 ELSE 0 END) AS won_deals,
    ROUND(CAST(SUM(CASE WHEN deal_stage = 'Won' THEN 1 ELSE 0 END) AS FLOAT) * 100.0 / COUNT(opportunity_id), 2) AS win_rate_pct,
    SUM(close_value) AS total_revenue
FROM sales_pipeline_cleaned
GROUP BY product
ORDER BY total_revenue DESC;

--Top Sales Regional & Manager Hierarchy --
SELECT 
    ISNULL(st.regional_office, 'Unassigned') AS regional_office,
    COUNT(sp.opportunity_id) AS total_deals,
    SUM(CASE WHEN sp.deal_stage = 'Won' THEN 1 ELSE 0 END) AS won_deals,
    SUM(sp.close_value) AS total_revenue,
    ROUND(AVG(CAST(sp.deal_duration_days AS FLOAT)), 1) AS avg_days_to_close
FROM sales_pipeline_cleaned sp
LEFT JOIN sales_teams_crm st ON sp.sales_agent = st.sales_agent
WHERE sp.deal_stage = 'Won'
GROUP BY st.regional_office
ORDER BY total_revenue DESC;

--Industry Sector Revenue & Deal Size --
SELECT 
    a.sector,
    COUNT(DISTINCT a.account) AS total_accounts,
    COUNT(sp.opportunity_id) AS total_deals,
    SUM(sp.close_value) AS total_revenue,
    ROUND(AVG(CAST(sp.close_value AS FLOAT)), 2) AS avg_deal_size
FROM sales_pipeline_cleaned sp
JOIN accounts_crm a ON sp.account = a.account
WHERE sp.deal_stage = 'Won'
GROUP BY a.sector
ORDER BY total_revenue DESC;

--Monthly Revenue Trend (Time Series) --
SELECT 
    FORMAT(close_date, 'yyyy-MM') AS close_month,
    COUNT(opportunity_id) AS won_deals,
    SUM(close_value) AS monthly_revenue
FROM sales_pipeline_cleaned
WHERE deal_stage = 'Won' AND close_date IS NOT NULL
GROUP BY FORMAT(close_date, 'yyyy-MM')
ORDER BY close_month ASC;