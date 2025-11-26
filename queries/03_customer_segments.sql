-- RFM-style customer segmentation for targeting
WITH customer_stats AS (
  SELECT 
    us.id AS user_id,
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