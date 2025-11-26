-- Monthly revenue, orders, and profit analysis
WITH monthly_metrics AS (
  SELECT 
    DATE_TRUNC(DATE(o.created_at), MONTH) AS order_month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    COUNT(DISTINCT o.user_id) AS unique_users,
    SUM(odi.sale_price) AS total_revenue,
    SUM(p.cost) AS total_cost,
    SUM(odi.sale_price - p.cost) AS total_profit,
    AVG(odi.sale_price) AS avg_order_value
  FROM `bigquery-public-data.thelook_ecommerce.orders` o
  JOIN `bigquery-public-data.thelook_ecommerce.order_items` odi 
ON o.order_id = odi.order_id
  JOIN `bigquery-public-data.thelook_ecommerce.products` p 
ON odi.product_id = p.id
  WHERE o.status NOT IN ('Cancelled', 'Returned')
  GROUP BY order_month
)
SELECT 
  order_month,
  total_orders,
  unique_users,
  ROUND(total_revenue,2) AS revenue,
  ROUND(total_cost,2) AS cost,
  ROUND(total_profit,2) AS profit,
  ROUND((total_profit / total_revenue) 
        * 100,
        2) AS pct_profit_margin,
  ROUND(avg_order_value, 2) AS avg_order_amount,
  -- Calculation of growth rates
  ROUND(((total_revenue - LAG(total_revenue) OVER (ORDER BY order_month)) 
        / LAG(total_revenue) OVER (ORDER BY order_month)) 
        * 100,
        2) AS pct_of_revenue_growth
FROM monthly_metrics
ORDER BY order_month