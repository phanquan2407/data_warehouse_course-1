SELECT 
  cast(supplier_id as int) supplier_key,
  cast(supplier_name as string) supplier_name
FROM `vit-lam-data.wide_world_importers.purchasing__suppliers`
