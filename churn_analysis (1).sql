-- Bank Customer Churn Analysis
-- Dataset: Bank Customer Churn (Kaggle), 10,000 records
-- Tool: Google BigQuery

-- Query 1: Overall churn rate
SELECT 
    Exited,
    COUNT(*) AS customer_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM `bank-churn-analysis-504903.Bank_Churn.Customers`
GROUP BY Exited;

-- Query 2: Churn rate by geography
SELECT 
    Geography,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM `bank-churn-analysis-504903.Bank_Churn.Customers`
GROUP BY Geography
ORDER BY churn_rate_pct DESC;

-- Query 3: Churn by active membership status
SELECT 
    IsActiveMember,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM `bank-churn-analysis-504903.Bank_Churn.Customers`
GROUP BY IsActiveMember;

-- Query 4: Churn by number of products
SELECT 
    NumOfProducts,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM `bank-churn-analysis-504903.Bank_Churn.Customers`
GROUP BY NumOfProducts
ORDER BY NumOfProducts;

-- Query 5: Churn by age group
SELECT 
    CASE 
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 45 THEN '30-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE 'Over 60'
    END AS age_group,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM `bank-churn-analysis-504903.Bank_Churn.Customers`
GROUP BY age_group
ORDER BY churn_rate_pct DESC;
