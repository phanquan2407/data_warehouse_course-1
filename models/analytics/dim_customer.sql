SELECT 
  cast(customer_id as int) customer_key,
  cast(customer_name as string) customer_name 
FROM `vit-lam-data.wide_world_importers.sales__customers`
