
  create or replace   view finance_db.raw.stg_order_items
  
   as (
    SELECT
    id AS item_id,
    order_id,
    product_id,
    quantity,
    unit_price, 
    (quantity * unit_price) AS total_price 
FROM finance_db.raw.orders_items
  );

