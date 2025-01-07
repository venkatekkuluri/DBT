SELECT
    c_custkey AS customer_key,
    LOWER(c_name) AS customer_name,
    c_address AS customer_address,
    c_nationkey AS nation_key,
    c_phone AS phone_number,
    c_acctbal AS account_balance,
    c_mktsegment AS market_segment,
    c_comment AS comment
FROM {{ source('SALES_DATA', 'CUSTOMER') }}
