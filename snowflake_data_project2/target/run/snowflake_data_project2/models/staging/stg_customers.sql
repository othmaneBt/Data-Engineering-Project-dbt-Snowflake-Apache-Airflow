
  create or replace   view finance_db.raw.stg_customers
  
   as (
    SELECT 
    id AS customer_id, 
    name AS customer_name ,
    email, 
    country
FROM finance_db.raw.customers
  );

