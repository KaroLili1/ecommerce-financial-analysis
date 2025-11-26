-- Geographic Analysis with Country Name Standardization
WITH standardized_countries AS (
  SELECT 
    o.order_id,
    o.user_id,
    o.created_at,
    o.status,
    u.country,
    -- Standardize country names (merge duplicates)
    CASE 
      WHEN u.country IN ('España', 'Spain') THEN 'Spain'
      WHEN u.country IN ('Deutschland', 'Germany') THEN 'Germany'
      ELSE u.country
    END as country_clean,
    oi.sale_price,
    p.cost
  FROM `bigquery-public-data.thelook_ecommerce.orders` o
  JOIN `bigquery-public-data.thelook_ecommerce.users` u ON o.user_id = u.id
  JOIN `bigquery-public-data.thelook_ecommerce.order_items` oi ON o.order_id = oi.order_id
  JOIN `bigquery-public-data.thelook_ecommerce.products` p ON oi.product_id = p.id
  WHERE o.status NOT IN ('Cancelled', 'Returned')
)

-- Aggregate by cleaned country names
SELECT 
  country_clean as country,
  COUNT(DISTINCT user_id) as total_customers,
  COUNT(DISTINCT order_id) as total_orders,
  ROUND(COUNT(DISTINCT order_id) * 1.0 / COUNT(DISTINCT user_id), 2) as orders_per_customer,
  ROUND(SUM(sale_price), 2) as total_revenue,
  ROUND(AVG(sale_price), 2) as avg_order_value,
  ROUND(SUM(sale_price - cost), 2) as total_profit,
  ROUND((SUM(sale_price - cost) / SUM(sale_price)) * 100, 2) as profit_margin_pct,
  -- Calculate percentage of total revenue
  ROUND((SUM(sale_price) / SUM(SUM(sale_price)) OVER ()) * 100, 2) as pct_revenue_share
FROM standardized_countries
GROUP BY country_clean
HAVING COUNT(DISTINCT order_id) >= 1  -- Include all countries
ORDER BY total_revenue DESC
