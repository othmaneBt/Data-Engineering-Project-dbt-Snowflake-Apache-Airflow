
  create or replace   view finance_db.raw.stg_products
  
   as (
    SELECT
    id AS product_id,
    name AS product_name,
    categorie AS product_category,
    price AS product_price
FROM finance_db.raw.products
  );

