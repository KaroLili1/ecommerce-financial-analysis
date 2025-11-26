# E-Commerce Financial Performance Analysis
## Key Insights & Business Recommendations

**Analysis Period:** 2019 - 2025 (6 years)<br>
**Dataset:** 100K+ transactions, 14 countries, $10M+ revenue    
**Data Source:** BigQuery Public Dataset - TheLook E-Commerce    
**Analyst:** Karol Liliana Lopez

---

## EXECUTIVE SUMMARY

### Essential Metrics
| Metric | Value | Insight |
|--------|-------|---------|
| **Total Revenue** | $10.8M | 6-year cumulative |
| **Avg Profit Margin** | 51.91% | Top quartile (industry: 42-47%) |
| **Total Orders** | 93K+ | Across 14 countries |
| **Customer Base** | 27K unique | 90% are one-time buyers❗ |
| **Avg Order Value** | $60.08 | Stable across time |
| **QoQ Growth*** | 24.31% avg | Exceptional vs. industry (5-15%) |

*You can see here the [QoQ Growth analysis](notebooks/QoQ_growth.ipynb)

---

### Business Health Status
- **Revenue:** Strong growth trajectory (42% spike Nov 2025).  
- **Profitability:** Exceptional margin stability (51-52% for 5+ years).  
- **Operational Excellence:** Scaled 600x with no margin erosion.  
- **Retention Crisis:** Critical weakness (VIP customers churn after 2-3 purchases).  
- **Geographic Risk:** Over-concentrated in China (34%).  

---

### TOP 3 CRITICAL FINDINGS

**1️. November 2025 Growth Explosion (+42% MoM)**    
Revenue jumped from $418K (Oct) to $595K (Nov) in one month.

**Why does it matter?**
- It was the largest single-month growth in the company's history.
- A 52% month-over-month margin was mantained (demonstrating quality growth, not driven by discounts).
- It could indicate a breakthrough moment or anomaly.

**Priority actions:** 
- Investigate the root cause within 2 weeks.
- Review marketing campaigns, partnerships, press coverage.
- Analyze customer acquisition sources.
- Determine if it is replicable and scalable.
- Monitor growth performance through Q1 2026.

**2. Customer Retention Crisis**    
90% of customers make only 1-2 purchases then disappear.

| Segment | % of Customer Base | Revenue Share % | Avg Orders | Days Inactive |
|---------|--------------------|-----------------|------------|---------------|
| VIP | 1.3% | 1.26% | 2.3 | 428 days❗ |
| High Value | 9.1% | 9.11% | 2.4 | 407 days |
| Medium Value | 39.1% | 39.14% | 2.0 | 453 days |
| Low Value | 50.5% | 50.49% | 1.3 | 564 days |

* Financial impact of poor customer retention:
    - VIP customers spend $1,127 and then don't return (it should be $5K+ lifetime value).
    - Missed opportunity: It would increase to $2.1M+ annually, if Medium-Value customer retention were improved.
* Main Cause: There is no loyalty program, no win-back campaigns, no retention strategy.

**3. Geographic Over-Concentration**    
34% of revenue comes from China (risk of single market dependency).

| Market Tier | Countries | Revenue % | Strategy |
|-------------|-----------|-----------|----------|
| **Tier 1** | China, US | 56.3% | Reduce China to <25%, grow US |
| **Tier 2** | Brasil + 7 others | 42.4% | Expand Brasil aggressively |
| **Tier 3** | Bottom 3 | 0.25% | Exit immediately |

**Brasil Opportunity:** $1.57M revenue (14.5%), showing fastest growth, with a potential growth identified of $930K.

**Priority action:** Bottom 3 countries generated $2,063 combined (cost > revenue) → Underperformance → Close within 30 days.

---

## STRATEGIC RECOMMENDATIONS (6 Months)

**1. Decode November Surge**    
- **Timeline:** 1-2 weeks.  
- **Owner:** Marketing + Analytics teams.  
- **Deliverable:** Root cause analysis report.  

**2. Launch VIP Retention Program**     
- **Timeline:** Months 1-3.  
- **Investment:** $75K  
- **Expected Return:** $400K+ in Year 1.  
 
- **Tactics:**  
    **A. Win-back campaign**     
    - <ins>Target:</ins> 90 VIP customers (with 428 days of inactivity). 
    - <ins>Offers:</ins> 25% discount + free shipping + exclusive access.
    - <ins>Goal:</ins> Reactivate 30% = $30K in immediate revenue.

    **B. Loyalty tier system**  
   - <ins>Launch:</ins> Month 2.
   - <ins>Badges for total quarter orders:</ins> Bronze (2 orders) → Silver (5 orders) → Gold (10 orders).
   - <ins>Rewards:</ins> Points, free shipping, birthday discounts, early access.
   - <ins>Goal:</ins> Increase the repeat purchase rate from 2.0 to 3.5 orders on average.

    **C. At-risk customer alerts**
   - <ins>Channel:</ins> Email trigger at 60, 90, 120 days after purchase (automated).
   - <ins>Offer:</ins> Personalized product recommendations.
   - <ins>Goal:</ins> Reduce churn 20% = $200K annual impact.

**3. Brasil Market Expansion**
- **Timeline:** Months 1-6.  
- **Investment:** $250K.  
- **Expected Return:** $930K revenue, $483K profit.

    <ins>**Why Brasil?**</ins>
    - Current indicators: $1.57M in revenue (14.5% mrket share).
    - Market: 215M population, 25% annual e-commerce growth.
    - Competition: Less saturated than the US/China.
    - Proven product-market fit (PMF): 51.9% margin maintained (above the 40% suggested as a healthy product for SaaS companies).

- **Strategy Implementation:**
    1. **Localization** (Months 1-2)   
    - Investment: $50K.
    - Tactics: Website and customer support in Portuguese; local payment methods (Pix, Boleto).
   
    2. **Marketplace partnerships** (Months 2-3)
    - Investment: $75K.
    - Tactics: Integration with Mercado Livre; launch of campaigns with local influencers.
   
    3. **Fulfillment optimization** (Months 4-5)
    - Investment: $100K.
    - Tactics: Outsource to a Local 3PL provider; reduce delivery time from 15 to 3-5 days.
   
    4. **Marketing boost** (Month 5-6)  
    - Investment: $25K
    - Tactics: Offer seasonal promotions, installment plans with different terms.

**Break-even:** Month 3 (First month with positive monthly profit after launching the Expansion strategy).  
**ROI:** 1.93x Year 1 and 3.4x Year 2.

**4. Exit Unprofitable Markets**
- **Timeline:** Month 1.  
- **Savings:** $8-12K annually.
- **Action:** Close 3 countries (Poland, Colombia, Austria)
    - Combined revenue: $20,032/year.
    - Operating costs: $10K-15K/year. (payment fees, support, compliance).
    - **Net Income drain:** -$5-10K annually.

- **Rationale:**
    - **Poland** ($19K, 0.24%): 155 customers, marginal contribution.
    - **Colombia** ($769, 0.01%): Only 7 orders annually.
    - **Austria** ($207, 0.00%): Only 4 orders annually.

    - **Belgium retained:** $103,689 (1.28%) with 810 customers - viable secondary market.

- **Implementation:** 
    - Block 3 countries from checkout (1 hour of technical work).
    - Notify ~370 customers about the withdrawal of operatioins in these countries (mostly Poland).
    - Reallocate resources to Brasil expansion.

---

## SUPPORTING ANALYSIS

### Revenue Growth: Exceptional but Volatile

**6-Year Journey:**
- 2019: $75K annual (startup phase).
- 2024: $1.8M annual.  
- 2025 YTD: $2.8M (surpassed 2024 by 55% in 11 months).

**Growth Phases:**
| Phase | CAGR | Characteristics |
|-------|------|-----------------|
| 2020-2022 | 69.7% | Construction of foundations, testing the model |
| 2023-2024 | 55.2% | Accelerated expansion |
| 2025 YTD | 201%* | Exponential surge (*annualized) |

**Extraordinary Growth in November 2025:**
- +42.5% single-month growth (4x normal seasonality).
- Maintained margin = not driven by discounts.
- Requires root-cause analysis.

---

### Profitability: Industry-Leading Stability  
- **Profit Margin Performance:**
    - **Average:** 51.91% (vs. industry 42-47%).
    - **Range:** 50.8% - 52.7% (only ±1% variance).
    - **Duration:** 5+ years consistent.

- **What does this demonstrate?**
    - Strong pricing ability (not competing on price).
    - Scalable cost structure (600x growth, no margin compression).
    - Operational excellence (quick recovery from the 2021 dip).

- **Strategic value:**  
Every 1% profit margin = $108K annual profit at current scale.

---

### Product Portfolio: Balance between Volume and Margin Trade-off
- **Top Profit Generators** (Volume Strategy):
    - Outerwear & Coats, Jeans, Sweaters: 51.78% of profit (combined).
    - Margins: 52-56% (moderate).
    - Strategy: Market penetration, competitive pricing.

- **Top Margin Leaders** (Premium Strategy):
    - Blazers & Jackets: 62.08% margin (but lower volume).
    - Opportunity: Niche positioning, better unit profitability.
    - Strategy: Cross-promote with high-volume customers.

- **Recommendation:** Shift 10% of marketing to high-margin categories.  
- **Impact:** +1-2% on overall margin = +$100-200K in annual profit.

---

### Geographic Presence of Our Market: Concentration + Long Tail Model
- **Current Market Distribution:**
    - **Top 3 (71%):** China (34%), US (22.5%), Brasil (14.5%).
    - **Next 7 (27%):** Europe + Asia secondary markets.
    - **Bottom 3 (<2%):** Noise (3 countries = $20,032/year combined revenue).

- **Pareto Analysis:** 21.4% of countries (3 of 14) generate 70.8% of revenue.

- **Risk of Single-Market Concentration:** The focus is over-concentrated on the Chinese market.
    - **Scenario:** If the 25% market share in China declines = -$920K revenue, -$478K profit
    - **Mitigation:** Boost Brasil/US growth to reduce China's share to <25%.
- **Opportunity:** Brasil can grow from $1.57M to $2.5M (+59%) with focused investment.

---

## SUCCESS METRICS (6-Month Targets)

| KPI | Current | Target | Impact |
|-----|---------|--------|--------|
| **VIP Reactivation Rate** | 0% | 30% | +$30K |
| **Avg Orders/Customer** | 1.8 | 2.5 | +$500K |
| **Brasil Revenue** | $1.57M | $2.0M | +$430K |
| **China Revenue %** | 34% | <30% | Risk reduction |
| **Overall Profit Margin** | 51.91% | 52.5% | +$60K |
| **Monthly Revenue (Dec)** | TBD | $500K+ | Sustain Nov momentum |

**Total Expected Impact (6 months):** +$1.0M revenue, +$520K profit.

---

## KEY VISUALIZATIONS

All analysis visualizations are available in the [images folder](images/).

**Figure 1:** [Revenue & Profit Trends](images/revenue_profit_trends.png) - 6-year growth trajectory  
**Figure 2:** [Category Profitability](images/top_category_profitability.png) - Top 10 profit drivers  
**Figure 3:** [Volume vs. Margin Analysis](images/volume_margin_analysis.png) - Portfolio trade-offs  
**Figure 4:** [Customer Distribution](images/customer_distribution.png) - Segmentation by tier  
**Figure 5:** [Revenue Contribution](images/revenue_contribution.png) - Value concentration  
**Figure 6:** [Geographic Performance](images/geographic_performance.png) - Market comparison  
**Figure 7:** [Profit Margin Trends](images/profit_margin_trends.png) - Stability analysis  

---

## PROJECT METHODOLOGY

**Data Sources:**
- BigQuery public dataset: `thelook_ecommerce`
- 100K+ transactions, 28,8K products, 65,9K customers.
- Time period: January 2019 - November 2025.

**Analysis Tools:**
- SQL (BigQuery) for data extraction and aggregation.
- Python (Pandas, NumPy) for calculations and transformations.
- Matplotlib/Seaborn for visualizations.

**Key Techniques:**
- RFM segmentation for customer tiers.
- CAGR calculations for growth analysis.
- Window functions for trend identification.
- Pareto analysis for portfolio optimization.

---

## ANALYST PROFILE

**Karol Liliana Lopez**  
Financial Operations Analyst → Data Analyst

**Relevant Experience:**
- 4+ years: Financial operations at Cognizant Technology Solutions.
- Prevented $1.5M in tax penalties through data-driven compliance analysis.
- Achieved 45% error reduction in AP operations serving 3 countries.
- Academic Background: Master's Degree in Business Management.
- Expertise: Financial analysis, margin optimization, KPI tracking.

**This Analysis Demonstrates:**
- SQL proficiency (complex queries, CTEs, window functions).  
- Business acumen (strategic recommendations with ROI calculations).  
- Financial domain knowledge (margin analysis, CAGR, profitability).  
- Data storytelling (insights → implications → actions).  
- Executive communication (concise, actionable, prioritized).  

---

<p style="border-width:4px; border-style:solid; border-color:#287EC7; padding: 1em;"><b>Looking for:</b> 
Data Analyst roles in financial services, e-commerce, or tech companies where I can leverage my unique combination of business management foundation, financial operations experience, and technical analytics skills.</p>

---

**Contact:** karolianalopez@gmail.com | [LinkedIn](https://www.linkedin.com/in/karol-liliana-lopez-analytics) | [GitHub](https://github.com/KaroLili1)

---

*Analysis completed: November 2025 | Dataset: Google BigQuery Public Data*