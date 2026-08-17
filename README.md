# 🏦 Banking Loan Analysis | End-to-End Data Analytics Project

> **An end-to-end banking analytics project using Python, SQL, Excel, and Power BI to analyze loan applications, customer profiles, approval patterns, and credit-risk indicators.**

## 📌 Executive Summary

This project analyzes banking loan application data to understand **what drives loan approval, where lending risk exists, and which customer segments require deeper assessment**.

I built the project as a complete analytics workflow:

**Raw Data → Python Cleaning & EDA → SQL Business Analysis → Excel Reporting → Power BI Dashboard → Business Recommendations**

The goal was not just to create visualizations, but to convert raw loan data into **actionable insights that could support better lending and risk-monitoring decisions.**

---

## 🎯 Business Problem

Banks process large volumes of loan applications, making it important to understand:

* Which customer segments receive the most loans?
* What factors are associated with loan approval?
* How does credit history influence approval?
* How are income and requested loan amounts related?
* Which customer segments may represent higher lending risk?
* Where can the lending process be improved?

This project addresses these questions through exploratory analysis, SQL-based business queries, and an interactive Power BI dashboard.

---

## 📊 Key Business Metrics

| KPI                          | Description                                  |
| ---------------------------- | -------------------------------------------- |
| **Total Applications**       | Total number of loan applications            |
| **Approved Loans**           | Number of successfully approved applications |
| **Rejected Loans**           | Number of rejected applications              |
| **Approval Rate**            | Percentage of applications approved          |
| **Average Loan Amount**      | Average requested loan amount                |
| **Average Applicant Income** | Average income of applicants                 |

> The KPI values are calculated directly from the cleaned dataset and reproduced across the analysis workflow.

---

# 🔍 Key Analysis

### 1. Loan Approval Analysis

Analyzed overall approval and rejection patterns to understand the bank's lending performance.

**Questions answered:**

* What percentage of applications are approved?
* How many applications are rejected?
* Which customer groups have higher approval rates?

---

### 2. Credit History & Risk

Credit history was analyzed as a major risk indicator.

The analysis compares loan approval behavior across different credit-history groups to identify patterns that may help support more consistent lending decisions.

---

### 3. Income vs Loan Amount

Analyzed applicant income against requested loan amount to identify customers potentially requesting loans that are relatively large compared with their income.

This provides a useful perspective for **repayment-capacity and risk assessment**.

---

### 4. Customer Segmentation

Loan behavior was analyzed across customer characteristics such as:

* Gender
* Education
* Self-employment
* Property area
* Credit history
* Applicant income

This helps identify differences in loan demand and approval patterns between customer segments.

---

### 5. Geographic Analysis

Property-area analysis was performed to identify differences in loan applications and approval behavior across locations.

This can help banks understand regional lending patterns and customer demand.

---

# 🐍 Python Analysis

Python was used for **data cleaning, validation, exploratory data analysis, and feature preparation**.

### Key steps

* Dataset profiling
* Data-type validation
* Missing-value analysis
* Duplicate detection
* Data cleaning
* Outlier investigation
* Univariate analysis
* Bivariate analysis
* Correlation analysis
* Feature engineering
* Business-focused visualizations

### Libraries

```text
Python
Pandas
NumPy
Matplotlib
Seaborn
```

---

# 🗄️ SQL Analysis

MySQL was used to answer business questions from the cleaned dataset.

### Key SQL analyses

* Total loan applications
* Approved vs rejected loans
* Loan approval rate
* Average loan amount
* Average applicant income
* Approval rate by credit history
* Approval rate by education
* Approval rate by property area
* Loan distribution by customer segment
* High-value loan analysis
* Group-wise loan analysis
* Ranking and aggregation

Example:

```sql
SELECT
    COUNT(*) AS total_applications,
    SUM(CASE WHEN Loan_Status = 'Y' THEN 1 ELSE 0 END) AS approved_loans,
    ROUND(
        SUM(CASE WHEN Loan_Status = 'Y' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS approval_rate
FROM banking_loan;
```

---

# 📊 Excel Analysis

Excel was used to create a business reporting layer using:

* Pivot Tables
* Pivot Charts
* KPIs
* Slicers
* Conditional Formatting
* Summary Tables
* Interactive Dashboard

The Excel analysis provides a quick way for business users to explore loan performance without writing queries.

---

# 📈 Power BI Dashboard

The Power BI dashboard converts the analysis into an interactive decision-support tool.

### Dashboard includes

**Loan Portfolio Overview**

* Total Applications
* Approved Loans
* Rejected Loans
* Approval Rate
* Average Loan Amount

**Customer Analysis**

* Applications by Gender
* Education-wise analysis
* Self-employment analysis
* Property-area analysis

**Risk Analysis**

* Credit History vs Approval
* Income vs Loan Amount
* Customer-segment analysis
* Loan-status breakdown

### Interactive Filters

* Gender
* Education
* Credit History
* Property Area
* Self Employment
* Loan Status

---

# 💡 Business Recommendations

Based on the analysis, the following actions can help improve lending decisions:

### 1. Strengthen credit-based assessment

Use credit-history patterns as an important component of loan-risk evaluation.

### 2. Monitor loan-to-income relationships

Applications involving relatively high loan amounts compared with applicant income should receive additional assessment.

### 3. Segment customers

Different customer groups can have different approval and risk profiles, enabling more targeted lending strategies.

### 4. Monitor rejection patterns

Analyzing rejected applications can help identify recurring characteristics and potential opportunities to improve the lending process.

### 5. Use dashboards for continuous monitoring

Power BI can provide stakeholders with an interactive view of approval trends, customer segments, and risk indicators.

> **Important:** These findings represent analytical associations in the dataset and should not be treated as proof of causation or as an automated lending policy.

---

# 🧰 Tech Stack

```text
Python      → Cleaning & EDA
Pandas      → Data Manipulation
NumPy       → Numerical Analysis
Matplotlib  → Visualization
Seaborn     → Statistical Visualization
MySQL       → SQL Analysis
Excel       → KPI & Pivot Analysis
Power BI    → Interactive Dashboard
Git/GitHub  → Version Control & Documentation
```

---

# 📁 Repository Structure

```text
Banking-Loan-Analysis/
│
├── data/
│   └── banking_loan_clean.csv
│
├── python/
│   └── banking_loan_analysis.ipynb
│
├── sql/
│   └── banking_loan_analysis.sql
│
├── excel/
│   └── banking_loan_analysis.xlsx
│
├── powerbi/
│   └── banking_loan_dashboard.pbix
│
├── dashboard/
│   └── banking_loan_dashboard.pdf
│
├── images/
│   ├── dashboard_overview.png
│   └── risk_analysis.png
│
└── README.md
```

---

# 📸 Dashboard Preview

### Power BI Dashboard

Add your dashboard screenshots here:

```markdown
![Banking Loan Dashboard](images/dashboard_overview.png)
```

### Risk Analysis

```markdown
![Loan Risk Analysis](images/risk_analysis.png)
```

> **Tip:** Add 2–3 high-quality dashboard screenshots here. Recruiters should be able to understand the project visually before reading the rest of the README.

---

# 🚀 What This Project Demonstrates

This project demonstrates my ability to take a dataset from **raw data to business decision-making** using multiple analytics tools.

### Technical Skills

* Data Cleaning
* Exploratory Data Analysis
* SQL
* Advanced Excel
* Power BI
* DAX
* Data Visualization
* KPI Development
* Data Transformation
* Business Intelligence

### Analytical Skills

* Problem Solving
* Business Question Formulation
* Customer Segmentation
* Risk Analysis
* Trend Analysis
* Data Storytelling
* Insight Generation
* Decision-oriented Reporting

---

# 🎓 Project Outcome

The final solution provides a **360° analytical view of the banking loan portfolio**, combining detailed Python analysis, SQL-based business queries, Excel reporting, and an interactive Power BI dashboard.

Instead of simply reporting numbers, the project focuses on answering:

> **“What is happening in the loan portfolio, which customer segments behave differently, and what insights can support better lending decisions?”**

---

# 👨‍💻 About Me

**Ajay Srivastav**
Aspiring Data Analyst

**Skills:** Python | SQL | Excel | Power BI | Pandas | NumPy | Data Analytics

I enjoy transforming raw datasets into **clear business insights, interactive dashboards, and data-driven recommendations.**

---

## ⭐ If you found this project useful

Feel free to explore the repository and connect with me to discuss **Data Analytics, Business Intelligence, and Data-driven Decision Making**.

