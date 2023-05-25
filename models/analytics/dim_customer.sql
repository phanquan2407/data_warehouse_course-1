SELECT 
  cast(customer_id as int) customer_key,
  cast(customer_name as string) customer_name,
  cast(scc.customer_category_id as int) customer_category_key,
  cast(customer_category_name as string) customer_category_name,
  cast(sbc.buying_group_id as int) buying_group_key,
  cast(sbc.buying_group_name as string) buying_group_name
  FROM `vit-lam-data.wide_world_importers.sales__customers` sc  
  LEFT JOIN `vit-lam-data.wide_world_importers.sales__customer_categories` scc on sc.customer_category_id = scc.customer_category_id
  LEFT JOIN `vit-lam-data.wide_world_importers.sales__buying_groups` sbc on sc.buying_group_id = sbc.buying_group_id