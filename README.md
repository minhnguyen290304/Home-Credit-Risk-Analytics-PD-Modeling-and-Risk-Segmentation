# Home Credit Credit Risk Analytics: PD Modeling & Risk Segmentation

<table>
<tr>

<td width="55%">
<img src="./dashboard preview/executive_summary.png" width="100%">
</td>

<td width="45%">

<h3>🏦 Home Credit Credit Risk Analytics: PD Modeling & Risk Segmentation</h3>

<p>
Built an end-to-end Credit Risk Analytics and Credit Scoring solution using bureau, previous loan, and repayment data to estimate Probability of Default (PD) with XGBoost. Developed risk segmentation frameworks and interactive dashboards for portfolio monitoring, customer profiling, and credit risk reporting.
</p>

<b>🔧 Tools Used</b><br>

<img src="https://img.shields.io/badge/MS_SQL_Server-CC2927?style=flat-square&logo=microsoftsqlserver&logoColor=white">
<img src="https://img.shields.io/badge/Power_BI-F2C811?style=flat-square&logo=powerbi&logoColor=black">
<img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white">
<img src="https://img.shields.io/badge/XGBoost-FF6F00?style=flat-square">

</td>

</tr>
</table>

---

## 📌 Business Objective

Financial institutions need to identify high-risk customers before loan approval while maintaining portfolio quality and minimizing credit losses.

This project aims to:

- Estimate Probability of Default (PD) for each customer
- Segment customers into risk bands based on predicted risk
- Monitor portfolio risk exposure and customer behavior
- Support credit risk reporting through interactive dashboards

---

## 📂 Dataset

**Source:** Home Credit Default Risk (Kaggle)

Datasets used:

- application_train
- bureau
- bureau_balance
- previous_application
- installments_payments

---

## ⚙️ Project Workflow

```text
Raw Credit Data
        ↓
Feature Engineering
        ↓
XGBoost PD Model
        ↓
Probability of Default (PD)
        ↓
Risk Segmentation (A-E)
        ↓
SQL Risk Mart
        ↓
Power BI Dashboard
```

---

## 🤖 Credit Scoring Model

**Model:** XGBoost Classifier

**Output:** Probability of Default (PD)

**Performance:**

- ROC-AUC: 0.769

---

## 🚨 Risk Segmentation

| Risk Band | Description |
|------------|------------|
| A | Lowest Risk |
| B | Low Risk |
| C | Medium Risk |
| D | High Risk |
| E | Highest Risk |

---

## 📊 Dashboard Overview

### Executive Summary

<img src="./dashboard preview/executive_summary.png" width="100%">

### Customer Risk Segmentation

<img src="./dashboard preview/customer_risk_segmentation.png" width="100%">

### Behavioral Credit Risk

<img src="./dashboard preview/behavioral_credit_risk.png" width="100%">

### Credit Scoring Model

<img src="./dashboard preview/credit_scoring_model.png" width="100%">

---

## 💡 Key Insights

- Default rates increase consistently from Band A to Band E.
- Previous repayment behavior is a strong indicator of future default risk.
- High-risk customer segments exhibit significantly higher delinquency behavior.
- Portfolio exposure can be monitored through risk-based segmentation.

---

## 🛠️ Tech Stack

- Python
- Pandas
- NumPy
- XGBoost
- SQL Server
- Power BI
