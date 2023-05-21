SELECT
  cast(order_line_id as int) sale_order_line_key,
  cast(quantity as int) quantity,
  cast(unit_price as numeric) unit_price,
  cast(quantity as int) *cast(unit_price as numeric) gross_amount,
  cast(stock_item_id as int) product_key
FROM `vit-lam-data.wide_world_importers.sales__order_lines`
