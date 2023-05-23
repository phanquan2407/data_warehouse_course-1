SELECT
  cast(order_line_id as int) sale_order_line_key,
  cast(quantity as int) quantity,
  cast(unit_price as numeric) unit_price,
  cast(quantity as int) *cast(unit_price as numeric) gross_amount,
  cast(stock_item_id as int) product_key,
  cast(so.customer_id as int) customer_key
FROM `vit-lam-data.wide_world_importers.sales__order_lines` sol 
LEFT JOIN `vit-lam-data.wide_world_importers.sales__orders` so on cast(sol.order_id as int) = cast(so.order_id as int)
