SELECT 
  order_line_id sale_order_line_key,
  quantity,
  unit_price,
  quantity*unit_price gross_amount
FROM `vit-lam-data.wide_world_importers.sales__order_lines`
