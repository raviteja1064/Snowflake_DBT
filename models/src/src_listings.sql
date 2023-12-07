{{
    config(
    materialized ='ephemeral'
    )
}}
WITH raw_listings AS (
        SELECT * FROM AIRBNB.RAW.RAW_LISTINGS
)
SELECT 
   id AS listing_id,
   listing_url,
   name AS listing_name,
   room_type,
   minimum_nights,
   host_id,
   price AS price_str,
   created_at,
   updated_at
FROM AIRBNB.RAW.RAW_LISTINGS