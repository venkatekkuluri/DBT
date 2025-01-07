SELECT
    r_regionkey AS region_key,
    LOWER(r_name) AS region_name,
    r_comment AS comment
FROM {{ source('SALES_DATA', 'REGION') }}
