# E-Commerce Financial Performance Analysis

**BigQuery + Python Data Analytics Portfolio Project.**

[![Data Source](https://img.shields.io/badge/Data-BigQuery%20Public%20Dataset-4285F4?style=flat&logo=googlebigquery&logoColor=white)](https://console.cloud.google.com/marketplace/product/bigquery-public-data/thelook-ecommerce)
[![SQL](https://img.shields.io/badge/SQL-BigQuery-orange?style=flat&logo=googlebigquery&logoColor=white)](https://cloud.google.com/bigquery)
[![Python](https://img.shields.io/badge/Python-3.13+-3776AB?style=flat&logo=python&logoColor=white)](https://www.python.org)
[![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat&logo=pandas&logoColor=white)](https://pandas.pydata.org)
[![Matplotlib](https://img.shields.io/badge/Matplotlib-11557c?style=flat)](https://matplotlib.org)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=flat&logo=jupyter&logoColor=white)](https://jupyter.org)
[![Status](https://img.shields.io/badge/Status-Complete-success?style=flat)]()

---

## Project Overview

Comprehensive financial performance analysis of e-commerce operations using **SQL** 
and **Python**, demonstrating data-driven decision-making and strategic recommendations 
with quantified business impact.

**Analyzed:** 100,000+ transactions | 14 countries | $10M+ total sales analyzed.

**Tools:** BigQuery, Python, Pandas, Matplotlib, Seaborn.

**Focus:** Financial operations, profitability analysis, customer segmentation, market expansion.

---

### Business Impact

This analysis uncovered $2.2M+ in potential revenue opportunities through:
- Brasil market expansion strategy (+$930K projected).
- US market acceleration (+$1.07M projected).
- Customer retention optimization programs.
- High-margin category focus initiatives.

**Key Achievement:** Identified 42% month-over-month growth surge in November 2025 requiring immediate strategic response.

**[Read Full Analysis & Strategic Recommendations →](ANALYSIS_INSIGHTS.md)**

---

## Key Questions Answered

This project addresses five critical business questions:  
1. **Revenue & Profit Trends** - How has profitability evolved across 6+ years?
2. **Category Performance** - Which products drive profit and where to focus inventory?
3. **Customer Segmentation** - Who are our most valuable customers and how to retain them?
4. **Geographic Expansion** - Which markets present growth opportunities?
5. **Portfolio Optimization** - What products to promote, maintain, or discontinue?

---

## Key Findings
### 1️. Exceptional Growth Trajectory
- 42% month-over-month growth spike in November 2025
- 6-year CAGR: 69.7% (2020-2022) maintaining strong momentum
- Consistent 52% profit margins across 600x scale increase

### 2️. Customer Retention Challenge
- VIP customers churn after 2-3 purchases (428 days inactive average)
- 50% of customers are low-value, one-time buyers
- Opportunity: $2.1M+ revenue from improving retention

### 3️. Geographic Concentration Risk
- 34% revenue dependence on China (high risk)
- Brasil shows 14.5% share with high growth potential
- Bottom 6 countries contribute <2% combined (rationalization needed)

### 4️. Product Portfolio Balance
- High-volume categories (52% margin) vs. high-margin specialists (60% margin)
- Strategic trade-off between market penetration and profitability
- Cross-promotion opportunity identified

### 5️. Margin Stability Excellence
- Maintained 51-52% margins across 6 years despite growth volatility
- Resilient through COVID, inflation, supply chain disruptions
- Top quartile performance vs. industry average (42-47%)

**[View Detailed Analysis with Charts & Recommendations →](ANALYSIS_INSIGHTS.md)**

---

## Visualizations

All visualizations are generated programmatically using Python (Matplotlib/Seaborn) and saved in the `images/` folder:

1. **Revenue & Profit Trends** - Time series showing monthly financial performance.
2. **Category Profitability** - Horizontal bar chart of profit by product category.
3. **Customer Distribution** - Distribution of customers across value tiers.
4. **Customer Segmentation** - Distribution and revenue contribution by customer tier.
5. **Geographic Performance** - Top markets by revenue and profit.
6. **Profit Margin Trends** - Margin evolution over time with benchmarks.

---

## Project Structure
**ecommerce-financial-analysis/**

>README.md <em>- Project overview (this file)</em>
> ANALYSIS_INSIGHTS.md <em>- Detailed findings and recommendations</em>
>> data <em>- Exported query results</em>
>>>revenue_trends.csv 
>>>product_category_profitability.csv
>>>product_categories.csv
>>>customer_segments.csv 
>>>product_performance.csv 
>>>geographic_analysis.csv 
>
>>images <em>- Output visualizations</em>
>>>revenue_profit_trends.png 
>>>top_category_profitability.png 
>>>customer_segmentation.png
>>>customer_distribution.png
>>>geographic_performance.png 
>>>profit_margin_trends.png
>>>revenue_contribution.png
>>>volume_margin_analysis.png
>>>quarterly_growth_analysis.png
>
>>notebooks <em>- Jupyter analysis notebook</em>
>>>analysis.ipynb : Data loading and exploration
>>>QoQ_growth.ipynb
>
>> queries <em>- SQL analysis queries</em>
>>>01_revenue_trends.sql
>>>02_category_analysis.sql 
>>>03_customer_segments.sql
>>>04_product_performance.sql
>>>05_geographic_analysis.sql

---

## Data Source

**Dataset:** `bigquery-public-data.thelook_ecommerce`   
**Provider:** Google BigQuery Public Datasets.  
**Type:** Synthetic e-commerce sample data. 
**Time period:** 2019-2015 (6+ years).  
**Access:** Free via [BigQuery Console](https://console.cloud.google.com/marketplace/product/bigquery-public-data/thelook-ecommerce)

### Dataset Structure

| Table | Records | Description |
|-------|---------|-------------|
| `orders` | 125K+ | Order transactions with status and timestamps |
| `order_items` | 181K+ | Line-item details with sale prices |
| `products` | 29K+ | Product catalog with cost and retail price |
| `users` | 100K+ | Customer demographics and location |
| `inventory_items` | 490K+ | Stock levels and warehouse locations |
| `events` | 2,5M+ | User session tracking data |
| `distribution_centers` | 100K+ | Warehouse and logistics locations |

**Note:** This dataset is publicly available synthetic data created by Google/Looker 
for learning purposes. No real customer or business data is used in this analysis. 

### How to Access
```sql
-- Pin the public dataset in BigQuery
1. Open BigQuery Console: https://console.cloud.google.com/bigquery
2. Click "+ ADD" → "Pin a project"
3. Enter: bigquery-public-data
4. Navigate to: thelook_ecommerce dataset
```

---

## Technologies Used

| Category | Tools |
|----------|-------|
| **Data Warehouse** | Google BigQuery |
| **Query Language** | SQL (GoogleSQL dialect) |
| **Data Analysis** | Python 3.13.3 (Pandas, NumPy) |
| **Visualization** | Matplotlib, Seaborn |
| **Version Control** | Git, GitHub |

---

## 🔍 SQL Highlights

### Complex Query Example: Customer RFM Segmentation
```sql
-- RFM-style customer segmentation for targeting
WITH customer_stats AS (
  SELECT us.id AS user_id,
    us.country,
    us.age,
    us.gender,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(odi.sale_price),2) AS lifetime_value,
    ROUND(AVG(odi.sale_price),2) AS avg_order_amount,
    MAX(DATE(o.created_at)) AS last_order_date,
    DATE_DIFF( CURRENT_DATE(), MAX(DATE(o.created_at)), DAY) AS days_since_last_order
  FROM `bigquery-public-data.thelook_ecommerce.users` us
  JOIN `bigquery-public-data.thelook_ecommerce.orders` o 
  ON us.id = o.user_id
  JOIN `bigquery-public-data.thelook_ecommerce.order_items` odi 
  ON o.order_id = odi.order_id
  WHERE o.status NOT IN ('Cancelled', 'Returned')
  GROUP BY us.id, us.country, us.age, us.gender
)

SELECT 
  -- Segment customers into tiers
  CASE 
    WHEN lifetime_value >= 1000 THEN 'VIP'
    WHEN lifetime_value >= 500 THEN 'High Value'
    WHEN lifetime_value >= 200 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS customer_tier,
  COUNT(*) AS cnt_customers,
  ROUND(AVG(lifetime_value),2) AS avg_lifetime_value,
  ROUND(AVG(total_orders),1) AS avg_orders,
  ROUND(AVG(avg_order_amount),2) AS avg_order_size,
  ROUND(AVG(days_since_last_order), 1) AS avg_days_since_last_order,

  -- Value contribution
  ROUND((SUM(lifetime_value) / SUM(SUM(lifetime_value)) OVER ()) 
        * 100,
        2) AS pct_revenue_contribution
FROM customer_stats
GROUP BY customer_tier
ORDER BY avg_lifetime_value DESC
```

**What this query demonstrates:**
- CTEs for complex multi-step logic.
- Multiple JOINs across fact and dimension tables.
- Aggregations with GROUP BY.
- Window functions for percentage calculations.
- CASE statements for business logic segmentation.
- Date calculations for recency metrics.

**Other SQL techniques used in this project:**
- LAG/LEAD for growth rate calculations.
- PERCENTILE_CONT for distribution analysis.
- HAVING clauses for filtering aggregates.
- Subqueries for complex filtering logic.

---

## 📚 What I Learned

### Technical Skills
- Advanced SQL window functions, CTEs, and complex joins.
- BigQuery optimization techniques for 100K+ row datasets.
- Python data manipulation with Pandas.
- Professional data visualization with Matplotlib/Seaborn.

### Business Skills
- Financial operations metrics (margin analysis, CAGR, profitability).
- Customer segmentation and lifetime value frameworks.
- Product portfolio optimization strategies.
- Geographic market analysis and expansion planning.
- Strategic recommendations backed by quantitative evidence.

### Domain Knowledge
- E-commerce business models and key success factors.
- Inventory management and working capital considerations.
- Customer behavior patterns and retention strategies.
- Geographic positioning through pricing and margin analysis.

---

## About Me

**Karol Liliana Lopez**  
Financial Operations Analyst | Data Analyst

I'm transitioning from 4+ years of financial operations at Cognizant Technology Solutions to data analytics, where I prevented $1.5M in tax penalties through data-driven compliance analysis and achieved 45% error reduction in AP operations. This project showcases my ability to combine financial domain expertise with technical analytics skills.

**Background:**
- 4+ years: Financial operations (AP reconciliation, compliance, invoice processing).
- Languages: Spanish (native), English (B2), Polish (B2).
- Currently: Student of Data Analytics Bootcamp at MATE Academy.
- Location: Poland.


**Technical Skills:** 
- **Databases:** SQL (BigQuery, MySQL, PostgreSQL)
- **Programming:** Python (Pandas, NumPy, Matplotlib, Seaborn)
- **Tools:** Google Sheets, Jupyter, Git, VS Code
- **Domain:** Financial analysis, operations optimization, compliance, KPI tracking

---

## Contact
- **Email:** karolianalopez@gmail.com
- **LinkedIn:** [linkedin.com/in/karol-liliana-lopez-analytics](https://www.linkedin.com/in/karol-liliana-lopez-analytics)
- **GitHub:** [github.com/KaroLili1](https://github.com/KaroLili1)
- **Portfolio:** More projects coming soon!

---

## Acknowledgments

- **Dataset:** Google BigQuery Public Datasets Program.
- **Inspiration:** Real-world e-commerce challenges from my financial operations experience.
- **Learning:** MATE Academy Data Analytics Program.

---

## Additional Resources

- **[Full Analysis & Strategic Recommendations](ANALYSIS_INSIGHTS.md)** - Detailed findings, business implications, and strategic roadmap
- **[Jupyter Notebook](notebooks/analysis.ipynb)** - Interactive analysis with code and visualizations
- **[SQL Queries](queries/)** - All analysis queries used in this project

---

**If you found this analysis valuable, please star ⭐ this repository!**

*Last Updated: November 2025*
