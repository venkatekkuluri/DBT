SELECT
    o_orderkey AS order_key,
    o_custkey AS customer_key,
    o_orderstatus AS order_status,
    o_totalprice AS total_price,
    CAST(o_orderdate AS DATE) AS order_date,
    CAST(o_orderpriority AS STRING) AS order_priority,
    o_clerk AS clerk,
    o_shippriority AS ship_priority,
    o_comment AS comment
FROM {{ source('SALES_DATA', 'ORDERS') }}
