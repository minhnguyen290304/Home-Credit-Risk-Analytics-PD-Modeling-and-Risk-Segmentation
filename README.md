# Home Credit Credit Risk Analytics: PD Modeling & Risk Segmentation

<img src="https://storage.googleapis.com/kaggle-media/competitions/home-credit/about-us-home-credit.jpg" width="90%">

## Project Overview

Access to credit remains a major challenge for individuals with limited or non-traditional credit histories. Traditional lending approaches often reject potentially creditworthy applicants due to insufficient information, limiting financial inclusion and growth opportunities.

This project develops an end-to-end Credit Risk Analytics and Credit Scoring solution using the Home Credit Default Risk dataset. By integrating customer application data, external bureau records, previous loan history, and repayment behavior, the project estimates each customer's Probability of Default (PD), segments borrowers into risk bands, and provides portfolio-level risk monitoring through interactive dashboards.

The objective is to demonstrate how data-driven credit risk analytics can support lending decisions, portfolio management, and customer risk monitoring.

---

## Business Objectives

This project aims to support credit risk decision-making by addressing four key business questions:

### 1. Which customers are most likely to default?

Develop a Probability of Default (PD) model capable of estimating repayment risk for individual borrowers.

### 2. How can customers be segmented based on risk?

Transform model outputs into practical risk bands that support lending, pricing, and portfolio monitoring strategies.

### 3. What borrower characteristics are associated with higher credit risk?

Identify demographic, financial, and behavioral factors that differentiate low-risk and high-risk customers.

### 4. How can risk exposure be monitored across the portfolio?

Provide business-friendly dashboards that enable continuous monitoring of portfolio quality and customer risk distribution.

---

## Dataset Overview

The dataset originates from the Home Credit Default Risk competition on Kaggle and contains customer-level information across multiple sources.

<img src="https://storage.googleapis.com/kaggle-media/competitions/home-credit/home_credit.png" width="100%">

| Dataset | Description |
|----------|------------|
| application_train | Customer loan applications and default labels |
| bureau | Historical credits from external financial institutions |
| bureau_balance | Monthly bureau credit status history |
| previous_application | Historical Home Credit loan applications |
| installments_payments | Loan repayment history and delinquency behavior |

The project combines these datasets to create a unified customer-level risk mart used for modeling and business intelligence reporting.

---

# Project Workflow

```text
Raw Credit Data
       ↓
Data Validation & Preparation (SQL Server)
       ↓
Feature Engineering
       ↓
Credit Scoring Model (XGBoost)
       ↓
Probability of Default (PD)
       ↓
Risk Segmentation (A-E)
       ↓
Portfolio Risk Mart
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
| MS SQL Server | Data validation, aggregation, feature mart development |
| Python | Feature engineering, credit scoring, risk segmentation |
| XGBoost | Probability of Default (PD) modeling |
| Power BI | Portfolio monitoring and risk reporting |

---

# Executive Summary

<img src="dashboard preview/executive_summary.png" width="100%">

Portfolio-level analysis reveals a default rate of approximately 8%, with significant variation across risk segments.

Risk Band E exhibits the highest default rate, exceeding 25%, while Risk Band A maintains a default rate below 1%, demonstrating strong separation between high-risk and low-risk borrowers.

The portfolio exposure analysis further highlights how credit exposure is distributed across risk segments, enabling more effective risk monitoring and capital allocation decisions.

---

# Credit Risk Segmentation

<img src="dashboard preview/customer_risk_segmentation.png" width="100%">

Customer segmentation analysis reveals substantial differences in default behavior across borrower groups.

Borrowers with lower education levels, unstable employment status, and certain occupation categories exhibit significantly higher default rates than the portfolio average.

These findings can support customer targeting strategies, underwriting policies, and risk-based pricing decisions.

---

# Behavioral Credit Risk

<img src="dashboard preview/behavioral_credit_risk.png" width="100%">

Repayment behavior emerges as one of the strongest indicators of future credit risk.

Customers with higher delinquency levels and repeated late-payment behavior consistently demonstrate elevated default probabilities. Approval rates also decline as customer risk increases, reflecting the relationship between repayment performance and creditworthiness.

Behavioral indicators provide an additional layer of risk assessment beyond traditional demographic and financial attributes.

---

# Credit Scoring Model

<img src="dashboard preview/credit_scoring_model.png" width="100%">

The credit scoring model was developed using XGBoost and achieved a ROC-AUC score of approximately 0.77.

Feature importance analysis identifies external credit scores, repayment history, and historical borrowing behavior as key drivers of default prediction.

Predicted Probability of Default (PD) aligns closely with observed default rates across risk bands, indicating that the model provides meaningful risk differentiation.

---

# Key Analytical Findings

### Insight 1: Credit Risk Is Highly Concentrated

Default rates increase sharply from Risk Band A to Risk Band E, demonstrating effective separation between low-risk and high-risk borrowers.

### Insight 2: Repayment Behavior Predicts Future Risk

Customers with frequent late payments and delinquency records consistently exhibit higher default probabilities.

### Insight 3: External Credit Information Matters

Bureau-related variables and external risk scores are among the strongest predictors of default behavior.

### Insight 4: Risk Segmentation Supports Portfolio Monitoring

Grouping customers into risk bands provides a practical framework for monitoring exposure, default performance, and portfolio quality.

---

# Business Recommendations

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

⭐ Nothing is impossible  
💫 Learn, learn more, learn forever
