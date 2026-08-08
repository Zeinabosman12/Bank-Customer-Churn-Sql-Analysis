# Bank-Customer-Churn-Sql-Analysis
SQL analysis of bank customer churn patterns
# 🏦 Complete Bank Customer Churn Analysis (SQL)

> A SQL-driven analysis of 10,000 bank customer records to uncover the strongest predictors of churn and what the bank could do about it.


---

## 📌 Business Question
What factors are associated with customer churn at a bank, and which customer segments are highest-risk for leaving?

## 🗂️ Data
**Source:** [Bank Customer Churn dataset (Kaggle)](https://www.kaggle.com/datasets/muhammadsamnoon/bank-customer-churn-eda-project/data)
**Size:** 10,000 customer records
**Fields:** credit score, geography, age, tenure, account balance, number of products held, activity status, and churn status (`Exited`)

## 🛠️ Tools
Google BigQuery (SQL)

---

## 🔍 Key Findings

### 1. Overall Churn Rate
**20.4%** of customers churned (2,037 of 10,000), while 79.6% remained active.

### 2. Churn by Geography
| Country | Total Customers | Churned | Churn Rate |
|---|---|---|---|
| 🇩🇪 Germany | 2,509 | 814 | **32.44%** |
| 🇪🇸 Spain | 2,477 | 413 | 16.67% |
| 🇫🇷 France | 5,014 | 810 | 16.15% |

Germany's churn rate is roughly **double** France and Spain's, despite France having the largest customer base.

### 3. Churn by Activity Status
| Status | Total Customers | Churned | Churn Rate |
|---|---|---|---|
| Inactive | 4,849 | 1,302 | **26.85%** |
| Active | 5,151 | 735 | 14.27% |

Inactive members churn at nearly double the rate of active members — engagement is a strong predictor of retention.

### 4. Churn by Number of Products Held
| Products | Total Customers | Churned | Churn Rate |
|---|---|---|---|
| 1 | 5,084 | 1,409 | 27.71% |
| 2 | 4,590 | 348 | **7.58%** ✅ lowest |
| 3 | 266 | 220 | 82.71% ⚠️ |
| 4 | 60 | 60 | **100%** 🚨 |

The most striking pattern in the dataset: customers with **exactly 2 products** are by far the most loyal segment. Customers pushed into 3+ products churn at an extremely high rate — suggesting over-selling, product complexity, or dissatisfaction with bundled offerings.

### 5. Churn by Age Group
| Age Group | Total Customers | Churned | Churn Rate |
|---|---|---|---|
| 46–60 | 1,647 | 842 | **51.12%** |
| Over 60 | 464 | 115 | 24.78% |
| 30–45 | 6,248 | 956 | 15.3% |
| Under 30 | 1,641 | 124 | 7.56% |

Churn increases steadily with age, peaking sharply in the 46–60 bracket.

---

## 💡 Recommendations
- **Investigate the Germany market** — its churn rate is double that of comparable markets, suggesting a local, product, or service issue worth a deeper dive.
- **Launch re-engagement campaigns for inactive members** — activity status is one of the strongest churn predictors found in this analysis.
- **Review the 3–4 product bundling strategy** — near-total churn among customers with 3+ products points to a serious retention problem tied to how these products are sold or supported.
- **Prioritize retention efforts for the 46–60 age group** — this segment churns at more than 3x the rate of customers under 30, and represents a meaningful share of the customer base.

---

## 📁 Files
- `churn_analysis.sql` — all queries used in this analysis
- `Churn_Modelling.csv` — source dataset

## 👤 Author
**Zeinab Osman**
