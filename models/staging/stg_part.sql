SELECT
    p_partkey AS part_key,
    p_name AS part_name,
    p_mfgr AS manufacturer,
    p_brand AS brand,
    p_type AS part_type,
    p_size AS size,
    p_container AS container,
    p_retailprice AS retail_price,
    p_comment AS comment
FROM {{ source('SALES_DATA', 'PART') }}
