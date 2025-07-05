SELECT
    id AS product_id,
    name AS product_name,
    categorie AS product_category,
    price AS product_price
FROM {{ source('raw_data', 'products') }}