-- Category-level profit analysis with inventory implications
SELECT 
  p.category,
  COUNT(DISTINCT p.id) AS unique_products,
  COUNT(DISTINCT odi.order_id) AS total_orders,
  ROUND(SUM(odi.sale_price),2) AS total_revenue,
  ROUND(SUM(p.cost),2) AS total_cost,
  ROUND(SUM(odi.sale_price - p.cost),2) AS total_profit,
  ROUND(AVG(p.retail_price),2) AS avg_retail_price,
  ROUND(AVG(p.cost),2) AS avg_cost,
  ROUND(AVG((p.retail_price - p.cost) 
            / p.retail_price) 
            * 100,
        2) AS pct_of_margin,
  ROUND((SUM(odi.sale_price - p.cost) 
          / SUM(odi.sale_price)) 
          * 100,
        2) AS pct_of_realized_margin,
  -- Calculation of revenue contribution
  ROUND((SUM(odi.sale_price)
          / SUM(SUM(odi.sale_price)) OVER ()) 
          * 100,
        2) AS pct_of_revenue_share
FROM `bigquery-public-data.thelook_ecommerce.products` p
JOIN `bigquery-public-data.thelook_ecommerce.order_items` odi 
ON p.id = odi.product_id
JOIN `bigquery-public-data.thelook_ecommerce.orders` o 
ON odi.order_id = o.order_id
WHERE o.status NOT IN ('Cancelled', 'Returned')
GROUP BY p.category
ORDER BY total_profit DESC