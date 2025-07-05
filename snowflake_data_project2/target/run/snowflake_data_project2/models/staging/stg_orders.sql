
  create or replace   view finance_db.raw.stg_orders
  
   as (
    SELECT 
    id AS order_id, 
    customer_id, 
    order_date, 
    status AS order_status
FROM finance_db.raw.orders
  );

