SELECT 
    date_date
  , orders_id
  , products_id
  , revenue
  , quantity
  , products.purchase_price
  , Round(revenue - (cast(products.purchase_price as Float64)* quantity), 2) As Margin
FROM {{ref('stg_raw__sales')}} 
 Join {{ref('stg_raw__product')}} as products
  Using(products_id)
 