# Synthetic Health Claims Analysis

This project analyzes a synthetic health insurance claims dataset to identify patterns in claim denials, follow-ups, and diagnosis-related denial rates.

---

## 📂 Project Overview

**Objective:**  
Demonstrate SQL, data visualization, and business analysis skills on realistic claims data.

**Data Source:**  
Synthetic health insurance claims data containing 1,000 records with fields including:
- Claim ID
- Provider ID
- Patient ID
- Date of Service
- Billed Amount
- Procedure Code
- Diagnosis Code
- Allowed Amount
- Paid Amount
- Insurance Type
- Claim Status
- Reason Code
- Follow-up Required
- AR Status
- Outcome

---

## 📊 Business Questions Answered

### 1️⃣ What are the Top 10 Most Common Denial Reason Codes?

- **Goal:** Identify the most frequent denial reasons to prioritize process improvements.
- **SQL Query:**  
  `queries/top_denial_reasons.sql`
- **Output:**  
  `outputs/query_results/denial_reasons.csv`
- **Visualization:**  
  ![Top Denial Reasons](outputs/visualizations/top_denials.png)

---

### 2️⃣ Which Insurance Types Have the Most Denied Claims Requiring Follow-Up?

- **Goal:** Understand which insurance carriers generate the most follow-up workload.
- **SQL Query:**  
  `queries/denial_by_insurance_followup.sql`
- **Output:**  
  `outputs/query_results/followup_by_insurance.csv`
- **Visualization:**  
  ![Denials by Insurance Type](outputs/visualizations/denials_by_insurance.png)

---

### 3️⃣ Which Diagnosis Codes Are Associated with Higher Denial Rates?

- **Goal:** Explore whether specific diagnoses have higher denial frequencies.
- **SQL Query:**  
  `queries/diagnosis_denial_rate.sql`
- **Output:**  
  `outputs/query_results/diagnosis_denial_rate.csv`
- **Visualization:**  
  ![Denial Rate by Diagnosis](outputs/visualizations/denial_rate_by_diagnosis.png)

---

## ⚙️ Tools & Technologies

- **SQLite** for query execution
- **Python** (Pandas, Matplotlib) for data visualization
- **Jupyter Notebook** for analysis workflow
- **GitHub** for version control and project showcase

---

## 📈 Key Insights

- A small number of reason codes account for most denials.
- Certain insurance types consistently require more follow-up.
- Diagnosis codes show varying denial rates, indicating opportunities for documentation improvement.

---

## 📂 Folder Structure

