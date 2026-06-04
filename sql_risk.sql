-- 1. IMPORT CSV

CREATE DATABASE HomeCreditRisk
GO

USE HomeCreditRisk
GO

-- 2. DATA VALIDATION

SELECT TOP 10 *
FROM portfolio_risk_mart;


SELECT
    RISK_BAND,
    COUNT(*) AS customers
FROM portfolio_risk_mart
GROUP BY RISK_BAND;


SELECT
    RISK_BAND,
    AVG(CAST(TARGET AS FLOAT)) AS default_rate
FROM portfolio_risk_mart
GROUP BY RISK_BAND;


-- 3. CREATE VIEWS

-- View 1: Portfolio Overview

CREATE VIEW vw_portfolio_overview
AS
SELECT
    COUNT(*) AS total_customers,
    SUM(AMT_CREDIT) AS total_exposure,
    AVG(CAST(TARGET AS FLOAT)) AS default_rate,
    AVG(PD_SCORE) AS avg_pd
FROM portfolio_risk_mart;

-- Check:

SELECT *
FROM vw_portfolio_overview;


-- View 2: Risk Segment Summary

CREATE VIEW vw_risk_segment
AS

SELECT
    RISK_BAND,

    COUNT(*) AS customer_count,

    SUM(AMT_CREDIT) AS exposure,

    AVG(CAST(TARGET AS FLOAT))
        AS default_rate,

    AVG(PD_SCORE)
        AS avg_pd

FROM portfolio_risk_mart

GROUP BY RISK_BAND;


-- Check:

SELECT *
FROM vw_risk_segment;


-- View 3: Income Type Risk

CREATE VIEW vw_income_type_risk
AS

SELECT
    NAME_INCOME_TYPE,

    COUNT(*) AS customers,

    AVG(CAST(TARGET AS FLOAT))
        AS default_rate,

    AVG(PD_SCORE)
        AS avg_pd

FROM portfolio_risk_mart

GROUP BY NAME_INCOME_TYPE;



-- View 4: Occupation Risk

CREATE VIEW vw_occupation_risk
AS

SELECT
    OCCUPATION_TYPE,

    COUNT(*) AS customers,

    AVG(CAST(TARGET AS FLOAT))
        AS default_rate,

    AVG(PD_SCORE)
        AS avg_pd

FROM portfolio_risk_mart

GROUP BY OCCUPATION_TYPE;



-- View 5: Education Risk

CREATE VIEW vw_education_risk
AS

SELECT
    NAME_EDUCATION_TYPE,

    COUNT(*) AS customers,

    AVG(CAST(TARGET AS FLOAT))
        AS default_rate,

    AVG(PD_SCORE)
        AS avg_pd

FROM portfolio_risk_mart

GROUP BY NAME_EDUCATION_TYPE;



--  View 6: PD Band

CREATE VIEW vw_pd_band
AS

SELECT

    CASE

        WHEN PD_SCORE < 0.05
            THEN '0-5%'

        WHEN PD_SCORE < 0.10
            THEN '5-10%'

        WHEN PD_SCORE < 0.20
            THEN '10-20%'

        ELSE '20%+'

    END AS PD_BAND,

    COUNT(*) AS customers,

    AVG(CAST(TARGET AS FLOAT))
        AS default_rate,

    AVG(AMT_CREDIT)
        AS avg_credit

FROM portfolio_risk_mart

GROUP BY

    CASE

        WHEN PD_SCORE < 0.05
            THEN '0-5%'

        WHEN PD_SCORE < 0.10
            THEN '5-10%'

        WHEN PD_SCORE < 0.20
            THEN '10-20%'

        ELSE '20%+'

    END;


-- View 7: View Exposure by Risk Band

CREATE VIEW vw_exposure_by_band
AS

SELECT
    RISK_BAND,

    COUNT(*) AS customers,

    SUM(AMT_CREDIT) AS total_exposure,

    AVG(CAST(TARGET AS FLOAT)) AS default_rate,

    AVG(PD_SCORE) AS avg_pd

FROM portfolio_risk_mart

GROUP BY RISK_BAND;


-- View 8: View Income vs Risk

CREATE VIEW vw_income_band_risk
AS

SELECT

    CASE

        WHEN AMT_INCOME_TOTAL < 100000
            THEN 'Low Income'

        WHEN AMT_INCOME_TOTAL < 250000
            THEN 'Middle Income'

        ELSE 'High Income'

    END AS INCOME_BAND,

    COUNT(*) AS customers,

    AVG(CAST(TARGET AS FLOAT)) AS default_rate,

    AVG(PD_SCORE) AS avg_pd

FROM portfolio_risk_mart

GROUP BY

    CASE

        WHEN AMT_INCOME_TOTAL < 100000
            THEN 'Low Income'

        WHEN AMT_INCOME_TOTAL < 250000
            THEN 'Middle Income'

        ELSE 'High Income'

    END;


-- View 9: Top Risk Drivers

CREATE VIEW vw_top_risk_drivers
AS

SELECT TOP 10
    feature,
    importance
FROM feature_importance
ORDER BY importance DESC;


-- 4. IMPORT FEATURE IMPORTANCE TABLE
