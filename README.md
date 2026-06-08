# 🏦 Home Credit Risk Analytics: PD Modeling & Risk Segmentation

---

<img src="https://storage.googleapis.com/kaggle-media/competitions/home-credit/about-us-home-credit.jpg" height="70%" width="90%">

## Project Overview

Access to credit remains a major challenge for individuals with limited or non-traditional credit histories. Traditional lending approaches often reject potentially creditworthy applicants due to insufficient information, limiting financial inclusion and growth opportunities.

This project develops an end-to-end Credit Risk Analytics and Credit Scoring solution using the Home Credit Default Risk dataset. By integrating customer application data, external bureau records, previous loan history, and repayment behavior, the project estimates each customer's Probability of Default (PD), segments borrowers into risk bands, and provides portfolio-level risk monitoring through interactive dashboards.

The objective is to demonstrate how data-driven credit risk analytics can support lending decisions, portfolio management, and customer risk monitoring.

#### The project consists of 7 main parts:

```text
1. Business Objectives

2. Dataset Overview

3. Project Workflow

4. Executive Summary

5. Analytical Findings

      5.1 Risk Segmentation Analysis
      5.2 Customer Risk Profile Analysis
      5.3 Behavioral Credit Risk Analysis

6. Key Business Insights

7. Business Recommendations
```

---

# 1. Business Objectives

This project aims to support credit risk decision-making by addressing four key business questions:

1. Which customers are most likely to default?

2. How can customers be segmented based on risk?

3. What borrower characteristics are associated with higher credit risk?

4. How can risk exposure be monitored across the portfolio?

---

# 2. Dataset Overview

The dataset originates from the <a href = "https://www.kaggle.com/competitions/home-credit-default-risk/overview">Home Credit Default Risk competition</a> on Kaggle and contains customer-level information across multiple sources.

<img src="https://storage.googleapis.com/kaggle-media/competitions/home-credit/home_credit.png" width="70%">

| Dataset | Description |
|----------|------------|
| application_train | Customer loan applications and default labels |
| bureau | Historical credits from external financial institutions |
| bureau_balance | Monthly bureau credit status history |
| previous_application | Historical Home Credit loan applications |
| installments_payments | Loan repayment history and delinquency behavior |

The project combines these datasets to create a unified customer-level risk mart used for modeling and business intelligence reporting.

---

# 3. Project Workflow

```text
Raw Credit Data
      ↓
Data Cleaning, Feature Engineering (Python)
      ↓
Credit Scoring Model, PD (XGBoost)
      ↓
Risk Segmentation
      ↓
Portfolio Risk Mart (SQL Server)
      ↓
Power BI Dashboard
       ↓
Interactive Power BI Dashboard
       ↓
Business Insights & Recommendations
```

The project begins by validating and aggregating customer information from multiple credit-related datasets. Feature engineering is then performed to capture customer financial profiles, borrowing history, repayment behavior, and delinquency patterns.

An XGBoost credit scoring model is subsequently developed to estimate Probability of Default (PD) for each borrower. Customers are then segmented into risk bands ranging from A (lowest risk) to E (highest risk), enabling business-oriented risk analysis.

Finally, all risk metrics are consolidated into a SQL-based portfolio mart and visualized through Power BI dashboards designed for portfolio monitoring and credit risk reporting.

---

## 🔧 Tools Used

| Tool | Purpose |
|---------|---------|
| ![Microsoft SQL Server](https://img.shields.io/badge/Microsoft_SQL_Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white) | Data validation, aggregation, feature mart development |
| ![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white) | Feature engineering, credit scoring, risk segmentation |
| <img src="https://img.shields.io/badge/XGBoost-FF6F00?style=flat-square&logo=xgboost&logoColor=white" width="40%"> | Probability of Default (PD) modeling |
| ![Power BI](https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=powerbi) | Portfolio monitoring and risk reporting |

---

# 4. Executive Summary

<img src="dashboard preview/Credit Scoring Model.png" width="100%">

An XGBoost-based credit scoring model was developed to estimate the Probability of Default (PD) for more than 300,000 loan applicants using customer application data, external bureau records, previous loan history, and repayment behavior.

The model achieved a ROC-AUC score of approximately 0.77 and was subsequently used to segment borrowers into five risk bands ranging from A (lowest risk) to E (highest risk). The resulting framework enables portfolio-level risk monitoring and customer risk assessment through business-friendly risk metrics.

<img src="dashboard preview/Executive Summary.png" width="100%">

Portfolio analysis reveals substantial differences in repayment behavior across risk segments. Default rates increase consistently from low-risk to high-risk bands, while delinquency and late-payment behavior become significantly more pronounced among higher-risk customers.

---

# 5. Analytical Findings

## 5.1. Credit Risk Segmentation

<img src="dashboard preview/Credit Risk Segmentation.png" width="100%">

Risk segmentation reveals a clear concentration of credit risk across borrower groups. Default rates increase consistently from Risk Band A to Risk Band E, demonstrating strong separation between low-risk and high-risk customers.

The analysis also shows that credit exposure is not evenly distributed across risk segments. Monitoring both default rates and exposure levels provides a more complete view of portfolio quality and helps identify areas requiring closer risk oversight.

---

## 5.2 Customer Risk Profile Analysis

<img src="dashboard preview/Credit Risk Profile.png" width="100%">

Customer profile analysis reveals meaningful differences in default behavior across demographic and socioeconomic groups.

Borrowers with lower education levels, less stable income sources, and certain occupation categories consistently exhibit higher default rates than the overall portfolio average. These patterns suggest that customer characteristics remain important indicators of repayment capability and long-term creditworthiness.

The analysis also demonstrates that credit risk is not uniformly distributed across the customer base. Certain borrower segments contribute disproportionately to overall portfolio risk, creating opportunities for more targeted underwriting and customer acquisition strategies.

---

## 5.3 Behavioral Credit Risk Analysis

<img src="dashboard preview/Behavioral Credit Risk.png" width="100%">

Repayment behavior serves as one of the strongest indicators of future credit risk. Customers with higher delinquency levels, more frequent late-payment occurrences, and longer Days Past Due (DPD) values consistently demonstrate elevated default rates.

The analysis further reveals a clear relationship between behavioral indicators and borrower quality. As delinquency measures increase, both default rates and overall risk levels rise substantially, suggesting that repayment behavior provides valuable early warning signals of deteriorating credit quality.

Unlike static customer attributes, behavioral variables continuously evolve over time and therefore offer a dynamic perspective on borrower risk. This makes behavioral monitoring particularly valuable for ongoing portfolio surveillance and proactive risk management.

---

# 6. Key Business Insights

### Insight 1: Credit Risk Is Highly Concentrated

Default rates increase sharply from Risk Band A to Risk Band E, demonstrating effective separation between low-risk and high-risk borrowers.

### Insight 2: Repayment Behavior Predicts Future Risk

Customers with frequent late payments and delinquency records consistently exhibit higher default probabilities.

### Insight 3: External Credit Information Matters

Bureau-related variables and external risk scores are among the strongest predictors of default behavior.

### Insight 4: Risk Segmentation Supports Portfolio Monitoring

Grouping customers into risk bands provides a practical framework for monitoring exposure, default performance, and portfolio quality.

---

# 7. Business Recommendations

### Strengthen Risk-Based Lending

Utilize PD scores and risk bands to support loan approval, pricing, and credit limit decisions.

### Prioritize Behavioral Monitoring

Incorporate repayment behavior indicators into ongoing customer monitoring processes.

### Focus on High-Risk Segments

Develop targeted risk mitigation strategies for borrower groups associated with elevated default rates.

### Enhance Portfolio Surveillance

Implement regular portfolio reviews using risk-based segmentation and exposure monitoring dashboards.

---

## Author

**Minh Nguyen** 🐧

---

## 📫 Connect With Me

- LinkedIn: https://www.linkedin.com/in/minh-nguyen-9016a627a/
- Email: minhnguyen29p304@gmail.com

---

⭐ Nothing is impossible  💫 Learn, learn more, learn forever
