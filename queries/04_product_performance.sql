-- Top and bottom performing products with inventory implications
WITH product_performance AS (
  SELECT 
    p.id AS product_id,
    p.name AS product_name,
    p.category,
    p.brand,
    ROUND(p.retail_price,2) AS retail_price,
    ROUND(p.cost,2) AS cost,
    COUNT(DISTINCT odi.order_id) AS times_ordered,
    ROUND(SUM(odi.sale_price),2) AS total_revenue,
    ROUND(SUM(odi.sale_price - p.cost),2) AS total_profit,
    ROUND((p.retail_price - p.cost) / p.retail_price * 100, 2) AS pct_of_margin,
    ROUND(AVG(odi.sale_price),2) AS avg_sale_price,
    -- Check if significant discounting happening
    ROUND(AVG(odi.sale_price / p.retail_price) * 100, 2) AS avg_discount_pct
  FROM `bigquery-public-data.thelook_ecommerce.products` p
  JOIN `bigquery-public-data.thelook_ecommerce.order_items` odi ON p.id = odi.product_id
  JOIN `bigquery-public-data.thelook_ecommerce.orders` o ON odi.order_id = o.order_id
  WHERE o.status NOT IN ('Cancelled', 'Returned')
  GROUP BY p.id, p.name, p.category, p.brand, p.retail_price, p.cost
)
SELECT 
  *,
  CASE 
    WHEN times_ordered >= 100 AND pct_of_margin >= 40 THEN 'Star Product'
    WHEN times_ordered >= 100 AND pct_of_margin < 40 THEN 'High Volume, Low Margin'
    WHEN times_ordered < 100 AND pct_of_margin >= 40 THEN 'Niche Premium'
    ELSE 'Underperformer'
  END AS product_classification
FROM product_performance
ORDER BY total_profit DESC