SELECT 
  cast(stock_item_id as int) product_key, 
  cast(stock_item_name as string) product_name,
  cast(brand as string) brand_name,
  cast(ps.supplier_id as int) supplier_key,
  cast(ps.supplier_name as string) supplier_name
FROM `vit-lam-data.wide_world_importers.warehouse__stock_items` wst 
left join `vit-lam-data.wide_world_importers.purchasing__suppliers` ps on cast(wst.supplier_id as int) = cast(ps.supplier_id as int)
 